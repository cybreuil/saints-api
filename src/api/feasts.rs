use crate::errors::ApiError;
use crate::middleware::auth::require_auth;
use crate::models::feast::{CreateFeast, Feast, FeastDateSummary, FeastQuery, FeastTranslation, UpdateFeast};
use crate::pagination::Pagination;
use actix_web::{HttpRequest, HttpResponse, Scope, web};
use sqlx::{PgPool, QueryBuilder};

// ── GET /feasts ───────────────────────────────────────────────────────────────

async fn list_feasts(
    pool: web::Data<PgPool>,
    query: web::Query<FeastQuery>,
) -> Result<HttpResponse, ApiError> {
    let p = Pagination::new(query.page, query.per_page);

    let mut qb = QueryBuilder::new(
        "SELECT id, slug, default_name, feast_type, created_at FROM feasts",
    );
    if let Some(ref ft) = query.feast_type {
        qb.push(" WHERE feast_type = ").push_bind(ft.as_str());
    }
    qb.push(" ORDER BY default_name ASC LIMIT ")
        .push_bind(p.per_page)
        .push(" OFFSET ")
        .push_bind(p.offset);

    let feasts = qb
        .build_query_as::<Feast>()
        .fetch_all(pool.get_ref())
        .await?;

    Ok(HttpResponse::Ok().json(serde_json::json!({
        "page": p.page,
        "per_page": p.per_page,
        "data": feasts
    })))
}

// ── GET /feasts/{id} ─────────────────────────────────────────────────────────

async fn get_feast(
    pool: web::Data<PgPool>,
    path: web::Path<i32>,
    query: web::Query<FeastQuery>,
) -> Result<HttpResponse, ApiError> {
    let feast_id = path.into_inner();

    let feast = sqlx::query_as::<_, Feast>(
        "SELECT id, slug, default_name, feast_type, created_at \
         FROM feasts WHERE id = $1",
    )
    .bind(feast_id)
    .fetch_optional(pool.get_ref())
    .await?
    .ok_or(ApiError::NotFound)?;

    if let Some(locale) = &query.locale {
        let translation = sqlx::query_as::<_, FeastTranslation>(
            "SELECT feast_id, locale_code, name, description \
             FROM feast_translations WHERE feast_id = $1 AND locale_code = $2",
        )
        .bind(feast_id)
        .bind(locale)
        .fetch_optional(pool.get_ref())
        .await?;

        return Ok(HttpResponse::Ok().json(serde_json::json!({
            "feast": feast,
            "translation": translation
        })));
    }

    Ok(HttpResponse::Ok().json(feast))
}

// ── GET /feasts/slug/{slug} ───────────────────────────────────────────────────

async fn get_feast_by_slug(
    pool: web::Data<PgPool>,
    path: web::Path<String>,
) -> Result<HttpResponse, ApiError> {
    let slug = path.into_inner();

    let feast = sqlx::query_as::<_, Feast>(
        "SELECT id, slug, default_name, feast_type, created_at \
         FROM feasts WHERE slug = $1",
    )
    .bind(&slug)
    .fetch_optional(pool.get_ref())
    .await?
    .ok_or(ApiError::NotFound)?;

    Ok(HttpResponse::Ok().json(feast))
}

// ── GET /feasts/date/{month}/{day} ───────────────────────────────────────────

async fn get_feasts_by_date(
    pool: web::Data<PgPool>,
    path: web::Path<(i16, i16)>,
) -> Result<HttpResponse, ApiError> {
    let (month, day) = path.into_inner();

    if !(1..=12).contains(&month) {
        return Err(ApiError::BadRequest("month must be between 1 and 12".into()));
    }
    if !(1..=31).contains(&day) {
        return Err(ApiError::BadRequest("day must be between 1 and 31".into()));
    }

    let rows = sqlx::query_as::<_, FeastDateSummary>(
        "SELECT f.id AS feast_id, f.slug, f.default_name, f.feast_type, \
         fd.calendar_id, fd.date_kind \
         FROM feasts f \
         JOIN feast_dates fd ON fd.feast_id = f.id \
         WHERE fd.date_kind = 'fixed' AND fd.month = $1 AND fd.day = $2",
    )
    .bind(month)
    .bind(day)
    .fetch_all(pool.get_ref())
    .await?;

    Ok(HttpResponse::Ok().json(serde_json::json!({
        "month": month,
        "day": day,
        "data": rows
    })))
}

// ── POST /feasts ──────────────────────────────────────────────────────────────

async fn create_feast(
    req: HttpRequest,
    pool: web::Data<PgPool>,
    config: web::Data<crate::config::Config>,
    body: web::Json<CreateFeast>,
) -> Result<HttpResponse, ApiError> {
    require_auth(&req, &config.jwt_secret)?;

    if body.slug.trim().is_empty() || body.default_name.trim().is_empty() || body.feast_type.trim().is_empty() {
        return Err(ApiError::BadRequest("slug, default_name and feast_type are required".into()));
    }

    let feast = sqlx::query_as::<_, Feast>(
        "INSERT INTO feasts (slug, default_name, feast_type) \
         VALUES ($1, $2, $3) \
         RETURNING id, slug, default_name, feast_type, created_at",
    )
    .bind(body.slug.trim())
    .bind(body.default_name.trim())
    .bind(body.feast_type.trim())
    .fetch_one(pool.get_ref())
    .await
    .map_err(|e| match e {
        sqlx::Error::Database(ref dbe) if dbe.constraint().is_some() => {
            ApiError::Conflict(format!("slug '{}' already exists", body.slug))
        }
        other => ApiError::Database(other),
    })?;

    Ok(HttpResponse::Created().json(feast))
}

// ── PUT /feasts/{id} ─────────────────────────────────────────────────────────

async fn update_feast(
    req: HttpRequest,
    pool: web::Data<PgPool>,
    config: web::Data<crate::config::Config>,
    path: web::Path<i32>,
    body: web::Json<UpdateFeast>,
) -> Result<HttpResponse, ApiError> {
    require_auth(&req, &config.jwt_secret)?;

    let feast_id = path.into_inner();

    let feast = sqlx::query_as::<_, Feast>(
        "UPDATE feasts SET \
         default_name = COALESCE($1, default_name), \
         feast_type = COALESCE($2, feast_type) \
         WHERE id = $3 \
         RETURNING id, slug, default_name, feast_type, created_at",
    )
    .bind(body.default_name.as_deref())
    .bind(body.feast_type.as_deref())
    .bind(feast_id)
    .fetch_optional(pool.get_ref())
    .await?
    .ok_or(ApiError::NotFound)?;

    Ok(HttpResponse::Ok().json(feast))
}

// ── DELETE /feasts/{id} ───────────────────────────────────────────────────────

async fn delete_feast(
    req: HttpRequest,
    pool: web::Data<PgPool>,
    config: web::Data<crate::config::Config>,
    path: web::Path<i32>,
) -> Result<HttpResponse, ApiError> {
    require_auth(&req, &config.jwt_secret)?;

    let feast_id = path.into_inner();

    let result = sqlx::query("DELETE FROM feasts WHERE id = $1")
        .bind(feast_id)
        .execute(pool.get_ref())
        .await?;

    if result.rows_affected() == 0 {
        return Err(ApiError::NotFound);
    }

    Ok(HttpResponse::NoContent().finish())
}

// ── Routes ────────────────────────────────────────────────────────────────────

pub fn routes() -> Scope {
    web::scope("/feasts")
        .route("", web::get().to(list_feasts))
        .route("", web::post().to(create_feast))
        .route("/slug/{slug}", web::get().to(get_feast_by_slug))
        .route("/date/{month}/{day}", web::get().to(get_feasts_by_date))
        .route("/{id}", web::get().to(get_feast))
        .route("/{id}", web::put().to(update_feast))
        .route("/{id}", web::delete().to(delete_feast))
}
