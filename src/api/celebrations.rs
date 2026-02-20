use crate::errors::ApiError;
use crate::models::celebration::{Celebration, CelebrationDetail, CelebrationQuery, CelebrationSaint};
use crate::pagination::Pagination;
use actix_web::{HttpResponse, Scope, web};
use sqlx::{PgPool, QueryBuilder};

// ── GET /celebrations ─────────────────────────────────────────────────────────

async fn list_celebrations(
    pool: web::Data<PgPool>,
    query: web::Query<CelebrationQuery>,
) -> Result<HttpResponse, ApiError> {
    let p = Pagination::new(query.page, query.per_page);

    let mut qb = QueryBuilder::new(
        "SELECT id, feast_id, calendar_id, rank_id, color_id, \
         is_optional, notes, valid_from, valid_to FROM celebrations WHERE TRUE",
    );
    if let Some(cal_id) = query.calendar_id {
        qb.push(" AND calendar_id = ").push_bind(cal_id);
    }
    if let Some(feast_id) = query.feast_id {
        qb.push(" AND feast_id = ").push_bind(feast_id);
    }
    qb.push(" ORDER BY id ASC LIMIT ")
        .push_bind(p.per_page)
        .push(" OFFSET ")
        .push_bind(p.offset);

    let celebrations = qb
        .build_query_as::<Celebration>()
        .fetch_all(pool.get_ref())
        .await?;

    Ok(HttpResponse::Ok().json(serde_json::json!({
        "page": p.page,
        "per_page": p.per_page,
        "data": celebrations
    })))
}

// ── GET /celebrations/{id} ────────────────────────────────────────────────────

async fn get_celebration(
    pool: web::Data<PgPool>,
    path: web::Path<i32>,
) -> Result<HttpResponse, ApiError> {
    let celebration_id = path.into_inner();

    let celebration = sqlx::query_as::<_, Celebration>(
        "SELECT id, feast_id, calendar_id, rank_id, color_id, \
         is_optional, notes, valid_from, valid_to \
         FROM celebrations WHERE id = $1",
    )
    .bind(celebration_id)
    .fetch_optional(pool.get_ref())
    .await?
    .ok_or(ApiError::NotFound)?;

    // Run enrichment queries concurrently.
    let color_future = async {
        match celebration.color_id {
            Some(cid) => {
                sqlx::query_scalar::<_, String>("SELECT code FROM liturgical_colors WHERE id = $1")
                    .bind(cid)
                    .fetch_optional(pool.get_ref())
                    .await
            }
            None => Ok(None),
        }
    };

    let (feast_name, calendar_name, rank_label, color_code, saints) = tokio::try_join!(
        sqlx::query_scalar::<_, String>("SELECT default_name FROM feasts WHERE id = $1")
            .bind(celebration.feast_id)
            .fetch_optional(pool.get_ref()),
        sqlx::query_scalar::<_, String>("SELECT name FROM calendars WHERE id = $1")
            .bind(celebration.calendar_id)
            .fetch_optional(pool.get_ref()),
        sqlx::query_scalar::<_, String>("SELECT label_fr FROM liturgical_ranks WHERE id = $1")
            .bind(celebration.rank_id)
            .fetch_optional(pool.get_ref()),
        color_future,
        sqlx::query_as::<_, CelebrationSaint>(
            "SELECT celebration_id, saint_id, role \
             FROM celebration_saints WHERE celebration_id = $1",
        )
        .bind(celebration_id)
        .fetch_all(pool.get_ref()),
    )?;

    let detail = CelebrationDetail {
        celebration,
        feast_name: feast_name.unwrap_or_default(),
        calendar_name: calendar_name.unwrap_or_default(),
        rank_label: rank_label.unwrap_or_default(),
        color_code,
        saints,
    };

    Ok(HttpResponse::Ok().json(detail))
}

// ── Routes ────────────────────────────────────────────────────────────────────

pub fn routes() -> Scope {
    web::scope("/celebrations")
        .route("", web::get().to(list_celebrations))
        .route("/{id}", web::get().to(get_celebration))
}
