use crate::core::liturgical_seasons::SeasonInterval;
use serde::{Deserialize, Serialize};

#[derive(Debug, Deserialize)]
pub struct LiturgicalSeasonQuery {
    pub year: Option<i32>,
    pub month: Option<i16>,
    pub day: Option<i16>,
    pub calendar_code: Option<String>,
    pub language_code: Option<String>,
}

#[derive(Debug, Deserialize)]
pub struct LiturgicalSeasonsListQuery {
    pub year: Option<i32>,
    pub calendar_code: Option<String>,
    pub language_code: Option<String>,
}

#[derive(Debug, Serialize)]
pub struct LiturgicalSeasonResponse {
    pub code: String,

    pub label: Option<String>,

    pub start: String,
    pub end: String,

    pub color_code: Option<String>,
    pub color_label: Option<String>,
    pub hex_color: Option<String>,
}

impl From<SeasonInterval> for LiturgicalSeasonResponse {
    fn from(s: SeasonInterval) -> Self {
        Self {
            code: s.code,
            label: s.label,
            start: s.start.to_string(),
            end: s.end.to_string(),
            color_code: s.color_code,
            color_label: s.color_label,
            hex_color: s.hex_color,
        }
    }
}
