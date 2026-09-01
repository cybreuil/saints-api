BEGIN;

-- ====================
-- SPAIN-SPECIFIC SAINTS
-- ====================

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
  'saint-eulogius-of-cordoba',
  'Saint Eulogius of Córdoba',
  800, NULL, NULL, TRUE,
  859, 3, 11, FALSE,
  9,
  (SELECT id FROM places WHERE code='CORDOBA'),
  (SELECT id FROM places WHERE code='CORDOBA'),
  (SELECT id FROM places WHERE code='CORDOBA')
),
(
  'saint-fructuosus',
  'Saint Fructuosus',
  NULL, NULL, NULL, TRUE,
  259, NULL, NULL, TRUE,
  3,
  NULL,
  (SELECT id FROM places WHERE code='TARRAGONA'),
  (SELECT id FROM places WHERE code='TARRAGONA')
),
(
  'saint-augurius',
  'Saint Augurius',
  NULL, NULL, NULL, TRUE,
  259, NULL, NULL, TRUE,
  3,
  NULL,
  (SELECT id FROM places WHERE code='TARRAGONA'),
  (SELECT id FROM places WHERE code='TARRAGONA')
),
(
  'saint-eulogius',
  'Saint Eulogius',
  NULL, NULL, NULL, TRUE,
  259, NULL, NULL, TRUE,
  3,
  NULL,
  (SELECT id FROM places WHERE code='TARRAGONA'),
  (SELECT id FROM places WHERE code='TARRAGONA')
),
(
  'saint-ildephonsus-of-toledo',
  'Saint Ildephonsus of Toledo',
  607, NULL, NULL, TRUE,
  667, 1, 23, FALSE,
  7,
  (SELECT id FROM places WHERE code='TOLEDO'),
  (SELECT id FROM places WHERE code='TOLEDO'),
  (SELECT id FROM places WHERE code='TOLEDO')
),
(
  'saint-hermenegild',
  'Saint Hermenegild',
  564, NULL, NULL, TRUE,
  586, 4, 13, FALSE,
  6,
  NULL,
  (SELECT id FROM places WHERE code='TARRAGONA'),
  (SELECT id FROM places WHERE code='SEVILLE')
),
(
  'saint-peter-of-saint-joseph-de-betancur',
  'Saint Peter of Saint Joseph de Betancur',
  1626, 3, 21, FALSE,
  1667, 4, 25, FALSE,
  17,
  (SELECT id FROM places WHERE code='VILAFLORE'),
  (SELECT id FROM places WHERE code='ANTIGUA-GUATEMALA'),
  (SELECT id FROM places WHERE code='ANTIGUA-GUATEMALA')
),
(
  'saint-isidore-of-seville',
  'Saint Isidore of Seville',
  560, NULL, NULL, TRUE,
  636, 4, 4, FALSE,
  7,
  NULL,
  (SELECT id FROM places WHERE code='SEVILLE'),
  (SELECT id FROM places WHERE code='SEVILLE')
),
(
  'saint-isidore-the-farmer',
  'Saint Isidore the Farmer',
  1070, NULL, NULL, TRUE,
  1130, 5, 15, TRUE,
  12,
  (SELECT id FROM places WHERE code='MADRID'),
  (SELECT id FROM places WHERE code='MADRID'),
  (SELECT id FROM places WHERE code='MADRID')
),
(
  'saint-paschal-baylon',
  'Saint Paschal Baylon',
  1540, 5, 16, FALSE,
  1592, 5, 17, FALSE,
  16,
  (SELECT id FROM places WHERE code='TORREHERMOSA'),
  (SELECT id FROM places WHERE code='VILLARREAL'),
  (SELECT id FROM places WHERE code='VILLARREAL')
),
(
  'saint-joaquina-vedruna',
  'Saint Joaquina Vedruna',
  1783, 4, 16, FALSE,
  1854, 8, 28, FALSE,
  19,
  (SELECT id FROM places WHERE code='BARCELONA'),
  (SELECT id FROM places WHERE code='BARCELONA'),
  (SELECT id FROM places WHERE code='VIC')
),
(
  'saint-ferdinand',
  'Saint Ferdinand',
  1199, NULL, NULL, TRUE,
  1252, 5, 30, FALSE,
  13,
  (SELECT id FROM places WHERE code='TOLEDO'),
  (SELECT id FROM places WHERE code='SEVILLE'),
  (SELECT id FROM places WHERE code='SEVILLE')
),
(
  'saint-jose-de-anchieta',
  'Saint José de Anchieta',
  1534, 3, 19, FALSE,
  1597, 6, 9, FALSE,
  16,
  (SELECT id FROM places WHERE code='SAN-CRISTOBAL-DE-LA-LAGUNA'),
  (SELECT id FROM places WHERE code='RERITIBA'),
  (SELECT id FROM places WHERE code='BRAZIL')
),
(
  'saint-maria-micaela-of-the-blessed-sacrament',
  'Saint María Micaela of the Blessed Sacrament',
  1809, 6, 1, FALSE,
  1865, 8, 24, FALSE,
  19,
  (SELECT id FROM places WHERE code='MADRID'),
  (SELECT id FROM places WHERE code='VALENCIA'),
  (SELECT id FROM places WHERE code='MADRID')
),
(
  'saint-pelagius',
  'Saint Pelagius',
  912, NULL, NULL, TRUE,
  925, NULL, NULL, TRUE,
  10,
  NULL,
  (SELECT id FROM places WHERE code='CORDOBA'),
  (SELECT id FROM places WHERE code='CORDOBA')
),
(
  'saint-ezequiel-moreno',
  'Saint Ezequiel Moreno',
  1848, 4, 9, FALSE,
  1906, 8, 19, FALSE,
  20,
  (SELECT id FROM places WHERE code='ALFARO'),
  (SELECT id FROM places WHERE code='VALENCIA'),
  (SELECT id FROM places WHERE code='VALENCIA')
),
(
  'saint-teresa-of-jesus-jornet-and-ibars',
  'Saint Teresa of Jesus Jornet e Ibars',
  1843, 1, 9, FALSE,
  1897, 8, 26, FALSE,
  19,
  (SELECT id FROM places WHERE code='AYTONA'),
  (SELECT id FROM places WHERE code='LIRIA'),
  (SELECT id FROM places WHERE code='VALENCIA')
),
(
  'saint-francis-borgia',
  'Saint Francis Borgia',
  1510, 10, 28, FALSE,
  1572, 9, 30, FALSE,
  16,
  (SELECT id FROM places WHERE code='GANDIA'),
  (SELECT id FROM places WHERE code='ROME'),
  (SELECT id FROM places WHERE code='GANDIA')
),
(
  'saint-thomas-of-villanova',
  'Saint Thomas of Villanova',
  1488, NULL, NULL, TRUE,
  1555, 9, 8, FALSE,
  16,
  (SELECT id FROM places WHERE code='FUENLLANA'),
  (SELECT id FROM places WHERE code='VALENCIA'),
  (SELECT id FROM places WHERE code='VALENCIA')
),
(
  'saint-soledad-torres-acosta',
  'Saint Soledad Torres Acosta',
  1826, 12, 2, FALSE,
  1887, 10, 11, FALSE,
  19,
  (SELECT id FROM places WHERE code='MADRID'),
  (SELECT id FROM places WHERE code='MADRID'),
  (SELECT id FROM places WHERE code='MADRID')
),
(
  'saint-peter-of-alcantara',
  'Saint Peter of Alcántara',
  1499, 6, 28, FALSE,
  1562, 10, 18, FALSE,
  16,
  (SELECT id FROM places WHERE code='ALCANTARA'),
  (SELECT id FROM places WHERE code='ARENAS-DE-SAN-PEDRO'),
  (SELECT id FROM places WHERE code='EXTREMADURA')
),
(
  'saint-leander',
  'Saint Leander',
  534, NULL, NULL, TRUE,
  600, 3, 13, TRUE,
  6,
  NULL,
  (SELECT id FROM places WHERE code='SEVILLE'),
  (SELECT id FROM places WHERE code='SEVILLE')
),
(
  'saint-eulalia-of-merida',
  'Saint Eulalia of Mérida',
  290, NULL, NULL, TRUE,
  304, 12, 10, TRUE,
  4,
  (SELECT id FROM places WHERE code='MERIDA'),
  (SELECT id FROM places WHERE code='MERIDA'),
  (SELECT id FROM places WHERE code='MERIDA')
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
  'saint-eulogius-of-cordoba',
  'Saint Eulogius of Córdoba',
  'Priest and martyr of Córdoba',
  '',
  'Priest and Martyr'
),
(
  'saint-fructuosus',
  'Saint Fructuosus',
  'Bishop of Tarragona and martyr',
  '',
  'Bishop and Martyr'
),
(
  'saint-augurius',
  'Saint Augurius',
  'Deacon and martyr of Tarragona',
  '',
  'Deacon and Martyr'
),
(
  'saint-eulogius',
  'Saint Eulogius',
  'Deacon and martyr of Tarragona',
  '',
  'Deacon and Martyr'
),
(
  'saint-ildephonsus-of-toledo',
  'Saint Ildephonsus of Toledo',
  'Archbishop of Toledo and Marian theologian',
  '',
  'Bishop'
),
(
  'saint-hermenegild',
  'Saint Hermenegild',
  'Visigothic prince and martyr',
  '',
  'Martyr'
),
(
  'saint-peter-of-saint-joseph-de-betancur',
  'Saint Peter of Saint Joseph de Betancur',
  'Missionary and founder of the Bethlehemite Brothers',
  '',
  'Missionary'
),
(
  'saint-isidore-of-seville',
  'Saint Isidore of Seville',
  'Bishop and Doctor of the Church',
  '',
  'Bishop and Doctor'
),
(
  'saint-isidore-the-farmer',
  'Saint Isidore the Farmer',
  'Farmer and patron saint of Madrid',
  '',
  'Layman'
),
(
  'saint-paschal-baylon',
  'Saint Paschal Baylon',
  'Franciscan friar devoted to the Eucharist',
  '',
  'Religious'
),
(
  'saint-joaquina-vedruna',
  'Saint Joaquina Vedruna',
  'Founder of the Carmelites of Charity',
  '',
  'Virgin'
),
(
  'saint-ferdinand',
  'Saint Ferdinand',
  'King of Castile and León',
  '',
  'King'
),
(
  'saint-jose-de-anchieta',
  'Saint José de Anchieta',
  'Jesuit missionary and founder in Brazil',
  '',
  'Missionary'
),
(
  'saint-maria-micaela-of-the-blessed-sacrament',
  'Saint María Micaela of the Blessed Sacrament',
  'Founder of the Adorers, Handmaids of the Blessed Sacrament',
  '',
  'Virgin'
),
(
  'saint-pelagius',
  'Saint Pelagius',
  'Young martyr of Córdoba',
  '',
  'Martyr'
),
(
  'saint-ezequiel-moreno',
  'Saint Ezequiel Moreno',
  'Augustinian Recollect bishop and missionary',
  '',
  'Bishop'
),
(
  'saint-teresa-of-jesus-jornet-and-ibars',
  'Saint Teresa of Jesus Jornet e Ibars',
  'Founder of the Little Sisters of the Poor',
  '',
  'Virgin'
),
(
  'saint-francis-borgia',
  'Saint Francis Borgia',
  'Jesuit priest and superior general',
  '',
  'Priest'
),
(
  'saint-thomas-of-villanova',
  'Saint Thomas of Villanova',
  'Archbishop of Valencia and Augustinian friar',
  '',
  'Bishop'
),
(
  'saint-soledad-torres-acosta',
  'Saint Soledad Torres Acosta',
  'Founder of the Servants of Mary',
  '',
  'Virgin'
),
(
  'saint-peter-of-alcantara',
  'Saint Peter of Alcántara',
  'Franciscan friar and reformer',
  '',
  'Priest'
),
(
  'saint-leander',
  'Saint Leander',
  'Archbishop of Seville',
  '',
  'Bishop'
),
(
  'saint-eulalia-of-merida',
  'Saint Eulalia of Mérida',
  'Virgin and martyr of Mérida',
  '',
  'Virgin and Martyr'
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
  'saint-eulogius-of-cordoba',
  'Saint Euloge de Cordoue',
  'Prêtre et martyr de Cordoue',
  '',
  'Prêtre et Martyr'
),
(
  'saint-fructuosus',
  'Saint Fructueux',
  'Évêque de Tarragone et martyr',
  '',
  'Évêque et Martyr'
),
(
  'saint-augurius',
  'Saint Augure',
  'Diacre et martyr de Tarragone',
  '',
  'Diacre et Martyr'
),
(
  'saint-eulogius',
  'Saint Euloge',
  'Diacre et martyr de Tarragone',
  '',
  'Diacre et Martyr'
),
(
  'saint-ildephonsus-of-toledo',
  'Saint Ildefonse de Tolède',
  'Archevêque de Tolède et théologien marial',
  '',
  'Évêque'
),
(
  'saint-hermenegild',
  'Saint Herménégilde',
  'Prince wisigoth et martyr',
  '',
  'Martyr'
),
(
  'saint-peter-of-saint-joseph-de-betancur',
  'Saint Pierre de Saint-Joseph de Betancur',
  'Missionnaire et fondateur des Frères de Bethléem',
  '',
  'Missionnaire'
),
(
  'saint-isidore-of-seville',
  'Saint Isidore de Séville',
  'Évêque et docteur de l''Église',
  '',
  'Évêque et Docteur'
),
(
  'saint-isidore-the-farmer',
  'Saint Isidore le Laboureur',
  'Laboureur et patron de Madrid',
  '',
  'Laïc'
),
(
  'saint-paschal-baylon',
  'Saint Pascal Baylon',
  'Religieux franciscain particulièrement attaché à l''Eucharistie',
  '',
  'Religieux'
),
(
  'saint-joaquina-vedruna',
  'Sainte Joaquina Vedruna',
  'Fondatrice des Carmélites de la Charité',
  '',
  'Vierge'
),
(
  'saint-ferdinand',
  'Saint Ferdinand',
  'Roi de Castille et de León',
  '',
  'Roi'
),
(
  'saint-jose-de-anchieta',
  'Saint José de Anchieta',
  'Missionnaire jésuite et fondateur au Brésil',
  '',
  'Missionnaire'
),
(
  'saint-maria-micaela-of-the-blessed-sacrament',
  'Sainte María Micaela du Saint-Sacrement',
  'Fondatrice des Adoratrices, Servantes du Saint-Sacrement',
  '',
  'Vierge'
),
(
  'saint-pelagius',
  'Saint Pélage',
  'Jeune martyr de Cordoue',
  '',
  'Martyr'
),
(
  'saint-ezequiel-moreno',
  'Saint Ézéchiel Moreno',
  'Évêque et missionnaire augustin récollet',
  '',
  'Évêque'
),
(
  'saint-teresa-of-jesus-jornet-and-ibars',
  'Sainte Thérèse de Jésus Jornet e Ibars',
  'Fondatrice des Petites Sœurs des Pauvres',
  '',
  'Vierge'
),
(
  'saint-francis-borgia',
  'Saint François Borgia',
  'Prêtre jésuite et supérieur général de la Compagnie de Jésus',
  '',
  'Prêtre'
),
(
  'saint-thomas-of-villanova',
  'Saint Thomas de Villeneuve',
  'Archevêque de Valence et religieux augustin',
  '',
  'Évêque'
),
(
  'saint-soledad-torres-acosta',
  'Sainte Soledad Torres Acosta',
  'Fondatrice des Servantes de Marie',
  '',
  'Vierge'
),
(
  'saint-peter-of-alcantara',
  'Saint Pierre d''Alcántara',
  'Religieux franciscain et réformateur',
  '',
  'Prêtre'
),
(
  'saint-leander',
  'Saint Léandre',
  'Archevêque de Séville',
  '',
  'Évêque'
),
(
  'saint-eulalia-of-merida',
  'Sainte Eulalie de Mérida',
  'Vierge et martyre de Mérida',
  '',
  'Vierge et Martyre'
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
  'saint-eulogius-of-cordoba',
  'Sanctus Eulogius Cordubensis',
  'Presbyter et martyr Cordubensis',
  '',
  'Presbyter et Martyr'
),
(
  'saint-fructuosus',
  'Sanctus Fructuosus',
  'Episcopus Tarraconensis et martyr',
  '',
  'Episcopus et Martyr'
),
(
  'saint-augurius',
  'Sanctus Augurius',
  'Diaconus et martyr Tarraconensis',
  '',
  'Diaconus et Martyr'
),
(
  'saint-eulogius',
  'Sanctus Eulogius',
  'Diaconus et martyr Tarraconensis',
  '',
  'Diaconus et Martyr'
),
(
  'saint-ildephonsus-of-toledo',
  'Sanctus Ildephonsus Toletanus',
  'Archiepiscopus Toletanus et theologus Marianus',
  '',
  'Episcopus'
),
(
  'saint-hermenegild',
  'Sanctus Hermenegildus',
  'Princeps Visigothorum et martyr',
  '',
  'Martyr'
),
(
  'saint-peter-of-saint-joseph-de-betancur',
  'Sanctus Petrus a Sancto Iosepho de Betancur',
  'Missionarius et fundator Fratrum Bethlehemitarum',
  '',
  'Missionarius'
),
(
  'saint-isidore-of-seville',
  'Sanctus Isidorus Hispalensis',
  'Episcopus et Ecclesiae Doctor',
  '',
  'Episcopus et Doctor'
),
(
  'saint-isidore-the-farmer',
  'Sanctus Isidorus Agricola',
  'Agricola et patronus Matritensis',
  '',
  'Laicus'
),
(
  'saint-paschal-baylon',
  'Sanctus Paschalis Baylon',
  'Religiosus Franciscanus Eucharistiae devotus',
  '',
  'Religiosus'
),
(
  'saint-joaquina-vedruna',
  'Sancta Ioachima Vedruna',
  'Fundatrix Carmelitarum Caritatis',
  '',
  'Virgo'
),
(
  'saint-ferdinand',
  'Sanctus Ferdinandus',
  'Rex Castellae et Legionis',
  '',
  'Rex'
),
(
  'saint-jose-de-anchieta',
  'Sanctus Iosephus de Anchieta',
  'Missionarius Iesuita et fundator in Brasilia',
  '',
  'Missionarius'
),
(
  'saint-maria-micaela-of-the-blessed-sacrament',
  'Sancta Maria Michaela a Sanctissimo Sacramento',
  'Fundatrix Sororum Adoratricum Ancillarum Sanctissimi Sacramenti',
  '',
  'Virgo'
),
(
  'saint-pelagius',
  'Sanctus Pelagius',
  'Iuvenis martyr Cordubensis',
  '',
  'Martyr'
),
(
  'saint-ezequiel-moreno',
  'Sanctus Ezechiel Moreno',
  'Episcopus et missionarius Augustinianus Recollectus',
  '',
  'Episcopus'
),
(
  'saint-teresa-of-jesus-jornet-and-ibars',
  'Sancta Teresia a Iesu Jornet et Ibars',
  'Fundatrix Parvarum Sororum Pauperum',
  '',
  'Virgo'
),
(
  'saint-francis-borgia',
  'Sanctus Franciscus Borgia',
  'Presbyter Iesuita et Praepositus Generalis Societatis Iesu',
  '',
  'Presbyter'
),
(
  'saint-thomas-of-villanova',
  'Sanctus Thomas a Villanova',
  'Archiepiscopus Valentinus et religiosus Augustinianus',
  '',
  'Episcopus'
),
(
  'saint-soledad-torres-acosta',
  'Sancta Soledas Torres Acosta',
  'Fundatrix Sororum Servarum Mariae',
  '',
  'Virgo'
),
(
  'saint-peter-of-alcantara',
  'Sanctus Petrus de Alcantara',
  'Religiosus Franciscanus et reformator',
  '',
  'Presbyter'
),
(
  'saint-leander',
  'Sanctus Leander',
  'Archiepiscopus Hispalensis',
  '',
  'Episcopus'
),
(
  'saint-eulalia-of-merida',
  'Sancta Eulalia Emeritensis',
  'Virgo et martyr Emeritensis',
  '',
  'Virgo et Martyr'
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
