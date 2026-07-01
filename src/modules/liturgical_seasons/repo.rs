use sqlx::PgPool;

use crate::core::{error::ApiError, liturgical_seasons::LiturgicalSeasonIntervalRow};

pub async fn get_liturgical_season_intervals(
    pool: &PgPool,
    calendar_code: &str,
    language_code: &str,
) -> Result<Vec<LiturgicalSeasonIntervalRow>, ApiError> {
    let rows = sqlx::query_as::<_, LiturgicalSeasonIntervalRow>(
        r#"
        SELECT
            lsi.season_code,
            lsi.segment_index,

            lsi.start_kind,
            lsi.start_month,
            lsi.start_day,
            lsi.start_movable_base,
            lsi.start_offset_days,

            lsi.end_kind,
            lsi.end_month,
            lsi.end_day,
            lsi.end_movable_base,
            lsi.end_offset_days,

            lsi.inclusive,
            lsi.notes,

            ls.default_name,

            lst.label,

            lc.code AS color_code,
            lct.label AS color_label,
            lc.hex_color

        FROM liturgical_season_intervals lsi

        INNER JOIN calendars cal
            ON cal.id = lsi.calendar_id
            AND cal.code = $1

        INNER JOIN liturgical_seasons ls
            ON ls.code = lsi.season_code

        LEFT JOIN liturgical_season_translations lst
            ON lst.season_code = ls.code
            AND lst.locale_code = $2

        LEFT JOIN liturgical_season_colors lsc
            ON lsc.season_code = ls.code
            AND lsc.calendar_id = cal.id

        LEFT JOIN liturgical_colors lc
            ON lc.id = lsc.color_id

        LEFT JOIN liturgical_color_translations lct
            ON lct.color_id = lc.id
            AND lct.locale_code = $2

        ORDER BY lsi.season_code, lsi.segment_index
        "#,
    )
    .bind(calendar_code)
    .bind(language_code)
    .fetch_all(pool)
    .await?;

    Ok(rows)
}

pub async fn count_liturgical_season_intervals(
    pool: &PgPool,
    calendar_code: &str,
) -> Result<i64, ApiError> {
    let count = sqlx::query_scalar!(
        r#"
        SELECT COUNT(*) as "count!"
        FROM liturgical_season_intervals lsi
        INNER JOIN calendars cal
            ON cal.id = lsi.calendar_id
            AND cal.code = $1
        "#,
        calendar_code
    )
    .fetch_one(pool)
    .await?;

    Ok(count)
}
