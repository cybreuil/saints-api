use sqlx::PgPool;

use super::{dto::FeastListItem, repo};
use crate::core::error::ApiError;

pub async fn list_all_feasts(pool: &PgPool) -> Result<Vec<FeastListItem>, ApiError> {
    repo::list_all_feasts(pool).await
}
