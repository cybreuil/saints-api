use serde::Serialize;
use sqlx::FromRow;

#[derive(Debug, Serialize, FromRow)]
pub struct Celebration {
    pub id: i32,
    pub color_id: Option<i32>,
    pub is_optional: bool,
}
