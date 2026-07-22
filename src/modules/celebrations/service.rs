use chrono::{Datelike, NaiveDate};
use sqlx::PgPool;
use std::collections::{HashMap, HashSet};

use super::dto::{CelebrationByDateContext, CelebrationByDateResponse, CelebrationRow};
use super::repo;
use crate::core::error::ApiError;
use crate::core::movable_dates::{
    resolve_movable_date, sunday_number_in_season, LiturgicalConfig, MovableBase,
};
use crate::core::pagination::{Paginated, Pagination};
use crate::core::validation;
use crate::core::{config, feria};
use crate::modules::calendars;
use crate::modules::celebrations::dto::{CelebrationWithSaints, Saint};
use crate::modules::liturgical_seasons;

// Get all celebrations with pagination, filtering by optional calendar and language code
pub async fn get_celebrations(
    pool: &PgPool,
    page: i32,
    per_page: i32,
    cal: Option<&str>,
    language_code: Option<&str>,
) -> Result<Paginated<CelebrationRow>, ApiError> {
    let lang = validation::resolve_locale(language_code)?;
    let cal = validation::resolve_calendar(cal)?;

    let p = Pagination::new(Some(page), Some(per_page));
    let total = repo::count_celebrations(pool, cal).await? as i32;

    if total == 0 {
        return Ok(Paginated::empty(&p));
    }
    if p.beyond_total(total) {
        return Err(ApiError::UnprocessableEntity(format!(
            "Page {} is out of range. Total pages: {}",
            p.page,
            p.total_pages(total)
        )));
    }

    let data = repo::get_celebrations(pool, p.per_page, p.offset, cal, lang).await?;

    Ok(Paginated::new(&p, total, data))
}

async fn attach_saints(
    pool: &PgPool,
    rows: Vec<CelebrationRow>,
    language_code: &str,
) -> Result<Vec<CelebrationWithSaints>, ApiError> {
    let feast_ids: Vec<i32> = rows.iter().map(|r| r.feast_id).collect();

    let saint_rows = repo::get_saints_for_feasts(pool, &feast_ids, language_code).await?;

    // Group saints by feast_id
    let mut saints_by_feast: HashMap<i32, Vec<Saint>> = HashMap::new();
    for s in saint_rows {
        saints_by_feast
            .entry(s.feast_id)
            .or_default()
            .push(Saint::from(s));
    }

    let celebrations = rows
        .into_iter()
        .map(|row| {
            let saints = saints_by_feast.remove(&row.feast_id).unwrap_or_default();
            CelebrationWithSaints::from(row, saints)
        })
        .collect();

    Ok(celebrations)
}

/// Fetches fixed + resolved movable celebrations for a given calendar on a given date.
async fn fetch_celebrations_for_calendar(
    pool: &PgPool,
    year: i32,
    month: i16,
    day: i16,
    lang: &str,
    cal: &str,
    config: LiturgicalConfig,
) -> Result<Vec<CelebrationRow>, ApiError> {
    let mut celebrations =
        repo::get_fixed_celebrations_by_date(pool, month, day, lang, cal).await?;

    let movable_celebrations = repo::get_movable_celebrations(pool, lang, cal).await?;

    for celebration in movable_celebrations {
        let base_str = match &celebration.movable_base {
            Some(b) => b.as_str(),
            None => continue,
        };
        let base = match MovableBase::try_from(base_str) {
            Ok(b) => b,
            Err(_) => continue,
        };
        let date = resolve_movable_date(
            year,
            base,
            celebration.movable_offset_days.unwrap_or(0),
            config,
        );
        if date.month() == month as u32 && date.day() == day as u32 {
            celebrations.push(celebration);
        }
    }

    celebrations.sort_by_key(|c| c.rank_precedence.unwrap_or(i16::MAX));
    Ok(celebrations)
}

// Building calendar hierarchy for a given calendar code, starting from the specified calendar and climbing up to its parents.
// For example roman for french calendar
async fn load_calendar_hierarchy(
    pool: &PgPool,
    code: &str,
    language_code: &str,
) -> Result<Vec<calendars::Calendar>, ApiError> {
    let mut hierarchy = Vec::new();

    let mut calendar = calendars::get_calendar_by_code(pool, code, language_code).await?;

    loop {
        let parent_id = calendar.parent_id;

        hierarchy.push(calendar);

        match parent_id {
            Some(parent_id) => {
                calendar = calendars::get_calendar_by_id(pool, parent_id, language_code).await?;
            }
            None => break,
        }
    }

    Ok(hierarchy)
}

pub async fn get_celebrations_by_date(
    pool: &PgPool,
    year: i32,
    month: i16,
    day: i16,
    language_code: Option<&str>,
    calendar_code: Option<&str>,
) -> Result<CelebrationByDateResponse, ApiError> {
    let lang = validation::resolve_locale(language_code)?;
    let cal = validation::resolve_calendar(calendar_code)?;

    let calendars = load_calendar_hierarchy(pool, cal, lang).await?;

    let context = CelebrationByDateContext {
        year,
        month,
        day,
        language_code: lang.to_string(),
        calendar_code: cal.to_string(),
    };

    // Fetch celebrations for each calendar in the hierarchy, starting from the most specific (child) to the most general (parent).
    let mut all_celebrations: Vec<CelebrationRow> = Vec::new();
    let mut claimed_feast_ids: HashSet<i32> = HashSet::new();

    for (i, calendar) in calendars.iter().enumerate() {
        let config = calendars::mapper::to_liturgical_config(calendar);

        let level_celebrations =
            fetch_celebrations_for_calendar(pool, year, month, day, lang, &calendar.code, config)
                .await?;

        for c in level_celebrations {
            if !claimed_feast_ids.contains(&c.feast_id) {
                all_celebrations.push(c);
            }
        }

        // Construit l'ensemble d'exclusion pour le niveau parent suivant.
        // Si un calendrier enfant "possède" une fête (quelle que soit la date),
        // la version du parent est supprimée.
        if i < calendars.len() - 1 {
            let claimed = repo::get_claimed_feast_ids(pool, &calendar.code).await?;
            claimed_feast_ids.extend(claimed);
        }
    }

    all_celebrations.sort_by_key(|c| c.rank_precedence.unwrap_or(i16::MAX));

    let mut celebrations_with_saints = attach_saints(pool, all_celebrations, lang).await?;

    // Resolve the liturgical season
    let mut liturgical_season = None;

    // Try to get the liturgical season for each calendar in the hierarchy
    // until one is found !
    for calendar in &calendars {
        liturgical_season = liturgical_seasons::get_liturgical_season(
            pool,
            year,
            month,
            day,
            Some(lang),
            Some(&calendar.code),
        )
        .await?;

        if liturgical_season.is_some() {
            break;
        }
    }

    let date =
        NaiveDate::from_ymd_opt(year, month as u32, day as u32).ok_or(ApiError::InternalError)?;

    let is_sunday = date.weekday() == chrono::Weekday::Sun;

    let is_ordinary_time = liturgical_season
        .as_ref()
        .map(|s| s.code == ("ORDINARY_TIME"))
        .unwrap_or(false);

    // NEED EXTRA CHECK CALENDAR + SOLEMNITY ON SUNDAY
    // Fallback Celebration (Feria / Sunday) for roman calendar if no celebrations are found or if it's a Sunday
    if celebrations_with_saints.is_empty() || (is_sunday && is_ordinary_time) {
        // Try to obtain a rank, climbing parents if necessary
        let mut last_error = None;
        let mut rank = None;

        for calendar in &calendars {
            let result = if is_sunday {
                repo::get_sunday_rank(pool, &calendar.code, lang).await
            } else {
                repo::get_lowest_rank(pool, &calendar.code, lang).await
            };

            match result {
                Ok(r) => {
                    rank = Some(r);
                    break;
                }
                Err(e) => last_error = Some(e),
            }
        }

        let rank = rank.ok_or_else(|| last_error.unwrap_or(ApiError::NotFound))?;

        let feast_type = if is_sunday {
            "sunday".to_string()
        } else {
            "feria".to_string()
        };

        let config = calendars::mapper::to_liturgical_config(&calendars[0]);

        // movable_dates calculation for the Sunday number in Ordinary Time
        let sunday_number = sunday_number_in_season(date, year, config);

        let feria_info = feria::build_feria_info(
            date,
            lang,
            liturgical_season.as_ref().and_then(|s| s.label.as_deref()),
            sunday_number,
        );

        celebrations_with_saints.push(CelebrationWithSaints::feria(
            feria_info.label,
            rank,
            feast_type,
        ));

        // We sort by rank precedence again to ensure the feria is in the correct order
        celebrations_with_saints.sort_by_key(|c| c.rank_precedence.unwrap_or(i16::MAX));
    }

    Ok(CelebrationByDateResponse {
        context,
        liturgical_season,
        celebrations: celebrations_with_saints,
    })
}
