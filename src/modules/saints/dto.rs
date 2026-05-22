// use chrono::NaiveDate;
use serde::Serialize;
use sqlx::FromRow;

#[derive(Serialize)]
struct SaintListResponse {
    page: i32,
    per_page: i32,
    data: Vec<SaintListItem>,
}

#[derive(Serialize, FromRow)]
pub struct SaintListItem {
    id: i32,
    slug: String,
    default_name: String,
    birth_year: Option<i16>,
    death_year: Option<i16>,
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

// #[derive(Debug, Deserialize)]
// pub struct SaintQuery {
//     pub locale: Option<String>,
//     pub page: Option<i64>,
//     pub per_page: Option<i64>,
// }
