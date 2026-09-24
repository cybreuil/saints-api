use chrono::NaiveDate;
use sqlx::PgPool;

use crate::core::error::ApiError;
use crate::modules::calendars;
use crate::modules::celebrations::dto::CelebrationRow;

use super::ResolvedLiturgicalDay;

pub async fn resolve(
    pool: &PgPool,
    date: NaiveDate,
    lang: &str,
    calendars: &[calendars::Calendar],
    mut candidates: Vec<CelebrationRow>,
) -> Result<ResolvedLiturgicalDay, ApiError> {
    // Ici tu mets ta logique actuelle :
    //
    // - saison
    // - feria/sunday fallback
    // - rank
    // - etc.

    candidates.sort_by_key(|c| c.rank_precedence.unwrap_or(i16::MAX));

    Ok(ResolvedLiturgicalDay {
        celebrations: candidates,
    })
}
