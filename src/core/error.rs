use actix_web::{http::StatusCode, HttpResponse, ResponseError};
use thiserror::Error;

// Custom API error for handlers
#[allow(dead_code)]
#[derive(Debug, Error)]
pub enum ApiError {
    #[error("Resource not found")]
    NotFound,

    #[error("Bad request: {0}")]
    BadRequest(String),

    #[error("Unprocessable entity: {0}")]
    UnprocessableEntity(String),

    #[error("Unauthorized")]
    Unauthorized,

    #[error("Forbidden")]
    Forbidden,

    #[error("Conflict: {0}")]
    Conflict(String),

    #[error("Database error: {0}")]
    Database(#[from] sqlx::Error),

    #[error("Internal server error")]
    InternalError,
}

impl ResponseError for ApiError {
    fn status_code(&self) -> StatusCode {
        match self {
            ApiError::NotFound => StatusCode::NOT_FOUND, // 404
            ApiError::BadRequest(_) => StatusCode::BAD_REQUEST, // 400
            ApiError::UnprocessableEntity(_) => StatusCode::UNPROCESSABLE_ENTITY, // 422
            ApiError::Unauthorized => StatusCode::UNAUTHORIZED, // 401
            ApiError::Forbidden => StatusCode::FORBIDDEN, // 403
            ApiError::Conflict(_) => StatusCode::CONFLICT, // 409
            ApiError::Database(e) => match e {
                sqlx::Error::RowNotFound => StatusCode::NOT_FOUND,
                _ => StatusCode::INTERNAL_SERVER_ERROR,
            },
            ApiError::InternalError => StatusCode::INTERNAL_SERVER_ERROR, // 500
        }
    }

    fn error_response(&self) -> HttpResponse {
        let status = self.status_code();

        // If it's an internal server error, we want to log the error details and return a generic message to the client to avoid exposing sensitive information
        if status == StatusCode::INTERNAL_SERVER_ERROR {
            // Log the error details for internal server errors
            tracing::error!("Internal server error: {}", self);

            let body = serde_json::json!({
                "status": status.as_u16(),
                "error": "An unexpected Internal Server Error occurred. Please try again later."
            });

            return HttpResponse::build(status).json(body);
        }

        let body = serde_json::json!({
            "status": status.as_u16(),
            "error": self.to_string()
        });
        HttpResponse::build(status).json(body)
    }
}
