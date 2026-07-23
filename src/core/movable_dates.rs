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
// EPIPHANY  (France/Belgium/etc: Sunday between Jan 2–8; roman general or 1960 is fixed JAN 6)

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
    Epiphany,
    SaintJoseph, // March 19 (fixed), but if it is inside Holy Week, back to the Saturday before Palm Sunday
    Annunciation, // March 25 (fixed), but if it is inside Holy Week or Easter Octave, moved to Monday after the Octave of Easter
    ImmaculateConception, // December 8 (fixed), but if it falls on a Sunday (Advent Sunday), moved to December 9
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
            "EPIPHANY" => Ok(Self::Epiphany),
            "SAINT_JOSEPH" => Ok(Self::SaintJoseph),
            "ANNUNCIATION" => Ok(Self::Annunciation),
            "IMMACULATE_CONCEPTION" => Ok(Self::ImmaculateConception),
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
            Self::Epiphany => "EPIPHANY",
            Self::SaintJoseph => "SAINT_JOSEPH",
            Self::Annunciation => "ANNUNCIATION",
            Self::ImmaculateConception => "IMMACULATE_CONCEPTION",
        }
    }
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum CalendarType {
    Gregorian,
    Julian,
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum EpiphanyMode {
    FixedJan6,      // Epiphany is fixed on Jan 6 (Roman General, 1960, etc.)
    MovableJan2to8, // Epiphany is moved to the nearest Sunday in Jan 2–8 (France, Belgium, etc.)
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum ChristKingMode {
    LastSundayBeforeAdvent, // Christ the King is celebrated on the last Sunday before Advent (Roman General)
    LastSundayOfOctober,    // Christ the King is celebrated on the last Sunday of October (1962)
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum AscensionMode {
    Thursday, // Ascension is celebrated on Thursday (traditional)
    Sunday,   // Ascension is celebrated on the following Sunday (some dioceses)
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum CorpusChristiMode {
    Thursday,
    Sunday,
}

// Global Configuration for liturgical calendar calculations, including calendar type and epiphany mode.
#[derive(Debug, Clone, Copy)]
pub struct LiturgicalConfig {
    pub calendar_type: CalendarType,
    pub epiphany_mode: EpiphanyMode,
    pub christ_king_mode: ChristKingMode,
    pub ascension_mode: AscensionMode,
    pub corpus_christi_mode: CorpusChristiMode,
}
// Default configuration: Gregorian calendar with fixed Epiphany on Jan 6.
impl Default for LiturgicalConfig {
    fn default() -> Self {
        Self {
            calendar_type: CalendarType::Gregorian,
            epiphany_mode: EpiphanyMode::FixedJan6,
            christ_king_mode: ChristKingMode::LastSundayBeforeAdvent,
            ascension_mode: AscensionMode::Thursday,
            corpus_christi_mode: CorpusChristiMode::Thursday,
        }
    }
}

/// Universal function to offset a date by a number of days. This can be used for any movable date.
pub fn offset(date: NaiveDate, days: i16) -> NaiveDate {
    date + Duration::days(days as i64)
}

/// Computes the date of Easter Sunday for the given year for the Gregorian calendar & Julian calendar.
///
/// Uses the Meeus/Jones/Butcher algorithm.
pub fn easter_sunday(year: i32, config: LiturgicalConfig) -> NaiveDate {
    match config.calendar_type {
        CalendarType::Gregorian => {
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
        CalendarType::Julian => {
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
    }
}

/// Returns the date of Palm Sunday for the given year.
/// Palm Sunday is the Sunday before Easter Sunday, which is 7 days before Easter.
pub fn palm_sunday(year: i32, config: LiturgicalConfig) -> NaiveDate {
    offset(easter_sunday(year, config), -7)
}

/// Returns the date of Divine Mercy Sunday for the given year.
/// Divine Mercy Sunday is the Sunday after Easter Sunday, which is 7 days after Easter.
pub fn divine_mercy_sunday(year: i32, config: LiturgicalConfig) -> NaiveDate {
    offset(easter_sunday(year, config), 7)
}

/// Returns the date of Pentecost for the given year.
/// Pentecost is the 50th day after Easter Sunday, which is 49 days after Easter.
pub fn pentecost(year: i32, config: LiturgicalConfig) -> NaiveDate {
    offset(easter_sunday(year, config), 49)
}

/// Returns the date of Trinity Sunday for the given year.
/// Trinity Sunday is the Sunday after Pentecost, which is 56 days after Easter.
pub fn trinity_sunday(year: i32, config: LiturgicalConfig) -> NaiveDate {
    offset(easter_sunday(year, config), 56)
}

/// Returns the date of the Second Sunday after Pentecost.
pub fn second_sunday_after_pentecost(year: i32, config: LiturgicalConfig) -> NaiveDate {
    offset(easter_sunday(year, config), 63)
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

pub fn epiphany(year: i32, config: LiturgicalConfig) -> NaiveDate {
    match config.epiphany_mode {
        EpiphanyMode::FixedJan6 => NaiveDate::from_ymd_opt(year, 1, 6).unwrap(),
        EpiphanyMode::MovableJan2to8 => {
            let mut date = NaiveDate::from_ymd_opt(year, 1, 2).unwrap();

            while date.weekday() != Weekday::Sun {
                date += Duration::days(1);
            }

            date
        }
    }
}

// 1962: Epiphany is Jan 6, but Sunday After Epiphany logic may depend on rubrics...
pub fn sunday_after_epiphany(year: i32, config: LiturgicalConfig) -> NaiveDate {
    let epiphany_date = epiphany(year, config);
    let mut date = epiphany_date + Duration::days(1);

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
/// Sunday after Epiphany if epiphany fixed on Jan 6,
/// otherwise if epiphany is movable and falls on 7 or 8 Jan, then Baptism of the Lord is on the following Monday (9 or 10 Jan). If epiphany is on 2–6 Jan, then Baptism of the Lord is on the following Sunday (3–7 Jan).
pub fn baptism_of_the_lord(year: i32, config: LiturgicalConfig) -> NaiveDate {
    let epiphany = epiphany(year, config);

    if config.epiphany_mode == EpiphanyMode::MovableJan2to8 && epiphany.day() >= 7 {
        // Epiphany is on Jan 7 or 8, so Baptism of the Lord is on the following Monday (Jan 9 or 10) which means day + 1
        return epiphany + Duration::days(1);
    }

    // Otherwise, Baptism of the Lord is on the Sunday after Epiphany
    let days_until_sunday = 7 - epiphany.weekday().num_days_from_sunday();
    epiphany + Duration::days(days_until_sunday as i64)
}

// Returns the date of the first Sunday after the Baptism of the Lord for the given year.
fn first_sunday_after_baptism(year: i32, config: LiturgicalConfig) -> NaiveDate {
    let baptism = baptism_of_the_lord(year, config);

    let mut date = baptism + Duration::days(1);

    while date.weekday() != Weekday::Sun {
        date += Duration::days(1);
    }

    date
}

/// Returns the date of Ash Wednesday for the given year.
/// Ash Wednesday is 46 days before Easter Sunday (40 days of Lent + 6 Sundays).
pub fn ash_wednesday(year: i32, config: LiturgicalConfig) -> NaiveDate {
    offset(easter_sunday(year, config), -46)
}

/// Returns the date of Holy Thursday for the given year.
/// Holy Thursday is 3 days before Easter Sunday.
pub fn holy_thursday(year: i32, config: LiturgicalConfig) -> NaiveDate {
    offset(easter_sunday(year, config), -3)
}

/// Returns the date of Christ the King for the given year.
/// Christ the King is the Sunday immediately before the First Sunday of Advent or the last Sunday of October, depending on the configuration.
pub fn christ_the_king(year: i32, config: LiturgicalConfig) -> NaiveDate {
    match config.christ_king_mode {
        ChristKingMode::LastSundayBeforeAdvent => {
            let first_advent = first_advent_sunday(year);
            offset(first_advent, -7)
        }
        ChristKingMode::LastSundayOfOctober => {
            let mut date = NaiveDate::from_ymd_opt(year, 10, 31).unwrap();

            while date.weekday() != Weekday::Sun {
                date -= Duration::days(1);
            }

            date
        }
    }
}

/// Returns the date of the Saint Joseph feast for the given year, considering the liturgical rules.
/// If March 19 falls within Holy Week, the feast is moved to the Saturday Before Palm Sunday. Otherwise, it is celebrated on March 19.
/// New rule: if saint joseph is on a Sunday, it is moved to the following Monday (March 20).
pub fn saint_joseph(year: i32, config: LiturgicalConfig) -> NaiveDate {
    let march_19 = NaiveDate::from_ymd_opt(year, 3, 19).unwrap();
    let palm_sunday = palm_sunday(year, config);
    let holy_week_end = palm_sunday + Duration::days(6); // Samedi Saint

    if march_19 >= palm_sunday && march_19 <= holy_week_end {
        palm_sunday - Duration::days(1)
    } else if march_19.weekday() == Weekday::Sun {
        march_19 + Duration::days(1)
    } else {
        march_19
    }
}

/// Returns the date of the Annunciation for the given year, considering the liturgical rules.
/// If March 25 falls within Holy Week or the Easter Octave, the feast is moved to the Monday after the Octave of Easter. Otherwise, it is celebrated on March 25.
pub fn annunciation(year: i32, config: LiturgicalConfig) -> NaiveDate {
    let march_25 = NaiveDate::from_ymd_opt(year, 3, 25).unwrap();

    let easter = easter_sunday(year, config);
    let palm_sunday = palm_sunday(year, config);

    let octave_end = easter + Duration::days(7); // samedi après Pâques

    if march_25 >= palm_sunday && march_25 <= octave_end {
        return easter + Duration::days(8); // lundi après le 2e dimanche de Pâques
    }

    march_25
}

/// Returns the date of the Immaculate Conception for the given year
/// It should be celebrated on December 8, but if it falls on a Sunday (Advent Sunday), it is moved to the following Monday (December 9).
pub fn immaculate_conception(year: i32) -> NaiveDate {
    let dec_8 = NaiveDate::from_ymd_opt(year, 12, 8).unwrap();
    let first_advent = first_advent_sunday(year);
    let fourth_advent = first_advent + Duration::days(21);

    // If dec 8 is sunday & in advent time
    if dec_8 >= first_advent && dec_8 <= fourth_advent && dec_8.weekday() == Weekday::Sun {
        dec_8 + Duration::days(1)
    } else {
        dec_8
    }
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
pub fn sunday_number_in_season(
    date: NaiveDate,
    year: i32,
    config: LiturgicalConfig,
) -> Option<u32> {
    if date.weekday() != Weekday::Sun {
        return None;
    }

    let first_sunday_after_baptism = first_sunday_after_baptism(year, config);
    let easter = easter_sunday(year, config);
    let advent = first_advent_sunday(year);

    // Ash Wednesday = Easter - 46; first Sunday of Lent = Easter - 42
    let first_lent = offset(easter, -42);
    // Christ the King = Sunday immediately before 1st Advent Sunday = 34th Sunday of OT
    let christ_king = christ_the_king(year, config);

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

    // ORDINARY TIME I: from the first Sunday after Baptism of the Lord
    // until the Sunday before Ash Wednesday.

    let first_ot1 = first_sunday_after_baptism;
    let last_ot1 = offset(first_lent, -7);

    if date >= first_ot1 && date <= last_ot1 {
        let n = ((date - first_ot1).num_days() / 7) as u32 + 2;
        return Some(n);
    }

    // ── ORDINARY TIME II ── Trinity Sunday (+7 after Pentecost) through Christ the King
    // Numbered backward from Christ the King (= 34th Sunday of OT).
    let first_ot2 = trinity_sunday(year, config);

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
    config: LiturgicalConfig,
) -> NaiveDate {
    match base {
        MovableBase::EasterSunday => offset(easter_sunday(year, config), offset_days),
        MovableBase::FirstAdventSunday => offset(first_advent_sunday(year), offset_days),
        MovableBase::SundayAfterEpiphany => {
            offset(sunday_after_epiphany(year, config), offset_days)
        }
        MovableBase::SundayWithinChristmasOctaveOrDec30 => {
            offset(sunday_within_christmas_octave_or_dec30(year), offset_days)
        }
        MovableBase::PalmSunday => offset(palm_sunday(year, config), offset_days),
        MovableBase::DivineMercySunday => offset(divine_mercy_sunday(year, config), offset_days),
        MovableBase::Pentecost => offset(pentecost(year, config), offset_days),
        MovableBase::TrinitySunday => offset(trinity_sunday(year, config), offset_days),
        MovableBase::SecondSundayAfterPentecost => {
            offset(second_sunday_after_pentecost(year, config), offset_days)
        }
        MovableBase::BaptismOfTheLord => offset(baptism_of_the_lord(year, config), offset_days),
        MovableBase::AshWednesday => offset(ash_wednesday(year, config), offset_days),
        MovableBase::HolyThursday => offset(holy_thursday(year, config), offset_days),
        MovableBase::Epiphany => offset(epiphany(year, config), offset_days),
        MovableBase::SaintJoseph => offset(saint_joseph(year, config), offset_days),
        MovableBase::Annunciation => offset(annunciation(year, config), offset_days),
        MovableBase::ImmaculateConception => offset(immaculate_conception(year), offset_days),
    }
}
