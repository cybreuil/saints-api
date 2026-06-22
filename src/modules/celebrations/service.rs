use super::dto::Celebration;
use super::repo;
use crate::core::error::ApiError;
use chrono::Utc;
use sqlx::PgPool;

pub async fn get_celebrations(pool: &PgPool) -> Result<Vec<Celebration>, ApiError> {
    let celebrations = repo::get_celebrations(pool).await?;

    Ok(celebrations)
}

pub async fn celebration_of_today(pool: &PgPool) -> Result<Celebration, ApiError> {
    let date = Utc::now();

    let celebration = repo::celebration_of_today(pool, date).await?;

    Ok(celebration)
}

pub async fn get_celebrations_by_date(
    pool: &PgPool,
    month: u8,
    day: u8,
) -> Result<Vec<Celebration>, ApiError> {
    let rows = repo::get_celebrations_by_date(pool, month as i8, day as i8).await?;
    Ok(rows)
}
