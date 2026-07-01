BEGIN;

-- ====================
-- FRANCE-SPECIFIC SAINTS
-- ====================

INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-genevieve', 'Saint Geneviève',
  422, NULL, NULL, TRUE,
  502, NULL, NULL, FALSE,
  5,
  NULL,
  NULL,
  NULL
),
(
  'saint-remigius', 'Saint Remigius',
  438, NULL, NULL, TRUE,
  533, NULL, NULL, FALSE,
  5,
  NULL,
  NULL,
  NULL
),
(
  'saint-bernadette-soubirous', 'Saint Bernadette Soubirous',
  1844, 1, 7, FALSE,
  1879, 4, 16, FALSE,
  19,
  NULL,
  NULL,
  NULL
),
(
  'saint-ivo-of-kermartin', 'Saint Ivo of Kermartin',
  1253, NULL, NULL, FALSE,
  1303, 5, 19, FALSE,
  13,
  NULL,
  NULL,
  NULL
),
(
  'saint-joan-of-arc', 'Saint Joan of Arc',
  1412, 1, 6, TRUE,
  1431, 5, 30, FALSE,
  15,
  NULL,
  NULL,
  NULL
),
(
  'saint-pothinus', 'Saint Pothinus',
  87, NULL, NULL, TRUE,
  177, NULL, NULL, FALSE,
  2,
  NULL,
  NULL,
  NULL
),
(
  'saint-blandina', 'Saint Blandina',
  162, NULL, NULL, TRUE,
  177, NULL, NULL, FALSE,
  2,
  NULL,
  NULL,
  NULL
),
(
  'saint-clotilde', 'Saint Clotilde',
  474, NULL, NULL, TRUE,
  545, 6, 3, FALSE,
  5,
  NULL,
  NULL,
  NULL
),
(
  'saint-caesarius-of-arles', 'Saint Caesarius of Arles',
  470, NULL, NULL, TRUE,
  542, NULL, NULL, FALSE,
  5,
  NULL,
  NULL,
  NULL
)
ON CONFLICT (slug) DO NOTHING;

-- EN
INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'en', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
(
  'saint-genevieve',
  'Saint Geneviève',
  'Virgin and patron saint of Paris',
  '',
  'Virgin'
),
(
  'saint-remigius',
  'Saint Remigius',
  'Bishop of Reims, Apostle of France',
  '',
  'Bishop'
),
(
  'saint-bernadette-soubirous',
  'Saint Bernadette Soubirous',
  'Virgin, visionary of Lourdes',
  '',
  'Virgin'
),
(
  'saint-ivo-of-kermartin',
  'Saint Ivo of Kermartin',
  'Priest, patron saint of lawyers',
  '',
  'Priest'
),
(
  'saint-joan-of-arc',
  'Saint Joan of Arc',
  'Virgin, secondary patroness of France',
  '',
  'Virgin'
),
(
  'saint-pothinus',
  'Saint Pothinus',
  'Bishop of Lyon, martyr',
  '',
  'Bishop and Martyr'
),
(
  'saint-blandina',
  'Saint Blandina',
  'Virgin martyr of Lyon',
  '',
  'Virgin and Martyr'
),
(
  'saint-clotilde',
  'Saint Clotilde',
  'Queen of the Franks',
  '',
  'Queen'
),
(
  'saint-caesarius-of-arles',
  'Saint Caesarius of Arles',
  'Bishop, Doctor of the Gauls',
  '',
  'Bishop'
)
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code)
DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

-- FR
INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'fr', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
(
  'saint-genevieve',
  'Sainte Geneviève',
  'Vierge et patronne de Paris',
  '',
  'Vierge'
),
(
  'saint-remigius',
  'Saint Rémi',
  'Évêque de Reims, apôtre des Francs',
  '',
  'Évêque'
),
(
  'saint-bernadette-soubirous',
  'Sainte Bernadette Soubirous',
  'Vierge, voyante de Lourdes',
  '',
  'Vierge'
),
(
  'saint-ivo-of-kermartin',
  'Saint Yves de Kermartin',
  'Prêtre, patron des avocats',
  '',
  'Prêtre'
),
(
  'saint-joan-of-arc',
  'Sainte Jeanne d''Arc',
  'Vierge, patronne secondaire de la France',
  '',
  'Vierge'
),
(
  'saint-pothinus',
  'Saint Pothin',
  'Évêque de Lyon, martyr',
  '',
  'Évêque et Martyr'
),
(
  'saint-blandina',
  'Sainte Blandine',
  'Vierge martyre de Lyon',
  '',
  'Vierge et Martyre'
),
(
  'saint-clotilde',
  'Sainte Clotilde',
  'Reine des Francs',
  '',
  'Reine'
),
(
  'saint-caesarius-of-arles',
  'Saint Césaire d''Arles',
  'Évêque, docteur des Gaules',
  '',
  'Évêque'
)
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code)
DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

-- LA
INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'la', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
(
  'saint-genevieve',
  'Sancta Genovefa',
  'Virgo et patrona Parisiensis',
  '',
  'Virgo'
),
(
  'saint-remigius',
  'Sanctus Remigius',
  'Episcopus Remensis, apostolus Francorum',
  '',
  'Episcopus'
),
(
  'saint-bernadette-soubirous',
  'Sancta Bernadetta Soubirous',
  'Virgo et visionaria Lurdiensis',
  '',
  'Virgo'
),
(
  'saint-ivo-of-kermartin',
  'Sanctus Ivo de Kermartin',
  'Presbyter, patronus advocatorum',
  '',
  'Presbyter'
),
(
  'saint-joan-of-arc',
  'Sancta Ioanna Arcensis',
  'Virgo et patrona secunda Galliae',
  '',
  'Virgo'
),
(
  'saint-pothinus',
  'Sanctus Pothinius',
  'Episcopus Lugdunensis, martyr',
  '',
  'Episcopus et Martyr'
),
(
  'saint-blandina',
  'Sancta Blandina',
  'Virgo et martyr Lugdunensis',
  '',
  'Virgo et Martyr'
),
(
  'saint-clotilde',
  'Sancta Chrothildis',
  'Regina Francorum',
  '',
  'Regina'
),
(
  'saint-caesarius-of-arles',
  'Sanctus Caesarius Arelatensis',
  'Episcopus, doctor Galliarum',
  '',
  'Episcopus'
)
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code)
DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

COMMIT;
