use chrono::{Datelike, FixedOffset, Utc};
use sqlx::PgPool;

use super::{
    dto::{FeastListItem, FeastListItemDetailled},
    repo,
};
use crate::{core::error::ApiError, modules::feasts::dto::FeastDetail};

pub async fn list_feasts_for_calendar_with_dates(
    pool: &PgPool,
    calendar_id: Option<i32>,
) -> Result<Vec<FeastListItem>, ApiError> {
    repo::list_feasts_for_calendar_with_dates(pool, calendar_id).await
}

pub async fn feast_the_day(
    pool: &PgPool,
    date: Option<&str>,
    offset: Option<i32>,
) -> Result<Option<FeastListItemDetailled>, ApiError> {
    let (month, day) = match date {
        Some(date_str) => parse_mm_dd(date_str)?,
        None => {
            let offset = offset.unwrap_or(0);

            let tz = FixedOffset::east_opt(offset * 60)
                .ok_or_else(|| ApiError::UnprocessableEntity("Invalid offset".into()))?;
            let now = Utc::now().with_timezone(&tz);
            (now.month() as u8, now.day() as u8)
        }
    };

    repo::feast_the_day(pool, month, day).await
}

fn parse_mm_dd(date: &str) -> Result<(u8, u8), ApiError> {
    let parts: Vec<&str> = date.split('-').collect();

    if parts.len() != 2 {
        return Err(ApiError::UnprocessableEntity(
            "Invalid date format. Expected MM-DD.".into(),
        ));
    }

    let month = parts[0]
        .parse::<u8>()
        .map_err(|_| ApiError::UnprocessableEntity("Invalid month.".into()))?;

    let day = parts[1]
        .parse::<u8>()
        .map_err(|_| ApiError::UnprocessableEntity("Invalid day.".into()))?;

    if !(1..=12).contains(&month) {
        return Err(ApiError::UnprocessableEntity(
            "Month must be between 1 and 12.".into(),
        ));
    }

    if !(1..=31).contains(&day) {
        return Err(ApiError::UnprocessableEntity(
            "Day must be between 1 and 31.".into(),
        ));
    }

    Ok((month, day))
}
