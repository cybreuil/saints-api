use crate::core::error::ApiError;

const DEFAULT_LOCALE: &str = "en";
const MAX_SLUG_LEN: usize = 200;

// Utility fonctions
// Resolve the locale from the language code, validating it as a primary language code
pub fn resolve_locale(language_code: Option<&str>) -> Result<&str, ApiError> {
    let code = match language_code {
        None => return Ok("en"), // absent -> défaut
        Some(c) if c.is_empty() => return Ok("en"),
        Some(c) => c,
    };
    let primary = code.split('-').next().unwrap_or("");
    if primary.len() == 2 && primary.chars().all(|c| c.is_ascii_alphabetic()) {
        Ok(code)
    } else {
        Err(ApiError::BadRequest("Invalid language code".to_string()))
    }
}

/// Validates a URL slug (kebab-case: lowercase letters, digits, hyphens).
/// Rejects: empty, too long, bad charset, leading/trailing hyphen, and
/// purely numeric slugs (a bare number is an id probe, never a real slug).
pub fn resolve_slug(slug: &str) -> Result<&str, ApiError> {
    let valid_len = (1..=MAX_SLUG_LEN).contains(&slug.len());
    let valid_charset = slug
        .chars()
        .all(|c| c.is_ascii_lowercase() || c.is_ascii_digit() || c == '-');
    let valid_edges = !slug.starts_with('-') && !slug.ends_with('-');
    let has_letter = slug.chars().any(|c| c.is_ascii_alphabetic());

    if valid_len && valid_charset && valid_edges && has_letter {
        Ok(slug)
    } else {
        Err(ApiError::BadRequest("Invalid slug".to_string()))
    }
}
