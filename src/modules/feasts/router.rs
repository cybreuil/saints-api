use super::handlers;
use actix_web::{web, Scope};

pub fn router() -> Scope {
    web::scope("/feasts").route(
        "",
        web::get().to(handlers::list_feasts_for_calendar_with_dates),
    )
    // .route(
    //     "/{slug}",
    //     web::get().to(crate::modules::feasts::handlers::get_feast_by_slug),
    // )
}
