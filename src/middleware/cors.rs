use crate::core::config::Config;
use actix_cors::Cors;
use actix_web::web;

// Full open don't forget to change this in production
pub fn cors(cfg: &web::Data<Config>) -> Cors {
    if cfg.is_prod {
        Cors::default()
            .allowed_origin("https://your-production-domain.com") // domain env ?
            .allowed_methods(vec!["GET", "POST", "PUT", "DELETE", "OPTIONS"])
            .allowed_headers(vec!["Content-Type", "Authorization"])
            .max_age(3600)
    } else {
        Cors::default()
            .allow_any_origin()
            .allow_any_method()
            .allow_any_header()
            .max_age(3600)
    }
}
