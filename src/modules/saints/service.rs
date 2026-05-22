use sqlx::PgPool;

use super::dto;
use super::repo;
use crate::core::error::ApiError;

// pub async fn list_saints(
//     pool: PgPool,
//     query: crate::models::saint::SaintQuery,
// ) -> Result<dto::SaintListResponse, ApiError> {
//     repo::list_saints(pool, query).await
// }

impl From<repo::SaintRow> for dto::SaintListItem {
    fn from(row: repo::SaintRow) -> Self {
        Self {
            id: row.id,
            slug: row.slug,
            default_name: row.default_name,
            birth_year: row.birth_year,
            death_year: row.death_year,
        }
    }
}

pub async fn list_all_saints(pool: &PgPool) -> Result<Vec<dto::SaintListItem>, ApiError> {
    repo::list_all_saints(pool).await
}

// pub async fn get_saint(
//     pool: PgPool,
//     id: i32,
//     query: crate::models::saint::SaintQuery,
// ) -> Result<dto::SaintDetailResponse, ApiError> {
//     repo::get_saint(pool, id, query).await
// }

// pub async fn get_saint_by_slug(
//     pool: PgPool,
//     slug: String,
// ) -> Result<dto::SaintDetailResponse, ApiError> {
//     repo::get_saint_by_slug(pool, slug).await
// }

// pub async fn create_saint(
//     pool: PgPool,
//     body: crate::models::saint::CreateSaint,
// ) -> Result<dto::SaintResponse, ApiError> {
//     repo::create_saint(pool, body).await
// }

// pub async fn update_saint(
//     pool: PgPool,
//     id: i32,
//     body: crate::models::saint::UpdateSaint,
// ) -> Result<dto::SaintResponse, ApiError> {
//     repo::update_saint(pool, id, body).await
// }

// pub async fn delete_saint(pool: PgPool, id: i32) -> Result<(), ApiError> {
//     repo::delete_saint(pool, id).await
// }
