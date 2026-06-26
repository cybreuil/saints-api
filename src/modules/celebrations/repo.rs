use sqlx::PgPool;

use super::dto::Celebration;
use crate::core::error::ApiError;

pub async fn get_celebrations(
    pool: &PgPool,
    limit: i32,
    offset: i32,
    calendar_code: &str,
    language_code: &str,
) -> Result<Vec<Celebration>, ApiError> {
    let rows = sqlx::query_as::<_, Celebration>(
        r#"
		SELECT c.id,
			   c.is_optional,
			   c.rank_id,
			   c.feast_id,
			   c.date_kind,
			   c.month,
			   c.day,
			   c.movable_base,
			   c.movable_offset_days,
			   c.notes,
			   c.observance_type,
			   f.default_name,
			   f.feast_type,
			   ft.name AS feast_name,
			   ft.description AS feast_description,
			   lct.label AS liturgical_color_name,
			   lc.hex_color AS liturgical_color_hex,
			   lr.code AS rank_code,
			   lr.precedence AS rank_precedence,
			   lrt.label AS rank_label
		FROM celebrations c
		LEFT JOIN feasts f
			ON c.feast_id = f.id
		LEFT JOIN feast_translations ft
			ON f.id = ft.feast_id
		 	AND ft.locale_code = $3
		LEFT JOIN liturgical_colors lc
			ON c.color_id = lc.id
		LEFT JOIN liturgical_color_translations lct
			ON lc.id = lct.color_id
		 	AND lct.locale_code = $3
		LEFT JOIN liturgical_ranks lr
			ON c.rank_id = lr.id
		LEFT JOIN liturgical_rank_translations lrt
			ON lr.id = lrt.rank_id
		 	AND lrt.locale_code = $3
		LEFT JOIN calendars cal
			ON c.calendar_id = cal.id
			AND cal.code = $4
		ORDER BY c.id ASC
		LIMIT $1 OFFSET $2
		"#,
    )
    .bind(limit)
    .bind(offset)
    .bind(language_code)
    .bind(calendar_code)
    .fetch_all(pool)
    .await?;

    Ok(rows)
}

pub async fn celebration_of_today(
    pool: &PgPool,
    date: chrono::DateTime<chrono::Utc>,
) -> Result<Celebration, ApiError> {
    let rows = sqlx::query_as::<_, Celebration>(
        "SELECT c.id, c.color_id, c.is_optional, fd.month, fd.day
        FROM celebrations c
        LEFT JOIN
        feast_dates fd ON c.feast_id = fd.feast_id
        WHERE fd.date = $1",
    )
    .bind(date)
    .fetch_one(pool)
    .await?;

    Ok(rows)
}

pub async fn get_celebrations_by_date(
    pool: &PgPool,
    month: i16,
    day: i16,
    language_code: &str,
    calendar_code: &str,
) -> Result<Vec<Celebration>, ApiError> {
    let rows = sqlx::query_as::<_, Celebration>(
        r#"
        SELECT c.id,
               c.is_optional,
               c.rank_id,
               c.feast_id,
               c.date_kind,
               c.month,
               c.day,
               c.movable_base,
               c.movable_offset_days,
               c.notes,
               c.observance_type,
               f.default_name,
			   f.feast_type,
			   ft.name AS feast_name,
			   ft.description AS feast_description,
			   lct.label AS liturgical_color_name,
			   lc.hex_color AS liturgical_color_hex,
			   lr.code AS rank_code,
			   lr.precedence AS rank_precedence,
			   lrt.label AS rank_label
        FROM celebrations c
        LEFT JOIN feasts f
        	ON c.feast_id = f.id
        LEFT JOIN feast_translations ft
			ON f.id = ft.feast_id
			AND ft.locale_code = $3
        LEFT JOIN liturgical_colors lc
        	ON c.color_id = lc.id
        LEFT JOIN liturgical_color_translations lct
        	ON lc.id = lct.color_id
         	AND lct.locale_code = $3
		LEFT JOIN liturgical_ranks lr
			ON c.rank_id = lr.id
		LEFT JOIN liturgical_rank_translations lrt
			ON lr.id = lrt.rank_id
		 	AND lrt.locale_code = $3
		INNER JOIN calendars cal
			ON c.calendar_id = cal.id
			AND cal.code = $4
		WHERE c.month = $1
			AND c.day = $2
        ORDER BY c.rank_id DESC, c.id ASC
        "#,
    )
    .bind(month)
    .bind(day)
    .bind(language_code)
    .bind(calendar_code)
    .fetch_all(pool)
    .await?;

    Ok(rows)
}

pub async fn count_celebrations(pool: &PgPool) -> Result<i64, ApiError> {
    let count = sqlx::query_scalar!(r#"SELECT COUNT(*) as "count!" FROM celebrations"#)
        .fetch_one(pool)
        .await?;

    Ok(count)
}
