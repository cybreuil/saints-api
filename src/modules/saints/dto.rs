// use chrono::NaiveDate;
use super::model::SaintRow;
use serde::{Deserialize, Serialize};

// Saints Paginated Response
#[derive(Debug, Serialize)]
pub struct SaintListResponse {
    pub page: i32,
    pub per_page: i32,
    pub data: Vec<SaintListItem>,
}

// Saint small struct for listing
#[derive(Debug, Serialize)]
pub struct SaintListItem {
    pub id: i32,
    pub slug: String,
    pub default_name: String,
    pub birth_year: Option<i16>,
    pub death_year: Option<i16>,
}
// Mapping from SaintRow to SaintListItem
impl From<SaintRow> for SaintListItem {
    fn from(row: SaintRow) -> Self {
        Self {
            id: row.id,
            slug: row.slug,
            default_name: row.default_name,
            birth_year: row.birth_year,
            death_year: row.death_year,
        }
    }
}

#[derive(Debug, Deserialize)]
pub struct SaintQuery {
    pub locale: Option<String>,
    pub page: Option<i32>,
    pub per_page: Option<i32>,
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
