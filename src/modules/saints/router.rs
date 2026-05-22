use super::handlers;
use actix_web::{web, Scope};

pub fn router() -> Scope {
    web::scope("/saints")
        .route("", web::get().to(handlers::list_saints))
        .route("/fulllist", web::get().to(handlers::list_all_saints))
    // .route("", web::post().to(handlers::create_saint))
    // .route("/slug/{slug}", web::get().to(handlers::get_saint_by_slug))
    // .route("/{id}", web::get().to(handlers::get_saint))
    // .route("/{id}", web::put().to(handlers::update_saint))
    // .route("/{id}", web::delete().to(handlers::delete_saint))
}
