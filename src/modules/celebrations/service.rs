use chrono::Utc;
use sqlx::PgPool;

use super::dto::Celebration;
use super::repo;
use crate::core::error::ApiError;
use crate::core::pagination::{Paginated, Pagination};
use crate::core::validation;

pub async fn get_celebrations(
    pool: &PgPool,
    page: i32,
    per_page: i32,
    language_code: Option<&str>,
) -> Result<Paginated<Celebration>, ApiError> {
    let lang = validation::resolve_locale(language_code)?;

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

    let data = repo::get_celebrations(pool, p.per_page, p.offset, lang).await?;

    Ok(Paginated::new(&p, total, data))
}

pub async fn celebration_of_today(pool: &PgPool) -> Result<Celebration, ApiError> {
    let date = Utc::now();

    let celebration = repo::celebration_of_today(pool, date).await?;

    Ok(celebration)
}

pub async fn get_celebrations_by_date(
    pool: &PgPool,
    month: i16,
    day: i16,
) -> Result<Vec<Celebration>, ApiError> {
    let rows = repo::get_celebrations_by_date(pool, month, day).await?;
    Ok(rows)
}
