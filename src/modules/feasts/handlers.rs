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
    query: web::Query<dto::FeastOfTheDayQuery>,
) -> Result<HttpResponse, ApiError> {
    let result = service::feast_the_day(pool.get_ref(), query.date.as_deref()).await?;

    Ok(HttpResponse::Ok().json(result))
}
