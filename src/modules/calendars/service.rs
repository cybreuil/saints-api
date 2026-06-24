use sqlx::PgPool;

use super::dto::Calendar;
use super::repo;
use crate::core::error::ApiError;
use crate::core::validation;

pub async fn get_calendars(
    pool: &PgPool,
    parent_code: Option<&str>,
    code: Option<&str>,
    language_code: Option<&str>,
) -> Result<Vec<Calendar>, ApiError> {
    let lang = validation::resolve_locale(language_code)?;

    let calendars = repo::get_calendars(pool, parent_code, code, lang).await?;

    Ok(calendars)
}
