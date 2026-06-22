use actix_web::{web, HttpResponse};
use chrono::{Datelike, Utc};
use sqlx::PgPool;

use super::dto;
use crate::core::error::ApiError;

use super::service;

pub async fn get_celebrations(pool: web::Data<PgPool>) -> Result<HttpResponse, ApiError> {
    let result = service::get_celebrations(pool.get_ref()).await?;

    Ok(HttpResponse::Ok().json(result))
}

pub async fn celebration_of_today(pool: web::Data<PgPool>) -> Result<HttpResponse, ApiError> {
    let result = service::celebration_of_today(pool.get_ref()).await?;

    Ok(HttpResponse::Ok().json(result))
}

pub async fn get_celebrations_by_date(
    pool: web::Data<PgPool>,
    query: web::Query<dto::DateQuery>,
) -> Result<HttpResponse, ApiError> {
    // Fallback sur now need check timezones
    let now = Utc::now();
    let month = query.month.unwrap_or(now.month() as u8);
    let day = query.day.unwrap_or(now.day() as u8);

    if month < 1 || month > 12 || day < 1 || day > 31 {
        return Err(ApiError::BadRequest("Invalid month or day".to_string()));
    }

    // Maybe i should add cache control headers here, but for now, let's just return the result
    let result = service::get_celebrations_by_date(pool.get_ref(), month, day).await?;

    Ok(HttpResponse::Ok().json(result))
}
