BEGIN;

INSERT INTO saint_images (
    saint_id,
    image_id,
    sort_order,
    is_primary,
    subject_role
)
SELECT
    s.id,
    i.id,
    x.sort_order,
    x.is_primary,
    x.subject_role
FROM saints s
JOIN (
	VALUES

-- =========================
-- French Calendar – Saint Images
-- =========================

-- By feast date

-- Saint Genevieve (JAN 3)
('saint-genevieve', '/saints/fr/saint-genevieve.webp', 1, TRUE, 'subject'),


) AS x(
   saint_slug,
   image_url,
   sort_order,
   is_primary,
   subject_role
)
ON s.slug = x.saint_slug
JOIN images i
   ON i.image_url = x.image_url
ON CONFLICT (saint_id, image_id) DO NOTHING;

COMMIT;
