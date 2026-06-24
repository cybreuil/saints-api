use sqlx::PgPool;

use super::dto::Calendar;
use crate::core::error::ApiError;

pub async fn get_calendars(
    pool: &PgPool,
    code: Option<&str>,
    parent_code: Option<&str>,
    language_code: &str,
) -> Result<Vec<Calendar>, ApiError> {
    let rows = sqlx::query_as::<_, Calendar>(
        r#"
		SELECT
			c.code,
			c.date_system,
			c.easter_computation,
			c.is_active,
			c.created_at,
			ct.name,
			ct.description,
			cp.code
		FROM calendars c
		LEFT JOIN calendar_translations ct ON c.id = ct.calendar_id AND ct.locale_code = $3
		LEFT JOIN calendars cp ON c.parent_id = cp.id
		WHERE ($1 IS NULL OR c.code = $1)
		AND ($2 IS NULL OR cp.code = $2)
	"#,
    )
    .bind(code)
    .bind(parent_code)
    .bind(language_code)
    .fetch_all(pool)
    .await?;

    Ok(rows)
}
