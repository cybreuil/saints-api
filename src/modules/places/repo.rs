use sqlx::PgPool;

use super::dto::PlaceListItem;

use crate::core::error::ApiError;

pub async fn list_places(
    pool: &PgPool,
    limit: i32,
    offset: i32,
    language_code: &str,
) -> Result<Vec<PlaceListItem>, ApiError> {
    let rows = sqlx::query_as::<_, PlaceListItem>(
        r#"
    SELECT
      	p.id,
    	p.code,
     	p.country_code,
      	pt.name,
      	p.latitude,
       	p.longitude
	FROM places p
	LEFT JOIN place_translations pt
		ON pt.place_id = p.id
		AND pt.locale_code = $1
	ORDER BY pt.name ASC
	LIMIT $2
	OFFSET $3
	"#,
    )
    .bind(language_code)
    .bind(limit)
    .bind(offset)
    .fetch_all(pool)
    .await?;

    Ok(rows)
}

pub async fn count_places(pool: &PgPool) -> Result<i64, ApiError> {
    let count = sqlx::query_scalar!(r#"SELECT COUNT(*) as "count!" FROM places"#)
        .fetch_one(pool)
        .await?;

    Ok(count)
}
