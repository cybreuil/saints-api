use chrono::{Datelike, NaiveDate, Weekday};

#[derive(Debug, Clone)]
pub struct FeriaInfo {
    pub label: String,
}

pub fn build_feria_info(
    date: NaiveDate,
    language_code: &str,
    season_label: Option<&str>,
    week_number: Option<u32>,
) -> FeriaInfo {
    let label = build_label(date, language_code, season_label, week_number);
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

fn roman(n: u32) -> String {
    let values = [(10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")];

    let mut n = n;
    let mut result = String::new();

    for &(value, symbol) in &values {
        while n >= value {
            result.push_str(symbol);
            n -= value;
        }
    }

    result
}

fn weekday_latin(date: NaiveDate) -> &'static str {
    match date.weekday() {
        Weekday::Mon => "Feria II",
        Weekday::Tue => "Feria III",
        Weekday::Wed => "Feria IV",
        Weekday::Thu => "Feria V",
        Weekday::Fri => "Feria VI",
        Weekday::Sat => "Sabbato",
        Weekday::Sun => unreachable!(),
    }
}

fn build_label(
    date: NaiveDate,
    language_code: &str,
    season_label: Option<&str>,
    week_number: Option<u32>,
) -> String {
    let is_sunday = date.weekday() == Weekday::Sun;

    match language_code {
        "fr" => {
            if is_sunday {
                match (week_number, season_label) {
                    // Si paques ou avent pas "du" mais "de"
                    (Some(n), Some("Pâques")) => format!("{} dimanche de Pâques", ordinal_fr(n)),
                    (Some(n), Some("Avent")) => format!("{} dimanche de l'Avent", ordinal_fr(n)),
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
                match (season_label, week_number) {
                    (Some("Pâques"), Some(n)) => {
                        format!("{} de la {} semaine de Pâques", weekday, ordinal_fr(n))
                    }

                    (Some("Avent"), Some(n)) => {
                        format!("{} de la {} semaine de l'Avent", weekday, ordinal_fr(n))
                    }

                    (Some(s), Some(n)) => {
                        format!("{} de la {} semaine du {}", weekday, ordinal_fr(n), s)
                    }

                    (Some("Pâques"), None) => {
                        format!("{} de Pâques", weekday)
                    }

                    (Some("Avent"), None) => {
                        format!("{} de l'Avent", weekday)
                    }

                    (Some(s), None) => {
                        format!("{} du {}", weekday, s)
                    }

                    (None, _) => {
                        format!("{}", weekday)
                    }
                }
            }
        }

        "la" => {
            match (is_sunday, week_number, season_label) {
                // Dimanches
                (true, Some(n), Some(season)) => {
                    format!("Dominica {} {}", roman(n), season)
                }

                (true, Some(n), None) => {
                    format!("Dominica {}", roman(n))
                }

                (true, None, Some(season)) => {
                    format!("Dominica {}", season)
                }

                (true, None, None) => "Dominica".to_string(),

                // Féries
                (false, Some(n), Some(season)) => {
                    format!("{} Hebdomadae {} {}", weekday_latin(date), roman(n), season)
                }

                (false, Some(n), None) => {
                    format!("{} Hebdomadae {}", weekday_latin(date), roman(n))
                }

                (false, None, Some(season)) => {
                    format!("{} {}", weekday_latin(date), season)
                }

                (false, None, None) => weekday_latin(date).to_string(),
            }
        }

        _ => {
            // English
            if is_sunday {
                match (week_number, season_label) {
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

                match (week_number, season_label) {
                    (Some(n), Some(s)) => {
                        format!("{} of the {} Week of {}", weekday, ordinal_en(n), s)
                    }

                    (Some(n), None) => {
                        format!("{} of the {} Week", weekday, ordinal_en(n))
                    }

                    (None, Some(s)) => {
                        format!("{} of {}", weekday, s)
                    }

                    (None, None) => weekday.to_string(),
                }
            }
        }
    }
}
