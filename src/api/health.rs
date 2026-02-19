use actix_web::{HttpResponse, Responder, Scope, web};
use sqlx::PgPool;

async fn health(pool: web::Data<PgPool>) -> impl Responder {
    match sqlx::query("SELECT 1").execute(pool.get_ref()).await {
        Ok(_) => HttpResponse::Ok().json(serde_json::json!({
            "status": "ok",
            "database": "connected"
        })),
        Err(_) => HttpResponse::ServiceUnavailable().json(serde_json::json!({
            "status": "degraded",
            "database": "unavailable"
        })),
    }
}

pub fn routes() -> Scope {
    web::scope("/health").route("", web::get().to(health))
}
