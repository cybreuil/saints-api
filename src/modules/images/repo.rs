use crate::core::error::ApiError;
use sqlx::PgPool;

use super::dto;

pub async fn list_images(
    pool: &PgPool,
    page: i32,
    per_page: i32,
    language_code: &str,
    q: Option<&str>,
    sort: Option<&str>,
) -> Result<Vec<dto::SaintImageDetailed>, ApiError> {
    let rows = sqlx::query_as!(
        dto::SaintImageDetailed,
        r#"
        SELECT
            i.id,
            i.image_url,
            i.title,
            i.creator,
            i.image_type,
            i.alt_text,
            i.caption,
            i.date_label,
            i.repository,
            i.credit,
            i.license,
            i.source_url,
            s.id AS saint_id,
            s.slug AS saint_slug,
            st.name AS saint_name
        FROM images i
        JOIN saint_images si
            ON si.image_id = i.id
        JOIN saints s
            ON s.id = si.saint_id
        LEFT JOIN saint_translations st
            ON st.saint_id = s.id
            AND st.locale_code = $3
        WHERE
            (
                $4::text IS NULL
                OR i.title ILIKE '%' || $4 || '%'
                OR i.creator ILIKE '%' || $4 || '%'
                OR s.default_name ILIKE '%' || $4 || '%'
                OR st.name ILIKE '%' || $4 || '%'
            )
        ORDER BY
            CASE
                WHEN $5 = 'asc' THEN i.id
            END ASC,
            CASE
                WHEN $5 = 'desc' THEN i.id
            END DESC
        LIMIT $2
        OFFSET (($1 - 1) * $2)
        "#,
        page,
        per_page,
        language_code,
        q,
        sort.unwrap_or("asc"),
    )
    .fetch_all(pool)
    .await?;

    Ok(rows)
}

pub async fn count_images(
    pool: &PgPool,
    language_code: &str,
    q: Option<&str>,
) -> Result<i64, ApiError> {
    let row = sqlx::query!(
        r#"
		SELECT COUNT(*) as count
		FROM images i
		JOIN saint_images si
			ON si.image_id = i.id
		JOIN saints s
			ON s.id = si.saint_id
		LEFT JOIN saint_translations st
			ON st.saint_id = s.id
			AND st.locale_code = $2
		WHERE
			(
				$1::text IS NULL
				OR i.title ILIKE '%' || $1 || '%'
				OR i.creator ILIKE '%' || $1 || '%'
				OR s.default_name ILIKE '%' || $1 || '%'
				OR st.name ILIKE '%' || $1 || '%'
			)
		"#,
        q,
        language_code,
    )
    .fetch_one(pool)
    .await?;

    Ok(row.count.unwrap_or(0))
}

pub async fn list_all_images(
    pool: &PgPool,
    language_code: &str,
) -> Result<Vec<dto::SaintImageDetailed>, ApiError> {
    let rows = sqlx::query_as!(
        dto::SaintImageDetailed,
        r#"
		SELECT
			i.id,
			i.image_url,
			i.title,
			i.creator,
			i.image_type,
			i.alt_text,
			i.caption,
			i.date_label,
			i.repository,
			i.credit,
			i.license,
			i.source_url,
			s.id AS saint_id,
			s.slug AS saint_slug,
			st.name AS saint_name
		FROM images i
		JOIN saint_images si
			ON si.image_id = i.id
		JOIN saints s
			ON s.id = si.saint_id
		LEFT JOIN saint_translations st
			ON st.saint_id = s.id
			AND st.locale_code = $1
		"#,
        language_code
    )
    .fetch_all(pool)
    .await?;

    Ok(rows)
}
