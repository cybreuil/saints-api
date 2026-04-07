BEGIN;

-- =========================================================
-- Roman General Calendar - FEAST <-> SAINT links (January)
-- =========================================================
-- Assumes:
-- - table feast_saints(feast_id, saint_id, role, ord)
-- - unique constraint on (feast_id, saint_id)
-- If your column names differ, adapt role/ord accordingly.

INSERT INTO feast_saints (feast_id, saint_id, role, ord)
SELECT f.id, s.id, x.role, x.ord
FROM feasts f
JOIN saints s ON s.slug = x.saint_slug
JOIN (VALUES
  -- Marian solemnity
  ('solemnity-of-mary-the-holy-mother-of-god', 'saint-mary', 'primary', 1),

  -- Jan 2
  ('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'saint-basil-the-great', 'primary', 1),
  ('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'saint-gregory-nazianzen', 'primary', 2),

  -- Jan 7
  ('saint-raymond-of-penyafort-priest', 'saint-raymond-of-penyafort', 'primary', 1),

  -- Jan 13
  ('saint-hilary-bishop-and-doctor-of-the-church', 'saint-hilary-of-poitiers', 'primary', 1),

  -- Jan 17
  ('saint-anthony-abbot', 'saint-anthony-abbot', 'primary', 1),

  -- Jan 20
  ('saint-fabian-pope-and-martyr', 'saint-fabian-pope', 'primary', 1),
  ('saint-sebastian-martyr', 'saint-sebastian', 'primary', 1),

  -- Jan 21
  ('saint-agnes-virgin-and-martyr', 'saint-agnes-of-rome', 'primary', 1),

  -- Jan 22
  ('saint-vincent-deacon-and-martyr', 'saint-vincent-of-saragossa', 'primary', 1),

  -- Jan 24
  ('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'saint-francis-de-sales', 'primary', 1),

  -- Jan 25
  ('the-conversion-of-saint-paul-the-apostle', 'saint-paul-apostle', 'primary', 1),

  -- Jan 26
  ('saints-timothy-and-titus-bishops', 'saint-timothy-of-ephesus', 'primary', 1),
  ('saints-timothy-and-titus-bishops', 'saint-titus-of-crete', 'primary', 2),

  -- Jan 27
  ('saint-angela-merici-virgin', 'saint-angela-merici', 'primary', 1),

  -- Jan 28
  ('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'saint-thomas-aquinas', 'primary', 1),

  -- Jan 31
  ('saint-john-bosco-priest', 'saint-john-bosco', 'primary', 1)

  -- NOTE:
  -- Christological feasts like Epiphany, Most Holy Name of Jesus, Baptism of the Lord
  -- intentionally have no saint link.
) AS x(feast_slug, saint_slug, role, ord)
ON f.slug = x.feast_slug
ON CONFLICT (feast_id, saint_id) DO NOTHING;

COMMIT;
