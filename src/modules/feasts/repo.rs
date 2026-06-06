use sqlx::PgPool;

use super::dto;

use crate::core::error::ApiError;

pub async fn list_feasts_for_calendar_with_dates(
    pool: &PgPool,
    calendar_id: Option<i32>,
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
            AND ($1::int IS NULL OR fd.calendar_id = $1)
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
    month: u8,
    day: u8,
) -> Result<Option<dto::FeastDetail>, ApiError> {
    // Temp row type to receive each joined row

    let rows = sqlx::query_as::<_, FeastRow>(
        r#"
        SELECT
            f.slug,
            f.default_name,
            f.feast_type,
            fd.date_kind,
            fd.month,
            fd.day,
            s.slug AS saint_slug,
            s.default_name AS saint_default_name
        FROM feasts f
        INNER JOIN feast_dates fd
            ON fd.feast_id = f.id
        LEFT JOIN feast_saints fs
            ON fs.feast_id = f.id
        LEFT JOIN saints s
            ON s.id = fs.saint_id
        WHERE fd.month = $1
          AND fd.day = $2
        ORDER BY f.slug, fs.id
        "#,
    )
    .bind(month as i32)
    .bind(day as i32)
    .fetch_all(pool)
    .await?;

    if rows.is_empty() {
        return Ok(None);
    }

    // Group rows by feast (slug) and build FeastDetail.
    // Here we only expect one feast for the given month/day in this API,
    // so we'll take the first group's data.
    use std::collections::HashMap;
    let mut map: HashMap<String, dto::FeastDetail> = HashMap::new();

    for r in rows {
        let entry = map
            .entry(r.slug.clone())
            .or_insert_with(|| dto::FeastDetail {
                slug: r.slug.clone(),
                default_name: r.default_name.clone(),
                feast_type: r.feast_type.clone(),
                date_kind: r.date_kind.clone(),
                month: r.month,
                day: r.day,
                saints: Vec::new(),
            });

        if let (Some(slug), Some(name)) = (r.saint_slug, r.saint_default_name) {
            // avoid duplicates if necessary (optional)
            if !entry.saints.iter().any(|st| st.slug == slug) {
                entry.saints.push(dto::FeastSaint {
                    slug,
                    default_name: name,
                });
            }
        }
    }

    // If you only want one feast (first), pick it:
    let feast = map.into_iter().map(|(_, v)| v).next();

    Ok(feast)
}
