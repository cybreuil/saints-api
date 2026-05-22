mod core;
mod middleware;
mod modules;

use actix_cors::Cors;
use actix_web::{middleware::Logger, web, App, HttpServer};
use dotenv::dotenv;
use tracing_subscriber::{fmt, EnvFilter};

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    dotenv().ok();

    fmt().with_env_filter(EnvFilter::from_default_env()).init();

    let cfg = core::config::Config::from_env();
    let pool = core::db::create_pool(&cfg.database_url).await;
    let cfg_data = web::Data::new(cfg.clone());
    let pool_data = web::Data::new(pool);

    HttpServer::new(move || {
        let cors = Cors::default()
            .allow_any_origin()
            .allow_any_method()
            .allow_any_header()
            .max_age(3600);

        App::new()
            .wrap(cors)
            .wrap(Logger::default())
            .app_data(pool_data.clone())
            .app_data(cfg_data.clone())
            .app_data(web::JsonConfig::default().error_handler(|err, _req| {
                let response = actix_web::HttpResponse::BadRequest()
                    .json(serde_json::json!({ "error": err.to_string() }));
                actix_web::error::InternalError::from_response(err, response).into()
            }))
            // .service(api::health::routes())
            .service(modules::saints::router::router())
        // .service(api::feasts::routes())
        // .service(api::calendars::routes())
        // .service(api::celebrations::routes())
    })
    .bind((cfg.bind_address, cfg.port))?
    .run()
    .await
}
