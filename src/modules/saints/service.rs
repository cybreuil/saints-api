use sqlx::PgPool;

use super::{
    dto::{SaintListItem, SaintListResponse},
    model::SaintRow,
    repo,
};
use crate::core::{error::ApiError, pagination::Pagination};

pub async fn list_saints(
    pool: &PgPool,
    page: i32,
    per_page: i32,
) -> Result<SaintListResponse, ApiError> {
    let p = Pagination::new(Some(page), Some(per_page));

    let rows: Vec<SaintRow> = repo::list_saints(pool, p.per_page, p.offset).await?;

    let data: Vec<SaintListItem> = rows.into_iter().map(SaintListItem::from).collect();

    Ok(SaintListResponse {
        page: p.page,
        per_page: p.per_page,
        data,
    })
}

pub async fn list_all_saints(pool: &PgPool) -> Result<Vec<SaintListItem>, ApiError> {
    let rows: Vec<SaintRow> = repo::list_all_saints(pool).await?;

    let data: Vec<SaintListItem> = rows.into_iter().map(SaintListItem::from).collect();

    Ok(data)
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
