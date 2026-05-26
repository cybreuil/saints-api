mod core;
mod middleware;
mod modules;

use actix_web::{middleware::Logger, web, App, HttpServer, ResponseError};
use core::{error::ApiError, router::router};
use dotenv::dotenv;
use middleware::cors::cors;
// use middleware::rate_limiter::RateLimiter;
use tracing_subscriber::{fmt, EnvFilter};

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    dotenv().expect(".env file missing");

    fmt().with_env_filter(EnvFilter::from_default_env()).init();

    let cfg = core::config::Config::from_env();
    let pool = core::db::create_pool(&cfg.database_url).await;
    let cfg_data = web::Data::new(cfg.clone());
    let pool_data = web::Data::new(pool);

    tracing::info!(
        "🚀 Saints API launching on http://{}:{}",
        cfg.bind_address,
        cfg.port
    );

    HttpServer::new(move || {
        App::new()
            .wrap(cors())
            .wrap(Logger::default())
            // TODO gerer rate par route avec differentes instances
            // .wrap(RateLimiter::new(60, Duration::from_secs(60)))
            .app_data(pool_data.clone())
            .app_data(cfg_data.clone())
            .app_data(web::JsonConfig::default().error_handler(|err, _req| {
                let response = actix_web::HttpResponse::BadRequest()
                    .json(serde_json::json!({ "error": err.to_string() }));
                actix_web::error::InternalError::from_response(err, response).into()
            }))
            .service(router())
            .default_service(web::route().to(|| async { ApiError::NotFound.error_response() }))
    })
    .bind((cfg.bind_address, cfg.port))?
    .run()
    .await
}
