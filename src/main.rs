mod api;
mod models;

use actix_web::{App, HttpServer};
use dotenv::dotenv;
use std::env;

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    dotenv().ok();

    let port = env::var("API_PORT")
        .unwrap_or_else(|_| "8080".to_string())
        .parse::<u16>()
        .expect("API_PORT must be a valid number");

    println!("🚀 Démarrage de l'API Saints sur http://127.0.0.1:{}", port);

    HttpServer::new(|| App::new().service(api::saints::routes()))
        .bind(("127.0.0.1", port))?
        .run()
        .await
}
