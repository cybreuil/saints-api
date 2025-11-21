mod api;
mod models;

use actix_web::{App, HttpServer};

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    println!("🚀 Démarrage de l'API Saints en Rust...");
    HttpServer::new(|| {
        App::new()
            .service(api::saints::list_saints)
            .service(api::saints::get_saint)
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
}
