use actix_web::{web, HttpResponse};
use sqlx::PgPool;
use std::collections::HashMap;

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
pub async fn list_feasts_for_calendar_with_dates(
    pool: web::Data<PgPool>,
    query: web::Query<dto::FeastQuery>,
) -> Result<HttpResponse, ApiError> {
    let result =
        service::list_feasts_for_calendar_with_dates(pool.get_ref(), query.calendar_id).await?;

    Ok(HttpResponse::Ok().json(result))
}

// Feast of the day
pub async fn feast_the_day(
    pool: web::Data<PgPool>,
    query: web::Query<HashMap<String, String>>,
) -> Result<HttpResponse, ApiError> {
    let params = query.into_inner();

    // date is optional string "MM-DD"
    let date_opt = params.get("date").map(|s| s.to_owned());

    // offset is optional int (minutes). return clear 422 if parse fails
    let offset = match params.get("offset") {
        Some(s) if !s.is_empty() => Some(s.parse::<i32>().map_err(|_| {
            ApiError::BadRequest(
                "Invalid 'offset' query parameter: expecting integer minutes".into(),
            )
        })?),
        _ => None,
    };

    let result = service::feast_the_day(pool.get_ref(), date_opt.as_deref(), offset).await?;

    if result.is_none() {
        return Ok(HttpResponse::Ok().json(serde_json::json!({
            "error": "No feast found for the given date."
        })));
    }
    Ok(HttpResponse::Ok().json(result))
}
