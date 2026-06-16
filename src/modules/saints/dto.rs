use sqlx::FromRow;

// use chrono::NaiveDate;
use serde::{Deserialize, Serialize};

// Saints Paginated Response
#[derive(Debug, Serialize)]
pub struct SaintListResponse {
    pub page: i32,
    pub per_page: i32,
    pub total: i32,
    pub total_pages: i32,
    pub data: Vec<SaintListItem>,
}
// Saint small struct for listing
#[derive(Debug, Serialize, FromRow)]
pub struct SaintListItem {
    pub id: i32,
    pub slug: String,
    pub default_name: String,
    pub birth_year: Option<i16>,
    pub death_year: Option<i16>,
}

#[derive(Debug, Serialize, FromRow)]
pub struct SaintListItemComplete {
    pub id: i32,
    pub slug: String,
    pub default_name: String,
    pub birth_year: Option<i16>,
    pub death_year: Option<i16>,
    pub century: Option<i16>,
    pub name: Option<String>,
    pub image_url: Option<String>,
}

#[derive(Debug, Deserialize)]
pub struct SaintQuery {
    // pub locale: Option<String>,
    pub page: Option<i32>,
    pub per_page: Option<i32>,
    pub language_code: Option<String>,
}

#[derive(Debug, Serialize, FromRow)]
pub struct SaintDetail {
    pub id: i32,
    pub slug: String,
    pub default_name: String,
    pub birth_year: Option<i16>,
    pub birth_month: Option<i16>,
    pub birth_day: Option<i16>,
    pub birth_is_approximate: Option<bool>,
    pub death_year: Option<i16>,
    pub death_month: Option<i16>,
    pub death_day: Option<i16>,
    pub death_is_approximate: Option<bool>,
    pub century: Option<i16>,
    pub name: Option<String>,
    pub short_description: Option<String>,
    pub full_biography: Option<String>,
}

// One image as exposed in the saint detail response.
// Override columns from saint_images take precedence over the image defaults.
#[derive(Debug, Serialize, FromRow)]
pub struct SaintImage {
    pub id: i32,
    pub image_url: String,
    pub title: String,
    pub image_type: Option<String>,
    pub alt_text: Option<String>, // COALESCE(si.alt_text_override, i.alt_text)
    pub caption: Option<String>,  // COALESCE(si.caption_override, i.caption)
    pub creator: Option<String>,
    pub date_label: Option<String>,
    pub repository: Option<String>,
    pub credit: Option<String>,
    pub license: Option<String>,
    pub source_url: Option<String>,
    pub sort_order: i16,
    pub is_primary: bool,
}

/// A location associated with a saint.
#[derive(Debug, Serialize, FromRow)]
pub struct SaintPlace {
    pub role: String,
    pub code: String,
    pub country_code: String,
    pub latitude: f64,
    pub longitude: f64,
    pub name: String,
}

// Final full-detailled response for slug
#[derive(Debug, Serialize)]
pub struct SaintDetailResponse {
    #[serde(flatten)]
    pub saint: SaintDetail,
    pub images: Vec<SaintImage>,
    pub places: Vec<SaintPlace>,
}

#[derive(Debug, Deserialize)]
pub struct LangQuery {
    pub language_code: Option<String>,
}
// #[derive(Debug, Deserialize)]
// pub struct CreateSaint {
//     pub slug: String,
//     pub default_name: String,
//     pub birth_date: Option<NaiveDate>,
//     pub death_date: Option<NaiveDate>,
//     pub short_description: Option<String>,
//     pub image_url: Option<String>,
// }

// #[derive(Debug, Deserialize)]
// pub struct UpdateSaint {
//     pub default_name: Option<String>,
//     pub birth_date: Option<NaiveDate>,
//     pub death_date: Option<NaiveDate>,
//     pub short_description: Option<String>,
//     pub image_url: Option<String>,
// }
