use chrono::{Datelike, NaiveDate, Weekday};

use crate::modules::liturgical_seasons;

#[derive(Debug, Clone)]
pub struct FeriaInfo {
    pub label: String,
}

pub fn build_feria_info(
    date: NaiveDate,
    language_code: &str,
    liturgical_season_label: Option<&str>,
) -> FeriaInfo {
    let label = match language_code {
        "fr" => match date.weekday() {
            Weekday::Mon => "Lundi de la férie",
            Weekday::Tue => "Mardi de la férie",
            Weekday::Wed => "Mercredi de la férie",
            Weekday::Thu => "Jeudi de la férie",
            Weekday::Fri => "Vendredi de la férie",
            Weekday::Sat => "Samedi de la férie",
            Weekday::Sun => "Dimanche de la férie",
        },
        "la" => match date.weekday() {
            Weekday::Mon => "Feria II",
            Weekday::Tue => "Feria III",
            Weekday::Wed => "Feria IV",
            Weekday::Thu => "Feria V",
            Weekday::Fri => "Feria VI",
            Weekday::Sat => "Sabbato",
            Weekday::Sun => "Dominica",
        },
        _ => match date.weekday() {
            Weekday::Mon => "Monday feria",
            Weekday::Tue => "Tuesday feria",
            Weekday::Wed => "Wednesday feria",
            Weekday::Thu => "Thursday feria",
            Weekday::Fri => "Friday feria",
            Weekday::Sat => "Saturday feria",
            Weekday::Sun => "Sunday feria",
        },
    };

    FeriaInfo {
        label: format!("{} de {}", label, liturgical_season_label.unwrap_or("")),
    }
}
