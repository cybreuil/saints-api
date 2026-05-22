use chrono::{DateTime, Utc};
use serde::{Deserialize, Serialize};

#[derive(Debug, Serialize, Deserialize, sqlx::FromRow)]
struct Saint {
    id: i32,
    slug: String,
    default_name: String,
    birth_year: Option<i16>,
    birth_month: Option<i16>,
    birth_day: Option<i16>,
    birth_is_approximate: bool,
    death_year: Option<i16>,
    death_month: Option<i16>,
    death_day: Option<i16>,
    death_is_approximate: bool,
    century: Option<i16>,
    place_of_birth_id: Option<i32>,
    place_of_death_id: Option<i32>,
    place_of_activity_id: Option<i32>,
    created_at: DateTime<Utc>,
}
