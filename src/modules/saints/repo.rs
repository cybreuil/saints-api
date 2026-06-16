use sqlx::PgPool;

use super::dto::{SaintDetail, SaintImage, SaintListItem, SaintListItemComplete, SaintPlace};

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
        s.birth_month,
        s.birth_day,
        s.birth_is_approximate,
        s.death_year,
        s.death_month,
        s.death_day,
        s.death_is_approximate,
        s.century,
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

pub async fn get_saint_images(pool: &PgPool, slug: &str) -> Result<Vec<SaintImage>, ApiError> {
    let rows = sqlx::query_as::<_, SaintImage>(
        r#"
    SELECT
        i.id,
        i.image_url,
        i.title,
        i.image_type,
        COALESCE(si.alt_text_override, i.alt_text) AS alt_text,
        COALESCE(si.caption_override, i.caption)   AS caption,
        i.creator,
        i.date_label,
        i.repository,
        i.credit,
        i.license,
        i.source_url,
        si.sort_order,
        si.is_primary
    FROM saint_images si
    JOIN images i ON i.id = si.image_id
    JOIN saints s ON s.id = si.saint_id
    WHERE s.slug = $1
    ORDER BY si.is_primary DESC, si.sort_order ASC
    "#,
    )
    .bind(slug)
    .fetch_all(pool)
    .await?;

    Ok(rows)
}

pub async fn get_saint_places(
    pool: &PgPool,
    slug: &str,
    language_code: &str,
) -> Result<Vec<SaintPlace>, ApiError> {
    let rows = sqlx::query_as::<_, SaintPlace>(
        r#"
    SELECT 'birth' AS role,
           p.code, pt.name, p.country_code, p.latitude, p.longitude
    FROM saints s
    JOIN places p ON p.id = s.place_of_birth_id
    LEFT JOIN place_translations pt ON pt.place_id = p.id AND pt.locale_code = $1
    WHERE s.slug = $2

    UNION ALL
    SELECT 'death' AS role,
           p.code, pt.name, p.country_code, p.latitude, p.longitude
    FROM saints s
    JOIN places p ON p.id = s.place_of_death_id
    LEFT JOIN place_translations pt ON pt.place_id = p.id AND pt.locale_code = $1
    WHERE s.slug = $2

    UNION ALL
    SELECT 'activity' AS role,
           p.code, pt.name, p.country_code, p.latitude, p.longitude
    FROM saints s
    JOIN places p ON p.id = s.place_of_activity_id
    LEFT JOIN place_translations pt ON pt.place_id = p.id AND pt.locale_code = $1
    WHERE s.slug = $2
    "#,
    )
    .bind(language_code)
    .bind(slug)
    .fetch_all(pool)
    .await?;
    Ok(rows)
}

pub async fn count_saints(pool: &PgPool) -> Result<i32, ApiError> {
    let row = sqlx::query!("SELECT COUNT(*) as count FROM saints")
        .fetch_one(pool)
        .await?;

    Ok(row.count.unwrap_or(0) as i32)
}
