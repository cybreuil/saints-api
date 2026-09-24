// roman_1960.rs

use chrono::{Datelike, NaiveDate, Weekday};
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
    candidates: Vec<CelebrationRow>,
) -> Result<ResolvedLiturgicalDay, ApiError> {
    let mut candidates = candidates;

    // 1. Déterminer le jour liturgique de base
    let base_day = determine_base_day(date, &candidates);

    // 2. Déterminer qui prévaut
    let primary = select_primary(&base_day, &candidates);

    // 3. Déterminer les commémorations possibles
    let commemorations = select_commemorations(&base_day, &candidates, primary.as_ref());

    // 4. Résultat
    let mut celebrations = Vec::new();

    if let Some(primary) = primary {
        celebrations.push(primary);
    }

    celebrations.extend(commemorations);

    celebrations.sort_by_key(|c| c.rank_precedence.unwrap_or(i16::MAX));

    Ok(ResolvedLiturgicalDay { celebrations })
}

fn select_primary(day: &Roman1960DayKind, candidates: &[CelebrationRow]) -> Option<CelebrationRow> {
    let mut candidates: Vec<CelebrationRow> = candidates
        .iter()
        .filter(|c| c.observance_type != "commemoration")
        .cloned()
        .collect();

    candidates.sort_by_key(|c| c.rank_precedence.unwrap_or(i16::MAX));

    candidates.into_iter().next()
}

fn select_commemorations(
    day: &Roman1960DayKind,
    candidates: &[CelebrationRow],
    primary: Option<&CelebrationRow>,
) -> Vec<CelebrationRow> {
    let Some(primary) = primary else {
        return Vec::new();
    };

    let mut result = Vec::new();

    for candidate in candidates {
        if candidate.feast_id == primary.feast_id {
            continue;
        }

        let candidate_rank = candidate.rank_precedence.unwrap_or(i16::MAX);

        let primary_rank = primary.rank_precedence.unwrap_or(i16::MAX);

        // Pour commencer : seulement les candidats
        // inférieurs au principal.
        if candidate_rank > primary_rank {
            let mut commemoration = candidate.clone();
            commemoration.observance_type = "commemoration".to_string();

            result.push(commemoration);
        }
    }

    result
}
