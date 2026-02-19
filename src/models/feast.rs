use chrono::{DateTime, NaiveDate, Utc};
use serde::{Deserialize, Serialize};

#[derive(Debug, Serialize, Deserialize, sqlx::FromRow)]
pub struct Feast {
    pub id: i32,
    pub slug: String,
    pub default_name: String,
    pub feast_type: String,
    pub created_at: DateTime<Utc>,
}

#[derive(Debug, Serialize, Deserialize, sqlx::FromRow)]
pub struct FeastTranslation {
    pub feast_id: i32,
    pub locale_code: String,
    pub name: String,
    pub description: Option<String>,
}

#[allow(dead_code)]
#[derive(Debug, Serialize, Deserialize, sqlx::FromRow)]
pub struct FeastDate {
    pub id: i32,
    pub feast_id: i32,
    pub calendar_id: i32,
    pub date_kind: String,
    pub month: Option<i16>,
    pub day: Option<i16>,
    pub movable_base: Option<String>,
    pub movable_offset_days: Option<i32>,
    pub valid_from: Option<NaiveDate>,
    pub valid_to: Option<NaiveDate>,
    pub notes: Option<String>,
}

#[derive(Debug, Deserialize)]
pub struct CreateFeast {
    pub slug: String,
    pub default_name: String,
    pub feast_type: String,
}

#[derive(Debug, Deserialize)]
pub struct UpdateFeast {
    pub default_name: Option<String>,
    pub feast_type: Option<String>,
}

#[derive(Debug, Deserialize)]
pub struct FeastQuery {
    pub locale: Option<String>,
    pub feast_type: Option<String>,
    pub page: Option<i64>,
    pub per_page: Option<i64>,
}
