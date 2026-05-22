use actix_web::{web, HttpResponse};
use sqlx::PgPool;

// use crate::core::config::Config;
use crate::core::error::ApiError;
// use crate::middleware::auth::require_auth;

use super::service;

pub async fn list_saints(
    pool: web::Data<PgPool>,
    query: web::Query<super::dto::SaintQuery>,
) -> Result<HttpResponse, ApiError> {
    let result = service::list_saints(pool.into_inner(), query.into_inner()).await?;
    Ok(HttpResponse::Ok().json(result))
}

pub async fn list_all_saints(pool: web::Data<PgPool>) -> Result<HttpResponse, ApiError> {
    let result = service::list_all_saints(pool.get_ref()).await?;
    Ok(HttpResponse::Ok().json(result))
}

// pub async fn get_saint(
//     pool: web::Data<PgPool>,
//     path: web::Path<i32>,
//     query: web::Query<crate::models::saint::SaintQuery>,
// ) -> Result<HttpResponse, ApiError> {
//     let result =
//         service::get_saint(pool.into_inner(), path.into_inner(), query.into_inner()).await?;
//     Ok(HttpResponse::Ok().json(result))
// }

// pub async fn get_saint_by_slug(
//     pool: web::Data<PgPool>,
//     path: web::Path<String>,
// ) -> Result<HttpResponse, ApiError> {
//     let result = service::get_saint_by_slug(pool.into_inner(), path.into_inner()).await?;
//     Ok(HttpResponse::Ok().json(result))
// }

// pub async fn create_saint(
//     req: HttpRequest,
//     pool: web::Data<PgPool>,
//     config: web::Data<Config>,
//     body: web::Json<crate::models::saint::CreateSaint>,
// ) -> Result<HttpResponse, ApiError> {
//     require_auth(&req, &config.jwt_secret)?;

//     let result = service::create_saint(pool.into_inner(), body.into_inner()).await?;
//     Ok(HttpResponse::Created().json(result))
// }

// pub async fn update_saint(
//     req: HttpRequest,
//     pool: web::Data<PgPool>,
//     config: web::Data<Config>,
//     path: web::Path<i32>,
//     body: web::Json<crate::models::saint::UpdateSaint>,
// ) -> Result<HttpResponse, ApiError> {
//     require_auth(&req, &config.jwt_secret)?;

//     let result =
//         service::update_saint(pool.into_inner(), path.into_inner(), body.into_inner()).await?;

//     Ok(HttpResponse::Ok().json(result))
// }

// pub async fn delete_saint(
//     req: HttpRequest,
//     pool: web::Data<PgPool>,
//     config: web::Data<Config>,
//     path: web::Path<i32>,
// ) -> Result<HttpResponse, ApiError> {
//     require_auth(&req, &config.jwt_secret)?;

//     service::delete_saint(pool.into_inner(), path.into_inner()).await?;

//     Ok(HttpResponse::NoContent().finish())
// }
