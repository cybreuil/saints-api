use serde::{Deserialize, Serialize};

#[derive(Debug, Serialize, Deserialize)]
pub struct Saint {
    pub id: i32,
    pub name: String,
    pub feast_day: String, // Format "YYYY-MM-DD" ou à adapter selon besoin
    pub description: Option<String>,
    // Ajoute d'autres champs selon ton besoin (calendrier, missel, etc.)
}
