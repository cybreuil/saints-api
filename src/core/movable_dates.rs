use chrono::{Datelike, Duration, NaiveDate, Weekday};
use serde::{Deserialize, Serialize};

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
// EPIPHANY_SUNDAY  (France/Belgium/etc: Sunday between Jan 2–8)

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
    BaptismOfTheLord,
    AshWednesday,
    HolyThursday,
    EpiphanySunday,
}

impl TryFrom<&str> for MovableBase {
    type Error = ();

    fn try_from(value: &str) -> Result<Self, Self::Error> {
        match value {
            "EASTER_SUNDAY" => Ok(Self::EasterSunday),
            "PALM_SUNDAY" => Ok(Self::PalmSunday),
            "DIVINE_MERCY_SUNDAY" => Ok(Self::DivineMercySunday),
            "PENTECOST" => Ok(Self::Pentecost),
            "TRINITY_SUNDAY" => Ok(Self::TrinitySunday),
            "SECOND_SUNDAY_AFTER_PENTECOST" => Ok(Self::SecondSundayAfterPentecost),
            "FIRST_ADVENT_SUNDAY" => Ok(Self::FirstAdventSunday),
            "SUNDAY_AFTER_EPIPHANY" => Ok(Self::SundayAfterEpiphany),
            "SUNDAY_WITHIN_CHRISTMAS_OCTAVE_OR_DEC30" => {
                Ok(Self::SundayWithinChristmasOctaveOrDec30)
            }
            "BAPTISM_OF_THE_LORD" => Ok(Self::BaptismOfTheLord),
            "ASH_WEDNESDAY" => Ok(Self::AshWednesday),
            "HOLY_THURSDAY" => Ok(Self::HolyThursday),
            "EPIPHANY_SUNDAY" => Ok(Self::EpiphanySunday),
            _ => Err(()),
        }
    }
}

impl MovableBase {
    pub fn as_str(&self) -> &'static str {
        match self {
            Self::EasterSunday => "EASTER_SUNDAY",
            Self::PalmSunday => "PALM_SUNDAY",
            Self::DivineMercySunday => "DIVINE_MERCY_SUNDAY",
            Self::Pentecost => "PENTECOST",
            Self::TrinitySunday => "TRINITY_SUNDAY",
            Self::SecondSundayAfterPentecost => "SECOND_SUNDAY_AFTER_PENTECOST",
            Self::FirstAdventSunday => "FIRST_ADVENT_SUNDAY",
            Self::SundayAfterEpiphany => "SUNDAY_AFTER_EPIPHANY",
            Self::SundayWithinChristmasOctaveOrDec30 => "SUNDAY_WITHIN_CHRISTMAS_OCTAVE_OR_DEC30",
            Self::BaptismOfTheLord => "BAPTISM_OF_THE_LORD",
            Self::AshWednesday => "ASH_WEDNESDAY",
            Self::HolyThursday => "HOLY_THURSDAY",
            Self::EpiphanySunday => "EPIPHANY_SUNDAY",
        }
    }
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

/// Returns the date of the Baptism of the Lord for the given year.
/// Assumes Epiphany is fixed on January 6, and the Baptism of the Lord is the Sunday after Epiphany.
pub fn baptism_of_the_lord(year: i32) -> NaiveDate {
    let epiphany = NaiveDate::from_ymd_opt(year, 1, 6).unwrap();
    let mut date = epiphany + Duration::days(1);

    while date.weekday() != Weekday::Sun {
        date += Duration::days(1);
    }

    date
}

/// Returns the date of Ash Wednesday for the given year.
pub fn ash_wednesday(year: i32) -> NaiveDate {
    offset(easter_sunday(year), -46)
}

pub fn holy_thursday(year: i32) -> NaiveDate {
    offset(easter_sunday(year), -3)
}

/// Returns Epiphany for calendars where it is moved to the nearest Sunday
/// in [Jan 2, Jan 8] (France, Belgium, etc.).
/// If Jan 6 falls on Sunday the result is Jan 6, otherwise it is the
/// unique Sunday in that window (always exactly one).
pub fn epiphany_france(year: i32) -> NaiveDate {
    let mut date = NaiveDate::from_ymd_opt(year, 1, 2).unwrap();
    while date.weekday() != Weekday::Sun {
        date += Duration::days(1);
    }
    date
}

/// Returns the ordinal number (1-based) of a Sunday within its liturgical season.
/// Returns `None` if the date is not a Sunday, or falls in Christmas time
/// (where Sundays are individually seeded feasts).
///
/// Coverage:
/// - Advent:        1st – 4th
/// - Lent:          1st – 6th (6th = Palm Sunday)
/// - Eastertide:    1st – 7th (1st = Easter; Pentecost excluded, it is seeded)
/// - Ordinary Time: 2nd – 34th (counted backward from Christ the King)
pub fn sunday_number_in_season(date: NaiveDate, year: i32) -> Option<u32> {
    if date.weekday() != Weekday::Sun {
        return None;
    }

    let baptism = baptism_of_the_lord(year);
    let easter = easter_sunday(year);
    let pent = pentecost(year);
    let advent = first_advent_sunday(year);

    // Ash Wednesday = Easter - 46; first Sunday of Lent = Easter - 42
    let first_lent = offset(easter, -42);
    // Christ the King = Sunday immediately before 1st Advent Sunday = 34th Sunday of OT
    let christ_king = offset(advent, -7);

    // ── ADVENT ── 1st through 4th Sunday
    if date >= advent {
        let n = ((date - advent).num_days() / 7) as u32 + 1;
        if n <= 4 {
            return Some(n);
        }
    }

    // ── LENT ── 1st through 6th Sunday (Palm Sunday is the 6th)
    if date >= first_lent && date < easter {
        let n = ((date - first_lent).num_days() / 7) as u32 + 1;
        return Some(n);
    }

    // ── EASTERTIDE ── 1st (Easter) through 7th Sunday
    // Pentecost (+49) is seeded separately; we stop at +42.
    if date >= easter && date <= offset(easter, 42) {
        let n = ((date - easter).num_days() / 7) as u32 + 1;
        return Some(n);
    }

    // ── ORDINARY TIME I ── 2nd Sunday (after Baptism) to last Sunday before Lent
    // Baptism of the Lord is always a Sunday, so OT I begins the following Sunday (+7).
    let first_ot1 = offset(baptism, 7);
    let last_ot1 = offset(first_lent, -7);

    if date >= first_ot1 && date <= last_ot1 {
        let n = ((date - first_ot1).num_days() / 7) as u32 + 2;
        return Some(n);
    }

    // ── ORDINARY TIME II ── Trinity Sunday (+7 after Pentecost) through Christ the King
    // Numbered backward from Christ the King (= 34th Sunday of OT).
    let first_ot2 = offset(pent, 7); // Trinity Sunday

    if date >= first_ot2 && date <= christ_king {
        let weeks_before_end = ((christ_king - date).num_days() / 7) as u32;
        return Some(34 - weeks_before_end);
    }

    // Christmas time: Holy Family, Baptism of the Lord, etc. are seeded individually.
    None
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
        MovableBase::BaptismOfTheLord => offset(baptism_of_the_lord(year), offset_days),
        MovableBase::AshWednesday => offset(ash_wednesday(year), offset_days),
        MovableBase::HolyThursday => offset(holy_thursday(year), offset_days),
        MovableBase::EpiphanySunday => offset(epiphany_france(year), offset_days),
    }
}
