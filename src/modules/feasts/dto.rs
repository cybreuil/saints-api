use serde::Serialize;
use sqlx::FromRow;

#[derive(FromRow, Debug, Serialize)]
pub struct FeastListItem {
    pub slug: String,
    pub default_name: String,
    pub feast_type: String,
}
