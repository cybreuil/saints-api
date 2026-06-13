use actix_web::{error::InternalError, http::StatusCode, web, HttpResponse, ResponseError};
use serde::Serialize;
use thiserror::Error;

// =============================================================================
// Error layers in this file
// -----------------------------------------------------------------------------
// ROOT ERROR  -> the real, technical cause of the failure (sqlx::Error, a JSON
//                parse failure, etc.). It may contain sensitive details and is
//                meant for the SERVER (logs), never for the client.
//
// API ERROR   -> the sanitized, client-facing representation: an HTTP status
//                code + a safe JSON body `{ status, error }`. This is what the
//                CLIENT actually receives over the wire.
//
// The whole point of this module is to translate ROOT ERRORS into API ERRORS
// without leaking internals (especially for 5xx).
// =============================================================================

/// Shared client-facing error body. Every error response in the API serializes
/// to this exact shape so the front end always parses one consistent format.
#[derive(Serialize)]
struct ErrorBody {
    status: u16,
    error: String,
}

/// Builds a standard 400 response with the unified `{ status, error }` body.
/// Used by the extractor error handlers below.
fn bad_request_json(message: String) -> HttpResponse {
    HttpResponse::BadRequest().json(ErrorBody {
        status: StatusCode::BAD_REQUEST.as_u16(),
        error: message,
    })
}

// -----------------------------------------------------------------------------
// Extractor error handlers
// -----------------------------------------------------------------------------
// These run BEFORE our handlers, while Actix is still deserializing the request
// (body / query string / path). Their ROOT ERROR is an Actix deserialization
// error; we map it to the same API ERROR shape as the rest of the API.
// -----------------------------------------------------------------------------

/// `JsonConfig` that reports a malformed JSON body using the unified format.
pub fn json_config() -> web::JsonConfig {
    web::JsonConfig::default().error_handler(|err, _req| {
        // `err` is the ROOT ERROR (JSON parse failure). We wrap it in our
        // API ERROR body and hand both back to Actix via InternalError.
        let res = bad_request_json(format!("Invalid JSON body: {err}"));
        InternalError::from_response(err, res).into()
    })
}

/// `QueryConfig` that reports invalid query parameters using the unified format.
pub fn query_config() -> web::QueryConfig {
    web::QueryConfig::default().error_handler(|err, _req| {
        let res = bad_request_json(format!("Invalid query parameters: {err}"));
        InternalError::from_response(err, res).into()
    })
}

/// `PathConfig` that reports invalid path parameters using the unified format.
pub fn path_config() -> web::PathConfig {
    web::PathConfig::default().error_handler(|err, _req| {
        let res = bad_request_json(format!("Invalid path parameter: {err}"));
        InternalError::from_response(err, res).into()
    })
}

// -----------------------------------------------------------------------------
// ApiError: the single error type returned by handlers / services / repos.
// -----------------------------------------------------------------------------

/// Application-level error returned throughout the request lifecycle.
///
/// Each variant maps to a specific HTTP status (see `status_code`).
/// `#[error("...")]` defines the ROOT ERROR message (used in logs / `to_string`);
/// it is only exposed to the client for non-5xx variants.
#[allow(dead_code)] // some variants are not constructed yet (e.g. Forbidden)
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

    /// Wraps a ROOT ERROR coming from the database layer.
    /// `#[from]` lets us use `?` on any `sqlx::Error` and convert it here.
    /// NOTE: this message can contain sensitive details, so it is NEVER sent
    /// to the client when it resolves to a 5xx (see `error_response`).
    #[error("Database error: {0}")]
    Database(#[from] sqlx::Error),

    #[error("Internal server error")]
    InternalError,
}

impl ResponseError for ApiError {
    /// Maps each API ERROR variant to its HTTP status code.
    fn status_code(&self) -> StatusCode {
        match self {
            ApiError::NotFound => StatusCode::NOT_FOUND, // 404
            ApiError::BadRequest(_) => StatusCode::BAD_REQUEST, // 400
            ApiError::UnprocessableEntity(_) => StatusCode::UNPROCESSABLE_ENTITY, // 422
            ApiError::Unauthorized => StatusCode::UNAUTHORIZED, // 401
            ApiError::Forbidden => StatusCode::FORBIDDEN, // 403
            ApiError::Conflict(_) => StatusCode::CONFLICT, // 409
            // A DB ROOT ERROR can be either a real 404 (no row) or a genuine
            // server fault. We split them so "not found" doesn't become a 500.
            ApiError::Database(e) => match e {
                sqlx::Error::RowNotFound => StatusCode::NOT_FOUND,
                _ => StatusCode::INTERNAL_SERVER_ERROR,
            },
            ApiError::InternalError => StatusCode::INTERNAL_SERVER_ERROR, // 500
        }
    }

    /// Turns the API ERROR into the actual HTTP response sent to the client.
    fn error_response(&self) -> HttpResponse {
        let status = self.status_code();

        // 5xx: the ROOT ERROR may leak internals, so we log it server-side
        // and return a GENERIC, safe message to the client.
        if status == StatusCode::INTERNAL_SERVER_ERROR {
            // `self` prints the ROOT ERROR message: kept in logs only.
            tracing::error!("Internal server error: {}", self);

            let body = ErrorBody {
                status: status.as_u16(),
                error: "An unexpected Internal Server Error occurred. Please try again later."
                    .to_string(),
            };

            return HttpResponse::build(status).json(body);
        }

        // 4xx: the ROOT ERROR message is safe to expose, so we forward it
        // as-is in the API ERROR body.
        let body = ErrorBody {
            status: status.as_u16(),
            error: self.to_string(),
        };
        HttpResponse::build(status).json(body)
    }
}
