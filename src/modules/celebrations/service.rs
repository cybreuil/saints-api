use chrono::{Datelike, NaiveDate};
use sqlx::PgPool;
use std::collections::HashMap;

use super::dto::{CelebrationByDateContext, CelebrationByDateResponse, CelebrationRow, SaintRow};
use super::repo;
use crate::core::error::ApiError;
use crate::core::feria;
use crate::core::movable_dates::{resolve_movable_date, MovableBase};
use crate::core::pagination::{Paginated, Pagination};
use crate::core::validation;
use crate::modules::celebrations::dto::{CelebrationWithSaints, Saint};
use crate::modules::liturgical_seasons;

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

    let context = CelebrationByDateContext {
        year,
        month,
        day,
        language_code: lang.to_string(),
        calendar_code: cal.to_string(),
    };

    // 1. FIXED (DB)
    let mut celebrations =
        repo::get_fixed_celebrations_by_date(pool, month, day, lang, cal).await?;

    // 2. MOVABLE (DB)
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
            // We force Gregorian Calendar for now
            crate::core::movable_dates::CalendarType::Gregorian,
        );

        if date.month() == month as u32 && date.day() == day as u32 {
            celebrations.push(celebration);
        }
    }

    celebrations.sort_by_key(|c| c.rank_precedence.unwrap_or(i16::MAX));

    let mut celebrations_with_saints = attach_saints(pool, celebrations, lang).await?;

    // Resolve the liturgical season
    let liturgical_season =
        liturgical_seasons::get_liturgical_season(pool, year, month, day, Some(lang), Some(cal))
            .await?;

    // Fallback feria
    if celebrations_with_saints.is_empty() {
        let date = NaiveDate::from_ymd_opt(year, month as u32, day as u32)
            .ok_or(ApiError::InternalError)?;

        let rank = repo::get_lowest_rank(pool, cal, lang).await?;

        // WIP - Build feria info based on the liturgical season
        let feria_info = feria::build_feria_info(
            date,
            lang,
            liturgical_season.as_ref().and_then(|s| s.label.as_deref()),
        );

        celebrations_with_saints.push(CelebrationWithSaints::feria(feria_info.label, rank));
    }

    Ok(CelebrationByDateResponse {
        context,
        liturgical_season,
        celebrations: celebrations_with_saints,
    })
}
