BEGIN;

-- =======================
-- PORTUGAL-SPECIFIC SAINTS
-- =======================

-- NEED DOUBLE CHECK IF PLACES ARE SEEDED !!!!
INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id,
  place_of_death_id,
  place_of_activity_id
) VALUES

(
  'blessed-goncalo-de-amarante',
  'Blessed Gonçalo de Amarante',
  1187, NULL, NULL, TRUE,
  1259, 1, 10, TRUE,
  13,
  (SELECT id FROM places WHERE code='TAGILDE'),
  (SELECT id FROM places WHERE code='AMARANTE'),
  (SELECT id FROM places WHERE code='AMARANTE')
),
(
  'saint-john-de-brito',
  'Saint John de Brito',
  1647, 3, 1, FALSE,
  1693, 2, 4, FALSE,
  17,
  (SELECT id FROM places WHERE code='LISBON'),
  (SELECT id FROM places WHERE code='ORIYUR'),
  (SELECT id FROM places WHERE code='INDIA')
),
(
  'saint-theotonius',
  'Saint Theotonius',
  1082, NULL, NULL, TRUE,
  1162, 2, 18, FALSE,
  12,
  (SELECT id FROM places WHERE code='GANFEI'),
  (SELECT id FROM places WHERE code='COIMBRA'),
  (SELECT id FROM places WHERE code='COIMBRA')
),
(
  'saint-jacinta-marto',
  'Saint Jacinta Marto',
  1910, 3, 11, FALSE,
  1920, 2, 20, FALSE,
  20,
  (SELECT id FROM places WHERE code='ALJUSTREL'),
  (SELECT id FROM places WHERE code='LISBON'),
  (SELECT id FROM places WHERE code='FATIMA')
),
(
  'saint-francisco-marto',
  'Saint Francisco Marto',
  1908, 6, 11, FALSE,
  1919, 4, 4, FALSE,
  20,
  (SELECT id FROM places WHERE code='ALJUSTREL'),
  (SELECT id FROM places WHERE code='ALJUSTREL'),
  (SELECT id FROM places WHERE code='FATIMA')
),
(
  'blessed-joan-of-portugal',
  'Blessed Joan of Portugal',
  1452, 2, 6, FALSE,
  1490, 5, 12, FALSE,
  15,
  (SELECT id FROM places WHERE code='LISBON'),
  (SELECT id FROM places WHERE code='AVEIRO'),
  (SELECT id FROM places WHERE code='AVEIRO')
),
(
  'blessed-sancha-of-portugal',
  'Blessed Sancha of Portugal',
  1180, NULL, NULL, TRUE,
  1229, 3, 13, FALSE,
  13,
  (SELECT id FROM places WHERE code='COIMBRA'),
  (SELECT id FROM places WHERE code='CELAS'),
  (SELECT id FROM places WHERE code='CELAS')
),
(
  'blessed-mafalda-of-portugal',
  'Blessed Mafalda of Portugal',
  1195, NULL, NULL, TRUE,
  1256, 5, 1, FALSE,
  13,
  (SELECT id FROM places WHERE code='AMARANTE'),
  (SELECT id FROM places WHERE code='RIO-TINTO'),
  (SELECT id FROM places WHERE code='AROUCA')
),
(
  'blessed-theresa-of-portugal',
  'Blessed Theresa of Portugal',
  1178, NULL, NULL, TRUE,
  1250, 6, 17, FALSE,
  13,
  (SELECT id FROM places WHERE code='COIMBRA'),
  (SELECT id FROM places WHERE code='LORVAO'),
  (SELECT id FROM places WHERE code='LORVAO')
),
(
  'blessed-inacio-de-azevedo',
  'Blessed Inácio de Azevedo',
  1526, NULL, NULL, TRUE,
  1570, 7, 15, FALSE,
  16,
  (SELECT id FROM places WHERE code='PORTO'),
  (SELECT id FROM places WHERE code='ATLANTIC-OCEAN'),
  (SELECT id FROM places WHERE code='BRAZIL')
),
(
  'blessed-bartholomew-of-the-martyrs',
  'Blessed Bartholomew of the Martyrs',
  1514, 5, 3, FALSE,
  1590, 7, 16, FALSE,
  16,
  (SELECT id FROM places WHERE code='LISBON'),
  (SELECT id FROM places WHERE code='VIANA-DO-CASTELO'),
  (SELECT id FROM places WHERE code='BRAGA')
),
(
  'saint-beatrice-of-silva',
  'Saint Beatrice of Silva',
  1424, NULL, NULL, TRUE,
  1492, 8, 17, FALSE,
  15,
  (SELECT id FROM places WHERE code='CEUTA'),
  (SELECT id FROM places WHERE code='TOLEDO'),
  (SELECT id FROM places WHERE code='TOLEDO')
),
(
  'blessed-goncalo-de-lagos',
  'Blessed Gonçalo de Lagos',
  1360, NULL, NULL, TRUE,
  1422, 10, 15, TRUE,
  15,
  (SELECT id FROM places WHERE code='LAGOS'),
  (SELECT id FROM places WHERE code='TORRES-VEDRAS'),
  (SELECT id FROM places WHERE code='LAGOS')
),
(
  'saint-nuno-of-saint-mary',
  'Saint Nuno of Saint Mary',
  1360, 6, 24, FALSE,
  1431, 11, 1, FALSE,
  15,
  (SELECT id FROM places WHERE code='CERNES'),
  (SELECT id FROM places WHERE code='LISBON'),
  (SELECT id FROM places WHERE code='LISBON')
),
(
  'saint-martin-of-dume',
  'Saint Martin of Dume',
  510, NULL, NULL, TRUE,
  579, NULL, NULL, TRUE,
  6,
  (SELECT id FROM places WHERE code='PANNONIA'),
  (SELECT id FROM places WHERE code='BRAGA'),
  (SELECT id FROM places WHERE code='DUME')
),
(
  'saint-gerald-of-braga',
  'Saint Gerald of Braga',
  1040, NULL, NULL, TRUE,
  1108, 12, 5, FALSE,
  12,
  (SELECT id FROM places WHERE code='Cahors'),
  (SELECT id FROM places WHERE code='BRAGA'),
  (SELECT id FROM places WHERE code='BRAGA')
)

ON CONFLICT (slug) DO NOTHING;


-- =========================================================
-- EN
-- =========================================================

INSERT INTO saint_translations (
  saint_id, locale_code, name,
  short_description, full_biography, life_label
)
SELECT s.id, 'en', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES

(
  'blessed-goncalo-de-amarante',
  'Blessed Gonçalo de Amarante',
  'Dominican priest and preacher of northern Portugal',
  '',
  'c. 1187–1259'
),
(
  'saint-john-de-brito',
  'Saint John de Brito',
  'Jesuit missionary and martyr in India',
  '',
  '1647–1693'
),
(
  'saint-theotonius',
  'Saint Theotonius',
  'Priest and early reformer of Portugal',
  '',
  'c. 1082–1162'
),
(
  'saint-jacinta-marto',
  'Saint Jacinta Marto',
  'Child visionary of Fátima',
  '',
  '1910–1920'
),
(
  'saint-francisco-marto',
  'Saint Francisco Marto',
  'Child visionary of Fátima',
  '',
  '1908–1919'
),
(
  'blessed-joan-of-portugal',
  'Blessed Joan of Portugal',
  'Portuguese princess and Dominican nun',
  '',
  '1452–1490'
),
(
  'blessed-sancha-of-portugal',
  'Blessed Sancha of Portugal',
  'Portuguese infanta devoted to monastic life',
  '',
  'c. 1180–1229'
),
(
  'blessed-mafalda-of-portugal',
  'Blessed Mafalda of Portugal',
  'Portuguese infanta and Cistercian nun',
  '',
  'c. 1195–1256'
),
(
  'blessed-theresa-of-portugal',
  'Blessed Theresa of Portugal',
  'Portuguese infanta and religious',
  '',
  'c. 1178–1250'
),
(
  'blessed-inacio-de-azevedo',
  'Blessed Inácio de Azevedo',
  'Jesuit priest and martyr with companions',
  '',
  'c. 1526–1570'
),
(
  'blessed-bartholomew-of-the-martyrs',
  'Blessed Bartholomew of the Martyrs',
  'Archbishop of Braga and Dominican reformer',
  '',
  '1514–1590'
),
(
  'saint-beatrice-of-silva',
  'Saint Beatrice of Silva',
  'Founder of the Order of the Immaculate Conception',
  '',
  'c. 1424–1492'
),
(
  'blessed-goncalo-de-lagos',
  'Blessed Gonçalo de Lagos',
  'Augustinian hermit and preacher',
  '',
  'c. 1360–1422'
),
(
  'saint-nuno-of-saint-mary',
  'Saint Nuno of Saint Mary',
  'Carmelite friar and constable of Portugal',
  '',
  '1360–1431'
),
(
  'saint-martin-of-dume',
  'Saint Martin of Dume',
  'Bishop of Braga and evangelizer of the Suebi',
  '',
  'c. 510–579'
),
(
  'saint-gerald-of-braga',
  'Saint Gerald of Braga',
  'Archbishop of Braga',
  '',
  'c. 1040–1108'
)

) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code)
DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;


-- =========================================================
-- FR
-- =========================================================

INSERT INTO saint_translations (
  saint_id, locale_code, name,
  short_description, full_biography, life_label
)
SELECT s.id, 'fr', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES

(
  'blessed-goncalo-de-amarante',
  'Bienheureux Gonçalo de Amarante',
  'Prêtre dominicain et prédicateur du nord du Portugal',
  '',
  'v. 1187–1259'
),
(
  'saint-john-de-brito',
  'Saint Jean de Britto',
  'Missionnaire jésuite et martyr en Inde',
  '',
  '1647–1693'
),
(
  'saint-theotonius',
  'Saint Théotonio',
  'Prêtre et réformateur des débuts du Portugal',
  '',
  'v. 1082–1162'
),
(
  'saint-jacinta-marto',
  'Sainte Jacinta Marto',
  'Jeune voyante de Fátima',
  '',
  '1910–1920'
),
(
  'saint-francisco-marto',
  'Saint Francisco Marto',
  'Jeune voyant de Fátima',
  '',
  '1908–1919'
),
(
  'blessed-joan-of-portugal',
  'Bienheureuse Jeanne de Portugal',
  'Princesse portugaise et moniale dominicaine',
  '',
  '1452–1490'
),
(
  'blessed-sancha-of-portugal',
  'Bienheureuse Sancha de Portugal',
  'Infante du Portugal consacrée à la vie monastique',
  '',
  'v. 1180–1229'
),
(
  'blessed-mafalda-of-portugal',
  'Bienheureuse Mafalda de Portugal',
  'Infante du Portugal et moniale cistercienne',
  '',
  'v. 1195–1256'
),
(
  'blessed-theresa-of-portugal',
  'Bienheureuse Thérèse de Portugal',
  'Infante du Portugal et religieuse',
  '',
  'v. 1178–1250'
),
(
  'blessed-inacio-de-azevedo',
  'Bienheureux Inácio de Azevedo',
  'Prêtre jésuite et martyr avec ses compagnons',
  '',
  'v. 1526–1570'
),
(
  'blessed-bartholomew-of-the-martyrs',
  'Bienheureux Barthélemy des Martyrs',
  'Archevêque de Braga et réformateur dominicain',
  '',
  '1514–1590'
),
(
  'saint-beatrice-of-silva',
  'Sainte Béatrice de Silva',
  'Fondatrice de l''Ordre de l''Immaculée Conception',
  '',
  'v. 1424–1492'
),
(
  'blessed-goncalo-de-lagos',
  'Bienheureux Gonçalo de Lagos',
  'Ermite augustin et prédicateur',
  '',
  'v. 1360–1422'
),
(
  'saint-nuno-of-saint-mary',
  'Saint Nuno de Sainte Marie',
  'Religieux carme et connétable du Portugal',
  '',
  '1360–1431'
),
(
  'saint-martin-of-dume',
  'Saint Martin de Dume',
  'Évêque de Braga et évangélisateur des Suèves',
  '',
  'v. 510–579'
),
(
  'saint-gerald-of-braga',
  'Saint Gérald de Braga',
  'Archevêque de Braga',
  '',
  'v. 1040–1108'
)

) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code)
DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;


-- =========================================================
-- LA
-- =========================================================

INSERT INTO saint_translations (
  saint_id, locale_code, name,
  short_description, full_biography, life_label
)
SELECT s.id, 'la', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES

(
  'blessed-goncalo-de-amarante',
  'Beatus Gonsalus de Amarante',
  'Presbyter Dominicanus et praedicator in Lusitania septentrionali',
  '',
  'c. 1187–1259'
),
(
  'saint-john-de-brito',
  'Sanctus Ioannes de Britto',
  'Missionarius Iesuita et martyr in India',
  '',
  '1647–1693'
),
(
  'saint-theotonius',
  'Sanctus Theotonius',
  'Presbyter et reformator primae Lusitaniae',
  '',
  'c. 1082–1162'
),
(
  'saint-jacinta-marto',
  'Sancta Iacinta Marto',
  'Puella visionaria Fatimensis',
  '',
  '1910–1920'
),
(
  'saint-francisco-marto',
  'Sanctus Franciscus Marto',
  'Puer visionarius Fatimensis',
  '',
  '1908–1919'
),
(
  'blessed-joan-of-portugal',
  'Beata Ioanna Lusitaniae',
  'Princeps Lusitaniae et monialis Dominicana',
  '',
  '1452–1490'
),
(
  'blessed-sancha-of-portugal',
  'Beata Sancia Lusitaniae',
  'Infanta Lusitaniae vitae monasticae dedita',
  '',
  'c. 1180–1229'
),
(
  'blessed-mafalda-of-portugal',
  'Beata Mafalda Lusitaniae',
  'Infanta Lusitaniae et monialis Cisterciensis',
  '',
  'c. 1195–1256'
),
(
  'blessed-theresa-of-portugal',
  'Beata Theresia Lusitaniae',
  'Infanta Lusitaniae et religiosa',
  '',
  'c. 1178–1250'
),
(
  'blessed-inacio-de-azevedo',
  'Beatus Ignatius de Azevedo',
  'Presbyter Iesuita et martyr cum sociis',
  '',
  'c. 1526–1570'
),
(
  'blessed-bartholomew-of-the-martyrs',
  'Beatus Bartholomaeus a Martyribus',
  'Archiepiscopus Bracarensis et reformator Dominicanus',
  '',
  '1514–1590'
),
(
  'saint-beatrice-of-silva',
  'Sancta Beatrix de Silva',
  'Fundatrix Ordinis Immaculatae Conceptionis',
  '',
  'c. 1424–1492'
),
(
  'blessed-goncalo-de-lagos',
  'Beatus Gonsalus de Lagos',
  'Eremita Augustinianus et praedicator',
  '',
  'c. 1360–1422'
),
(
  'saint-nuno-of-saint-mary',
  'Sanctus Nuno a Sancta Maria',
  'Religiosus Carmelita et regni Lusitaniae constabularius',
  '',
  '1360–1431'
),
(
  'saint-martin-of-dume',
  'Sanctus Martinus Dumensis',
  'Episcopus Bracarensis et evangelizator Suevorum',
  '',
  'c. 510–579'
),
(
  'saint-gerald-of-braga',
  'Sanctus Geraldus Bracarensis',
  'Archiepiscopus Bracarensis',
  '',
  'c. 1040–1108'
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
