use super::error::ApiError;
use super::movable_dates::{resolve_movable_date, CalendarType, MovableBase};

#[derive(Debug, sqlx::FromRow)]
pub struct LiturgicalSeasonRule {
    pub season_code: String,

    pub rule_kind: String,

    pub month: Option<i16>,
    pub day: Option<i16>,

    pub movable_base: Option<String>,
    pub movable_offset_days: Option<i16>,

    pub is_start: bool,
    pub inclusive: bool,

    pub label: Option<String>,

    pub color_code: Option<String>,
    pub color_label: Option<String>,
    pub hex_color: Option<String>,
}

use chrono::NaiveDate;

pub struct SeasonInterval {
    pub code: String,
    pub label: Option<String>,
    pub start: NaiveDate,
    pub end: NaiveDate,
    pub color_code: Option<String>,
    pub color_label: Option<String>,
    pub hex_color: Option<String>,
}

struct SeasonIntervalBuilder {
    code: String,

    label: Option<String>,

    start: Option<NaiveDate>,
    end: Option<NaiveDate>,

    color_code: Option<String>,
    color_label: Option<String>,
    hex_color: Option<String>,
}

fn resolve_rule(rule: &LiturgicalSeasonRule, year: i32) -> Result<NaiveDate, ApiError> {
    match rule.rule_kind.as_str() {
        "fixed" => {
            Ok(
                NaiveDate::from_ymd_opt(year, rule.month.unwrap() as u32, rule.day.unwrap() as u32)
                    .unwrap(),
            )
        }

        "movable" => {
            let base = MovableBase::try_from(rule.movable_base.as_deref().unwrap())
                .map_err(|_| ApiError::InternalError)?;

            Ok(resolve_movable_date(
                year,
                base,
                rule.movable_offset_days.unwrap_or(0),
                CalendarType::Gregorian,
            ))
        }

        _ => Err(ApiError::InternalError),
    }
}

// ATTENTION NOEL
pub fn build_intervals(
    rules: &[LiturgicalSeasonRule],
    year: i32,
) -> Result<Vec<SeasonInterval>, ApiError> {
    let mut map = std::collections::HashMap::<String, SeasonIntervalBuilder>::new();

    for rule in rules {
        println!("{:?}", rule);
        let date = resolve_rule(rule, year)?;

        let entry = map
            .entry(rule.season_code.clone())
            .or_insert_with(|| SeasonIntervalBuilder {
                code: rule.season_code.clone(),

                label: rule.label.clone(),

                start: None,
                end: None,

                color_code: rule.color_code.clone(),
                color_label: rule.color_label.clone(),
                hex_color: rule.hex_color.clone(),
            });

        if rule.is_start {
            entry.start = Some(date);
        } else {
            entry.end = Some(date);
        }
    }

    Ok(map
        .into_values()
        .filter_map(|b| {
            Some(SeasonInterval {
                code: b.code,

                label: b.label,

                start: b.start?,
                end: b.end?,

                color_code: b.color_code,
                color_label: b.color_label,
                hex_color: b.hex_color,
            })
        })
        .collect())
}

// pub async fn get_liturgical_season(
//     pool: &PgPool,
//     year: i32,
//     month: u32,
//     day: u32,
//     language: &str,
//     calendar: &str,
// ) -> Result<Option<SeasonInterval>, ApiError> {
//     let rules = repo::get_liturgical_season_rules(pool, calendar, language).await?;

//     let date = chrono::NaiveDate::from_ymd_opt(year, month, day).unwrap();

//     let intervals = build_intervals(&rules, year)?;

//     for season in intervals {
//         if date >= season.start && date <= season.end {
//             return Ok(Some(season));
//         }
//     }

//     Ok(None)
// }
