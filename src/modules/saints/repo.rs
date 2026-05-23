use sqlx::PgPool;

use super::model::SaintRow;

use crate::core::error::ApiError;

pub async fn list_saints(
    pool: &PgPool,
    limit: i32,
    offset: i32,
) -> Result<Vec<SaintRow>, ApiError> {
    let rows = sqlx::query_as::<_, SaintRow>(
        "SELECT id, slug, default_name, birth_year, death_year
         FROM saints
         ORDER BY default_name ASC
         LIMIT $1 OFFSET $2",
    )
    .bind(limit)
    .bind(offset)
    .fetch_all(pool)
    .await?;

    Ok(rows)
}

pub async fn list_all_saints(pool: &PgPool) -> Result<Vec<SaintRow>, ApiError> {
    sqlx::query_as::<_, SaintRow>(
        "SELECT id, slug, default_name, birth_year, death_year
         FROM saints ORDER BY default_name ASC",
    )
    .fetch_all(pool)
    .await
    .map_err(ApiError::from)
}
