use crate::modules::liturgical_seasons::LiturgicalSeasonResponse;
use serde::{Deserialize, Serialize};
use sqlx::FromRow;

#[derive(Debug, Deserialize)]
pub struct CelebrationByDateQuery {
    pub year: Option<i32>,
    pub month: Option<i16>,
    pub day: Option<i16>,
    pub calendar_code: Option<String>,
    pub language_code: Option<String>,
}

#[derive(Debug, Serialize)]
pub struct CelebrationByDateContext {
    pub year: i32,
    pub month: i16,
    pub day: i16,
    pub language_code: String,
    pub calendar_code: String,
}

// Depends on LiturgicalSeasonResponse, which is defined in the liturgical_seasons module
#[derive(Debug, Serialize)]
pub struct CelebrationByDateResponse {
    pub context: CelebrationByDateContext,
    pub liturgical_season: Option<LiturgicalSeasonResponse>,
    pub celebrations: Vec<CelebrationWithSaints>,
}

#[derive(Debug, Deserialize)]
pub struct CelebrationListQuery {
    pub page: Option<i32>,
    pub per_page: Option<i32>,
    pub calendar_code: Option<String>,
    pub language_code: Option<String>,
}

#[derive(Debug, Serialize, FromRow)]
pub struct SaintRow {
    pub feast_id: i32,
    pub saint_id: i32,
    pub saint_slug: String,
    pub saint_name: String,
    pub saint_century: Option<i16>,
    pub saint_image_url: Option<String>,
}
#[derive(Debug, Serialize)]
pub struct Saint {
    pub saint_id: i32,
    pub saint_slug: String,
    pub saint_name: String,
    pub saint_century: Option<i16>,
    pub saint_image_url: Option<String>,
}
impl From<SaintRow> for Saint {
    fn from(row: SaintRow) -> Self {
        Self {
            saint_id: row.saint_id,
            saint_slug: row.saint_slug,
            saint_name: row.saint_name,
            saint_century: row.saint_century,
            saint_image_url: row.saint_image_url,
        }
    }
}

#[derive(Debug, Serialize, FromRow)]
pub struct CelebrationRow {
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

#[derive(Debug, Serialize)]
pub struct CelebrationWithSaints {
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
    pub saints: Vec<Saint>,
}
impl CelebrationWithSaints {
    pub fn from(row: CelebrationRow, saints: Vec<Saint>) -> Self {
        Self {
            id: row.id,
            is_optional: row.is_optional,
            rank_id: row.rank_id,
            feast_id: row.feast_id,
            date_kind: row.date_kind,
            month: row.month,
            day: row.day,
            movable_base: row.movable_base,
            movable_offset_days: row.movable_offset_days,
            notes: row.notes,
            observance_type: row.observance_type,
            default_name: row.default_name,
            feast_type: row.feast_type,
            feast_name: row.feast_name,
            feast_description: row.feast_description,
            liturgical_color_name: row.liturgical_color_name,
            liturgical_color_hex: row.liturgical_color_hex,
            rank_code: row.rank_code,
            rank_precedence: row.rank_precedence,
            rank_label: row.rank_label,
            saints,
        }
    }
}
