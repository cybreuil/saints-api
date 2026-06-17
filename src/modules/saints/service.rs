use sqlx::PgPool;

use super::{
    dto::{SaintDetailResponse, SaintListItem, SaintListItemComplete, SaintListResponse},
    repo,
};
use crate::core::{
    error::ApiError,
    pagination::{Paginated, Pagination},
    validation,
};

// Calculate total pages based on total items and per-page limit
fn total_pages(total: i32, per_page: i32) -> i32 {
    if total == 0 {
        0
    } else {
        (total + per_page - 1) / per_page
    }
}

pub async fn list_saints(
    pool: &PgPool,
    page: i32,
    per_page: i32,
) -> Result<SaintListResponse, ApiError> {
    let p = Pagination::new(Some(page), Some(per_page));

    let total = repo::count_saints(pool).await? as i32;
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

pub async fn list_saints_complete(
    pool: &PgPool,
    page: i32,
    per_page: i32,
    language_code: Option<&str>,
) -> Result<Paginated<SaintListItemComplete>, ApiError> {
    // If lang is invalid, we don't go for db
    let lang = validation::resolve_locale(language_code)?;

    let p = Pagination::new(Some(page), Some(per_page));
    let total = repo::count_saints(pool).await? as i32;

    if total == 0 {
        return Ok(Paginated::empty(&p));
    }
    if p.beyond_total(total) {
        return Err(ApiError::UnprocessableEntity(format!(
            "Page {} is out of range. Total pages: {}",
            p.page,
            p.total_pages(total)
        )));
    }

    let data = repo::list_saints_complete(pool, p.per_page, p.offset, lang).await?;
    Ok(Paginated::new(&p, total, data))
}

pub async fn list_all_saints(pool: &PgPool) -> Result<Vec<SaintListItem>, ApiError> {
    repo::list_all_saints(pool).await
}

pub async fn get_saint_by_slug(
    pool: &PgPool,
    slug: &str,
    language_code: Option<&str>,
) -> Result<SaintDetailResponse, ApiError> {
    let slug = validation::resolve_slug(slug)?;
    let lang = validation::resolve_locale(language_code)?;

    // Triple fetch: get saint, images, and places concurrently
    let (saint, images, places) = tokio::try_join!(
        repo::get_saint_by_slug(pool, slug, lang),
        repo::get_saint_images(pool, slug),
        repo::get_saint_places(pool, slug, lang),
    )?;

    Ok(SaintDetailResponse {
        saint,
        images,
        places,
    })
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
