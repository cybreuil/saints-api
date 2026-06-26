use chrono::{Duration, NaiveDate};

use super::error::ApiError;

// List of moveable
// SUNDAY_AFTER_EPIPHANY
// PALM_SUNDAY
// DIVINE_MERCY_SUNDAY
// SUNDAY_WITHIN_CHRISTMAS_OCTAVE_OR_DEC30
// ... WIP

/// Computes the date of Easter Sunday for the given year.
///
/// Uses the Meeus/Jones/Butcher Gregorian algorithm.
pub fn easter_sunday(year: i32) -> NaiveDate {
    let a = year % 19;
    let b = year / 100;
    let c = year % 100;
    let d = b / 4;
    let e = b % 4;
    let f = (b + 8) / 25;
    let g = (b - f + 1) / 3;
    let h = (19 * a + b - d - g + 15) % 30;
    let i = c / 4;
    let k = c % 4;
    let l = (32 + 2 * e + 2 * i - h - k) % 7;
    let m = (a + 11 * h + 22 * l) / 451;

    let month = (h + l - 7 * m + 114) / 31;
    let day = ((h + l - 7 * m + 114) % 31) + 1;

    NaiveDate::from_ymd_opt(year, month as u32, day as u32)
        .expect("Failed to compute Easter Sunday")
}

/// Returns a date relative to Easter Sunday.
pub fn from_easter(year: i32, offset_days: i16) -> NaiveDate {
    easter_sunday(year) + Duration::days(offset_days as i64)
}

/// Returns the date of Christmas Day.
pub fn christmas(year: i32) -> NaiveDate {
    NaiveDate::from_ymd_opt(year, 12, 25).expect("Failed to construct Christmas date")
}

/// Returns a date relative to Christmas Day.
pub fn from_christmas(year: i32, offset_days: i16) -> NaiveDate {
    christmas(year) + Duration::days(offset_days as i64)
}

/// Resolves a movable date from its base and day offset.
///
/// Supported bases:
/// - `easter`
/// - `christmas`
pub fn resolve_movable_date(
    year: i32,
    base: &str,
    offset_days: i16,
) -> Result<NaiveDate, ApiError> {
    match base {
        "easter" => Ok(from_easter(year, offset_days)),
        "christmas" => Ok(from_christmas(year, offset_days)),
        _ => Err(ApiError::InternalError(format!(
            "Unknown movable base '{}'",
            base
        ))),
    }
}
