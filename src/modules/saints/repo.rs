use sqlx::PgPool;

use super::dto::SaintListItem;
use crate::core::error::ApiError;
// use crate::pagination::Pagination;

// pub async fn list_saints(
//     pool: PgPool,
//     query: crate::models::saint::SaintQuery,
// ) -> Result<crate::modules::saints::dto::SaintListResponse, ApiError> {
//     let p = Pagination::new(query.page, query.per_page);

//     let saints = sqlx::query_as::<_, SaintListItem>(
//         "SELECT id, slug, default_name, birth_year, death_year
//          FROM saints
//          ORDER BY default_name ASC
//          LIMIT $1 OFFSET $2",
//     )
//     .bind(p.per_page)
//     .bind(p.offset)
//     .fetch_all(&pool)
//     .await?;

//     Ok(crate::modules::saints::dto::SaintListResponse {
//         page: p.page,
//         per_page: p.per_page,
//         data: saints,
//     })
// }

pub async fn list_all_saints(pool: &PgPool) -> Result<Vec<SaintListItem>, ApiError> {
    let saints = sqlx::query_as::<_, SaintListItem>(
        "SELECT id, slug, default_name, birth_year, death_year
		 FROM saints ORDER BY default_name ASC",
    )
    .fetch_all(pool)
    .await?;

    Ok(saints)
}
