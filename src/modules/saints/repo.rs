use sqlx::PgPool;

use super::dto::{SaintDetail, SaintListItem, SaintListItemComplete};

use crate::core::error::ApiError;

pub async fn list_saints(
    pool: &PgPool,
    limit: i32,
    offset: i32,
) -> Result<Vec<SaintListItem>, ApiError> {
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

pub async fn list_saints_complete(
    pool: &PgPool,
    limit: i32,
    offset: i32,
    language_code: &str,
) -> Result<Vec<SaintListItemComplete>, ApiError> {
    let rows = sqlx::query_as::<_, SaintListItemComplete>(
        r#"
    SELECT
        s.id,
        s.slug,
        s.default_name,
        s.birth_year,
        s.death_year,
        s.century,
        st.name,
        img.image_url
    FROM saints s
    LEFT JOIN saint_translations st
        ON st.saint_id = s.id
        AND st.locale_code = $1
    LEFT JOIN LATERAL (
        SELECT i.image_url
        FROM saint_images si
        JOIN images i ON i.id = si.image_id
        WHERE si.saint_id = s.id
        ORDER BY si.is_primary DESC, si.sort_order ASC
        LIMIT 1
    ) img ON TRUE
    ORDER BY s.default_name ASC
    LIMIT $2 OFFSET $3
    "#,
    )
    .bind(language_code)
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
    slug: &str,
    language_code: &str,
) -> Result<SaintDetail, ApiError> {
    let row = sqlx::query_as::<_, SaintDetail>(
        r#"
    SELECT
    	s.id,
     	s.slug,
      	s.default_name,
       	s.birth_year,
        s.death_year,
        st.name,
        st.short_description,
        st.full_biography
    FROM saints as s
    LEFT JOIN saint_translations st
    	ON st.saint_id = s.id
     	AND st.locale_code = $1
    WHERE s.slug = $2
	"#,
    )
    .bind(language_code)
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
