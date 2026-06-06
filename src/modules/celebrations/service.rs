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
