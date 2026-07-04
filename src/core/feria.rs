use chrono::{Datelike, NaiveDate, Weekday};

#[derive(Debug, Clone)]
pub struct FeriaInfo {
    pub label: String,
}

pub fn build_feria_info(
    date: NaiveDate,
    language_code: &str,
    season_label: Option<&str>,
    sunday_number: Option<u32>,
) -> FeriaInfo {
    let label = build_label(date, language_code, season_label, sunday_number);
    FeriaInfo { label }
}

fn ordinal_fr(n: u32) -> &'static str {
    match n {
        1 => "1er",
        2 => "2e",
        3 => "3e",
        4 => "4e",
        5 => "5e",
        6 => "6e",
        7 => "7e",
        8 => "8e",
        9 => "9e",
        10 => "10e",
        11 => "11e",
        12 => "12e",
        13 => "13e",
        14 => "14e",
        15 => "15e",
        16 => "16e",
        17 => "17e",
        18 => "18e",
        19 => "19e",
        20 => "20e",
        21 => "21e",
        22 => "22e",
        23 => "23e",
        24 => "24e",
        25 => "25e",
        26 => "26e",
        27 => "27e",
        28 => "28e",
        29 => "29e",
        30 => "30e",
        31 => "31e",
        32 => "32e",
        33 => "33e",
        34 => "34e",
        _ => "Ne",
    }
}

fn ordinal_en(n: u32) -> String {
    let suffix = match n % 100 {
        11 | 12 | 13 => "th",
        _ => match n % 10 {
            1 => "st",
            2 => "nd",
            3 => "rd",
            _ => "th",
        },
    };
    format!("{}{}", n, suffix)
}

fn build_label(
    date: NaiveDate,
    language_code: &str,
    season_label: Option<&str>,
    sunday_number: Option<u32>,
) -> String {
    let is_sunday = date.weekday() == Weekday::Sun;

    match language_code {
        "fr" => {
            if is_sunday {
                match (sunday_number, season_label) {
                    (Some(n), Some(s)) => format!("{} dimanche du {}", ordinal_fr(n), s),
                    (Some(n), None) => format!("{} dimanche", ordinal_fr(n)),
                    (None, Some(s)) => format!("Dimanche du {}", s),
                    (None, None) => "Dimanche".to_string(),
                }
            } else {
                let weekday = match date.weekday() {
                    Weekday::Mon => "Lundi",
                    Weekday::Tue => "Mardi",
                    Weekday::Wed => "Mercredi",
                    Weekday::Thu => "Jeudi",
                    Weekday::Fri => "Vendredi",
                    Weekday::Sat => "Samedi",
                    Weekday::Sun => unreachable!(),
                };
                match season_label {
                    Some(s) => format!("{} de la férie du {}", weekday, s),
                    None => format!("{} de la férie", weekday),
                }
            }
        }

        "la" => {
            if is_sunday {
                match (sunday_number, season_label) {
                    (Some(n), Some(s)) => format!("Dominica {} per {}", n, s),
                    (Some(n), None) => format!("Dominica {}", n),
                    (None, Some(s)) => format!("Dominica {}", s),
                    (None, None) => "Dominica".to_string(),
                }
            } else {
                match date.weekday() {
                    Weekday::Mon => "Feria II",
                    Weekday::Tue => "Feria III",
                    Weekday::Wed => "Feria IV",
                    Weekday::Thu => "Feria V",
                    Weekday::Fri => "Feria VI",
                    Weekday::Sat => "Sabbato",
                    Weekday::Sun => unreachable!(),
                }
                .to_string()
            }
        }

        _ => {
            // English
            if is_sunday {
                match (sunday_number, season_label) {
                    (Some(n), Some(s)) => format!("{} Sunday of {}", ordinal_en(n), s),
                    (Some(n), None) => format!("{} Sunday", ordinal_en(n)),
                    (None, Some(s)) => format!("Sunday of {}", s),
                    (None, None) => "Sunday".to_string(),
                }
            } else {
                let weekday = match date.weekday() {
                    Weekday::Mon => "Monday",
                    Weekday::Tue => "Tuesday",
                    Weekday::Wed => "Wednesday",
                    Weekday::Thu => "Thursday",
                    Weekday::Fri => "Friday",
                    Weekday::Sat => "Saturday",
                    Weekday::Sun => unreachable!(),
                };
                match season_label {
                    Some(s) => format!("{} of the feria ({})", weekday, s),
                    None => format!("{} of the feria", weekday),
                }
            }
        }
    }
}
