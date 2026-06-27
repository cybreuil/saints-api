use chrono::{Datelike, Duration, NaiveDate, Weekday};
use serde::{Deserialize, Serialize};

use super::error::ApiError;

// List of actual movable dates
// EASTER_SUNDAY
// PALM_SUNDAY
// DIVINE_MERCY_SUNDAY
// PENTECOST
// TRINITY_SUNDAY
// SECOND_SUNDAY_AFTER_PENTECOST
// FIRST_ADVENT_SUNDAY
// SUNDAY_AFTER_EPIPHANY
// SUNDAY_WITHIN_CHRISTMAS_OCTAVE_OR_DEC30

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "SCREAMING_SNAKE_CASE")]
pub enum MovableBase {
    EasterSunday,
    PalmSunday,
    DivineMercySunday,
    Pentecost,
    TrinitySunday,
    SecondSundayAfterPentecost,
    FirstAdventSunday,
    SundayAfterEpiphany,
    SundayWithinChristmasOctaveOrDec30,
}

pub enum CalendarType {
    Gregorian,
    Julian,
}

pub enum EpiphanyMode {
    FixedJan6,
    // 1962: Epiphany is Jan 6, but Sunday After Epiphany logic may depend on rubrics
    Missal1962,
}

/// Universal function to offset a date by a number of days. This can be used for any movable date.
pub fn offset(date: NaiveDate, days: i16) -> NaiveDate {
    date + Duration::days(days as i64)
}

/// Computes the date of Easter Sunday for the given year for the Gregorian calendar.
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
        .expect("Failed to compute Gregorian Easter Sunday")
}

/// Computes the date of Easter Sunday for the given year for the Julian calendar.
///
/// Uses the Meeus/Jones/Butcher Julian algorithm.
pub fn easter_sunday_julian(year: i32) -> NaiveDate {
    let a = year % 4;
    let b = year % 7;
    let c = year % 19;
    let d = (19 * c + 15) % 30;
    let e = (2 * a + 4 * b - d + 34) % 7;
    let month = (d + e + 114) / 31;
    let day = ((d + e + 114) % 31) + 1;

    NaiveDate::from_ymd_opt(year, month as u32, day as u32)
        .expect("Failed to compute Julian Easter Sunday")
}

/// Returns the date of Palm Sunday for the given year.
pub fn palm_sunday(year: i32) -> NaiveDate {
    offset(easter_sunday(year), -7)
}

/// Returns the date of Divine Mercy Sunday for the given year.
pub fn divine_mercy_sunday(year: i32) -> NaiveDate {
    offset(easter_sunday(year), 7)
}

/// Returns the date of Pentecost for the given year.
pub fn pentecost(year: i32) -> NaiveDate {
    offset(easter_sunday(year), 49)
}

/// Returns the date of Trinity Sunday for the given year.
pub fn trinity_sunday(year: i32) -> NaiveDate {
    offset(easter_sunday(year), 56)
}

/// Returns the date of the Second Sunday after Pentecost.
pub fn second_sunday_after_pentecost(year: i32) -> NaiveDate {
    offset(easter_sunday(year), 63)
}

/// Returns the date of the First Sunday of Advent.
///
/// This is the Sunday falling between November 27 and December 3 inclusive.
pub fn first_advent_sunday(year: i32) -> NaiveDate {
    let mut date = NaiveDate::from_ymd_opt(year, 11, 27).unwrap();

    while date.weekday() != Weekday::Sun {
        date += Duration::days(1);
    }

    date
}

/// Returns the Sunday after Epiphany.
///
/// Assumes Epiphany is fixed on January 6.
pub fn sunday_after_epiphany(year: i32) -> NaiveDate {
    let mut date = NaiveDate::from_ymd_opt(year, 1, 7).unwrap();

    while date.weekday() != Weekday::Sun {
        date += Duration::days(1);
    }

    date
}

/// Returns the Sunday within the Christmas Octave,
/// or December 30 if there is no Sunday.
///
/// The Christmas Octave is December 26–31.
pub fn sunday_within_christmas_octave_or_dec30(year: i32) -> NaiveDate {
    let mut date = NaiveDate::from_ymd_opt(year, 12, 26).unwrap();

    while date <= NaiveDate::from_ymd_opt(year, 12, 31).unwrap() {
        if date.weekday() == Weekday::Sun {
            return date;
        }
        date += Duration::days(1);
    }

    NaiveDate::from_ymd_opt(year, 12, 30).unwrap()
}

/// Resolves a movable date from its base and day offset.
///
/// For all base movable dates listed above
pub fn resolve_movable_date(
    year: i32,
    base: MovableBase,
    offset_days: i16,
    calendar_type: CalendarType,
) -> NaiveDate {
    match base {
        MovableBase::EasterSunday => match calendar_type {
            CalendarType::Gregorian => offset(easter_sunday(year), offset_days),
            CalendarType::Julian => offset(easter_sunday_julian(year), offset_days),
        },
        MovableBase::FirstAdventSunday => offset(first_advent_sunday(year), offset_days),
        MovableBase::SundayAfterEpiphany => offset(sunday_after_epiphany(year), offset_days),
        MovableBase::SundayWithinChristmasOctaveOrDec30 => {
            offset(sunday_within_christmas_octave_or_dec30(year), offset_days)
        }
        MovableBase::PalmSunday => offset(palm_sunday(year), offset_days),
        MovableBase::DivineMercySunday => offset(divine_mercy_sunday(year), offset_days),
        MovableBase::Pentecost => offset(pentecost(year), offset_days),
        MovableBase::TrinitySunday => offset(trinity_sunday(year), offset_days),
        MovableBase::SecondSundayAfterPentecost => {
            offset(second_sunday_after_pentecost(year), offset_days)
        }
    }
}
