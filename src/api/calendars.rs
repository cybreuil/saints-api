use crate::errors::ApiError;
use crate::middleware::auth::require_auth;
use crate::models::calendar::{Calendar, CalendarQuery, CreateCalendar, LiturgicalRank, UpdateCalendar};
use crate::models::celebration::Celebration;
use crate::pagination::Pagination;
use actix_web::{HttpRequest, HttpResponse, Scope, web};
use sqlx::{PgPool, QueryBuilder};

// ── GET /calendars ────────────────────────────────────────────────────────────

async fn list_calendars(
    pool: web::Data<PgPool>,
    query: web::Query<CalendarQuery>,
) -> Result<HttpResponse, ApiError> {
    let p = Pagination::new(query.page, query.per_page);

    let mut qb = QueryBuilder::new(
        "SELECT id, code, name, description, parent_id, date_system, \
         easter_computation, is_active, created_at FROM calendars",
    );
    if let Some(active) = query.is_active {
        qb.push(" WHERE is_active = ").push_bind(active);
    }
    qb.push(" ORDER BY name ASC LIMIT ")
        .push_bind(p.per_page)
        .push(" OFFSET ")
        .push_bind(p.offset);

    let calendars = qb
        .build_query_as::<Calendar>()
        .fetch_all(pool.get_ref())
        .await?;

    Ok(HttpResponse::Ok().json(serde_json::json!({
        "page": p.page,
        "per_page": p.per_page,
        "data": calendars
    })))
}

// ── GET /calendars/{id} ───────────────────────────────────────────────────────

async fn get_calendar(
    pool: web::Data<PgPool>,
    path: web::Path<i32>,
) -> Result<HttpResponse, ApiError> {
    let calendar_id = path.into_inner();

    let calendar = sqlx::query_as::<_, Calendar>(
        "SELECT id, code, name, description, parent_id, date_system, \
         easter_computation, is_active, created_at \
         FROM calendars WHERE id = $1",
    )
    .bind(calendar_id)
    .fetch_optional(pool.get_ref())
    .await?
    .ok_or(ApiError::NotFound)?;

    let ranks = sqlx::query_as::<_, LiturgicalRank>(
        "SELECT id, calendar_id, code, label_fr, precedence \
         FROM liturgical_ranks WHERE calendar_id = $1 ORDER BY precedence ASC",
    )
    .bind(calendar_id)
    .fetch_all(pool.get_ref())
    .await?;

    Ok(HttpResponse::Ok().json(serde_json::json!({
        "calendar": calendar,
        "liturgical_ranks": ranks
    })))
}

// ── GET /calendars/{id}/celebrations ─────────────────────────────────────────

async fn get_calendar_celebrations(
    pool: web::Data<PgPool>,
    path: web::Path<i32>,
    query: web::Query<CalendarQuery>,
) -> Result<HttpResponse, ApiError> {
    let calendar_id = path.into_inner();

    let exists: bool = sqlx::query_scalar("SELECT EXISTS(SELECT 1 FROM calendars WHERE id = $1)")
        .bind(calendar_id)
        .fetch_one(pool.get_ref())
        .await?;

    if !exists {
        return Err(ApiError::NotFound);
    }

    let p = Pagination::new(query.page, query.per_page);

    let celebrations = sqlx::query_as::<_, Celebration>(
        "SELECT id, feast_id, calendar_id, rank_id, color_id, \
         is_optional, notes, valid_from, valid_to \
         FROM celebrations WHERE calendar_id = $1 \
         ORDER BY id ASC LIMIT $2 OFFSET $3",
    )
    .bind(calendar_id)
    .bind(p.per_page)
    .bind(p.offset)
    .fetch_all(pool.get_ref())
    .await?;

    Ok(HttpResponse::Ok().json(serde_json::json!({
        "calendar_id": calendar_id,
        "page": p.page,
        "per_page": p.per_page,
        "data": celebrations
    })))
}

// ── POST /calendars ───────────────────────────────────────────────────────────

async fn create_calendar(
    req: HttpRequest,
    pool: web::Data<PgPool>,
    config: web::Data<crate::config::Config>,
    body: web::Json<CreateCalendar>,
) -> Result<HttpResponse, ApiError> {
    require_auth(&req, &config.jwt_secret)?;

    if body.code.trim().is_empty() || body.name.trim().is_empty() {
        return Err(ApiError::BadRequest("code and name are required".into()));
    }

    let date_system = body.date_system.as_deref().unwrap_or("gregorian");
    let easter_computation = body.easter_computation.as_deref().unwrap_or("western");

    let calendar = sqlx::query_as::<_, Calendar>(
        "INSERT INTO calendars (code, name, description, parent_id, date_system, easter_computation) \
         VALUES ($1, $2, $3, $4, $5, $6) \
         RETURNING id, code, name, description, parent_id, date_system, easter_computation, is_active, created_at",
    )
    .bind(body.code.trim())
    .bind(body.name.trim())
    .bind(body.description.as_deref())
    .bind(body.parent_id)
    .bind(date_system)
    .bind(easter_computation)
    .fetch_one(pool.get_ref())
    .await
    .map_err(|e| match e {
        sqlx::Error::Database(ref dbe) if dbe.constraint().is_some() => {
            ApiError::Conflict(format!("code '{}' already exists", body.code))
        }
        other => ApiError::Database(other),
    })?;

    Ok(HttpResponse::Created().json(calendar))
}

// ── PUT /calendars/{id} ───────────────────────────────────────────────────────

async fn update_calendar(
    req: HttpRequest,
    pool: web::Data<PgPool>,
    config: web::Data<crate::config::Config>,
    path: web::Path<i32>,
    body: web::Json<UpdateCalendar>,
) -> Result<HttpResponse, ApiError> {
    require_auth(&req, &config.jwt_secret)?;

    let calendar_id = path.into_inner();

    let calendar = sqlx::query_as::<_, Calendar>(
        "UPDATE calendars SET \
         name = COALESCE($1, name), \
         description = COALESCE($2, description), \
         is_active = COALESCE($3, is_active) \
         WHERE id = $4 \
         RETURNING id, code, name, description, parent_id, date_system, easter_computation, is_active, created_at",
    )
    .bind(body.name.as_deref())
    .bind(body.description.as_deref())
    .bind(body.is_active)
    .bind(calendar_id)
    .fetch_optional(pool.get_ref())
    .await?
    .ok_or(ApiError::NotFound)?;

    Ok(HttpResponse::Ok().json(calendar))
}

// ── DELETE /calendars/{id} ────────────────────────────────────────────────────

async fn delete_calendar(
    req: HttpRequest,
    pool: web::Data<PgPool>,
    config: web::Data<crate::config::Config>,
    path: web::Path<i32>,
) -> Result<HttpResponse, ApiError> {
    require_auth(&req, &config.jwt_secret)?;

    let calendar_id = path.into_inner();

    let result = sqlx::query("DELETE FROM calendars WHERE id = $1")
        .bind(calendar_id)
        .execute(pool.get_ref())
        .await?;

    if result.rows_affected() == 0 {
        return Err(ApiError::NotFound);
    }

    Ok(HttpResponse::NoContent().finish())
}

// ── Routes ────────────────────────────────────────────────────────────────────

pub fn routes() -> Scope {
    web::scope("/calendars")
        .route("", web::get().to(list_calendars))
        .route("", web::post().to(create_calendar))
        .route("/{id}", web::get().to(get_calendar))
        .route("/{id}", web::put().to(update_calendar))
        .route("/{id}", web::delete().to(delete_calendar))
        .route("/{id}/celebrations", web::get().to(get_calendar_celebrations))
}
