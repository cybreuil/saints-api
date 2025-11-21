use crate::models::saint::Saint;
use actix_web::{HttpResponse, Responder, get, web};

#[get("/saints")]
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
