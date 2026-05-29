use super::dto::Celebration;
use crate::core::error::ApiError;
use sqlx::PgPool;

pub async fn get_celebrations(pool: &PgPool) -> Result<Vec<Celebration>, ApiError> {
    let celebrations = super::repo::get_celebrations(pool).await?;

    Ok(celebrations)
}
