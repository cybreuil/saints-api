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
