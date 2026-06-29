use super::handlers;
use actix_web::{web, Scope};

pub fn router() -> Scope {
    web::scope("/liturgical-seasons")
        // .route("", web::get().to(handlers::get_celebrations))
        // .route("/today", web::get().to(handlers::celebration_of_today))
        .route("/by-date", web::get().to(handlers::get_liturgical_season))
}
