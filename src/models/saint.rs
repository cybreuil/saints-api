// use chrono::{DateTime, NaiveDate, Utc};
// use serde::{Deserialize, Serialize};

// #[derive(Debug, Serialize, Deserialize, sqlx::FromRow)]
// pub struct Saint {
//     pub id: i32,
//     pub slug: String,
//     pub default_name: String,
//     pub birth_year: Option<i16>,
//     pub birth_month: Option<i16>,
//     pub birth_day: Option<i16>,
//     pub birth_is_approximate: bool,
//     pub death_year: Option<i16>,
//     pub death_month: Option<i16>,
//     pub death_day: Option<i16>,
//     pub death_is_approximate: bool,
//     pub century: Option<i16>,
//     pub place_of_birth_id: Option<i32>,
//     pub place_of_death_id: Option<i32>,
//     pub place_of_activity_id: Option<i32>,
//     pub created_at: DateTime<Utc>,
// }

// #[derive(Debug, Serialize, Deserialize, sqlx::FromRow)]
// pub struct SaintTranslation {
//     pub saint_id: i32,
//     pub locale_code: String,
//     pub name: String,
//     pub short_description: Option<String>,
//     pub full_biography: Option<String>,
// }
