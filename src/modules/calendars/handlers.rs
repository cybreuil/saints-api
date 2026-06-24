use actix_web::{web, HttpResponse};
use sqlx::PgPool;

use super::dto::CalendarQuery;
use super::service;
use crate::core::error::ApiError;

pub async fn get_calendars(
    pool: web::Data<PgPool>,
    query: web::Query<CalendarQuery>,
) -> Result<HttpResponse, ApiError> {
    let result = service::get_calendars(
        pool.get_ref(),
        query.code.as_deref(),
        query.parent_code.as_deref(),
        query.language_code.as_deref(),
    )
    .await?;

    Ok(HttpResponse::Ok().json(result))
}
