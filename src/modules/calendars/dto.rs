use serde::{Deserialize, Serialize};
use sqlx::prelude::FromRow;

#[derive(Debug, Serialize, FromRow)]
pub struct Calendar {
    pub code: String,
    pub parent_code: Option<String>,
    pub date_system: String,
    pub easter_computation: String,
    pub is_active: bool,
    pub created_at: String,
    pub name: String,
    pub description: Option<String>,
}

#[derive(Debug, Deserialize)]
pub struct CalendarQuery {
    pub code: Option<String>,
    pub parent_code: Option<String>,
    pub language_code: Option<String>,
}
