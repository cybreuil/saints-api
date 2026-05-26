use sqlx::PgPool;

use super::dto;

use crate::{core::error::ApiError, modules::saints::dto::SaintListItem};

pub async fn list_saints(
    pool: &PgPool,
    limit: i32,
    offset: i32,
) -> Result<Vec<dto::SaintListItem>, ApiError> {
    let rows = sqlx::query_as::<_, SaintListItem>(
        "SELECT id, slug, default_name, birth_year, death_year
         FROM saints
         ORDER BY default_name ASC
         LIMIT $1 OFFSET $2",
    )
    .bind(limit)
    .bind(offset)
    .fetch_all(pool)
    .await?;

    Ok(rows)
}

pub async fn list_all_saints(pool: &PgPool) -> Result<Vec<SaintListItem>, ApiError> {
    let rows = sqlx::query_as::<_, SaintListItem>(
        "SELECT id, slug, default_name, birth_year, death_year
         FROM saints ORDER BY default_name ASC",
    )
    .fetch_all(pool)
    .await?;

    Ok(rows)
}

pub async fn get_saint_by_slug(
    pool: &PgPool,
    slug: String,
) -> Result<dto::SaintListItem, ApiError> {
    println!("slug = {}", slug);
    let row = sqlx::query_as::<_, SaintListItem>(
        "SELECT id, slug, default_name, birth_year, death_year
		 FROM saints WHERE slug = $1",
    )
    .bind(slug)
    .fetch_one(pool)
    .await?;

    Ok(row)
}

pub async fn count_saints(pool: &PgPool) -> Result<i32, ApiError> {
    let row = sqlx::query!("SELECT COUNT(*) as count FROM saints")
        .fetch_one(pool)
        .await?;

    Ok(row.count.unwrap_or(0) as i32)
}
