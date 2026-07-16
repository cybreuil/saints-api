-- =========================================================
-- Roman General Calendar - (EN/FR/LA)
-- Calendar: TRIDENTINE_1962
-- Source : https://en.wikipedia.org/wiki/General_Roman_Calendar_of_1960
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
('saint-hilary-bishop-and-doctor-of-the-church', 'Saint Hilaire, évêque et docteur de l''Église'),
('saint-anthony-abbot', 'Saint Antoine, abbé'),
('saint-fabian-pope-and-martyr', 'Saint Fabien, pape et martyr'),
('saint-sebastian-martyr', 'Saint Sébastien, martyr'),
('saint-agnes-virgin-and-martyr', 'Sainte Agnès, vierge et martyre'),
('saint-vincent-deacon-and-martyr', 'Saint Vincent, diacre et martyr'),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'Saint François de Sales, évêque et docteur de l''Église'),
('the-conversion-of-saint-paul-the-apostle', 'Conversion de saint Paul, apôtre'),
('saints-timothy-and-titus-bishops', 'Saints Timothée et Tite, évêques'),
('saint-angela-merici-virgin', 'Sainte Angèle Merici, vierge'),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'Saint Thomas d''Aquin, prêtre et docteur de l''Église'),
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

-- 5) CELEBRATIONS (fixed)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
-- Christmas octave
('solemnity-of-mary-the-holy-mother-of-god', 1, 1, 'SOLEMNITY', 'WHITE', 'octave', FALSE, 'Wikipedia'),
-- Christmas octave ended
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 1, 2, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('the-most-holy-name-of-jesus', 1, 3, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('the-epiphany-of-the-lord', 1, 6, 'SOLEMNITY', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-raymond-of-penyafort-priest', 1, 7, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-hilary-bishop-and-doctor-of-the-church', 1, 13, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-anthony-abbot', 1, 17, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-fabian-pope-and-martyr', 1, 20, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-sebastian-martyr', 1, 20, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-agnes-virgin-and-martyr', 1, 21, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-vincent-deacon-and-martyr', 1, 22, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 1, 24, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('the-conversion-of-saint-paul-the-apostle', 1, 25, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saints-timothy-and-titus-bishops', 1, 26, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-angela-merici-virgin', 1, 27, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 1, 28, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-john-bosco-priest', 1, 31, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- January movable rule:
-- Sunday after 6 January: The Baptism of the Lord
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'movable', 'SUNDAY_AFTER_EPIPHANY', 0, 'normal', FALSE, 'Wikipedia movable'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'the-baptism-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;
















COMMIT;
