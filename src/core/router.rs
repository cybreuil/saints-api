use crate::modules;
use actix_web::{web, Scope};

pub fn router() -> Scope {
    web::scope("")
        .service(modules::saints::router::router())
        .service(modules::feasts::router::router())
        .service(modules::health::router::router())
        .service(modules::root::router::router())
}
