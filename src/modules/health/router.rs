use super::handlers;
use actix_web::{web, Scope};

pub fn router() -> Scope {
    web::scope("/health").route("", web::get().to(handlers::health_check))
}
