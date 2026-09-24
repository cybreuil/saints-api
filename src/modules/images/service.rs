use super::dto;
use super::repo;
use crate::core::{
    error::ApiError,
    pagination::{Paginated, Pagination},
    validation,
};
use sqlx::PgPool;

pub async fn list_images(
    pool: &PgPool,
    page: i32,
    per_page: i32,
    language_code: Option<&str>,
    q: Option<&str>,
    sort: Option<&str>,
) -> Result<Paginated<dto::SaintImageDetailed>, ApiError> {
    let lang = validation::resolve_locale(language_code)?;

    let p = Pagination::new(Some(page), Some(per_page));
    let total = repo::count_images(pool, lang, q).await? as i32;

    if total == 0 {
        return Ok(Paginated::empty(&p));
    }
    if p.beyond_total(total) {
        return Err(ApiError::UnprocessableEntity(format!(
            "Page {} is out of range. Total pages: {}",
            p.page,
            p.total_pages(total)
        )));
    }
    let data = repo::list_images(pool, page, per_page, lang, q, sort).await?;

    Ok(Paginated::new(&p, total, data))
}

pub async fn list_all_images(
    pool: &PgPool,
    language_code: Option<&str>,
) -> Result<Vec<dto::SaintImageDetailed>, ApiError> {
    let lang = validation::resolve_locale(language_code)?;

    let rows = repo::list_all_images(pool, lang).await?;
    Ok(rows)
}
