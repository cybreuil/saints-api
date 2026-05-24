use crate::modules;
use actix_web::{web, Scope};

pub fn router() -> Scope {
    web::scope("").service(modules::saints::router::router())
}
