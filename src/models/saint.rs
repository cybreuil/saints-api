use serde::{Deserialize, Serialize};

#[derive(Debug, Serialize, Deserialize)]
pub struct Saint {
    pub id: i32,
    pub name: String,
    pub feast_day: String, // Format "YYYY-MM-DD" ou à adapter
    pub description: Option<String>,
    // peut etre étendu avec d'autres champs si nécessaire
}
