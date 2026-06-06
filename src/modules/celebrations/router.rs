use super::handlers;
use actix_web::{web, Scope};

pub fn router() -> Scope {
    web::scope("/celebrations")
        .route("", web::get().to(handlers::get_celebrations))
        .route(
            "/celebration-of-today",
            web::get().to(handlers::celebration_of_today),
        )
}
