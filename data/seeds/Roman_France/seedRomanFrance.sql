-- =========================================================
-- Roman France Calendar - Proper Saints and Promoted Feasts
-- Calendar: ROMAN_FRANCE
--
-- Prerequisites:
--   - ROMAN_FRANCE calendar already exists in calendars table
--     (inserted via SELECT 'ROMAN_FRANCE', id, ... FROM calendars
--      WHERE code = 'ROMAN_GENERAL')
--   - ROMAN_FRANCE has NO own liturgical_ranks rows; all rank
--     lookups must go through ROMAN_GENERAL's ranks.
--   - France-specific promoted feasts reference slugs that already
--     exist in the feasts table (seeded by ROMAN_GENERAL).
--
-- Sections:
--   1. New feasts specific to France (not in ROMAN_GENERAL)
--   2. Feast translations (EN / FR / LA) for France-only feasts
--   3. Celebrations for ROMAN_FRANCE:
--      a. France-only feasts
--      b. Feasts promoted from ROMAN_GENERAL with a higher rank
-- =========================================================

BEGIN;

-- =========================================================
-- Section 1: France-only feasts (new slugs, not in ROMAN_GENERAL)
-- =========================================================

INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-genevieve-virgin',                          'Saint Geneviève, Virgin',                               'sanctoral'),
('saint-remigius-bishop',                           'Saint Remigius, Bishop',                                'sanctoral'),
('saint-bernadette-soubirous-virgin',               'Saint Bernadette Soubirous, Virgin',                    'sanctoral'),
('saint-ivo-of-kermartin-priest',                   'Saint Ivo of Kermartin, Priest',                        'sanctoral'),
('saint-joan-of-arc-virgin',                        'Saint Joan of Arc, Virgin',                             'sanctoral'),
('saints-pothinus-blandina-and-companions-martyrs', 'Saints Pothinus, Blandina, and Companions, Martyrs',    'sanctoral'),
('saint-clotilde',                                  'Saint Clotilde',                                        'sanctoral'),
('saint-caesarius-of-arles-bishop',                 'Saint Caesarius of Arles, Bishop',                      'sanctoral'),
('our-lady-of-la-salette',                          'Our Lady of La Salette',                                'marian')
ON CONFLICT (slug) DO NOTHING;

-- =========================================================
-- Section 2: Feast translations for France-only feasts
-- =========================================================

-- EN
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
  ('saint-genevieve-virgin',                          'Saint Geneviève, Virgin'),
  ('saint-remigius-bishop',                           'Saint Remigius, Bishop'),
  ('saint-bernadette-soubirous-virgin',               'Saint Bernadette Soubirous, Virgin'),
  ('saint-ivo-of-kermartin-priest',                   'Saint Ivo of Kermartin, Priest'),
  ('saint-joan-of-arc-virgin',                        'Saint Joan of Arc, Virgin'),
  ('saints-pothinus-blandina-and-companions-martyrs', 'Saints Pothinus, Blandina, and Companions, Martyrs'),
  ('saint-clotilde',                                  'Saint Clotilde'),
  ('saint-caesarius-of-arles-bishop',                 'Saint Caesarius of Arles, Bishop'),
  ('our-lady-of-la-salette',                          'Our Lady of La Salette')
) AS x(slug, name)
  ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
  ('saint-genevieve-virgin',                          'Sainte Geneviève, vierge'),
  ('saint-remigius-bishop',                           'Saint Rémi, évêque'),
  ('saint-bernadette-soubirous-virgin',               'Sainte Bernadette Soubirous, vierge'),
  ('saint-ivo-of-kermartin-priest',                   'Saint Yves de Kermartin, prêtre'),
  ('saint-joan-of-arc-virgin',                        'Sainte Jeanne d''Arc, vierge'),
  ('saints-pothinus-blandina-and-companions-martyrs', 'Saints Pothin, Blandine et compagnons, martyrs'),
  ('saint-clotilde',                                  'Sainte Clotilde'),
  ('saint-caesarius-of-arles-bishop',                 'Saint Césaire d''Arles, évêque'),
  ('our-lady-of-la-salette',                          'Notre-Dame de la Salette')
) AS x(slug, name)
  ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
  ('saint-genevieve-virgin',                          'Sancta Genovefa, virgo'),
  ('saint-remigius-bishop',                           'Sanctus Remigius, episcopus'),
  ('saint-bernadette-soubirous-virgin',               'Sancta Bernadetta Soubirous, virgo'),
  ('saint-ivo-of-kermartin-priest',                   'Sanctus Ivo de Kermartin, presbyter'),
  ('saint-joan-of-arc-virgin',                        'Sancta Ioanna Arcensis, virgo'),
  ('saints-pothinus-blandina-and-companions-martyrs', 'Sancti Pothinius, Blandina et Socii, martyres'),
  ('saint-clotilde',                                  'Sancta Chrothildis'),
  ('saint-caesarius-of-arles-bishop',                 'Sanctus Caesarius Arelatensis, episcopus'),
  ('our-lady-of-la-salette',                          'Beata Maria Virginis de la Salette')
) AS x(slug, name)
  ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- =========================================================
-- Section 3a: Celebrations for France-only feasts
--
-- Rank lookup goes through ROMAN_GENERAL (rcal) because
-- ROMAN_FRANCE has no own liturgical_ranks rows.
-- =========================================================

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional)
SELECT f.id, cal.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional
FROM feasts f
JOIN calendars cal  ON cal.code  = 'ROMAN_FRANCE'
JOIN calendars rcal ON rcal.code = 'ROMAN_GENERAL'
JOIN (VALUES
  ('saint-genevieve-virgin',                          1,  3, 'MEM_OPT', 'WHITE', 'normal', true),
  ('saint-remigius-bishop',                           1, 15, 'MEM_OPT', 'WHITE', 'normal', true),
  ('saint-bernadette-soubirous-virgin',               2, 18, 'MEM_OPT', 'WHITE', 'normal', true),
  ('saint-ivo-of-kermartin-priest',                   5, 19, 'MEM_OPT', 'WHITE', 'normal', true),
  ('saint-joan-of-arc-virgin',                        5, 30, 'MEM_OBL', 'WHITE', 'normal', false),
  ('saints-pothinus-blandina-and-companions-martyrs', 6,  2, 'MEM_OPT', 'RED',   'normal', true),
  ('saint-clotilde',                                  6,  4, 'MEM_OPT', 'WHITE', 'normal', true),
  ('saint-caesarius-of-arles-bishop',                 8, 26, 'MEM_OPT', 'WHITE', 'normal', true),
  ('our-lady-of-la-salette',                          9, 19, 'MEM_OPT', 'WHITE', 'normal', true)
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional)
  ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = rcal.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Section 3b: Celebrations for feasts promoted from ROMAN_GENERAL
--
-- These slugs already exist in the feasts table. A new
-- celebration row is inserted for ROMAN_FRANCE with the
-- France-specific rank (typically higher than ROMAN_GENERAL).
-- Rank lookup still goes through ROMAN_GENERAL's ranks.
-- =========================================================

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional)
SELECT f.id, cal.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional
FROM feasts f
JOIN calendars cal  ON cal.code  = 'ROMAN_FRANCE'
JOIN calendars rcal ON rcal.code = 'ROMAN_GENERAL'
JOIN (VALUES
  ('saints-cyril-monk-and-methodius-bishop',                                 2, 14, 'FEAST',     'WHITE', 'normal', false),
  ('saint-catherine-of-siena-virgin-and-doctor-of-the-church',               4, 29, 'FEAST',     'WHITE', 'normal', false),
  ('saint-benedict-abbot',                                                    7, 11, 'FEAST',     'WHITE', 'normal', false),
  ('saint-bridget-religious',                                                 7, 23, 'FEAST',     'WHITE', 'normal', false),
  ('saint-teresa-benedicta-of-the-cross-virgin-and-martyr',                  8,  9, 'FEAST',     'RED',   'normal', false),
  ('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church',      10,  1, 'MEM_OBL',   'WHITE', 'normal', false)
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional)
  ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = rcal.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- The Assumption: remains SOLEMNITY for ROMAN_FRANCE but is noted
-- as the principal patroness of France (Pie XI, 1922).
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, cal.id, r.id, lc.id, 'fixed', 8, 15, 'normal', false,
       'Patronne principale de la France (Pie XI, 1922)'
FROM feasts f
JOIN calendars cal  ON cal.code  = 'ROMAN_FRANCE'
JOIN calendars rcal ON rcal.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r     ON r.calendar_id = rcal.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'the-assumption-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Movable feasts: Epiphany and Baptism of the Lord
--
-- France (and Belgium) move Epiphany to the Sunday between
-- Jan 2 and Jan 8 (EPIPHANY_SUNDAY base).
-- The Baptism of the Lord then falls on the following Sunday
-- (EPIPHANY_SUNDAY +7), never conflicting with Epiphany itself.
-- =========================================================

-- WIP
-- Épiphanie du Seigneur (dimanche entre le 2 et le 8 janvier)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional)
SELECT f.id, cal.id, r.id, lc.id, 'movable', 'EPIPHANY', 0, 'normal', FALSE
FROM feasts f
JOIN calendars cal  ON cal.code  = 'ROMAN_FRANCE'
JOIN calendars rcal ON rcal.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = rcal.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'the-epiphany-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- Baptême du Seigneur (dimanche suivant l'Épiphanie française)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional)
SELECT f.id, cal.id, r.id, lc.id, 'movable', 'BAPTISM_OF_THE_LORD', 0, 'normal', FALSE
FROM feasts f
JOIN calendars cal  ON cal.code  = 'ROMAN_FRANCE'
JOIN calendars rcal ON rcal.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = rcal.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'the-baptism-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

COMMIT;
