use sqlx::PgPool;

use super::dto::LiturgicalSeasonResponse;
use super::repo;
use crate::core::error::ApiError;
use crate::core::liturgical_seasons;
use crate::core::validation;

pub async fn get_liturgical_season(
    pool: &PgPool,
    year: i32,
    month: i16,
    day: i16,
    language_code: Option<&str>,
    calendar_code: Option<&str>,
) -> Result<Option<LiturgicalSeasonResponse>, ApiError> {
    let lang = validation::resolve_locale(language_code)?;
    let cal = validation::resolve_calendar(calendar_code)?;

    let rules = repo::get_liturgical_season_rules(pool, cal, lang).await?;

    let date = chrono::NaiveDate::from_ymd_opt(year, month as u32, day as u32)
        .ok_or_else(|| ApiError::BadRequest("Invalid date".to_string()))?;

    let intervals = liturgical_seasons::build_intervals(&rules, year)?;

    for season in intervals {
        if date >= season.start && date <= season.end {
            return Ok(Some(season.into()));
        }
    }

    Ok(None)
}

pub async fn list_liturgical_seasons(
    pool: &PgPool,
    year: i32,
    language_code: Option<&str>,
    calendar_code: Option<&str>,
) -> Result<Vec<LiturgicalSeasonResponse>, ApiError> {
    let lang = validation::resolve_locale(language_code)?;
    let cal = validation::resolve_calendar(calendar_code)?;

    let rules = repo::get_liturgical_season_rules(pool, cal, lang).await?;

    let mut intervals = liturgical_seasons::build_intervals(&rules, year)?;

    intervals.sort_by_key(|s| s.start);

    Ok(intervals.into_iter().map(|s| s.into()).collect())
}
