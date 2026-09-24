use chrono::NaiveDate;

use crate::core::error::ApiError;
use crate::modules::calendars;
use crate::modules::celebrations::dto::CelebrationRow;

pub struct ResolvedLiturgicalDay {
    pub celebrations: Vec<CelebrationRow>,
}

pub async fn resolve_liturgical_day(
    pool: &sqlx::PgPool,
    date: NaiveDate,
    lang: &str,
    calendars: &[calendars::Calendar],
    candidates: Vec<CelebrationRow>,
) -> Result<ResolvedLiturgicalDay, ApiError> {
    match calendars.first().map(|c| c.code.as_str()) {
        Some("ROMAN_1960") => roman_1960::resolve(pool, date, lang, calendars, candidates).await,

        _ => roman_general::resolve(pool, date, lang, calendars, candidates).await,
    }
}

pub mod roman_1960;
pub mod roman_general;
