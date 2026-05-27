use sqlx::PgPool;

use super::dto;

use crate::core::error::ApiError;

pub async fn list_all_feasts(pool: &PgPool) -> Result<Vec<dto::FeastListItem>, ApiError> {
    let rows = sqlx::query_as::<_, dto::FeastListItem>(
        "SELECT id, slug, default_name, feast_type FROM feasts ORDER BY slug ASC",
    )
    .fetch_all(pool)
    .await?;

    Ok(rows)
}
