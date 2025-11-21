use actix_web::{HttpResponse, ResponseError};
use thiserror::Error;

#[derive(Debug, Error)]
pub enum ApiError {
    #[error("Not found")]
    NotFound,
    #[error("Bad request: {0}")]
    BadRequest(String),
    #[error("Internal server error")]
    InternalError,
}

impl ResponseError for ApiError {
    fn error_response(&self) -> HttpResponse {
        match self {
            ApiError::NotFound => HttpResponse::NotFound().body("Not found"),
            ApiError::BadRequest(msg) => HttpResponse::BadRequest().body(msg),
            ApiError::InternalError => HttpResponse::InternalServerError().body("Internal error"),
        }
    }
}
