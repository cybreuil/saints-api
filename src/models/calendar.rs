use chrono::{DateTime, Utc};
use serde::{Deserialize, Serialize};

#[derive(Debug, Serialize, Deserialize, sqlx::FromRow)]
pub struct Calendar {
    pub id: i32,
    pub code: String,
    pub name: String,
    pub description: Option<String>,
    pub parent_id: Option<i32>,
    pub date_system: String,
    pub easter_computation: String,
    pub is_active: bool,
    pub created_at: DateTime<Utc>,
}

#[derive(Debug, Serialize, Deserialize, sqlx::FromRow)]
pub struct LiturgicalRank {
    pub id: i32,
    pub calendar_id: i32,
    pub code: String,
    pub label_fr: String,
    pub precedence: i16,
}

#[allow(dead_code)]
#[derive(Debug, Serialize, Deserialize, sqlx::FromRow)]
pub struct LiturgicalColor {
    pub id: i32,
    pub code: String,
    pub hex_color: String,
}

#[derive(Debug, Deserialize)]
pub struct CreateCalendar {
    pub code: String,
    pub name: String,
    pub description: Option<String>,
    pub parent_id: Option<i32>,
    pub date_system: Option<String>,
    pub easter_computation: Option<String>,
}

#[derive(Debug, Deserialize)]
pub struct UpdateCalendar {
    pub name: Option<String>,
    pub description: Option<String>,
    pub is_active: Option<bool>,
}

#[derive(Debug, Deserialize)]
pub struct CalendarQuery {
    pub is_active: Option<bool>,
    pub page: Option<i64>,
    pub per_page: Option<i64>,
}
