use crate::core::error::ApiError;
use crate::core::pagination::{Paginated, Pagination};
use crate::core::validation;
use crate::modules::places::dto::PlaceListItem;
use crate::modules::places::repo;
use sqlx::PgPool;

pub async fn list_places(
    pool: &PgPool,
    page: i32,
    per_page: i32,
    language_code: Option<&str>,
) -> Result<Paginated<PlaceListItem>, ApiError> {
    // If lang is invalid, we don't go for db
    let lang = validation::resolve_locale(language_code)?;

    let p = Pagination::new(Some(page), Some(per_page));
    let total = repo::count_places(pool).await? as i32;

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

    let data = repo::list_places(pool, p.per_page, p.offset, lang).await?;

    Ok(Paginated::new(&p, total, data))
}
