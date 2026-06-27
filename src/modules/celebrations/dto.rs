use serde::{Deserialize, Serialize};
use sqlx::FromRow;

use crate::core::movable_dates::MovableBase;

#[derive(Debug, Deserialize)]
pub struct CelebrationByDateQuery {
    pub year: Option<i32>,
    pub month: Option<i16>,
    pub day: Option<i16>,
    pub calendar_code: Option<String>,
    pub language_code: Option<String>,
}

#[derive(Debug, Deserialize)]
pub struct CelebrationListQuery {
    pub page: Option<i32>,
    pub per_page: Option<i32>,
    pub calendar_code: Option<String>,
    pub language_code: Option<String>,
}

#[derive(Debug, Serialize, FromRow)]
pub struct Celebration {
    pub id: i32,
    pub is_optional: bool,
    pub rank_id: i32,
    pub feast_id: i32,
    pub date_kind: Option<String>,
    pub month: Option<i16>,
    pub day: Option<i16>,
    pub movable_base: Option<String>,
    pub movable_offset_days: Option<i16>,
    pub notes: Option<String>,
    pub observance_type: Option<String>,
    pub default_name: Option<String>,
    pub feast_type: Option<String>,
    pub feast_name: Option<String>,
    pub feast_description: Option<String>,
    pub liturgical_color_name: Option<String>,
    pub liturgical_color_hex: Option<String>,
    pub rank_code: Option<String>,
    pub rank_precedence: Option<i16>,
    pub rank_label: Option<String>,
}
