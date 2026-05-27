use super::handlers;
use actix_web::{web, Scope};

pub fn router() -> Scope {
    web::scope("/feasts").route("", web::get().to(handlers::list_all_feasts))
    // .route(
    //     "/{slug}",
    //     web::get().to(crate::modules::feasts::handlers::get_feast_by_slug),
    // )
}
