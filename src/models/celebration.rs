use chrono::NaiveDate;
use serde::{Deserialize, Serialize};

#[allow(dead_code)]
#[derive(Debug, Serialize, Deserialize, sqlx::FromRow)]
pub struct Celebration {
    pub id: i32,
    pub feast_id: i32,
    pub calendar_id: i32,
    pub rank_id: i32,
    pub color_id: Option<i32>,
    pub is_optional: bool,
    pub notes: Option<String>,
    pub valid_from: Option<NaiveDate>,
    pub valid_to: Option<NaiveDate>,
}

#[derive(Debug, Serialize, Deserialize, sqlx::FromRow)]
pub struct CelebrationSaint {
    pub celebration_id: i32,
    pub saint_id: i32,
    pub role: Option<String>,
}

/// Rich view returned for celebration detail endpoint.
#[derive(Debug, Serialize, Deserialize)]
pub struct CelebrationDetail {
    pub celebration: Celebration,
    pub feast_name: String,
    pub calendar_name: String,
    pub rank_label: String,
    pub color_code: Option<String>,
    pub saints: Vec<CelebrationSaint>,
}

#[derive(Debug, Deserialize)]
pub struct CelebrationQuery {
    pub calendar_id: Option<i32>,
    pub feast_id: Option<i32>,
    pub page: Option<i64>,
    pub per_page: Option<i64>,
}
