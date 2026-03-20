const DEFAULT_PAGE: i64 = 1;
const DEFAULT_PER_PAGE: i64 = 20;
const MAX_PER_PAGE: i64 = 100;

/// Parsed and clamped pagination parameters, ready for use in SQL queries.
#[derive(Debug, Clone, Copy)]
pub struct Pagination {
    pub page: i64,
    pub per_page: i64,
    pub offset: i64,
}

impl Pagination {
    pub fn new(page: Option<i64>, per_page: Option<i64>) -> Self {
        let page = page.unwrap_or(DEFAULT_PAGE).max(1);
        let per_page = per_page.unwrap_or(DEFAULT_PER_PAGE).max(1).min(MAX_PER_PAGE);
        let offset = (page - 1) * per_page;
        Self { page, per_page, offset }
    }
}
