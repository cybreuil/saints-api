use chrono::{DateTime, NaiveDate, Utc};
use serde::{Deserialize, Serialize};

#[derive(Debug, Serialize, Deserialize, sqlx::FromRow)]
pub struct Saint {
    pub id: i32,
    pub slug: String,
    pub default_name: String,
    pub birth_date: Option<NaiveDate>,
    pub death_date: Option<NaiveDate>,
    pub short_description: Option<String>,
    pub image_url: Option<String>,
    pub created_at: DateTime<Utc>,
}

#[derive(Debug, Serialize, Deserialize, sqlx::FromRow)]
pub struct SaintTranslation {
    pub saint_id: i32,
    pub locale_code: String,
    pub name: String,
    pub short_description: Option<String>,
    pub full_biography: Option<String>,
}

#[derive(Debug, Deserialize)]
pub struct CreateSaint {
    pub slug: String,
    pub default_name: String,
    pub birth_date: Option<NaiveDate>,
    pub death_date: Option<NaiveDate>,
    pub short_description: Option<String>,
    pub image_url: Option<String>,
}

#[derive(Debug, Deserialize)]
pub struct UpdateSaint {
    pub default_name: Option<String>,
    pub birth_date: Option<NaiveDate>,
    pub death_date: Option<NaiveDate>,
    pub short_description: Option<String>,
    pub image_url: Option<String>,
}

#[derive(Debug, Deserialize)]
pub struct SaintQuery {
    pub locale: Option<String>,
    pub page: Option<i64>,
    pub per_page: Option<i64>,
}

