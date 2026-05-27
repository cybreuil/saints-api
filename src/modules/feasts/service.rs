use sqlx::PgPool;

use super::{dto::FeastListItem, repo};
use crate::core::error::ApiError;

pub async fn list_feasts_for_calendar_with_dates(
    pool: &PgPool,
    calendar_id: i32,
) -> Result<Vec<FeastListItem>, ApiError> {
    repo::list_feasts_for_calendar_with_dates(pool, calendar_id).await
}
