use actix_web::{web, Scope};

use super::handlers;

pub fn router() -> Scope {
    web::scope("/calendars").route("", web::get().to(handlers::get_calendars))
}
