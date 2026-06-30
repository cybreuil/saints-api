use actix_web::{web, HttpResponse};
use chrono::{Datelike, Utc};
use sqlx::PgPool;

use super::dto;
use super::service;
use crate::core::error::ApiError;

pub async fn get_liturgical_season(
    pool: web::Data<PgPool>,
    query: web::Query<dto::LiturgicalSeasonQuery>,
) -> Result<HttpResponse, ApiError> {
    let now = Utc::now();

    let year = query.year.unwrap_or(now.year() as i32);
    let month = query.month.unwrap_or(now.month() as i16);
    let day = query.day.unwrap_or(now.day() as i16);
    let language_code = query.language_code.as_deref();
    let calendar_code = query.calendar_code.as_deref();

    if month < 1 || month > 12 || day < 1 || day > 31 {
        return Err(ApiError::BadRequest(format!(
            "Invalid Month or Day: month={}, day={}",
            month, day
        )));
    }
    if year < 1 || year > 9999 {
        return Err(ApiError::BadRequest(format!("Invalid Year: year={}", year)));
    }

    let result =
        service::get_liturgical_season(&pool, year, month, day, language_code, calendar_code)
            .await?;

    Ok(HttpResponse::Ok().json(result))
}
