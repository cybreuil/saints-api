use sqlx::PgPool;

use super::{
    dto::{SaintListItem, SaintListResponse},
    repo,
};
use crate::{
    core::{error::ApiError, pagination::Pagination},
    modules::saints::dto::SaintDetail,
};

pub async fn list_saints(
    pool: &PgPool,
    page: i32,
    per_page: i32,
) -> Result<SaintListResponse, ApiError> {
    let p = Pagination::new(Some(page), Some(per_page));

    let total = repo::count_saints(pool).await?;
    let total_pages = (total + p.per_page - 1) / p.per_page;

    // Total is zero, return empty data with pagination info
    if total == 0 {
        return Ok(SaintListResponse {
            page: p.page,
            per_page: p.per_page,
            total,
            total_pages: 0,
            data: Vec::new(),
        });
    }

    // Check if requested page is beyond total pages - 422
    if p.beyond_total(total) {
        return Err(ApiError::UnprocessableEntity(format!(
            "Page {} is out of range. Total pages: {}",
            p.page, total_pages
        )));
    }

    // Fetch
    let data = repo::list_saints(pool, p.per_page, p.offset).await?;

    Ok(SaintListResponse {
        page: p.page,
        per_page: p.per_page,
        total: total,
        total_pages: total_pages,
        data,
    })
}

pub async fn list_all_saints(pool: &PgPool) -> Result<Vec<SaintListItem>, ApiError> {
    repo::list_all_saints(pool).await
}

pub async fn get_saint_by_slug(
    pool: &PgPool,
    slug: &str,
    language_code: &str,
) -> Result<SaintDetail, ApiError> {
    fn valid_lang_code(s: &str) -> bool {
        let primary = s.split('-').next().unwrap_or("");
        primary.len() == 2 && primary.chars().all(|c| c.is_ascii_alphabetic())
    }

    let lang = if language_code.is_empty() {
        "en" // fallback
    } else if valid_lang_code(language_code) {
        language_code
    } else {
        return Err(ApiError::BadRequest("Invalid language code".to_string()));
    };

    repo::get_saint_by_slug(pool, slug, lang).await
}

// pub async fn get_saint(
//     pool: PgPool,
//     id: i32,
//     query: crate::models::saint::SaintQuery,
// ) -> Result<dto::SaintDetailResponse, ApiError> {
//     repo::get_saint(pool, id, query).await
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
