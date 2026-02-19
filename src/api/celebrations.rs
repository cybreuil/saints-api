use crate::errors::ApiError;
use crate::models::celebration::{Celebration, CelebrationDetail, CelebrationQuery, CelebrationSaint};
use actix_web::{HttpResponse, Scope, web};
use sqlx::PgPool;

const DEFAULT_PAGE: i64 = 1;
const DEFAULT_PER_PAGE: i64 = 20;
const MAX_PER_PAGE: i64 = 100;

// ── GET /celebrations ─────────────────────────────────────────────────────────

async fn list_celebrations(
    pool: web::Data<PgPool>,
    query: web::Query<CelebrationQuery>,
) -> Result<HttpResponse, ApiError> {
    let page = query.page.unwrap_or(DEFAULT_PAGE).max(1);
    let per_page = query.per_page.unwrap_or(DEFAULT_PER_PAGE).max(1).min(MAX_PER_PAGE);
    let offset = (page - 1) * per_page;

    let celebrations = match (query.calendar_id, query.feast_id) {
        (Some(cal_id), Some(feast_id)) => {
            sqlx::query_as::<_, Celebration>(
                "SELECT id, feast_id, calendar_id, rank_id, color_id, \
                 is_optional, notes, valid_from, valid_to \
                 FROM celebrations WHERE calendar_id = $1 AND feast_id = $2 \
                 ORDER BY id ASC LIMIT $3 OFFSET $4",
            )
            .bind(cal_id)
            .bind(feast_id)
            .bind(per_page)
            .bind(offset)
            .fetch_all(pool.get_ref())
            .await?
        }
        (Some(cal_id), None) => {
            sqlx::query_as::<_, Celebration>(
                "SELECT id, feast_id, calendar_id, rank_id, color_id, \
                 is_optional, notes, valid_from, valid_to \
                 FROM celebrations WHERE calendar_id = $1 \
                 ORDER BY id ASC LIMIT $2 OFFSET $3",
            )
            .bind(cal_id)
            .bind(per_page)
            .bind(offset)
            .fetch_all(pool.get_ref())
            .await?
        }
        (None, Some(feast_id)) => {
            sqlx::query_as::<_, Celebration>(
                "SELECT id, feast_id, calendar_id, rank_id, color_id, \
                 is_optional, notes, valid_from, valid_to \
                 FROM celebrations WHERE feast_id = $1 \
                 ORDER BY id ASC LIMIT $2 OFFSET $3",
            )
            .bind(feast_id)
            .bind(per_page)
            .bind(offset)
            .fetch_all(pool.get_ref())
            .await?
        }
        (None, None) => {
            sqlx::query_as::<_, Celebration>(
                "SELECT id, feast_id, calendar_id, rank_id, color_id, \
                 is_optional, notes, valid_from, valid_to \
                 FROM celebrations ORDER BY id ASC LIMIT $1 OFFSET $2",
            )
            .bind(per_page)
            .bind(offset)
            .fetch_all(pool.get_ref())
            .await?
        }
    };

    Ok(HttpResponse::Ok().json(serde_json::json!({
        "page": page,
        "per_page": per_page,
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

    // Fetch enrichment data in parallel
    let feast_name: String = sqlx::query_scalar(
        "SELECT default_name FROM feasts WHERE id = $1",
    )
    .bind(celebration.feast_id)
    .fetch_optional(pool.get_ref())
    .await?
    .unwrap_or_default();

    let calendar_name: String = sqlx::query_scalar(
        "SELECT name FROM calendars WHERE id = $1",
    )
    .bind(celebration.calendar_id)
    .fetch_optional(pool.get_ref())
    .await?
    .unwrap_or_default();

    let rank_label: String = sqlx::query_scalar(
        "SELECT label_fr FROM liturgical_ranks WHERE id = $1",
    )
    .bind(celebration.rank_id)
    .fetch_optional(pool.get_ref())
    .await?
    .unwrap_or_default();

    let color_code: Option<String> = match celebration.color_id {
        Some(cid) => sqlx::query_scalar("SELECT code FROM liturgical_colors WHERE id = $1")
            .bind(cid)
            .fetch_optional(pool.get_ref())
            .await?,
        None => None,
    };

    let saints = sqlx::query_as::<_, CelebrationSaint>(
        "SELECT celebration_id, saint_id, role \
         FROM celebration_saints WHERE celebration_id = $1",
    )
    .bind(celebration_id)
    .fetch_all(pool.get_ref())
    .await?;

    let detail = CelebrationDetail {
        celebration,
        feast_name,
        calendar_name,
        rank_label,
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
