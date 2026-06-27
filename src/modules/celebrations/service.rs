use chrono::{Datelike, Utc};
use sqlx::PgPool;

use super::dto::Celebration;
use super::repo;
use crate::core::error::ApiError;
use crate::core::movable_dates::{resolve_movable_date, MovableBase};
use crate::core::pagination::{Paginated, Pagination};
use crate::core::validation;

pub async fn get_celebrations(
    pool: &PgPool,
    page: i32,
    per_page: i32,
    cal: Option<&str>,
    language_code: Option<&str>,
) -> Result<Paginated<Celebration>, ApiError> {
    let lang = validation::resolve_locale(language_code)?;
    let cal = validation::resolve_calendar(cal)?;

    let p = Pagination::new(Some(page), Some(per_page));
    let total = repo::count_celebrations(pool).await? as i32;

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

pub async fn celebration_of_today(pool: &PgPool) -> Result<Celebration, ApiError> {
    let date = Utc::now();

    let celebration = repo::celebration_of_today(pool, date).await?;

    Ok(celebration)
}

pub async fn get_celebrations_by_date(
    pool: &PgPool,
    year: i32,
    month: i16,
    day: i16,
    language_code: Option<&str>,
    calendar_code: Option<&str>,
) -> Result<Vec<Celebration>, ApiError> {
    let lang = validation::resolve_locale(language_code)?;
    let cal = validation::resolve_calendar(calendar_code)?;

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
            crate::core::movable_dates::CalendarType::Gregorian,
        );

        if date.month() == month as u32 && date.day() == day as u32 {
            celebrations.push(celebration);
        }
    }

    celebrations.sort_by_key(|c| c.rank_precedence.unwrap_or(i16::MAX));

    Ok(celebrations)
}
