use super::handlers;
use actix_web::{web, Scope};

pub fn router() -> Scope {
    web::scope("/").route("", web::get().to(handlers::index))
}
