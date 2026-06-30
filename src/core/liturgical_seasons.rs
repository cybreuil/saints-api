use crate::core::error::ApiError;
use crate::core::movable_dates::{resolve_movable_date, CalendarType, MovableBase};
use chrono::NaiveDate;

#[derive(Debug, sqlx::FromRow, Clone)]
pub struct LiturgicalSeasonIntervalRow {
    pub season_code: String,
    pub segment_index: i16,

    pub start_kind: String,
    pub start_month: Option<i16>,
    pub start_day: Option<i16>,
    pub start_movable_base: Option<String>,
    pub start_offset_days: Option<i16>,

    pub end_kind: String,
    pub end_month: Option<i16>,
    pub end_day: Option<i16>,
    pub end_movable_base: Option<String>,
    pub end_offset_days: Option<i16>,

    pub label: Option<String>, // season label
    pub color_code: Option<String>,
    pub color_label: Option<String>,
    pub hex_color: Option<String>,
}

#[derive(Debug, Clone)]
pub struct SeasonInterval {
    pub code: String,
    pub label: Option<String>,
    pub start: NaiveDate,
    pub end: NaiveDate,
    pub color_code: Option<String>,
    pub color_label: Option<String>,
    pub hex_color: Option<String>,
}

fn resolve_boundary(
    kind: &str,
    month: Option<i16>,
    day: Option<i16>,
    movable_base: Option<&str>,
    offset_days: Option<i16>,
    year: i32,
) -> Result<NaiveDate, ApiError> {
    match kind {
        "fixed" => {
            let m = month.ok_or(ApiError::InternalError)? as u32;
            let d = day.ok_or(ApiError::InternalError)? as u32;

            NaiveDate::from_ymd_opt(year, m, d).ok_or(ApiError::InternalError)
        }

        "movable" => {
            let base = MovableBase::try_from(movable_base.ok_or(ApiError::InternalError)?)
                .map_err(|_| ApiError::InternalError)?;

            Ok(resolve_movable_date(
                year,
                base,
                offset_days.unwrap_or(0),
                CalendarType::Gregorian,
            ))
        }

        _ => Err(ApiError::InternalError),
    }
}

pub fn build_intervals(
    rows: &[LiturgicalSeasonIntervalRow],
    year: i32,
) -> Result<Vec<SeasonInterval>, ApiError> {
    let mut intervals = Vec::with_capacity(rows.len());

    for row in rows {
        let start = resolve_boundary(
            &row.start_kind,
            row.start_month,
            row.start_day,
            row.start_movable_base.as_deref(),
            row.start_offset_days,
            year,
        )?;

        let end = resolve_boundary(
            &row.end_kind,
            row.end_month,
            row.end_day,
            row.end_movable_base.as_deref(),
            row.end_offset_days,
            year,
        )?;

        intervals.push(SeasonInterval {
            code: row.season_code.clone(),
            label: row.label.clone(),
            start,
            end,
            color_code: row.color_code.clone(),
            color_label: row.color_label.clone(),
            hex_color: row.hex_color.clone(),
        });
    }

    Ok(intervals)
}
