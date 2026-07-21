use crate::core::movable_dates::{
    AscensionMode, CalendarType, ChristKingMode, CorpusChristiMode, EpiphanyMode, LiturgicalConfig,
};

use super::Calendar;

pub fn to_liturgical_config(calendar: &Calendar) -> LiturgicalConfig {
    LiturgicalConfig {
        calendar_type: match calendar.date_system.as_str() {
            "julian" => CalendarType::Julian,
            _ => CalendarType::Gregorian,
        },
        epiphany_mode: match calendar.code.as_str() {
            "ROMAN_FRANCE" => EpiphanyMode::MovableJan2to8,
            _ => EpiphanyMode::FixedJan6,
        },
        christ_king_mode: match calendar.code.as_str() {
            _ => ChristKingMode::LastSundayBeforeAdvent,
        },
        ascension_mode: match calendar.code.as_str() {
            _ => AscensionMode::Thursday,
        },
        corpus_christi_mode: match calendar.code.as_str() {
            _ => CorpusChristiMode::Thursday,
        },
    }
}
