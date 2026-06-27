use actix_web::{web, HttpResponse};
use chrono::{Datelike, Utc};
use sqlx::PgPool;

use super::dto;
use crate::core::error::ApiError;

use super::service;

pub async fn get_celebrations(
    pool: web::Data<PgPool>,
    query: web::Query<dto::CelebrationListQuery>,
) -> Result<HttpResponse, ApiError> {
    let result = service::get_celebrations(
        pool.get_ref(),
        query.page.unwrap_or(1),
        query.per_page.unwrap_or(20),
        query.calendar_code.as_deref(),
        query.language_code.as_deref(),
    )
    .await?;

    Ok(HttpResponse::Ok().json(result))
}

pub async fn celebration_of_today(pool: web::Data<PgPool>) -> Result<HttpResponse, ApiError> {
    let result = service::celebration_of_today(pool.get_ref()).await?;

    Ok(HttpResponse::Ok().json(result))
}

pub async fn get_celebrations_by_date(
    pool: web::Data<PgPool>,
    query: web::Query<dto::CelebrationByDateQuery>,
) -> Result<HttpResponse, ApiError> {
    // Fallback sur now need check timezones
    let now = Utc::now();

    let year = query.year.unwrap_or(now.year() as i32);
    let month = query.month.unwrap_or(now.month() as i16);
    let day = query.day.unwrap_or(now.day() as i16);
    let language_code = query.language_code.as_deref();
    let calendar_code = query.calendar_code.as_deref();

    if month < 1 || month > 12 || day < 1 || day > 31 {
        return Err(ApiError::BadRequest("Invalid month or day".to_string()));
    }
    if year < 1 || year > 9999 {
        return Err(ApiError::BadRequest("Invalid year".to_string()));
    }

    // Maybe i should add cache control headers here, but for now, let's just return the result
    let result = service::get_celebrations_by_date(
        pool.get_ref(),
        year,
        month,
        day,
        language_code,
        calendar_code,
    )
    .await?;

    Ok(HttpResponse::Ok().json(result))
}
