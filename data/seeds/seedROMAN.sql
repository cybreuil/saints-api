-- =========================================================
-- Roman General Calendar - (EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- Color policy: RED only for explicit Martyr/Martyrs, else NULL
-- =========================================================

BEGIN;

-- 1) FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('solemnity-of-mary-the-holy-mother-of-god', 'Solemnity of Mary, the Holy Mother of God', 'marian'),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'Saints Basil the Great and Gregory Nazianzen, Bishops and Doctors of the Church', 'saint'),
('the-most-holy-name-of-jesus', 'The Most Holy Name of Jesus', 'christological'),
('the-epiphany-of-the-lord', 'The Epiphany of the Lord', 'christological'),
('saint-raymond-of-penyafort-priest', 'Saint Raymond of Penyafort, Priest', 'saint'),
('saint-hilary-bishop-and-doctor-of-the-church', 'Saint Hilary, Bishop and Doctor of the Church', 'saint'),
('saint-anthony-abbot', 'Saint Anthony, Abbot', 'saint'),
('saint-fabian-pope-and-martyr', 'Saint Fabian, Pope and Martyr', 'saint'),
('saint-sebastian-martyr', 'Saint Sebastian, Martyr', 'saint'),
('saint-agnes-virgin-and-martyr', 'Saint Agnes, Virgin and Martyr', 'saint'),
('saint-vincent-deacon-and-martyr', 'Saint Vincent, Deacon and Martyr', 'saint'),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'Saint Francis de Sales, Bishop and Doctor of the Church', 'saint'),
('the-conversion-of-saint-paul-the-apostle', 'The Conversion of Saint Paul the Apostle', 'saint'),
('saints-timothy-and-titus-bishops', 'Saints Timothy and Titus, Bishops', 'saint'),
('saint-angela-merici-virgin', 'Saint Angela Merici, Virgin', 'saint'),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'Saint Thomas Aquinas, Priest and Doctor of the Church', 'saint'),
('saint-john-bosco-priest', 'Saint John Bosco, Priest', 'saint'),
('the-baptism-of-the-lord', 'The Baptism of the Lord', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- 2) TRANSLATIONS EN
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('solemnity-of-mary-the-holy-mother-of-god', 'Solemnity of Mary, the Holy Mother of God'),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'Saints Basil the Great and Gregory Nazianzen, Bishops and Doctors of the Church'),
('the-most-holy-name-of-jesus', 'The Most Holy Name of Jesus'),
('the-epiphany-of-the-lord', 'The Epiphany of the Lord'),
('saint-raymond-of-penyafort-priest', 'Saint Raymond of Penyafort, Priest'),
('saint-hilary-bishop-and-doctor-of-the-church', 'Saint Hilary, Bishop and Doctor of the Church'),
('saint-anthony-abbot', 'Saint Anthony, Abbot'),
('saint-fabian-pope-and-martyr', 'Saint Fabian, Pope and Martyr'),
('saint-sebastian-martyr', 'Saint Sebastian, Martyr'),
('saint-agnes-virgin-and-martyr', 'Saint Agnes, Virgin and Martyr'),
('saint-vincent-deacon-and-martyr', 'Saint Vincent, Deacon and Martyr'),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'Saint Francis de Sales, Bishop and Doctor of the Church'),
('the-conversion-of-saint-paul-the-apostle', 'The Conversion of Saint Paul the Apostle'),
('saints-timothy-and-titus-bishops', 'Saints Timothy and Titus, Bishops'),
('saint-angela-merici-virgin', 'Saint Angela Merici, Virgin'),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'Saint Thomas Aquinas, Priest and Doctor of the Church'),
('saint-john-bosco-priest', 'Saint John Bosco, Priest'),
('the-baptism-of-the-lord', 'The Baptism of the Lord')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- 3) TRANSLATIONS FR
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('solemnity-of-mary-the-holy-mother-of-god', 'Sainte Marie, Mère de Dieu'),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'Saints Basile le Grand et Grégoire de Nazianze'),
('the-most-holy-name-of-jesus', 'Très Saint Nom de Jésus'),
('the-epiphany-of-the-lord', 'Épiphanie du Seigneur'),
('saint-raymond-of-penyafort-priest', 'Saint Raymond de Penyafort, prêtre'),
('saint-hilary-bishop-and-doctor-of-the-church', 'Saint Hilaire, évêque et docteur de l’Église'),
('saint-anthony-abbot', 'Saint Antoine, abbé'),
('saint-fabian-pope-and-martyr', 'Saint Fabien, pape et martyr'),
('saint-sebastian-martyr', 'Saint Sébastien, martyr'),
('saint-agnes-virgin-and-martyr', 'Sainte Agnès, vierge et martyre'),
('saint-vincent-deacon-and-martyr', 'Saint Vincent, diacre et martyr'),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'Saint François de Sales, évêque et docteur de l’Église'),
('the-conversion-of-saint-paul-the-apostle', 'Conversion de saint Paul, apôtre'),
('saints-timothy-and-titus-bishops', 'Saints Timothée et Tite, évêques'),
('saint-angela-merici-virgin', 'Sainte Angèle Merici, vierge'),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'Saint Thomas d’Aquin, prêtre et docteur de l’Église'),
('saint-john-bosco-priest', 'Saint Jean Bosco, prêtre'),
('the-baptism-of-the-lord', 'Baptême du Seigneur')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- 4) TRANSLATIONS LA
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('solemnity-of-mary-the-holy-mother-of-god', 'Sancta Dei Genetrix Maria'),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'Sancti Basilius Magnus et Gregorius Nazianzenus'),
('the-most-holy-name-of-jesus', 'Sanctissimi Nominis Iesu'),
('the-epiphany-of-the-lord', 'Epiphania Domini'),
('saint-raymond-of-penyafort-priest', 'Sanctus Raymundus de Penyafort, presbyter'),
('saint-hilary-bishop-and-doctor-of-the-church', 'Sanctus Hilarius, episcopus et Ecclesiae doctor'),
('saint-anthony-abbot', 'Sanctus Antonius, abbas'),
('saint-fabian-pope-and-martyr', 'Sanctus Fabianus, papa et martyr'),
('saint-sebastian-martyr', 'Sanctus Sebastianus, martyr'),
('saint-agnes-virgin-and-martyr', 'Sancta Agnes, virgo et martyr'),
('saint-vincent-deacon-and-martyr', 'Sanctus Vincentius, diaconus et martyr'),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'Sanctus Franciscus Salesius, episcopus et Ecclesiae doctor'),
('the-conversion-of-saint-paul-the-apostle', 'Conversio Sancti Pauli Apostoli'),
('saints-timothy-and-titus-bishops', 'Sancti Timotheus et Titus, episcopi'),
('saint-angela-merici-virgin', 'Sancta Angela Merici, virgo'),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'Sanctus Thomas Aquinas, presbyter et Ecclesiae doctor'),
('saint-john-bosco-priest', 'Sanctus Ioannes Bosco, presbyter'),
('the-baptism-of-the-lord', 'Baptisma Domini')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- 5) FIXED DATE RULES
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, notes)
SELECT f.id, c.id, 'fixed', x.month, x.day, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('solemnity-of-mary-the-holy-mother-of-god', 1, 1, 'Wikipedia fixed'),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 1, 2, 'Wikipedia fixed'),
('the-most-holy-name-of-jesus', 1, 3, 'Wikipedia fixed'),
('the-epiphany-of-the-lord', 1, 6, 'Wikipedia fixed (local transfer handled by calendar rules)'),
('saint-raymond-of-penyafort-priest', 1, 7, 'Wikipedia fixed'),
('saint-hilary-bishop-and-doctor-of-the-church', 1, 13, 'Wikipedia fixed'),
('saint-anthony-abbot', 1, 17, 'Wikipedia fixed'),
('saint-fabian-pope-and-martyr', 1, 20, 'Wikipedia fixed'),
('saint-sebastian-martyr', 1, 20, 'Wikipedia fixed'),
('saint-agnes-virgin-and-martyr', 1, 21, 'Wikipedia fixed'),
('saint-vincent-deacon-and-martyr', 1, 22, 'Wikipedia fixed'),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 1, 24, 'Wikipedia fixed'),
('the-conversion-of-saint-paul-the-apostle', 1, 25, 'Wikipedia fixed'),
('saints-timothy-and-titus-bishops', 1, 26, 'Wikipedia fixed'),
('saint-angela-merici-virgin', 1, 27, 'Wikipedia fixed'),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 1, 28, 'Wikipedia fixed'),
('saint-john-bosco-priest', 1, 31, 'Wikipedia fixed')
) AS x(slug, month, day, notes)
ON f.slug = x.slug;

-- January movable rule:
-- Sunday after 6 January: The Baptism of the Lord
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'movable', 'SUNDAY_AFTER_EPIPHANY', 0, 'Wikipedia movable'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
WHERE f.slug = 'the-baptism-of-the-lord';

-- 6) CELEBRATIONS
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('solemnity-of-mary-the-holy-mother-of-god', 'SOLEMNITY', NULL, FALSE, 'Wikipedia'),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'MEM_OBL', NULL, FALSE, 'Wikipedia'),
('the-most-holy-name-of-jesus', 'MEM_OPT', NULL, TRUE, 'Wikipedia'),
('the-epiphany-of-the-lord', 'SOLEMNITY', NULL, FALSE, 'Wikipedia'),
('saint-raymond-of-penyafort-priest', 'MEM_OPT', NULL, TRUE, 'Wikipedia'),
('saint-hilary-bishop-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE, 'Wikipedia'),
('saint-anthony-abbot', 'MEM_OBL', NULL, FALSE, 'Wikipedia'),
('saint-fabian-pope-and-martyr', 'MEM_OPT', 'RED', TRUE, 'Wikipedia'),
('saint-sebastian-martyr', 'MEM_OPT', 'RED', TRUE, 'Wikipedia'),
('saint-agnes-virgin-and-martyr', 'MEM_OBL', 'RED', FALSE, 'Wikipedia'),
('saint-vincent-deacon-and-martyr', 'MEM_OPT', 'RED', TRUE, 'Wikipedia'),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE, 'Wikipedia'),
('the-conversion-of-saint-paul-the-apostle', 'FEAST', NULL, FALSE, 'Wikipedia'),
('saints-timothy-and-titus-bishops', 'MEM_OBL', NULL, FALSE, 'Wikipedia'),
('saint-angela-merici-virgin', 'MEM_OPT', NULL, TRUE, 'Wikipedia'),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE, 'Wikipedia'),
('saint-john-bosco-priest', 'MEM_OBL', NULL, FALSE, 'Wikipedia'),
('the-baptism-of-the-lord', 'FEAST', NULL, FALSE, 'Wikipedia movable')
) AS x(slug, rank_code, color_code, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - February (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('the-presentation-of-the-lord', 'The Presentation of the Lord', 'christological'),
('saint-blaise-bishop-and-martyr', 'Saint Blaise, Bishop and Martyr', 'saint'),
('saint-ansgar-bishop', 'Saint Ansgar, Bishop', 'saint'),
('saint-agatha-virgin-and-martyr', 'Saint Agatha, Virgin and Martyr', 'saint'),
('saints-paul-miki-and-companions-martyrs', 'Saints Paul Miki and Companions, Martyrs', 'saint'),
('saint-jerome-emiliani-priest', 'Saint Jerome Emiliani, Priest', 'saint'),
('saint-josephine-bakhita-virgin', 'Saint Josephine Bakhita, Virgin', 'saint'),
('saint-scholastica-virgin', 'Saint Scholastica, Virgin', 'saint'),
('our-lady-of-lourdes', 'Our Lady of Lourdes', 'marian'),
('saints-cyril-monk-and-methodius-bishop', 'Saints Cyril, Monk, and Methodius, Bishop', 'saint'),
('the-seven-holy-founders-of-the-servite-order', 'The Seven Holy Founders of the Servite Order', 'saint'),
('saint-peter-damian-bishop-and-doctor-of-the-church', 'Saint Peter Damian, Bishop and Doctor of the Church', 'saint'),
('the-chair-of-saint-peter-the-apostle', 'The Chair of Saint Peter the Apostle', 'saint'),
('saint-polycarp-bishop-and-martyr', 'Saint Polycarp, Bishop and Martyr', 'saint'),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 'Saint Gregory of Narek, Abbot and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('the-presentation-of-the-lord', 'The Presentation of the Lord'),
('saint-blaise-bishop-and-martyr', 'Saint Blaise, Bishop and Martyr'),
('saint-ansgar-bishop', 'Saint Ansgar, Bishop'),
('saint-agatha-virgin-and-martyr', 'Saint Agatha, Virgin and Martyr'),
('saints-paul-miki-and-companions-martyrs', 'Saints Paul Miki and Companions, Martyrs'),
('saint-jerome-emiliani-priest', 'Saint Jerome Emiliani, Priest'),
('saint-josephine-bakhita-virgin', 'Saint Josephine Bakhita, Virgin'),
('saint-scholastica-virgin', 'Saint Scholastica, Virgin'),
('our-lady-of-lourdes', 'Our Lady of Lourdes'),
('saints-cyril-monk-and-methodius-bishop', 'Saints Cyril, Monk, and Methodius, Bishop'),
('the-seven-holy-founders-of-the-servite-order', 'The Seven Holy Founders of the Servite Order'),
('saint-peter-damian-bishop-and-doctor-of-the-church', 'Saint Peter Damian, Bishop and Doctor of the Church'),
('the-chair-of-saint-peter-the-apostle', 'The Chair of Saint Peter the Apostle'),
('saint-polycarp-bishop-and-martyr', 'Saint Polycarp, Bishop and Martyr'),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 'Saint Gregory of Narek, Abbot and Doctor of the Church')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('the-presentation-of-the-lord', 'Présentation du Seigneur'),
('saint-blaise-bishop-and-martyr', 'Saint Blaise, évêque et martyr'),
('saint-ansgar-bishop', 'Saint Anschaire, évêque'),
('saint-agatha-virgin-and-martyr', 'Sainte Agathe, vierge et martyre'),
('saints-paul-miki-and-companions-martyrs', 'Saints Paul Miki et ses compagnons, martyrs'),
('saint-jerome-emiliani-priest', 'Saint Jérôme Emilien, prêtre'),
('saint-josephine-bakhita-virgin', 'Sainte Joséphine Bakhita, vierge'),
('saint-scholastica-virgin', 'Sainte Scholastique, vierge'),
('our-lady-of-lourdes', 'Notre-Dame de Lourdes'),
('saints-cyril-monk-and-methodius-bishop', 'Saints Cyrille, moine, et Méthode, évêque'),
('the-seven-holy-founders-of-the-servite-order', 'Les sept saints fondateurs de l’Ordre des Servites'),
('saint-peter-damian-bishop-and-doctor-of-the-church', 'Saint Pierre Damien, évêque et docteur de l’Église'),
('the-chair-of-saint-peter-the-apostle', 'La Chaire de saint Pierre, apôtre'),
('saint-polycarp-bishop-and-martyr', 'Saint Polycarpe, évêque et martyr'),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 'Saint Grégoire de Narek, abbé et docteur de l’Église')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('the-presentation-of-the-lord', 'Praesentatio Domini'),
('saint-blaise-bishop-and-martyr', 'Sanctus Blasius, episcopus et martyr'),
('saint-ansgar-bishop', 'Sanctus Ansgarius, episcopus'),
('saint-agatha-virgin-and-martyr', 'Sancta Agatha, virgo et martyr'),
('saints-paul-miki-and-companions-martyrs', 'Sancti Paulus Miki et Socii, martyres'),
('saint-jerome-emiliani-priest', 'Sanctus Hieronymus Aemilianus, presbyter'),
('saint-josephine-bakhita-virgin', 'Sancta Iosephina Bakhita, virgo'),
('saint-scholastica-virgin', 'Sancta Scholastica, virgo'),
('our-lady-of-lourdes', 'Beata Maria Virgo de Lourdes'),
('saints-cyril-monk-and-methodius-bishop', 'Sancti Cyrillus monachus et Methodius episcopus'),
('the-seven-holy-founders-of-the-servite-order', 'Septem Sancti Fundatores Ordinis Servorum Mariae'),
('saint-peter-damian-bishop-and-doctor-of-the-church', 'Sanctus Petrus Damiani, episcopus et Ecclesiae doctor'),
('the-chair-of-saint-peter-the-apostle', 'Cathedra Sancti Petri Apostoli'),
('saint-polycarp-bishop-and-martyr', 'Sanctus Polycarpus, episcopus et martyr'),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 'Sanctus Gregorius Narekensis, abbas et Ecclesiae doctor')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FIXED date rules
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, notes)
SELECT f.id, c.id, 'fixed', x.month, x.day, 'Wikipedia fixed'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('the-presentation-of-the-lord', 2, 2),
('saint-blaise-bishop-and-martyr', 2, 3),
('saint-ansgar-bishop', 2, 3),
('saint-agatha-virgin-and-martyr', 2, 5),
('saints-paul-miki-and-companions-martyrs', 2, 6),
('saint-jerome-emiliani-priest', 2, 8),
('saint-josephine-bakhita-virgin', 2, 8),
('saint-scholastica-virgin', 2, 10),
('our-lady-of-lourdes', 2, 11),
('saints-cyril-monk-and-methodius-bishop', 2, 14),
('the-seven-holy-founders-of-the-servite-order', 2, 17),
('saint-peter-damian-bishop-and-doctor-of-the-church', 2, 21),
('the-chair-of-saint-peter-the-apostle', 2, 22),
('saint-polycarp-bishop-and-martyr', 2, 23),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 2, 27)
) AS x(slug, month, day)
ON f.slug = x.slug;

-- Celebrations (RED only explicit martyrs)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, x.is_optional, 'Wikipedia'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
JOIN (VALUES
('the-presentation-of-the-lord', 'FEAST', NULL, FALSE),
('saint-blaise-bishop-and-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-ansgar-bishop', 'MEM_OPT', NULL, TRUE),
('saint-agatha-virgin-and-martyr', 'MEM_OBL', 'RED', FALSE),
('saints-paul-miki-and-companions-martyrs', 'MEM_OBL', 'RED', FALSE),
('saint-jerome-emiliani-priest', 'MEM_OPT', NULL, TRUE),
('saint-josephine-bakhita-virgin', 'MEM_OPT', NULL, TRUE),
('saint-scholastica-virgin', 'MEM_OBL', NULL, FALSE),
('our-lady-of-lourdes', 'MEM_OPT', NULL, TRUE),
('saints-cyril-monk-and-methodius-bishop', 'MEM_OBL', NULL, FALSE),
('the-seven-holy-founders-of-the-servite-order', 'MEM_OPT', NULL, TRUE),
('saint-peter-damian-bishop-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('the-chair-of-saint-peter-the-apostle', 'FEAST', NULL, FALSE),
('saint-polycarp-bishop-and-martyr', 'MEM_OBL', 'RED', FALSE),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE)
) AS x(slug, rank_code, color_code, is_optional)
ON f.slug = x.slug
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - March (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- With movable handling for:
--   - Saint Joseph (March 19) if overlaps Holy Week / Easter Octave
--   - Annunciation (March 25) if overlaps Holy Week / Easter Octave
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-casimir', 'Saint Casimir', 'saint'),
('saints-perpetua-and-felicity-martyrs', 'Saints Perpetua and Felicity, Martyrs', 'saint'),
('saint-john-of-god-religious', 'Saint John of God, Religious', 'saint'),
('saint-frances-of-rome-religious', 'Saint Frances of Rome, Religious', 'saint'),
('saint-patrick-bishop', 'Saint Patrick, Bishop', 'saint'),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 'Saint Cyril of Jerusalem, Bishop and Doctor of the Church', 'saint'),
('saint-joseph-spouse-of-the-blessed-virgin-mary', 'Saint Joseph, Spouse of the Blessed Virgin Mary', 'saint'),
('saint-turibius-of-mongrovejo-bishop', 'Saint Turibius of Mongrovejo, Bishop', 'saint'),
('the-annunciation-of-the-lord', 'The Annunciation of the Lord', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-casimir', 'Saint Casimir'),
('saints-perpetua-and-felicity-martyrs', 'Saints Perpetua and Felicity, Martyrs'),
('saint-john-of-god-religious', 'Saint John of God, Religious'),
('saint-frances-of-rome-religious', 'Saint Frances of Rome, Religious'),
('saint-patrick-bishop', 'Saint Patrick, Bishop'),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 'Saint Cyril of Jerusalem, Bishop and Doctor of the Church'),
('saint-joseph-spouse-of-the-blessed-virgin-mary', 'Saint Joseph, Spouse of the Blessed Virgin Mary'),
('saint-turibius-of-mongrovejo-bishop', 'Saint Turibius of Mongrovejo, Bishop'),
('the-annunciation-of-the-lord', 'The Annunciation of the Lord')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-casimir', 'Saint Casimir'),
('saints-perpetua-and-felicity-martyrs', 'Saintes Perpétue et Félicité, martyres'),
('saint-john-of-god-religious', 'Saint Jean de Dieu, religieux'),
('saint-frances-of-rome-religious', 'Sainte Françoise de Rome, religieuse'),
('saint-patrick-bishop', 'Saint Patrick, évêque'),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 'Saint Cyrille de Jérusalem, évêque et docteur de l’Église'),
('saint-joseph-spouse-of-the-blessed-virgin-mary', 'Saint Joseph, époux de la Bienheureuse Vierge Marie'),
('saint-turibius-of-mongrovejo-bishop', 'Saint Turibe de Mogrovejo, évêque'),
('the-annunciation-of-the-lord', 'Annonciation du Seigneur')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-casimir', 'Sanctus Casimirus'),
('saints-perpetua-and-felicity-martyrs', 'Sanctae Perpetua et Felicitas, martyres'),
('saint-john-of-god-religious', 'Sanctus Ioannes a Deo, religiosus'),
('saint-frances-of-rome-religious', 'Sancta Francisca Romana, religiosa'),
('saint-patrick-bishop', 'Sanctus Patricius, episcopus'),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 'Sanctus Cyrillus Hierosolymitanus, episcopus et Ecclesiae doctor'),
('saint-joseph-spouse-of-the-blessed-virgin-mary', 'Sanctus Ioseph, Sponsus Beatae Mariae Virginis'),
('saint-turibius-of-mongrovejo-bishop', 'Sanctus Turibius de Mogrovejo, episcopus'),
('the-annunciation-of-the-lord', 'Annuntiatio Domini')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FIXED rules (normal fixed dates)
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, notes)
SELECT f.id, c.id, 'fixed', x.month, x.day, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-casimir', 3, 4, 'Wikipedia fixed'),
('saints-perpetua-and-felicity-martyrs', 3, 7, 'Wikipedia fixed'),
('saint-john-of-god-religious', 3, 8, 'Wikipedia fixed'),
('saint-frances-of-rome-religious', 3, 9, 'Wikipedia fixed'),
('saint-patrick-bishop', 3, 17, 'Wikipedia fixed'),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 3, 18, 'Wikipedia fixed'),
('saint-joseph-spouse-of-the-blessed-virgin-mary', 3, 19, 'Wikipedia fixed; fallback when no conflict'),
('saint-turibius-of-mongrovejo-bishop', 3, 23, 'Wikipedia fixed'),
('the-annunciation-of-the-lord', 3, 25, 'Wikipedia fixed; fallback when no conflict')
) AS x(slug, month, day, notes)
ON f.slug = x.slug;

-- MOVABLE exceptions as rules (to be applied by API engine):
-- Saint Joseph: if between Palm Sunday and Divine Mercy Sunday (inclusive), move to Palm Sunday - 1 day.
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'movable', 'PALM_SUNDAY', -1, 'Transfer rule if 19 March in Holy Week/Easter Octave'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
WHERE f.slug = 'saint-joseph-spouse-of-the-blessed-virgin-mary';

-- Annunciation: if between Palm Sunday and Divine Mercy Sunday (inclusive), move to Divine Mercy Sunday + 1 day.
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'movable', 'DIVINE_MERCY_SUNDAY', 1, 'Transfer rule if 25 March in Holy Week/Easter Octave'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
WHERE f.slug = 'the-annunciation-of-the-lord';

-- Celebrations
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, x.is_optional, 'Wikipedia'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
JOIN (VALUES
('saint-casimir', 'MEM_OPT', NULL, TRUE),
('saints-perpetua-and-felicity-martyrs', 'MEM_OBL', 'RED', FALSE),
('saint-john-of-god-religious', 'MEM_OPT', NULL, TRUE),
('saint-frances-of-rome-religious', 'MEM_OPT', NULL, TRUE),
('saint-patrick-bishop', 'MEM_OPT', NULL, TRUE),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saint-joseph-spouse-of-the-blessed-virgin-mary', 'SOLEMNITY', NULL, FALSE),
('saint-turibius-of-mongrovejo-bishop', 'MEM_OPT', NULL, TRUE),
('the-annunciation-of-the-lord', 'SOLEMNITY', NULL, FALSE)
) AS x(slug, rank_code, color_code, is_optional)
ON f.slug = x.slug
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - April (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-francis-of-paola-hermit', 'Saint Francis of Paola, Hermit', 'saint'),
('saint-isidore-bishop-and-doctor-of-the-church', 'Saint Isidore, Bishop and Doctor of the Church', 'saint'),
('saint-vincent-ferrer-priest', 'Saint Vincent Ferrer, Priest', 'saint'),
('saint-john-baptist-de-la-salle-priest', 'Saint John Baptist de la Salle, Priest', 'saint'),
('saint-stanislaus-bishop-and-martyr', 'Saint Stanislaus, Bishop and Martyr', 'saint'),
('saint-martin-i-pope-and-martyr', 'Saint Martin I, Pope and Martyr', 'saint'),
('saint-anselm-bishop-and-doctor-of-the-church', 'Saint Anselm, Bishop and Doctor of the Church', 'saint'),
('saint-george-martyr', 'Saint George, Martyr', 'saint'),
('saint-adalbert-bishop-and-martyr', 'Saint Adalbert, Bishop and Martyr', 'saint'),
('saint-fidelis-of-sigmaringen-priest-and-martyr', 'Saint Fidelis of Sigmaringen, Priest and Martyr', 'saint'),
('saint-mark-evangelist', 'Saint Mark, Evangelist', 'saint'),
('saint-peter-chanel-priest-and-martyr', 'Saint Peter Chanel, Priest and Martyr', 'saint'),
('saint-louis-grignon-de-montfort-priest', 'Saint Louis Grignon de Montfort, Priest', 'saint'),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 'Saint Catherine of Siena, Virgin and Doctor of the Church', 'saint'),
('saint-pius-v-pope', 'Saint Pius V, Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-francis-of-paola-hermit', 'Saint Francis of Paola, Hermit'),
('saint-isidore-bishop-and-doctor-of-the-church', 'Saint Isidore, Bishop and Doctor of the Church'),
('saint-vincent-ferrer-priest', 'Saint Vincent Ferrer, Priest'),
('saint-john-baptist-de-la-salle-priest', 'Saint John Baptist de la Salle, Priest'),
('saint-stanislaus-bishop-and-martyr', 'Saint Stanislaus, Bishop and Martyr'),
('saint-martin-i-pope-and-martyr', 'Saint Martin I, Pope and Martyr'),
('saint-anselm-bishop-and-doctor-of-the-church', 'Saint Anselm, Bishop and Doctor of the Church'),
('saint-george-martyr', 'Saint George, Martyr'),
('saint-adalbert-bishop-and-martyr', 'Saint Adalbert, Bishop and Martyr'),
('saint-fidelis-of-sigmaringen-priest-and-martyr', 'Saint Fidelis of Sigmaringen, Priest and Martyr'),
('saint-mark-evangelist', 'Saint Mark, Evangelist'),
('saint-peter-chanel-priest-and-martyr', 'Saint Peter Chanel, Priest and Martyr'),
('saint-louis-grignon-de-montfort-priest', 'Saint Louis Grignon de Montfort, Priest'),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 'Saint Catherine of Siena, Virgin and Doctor of the Church'),
('saint-pius-v-pope', 'Saint Pius V, Pope')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-francis-of-paola-hermit', 'Saint François de Paule, ermite'),
('saint-isidore-bishop-and-doctor-of-the-church', 'Saint Isidore, évêque et docteur de l’Église'),
('saint-vincent-ferrer-priest', 'Saint Vincent Ferrier, prêtre'),
('saint-john-baptist-de-la-salle-priest', 'Saint Jean-Baptiste de La Salle, prêtre'),
('saint-stanislaus-bishop-and-martyr', 'Saint Stanislas, évêque et martyr'),
('saint-martin-i-pope-and-martyr', 'Saint Martin Ier, pape et martyr'),
('saint-anselm-bishop-and-doctor-of-the-church', 'Saint Anselme, évêque et docteur de l’Église'),
('saint-george-martyr', 'Saint Georges, martyr'),
('saint-adalbert-bishop-and-martyr', 'Saint Adalbert, évêque et martyr'),
('saint-fidelis-of-sigmaringen-priest-and-martyr', 'Saint Fidèle de Sigmaringen, prêtre et martyr'),
('saint-mark-evangelist', 'Saint Marc, évangéliste'),
('saint-peter-chanel-priest-and-martyr', 'Saint Pierre Chanel, prêtre et martyr'),
('saint-louis-grignon-de-montfort-priest', 'Saint Louis-Marie Grignion de Montfort, prêtre'),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 'Sainte Catherine de Sienne, vierge et docteur de l’Église'),
('saint-pius-v-pope', 'Saint Pie V, pape')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-francis-of-paola-hermit', 'Sanctus Franciscus de Paula, eremita'),
('saint-isidore-bishop-and-doctor-of-the-church', 'Sanctus Isidorus, episcopus et Ecclesiae doctor'),
('saint-vincent-ferrer-priest', 'Sanctus Vincentius Ferrerius, presbyter'),
('saint-john-baptist-de-la-salle-priest', 'Sanctus Ioannes Baptista de La Salle, presbyter'),
('saint-stanislaus-bishop-and-martyr', 'Sanctus Stanislaus, episcopus et martyr'),
('saint-martin-i-pope-and-martyr', 'Sanctus Martinus I, papa et martyr'),
('saint-anselm-bishop-and-doctor-of-the-church', 'Sanctus Anselmus, episcopus et Ecclesiae doctor'),
('saint-george-martyr', 'Sanctus Georgius, martyr'),
('saint-adalbert-bishop-and-martyr', 'Sanctus Adalbertus, episcopus et martyr'),
('saint-fidelis-of-sigmaringen-priest-and-martyr', 'Sanctus Fidelis de Sigmaringen, presbyter et martyr'),
('saint-mark-evangelist', 'Sanctus Marcus, evangelista'),
('saint-peter-chanel-priest-and-martyr', 'Sanctus Petrus Chanel, presbyter et martyr'),
('saint-louis-grignon-de-montfort-priest', 'Sanctus Ludovicus Maria Grignion de Montfort, presbyter'),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 'Sancta Catharina Senensis, virgo et Ecclesiae doctor'),
('saint-pius-v-pope', 'Sanctus Pius V, papa')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FIXED date rules
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, notes)
SELECT f.id, c.id, 'fixed', x.month, x.day, 'Wikipedia fixed'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-francis-of-paola-hermit', 4, 2),
('saint-isidore-bishop-and-doctor-of-the-church', 4, 4),
('saint-vincent-ferrer-priest', 4, 5),
('saint-john-baptist-de-la-salle-priest', 4, 7),
('saint-stanislaus-bishop-and-martyr', 4, 11),
('saint-martin-i-pope-and-martyr', 4, 13),
('saint-anselm-bishop-and-doctor-of-the-church', 4, 21),
('saint-george-martyr', 4, 23),
('saint-adalbert-bishop-and-martyr', 4, 23),
('saint-fidelis-of-sigmaringen-priest-and-martyr', 4, 24),
('saint-mark-evangelist', 4, 25),
('saint-peter-chanel-priest-and-martyr', 4, 28),
('saint-louis-grignon-de-montfort-priest', 4, 28),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 4, 29),
('saint-pius-v-pope', 4, 30)
) AS x(slug, month, day)
ON f.slug = x.slug;

-- Celebrations (RED only explicit martyrs)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, x.is_optional, 'Wikipedia'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
JOIN (VALUES
('saint-francis-of-paola-hermit', 'MEM_OPT', NULL, TRUE),
('saint-isidore-bishop-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saint-vincent-ferrer-priest', 'MEM_OPT', NULL, TRUE),
('saint-john-baptist-de-la-salle-priest', 'MEM_OBL', NULL, FALSE),
('saint-stanislaus-bishop-and-martyr', 'MEM_OBL', 'RED', FALSE),
('saint-martin-i-pope-and-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-anselm-bishop-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saint-george-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-adalbert-bishop-and-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-fidelis-of-sigmaringen-priest-and-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-mark-evangelist', 'FEAST', NULL, FALSE),
('saint-peter-chanel-priest-and-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-louis-grignon-de-montfort-priest', 'MEM_OPT', NULL, TRUE),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE),
('saint-pius-v-pope', 'MEM_OPT', NULL, TRUE)
) AS x(slug, rank_code, color_code, is_optional)
ON f.slug = x.slug
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - May (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- Includes movable rules from source list:
--   - Monday after Pentecost: Mary, Mother of the Church (memorial)
--   - First Sunday after Pentecost: Trinity Sunday (solemnity)
--   - Thursday after Holy Trinity: Corpus Christi (solemnity)
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-joseph-the-worker', 'Saint Joseph the Worker', 'saint'),
('saint-athanasius-bishop-and-doctor-of-the-church', 'Saint Athanasius, Bishop and Doctor of the Church', 'saint'),
('saints-philip-and-james-apostles', 'Saints Philip and James, Apostles', 'saint'),
('saint-john-of-avila-priest-and-doctor-of-the-church', 'Saint John of Ávila, Priest and Doctor of the Church', 'saint'),
('saints-nereus-and-achilleus-martyrs', 'Saints Nereus and Achilleus, Martyrs', 'saint'),
('saint-pancras-martyr', 'Saint Pancras, Martyr', 'saint'),
('our-lady-of-fatima', 'Our Lady of Fatima', 'marian'),
('saint-matthias-apostle', 'Saint Matthias, Apostle', 'saint'),
('saint-john-i-pope-and-martyr', 'Saint John I, Pope and Martyr', 'saint'),
('saint-bernardine-of-siena-priest', 'Saint Bernardine of Siena, Priest', 'saint'),
('saint-christopher-magallanes-priest-and-companions-martyrs', 'Saint Christopher Magallanes, Priest, and Companions, Martyrs', 'saint'),
('saint-rita-of-cascia-religious', 'Saint Rita of Cascia, Religious', 'saint'),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', 'Saint Bede the Venerable, Priest and Doctor of the Church', 'saint'),
('saint-gregory-vii-pope', 'Saint Gregory VII, Pope', 'saint'),
('saint-mary-magdalene-de-pazzi-virgin', 'Saint Mary Magdalene de’ Pazzi, Virgin', 'saint'),
('saint-philip-neri-priest', 'Saint Philip Neri, Priest', 'saint'),
('saint-augustine-of-canterbury-bishop', 'Saint Augustine of Canterbury, Bishop', 'saint'),
('saint-paul-vi-pope', 'Saint Paul VI, Pope', 'saint'),
('the-visitation-of-the-blessed-virgin-mary', 'The Visitation of the Blessed Virgin Mary', 'marian'),
('blessed-virgin-mary-mother-of-the-church', 'Blessed Virgin Mary, Mother of the Church', 'marian'),
('the-most-holy-trinity', 'The Most Holy Trinity', 'christological'),
('the-most-holy-body-and-blood-of-christ', 'The Most Holy Body and Blood of Christ', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-joseph-the-worker', 'Saint Joseph the Worker'),
('saint-athanasius-bishop-and-doctor-of-the-church', 'Saint Athanasius, Bishop and Doctor of the Church'),
('saints-philip-and-james-apostles', 'Saints Philip and James, Apostles'),
('saint-john-of-avila-priest-and-doctor-of-the-church', 'Saint John of Ávila, Priest and Doctor of the Church'),
('saints-nereus-and-achilleus-martyrs', 'Saints Nereus and Achilleus, Martyrs'),
('saint-pancras-martyr', 'Saint Pancras, Martyr'),
('our-lady-of-fatima', 'Our Lady of Fatima'),
('saint-matthias-apostle', 'Saint Matthias, Apostle'),
('saint-john-i-pope-and-martyr', 'Saint John I, Pope and Martyr'),
('saint-bernardine-of-siena-priest', 'Saint Bernardine of Siena, Priest'),
('saint-christopher-magallanes-priest-and-companions-martyrs', 'Saint Christopher Magallanes, Priest, and Companions, Martyrs'),
('saint-rita-of-cascia-religious', 'Saint Rita of Cascia, Religious'),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', 'Saint Bede the Venerable, Priest and Doctor of the Church'),
('saint-gregory-vii-pope', 'Saint Gregory VII, Pope'),
('saint-mary-magdalene-de-pazzi-virgin', 'Saint Mary Magdalene de’ Pazzi, Virgin'),
('saint-philip-neri-priest', 'Saint Philip Neri, Priest'),
('saint-augustine-of-canterbury-bishop', 'Saint Augustine of Canterbury, Bishop'),
('saint-paul-vi-pope', 'Saint Paul VI, Pope'),
('the-visitation-of-the-blessed-virgin-mary', 'The Visitation of the Blessed Virgin Mary'),
('blessed-virgin-mary-mother-of-the-church', 'Blessed Virgin Mary, Mother of the Church'),
('the-most-holy-trinity', 'The Most Holy Trinity'),
('the-most-holy-body-and-blood-of-christ', 'The Most Holy Body and Blood of Christ')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-joseph-the-worker', 'Saint Joseph, travailleur'),
('saint-athanasius-bishop-and-doctor-of-the-church', 'Saint Athanase, évêque et docteur de l’Église'),
('saints-philip-and-james-apostles', 'Saints Philippe et Jacques, apôtres'),
('saint-john-of-avila-priest-and-doctor-of-the-church', 'Saint Jean d’Avila, prêtre et docteur de l’Église'),
('saints-nereus-and-achilleus-martyrs', 'Saints Nérée et Achillée, martyrs'),
('saint-pancras-martyr', 'Saint Pancrace, martyr'),
('our-lady-of-fatima', 'Notre-Dame de Fatima'),
('saint-matthias-apostle', 'Saint Matthias, apôtre'),
('saint-john-i-pope-and-martyr', 'Saint Jean Ier, pape et martyr'),
('saint-bernardine-of-siena-priest', 'Saint Bernardin de Sienne, prêtre'),
('saint-christopher-magallanes-priest-and-companions-martyrs', 'Saint Christophe Magallanès, prêtre, et ses compagnons, martyrs'),
('saint-rita-of-cascia-religious', 'Sainte Rita de Cascia, religieuse'),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', 'Saint Bède le Vénérable, prêtre et docteur de l’Église'),
('saint-gregory-vii-pope', 'Saint Grégoire VII, pape'),
('saint-mary-magdalene-de-pazzi-virgin', 'Sainte Marie-Madeleine de Pazzi, vierge'),
('saint-philip-neri-priest', 'Saint Philippe Néri, prêtre'),
('saint-augustine-of-canterbury-bishop', 'Saint Augustin de Cantorbéry, évêque'),
('saint-paul-vi-pope', 'Saint Paul VI, pape'),
('the-visitation-of-the-blessed-virgin-mary', 'Visitation de la Bienheureuse Vierge Marie'),
('blessed-virgin-mary-mother-of-the-church', 'Bienheureuse Vierge Marie, Mère de l’Église'),
('the-most-holy-trinity', 'La Très Sainte Trinité'),
('the-most-holy-body-and-blood-of-christ', 'Le Très Saint Corps et Sang du Christ')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-joseph-the-worker', 'Sanctus Ioseph Opifex'),
('saint-athanasius-bishop-and-doctor-of-the-church', 'Sanctus Athanasius, episcopus et Ecclesiae doctor'),
('saints-philip-and-james-apostles', 'Sancti Philippus et Iacobus, Apostoli'),
('saint-john-of-avila-priest-and-doctor-of-the-church', 'Sanctus Ioannes de Avila, presbyter et Ecclesiae doctor'),
('saints-nereus-and-achilleus-martyrs', 'Sancti Nereus et Achilleus, martyres'),
('saint-pancras-martyr', 'Sanctus Pancratius, martyr'),
('our-lady-of-fatima', 'Beata Maria Virgo Fatimae'),
('saint-matthias-apostle', 'Sanctus Matthias, Apostolus'),
('saint-john-i-pope-and-martyr', 'Sanctus Ioannes I, papa et martyr'),
('saint-bernardine-of-siena-priest', 'Sanctus Bernardinus Senensis, presbyter'),
('saint-christopher-magallanes-priest-and-companions-martyrs', 'Sanctus Christophorus Magallanes, presbyter, et Socii, martyres'),
('saint-rita-of-cascia-religious', 'Sancta Rita a Cascia, religiosa'),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', 'Sanctus Beda Venerabilis, presbyter et Ecclesiae doctor'),
('saint-gregory-vii-pope', 'Sanctus Gregorius VII, papa'),
('saint-mary-magdalene-de-pazzi-virgin', 'Sancta Maria Magdalena de Pazzi, virgo'),
('saint-philip-neri-priest', 'Sanctus Philippus Neri, presbyter'),
('saint-augustine-of-canterbury-bishop', 'Sanctus Augustinus Cantuariensis, episcopus'),
('saint-paul-vi-pope', 'Sanctus Paulus VI, papa'),
('the-visitation-of-the-blessed-virgin-mary', 'Visitatio Beatae Mariae Virginis'),
('blessed-virgin-mary-mother-of-the-church', 'Beata Maria Virgo, Mater Ecclesiae'),
('the-most-holy-trinity', 'Sanctissima Trinitas'),
('the-most-holy-body-and-blood-of-christ', 'Sanctissimi Corporis et Sanguinis Christi')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FIXED date rules
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, notes)
SELECT f.id, c.id, 'fixed', x.month, x.day, 'Wikipedia fixed'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-joseph-the-worker', 5, 1),
('saint-athanasius-bishop-and-doctor-of-the-church', 5, 2),
('saints-philip-and-james-apostles', 5, 3),
('saint-john-of-avila-priest-and-doctor-of-the-church', 5, 10),
('saints-nereus-and-achilleus-martyrs', 5, 12),
('saint-pancras-martyr', 5, 12),
('our-lady-of-fatima', 5, 13),
('saint-matthias-apostle', 5, 14),
('saint-john-i-pope-and-martyr', 5, 18),
('saint-bernardine-of-siena-priest', 5, 20),
('saint-christopher-magallanes-priest-and-companions-martyrs', 5, 21),
('saint-rita-of-cascia-religious', 5, 22),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', 5, 25),
('saint-gregory-vii-pope', 5, 25),
('saint-mary-magdalene-de-pazzi-virgin', 5, 25),
('saint-philip-neri-priest', 5, 26),
('saint-augustine-of-canterbury-bishop', 5, 27),
('saint-paul-vi-pope', 5, 29),
('the-visitation-of-the-blessed-virgin-mary', 5, 31)
) AS x(slug, month, day)
ON f.slug = x.slug;

-- MOVABLE rules from source list

-- Monday after Pentecost: Blessed Virgin Mary, Mother of the Church (memorial)
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'movable', 'PENTECOST', 1, 'Wikipedia movable'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
WHERE f.slug = 'blessed-virgin-mary-mother-of-the-church';

-- First Sunday after Pentecost: Most Holy Trinity (solemnity)
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'movable', 'PENTECOST', 7, 'Wikipedia movable'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
WHERE f.slug = 'the-most-holy-trinity';

-- Thursday after Holy Trinity: Corpus Christi (solemnity)
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'movable', 'TRINITY_SUNDAY', 4, 'Wikipedia movable (local transfer possible)'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
WHERE f.slug = 'the-most-holy-body-and-blood-of-christ';

-- Celebrations (RED only explicit martyrs)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, x.is_optional, 'Wikipedia'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
JOIN (VALUES
('saint-joseph-the-worker', 'MEM_OPT', NULL, TRUE),
('saint-athanasius-bishop-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE),
('saints-philip-and-james-apostles', 'FEAST', NULL, FALSE),
('saint-john-of-avila-priest-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saints-nereus-and-achilleus-martyrs', 'MEM_OPT', 'RED', TRUE),
('saint-pancras-martyr', 'MEM_OPT', 'RED', TRUE),
('our-lady-of-fatima', 'MEM_OPT', NULL, TRUE),
('saint-matthias-apostle', 'FEAST', NULL, FALSE),
('saint-john-i-pope-and-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-bernardine-of-siena-priest', 'MEM_OPT', NULL, TRUE),
('saint-christopher-magallanes-priest-and-companions-martyrs', 'MEM_OPT', 'RED', TRUE),
('saint-rita-of-cascia-religious', 'MEM_OPT', NULL, TRUE),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saint-gregory-vii-pope', 'MEM_OPT', NULL, TRUE),
('saint-mary-magdalene-de-pazzi-virgin', 'MEM_OPT', NULL, TRUE),
('saint-philip-neri-priest', 'MEM_OBL', NULL, FALSE),
('saint-augustine-of-canterbury-bishop', 'MEM_OPT', NULL, TRUE),
('saint-paul-vi-pope', 'MEM_OPT', NULL, TRUE),
('the-visitation-of-the-blessed-virgin-mary', 'FEAST', NULL, FALSE),
('blessed-virgin-mary-mother-of-the-church', 'MEM_OBL', NULL, FALSE),
('the-most-holy-trinity', 'SOLEMNITY', NULL, FALSE),
('the-most-holy-body-and-blood-of-christ', 'SOLEMNITY', NULL, FALSE)
) AS x(slug, rank_code, color_code, is_optional)
ON f.slug = x.slug
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - June (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- Includes movable rules from source list:
--   - Friday after the Second Sunday after Pentecost: Sacred Heart (solemnity)
--   - Saturday after the Second Sunday after Pentecost: Immaculate Heart (memorial)
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-justin-martyr', 'Saint Justin, Martyr', 'saint'),
('saints-marcellinus-and-peter-martyrs', 'Saints Marcellinus and Peter, Martyrs', 'saint'),
('saints-charles-lwanga-and-companions-martyrs', 'Saints Charles Lwanga and Companions, Martyrs', 'saint'),
('saint-boniface-bishop-and-martyr', 'Saint Boniface, Bishop and Martyr', 'saint'),
('saint-norbert-bishop', 'Saint Norbert, Bishop', 'saint'),
('saint-ephrem-deacon-and-doctor-of-the-church', 'Saint Ephrem, Deacon and Doctor of the Church', 'saint'),
('saint-barnabas-apostle', 'Saint Barnabas, Apostle', 'saint'),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', 'Saint Anthony of Padua, Priest and Doctor of the Church', 'saint'),
('saint-romuald-abbot', 'Saint Romuald, Abbot', 'saint'),
('saint-aloysius-gonzaga-religious', 'Saint Aloysius Gonzaga, Religious', 'saint'),
('saint-paulinus-of-nola-bishop', 'Saint Paulinus of Nola, Bishop', 'saint'),
('saints-john-fisher-bishop-and-thomas-more-martyrs', 'Saints John Fisher, Bishop, and Thomas More, Martyrs', 'saint'),
('the-nativity-of-saint-john-the-baptist', 'The Nativity of Saint John the Baptist', 'saint'),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 'Saint Cyril of Alexandria, Bishop and Doctor of the Church', 'saint'),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 'Saint Irenaeus, Bishop, Martyr and Doctor of the Church', 'saint'),
('saints-peter-and-paul-apostles', 'Saints Peter and Paul, Apostles', 'saint'),
('the-first-martyrs-of-holy-roman-church', 'The First Martyrs of Holy Roman Church', 'saint'),
('the-most-sacred-heart-of-jesus', 'The Most Sacred Heart of Jesus', 'christological'),
('the-immaculate-heart-of-the-blessed-virgin-mary', 'The Immaculate Heart of the Blessed Virgin Mary', 'marian')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-justin-martyr', 'Saint Justin, Martyr'),
('saints-marcellinus-and-peter-martyrs', 'Saints Marcellinus and Peter, Martyrs'),
('saints-charles-lwanga-and-companions-martyrs', 'Saints Charles Lwanga and Companions, Martyrs'),
('saint-boniface-bishop-and-martyr', 'Saint Boniface, Bishop and Martyr'),
('saint-norbert-bishop', 'Saint Norbert, Bishop'),
('saint-ephrem-deacon-and-doctor-of-the-church', 'Saint Ephrem, Deacon and Doctor of the Church'),
('saint-barnabas-apostle', 'Saint Barnabas, Apostle'),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', 'Saint Anthony of Padua, Priest and Doctor of the Church'),
('saint-romuald-abbot', 'Saint Romuald, Abbot'),
('saint-aloysius-gonzaga-religious', 'Saint Aloysius Gonzaga, Religious'),
('saint-paulinus-of-nola-bishop', 'Saint Paulinus of Nola, Bishop'),
('saints-john-fisher-bishop-and-thomas-more-martyrs', 'Saints John Fisher, Bishop, and Thomas More, Martyrs'),
('the-nativity-of-saint-john-the-baptist', 'The Nativity of Saint John the Baptist'),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 'Saint Cyril of Alexandria, Bishop and Doctor of the Church'),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 'Saint Irenaeus, Bishop, Martyr and Doctor of the Church'),
('saints-peter-and-paul-apostles', 'Saints Peter and Paul, Apostles'),
('the-first-martyrs-of-holy-roman-church', 'The First Martyrs of Holy Roman Church'),
('the-most-sacred-heart-of-jesus', 'The Most Sacred Heart of Jesus'),
('the-immaculate-heart-of-the-blessed-virgin-mary', 'The Immaculate Heart of the Blessed Virgin Mary')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-justin-martyr', 'Saint Justin, martyr'),
('saints-marcellinus-and-peter-martyrs', 'Saints Marcellin et Pierre, martyrs'),
('saints-charles-lwanga-and-companions-martyrs', 'Saints Charles Lwanga et ses compagnons, martyrs'),
('saint-boniface-bishop-and-martyr', 'Saint Boniface, évêque et martyr'),
('saint-norbert-bishop', 'Saint Norbert, évêque'),
('saint-ephrem-deacon-and-doctor-of-the-church', 'Saint Éphrem, diacre et docteur de l’Église'),
('saint-barnabas-apostle', 'Saint Barnabé, apôtre'),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', 'Saint Antoine de Padoue, prêtre et docteur de l’Église'),
('saint-romuald-abbot', 'Saint Romuald, abbé'),
('saint-aloysius-gonzaga-religious', 'Saint Louis de Gonzague, religieux'),
('saint-paulinus-of-nola-bishop', 'Saint Paulin de Nole, évêque'),
('saints-john-fisher-bishop-and-thomas-more-martyrs', 'Saints Jean Fisher, évêque, et Thomas More, martyrs'),
('the-nativity-of-saint-john-the-baptist', 'Nativité de saint Jean-Baptiste'),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 'Saint Cyrille d’Alexandrie, évêque et docteur de l’Église'),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 'Saint Irénée, évêque, martyr et docteur de l’Église'),
('saints-peter-and-paul-apostles', 'Saints Pierre et Paul, apôtres'),
('the-first-martyrs-of-holy-roman-church', 'Les premiers martyrs de la sainte Église de Rome'),
('the-most-sacred-heart-of-jesus', 'Le Sacré-Cœur de Jésus'),
('the-immaculate-heart-of-the-blessed-virgin-mary', 'Le Cœur Immaculé de la Bienheureuse Vierge Marie')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-justin-martyr', 'Sanctus Iustinus, martyr'),
('saints-marcellinus-and-peter-martyrs', 'Sancti Marcellinus et Petrus, martyres'),
('saints-charles-lwanga-and-companions-martyrs', 'Sancti Carolus Lwanga et Socii, martyres'),
('saint-boniface-bishop-and-martyr', 'Sanctus Bonifatius, episcopus et martyr'),
('saint-norbert-bishop', 'Sanctus Norbertus, episcopus'),
('saint-ephrem-deacon-and-doctor-of-the-church', 'Sanctus Ephraem, diaconus et Ecclesiae doctor'),
('saint-barnabas-apostle', 'Sanctus Barnabas, Apostolus'),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', 'Sanctus Antonius Patavinus, presbyter et Ecclesiae doctor'),
('saint-romuald-abbot', 'Sanctus Romualdus, abbas'),
('saint-aloysius-gonzaga-religious', 'Sanctus Aloisius Gonzaga, religiosus'),
('saint-paulinus-of-nola-bishop', 'Sanctus Paulinus Nolanus, episcopus'),
('saints-john-fisher-bishop-and-thomas-more-martyrs', 'Sancti Ioannes Fisher et Thomas Morus, martyres'),
('the-nativity-of-saint-john-the-baptist', 'Nativitas Sancti Ioannis Baptistae'),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 'Sanctus Cyrillus Alexandrinus, episcopus et Ecclesiae doctor'),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 'Sanctus Irenaeus, episcopus, martyr et Ecclesiae doctor'),
('saints-peter-and-paul-apostles', 'Sancti Petrus et Paulus, Apostoli'),
('the-first-martyrs-of-holy-roman-church', 'Sancti Primi Martyres Sanctae Romanae Ecclesiae'),
('the-most-sacred-heart-of-jesus', 'Sacratissimum Cor Iesu'),
('the-immaculate-heart-of-the-blessed-virgin-mary', 'Cor Immaculatum Beatae Mariae Virginis')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FIXED date rules
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, notes)
SELECT f.id, c.id, 'fixed', x.month, x.day, 'Wikipedia fixed'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-justin-martyr', 6, 1),
('saints-marcellinus-and-peter-martyrs', 6, 2),
('saints-charles-lwanga-and-companions-martyrs', 6, 3),
('saint-boniface-bishop-and-martyr', 6, 5),
('saint-norbert-bishop', 6, 6),
('saint-ephrem-deacon-and-doctor-of-the-church', 6, 9),
('saint-barnabas-apostle', 6, 11),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', 6, 13),
('saint-romuald-abbot', 6, 19),
('saint-aloysius-gonzaga-religious', 6, 21),
('saint-paulinus-of-nola-bishop', 6, 22),
('saints-john-fisher-bishop-and-thomas-more-martyrs', 6, 22),
('the-nativity-of-saint-john-the-baptist', 6, 24),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 6, 27),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 6, 28),
('saints-peter-and-paul-apostles', 6, 29),
('the-first-martyrs-of-holy-roman-church', 6, 30)
) AS x(slug, month, day)
ON f.slug = x.slug;

-- MOVABLE rules (from source list)
-- Friday after the Second Sunday after Pentecost: Sacred Heart
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'movable', 'SECOND_SUNDAY_AFTER_PENTECOST', 5, 'Wikipedia movable'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
WHERE f.slug = 'the-most-sacred-heart-of-jesus';

-- Saturday after the Second Sunday after Pentecost: Immaculate Heart
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'movable', 'SECOND_SUNDAY_AFTER_PENTECOST', 6, 'Wikipedia movable'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
WHERE f.slug = 'the-immaculate-heart-of-the-blessed-virgin-mary';

-- Celebrations (RED only explicit martyrs)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, x.is_optional, 'Wikipedia'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
JOIN (VALUES
('saint-justin-martyr', 'MEM_OBL', 'RED', FALSE),
('saints-marcellinus-and-peter-martyrs', 'MEM_OPT', 'RED', TRUE),
('saints-charles-lwanga-and-companions-martyrs', 'MEM_OBL', 'RED', FALSE),
('saint-boniface-bishop-and-martyr', 'MEM_OBL', 'RED', FALSE),
('saint-norbert-bishop', 'MEM_OPT', NULL, TRUE),
('saint-ephrem-deacon-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saint-barnabas-apostle', 'MEM_OBL', NULL, FALSE),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE),
('saint-romuald-abbot', 'MEM_OPT', NULL, TRUE),
('saint-aloysius-gonzaga-religious', 'MEM_OBL', NULL, FALSE),
('saint-paulinus-of-nola-bishop', 'MEM_OPT', NULL, TRUE),
('saints-john-fisher-bishop-and-thomas-more-martyrs', 'MEM_OPT', 'RED', TRUE),
('the-nativity-of-saint-john-the-baptist', 'SOLEMNITY', NULL, FALSE),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 'MEM_OBL', 'RED', FALSE),
('saints-peter-and-paul-apostles', 'SOLEMNITY', NULL, FALSE),
('the-first-martyrs-of-holy-roman-church', 'MEM_OPT', 'RED', TRUE),
('the-most-sacred-heart-of-jesus', 'SOLEMNITY', NULL, FALSE),
('the-immaculate-heart-of-the-blessed-virgin-mary', 'MEM_OBL', NULL, FALSE)
) AS x(slug, rank_code, color_code, is_optional)
ON f.slug = x.slug
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - July (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-thomas-apostle', 'Saint Thomas, Apostle', 'saint'),
('saint-elizabeth-of-portugal', 'Saint Elizabeth of Portugal', 'saint'),
('saint-anthony-zaccaria-priest', 'Saint Anthony Zaccaria, Priest', 'saint'),
('saint-maria-goretti-virgin-and-martyr', 'Saint Maria Goretti, Virgin and Martyr', 'saint'),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', 'Saint Augustine Zhao Rong, Priest, and Companions, Martyrs', 'saint'),
('saint-benedict-abbot', 'Saint Benedict, Abbot', 'saint'),
('saint-henry', 'Saint Henry', 'saint'),
('saint-camillus-de-lellis-priest', 'Saint Camillus de Lellis, Priest', 'saint'),
('saint-bonaventure-bishop-and-doctor-of-the-church', 'Saint Bonaventure, Bishop and Doctor of the Church', 'saint'),
('our-lady-of-mount-carmel', 'Our Lady of Mount Carmel', 'marian'),
('saint-apollinaris-bishop-and-martyr', 'Saint Apollinaris, Bishop and Martyr', 'saint'),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 'Saint Lawrence of Brindisi, Priest and Doctor of the Church', 'saint'),
('saint-mary-magdalene', 'Saint Mary Magdalene', 'saint'),
('saint-bridget-religious', 'Saint Bridget, Religious', 'saint'),
('saint-sharbel-makhluf-priest', 'Saint Sharbel Makhluf, Priest', 'saint'),
('saint-james-apostle', 'Saint James, Apostle', 'saint'),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 'Saints Joachim and Anne, Parents of the Blessed Virgin Mary', 'saint'),
('saints-martha-mary-and-lazarus', 'Saints Martha, Mary and Lazarus', 'saint'),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 'Saint Peter Chrysologus, Bishop and Doctor of the Church', 'saint'),
('saint-ignatius-of-loyola-priest', 'Saint Ignatius of Loyola, Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-thomas-apostle', 'Saint Thomas, Apostle'),
('saint-elizabeth-of-portugal', 'Saint Elizabeth of Portugal'),
('saint-anthony-zaccaria-priest', 'Saint Anthony Zaccaria, Priest'),
('saint-maria-goretti-virgin-and-martyr', 'Saint Maria Goretti, Virgin and Martyr'),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', 'Saint Augustine Zhao Rong, Priest, and Companions, Martyrs'),
('saint-benedict-abbot', 'Saint Benedict, Abbot'),
('saint-henry', 'Saint Henry'),
('saint-camillus-de-lellis-priest', 'Saint Camillus de Lellis, Priest'),
('saint-bonaventure-bishop-and-doctor-of-the-church', 'Saint Bonaventure, Bishop and Doctor of the Church'),
('our-lady-of-mount-carmel', 'Our Lady of Mount Carmel'),
('saint-apollinaris-bishop-and-martyr', 'Saint Apollinaris, Bishop and Martyr'),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 'Saint Lawrence of Brindisi, Priest and Doctor of the Church'),
('saint-mary-magdalene', 'Saint Mary Magdalene'),
('saint-bridget-religious', 'Saint Bridget, Religious'),
('saint-sharbel-makhluf-priest', 'Saint Sharbel Makhluf, Priest'),
('saint-james-apostle', 'Saint James, Apostle'),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 'Saints Joachim and Anne, Parents of the Blessed Virgin Mary'),
('saints-martha-mary-and-lazarus', 'Saints Martha, Mary and Lazarus'),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 'Saint Peter Chrysologus, Bishop and Doctor of the Church'),
('saint-ignatius-of-loyola-priest', 'Saint Ignatius of Loyola, Priest')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-thomas-apostle', 'Saint Thomas, apôtre'),
('saint-elizabeth-of-portugal', 'Sainte Élisabeth du Portugal'),
('saint-anthony-zaccaria-priest', 'Saint Antoine-Marie Zaccaria, prêtre'),
('saint-maria-goretti-virgin-and-martyr', 'Sainte Maria Goretti, vierge et martyre'),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', 'Saint Augustin Zhao Rong, prêtre, et ses compagnons, martyrs'),
('saint-benedict-abbot', 'Saint Benoît, abbé'),
('saint-henry', 'Saint Henri'),
('saint-camillus-de-lellis-priest', 'Saint Camille de Lellis, prêtre'),
('saint-bonaventure-bishop-and-doctor-of-the-church', 'Saint Bonaventure, évêque et docteur de l’Église'),
('our-lady-of-mount-carmel', 'Notre-Dame du Mont-Carmel'),
('saint-apollinaris-bishop-and-martyr', 'Saint Apollinaire, évêque et martyr'),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 'Saint Laurent de Brindes, prêtre et docteur de l’Église'),
('saint-mary-magdalene', 'Sainte Marie-Madeleine'),
('saint-bridget-religious', 'Sainte Brigitte, religieuse'),
('saint-sharbel-makhluf-priest', 'Saint Charbel Makhlouf, prêtre'),
('saint-james-apostle', 'Saint Jacques, apôtre'),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 'Saints Joachim et Anne, parents de la Bienheureuse Vierge Marie'),
('saints-martha-mary-and-lazarus', 'Saints Marthe, Marie et Lazare'),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 'Saint Pierre Chrysologue, évêque et docteur de l’Église'),
('saint-ignatius-of-loyola-priest', 'Saint Ignace de Loyola, prêtre')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-thomas-apostle', 'Sanctus Thomas, Apostolus'),
('saint-elizabeth-of-portugal', 'Sancta Elisabeth Lusitaniae'),
('saint-anthony-zaccaria-priest', 'Sanctus Antonius Maria Zaccaria, presbyter'),
('saint-maria-goretti-virgin-and-martyr', 'Sancta Maria Goretti, virgo et martyr'),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', 'Sanctus Augustinus Zhao Rong et Socii, martyres'),
('saint-benedict-abbot', 'Sanctus Benedictus, abbas'),
('saint-henry', 'Sanctus Henricus'),
('saint-camillus-de-lellis-priest', 'Sanctus Camillus de Lellis, presbyter'),
('saint-bonaventure-bishop-and-doctor-of-the-church', 'Sanctus Bonaventura, episcopus et Ecclesiae doctor'),
('our-lady-of-mount-carmel', 'Beata Maria Virgo de Monte Carmelo'),
('saint-apollinaris-bishop-and-martyr', 'Sanctus Apollinaris, episcopus et martyr'),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 'Sanctus Laurentius a Brundusio, presbyter et Ecclesiae doctor'),
('saint-mary-magdalene', 'Sancta Maria Magdalena'),
('saint-bridget-religious', 'Sancta Birgitta, religiosa'),
('saint-sharbel-makhluf-priest', 'Sanctus Charbel Makhlouf, presbyter'),
('saint-james-apostle', 'Sanctus Iacobus, Apostolus'),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 'Sancti Ioachim et Anna'),
('saints-martha-mary-and-lazarus', 'Sanctae Martha, Maria et Lazarus'),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 'Sanctus Petrus Chrysologus, episcopus et Ecclesiae doctor'),
('saint-ignatius-of-loyola-priest', 'Sanctus Ignatius de Loyola, presbyter')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FIXED date rules
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, notes)
SELECT f.id, c.id, 'fixed', x.month, x.day, 'Wikipedia fixed'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-thomas-apostle', 7, 3),
('saint-elizabeth-of-portugal', 7, 4),
('saint-anthony-zaccaria-priest', 7, 5),
('saint-maria-goretti-virgin-and-martyr', 7, 6),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', 7, 9),
('saint-benedict-abbot', 7, 11),
('saint-henry', 7, 13),
('saint-camillus-de-lellis-priest', 7, 14),
('saint-bonaventure-bishop-and-doctor-of-the-church', 7, 15),
('our-lady-of-mount-carmel', 7, 16),
('saint-apollinaris-bishop-and-martyr', 7, 20),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 7, 21),
('saint-mary-magdalene', 7, 22),
('saint-bridget-religious', 7, 23),
('saint-sharbel-makhluf-priest', 7, 24),
('saint-james-apostle', 7, 25),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 7, 26),
('saints-martha-mary-and-lazarus', 7, 29),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 7, 30),
('saint-ignatius-of-loyola-priest', 7, 31)
) AS x(slug, month, day)
ON f.slug = x.slug;

-- Celebrations (RED only explicit martyrs)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, x.is_optional, 'Wikipedia'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
JOIN (VALUES
('saint-thomas-apostle', 'FEAST', NULL, FALSE),
('saint-elizabeth-of-portugal', 'MEM_OPT', NULL, TRUE),
('saint-anthony-zaccaria-priest', 'MEM_OPT', NULL, TRUE),
('saint-maria-goretti-virgin-and-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', 'MEM_OPT', 'RED', TRUE),
('saint-benedict-abbot', 'MEM_OBL', NULL, FALSE),
('saint-henry', 'MEM_OPT', NULL, TRUE),
('saint-camillus-de-lellis-priest', 'MEM_OPT', NULL, TRUE),
('saint-bonaventure-bishop-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE),
('our-lady-of-mount-carmel', 'MEM_OPT', NULL, TRUE),
('saint-apollinaris-bishop-and-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saint-mary-magdalene', 'FEAST', NULL, FALSE),
('saint-bridget-religious', 'MEM_OPT', NULL, TRUE),
('saint-sharbel-makhluf-priest', 'MEM_OPT', NULL, TRUE),
('saint-james-apostle', 'FEAST', NULL, FALSE),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 'MEM_OBL', NULL, FALSE),
('saints-martha-mary-and-lazarus', 'MEM_OBL', NULL, FALSE),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saint-ignatius-of-loyola-priest', 'MEM_OBL', NULL, FALSE)
) AS x(slug, rank_code, color_code, is_optional)
ON f.slug = x.slug
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - August (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 'Saint Alphonsus Liguori, Bishop and Doctor of the Church', 'saint'),
('saint-eusebius-of-vercelli-bishop', 'Saint Eusebius of Vercelli, Bishop', 'saint'),
('saint-peter-julian-eymard-priest', 'Saint Peter Julian Eymard, Priest', 'saint'),
('saint-jean-vianney-priest', 'Saint Jean Vianney, Priest', 'saint'),
('the-dedication-of-the-basilica-of-saint-mary-major', 'The Dedication of the Basilica of Saint Mary Major', 'dedication'),
('the-transfiguration-of-the-lord', 'The Transfiguration of the Lord', 'christological'),
('saint-sixtus-ii-pope-and-companions-martyrs', 'Saint Sixtus II, Pope, and Companions, Martyrs', 'saint'),
('saint-cajetan-priest', 'Saint Cajetan, Priest', 'saint'),
('saint-dominic-priest', 'Saint Dominic, Priest', 'saint'),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 'Saint Teresa Benedicta of the Cross, Virgin and Martyr', 'saint'),
('saint-lawrence-deacon-and-martyr', 'Saint Lawrence, Deacon and Martyr', 'saint'),
('saint-clare-virgin', 'Saint Clare, Virgin', 'saint'),
('saint-jane-frances-de-chantal-religious', 'Saint Jane Frances de Chantal, Religious', 'saint'),
('saints-pontian-pope-and-hippolytus-priest-martyrs', 'Saints Pontian, Pope, and Hippolytus, Priest, Martyrs', 'saint'),
('saint-maximus-the-confessor', 'Saint Maximus the Confessor', 'saint'),
('saint-maximilian-kolbe-priest-and-martyr', 'Saint Maximilian Kolbe, Priest and Martyr', 'saint'),
('the-assumption-of-the-blessed-virgin-mary', 'The Assumption of the Blessed Virgin Mary', 'marian'),
('saint-stephen-of-hungary', 'Saint Stephen of Hungary', 'saint'),
('saint-john-eudes-priest', 'Saint John Eudes, Priest', 'saint'),
('saint-bernard-abbot-and-doctor-of-the-church', 'Saint Bernard, Abbot and Doctor of the Church', 'saint'),
('saint-pius-x-pope', 'Saint Pius X, Pope', 'saint'),
('the-queenship-of-the-blessed-virgin-mary', 'The Queenship of the Blessed Virgin Mary', 'marian'),
('saint-rose-of-lima-virgin', 'Saint Rose of Lima, Virgin', 'saint'),
('saint-bartholomew-apostle', 'Saint Bartholomew, Apostle', 'saint'),
('saint-louis', 'Saint Louis', 'saint'),
('saint-joseph-calasanz-priest', 'Saint Joseph Calasanz, Priest', 'saint'),
('saint-monica', 'Saint Monica', 'saint'),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 'Saint Augustine of Hippo, Bishop and Doctor of the Church', 'saint'),
('the-passion-of-saint-john-the-baptist-martyr', 'The Passion of Saint John the Baptist, Martyr', 'saint')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 'Saint Alphonsus Liguori, Bishop and Doctor of the Church'),
('saint-eusebius-of-vercelli-bishop', 'Saint Eusebius of Vercelli, Bishop'),
('saint-peter-julian-eymard-priest', 'Saint Peter Julian Eymard, Priest'),
('saint-jean-vianney-priest', 'Saint Jean Vianney, Priest'),
('the-dedication-of-the-basilica-of-saint-mary-major', 'The Dedication of the Basilica of Saint Mary Major'),
('the-transfiguration-of-the-lord', 'The Transfiguration of the Lord'),
('saint-sixtus-ii-pope-and-companions-martyrs', 'Saint Sixtus II, Pope, and Companions, Martyrs'),
('saint-cajetan-priest', 'Saint Cajetan, Priest'),
('saint-dominic-priest', 'Saint Dominic, Priest'),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 'Saint Teresa Benedicta of the Cross, Virgin and Martyr'),
('saint-lawrence-deacon-and-martyr', 'Saint Lawrence, Deacon and Martyr'),
('saint-clare-virgin', 'Saint Clare, Virgin'),
('saint-jane-frances-de-chantal-religious', 'Saint Jane Frances de Chantal, Religious'),
('saints-pontian-pope-and-hippolytus-priest-martyrs', 'Saints Pontian, Pope, and Hippolytus, Priest, Martyrs'),
('saint-maximus-the-confessor', 'Saint Maximus the Confessor'),
('saint-maximilian-kolbe-priest-and-martyr', 'Saint Maximilian Kolbe, Priest and Martyr'),
('the-assumption-of-the-blessed-virgin-mary', 'The Assumption of the Blessed Virgin Mary'),
('saint-stephen-of-hungary', 'Saint Stephen of Hungary'),
('saint-john-eudes-priest', 'Saint John Eudes, Priest'),
('saint-bernard-abbot-and-doctor-of-the-church', 'Saint Bernard, Abbot and Doctor of the Church'),
('saint-pius-x-pope', 'Saint Pius X, Pope'),
('the-queenship-of-the-blessed-virgin-mary', 'The Queenship of the Blessed Virgin Mary'),
('saint-rose-of-lima-virgin', 'Saint Rose of Lima, Virgin'),
('saint-bartholomew-apostle', 'Saint Bartholomew, Apostle'),
('saint-louis', 'Saint Louis'),
('saint-joseph-calasanz-priest', 'Saint Joseph Calasanz, Priest'),
('saint-monica', 'Saint Monica'),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 'Saint Augustine of Hippo, Bishop and Doctor of the Church'),
('the-passion-of-saint-john-the-baptist-martyr', 'The Passion of Saint John the Baptist, Martyr')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 'Saint Alphonse de Liguori, évêque et docteur de l’Église'),
('saint-eusebius-of-vercelli-bishop', 'Saint Eusèbe de Verceil, évêque'),
('saint-peter-julian-eymard-priest', 'Saint Pierre-Julien Eymard, prêtre'),
('saint-jean-vianney-priest', 'Saint Jean-Marie Vianney, prêtre'),
('the-dedication-of-the-basilica-of-saint-mary-major', 'Dédicace de la basilique Sainte-Marie-Majeure'),
('the-transfiguration-of-the-lord', 'Transfiguration du Seigneur'),
('saint-sixtus-ii-pope-and-companions-martyrs', 'Saint Sixte II, pape, et ses compagnons, martyrs'),
('saint-cajetan-priest', 'Saint Gaétan, prêtre'),
('saint-dominic-priest', 'Saint Dominique, prêtre'),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 'Sainte Thérèse-Bénédicte de la Croix, vierge et martyre'),
('saint-lawrence-deacon-and-martyr', 'Saint Laurent, diacre et martyr'),
('saint-clare-virgin', 'Sainte Claire, vierge'),
('saint-jane-frances-de-chantal-religious', 'Sainte Jeanne-Françoise de Chantal, religieuse'),
('saints-pontian-pope-and-hippolytus-priest-martyrs', 'Saints Pontien, pape, et Hippolyte, prêtre, martyrs'),
('saint-maximus-the-confessor', 'Saint Maxime le Confesseur'),
('saint-maximilian-kolbe-priest-and-martyr', 'Saint Maximilien Kolbe, prêtre et martyr'),
('the-assumption-of-the-blessed-virgin-mary', 'Assomption de la Bienheureuse Vierge Marie'),
('saint-stephen-of-hungary', 'Saint Étienne de Hongrie'),
('saint-john-eudes-priest', 'Saint Jean Eudes, prêtre'),
('saint-bernard-abbot-and-doctor-of-the-church', 'Saint Bernard, abbé et docteur de l’Église'),
('saint-pius-x-pope', 'Saint Pie X, pape'),
('the-queenship-of-the-blessed-virgin-mary', 'La Royauté de la Bienheureuse Vierge Marie'),
('saint-rose-of-lima-virgin', 'Sainte Rose de Lima, vierge'),
('saint-bartholomew-apostle', 'Saint Barthélemy, apôtre'),
('saint-louis', 'Saint Louis'),
('saint-joseph-calasanz-priest', 'Saint Joseph Calasanz, prêtre'),
('saint-monica', 'Sainte Monique'),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 'Saint Augustin d’Hippone, évêque et docteur de l’Église'),
('the-passion-of-saint-john-the-baptist-martyr', 'Passion de saint Jean-Baptiste, martyr')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 'Sanctus Alphonsus Maria de Ligorio, episcopus et Ecclesiae doctor'),
('saint-eusebius-of-vercelli-bishop', 'Sanctus Eusebius Vercellensis, episcopus'),
('saint-peter-julian-eymard-priest', 'Sanctus Petrus Iulianus Eymard, presbyter'),
('saint-jean-vianney-priest', 'Sanctus Ioannes Maria Vianney, presbyter'),
('the-dedication-of-the-basilica-of-saint-mary-major', 'Dedicatio Basilicae Sanctae Mariae Maioris'),
('the-transfiguration-of-the-lord', 'Transfiguratio Domini'),
('saint-sixtus-ii-pope-and-companions-martyrs', 'Sanctus Sixtus II et Socii, martyres'),
('saint-cajetan-priest', 'Sanctus Caietanus, presbyter'),
('saint-dominic-priest', 'Sanctus Dominicus, presbyter'),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 'Sancta Teresia Benedicta a Cruce, virgo et martyr'),
('saint-lawrence-deacon-and-martyr', 'Sanctus Laurentius, diaconus et martyr'),
('saint-clare-virgin', 'Sancta Clara, virgo'),
('saint-jane-frances-de-chantal-religious', 'Sancta Ioanna Francisca de Chantal, religiosa'),
('saints-pontian-pope-and-hippolytus-priest-martyrs', 'Sancti Pontianus et Hippolytus, martyres'),
('saint-maximus-the-confessor', 'Sanctus Maximus Confessor'),
('saint-maximilian-kolbe-priest-and-martyr', 'Sanctus Maximilianus Maria Kolbe, presbyter et martyr'),
('the-assumption-of-the-blessed-virgin-mary', 'Assumptio Beatae Mariae Virginis'),
('saint-stephen-of-hungary', 'Sanctus Stephanus Hungariae'),
('saint-john-eudes-priest', 'Sanctus Ioannes Eudes, presbyter'),
('saint-bernard-abbot-and-doctor-of-the-church', 'Sanctus Bernardus, abbas et Ecclesiae doctor'),
('saint-pius-x-pope', 'Sanctus Pius X, papa'),
('the-queenship-of-the-blessed-virgin-mary', 'Beatae Mariae Virginis Reginae'),
('saint-rose-of-lima-virgin', 'Sancta Rosa de Lima, virgo'),
('saint-bartholomew-apostle', 'Sanctus Bartholomaeus, Apostolus'),
('saint-louis', 'Sanctus Ludovicus'),
('saint-joseph-calasanz-priest', 'Sanctus Iosephus Calasanctius, presbyter'),
('saint-monica', 'Sancta Monica'),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 'Sanctus Augustinus, episcopus et Ecclesiae doctor'),
('the-passion-of-saint-john-the-baptist-martyr', 'Passio Sancti Ioannis Baptistae')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FIXED date rules
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, notes)
SELECT f.id, c.id, 'fixed', x.month, x.day, 'Wikipedia fixed'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 8, 1),
('saint-eusebius-of-vercelli-bishop', 8, 2),
('saint-peter-julian-eymard-priest', 8, 2),
('saint-jean-vianney-priest', 8, 4),
('the-dedication-of-the-basilica-of-saint-mary-major', 8, 5),
('the-transfiguration-of-the-lord', 8, 6),
('saint-sixtus-ii-pope-and-companions-martyrs', 8, 7),
('saint-cajetan-priest', 8, 7),
('saint-dominic-priest', 8, 8),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 8, 9),
('saint-lawrence-deacon-and-martyr', 8, 10),
('saint-clare-virgin', 8, 11),
('saint-jane-frances-de-chantal-religious', 8, 12),
('saints-pontian-pope-and-hippolytus-priest-martyrs', 8, 13),
('saint-maximus-the-confessor', 8, 13),
('saint-maximilian-kolbe-priest-and-martyr', 8, 14),
('the-assumption-of-the-blessed-virgin-mary', 8, 15),
('saint-stephen-of-hungary', 8, 16),
('saint-john-eudes-priest', 8, 19),
('saint-bernard-abbot-and-doctor-of-the-church', 8, 20),
('saint-pius-x-pope', 8, 21),
('the-queenship-of-the-blessed-virgin-mary', 8, 22),
('saint-rose-of-lima-virgin', 8, 23),
('saint-bartholomew-apostle', 8, 24),
('saint-louis', 8, 25),
('saint-joseph-calasanz-priest', 8, 25),
('saint-monica', 8, 27),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 8, 28),
('the-passion-of-saint-john-the-baptist-martyr', 8, 29)
) AS x(slug, month, day)
ON f.slug = x.slug;

-- Celebrations (RED only explicit martyrs)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, x.is_optional, 'Wikipedia'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
JOIN (VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE),
('saint-eusebius-of-vercelli-bishop', 'MEM_OPT', NULL, TRUE),
('saint-peter-julian-eymard-priest', 'MEM_OPT', NULL, TRUE),
('saint-jean-vianney-priest', 'MEM_OBL', NULL, FALSE),
('the-dedication-of-the-basilica-of-saint-mary-major', 'MEM_OPT', NULL, TRUE),
('the-transfiguration-of-the-lord', 'FEAST', NULL, FALSE),
('saint-sixtus-ii-pope-and-companions-martyrs', 'MEM_OPT', 'RED', TRUE),
('saint-cajetan-priest', 'MEM_OPT', NULL, TRUE),
('saint-dominic-priest', 'MEM_OBL', NULL, FALSE),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-lawrence-deacon-and-martyr', 'FEAST', 'RED', FALSE),
('saint-clare-virgin', 'MEM_OBL', NULL, FALSE),
('saint-jane-frances-de-chantal-religious', 'MEM_OPT', NULL, TRUE),
('saints-pontian-pope-and-hippolytus-priest-martyrs', 'MEM_OPT', 'RED', TRUE),
('saint-maximus-the-confessor', 'MEM_OPT', NULL, TRUE),
('saint-maximilian-kolbe-priest-and-martyr', 'MEM_OBL', 'RED', FALSE),
('the-assumption-of-the-blessed-virgin-mary', 'SOLEMNITY', NULL, FALSE),
('saint-stephen-of-hungary', 'MEM_OPT', NULL, TRUE),
('saint-john-eudes-priest', 'MEM_OPT', NULL, TRUE),
('saint-bernard-abbot-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE),
('saint-pius-x-pope', 'MEM_OBL', NULL, FALSE),
('the-queenship-of-the-blessed-virgin-mary', 'MEM_OBL', NULL, FALSE),
('saint-rose-of-lima-virgin', 'MEM_OPT', NULL, TRUE),
('saint-bartholomew-apostle', 'FEAST', NULL, FALSE),
('saint-louis', 'MEM_OPT', NULL, TRUE),
('saint-joseph-calasanz-priest', 'MEM_OPT', NULL, TRUE),
('saint-monica', 'MEM_OBL', NULL, FALSE),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE),
('the-passion-of-saint-john-the-baptist-martyr', 'MEM_OBL', 'RED', FALSE)
) AS x(slug, rank_code, color_code, is_optional)
ON f.slug = x.slug
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - September (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', 'Saint Gregory the Great, Pope and Doctor of the Church', 'saint'),
('saint-teresa-of-calcutta-virgin', 'Saint Teresa of Calcutta, Virgin', 'saint'),
('the-nativity-of-the-blessed-virgin-mary', 'The Nativity of the Blessed Virgin Mary', 'marian'),
('saint-peter-claver-priest', 'Saint Peter Claver, Priest', 'saint'),
('the-most-holy-name-of-mary', 'The Most Holy Name of Mary', 'marian'),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', 'Saint John Chrysostom, Bishop and Doctor of the Church', 'saint'),
('the-exaltation-of-the-holy-cross', 'The Exaltation of the Holy Cross', 'christological'),
('our-lady-of-sorrows', 'Our Lady of Sorrows', 'marian'),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'Saints Cornelius, Pope, and Cyprian, Bishop, Martyrs', 'saint'),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 'Saint Robert Bellarmine, Bishop and Doctor of the Church', 'saint'),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 'Saint Hildegard of Bingen, Virgin and Doctor of the Church', 'saint'),
('saint-januarius-bishop-and-martyr', 'Saint Januarius, Bishop and Martyr', 'saint'),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 'Saints Andrew Kim Tae-gon, Priest, Paul Chong Ha-sang, and Companions, Martyrs', 'saint'),
('saint-matthew-apostle-and-evangelist', 'Saint Matthew, Apostle and Evangelist', 'saint'),
('saint-pius-of-pietrelcina-priest', 'Saint Pius of Pietrelcina, Priest', 'saint'),
('saints-cosmas-and-damian-martyrs', 'Saints Cosmas and Damian, Martyrs', 'saint'),
('saint-vincent-de-paul-priest', 'Saint Vincent de Paul, Priest', 'saint'),
('saint-wenceslaus-martyr', 'Saint Wenceslaus, Martyr', 'saint'),
('saint-lawrence-ruiz-and-companions-martyrs', 'Saint Lawrence Ruiz and Companions, Martyrs', 'saint'),
('saints-michael-gabriel-and-raphael-archangels', 'Saints Michael, Gabriel and Raphael, Archangels', 'saint'),
('saint-jerome-priest-and-doctor-of-the-church', 'Saint Jerome, Priest and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', 'Saint Gregory the Great, Pope and Doctor of the Church'),
('saint-teresa-of-calcutta-virgin', 'Saint Teresa of Calcutta, Virgin'),
('the-nativity-of-the-blessed-virgin-mary', 'The Nativity of the Blessed Virgin Mary'),
('saint-peter-claver-priest', 'Saint Peter Claver, Priest'),
('the-most-holy-name-of-mary', 'The Most Holy Name of Mary'),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', 'Saint John Chrysostom, Bishop and Doctor of the Church'),
('the-exaltation-of-the-holy-cross', 'The Exaltation of the Holy Cross'),
('our-lady-of-sorrows', 'Our Lady of Sorrows'),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'Saints Cornelius, Pope, and Cyprian, Bishop, Martyrs'),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 'Saint Robert Bellarmine, Bishop and Doctor of the Church'),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 'Saint Hildegard of Bingen, Virgin and Doctor of the Church'),
('saint-januarius-bishop-and-martyr', 'Saint Januarius, Bishop and Martyr'),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 'Saints Andrew Kim Tae-gon, Priest, Paul Chong Ha-sang, and Companions, Martyrs'),
('saint-matthew-apostle-and-evangelist', 'Saint Matthew, Apostle and Evangelist'),
('saint-pius-of-pietrelcina-priest', 'Saint Pius of Pietrelcina, Priest'),
('saints-cosmas-and-damian-martyrs', 'Saints Cosmas and Damian, Martyrs'),
('saint-vincent-de-paul-priest', 'Saint Vincent de Paul, Priest'),
('saint-wenceslaus-martyr', 'Saint Wenceslaus, Martyr'),
('saint-lawrence-ruiz-and-companions-martyrs', 'Saint Lawrence Ruiz and Companions, Martyrs'),
('saints-michael-gabriel-and-raphael-archangels', 'Saints Michael, Gabriel and Raphael, Archangels'),
('saint-jerome-priest-and-doctor-of-the-church', 'Saint Jerome, Priest and Doctor of the Church')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', 'Saint Grégoire le Grand, pape et docteur de l’Église'),
('saint-teresa-of-calcutta-virgin', 'Sainte Teresa de Calcutta, vierge'),
('the-nativity-of-the-blessed-virgin-mary', 'Nativité de la Bienheureuse Vierge Marie'),
('saint-peter-claver-priest', 'Saint Pierre Claver, prêtre'),
('the-most-holy-name-of-mary', 'Très Saint Nom de Marie'),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', 'Saint Jean Chrysostome, évêque et docteur de l’Église'),
('the-exaltation-of-the-holy-cross', 'Exaltation de la Sainte Croix'),
('our-lady-of-sorrows', 'Notre-Dame des Douleurs'),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'Saints Corneille, pape, et Cyprien, évêque, martyrs'),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 'Saint Robert Bellarmin, évêque et docteur de l’Église'),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 'Sainte Hildegarde de Bingen, vierge et docteur de l’Église'),
('saint-januarius-bishop-and-martyr', 'Saint Janvier, évêque et martyr'),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 'Saints André Kim Tae-gon, prêtre, Paul Chong Ha-sang et compagnons, martyrs'),
('saint-matthew-apostle-and-evangelist', 'Saint Matthieu, apôtre et évangéliste'),
('saint-pius-of-pietrelcina-priest', 'Saint Pio de Pietrelcina, prêtre'),
('saints-cosmas-and-damian-martyrs', 'Saints Côme et Damien, martyrs'),
('saint-vincent-de-paul-priest', 'Saint Vincent de Paul, prêtre'),
('saint-wenceslaus-martyr', 'Saint Venceslas, martyr'),
('saint-lawrence-ruiz-and-companions-martyrs', 'Saint Laurent Ruiz et ses compagnons, martyrs'),
('saints-michael-gabriel-and-raphael-archangels', 'Saints Michel, Gabriel et Raphaël, archanges'),
('saint-jerome-priest-and-doctor-of-the-church', 'Saint Jérôme, prêtre et docteur de l’Église')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', 'Sanctus Gregorius Magnus, papa et Ecclesiae doctor'),
('saint-teresa-of-calcutta-virgin', 'Sancta Teresia Calcuttiensis, virgo'),
('the-nativity-of-the-blessed-virgin-mary', 'Nativitas Beatae Mariae Virginis'),
('saint-peter-claver-priest', 'Sanctus Petrus Claver, presbyter'),
('the-most-holy-name-of-mary', 'Sanctissimi Nominis Mariae'),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', 'Sanctus Ioannes Chrysostomus, episcopus et Ecclesiae doctor'),
('the-exaltation-of-the-holy-cross', 'Exaltatio Sanctae Crucis'),
('our-lady-of-sorrows', 'Beata Maria Virgo Perdolens'),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'Sancti Cornelius et Cyprianus, martyres'),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 'Sanctus Robertus Bellarminus, episcopus et Ecclesiae doctor'),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 'Sancta Hildegardis Bingensis, virgo et Ecclesiae doctor'),
('saint-januarius-bishop-and-martyr', 'Sanctus Ianuarius, episcopus et martyr'),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 'Sancti Andreas Kim Tae-gon et Socii, martyres'),
('saint-matthew-apostle-and-evangelist', 'Sanctus Matthaeus, Apostolus et evangelista'),
('saint-pius-of-pietrelcina-priest', 'Sanctus Pius de Pietrelcina, presbyter'),
('saints-cosmas-and-damian-martyrs', 'Sancti Cosmas et Damianus, martyres'),
('saint-vincent-de-paul-priest', 'Sanctus Vincentius a Paulo, presbyter'),
('saint-wenceslaus-martyr', 'Sanctus Wenceslaus, martyr'),
('saint-lawrence-ruiz-and-companions-martyrs', 'Sanctus Laurentius Ruiz et Socii, martyres'),
('saints-michael-gabriel-and-raphael-archangels', 'Sancti Michael, Gabriel et Raphael, Archangeli'),
('saint-jerome-priest-and-doctor-of-the-church', 'Sanctus Hieronymus, presbyter et Ecclesiae doctor')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FIXED date rules
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, notes)
SELECT f.id, c.id, 'fixed', x.month, x.day, 'Wikipedia fixed'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', 9, 3),
('saint-teresa-of-calcutta-virgin', 9, 5),
('the-nativity-of-the-blessed-virgin-mary', 9, 8),
('saint-peter-claver-priest', 9, 9),
('the-most-holy-name-of-mary', 9, 12),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', 9, 13),
('the-exaltation-of-the-holy-cross', 9, 14),
('our-lady-of-sorrows', 9, 15),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', 9, 16),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 9, 17),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 9, 17),
('saint-januarius-bishop-and-martyr', 9, 19),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 9, 20),
('saint-matthew-apostle-and-evangelist', 9, 21),
('saint-pius-of-pietrelcina-priest', 9, 23),
('saints-cosmas-and-damian-martyrs', 9, 26),
('saint-vincent-de-paul-priest', 9, 27),
('saint-wenceslaus-martyr', 9, 28),
('saint-lawrence-ruiz-and-companions-martyrs', 9, 28),
('saints-michael-gabriel-and-raphael-archangels', 9, 29),
('saint-jerome-priest-and-doctor-of-the-church', 9, 30)
) AS x(slug, month, day)
ON f.slug = x.slug;

-- Celebrations (RED only explicit martyrs)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, x.is_optional, 'Wikipedia'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
JOIN (VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE),
('saint-teresa-of-calcutta-virgin', 'MEM_OPT', NULL, TRUE),
('the-nativity-of-the-blessed-virgin-mary', 'FEAST', NULL, FALSE),
('saint-peter-claver-priest', 'MEM_OPT', NULL, TRUE),
('the-most-holy-name-of-mary', 'MEM_OPT', NULL, TRUE),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE),
('the-exaltation-of-the-holy-cross', 'FEAST', NULL, FALSE),
('our-lady-of-sorrows', 'MEM_OBL', NULL, FALSE),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'MEM_OBL', 'RED', FALSE),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saint-januarius-bishop-and-martyr', 'MEM_OPT', 'RED', TRUE),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 'MEM_OBL', 'RED', FALSE),
('saint-matthew-apostle-and-evangelist', 'FEAST', NULL, FALSE),
('saint-pius-of-pietrelcina-priest', 'MEM_OBL', NULL, FALSE),
('saints-cosmas-and-damian-martyrs', 'MEM_OPT', 'RED', TRUE),
('saint-vincent-de-paul-priest', 'MEM_OBL', NULL, FALSE),
('saint-wenceslaus-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-lawrence-ruiz-and-companions-martyrs', 'MEM_OPT', 'RED', TRUE),
('saints-michael-gabriel-and-raphael-archangels', 'FEAST', NULL, FALSE),
('saint-jerome-priest-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE)
) AS x(slug, rank_code, color_code, is_optional)
ON f.slug = x.slug
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - October (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 'Saint Thérèse of the Child Jesus, Virgin and Doctor of the Church', 'saint'),
('the-holy-guardian-angels', 'The Holy Guardian Angels', 'other'),
('saint-francis-of-assisi', 'Saint Francis of Assisi', 'saint'),
('saint-faustina-kowalska-virgin', 'Saint Faustina Kowalska, Virgin', 'saint'),
('saint-bruno-priest', 'Saint Bruno, Priest', 'saint'),
('our-lady-of-the-rosary', 'Our Lady of the Rosary', 'marian'),
('saint-denis-bishop-and-companions-martyrs', 'Saint Denis, Bishop, and Companions, Martyrs', 'saint'),
('saint-john-leonardi-priest', 'Saint John Leonardi, Priest', 'saint'),
('saint-john-henry-newman-priest-and-doctor-of-the-church', 'Saint John Henry Newman, Priest and Doctor of the Church', 'saint'),
('saint-john-xxiii-pope', 'Saint John XXIII, Pope', 'saint'),
('saint-callistus-i-pope-and-martyr', 'Saint Callistus I, Pope and Martyr', 'saint'),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 'Saint Teresa of Jesus, Virgin and Doctor of the Church', 'saint'),
('saint-hedwig-religious', 'Saint Hedwig, Religious', 'saint'),
('saint-margaret-mary-alacoque-virgin', 'Saint Margaret Mary Alacoque, Virgin', 'saint'),
('saint-ignatius-of-antioch-bishop-and-martyr', 'Saint Ignatius of Antioch, Bishop and Martyr', 'saint'),
('saint-luke-evangelist', 'Saint Luke, Evangelist', 'saint'),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 'Saints John de Brébeuf, Isaac Jogues, Priests, and Companions, Martyrs', 'saint'),
('saint-paul-of-the-cross-priest', 'Saint Paul of the Cross, Priest', 'saint'),
('saint-john-paul-ii-pope', 'Saint John Paul II, Pope', 'saint'),
('saint-john-of-capistrano-priest', 'Saint John of Capistrano, Priest', 'saint'),
('saint-anthony-mary-claret-bishop', 'Saint Anthony Mary Claret, Bishop', 'saint'),
('saints-simon-and-jude-apostles', 'Saints Simon and Jude, Apostles', 'saint')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 'Saint Thérèse of the Child Jesus, Virgin and Doctor of the Church'),
('the-holy-guardian-angels', 'The Holy Guardian Angels'),
('saint-francis-of-assisi', 'Saint Francis of Assisi'),
('saint-faustina-kowalska-virgin', 'Saint Faustina Kowalska, Virgin'),
('saint-bruno-priest', 'Saint Bruno, Priest'),
('our-lady-of-the-rosary', 'Our Lady of the Rosary'),
('saint-denis-bishop-and-companions-martyrs', 'Saint Denis, Bishop, and Companions, Martyrs'),
('saint-john-leonardi-priest', 'Saint John Leonardi, Priest'),
('saint-john-henry-newman-priest-and-doctor-of-the-church', 'Saint John Henry Newman, Priest and Doctor of the Church'),
('saint-john-xxiii-pope', 'Saint John XXIII, Pope'),
('saint-callistus-i-pope-and-martyr', 'Saint Callistus I, Pope and Martyr'),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 'Saint Teresa of Jesus, Virgin and Doctor of the Church'),
('saint-hedwig-religious', 'Saint Hedwig, Religious'),
('saint-margaret-mary-alacoque-virgin', 'Saint Margaret Mary Alacoque, Virgin'),
('saint-ignatius-of-antioch-bishop-and-martyr', 'Saint Ignatius of Antioch, Bishop and Martyr'),
('saint-luke-evangelist', 'Saint Luke, Evangelist'),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 'Saints John de Brébeuf, Isaac Jogues, Priests, and Companions, Martyrs'),
('saint-paul-of-the-cross-priest', 'Saint Paul of the Cross, Priest'),
('saint-john-paul-ii-pope', 'Saint John Paul II, Pope'),
('saint-john-of-capistrano-priest', 'Saint John of Capistrano, Priest'),
('saint-anthony-mary-claret-bishop', 'Saint Anthony Mary Claret, Bishop'),
('saints-simon-and-jude-apostles', 'Saints Simon and Jude, Apostles')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 'Sainte Thérèse de l’Enfant-Jésus, vierge et docteur de l’Église'),
('the-holy-guardian-angels', 'Les Saints Anges gardiens'),
('saint-francis-of-assisi', 'Saint François d’Assise'),
('saint-faustina-kowalska-virgin', 'Sainte Faustine Kowalska, vierge'),
('saint-bruno-priest', 'Saint Bruno, prêtre'),
('our-lady-of-the-rosary', 'Notre-Dame du Rosaire'),
('saint-denis-bishop-and-companions-martyrs', 'Saint Denis, évêque, et ses compagnons, martyrs'),
('saint-john-leonardi-priest', 'Saint Jean Léonardi, prêtre'),
('saint-john-henry-newman-priest-and-doctor-of-the-church', 'Saint John Henry Newman, prêtre et docteur de l’Église'),
('saint-john-xxiii-pope', 'Saint Jean XXIII, pape'),
('saint-callistus-i-pope-and-martyr', 'Saint Calixte Ier, pape et martyr'),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 'Sainte Thérèse de Jésus, vierge et docteur de l’Église'),
('saint-hedwig-religious', 'Sainte Edwige, religieuse'),
('saint-margaret-mary-alacoque-virgin', 'Sainte Marguerite-Marie Alacoque, vierge'),
('saint-ignatius-of-antioch-bishop-and-martyr', 'Saint Ignace d’Antioche, évêque et martyr'),
('saint-luke-evangelist', 'Saint Luc, évangéliste'),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 'Saints Jean de Brébeuf, Isaac Jogues, prêtres, et leurs compagnons, martyrs'),
('saint-paul-of-the-cross-priest', 'Saint Paul de la Croix, prêtre'),
('saint-john-paul-ii-pope', 'Saint Jean-Paul II, pape'),
('saint-john-of-capistrano-priest', 'Saint Jean de Capistran, prêtre'),
('saint-anthony-mary-claret-bishop', 'Saint Antoine-Marie Claret, évêque'),
('saints-simon-and-jude-apostles', 'Saints Simon et Jude, apôtres')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 'Sancta Teresia a Iesu Infante, virgo et Ecclesiae doctor'),
('the-holy-guardian-angels', 'Sancti Angeli Custodes'),
('saint-francis-of-assisi', 'Sanctus Franciscus Assisiensis'),
('saint-faustina-kowalska-virgin', 'Sancta Faustina Kowalska, virgo'),
('saint-bruno-priest', 'Sanctus Bruno, presbyter'),
('our-lady-of-the-rosary', 'Beata Maria Virgo a Rosario'),
('saint-denis-bishop-and-companions-martyrs', 'Sanctus Dionysius et Socii, martyres'),
('saint-john-leonardi-priest', 'Sanctus Ioannes Leonardi, presbyter'),
('saint-john-henry-newman-priest-and-doctor-of-the-church', 'Sanctus Ioannes Henricus Newman, presbyter et Ecclesiae doctor'),
('saint-john-xxiii-pope', 'Sanctus Ioannes XXIII, papa'),
('saint-callistus-i-pope-and-martyr', 'Sanctus Callistus I, papa et martyr'),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 'Sancta Teresia a Iesu, virgo et Ecclesiae doctor'),
('saint-hedwig-religious', 'Sancta Hedvigis, religiosa'),
('saint-margaret-mary-alacoque-virgin', 'Sancta Margarita Maria Alacoque, virgo'),
('saint-ignatius-of-antioch-bishop-and-martyr', 'Sanctus Ignatius Antiochenus, episcopus et martyr'),
('saint-luke-evangelist', 'Sanctus Lucas, evangelista'),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 'Sancti Ioannes de Brebeuf, Isaac Jogues et Socii, martyres'),
('saint-paul-of-the-cross-priest', 'Sanctus Paulus a Cruce, presbyter'),
('saint-john-paul-ii-pope', 'Sanctus Ioannes Paulus II, papa'),
('saint-john-of-capistrano-priest', 'Sanctus Ioannes Capistranensis, presbyter'),
('saint-anthony-mary-claret-bishop', 'Sanctus Antonius Maria Claret, episcopus'),
('saints-simon-and-jude-apostles', 'Sancti Simon et Iudas, Apostoli')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FIXED date rules
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, notes)
SELECT f.id, c.id, 'fixed', x.month, x.day, 'Wikipedia fixed'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 10, 1),
('the-holy-guardian-angels', 10, 2),
('saint-francis-of-assisi', 10, 4),
('saint-faustina-kowalska-virgin', 10, 5),
('saint-bruno-priest', 10, 6),
('our-lady-of-the-rosary', 10, 7),
('saint-denis-bishop-and-companions-martyrs', 10, 9),
('saint-john-leonardi-priest', 10, 9),
('saint-john-henry-newman-priest-and-doctor-of-the-church', 10, 9),
('saint-john-xxiii-pope', 10, 11),
('saint-callistus-i-pope-and-martyr', 10, 14),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 10, 15),
('saint-hedwig-religious', 10, 16),
('saint-margaret-mary-alacoque-virgin', 10, 16),
('saint-ignatius-of-antioch-bishop-and-martyr', 10, 17),
('saint-luke-evangelist', 10, 18),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 10, 19),
('saint-paul-of-the-cross-priest', 10, 19),
('saint-john-paul-ii-pope', 10, 22),
('saint-john-of-capistrano-priest', 10, 23),
('saint-anthony-mary-claret-bishop', 10, 24),
('saints-simon-and-jude-apostles', 10, 28)
) AS x(slug, month, day)
ON f.slug = x.slug;

-- Celebrations (RED only explicit martyrs)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, x.is_optional, 'Wikipedia'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
JOIN (VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE),
('the-holy-guardian-angels', 'MEM_OBL', NULL, FALSE),
('saint-francis-of-assisi', 'MEM_OBL', NULL, FALSE),
('saint-faustina-kowalska-virgin', 'MEM_OPT', NULL, TRUE),
('saint-bruno-priest', 'MEM_OPT', NULL, TRUE),
('our-lady-of-the-rosary', 'MEM_OBL', NULL, FALSE),
('saint-denis-bishop-and-companions-martyrs', 'MEM_OPT', 'RED', TRUE),
('saint-john-leonardi-priest', 'MEM_OPT', NULL, TRUE),
('saint-john-henry-newman-priest-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saint-john-xxiii-pope', 'MEM_OPT', NULL, TRUE),
('saint-callistus-i-pope-and-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE),
('saint-hedwig-religious', 'MEM_OPT', NULL, TRUE),
('saint-margaret-mary-alacoque-virgin', 'MEM_OPT', NULL, TRUE),
('saint-ignatius-of-antioch-bishop-and-martyr', 'MEM_OBL', 'RED', FALSE),
('saint-luke-evangelist', 'FEAST', NULL, FALSE),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 'MEM_OPT', 'RED', TRUE),
('saint-paul-of-the-cross-priest', 'MEM_OPT', NULL, TRUE),
('saint-john-paul-ii-pope', 'MEM_OPT', NULL, TRUE),
('saint-john-of-capistrano-priest', 'MEM_OPT', NULL, TRUE),
('saint-anthony-mary-claret-bishop', 'MEM_OPT', NULL, TRUE),
('saints-simon-and-jude-apostles', 'FEAST', NULL, FALSE)
) AS x(slug, rank_code, color_code, is_optional)
ON f.slug = x.slug
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - November (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- Includes movable rule from source list:
--   - Last Sunday in Ordinary Time: Christ the King (solemnity)
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('all-saints', 'All Saints', 'saint'),
('the-commemoration-of-all-the-faithful-departed', 'The Commemoration of All the Faithful Departed', 'other'),
('saint-martin-de-porres-religious', 'Saint Martin de Porres, Religious', 'saint'),
('saint-charles-borromeo-bishop', 'Saint Charles Borromeo, Bishop', 'saint'),
('the-dedication-of-the-lateran-basilica', 'The Dedication of the Lateran Basilica', 'dedication'),
('saint-leo-the-great-pope-and-doctor-of-the-church', 'Saint Leo the Great, Pope and Doctor of the Church', 'saint'),
('saint-martin-of-tours-bishop', 'Saint Martin of Tours, Bishop', 'saint'),
('saint-josaphat-bishop-and-martyr', 'Saint Josaphat, Bishop and Martyr', 'saint'),
('saint-albert-the-great-bishop-and-doctor-of-the-church', 'Saint Albert the Great, Bishop and Doctor of the Church', 'saint'),
('saint-margaret-of-scotland', 'Saint Margaret of Scotland', 'saint'),
('saint-gertrude-virgin', 'Saint Gertrude, Virgin', 'saint'),
('saint-elizabeth-of-hungary-religious', 'Saint Elizabeth of Hungary, Religious', 'saint'),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', 'The Dedication of the Basilicas of Saints Peter and Paul, Apostles', 'dedication'),
('the-presentation-of-the-blessed-virgin-mary', 'The Presentation of the Blessed Virgin Mary', 'marian'),
('saint-cecilia-virgin-and-martyr', 'Saint Cecilia, Virgin and Martyr', 'saint'),
('saint-clement-i-pope-and-martyr', 'Saint Clement I, Pope and Martyr', 'saint'),
('saint-columban-abbot', 'Saint Columban, Abbot', 'saint'),
('saints-andrew-dung-lac-priest-and-companions-martyrs', 'Saints Andrew Dung-Lac, Priest, and Companions, Martyrs', 'saint'),
('saint-catherine-of-alexandria-virgin-and-martyr', 'Saint Catherine of Alexandria, Virgin and Martyr', 'saint'),
('saint-andrew-apostle', 'Saint Andrew, Apostle', 'saint'),
('our-lord-jesus-christ-king-of-the-universe', 'Our Lord Jesus Christ, King of the Universe', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('all-saints', 'All Saints'),
('the-commemoration-of-all-the-faithful-departed', 'The Commemoration of All the Faithful Departed'),
('saint-martin-de-porres-religious', 'Saint Martin de Porres, Religious'),
('saint-charles-borromeo-bishop', 'Saint Charles Borromeo, Bishop'),
('the-dedication-of-the-lateran-basilica', 'The Dedication of the Lateran Basilica'),
('saint-leo-the-great-pope-and-doctor-of-the-church', 'Saint Leo the Great, Pope and Doctor of the Church'),
('saint-martin-of-tours-bishop', 'Saint Martin of Tours, Bishop'),
('saint-josaphat-bishop-and-martyr', 'Saint Josaphat, Bishop and Martyr'),
('saint-albert-the-great-bishop-and-doctor-of-the-church', 'Saint Albert the Great, Bishop and Doctor of the Church'),
('saint-margaret-of-scotland', 'Saint Margaret of Scotland'),
('saint-gertrude-virgin', 'Saint Gertrude, Virgin'),
('saint-elizabeth-of-hungary-religious', 'Saint Elizabeth of Hungary, Religious'),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', 'The Dedication of the Basilicas of Saints Peter and Paul, Apostles'),
('the-presentation-of-the-blessed-virgin-mary', 'The Presentation of the Blessed Virgin Mary'),
('saint-cecilia-virgin-and-martyr', 'Saint Cecilia, Virgin and Martyr'),
('saint-clement-i-pope-and-martyr', 'Saint Clement I, Pope and Martyr'),
('saint-columban-abbot', 'Saint Columban, Abbot'),
('saints-andrew-dung-lac-priest-and-companions-martyrs', 'Saints Andrew Dung-Lac, Priest, and Companions, Martyrs'),
('saint-catherine-of-alexandria-virgin-and-martyr', 'Saint Catherine of Alexandria, Virgin and Martyr'),
('saint-andrew-apostle', 'Saint Andrew, Apostle'),
('our-lord-jesus-christ-king-of-the-universe', 'Our Lord Jesus Christ, King of the Universe')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('all-saints', 'Tous les Saints'),
('the-commemoration-of-all-the-faithful-departed', 'Commémoration de tous les fidèles défunts'),
('saint-martin-de-porres-religious', 'Saint Martin de Porres, religieux'),
('saint-charles-borromeo-bishop', 'Saint Charles Borromée, évêque'),
('the-dedication-of-the-lateran-basilica', 'Dédicace de la basilique du Latran'),
('saint-leo-the-great-pope-and-doctor-of-the-church', 'Saint Léon le Grand, pape et docteur de l’Église'),
('saint-martin-of-tours-bishop', 'Saint Martin de Tours, évêque'),
('saint-josaphat-bishop-and-martyr', 'Saint Josaphat, évêque et martyr'),
('saint-albert-the-great-bishop-and-doctor-of-the-church', 'Saint Albert le Grand, évêque et docteur de l’Église'),
('saint-margaret-of-scotland', 'Sainte Marguerite d’Écosse'),
('saint-gertrude-virgin', 'Sainte Gertrude, vierge'),
('saint-elizabeth-of-hungary-religious', 'Sainte Élisabeth de Hongrie, religieuse'),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', 'Dédicace des basiliques des saints Pierre et Paul, apôtres'),
('the-presentation-of-the-blessed-virgin-mary', 'Présentation de la Bienheureuse Vierge Marie'),
('saint-cecilia-virgin-and-martyr', 'Sainte Cécile, vierge et martyre'),
('saint-clement-i-pope-and-martyr', 'Saint Clément Ier, pape et martyr'),
('saint-columban-abbot', 'Saint Colomban, abbé'),
('saints-andrew-dung-lac-priest-and-companions-martyrs', 'Saints André Dung-Lac, prêtre, et ses compagnons, martyrs'),
('saint-catherine-of-alexandria-virgin-and-martyr', 'Sainte Catherine d’Alexandrie, vierge et martyre'),
('saint-andrew-apostle', 'Saint André, apôtre'),
('our-lord-jesus-christ-king-of-the-universe', 'Notre Seigneur Jésus Christ, Roi de l’Univers')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('all-saints', 'Omnium Sanctorum'),
('the-commemoration-of-all-the-faithful-departed', 'Commemoratio Omnium Fidelium Defunctorum'),
('saint-martin-de-porres-religious', 'Sanctus Martinus de Porres, religiosus'),
('saint-charles-borromeo-bishop', 'Sanctus Carolus Borromeo, episcopus'),
('the-dedication-of-the-lateran-basilica', 'Dedicatio Basilicae Lateranensis'),
('saint-leo-the-great-pope-and-doctor-of-the-church', 'Sanctus Leo Magnus, papa et Ecclesiae doctor'),
('saint-martin-of-tours-bishop', 'Sanctus Martinus Turonensis, episcopus'),
('saint-josaphat-bishop-and-martyr', 'Sanctus Iosaphat, episcopus et martyr'),
('saint-albert-the-great-bishop-and-doctor-of-the-church', 'Sanctus Albertus Magnus, episcopus et Ecclesiae doctor'),
('saint-margaret-of-scotland', 'Sancta Margarita Scotiae'),
('saint-gertrude-virgin', 'Sancta Gertrudis, virgo'),
('saint-elizabeth-of-hungary-religious', 'Sancta Elisabeth Hungariae, religiosa'),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', 'Dedicatio Basilicarum Sanctorum Petri et Pauli'),
('the-presentation-of-the-blessed-virgin-mary', 'Praesentatio Beatae Mariae Virginis'),
('saint-cecilia-virgin-and-martyr', 'Sancta Caecilia, virgo et martyr'),
('saint-clement-i-pope-and-martyr', 'Sanctus Clemens I, papa et martyr'),
('saint-columban-abbot', 'Sanctus Columbanus, abbas'),
('saints-andrew-dung-lac-priest-and-companions-martyrs', 'Sancti Andreas Dung-Lac et Socii, martyres'),
('saint-catherine-of-alexandria-virgin-and-martyr', 'Sancta Catharina Alexandrina, virgo et martyr'),
('saint-andrew-apostle', 'Sanctus Andreas, Apostolus'),
('our-lord-jesus-christ-king-of-the-universe', 'Dominus Noster Iesus Christus, Universorum Rex')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FIXED date rules
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, notes)
SELECT f.id, c.id, 'fixed', x.month, x.day, 'Wikipedia fixed'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('all-saints', 11, 1),
('the-commemoration-of-all-the-faithful-departed', 11, 2),
('saint-martin-de-porres-religious', 11, 3),
('saint-charles-borromeo-bishop', 11, 4),
('the-dedication-of-the-lateran-basilica', 11, 9),
('saint-leo-the-great-pope-and-doctor-of-the-church', 11, 10),
('saint-martin-of-tours-bishop', 11, 11),
('saint-josaphat-bishop-and-martyr', 11, 12),
('saint-albert-the-great-bishop-and-doctor-of-the-church', 11, 15),
('saint-margaret-of-scotland', 11, 16),
('saint-gertrude-virgin', 11, 16),
('saint-elizabeth-of-hungary-religious', 11, 17),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', 11, 18),
('the-presentation-of-the-blessed-virgin-mary', 11, 21),
('saint-cecilia-virgin-and-martyr', 11, 22),
('saint-clement-i-pope-and-martyr', 11, 23),
('saint-columban-abbot', 11, 23),
('saints-andrew-dung-lac-priest-and-companions-martyrs', 11, 24),
('saint-catherine-of-alexandria-virgin-and-martyr', 11, 25),
('saint-andrew-apostle', 11, 30)
) AS x(slug, month, day)
ON f.slug = x.slug;

-- MOVABLE rule:
-- Last Sunday in Ordinary Time: Christ the King
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'movable', 'LAST_SUNDAY_IN_ORDINARY_TIME', 0, 'Wikipedia movable'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
WHERE f.slug = 'our-lord-jesus-christ-king-of-the-universe';

-- Celebrations (RED only explicit martyrs)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, x.is_optional, 'Wikipedia'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
JOIN (VALUES
('all-saints', 'SOLEMNITY', NULL, FALSE),
('the-commemoration-of-all-the-faithful-departed', 'SOLEMNITY', NULL, FALSE),
('saint-martin-de-porres-religious', 'MEM_OPT', NULL, TRUE),
('saint-charles-borromeo-bishop', 'MEM_OBL', NULL, FALSE),
('the-dedication-of-the-lateran-basilica', 'FEAST', NULL, FALSE),
('saint-leo-the-great-pope-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE),
('saint-martin-of-tours-bishop', 'MEM_OBL', NULL, FALSE),
('saint-josaphat-bishop-and-martyr', 'MEM_OBL', 'RED', FALSE),
('saint-albert-the-great-bishop-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saint-margaret-of-scotland', 'MEM_OPT', NULL, TRUE),
('saint-gertrude-virgin', 'MEM_OPT', NULL, TRUE),
('saint-elizabeth-of-hungary-religious', 'MEM_OBL', NULL, FALSE),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', 'MEM_OPT', NULL, TRUE),
('the-presentation-of-the-blessed-virgin-mary', 'MEM_OBL', NULL, FALSE),
('saint-cecilia-virgin-and-martyr', 'MEM_OBL', 'RED', FALSE),
('saint-clement-i-pope-and-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-columban-abbot', 'MEM_OPT', NULL, TRUE),
('saints-andrew-dung-lac-priest-and-companions-martyrs', 'MEM_OBL', 'RED', FALSE),
('saint-catherine-of-alexandria-virgin-and-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-andrew-apostle', 'FEAST', NULL, FALSE),
('our-lord-jesus-christ-king-of-the-universe', 'SOLEMNITY', NULL, FALSE)
) AS x(slug, rank_code, color_code, is_optional)
ON f.slug = x.slug
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - December (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- Includes movable rule from source list:
--   - Sunday within Octave of Christmas OR 30 Dec: Holy Family (feast)
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-francis-xavier-priest', 'Saint Francis Xavier, Priest', 'saint'),
('saint-john-damascene-priest-and-doctor-of-the-church', 'Saint John Damascene, Priest and Doctor of the Church', 'saint'),
('saint-nicholas-bishop', 'Saint Nicholas, Bishop', 'saint'),
('saint-ambrose-bishop-and-doctor-of-the-church', 'Saint Ambrose, Bishop and Doctor of the Church', 'saint'),
('the-immaculate-conception-of-the-blessed-virgin-mary', 'The Immaculate Conception of the Blessed Virgin Mary', 'marian'),
('saint-juan-diego-cuauhtlatoatzin', 'Saint Juan Diego Cuauhtlatoatzin', 'saint'),
('our-lady-of-loreto', 'Our Lady of Loreto', 'marian'),
('saint-damasus-i-pope', 'Saint Damasus I, Pope', 'saint'),
('our-lady-of-guadalupe', 'Our Lady of Guadalupe', 'marian'),
('saint-lucy-virgin-and-martyr', 'Saint Lucy, Virgin and Martyr', 'saint'),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', 'Saint John of the Cross, Priest and Doctor of the Church', 'saint'),
('saint-peter-canisius-priest-and-doctor-of-the-church', 'Saint Peter Canisius, Priest and Doctor of the Church', 'saint'),
('saint-john-of-kanty-priest', 'Saint John of Kanty, Priest', 'saint'),
('nativity-of-the-lord', 'Nativity of the Lord', 'christological'),
('saint-stephen-the-first-martyr', 'Saint Stephen, the First Martyr', 'saint'),
('saint-john-apostle-and-evangelist', 'Saint John, Apostle and Evangelist', 'saint'),
('the-holy-innocents-martyrs', 'The Holy Innocents, Martyrs', 'saint'),
('saint-thomas-becket-bishop-and-martyr', 'Saint Thomas Becket, Bishop and Martyr', 'saint'),
('saint-sylvester-i-pope', 'Saint Sylvester I, Pope', 'saint'),
('the-holy-family-of-jesus-mary-and-joseph', 'The Holy Family of Jesus, Mary and Joseph', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-francis-xavier-priest', 'Saint Francis Xavier, Priest'),
('saint-john-damascene-priest-and-doctor-of-the-church', 'Saint John Damascene, Priest and Doctor of the Church'),
('saint-nicholas-bishop', 'Saint Nicholas, Bishop'),
('saint-ambrose-bishop-and-doctor-of-the-church', 'Saint Ambrose, Bishop and Doctor of the Church'),
('the-immaculate-conception-of-the-blessed-virgin-mary', 'The Immaculate Conception of the Blessed Virgin Mary'),
('saint-juan-diego-cuauhtlatoatzin', 'Saint Juan Diego Cuauhtlatoatzin'),
('our-lady-of-loreto', 'Our Lady of Loreto'),
('saint-damasus-i-pope', 'Saint Damasus I, Pope'),
('our-lady-of-guadalupe', 'Our Lady of Guadalupe'),
('saint-lucy-virgin-and-martyr', 'Saint Lucy, Virgin and Martyr'),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', 'Saint John of the Cross, Priest and Doctor of the Church'),
('saint-peter-canisius-priest-and-doctor-of-the-church', 'Saint Peter Canisius, Priest and Doctor of the Church'),
('saint-john-of-kanty-priest', 'Saint John of Kanty, Priest'),
('nativity-of-the-lord', 'Nativity of the Lord'),
('saint-stephen-the-first-martyr', 'Saint Stephen, the First Martyr'),
('saint-john-apostle-and-evangelist', 'Saint John, Apostle and Evangelist'),
('the-holy-innocents-martyrs', 'The Holy Innocents, Martyrs'),
('saint-thomas-becket-bishop-and-martyr', 'Saint Thomas Becket, Bishop and Martyr'),
('saint-sylvester-i-pope', 'Saint Sylvester I, Pope'),
('the-holy-family-of-jesus-mary-and-joseph', 'The Holy Family of Jesus, Mary and Joseph')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-francis-xavier-priest', 'Saint François Xavier, prêtre'),
('saint-john-damascene-priest-and-doctor-of-the-church', 'Saint Jean Damascène, prêtre et docteur de l’Église'),
('saint-nicholas-bishop', 'Saint Nicolas, évêque'),
('saint-ambrose-bishop-and-doctor-of-the-church', 'Saint Ambroise, évêque et docteur de l’Église'),
('the-immaculate-conception-of-the-blessed-virgin-mary', 'Immaculée Conception de la Bienheureuse Vierge Marie'),
('saint-juan-diego-cuauhtlatoatzin', 'Saint Juan Diego Cuauhtlatoatzin'),
('our-lady-of-loreto', 'Notre-Dame de Lorette'),
('saint-damasus-i-pope', 'Saint Damase Ier, pape'),
('our-lady-of-guadalupe', 'Notre-Dame de Guadalupe'),
('saint-lucy-virgin-and-martyr', 'Sainte Lucie, vierge et martyre'),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', 'Saint Jean de la Croix, prêtre et docteur de l’Église'),
('saint-peter-canisius-priest-and-doctor-of-the-church', 'Saint Pierre Canisius, prêtre et docteur de l’Église'),
('saint-john-of-kanty-priest', 'Saint Jean de Kenty, prêtre'),
('nativity-of-the-lord', 'Nativité du Seigneur'),
('saint-stephen-the-first-martyr', 'Saint Étienne, premier martyr'),
('saint-john-apostle-and-evangelist', 'Saint Jean, apôtre et évangéliste'),
('the-holy-innocents-martyrs', 'Les Saints Innocents, martyrs'),
('saint-thomas-becket-bishop-and-martyr', 'Saint Thomas Becket, évêque et martyr'),
('saint-sylvester-i-pope', 'Saint Sylvestre Ier, pape'),
('the-holy-family-of-jesus-mary-and-joseph', 'La Sainte Famille de Jésus, Marie et Joseph')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-francis-xavier-priest', 'Sanctus Franciscus Xaverius, presbyter'),
('saint-john-damascene-priest-and-doctor-of-the-church', 'Sanctus Ioannes Damascenus, presbyter et Ecclesiae doctor'),
('saint-nicholas-bishop', 'Sanctus Nicolaus, episcopus'),
('saint-ambrose-bishop-and-doctor-of-the-church', 'Sanctus Ambrosius, episcopus et Ecclesiae doctor'),
('the-immaculate-conception-of-the-blessed-virgin-mary', 'Immaculata Conceptio Beatae Mariae Virginis'),
('saint-juan-diego-cuauhtlatoatzin', 'Sanctus Ioannes Didacus Cuauhtlatoatzin'),
('our-lady-of-loreto', 'Beata Maria Virgo Lauretana'),
('saint-damasus-i-pope', 'Sanctus Damasus I, papa'),
('our-lady-of-guadalupe', 'Beata Maria Virgo Guadalupensis'),
('saint-lucy-virgin-and-martyr', 'Sancta Lucia, virgo et martyr'),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', 'Sanctus Ioannes a Cruce, presbyter et Ecclesiae doctor'),
('saint-peter-canisius-priest-and-doctor-of-the-church', 'Sanctus Petrus Canisius, presbyter et Ecclesiae doctor'),
('saint-john-of-kanty-priest', 'Sanctus Ioannes Cantius, presbyter'),
('nativity-of-the-lord', 'Nativitas Domini'),
('saint-stephen-the-first-martyr', 'Sanctus Stephanus, Protomartyr'),
('saint-john-apostle-and-evangelist', 'Sanctus Ioannes, Apostolus et evangelista'),
('the-holy-innocents-martyrs', 'Sancti Innocentes, martyres'),
('saint-thomas-becket-bishop-and-martyr', 'Sanctus Thomas Becket, episcopus et martyr'),
('saint-sylvester-i-pope', 'Sanctus Silvester I, papa'),
('the-holy-family-of-jesus-mary-and-joseph', 'Sancta Familia Iesu, Mariae et Ioseph')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FIXED date rules
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, notes)
SELECT f.id, c.id, 'fixed', x.month, x.day, 'Wikipedia fixed'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-francis-xavier-priest', 12, 3),
('saint-john-damascene-priest-and-doctor-of-the-church', 12, 4),
('saint-nicholas-bishop', 12, 6),
('saint-ambrose-bishop-and-doctor-of-the-church', 12, 7),
('the-immaculate-conception-of-the-blessed-virgin-mary', 12, 8),
('saint-juan-diego-cuauhtlatoatzin', 12, 9),
('our-lady-of-loreto', 12, 10),
('saint-damasus-i-pope', 12, 11),
('our-lady-of-guadalupe', 12, 12),
('saint-lucy-virgin-and-martyr', 12, 13),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', 12, 14),
('saint-peter-canisius-priest-and-doctor-of-the-church', 12, 21),
('saint-john-of-kanty-priest', 12, 23),
('nativity-of-the-lord', 12, 25),
('saint-stephen-the-first-martyr', 12, 26),
('saint-john-apostle-and-evangelist', 12, 27),
('the-holy-innocents-martyrs', 12, 28),
('saint-thomas-becket-bishop-and-martyr', 12, 29),
('saint-sylvester-i-pope', 12, 31)
) AS x(slug, month, day)
ON f.slug = x.slug;

-- MOVABLE rule:
-- Sunday within Octave of Christmas, or if none, 30 December: Holy Family
-- Store a movable base and handle fallback-to-30-Dec in API logic.
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'movable', 'SUNDAY_WITHIN_CHRISTMAS_OCTAVE_OR_DEC30', 0, 'Wikipedia movable'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
WHERE f.slug = 'the-holy-family-of-jesus-mary-and-joseph';

-- Celebrations (RED only explicit martyrs)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, x.is_optional, 'Wikipedia'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
JOIN (VALUES
('saint-francis-xavier-priest', 'MEM_OBL', NULL, FALSE),
('saint-john-damascene-priest-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saint-nicholas-bishop', 'MEM_OPT', NULL, TRUE),
('saint-ambrose-bishop-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE),
('the-immaculate-conception-of-the-blessed-virgin-mary', 'SOLEMNITY', NULL, FALSE),
('saint-juan-diego-cuauhtlatoatzin', 'MEM_OPT', NULL, TRUE),
('our-lady-of-loreto', 'MEM_OPT', NULL, TRUE),
('saint-damasus-i-pope', 'MEM_OPT', NULL, TRUE),
('our-lady-of-guadalupe', 'MEM_OPT', NULL, TRUE),
('saint-lucy-virgin-and-martyr', 'MEM_OBL', 'RED', FALSE),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', 'MEM_OBL', NULL, FALSE),
('saint-peter-canisius-priest-and-doctor-of-the-church', 'MEM_OPT', NULL, TRUE),
('saint-john-of-kanty-priest', 'MEM_OPT', NULL, TRUE),
('nativity-of-the-lord', 'SOLEMNITY', NULL, FALSE),
('saint-stephen-the-first-martyr', 'FEAST', 'RED', FALSE),
('saint-john-apostle-and-evangelist', 'FEAST', NULL, FALSE),
('the-holy-innocents-martyrs', 'FEAST', 'RED', FALSE),
('saint-thomas-becket-bishop-and-martyr', 'MEM_OPT', 'RED', TRUE),
('saint-sylvester-i-pope', 'MEM_OPT', NULL, TRUE),
('the-holy-family-of-jesus-mary-and-joseph', 'FEAST', NULL, FALSE)
) AS x(slug, rank_code, color_code, is_optional)
ON f.slug = x.slug
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Easter Octave (Sunday INCLUDED as observance_type='octave')
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('easter-sunday-of-the-resurrection-of-the-lord', 'Easter Sunday of the Resurrection of the Lord', 'christological'),
('monday-in-the-octave-of-easter', 'Monday in the Octave of Easter', 'christological'),
('tuesday-in-the-octave-of-easter', 'Tuesday in the Octave of Easter', 'christological'),
('wednesday-in-the-octave-of-easter', 'Wednesday in the Octave of Easter', 'christological'),
('thursday-in-the-octave-of-easter', 'Thursday in the Octave of Easter', 'christological'),
('friday-in-the-octave-of-easter', 'Friday in the Octave of Easter', 'christological'),
('saturday-in-the-octave-of-easter', 'Saturday in the Octave of Easter', 'christological'),
('second-sunday-of-easter-divine-mercy-sunday', 'Second Sunday of Easter (Divine Mercy Sunday)', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('easter-sunday-of-the-resurrection-of-the-lord', 'Easter Sunday of the Resurrection of the Lord'),
('monday-in-the-octave-of-easter', 'Monday in the Octave of Easter'),
('tuesday-in-the-octave-of-easter', 'Tuesday in the Octave of Easter'),
('wednesday-in-the-octave-of-easter', 'Wednesday in the Octave of Easter'),
('thursday-in-the-octave-of-easter', 'Thursday in the Octave of Easter'),
('friday-in-the-octave-of-easter', 'Friday in the Octave of Easter'),
('saturday-in-the-octave-of-easter', 'Saturday in the Octave of Easter'),
('second-sunday-of-easter-divine-mercy-sunday', 'Second Sunday of Easter (Divine Mercy Sunday)')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('easter-sunday-of-the-resurrection-of-the-lord', 'Dimanche de Pâques de la Résurrection du Seigneur'),
('monday-in-the-octave-of-easter', 'Lundi dans l’Octave de Pâques'),
('tuesday-in-the-octave-of-easter', 'Mardi dans l’Octave de Pâques'),
('wednesday-in-the-octave-of-easter', 'Mercredi dans l’Octave de Pâques'),
('thursday-in-the-octave-of-easter', 'Jeudi dans l’Octave de Pâques'),
('friday-in-the-octave-of-easter', 'Vendredi dans l’Octave de Pâques'),
('saturday-in-the-octave-of-easter', 'Samedi dans l’Octave de Pâques'),
('second-sunday-of-easter-divine-mercy-sunday', 'Deuxième dimanche de Pâques (Dimanche de la Divine Miséricorde)')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('easter-sunday-of-the-resurrection-of-the-lord', 'Dominica Resurrectionis Domini'),
('monday-in-the-octave-of-easter', 'Feria II infra Octavam Paschae'),
('tuesday-in-the-octave-of-easter', 'Feria III infra Octavam Paschae'),
('wednesday-in-the-octave-of-easter', 'Feria IV infra Octavam Paschae'),
('thursday-in-the-octave-of-easter', 'Feria V infra Octavam Paschae'),
('friday-in-the-octave-of-easter', 'Feria VI infra Octavam Paschae'),
('saturday-in-the-octave-of-easter', 'Sabbato infra Octavam Paschae'),
('second-sunday-of-easter-divine-mercy-sunday', 'Dominica II Paschae seu de divina Misericordia')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- DATE RULES (relative to Easter Sunday)
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'movable', 'EASTER_SUNDAY', x.offset_days, 'Computed by API (Easter octave)'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('easter-sunday-of-the-resurrection-of-the-lord', 0),
('monday-in-the-octave-of-easter', 1),
('tuesday-in-the-octave-of-easter', 2),
('wednesday-in-the-octave-of-easter', 3),
('thursday-in-the-octave-of-easter', 4),
('friday-in-the-octave-of-easter', 5),
('saturday-in-the-octave-of-easter', 6),
('second-sunday-of-easter-divine-mercy-sunday', 7)
) AS x(slug, offset_days)
ON f.slug = x.slug;

-- CELEBRATIONS (all octave, including Easter Sunday)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'octave', FALSE, 'Roman General Calendar (Easter Octave)'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug IN (
  'easter-sunday-of-the-resurrection-of-the-lord',
  'monday-in-the-octave-of-easter',
  'tuesday-in-the-octave-of-easter',
  'wednesday-in-the-octave-of-easter',
  'thursday-in-the-octave-of-easter',
  'friday-in-the-octave-of-easter',
  'saturday-in-the-octave-of-easter',
  'second-sunday-of-easter-divine-mercy-sunday'
)
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Easter Vigil (J-1)
-- =========================================================

-- FEAST
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('easter-vigil-in-the-holy-night', 'Easter Vigil in the Holy Night', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- TRANSLATIONS
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Easter Vigil in the Holy Night', NULL
FROM feasts f
WHERE f.slug = 'easter-vigil-in-the-holy-night'
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', 'Vigile pascale dans la Nuit sainte', NULL
FROM feasts f
WHERE f.slug = 'easter-vigil-in-the-holy-night'
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', 'Vigilia Paschalis in Nocte Sancta', NULL
FROM feasts f
WHERE f.slug = 'easter-vigil-in-the-holy-night'
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- DATE RULE (J-1 from Easter Sunday)
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'movable', 'EASTER_SUNDAY', -1, 'Computed by API: Easter Sunday - 1 day'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
WHERE f.slug = 'easter-vigil-in-the-holy-night';

-- CELEBRATION
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'vigil', FALSE, 'Roman General Calendar'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'easter-vigil-in-the-holy-night'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

COMMIT;
