use actix_web::{web, HttpResponse};
use sqlx::query;
use sqlx::PgPool;

use crate::core::error::ApiError;

use super::dto;
use super::service;

pub async fn list_images(
    pool: web::Data<PgPool>,
    query: web::Query<dto::ImagesListQuery>,
) -> Result<HttpResponse, ApiError> {
    let result = service::list_images(
        pool.get_ref(),
        query.page.unwrap_or(1),
        query.per_page.unwrap_or(20),
        query.language_code.as_deref(),
        query.q.as_deref(),
        query.sort.as_deref(),
    )
    .await?;

    Ok(HttpResponse::Ok().json(result))
}

pub async fn list_all_images(
    pool: web::Data<PgPool>,
    query: web::Query<dto::ImagesListQuery>,
) -> Result<HttpResponse, ApiError> {
    let result = service::list_all_images(pool.get_ref(), query.language_code.as_deref()).await?;
    Ok(HttpResponse::Ok().json(result))
}
