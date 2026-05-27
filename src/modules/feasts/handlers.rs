use actix_web::{web, HttpResponse};
use sqlx::PgPool;

use crate::core::error::ApiError;

use super::dto;
use super::service;

// pub async fn list_feasts(
//     pool: web::Data<PgPool>,
//     query: web::Query<dto::FeastQuery>,
// ) -> Result<HttpResponse, ApiError> {
//     let result = service::list_feasts(
//         pool.get_ref(),
//         query.page.unwrap_or(1),
//         query.per_page.unwrap_or(20),
//     )
//     .await?;

//     Ok(HttpResponse::Ok().json(result))
// }

// admin route, no pagination
pub async fn list_all_feasts(pool: web::Data<PgPool>) -> Result<HttpResponse, ApiError> {
    let result = service::list_all_feasts(pool.get_ref()).await?;

    Ok(HttpResponse::Ok().json(result))
}
