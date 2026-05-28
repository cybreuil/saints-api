use serde::{Deserialize, Serialize};
use sqlx::FromRow;

#[derive(FromRow, Debug, Serialize)]
pub struct FeastListItem {
    pub slug: String,
    pub default_name: String,
    pub feast_type: String,
    pub date_kind: Option<String>,
    pub month: Option<i16>,
    pub day: Option<i16>,
}

#[derive(Debug, Deserialize)]
pub struct FeastQuery {
    pub calendar_id: Option<i32>,
}

#[derive(Debug, Deserialize)]
pub struct FeastOfTheDayQuery {
    pub date: Option<String>,
    pub offset: Option<i32>,
}
