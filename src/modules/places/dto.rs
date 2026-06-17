use serde::{Deserialize, Serialize};

#[derive(Deserialize)]
pub struct PlaceQuery {
    pub page: Option<i32>,
    pub per_page: Option<i32>,
    pub language_code: Option<String>,
}

#[derive(Serialize, sqlx::FromRow)]
pub struct PlaceListItem {
    code: String,
    country_code: String,
    latitude: Option<f64>,
    longitude: Option<f64>,
    name: String, // Traduction
}
