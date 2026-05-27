use actix_web::HttpResponse;
use serde::Serialize;

// Struct for the index response, to keep order
#[derive(Serialize)]
struct IndexResponse {
    name: &'static str,
    version: &'static str,
    description: &'static str,
    docs: &'static str,
    repo: &'static str,
    notes: &'static str,
    health: &'static str,
}

/// Simple API homepage — returns JSON with basic info and useful links.
pub async fn index() -> HttpResponse {
    let response = IndexResponse {
		name: "Genuflexio - A catholic API serving saints & celebrations data.",
		version: "0.1.0",
		description: "Lightweight API serving saints data and images with feasts & celebrations of the catholic church.",
		docs: "/docs or README",
		repo: "https://github.com/cybreuil",
		notes: "This API is served by an Actix web server. See README for usage and seeds.",
		health: "/health",
	};
    HttpResponse::Ok().json(response)
}
