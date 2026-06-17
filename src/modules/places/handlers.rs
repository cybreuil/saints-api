use actix_web::{web, HttpResponse};
use sqlx::PgPool;

use crate::core::error::ApiError;

use super::dto;
use super::service;

pub async fn list_places(
    pool: web::Data<PgPool>,
    query: web::Query<dto::PlaceQuery>,
) -> Result<HttpResponse, ApiError> {
    let result = service::list_places(
        pool.get_ref(),
        query.page.unwrap_or(1),
        query.per_page.unwrap_or(16),
        query.language_code.as_deref(),
    )
    .await?;

    Ok(HttpResponse::Ok().json(result))
}
