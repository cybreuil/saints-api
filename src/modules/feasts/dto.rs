use serde::{Deserialize, Serialize};
use sqlx::FromRow;

#[derive(FromRow, Debug, Serialize)]
pub struct FeastListItem {
    pub slug: String,
    pub default_name: String,
    pub feast_type: String,
    pub date_kind: Option<String>,
    pub month: Option<i16>,
    pub day: Option<i16>,
}

// Test
#[derive(FromRow, Debug, Serialize)]
pub struct FeastListItemDetailled {
    pub slug: String,
    pub default_name: String,
    pub feast_type: String,
    pub date_kind: Option<String>,
    pub month: Option<i16>,
    pub day: Option<i16>,
    pub saint_default_name: Option<String>,
    pub saint_birth_year: Option<i16>,
    pub saint_birth_month: Option<i16>,
    pub saint_birth_day: Option<i16>,
    pub saint_death_year: Option<i16>,
    pub saint_death_month: Option<i16>,
    pub saint_death_day: Option<i16>,
    pub saint_place_of_birth_id: Option<i16>,
    pub saint_place_of_death_id: Option<i16>,
    pub saint_place_of_activity_id: Option<i16>,
}

#[derive(Debug, Serialize, Deserialize)]
pub struct FeastSaint {
    pub slug: String,
    pub default_name: String,
}

#[derive(FromRow, Serialize, Debug)]
pub struct FeastRow {
    slug: String,
    default_name: String,
    feast_type: String,
    date_kind: Option<String>,
    month: Option<i16>,
    day: Option<i16>,
    saint_slug: Option<String>,
    saint_default_name: Option<String>,
}

#[derive(FromRow, Debug, Serialize)]
pub struct FeastDetail {
    pub slug: String,
    pub default_name: String,
    pub feast_type: String,
    pub date_kind: Option<String>,
    pub month: Option<i16>,
    pub day: Option<i16>,

    // List of saints associated to the feast (may be empty).
    // Use Option<Vec<FeastSaint>> if you want to distinguish "no column" from "empty list",
    // otherwise Vec<FeastSaint> is fine. Using Option preserves backward compatibility
    // when the SQL doesn't return this column.
    pub saints: Option<Vec<FeastSaint>>,
}

#[derive(Debug, Deserialize)]
pub struct FeastQuery {
    pub calendar_id: Option<i32>,
}

#[derive(Debug, Deserialize)]
pub struct FeastOfTheDayQuery {
    pub date: Option<String>,
    pub offset: Option<i32>,
}
