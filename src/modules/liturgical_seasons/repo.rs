use sqlx::PgPool;

use crate::core::{error::ApiError, liturgical_seasons::LiturgicalSeasonRule};

pub async fn get_liturgical_season_rules(
    pool: &PgPool,
    calendar_code: &str,
    language_code: &str,
) -> Result<Vec<LiturgicalSeasonRule>, ApiError> {
    let rows = sqlx::query_as::<_, LiturgicalSeasonRule>(
        r#"
        SELECT
            lsr.season_code,
            lsr.rule_kind,
            lsr.month,
            lsr.day,
            lsr.movable_base,
            lsr.movable_offset_days,
            lsr.is_start,
            lsr.inclusive,

            lst.label,

            lc.code AS color_code,
            lct.label AS color_label,
            lc.hex_color

        FROM liturgical_season_rules lsr

        INNER JOIN calendars cal
            ON cal.id = lsr.calendar_id
            AND cal.code = $1

        INNER JOIN liturgical_seasons ls
            ON ls.code = lsr.season_code

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

        ORDER BY lsr.season_code, lsr.is_start DESC
        "#,
    )
    .bind(calendar_code)
    .bind(language_code)
    .fetch_all(pool)
    .await?;

    Ok(rows)
}
