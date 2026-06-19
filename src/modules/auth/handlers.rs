use actix_web::{web, HttpRequest, HttpResponse};
use sqlx::PgPool;

use crate::core::config::Config;
use crate::core::error::ApiError;
use crate::middleware::auth::require_auth;

use super::dto::LoginRequest;
use super::service;

const REFRESH_COOKIE: &str = "refresh_token";

// ── Cookie builders ───────────────────────────────────────────────────────────

fn refresh_cookie(token: &str, days: i64, is_prod: bool) -> actix_web::cookie::Cookie<'static> {
    actix_web::cookie::Cookie::build(REFRESH_COOKIE, token.to_owned())
        .http_only(true)
        .secure(is_prod)
        // Scope to /auth so the cookie isn't sent on every API request
        .path("/auth")
        .same_site(actix_web::cookie::SameSite::Lax)
        .max_age(actix_web::cookie::time::Duration::days(days))
        .finish()
}

fn clear_refresh_cookie(is_prod: bool) -> actix_web::cookie::Cookie<'static> {
    actix_web::cookie::Cookie::build(REFRESH_COOKIE, "")
        .http_only(true)
        .secure(is_prod)
        .path("/auth")
        .same_site(actix_web::cookie::SameSite::Lax)
        .max_age(actix_web::cookie::time::Duration::seconds(0))
        .finish()
}

// ── Handlers ──────────────────────────────────────────────────────────────────

/// POST /auth/login
pub async fn login(
    pool: web::Data<PgPool>,
    cfg: web::Data<Config>,
    body: web::Json<LoginRequest>,
) -> Result<HttpResponse, ApiError> {
    let (response, refresh_token) = service::login(
        pool.get_ref(),
        body.into_inner(),
        &cfg.jwt_secret,
        cfg.jwt_ttl_minutes,
        cfg.refresh_token_days,
    )
    .await?;

    let cookie = refresh_cookie(&refresh_token, cfg.refresh_token_days, cfg.is_prod);
    Ok(HttpResponse::Ok().cookie(cookie).json(response))
}

/// POST /auth/logout  (auth optional — we just kill the cookie if present)
pub async fn logout(
    pool: web::Data<PgPool>,
    cfg: web::Data<Config>,
    req: HttpRequest,
) -> Result<HttpResponse, ApiError> {
    if let Some(cookie) = req.cookie(REFRESH_COOKIE) {
        service::logout(pool.get_ref(), cookie.value()).await?;
    }
    let clear = clear_refresh_cookie(cfg.is_prod);
    Ok(HttpResponse::Ok()
        .cookie(clear)
        .json(serde_json::json!({ "message": "Logged out" })))
}

/// POST /auth/refresh
pub async fn refresh(
    pool: web::Data<PgPool>,
    cfg: web::Data<Config>,
    req: HttpRequest,
) -> Result<HttpResponse, ApiError> {
    let raw_token = req
        .cookie(REFRESH_COOKIE)
        .map(|c| c.value().to_owned())
        .ok_or(ApiError::Unauthorized)?;

    let (response, new_token) = service::refresh(
        pool.get_ref(),
        &raw_token,
        &cfg.jwt_secret,
        cfg.jwt_ttl_minutes,
        cfg.refresh_token_days,
    )
    .await?;

    let cookie = refresh_cookie(&new_token, cfg.refresh_token_days, cfg.is_prod);
    Ok(HttpResponse::Ok().cookie(cookie).json(response))
}

/// GET /auth/me  — requires a valid access token
pub async fn me(
    pool: web::Data<PgPool>,
    cfg: web::Data<Config>,
    req: HttpRequest,
) -> Result<HttpResponse, ApiError> {
    let claims = require_auth(&req, &cfg.jwt_secret)?;
    let user_id: i32 = claims.sub.parse().map_err(|_| ApiError::Unauthorized)?;
    let response = service::me(pool.get_ref(), user_id).await?;
    Ok(HttpResponse::Ok().json(response))
}
