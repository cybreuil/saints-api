use sqlx::PgPool;

use super::dto::Celebration;
use crate::core::error::ApiError;

pub async fn get_celebrations(pool: &PgPool) -> Result<Vec<Celebration>, ApiError> {
    let rows = sqlx::query_as::<_, Celebration>(
        "SELECT id, color_id, is_optional FROM celebrations ORDER BY id ASC",
    )
    .fetch_all(pool)
    .await?;

    Ok(rows)
}

pub async fn celebration_of_today(
    pool: &PgPool,
    date: chrono::DateTime<chrono::Utc>,
) -> Result<Celebration, ApiError> {
    let rows = sqlx::query_as::<_, Celebration>(
        "SELECT c.id, c.color_id, c.is_optional, fd.month, fd.day
        FROM celebrations c
        LEFT JOIN
        feast_dates fd ON c.feast_id = fd.feast_id
        WHERE fd.date = $1",
    )
    .bind(date)
    .fetch_one(pool)
    .await?;

    Ok(rows)
}
