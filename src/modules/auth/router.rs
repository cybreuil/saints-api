use super::handlers;
use actix_web::{web, Scope};

pub fn router() -> Scope {
    web::scope("/auth")
        .route("/login", web::post().to(handlers::login))
        .route("/logout", web::post().to(handlers::logout))
        .route("/refresh", web::post().to(handlers::refresh))
        .route("/me", web::get().to(handlers::me))
}
