use crate::models::saint::Saint;
use actix_web::{HttpResponse, Responder, Scope, get, web};

async fn list_saints() -> impl Responder {
    // Pour l'instant, retourne une liste statique
    let saints = vec![
        Saint {
            id: 1,
            name: "Saint Pierre".to_string(),
            feast_day: "06-29".to_string(),
            description: Some("Premier pape, apôtre".to_string()),
        },
        Saint {
            id: 2,
            name: "Sainte Thérèse".to_string(),
            feast_day: "10-01".to_string(),
            description: Some("Docteur de l'Église".to_string()),
        },
    ];
    HttpResponse::Ok().json(saints)
}

async fn get_saint(path: web::Path<i32>) -> impl Responder {
    let saint_id = path.into_inner();
    // Pour l'instant, retourne un saint statique basé sur l'ID
    let saint = match saint_id {
        1 => Some(Saint {
            id: 1,
            name: "Saint Pierre".to_string(),
            feast_day: "06-29".to_string(),
            description: Some("Premier pape, apôtre".to_string()),
        }),
        2 => Some(Saint {
            id: 2,
            name: "Sainte Thérèse".to_string(),
            feast_day: "10-01".to_string(),
            description: Some("Docteur de l'Église".to_string()),
        }),
        _ => None,
    };

    match saint {
        Some(s) => HttpResponse::Ok().json(s),
        None => HttpResponse::NotFound().body("Saint not found"),
    }
}

pub fn routes() -> Scope {
    web::scope("/saints")
        .route("", web::get().to(list_saints))
        .route("/{id}", web::get().to(get_saint))
}
