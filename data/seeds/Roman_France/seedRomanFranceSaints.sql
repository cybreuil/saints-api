BEGIN;

-- ====================
-- FRANCE-SPECIFIC SAINTS
-- ====================

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
  'saint-genevieve', 'Saint Geneviève',
  422, NULL, NULL, TRUE,
  502, NULL, NULL, TRUE,
  6,
  (SELECT id FROM places WHERE code='NANTERRE'),
  (SELECT id FROM places WHERE code='PARIS'),
  (SELECT id FROM places WHERE code='PARIS')
),
(
  'saint-remigius', 'Saint Remigius',
  437, NULL, NULL, TRUE,
  533, 1, 13, FALSE,
  6,
  (SELECT id FROM places WHERE code='CERNY-EN-LAONNOIS'),
  (SELECT id FROM places WHERE code='REIMS'),
  (SELECT id FROM places WHERE code='REIMS')
),
(
  'saint-bernadette-soubirous', 'Saint Bernadette Soubirous',
  1844, 1, 7, FALSE,
  1879, 4, 16, FALSE,
  19,
  (SELECT id FROM places WHERE code='LOURDES'),
  (SELECT id FROM places WHERE code='NEVERS'),
  (SELECT id FROM places WHERE code='LOURDES')
),
(
  'saint-ivo-of-kermartin', 'Saint Ivo of Kermartin',
  1253, NULL, NULL, TRUE,
  1303, 5, 19, FALSE,
  14,
  (SELECT id FROM places WHERE code='MINIHY-TREGUIER'),
  (SELECT id FROM places WHERE code='MINIHY-TREGUIER'),
  (SELECT id FROM places WHERE code='TREGOR')
),
(
  'saint-joan-of-arc', 'Saint Joan of Arc',
  1412, 1, 6, TRUE,
  1431, 5, 30, FALSE,
  15,
  (SELECT id FROM places WHERE code='DOMREMY-LA-PUCELLE'),
  (SELECT id FROM places WHERE code='ROUEN'),
  (SELECT id FROM places WHERE code='ORLEANS')
),
(
  'saint-pothinus', 'Saint Pothinus',
  87, NULL, NULL, TRUE,
  177, NULL, NULL, FALSE,
  2,
  NULL,
  (SELECT id FROM places WHERE code='LYON'),
  (SELECT id FROM places WHERE code='LYON')
),
(
  'saint-blandina', 'Saint Blandina',
  162, NULL, NULL, TRUE,
  177, NULL, NULL, FALSE,
  2,
  NULL,
  (SELECT id FROM places WHERE code='LYON'),
  (SELECT id FROM places WHERE code='LYON')
),
(
  'saint-clotilde', 'Saint Clotilde',
  474, NULL, NULL, TRUE,
  545, 6, 3, TRUE,
  6,
  NULL,
  (SELECT id FROM places WHERE code='TOURS'),
  (SELECT id FROM places WHERE code='PARIS')
),
(
  'saint-caesarius-of-arles', 'Saint Caesarius of Arles',
  470, NULL, NULL, TRUE,
  542, 8, 27, FALSE,
  6,
  (SELECT id FROM places WHERE code='CHALON-SUR-SAONE'),
  (SELECT id FROM places WHERE code='ARLES'),
  (SELECT id FROM places WHERE code='ARLES')
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
$BIO$
  # Identity

  Saint Genevieve was a Christian virgin of the 5th century and the patron saint of Paris. She is remembered as one of the most important religious figures of late antique Gaul, a period marked by the decline of Roman authority, the arrival of new peoples, and the formation of the early Frankish kingdom.

  Her life represents the transition between the Roman world of Gaul and the Christian society that would emerge during the early Middle Ages. She became known for her dedication to prayer, her care for the poor, her spiritual authority, and her role as a protector of the city of Paris.

  The main source for her life is the *Vita Sanctae Genovefae* (*Life of Saint Genevieve*), written several decades after her death. Like many early Christian biographies of saints, this text combines historical memories, religious tradition, and accounts of miracles. Although some details belong to the language of hagiography, the work provides valuable information about the religious life of 5th-century Gaul.

  # Birth and Early Life

  Genevieve was born around the year 422 in Nanterre, a village located west of Lutetia, the Roman city that would later become Paris.

  According to tradition, her parents were Severus and Gerontia, members of a respected local family. Her childhood took place during a time of major transformation in Gaul, when Roman political power was weakening and Christian communities were becoming increasingly influential.

  A major event in her early life was the visit of Saint Germanus of Auxerre to Nanterre around 429. According to her biography, Germanus recognized the young girl's spiritual qualities and encouraged her to dedicate herself to God. This encounter became an important moment in the traditional account of her vocation.

  After the death of her parents, Genevieve moved to Paris, where she continued a life devoted to prayer, fasting, charity, and service to others. She joined the community of consecrated virgins, a group of Christian women who dedicated their lives to religious devotion while remaining in society.

  # Religious Life

  Genevieve was not a nun in the later medieval sense, as organized female monasteries developed more fully in subsequent centuries. Instead, she belonged to the tradition of consecrated virgins of late antiquity.

  Her religious life was characterized by intense prayer, discipline, and assistance to the poor. According to tradition, she spent many hours in worship and regularly practiced fasting. Her reputation for holiness gradually spread among the inhabitants of Paris.

  Unlike religious figures who withdrew from public life, Genevieve became deeply involved in the concerns of her city. She offered spiritual guidance, encouraged the population during difficult periods, and became a respected figure among both ordinary people and political leaders.

  Her influence demonstrates the important role that Christian women could play in the religious and social life of late Roman Gaul.

  # Protection of Paris During the Invasions

  The most famous episode of Genevieve's life concerns the arrival of Attila the Hun and his armies in Gaul during the 5th century.

  According to tradition, the inhabitants of Paris considered abandoning the city because they feared an attack. Genevieve encouraged them not to flee and urged them to place their trust in prayer rather than panic.

  She organized public prayers and encouraged the people to remain united. The Huns ultimately did not attack Paris, an event that greatly strengthened her reputation as the spiritual protector of the city.

  Historians debate the exact circumstances of this episode, but the story became central to the memory of Genevieve and contributed to her lasting association with the defense of Paris.

  # Relations with Kings and Church Leaders

  Genevieve lived during the period when the Frankish kingdom was emerging as the dominant political power in Gaul.

  Tradition associates her with several important figures of her time, including King Childeric I and his son Clovis. Her influence is sometimes linked to the Christianization of the Frankish elite, although the precise historical details remain difficult to establish.

  After the conversion of Clovis to Christianity, Paris became an increasingly important political and religious center. Genevieve's memory became connected with this transformation, representing the continuity between Roman Christian Gaul and the new Frankish Christian kingdom.

  # Death and Burial

  Genevieve died around the year 502 in Paris after a long life devoted to religious service and the care of her community.

  She was buried on the hill that later became known as the Montagne Sainte-Geneviève. A church was built around her tomb, transforming the location into an important place of pilgrimage.

  Her burial place became one of the most significant religious sites in medieval Paris. Generations of Parisians came to honor her memory and seek her protection during periods of crisis.

  # Cult and Legacy

  Saint Genevieve became the official patron saint of Paris and remained one of the city's most beloved figures throughout history.

  During epidemics, wars, and political crises, the inhabitants of Paris frequently invoked her protection. Her relics were carried in religious processions, especially during moments when the city faced serious threats.

  Her cult expanded beyond Paris, and churches throughout France were dedicated to her. She became a symbol of faith, courage, charity, and the spiritual protection of communities.

  She is celebrated liturgically on January 3.

  # Historical Significance

  Beyond the traditional accounts of miracles associated with her life, Genevieve represents an important historical moment: the transformation of Roman Gaul into a Christian society of the early Middle Ages.

  Her story highlights several major themes:

  * the growing influence of Christianity in late antique cities;
  * the role of women in religious leadership and charity;
  * the relationship between spiritual authority and political power;
  * the importance of saints as protectors of cities and communities.

  Her memory remains closely connected with the identity of Paris and with the history of Christianity in France.

  # Sources

  * *Vita Sanctae Genovefae* (*Life of Saint Genevieve*), 6th century.
  * Gregory of Tours, *History of the Franks*.
  * Studies on late antique Gaul and the Christianization of Roman society.
  * Historical works on early medieval Paris and the cult of saints.
$BIO$,
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
