use chrono::{Datelike, Utc};
use sqlx::PgPool;

use super::{dto::FeastListItem, repo};
use crate::core::error::ApiError;

pub async fn list_feasts_for_calendar_with_dates(
    pool: &PgPool,
    calendar_id: Option<i32>,
) -> Result<Vec<FeastListItem>, ApiError> {
    repo::list_feasts_for_calendar_with_dates(pool, calendar_id).await
}

pub async fn feast_the_day(
    pool: &PgPool,
    date: Option<&str>,
) -> Result<Option<FeastListItem>, ApiError> {
    let (month, day) = match date {
        Some(date_str) => parse_mm_dd(date_str)?,
        None => {
            let now = Utc::now();
            (now.month() as u8, now.day() as u8)
        }
    };

    repo::feast_the_day(pool, month, day).await
}

fn parse_mm_dd(date: &str) -> Result<(u8, u8), ApiError> {
    let parts: Vec<&str> = date.split('-').collect();

    if parts.len() != 2 {
        return Err(ApiError::BadRequest(
            "Invalid date format. Expected MM-DD.".into(),
        ));
    }

    let month = parts[0]
        .parse::<u8>()
        .map_err(|_| ApiError::BadRequest("Invalid month.".into()))?;

    let day = parts[1]
        .parse::<u8>()
        .map_err(|_| ApiError::BadRequest("Invalid day.".into()))?;

    if !(1..=12).contains(&month) {
        return Err(ApiError::BadRequest(
            "Month must be between 1 and 12.".into(),
        ));
    }

    if !(1..=31).contains(&day) {
        return Err(ApiError::BadRequest("Day must be between 1 and 31.".into()));
    }

    Ok((month, day))
}
