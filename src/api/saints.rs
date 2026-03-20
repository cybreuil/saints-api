use crate::errors::ApiError;
use crate::middleware::auth::require_auth;
use crate::models::saint::{CreateSaint, Saint, SaintQuery, SaintTranslation, UpdateSaint};
use crate::pagination::Pagination;
use actix_web::{HttpRequest, HttpResponse, Scope, web};
use sqlx::PgPool;

// ── GET /saints ──────────────────────────────────────────────────────────────

async fn list_saints(
    pool: web::Data<PgPool>,
    query: web::Query<SaintQuery>,
) -> Result<HttpResponse, ApiError> {
    let p = Pagination::new(query.page, query.per_page);

    let saints = sqlx::query_as::<_, Saint>(
        "SELECT id, slug, default_name, birth_date, death_date, \
         short_description, image_url, created_at \
         FROM saints \
         ORDER BY default_name ASC \
         LIMIT $1 OFFSET $2",
    )
    .bind(p.per_page)
    .bind(p.offset)
    .fetch_all(pool.get_ref())
    .await?;

    Ok(HttpResponse::Ok().json(serde_json::json!({
        "page": p.page,
        "per_page": p.per_page,
        "data": saints
    })))
}

// ── GET /saints/{id} ─────────────────────────────────────────────────────────

async fn get_saint(
    pool: web::Data<PgPool>,
    path: web::Path<i32>,
    query: web::Query<SaintQuery>,
) -> Result<HttpResponse, ApiError> {
    let saint_id = path.into_inner();

    let saint = sqlx::query_as::<_, Saint>(
        "SELECT id, slug, default_name, birth_date, death_date, \
         short_description, image_url, created_at \
         FROM saints WHERE id = $1",
    )
    .bind(saint_id)
    .fetch_optional(pool.get_ref())
    .await?
    .ok_or(ApiError::NotFound)?;

    if let Some(locale) = &query.locale {
        let translation = sqlx::query_as::<_, SaintTranslation>(
            "SELECT saint_id, locale_code, name, short_description, full_biography \
             FROM saint_translations \
             WHERE saint_id = $1 AND locale_code = $2",
        )
        .bind(saint_id)
        .bind(locale)
        .fetch_optional(pool.get_ref())
        .await?;

        return Ok(HttpResponse::Ok().json(serde_json::json!({
            "saint": saint,
            "translation": translation
        })));
    }

    Ok(HttpResponse::Ok().json(saint))
}

// ── GET /saints/slug/{slug} ──────────────────────────────────────────────────

async fn get_saint_by_slug(
    pool: web::Data<PgPool>,
    path: web::Path<String>,
) -> Result<HttpResponse, ApiError> {
    let slug = path.into_inner();

    let saint = sqlx::query_as::<_, Saint>(
        "SELECT id, slug, default_name, birth_date, death_date, \
         short_description, image_url, created_at \
         FROM saints WHERE slug = $1",
    )
    .bind(&slug)
    .fetch_optional(pool.get_ref())
    .await?
    .ok_or(ApiError::NotFound)?;

    Ok(HttpResponse::Ok().json(saint))
}

// ── POST /saints ─────────────────────────────────────────────────────────────

async fn create_saint(
    req: HttpRequest,
    pool: web::Data<PgPool>,
    config: web::Data<crate::config::Config>,
    body: web::Json<CreateSaint>,
) -> Result<HttpResponse, ApiError> {
    require_auth(&req, &config.jwt_secret)?;

    if body.slug.trim().is_empty() || body.default_name.trim().is_empty() {
        return Err(ApiError::BadRequest("slug and default_name are required".into()));
    }

    let saint = sqlx::query_as::<_, Saint>(
        "INSERT INTO saints (slug, default_name, birth_date, death_date, short_description, image_url) \
         VALUES ($1, $2, $3, $4, $5, $6) \
         RETURNING id, slug, default_name, birth_date, death_date, short_description, image_url, created_at",
    )
    .bind(body.slug.trim())
    .bind(body.default_name.trim())
    .bind(body.birth_date)
    .bind(body.death_date)
    .bind(body.short_description.as_deref())
    .bind(body.image_url.as_deref())
    .fetch_one(pool.get_ref())
    .await
    .map_err(|e| match e {
        sqlx::Error::Database(ref dbe) if dbe.constraint().is_some() => {
            ApiError::Conflict(format!("slug '{}' already exists", body.slug))
        }
        other => ApiError::Database(other),
    })?;

    Ok(HttpResponse::Created().json(saint))
}

// ── PUT /saints/{id} ─────────────────────────────────────────────────────────

async fn update_saint(
    req: HttpRequest,
    pool: web::Data<PgPool>,
    config: web::Data<crate::config::Config>,
    path: web::Path<i32>,
    body: web::Json<UpdateSaint>,
) -> Result<HttpResponse, ApiError> {
    require_auth(&req, &config.jwt_secret)?;

    let saint_id = path.into_inner();

    let saint = sqlx::query_as::<_, Saint>(
        "UPDATE saints SET \
         default_name = COALESCE($1, default_name), \
         birth_date = COALESCE($2, birth_date), \
         death_date = COALESCE($3, death_date), \
         short_description = COALESCE($4, short_description), \
         image_url = COALESCE($5, image_url) \
         WHERE id = $6 \
         RETURNING id, slug, default_name, birth_date, death_date, short_description, image_url, created_at",
    )
    .bind(body.default_name.as_deref())
    .bind(body.birth_date)
    .bind(body.death_date)
    .bind(body.short_description.as_deref())
    .bind(body.image_url.as_deref())
    .bind(saint_id)
    .fetch_optional(pool.get_ref())
    .await?
    .ok_or(ApiError::NotFound)?;

    Ok(HttpResponse::Ok().json(saint))
}

// ── DELETE /saints/{id} ──────────────────────────────────────────────────────

async fn delete_saint(
    req: HttpRequest,
    pool: web::Data<PgPool>,
    config: web::Data<crate::config::Config>,
    path: web::Path<i32>,
) -> Result<HttpResponse, ApiError> {
    require_auth(&req, &config.jwt_secret)?;

    let saint_id = path.into_inner();

    let result = sqlx::query("DELETE FROM saints WHERE id = $1")
        .bind(saint_id)
        .execute(pool.get_ref())
        .await?;

    if result.rows_affected() == 0 {
        return Err(ApiError::NotFound);
    }

    Ok(HttpResponse::NoContent().finish())
}

// ── Routes ───────────────────────────────────────────────────────────────────

pub fn routes() -> Scope {
    web::scope("/saints")
        .route("", web::get().to(list_saints))
        .route("", web::post().to(create_saint))
        .route("/slug/{slug}", web::get().to(get_saint_by_slug))
        .route("/{id}", web::get().to(get_saint))
        .route("/{id}", web::put().to(update_saint))
        .route("/{id}", web::delete().to(delete_saint))
}

