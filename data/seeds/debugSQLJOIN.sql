-- Test 1: vérifier que saint Mary et l'image existent
SELECT id, slug FROM saints WHERE slug = 'saint-mary';
SELECT id, image_url FROM images WHERE image_url = '/saints/saint-mary_tiepolo.jpg';

-- Test 2: vérifier le JOIN direct (saints + images)
SELECT s.id AS saint_id, i.id AS image_id
FROM saints s
JOIN images i ON i.image_url = '/saints/saint-mary_tiepolo.jpg'
WHERE s.slug = 'saint-mary';

-- Test 3: simuler une entrée du seedRomanSaintImages
WITH x(saint_slug, image_url) AS (
  VALUES
    ('saint-mary', '/saints/saint-mary_tiepolo.jpg')
)
SELECT x.saint_slug, x.image_url, s.id AS saint_id, i.id AS image_id
FROM x
LEFT JOIN saints s ON s.slug = x.saint_slug
LEFT JOIN images i ON i.image_url = x.image_url;
