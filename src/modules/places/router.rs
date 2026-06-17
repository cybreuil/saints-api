use super::handlers;
use actix_web::{web, Scope};

pub fn router() -> Scope {
    web::scope("/places").route("", web::get().to(handlers::list_places))
    // .route("/fulllist", web::get().to(handlers::list_all_saints))
}
