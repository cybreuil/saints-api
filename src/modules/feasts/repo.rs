use sqlx::PgPool;

use super::dto;

use crate::core::error::ApiError;

pub async fn list_feasts_for_calendar_with_dates(
    pool: &PgPool,
    calendar_id: i32,
) -> Result<Vec<dto::FeastListItem>, ApiError> {
    let rows = sqlx::query_as::<_, dto::FeastListItem>(
        r#"
        SELECT
            f.slug,
            f.default_name,
            f.feast_type,
            fd.date_kind,
            fd.month,
            fd.day
        FROM feasts AS f
        LEFT JOIN feast_dates AS fd
            ON fd.feast_id = f.id
            AND fd.calendar_id = $1
        ORDER BY f.slug ASC
        "#,
    )
    .bind(calendar_id)
    .fetch_all(pool)
    .await?;

    Ok(rows)
}

pub async fn feast_the_day(
    pool: &PgPool,
    date: Option<&str>,
) -> Result<Option<dto::FeastListItem>, ApiError> {
    let row = sqlx::query_as::<_, dto::FeastListItem>(
        r#"
		SELECT
			f.slug,
			f.default_name,
			f.feast_type,
			fd.date_kind,
			fd.month,
			fd.day
		FROM feasts AS f
		JOIN feast_dates AS fd
			ON fd.feast_id = f.id
		WHERE (fd.month || '-' || fd.day) = $1
		LIMIT 1
		"#,
    )
    .bind(date.unwrap_or(""))
    .fetch_optional(pool)
    .await?;

    Ok(row)
}
