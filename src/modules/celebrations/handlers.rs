use actix_web::{web, HttpResponse};
use sqlx::PgPool;

use crate::core::error::ApiError;

use super::service;

pub async fn get_celebrations(pool: web::Data<PgPool>) -> Result<HttpResponse, ApiError> {
    let result = service::get_celebrations(pool.get_ref()).await?;

    Ok(HttpResponse::Ok().json(result))
}
