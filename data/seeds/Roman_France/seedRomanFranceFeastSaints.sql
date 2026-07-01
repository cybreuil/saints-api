BEGIN;

-- =========================================================
-- Roman France Calendar - FEAST <-> SAINT links
-- =========================================================
-- Covers only France-specific feasts that are NOT already
-- present in ROMAN_GENERAL's feast_saints.
--
-- Promoted feasts (e.g. Cyril & Methodius, Catherine of
-- Alexandria, Benedict, Bridget, Teresa Benedicta of the
-- Cross, Thérèse of Lisieux) are elevated from Roman General
-- and their feast_saints links already exist — no new rows
-- needed here.
--
-- Assumes:
-- - table feast_saints(feast_id, saint_id, role)
-- - unique constraint on (feast_id, saint_id)
-- =========================================================

INSERT INTO feast_saints (feast_id, saint_id, role)
SELECT f.id, s.id, x.role
FROM (VALUES

  -- Jan 3 – Saint Geneviève, Virgin (Patron of Paris)
  ('saint-genevieve-virgin', 'saint-genevieve', 'primary'),

  -- Jan 15 – Saint Remigius, Bishop (Apostle of the Franks)
  ('saint-remigius-bishop', 'saint-remigius', 'primary'),

  -- Feb 18 – Saint Bernadette Soubirous, Virgin
  ('saint-bernadette-soubirous-virgin', 'saint-bernadette-soubirous', 'primary'),

  -- May 19 – Saint Ivo of Kermartin, Priest
  ('saint-ivo-of-kermartin-priest', 'saint-ivo-of-kermartin', 'primary'),

  -- May 30 – Saint Joan of Arc, Virgin (Secondary Patron of France)
  ('saint-joan-of-arc-virgin', 'saint-joan-of-arc', 'primary'),

  -- Jun 2 – Saints Pothinus, Blandina, and Companions, Martyrs (Martyrs of Lyon)
  ('saints-pothinus-blandina-and-companions-martyrs', 'saint-pothinus', 'primary'),
  ('saints-pothinus-blandina-and-companions-martyrs', 'saint-blandina', 'primary'),

  -- Jun 4 – Saint Clotilde
  ('saint-clotilde', 'saint-clotilde', 'primary'),

  -- Aug 26 – Saint Caesarius of Arles, Bishop
  ('saint-caesarius-of-arles-bishop', 'saint-caesarius-of-arles', 'primary'),

  -- Sep 19 – Our Lady of La Salette
  ('our-lady-of-la-salette', 'saint-mary', 'primary')

) AS x(feast_slug, saint_slug, role)
JOIN feasts f ON f.slug = x.feast_slug
JOIN saints s ON s.slug = x.saint_slug
ON CONFLICT (feast_id, saint_id) DO NOTHING;

COMMIT;
