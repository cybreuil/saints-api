-- =========================================================
-- Roman Poland Calendar - Proper Saints and Promoted Feasts
-- Calendar: ROMAN_POLAND
--
-- Prerequisites:
--   - ROMAN_POLAND calendar already exists in calendars table
--   - ROMAN_POLAND has NO own liturgical_ranks rows; all rank
--     lookups must go through ROMAN_GENERAL's ranks.
--   - Existing ROMAN_GENERAL feasts are NOT duplicated.
-- =========================================================

BEGIN;

-- =========================================================
-- Section 1: Poland-only feasts (new slugs, not in ROMAN_GENERAL)
-- =========================================================

INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-jozef-sebastian-pelczar-bishop',                                 'Saint Józef Sebastian Pelczar, Bishop',                                 'sanctoral'),
('saint-vincent-pallotti-priest',                                        'Saint Vincent Pallotti, Priest',                                        'sanctoral'),
('our-lady-queen-of-poland',                                             'Our Lady, Queen of Poland',                                             'marian'),
('saint-florian-martyr',                                                 'Saint Florian, Martyr',                                                 'sanctoral'),
('saint-stanislaw-kazimierczyk-priest',                                  'Saint Stanisław Kazimierczyk, Priest',                                  'sanctoral'),
('saint-andrew-bobola-priest-and-martyr',                                'Saint Andrew Bobola, Priest and Martyr',                                'sanctoral'),
('our-lady-help-of-christians',                                          'Our Lady, Help of Christians',                                          'marian'),
('saint-ursula-ledochowska-virgin',                                      'Saint Ursula Ledóchowska, Virgin',                                      'sanctoral'),
('saint-john-sarkander-priest-and-martyr',                               'Saint John Sarkander, Priest and Martyr',                               'sanctoral'),
('saint-zdzislawa',                                                      'Saint Zdzisława',                                                       'sanctoral'),
('saint-hedwig-the-queen',                                               'Saint Hedwig the Queen',                                                'sanctoral'),
('blessed-antoni-nowowiejski-bishop-and-companions-martyrs',             'Blessed Antoni Nowowiejski, Bishop and Companions, Martyrs',            'sanctoral'),
('blessed-michael-kozal-bishop-and-martyr',                              'Blessed Michael Kozal, Bishop and Martyr',                              'sanctoral'),
('saint-albert-chmielowski-religious',                                   'Saint Albert Chmielowski, Religious',                                   'sanctoral'),
('saint-zygmunt-gorazdowski-priest',                                     'Saint Zygmunt Gorazdowski, Priest',                                     'sanctoral'),
('saint-otto-bishop',                                                    'Saint Otto, Bishop',                                                    'sanctoral'),
('blessed-maria-teresia-ledochowska-virgin',                             'Blessed Maria Teresia Ledóchowska, Virgin',                             'sanctoral'),
('saint-john-of-dukla-priest',                                           'Saint John of Dukla, Priest',                                           'sanctoral'),
('saint-bruno-boniface-of-querfurt-bishop-and-martyr',                   'Saint Bruno Boniface of Querfurt, Bishop and Martyr',                   'sanctoral'),
('saints-andrzej-swierad-and-benedict-hermits',                          'Saints Andrzej Świerad and Benedict, Hermits',                          'sanctoral'),
('saint-simon-of-lipnica-priest',                                        'Saint Simon of Lipnica, Priest',                                        'sanctoral'),
('blessed-czeslaw-priest',                                               'Blessed Czesław, Priest',                                               'sanctoral'),
('saint-kinga-virgin',                                                   'Saint Kinga, Virgin',                                                   'sanctoral'),
('saint-hyacinth-priest',                                                'Saint Hyacinth, Priest',                                                'sanctoral'),
('our-lady-of-czestochowa',                                              'Our Lady of Częstochowa',                                               'marian'),
('blessed-maria-stella-and-companions-virgins-and-martyrs',              'Blessed Maria Stella and Companions, Virgins and Martyrs',              'sanctoral'),
('saint-melchior-grodziecki-priest-and-martyr',                          'Saint Melchior Grodziecki, Priest and Martyr',                          'sanctoral'),
('saint-zygmunt-szczesny-felinski-bishop',                               'Saint Zygmunt Szczęsny Feliński, Bishop',                               'sanctoral'),
('saint-stanislaw-kostka-religious',                                     'Saint Stanisław Kostka, Religious',                                     'sanctoral'),
('blessed-john-beyzym-priest',                                           'Blessed John Beyzym, Priest',                                           'sanctoral'),
('blessed-honorat-kozminski-priest',                                     'Blessed Honorat Koźmiński, Priest',                                     'sanctoral'),
('saint-hedwig-of-poland',                                               'Saint Hedwig of Poland',                                                'sanctoral'),
('saint-josef-bilczewski-bishop',                                        'Saint Josef Bilczewski, Bishop',                                        'sanctoral'),
('saints-benedykt-jan-mateusz-isaak-and-krystyn-the-first-martyrs-of-poland', 'Saints Benedykt, Jan, Mateusz, Isaak and Krystyn, the First Martyrs of Poland', 'sanctoral'),
('blessed-karolina-kozkowna-virgin-and-martyr',                          'Blessed Karolina Kózkówna, Virgin and Martyr',                          'sanctoral'),
('saint-rafal-kalinowski-priest',                                        'Saint Rafał Kalinowski, Priest',                                        'sanctoral'),
('saint-barbara-virgin-and-martyr',                                      'Saint Barbara, Virgin and Martyr',                                      'sanctoral')
ON CONFLICT (slug) DO NOTHING;

-- =========================================================
-- Section 2: Feast translations for Poland-only feasts
-- =========================================================

-- EN
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
  ('saint-jozef-sebastian-pelczar-bishop',                                 'Saint Józef Sebastian Pelczar, Bishop'),
  ('saint-vincent-pallotti-priest',                                        'Saint Vincent Pallotti, Priest'),
  ('our-lady-queen-of-poland',                                             'Our Lady, Queen of Poland'),
  ('saint-florian-martyr',                                                 'Saint Florian, Martyr'),
  ('saint-stanislaw-kazimierczyk-priest',                                  'Saint Stanisław Kazimierczyk, Priest'),
  ('saint-andrew-bobola-priest-and-martyr',                                'Saint Andrew Bobola, Priest and Martyr'),
  ('our-lady-help-of-christians',                                          'Our Lady, Help of Christians'),
  ('saint-ursula-ledochowska-virgin',                                      'Saint Ursula Ledóchowska, Virgin'),
  ('saint-john-sarkander-priest-and-martyr',                               'Saint John Sarkander, Priest and Martyr'),
  ('saint-zdzislawa',                                                      'Saint Zdzisława'),
  ('saint-hedwig-the-queen',                                               'Saint Hedwig the Queen'),
  ('blessed-antoni-nowowiejski-bishop-and-companions-martyrs',             'Blessed Antoni Nowowiejski, Bishop and Companions, Martyrs'),
  ('blessed-michael-kozal-bishop-and-martyr',                              'Blessed Michael Kozal, Bishop and Martyr'),
  ('saint-albert-chmielowski-religious',                                   'Saint Albert Chmielowski, Religious'),
  ('saint-zygmunt-gorazdowski-priest',                                     'Saint Zygmunt Gorazdowski, Priest'),
  ('saint-otto-bishop',                                                    'Saint Otto, Bishop'),
  ('blessed-maria-teresia-ledochowska-virgin',                             'Blessed Maria Teresia Ledóchowska, Virgin'),
  ('saint-john-of-dukla-priest',                                           'Saint John of Dukla, Priest'),
  ('saint-bruno-boniface-of-querfurt-bishop-and-martyr',                   'Saint Bruno Boniface of Querfurt, Bishop and Martyr'),
  ('saints-andrzej-swierad-and-benedict-hermits',                          'Saints Andrzej Świerad and Benedict, Hermits'),
  ('saint-simon-of-lipnica-priest',                                        'Saint Simon of Lipnica, Priest'),
  ('blessed-czeslaw-priest',                                               'Blessed Czesław, Priest'),
  ('saint-kinga-virgin',                                                   'Saint Kinga, Virgin'),
  ('saint-hyacinth-priest',                                                'Saint Hyacinth, Priest'),
  ('our-lady-of-czestochowa',                                              'Our Lady of Częstochowa'),
  ('blessed-maria-stella-and-companions-virgins-and-martyrs',              'Blessed Maria Stella and Companions, Virgins and Martyrs'),
  ('saint-melchior-grodziecki-priest-and-martyr',                          'Saint Melchior Grodziecki, Priest and Martyr'),
  ('saint-zygmunt-szczesny-felinski-bishop',                               'Saint Zygmunt Szczęsny Feliński, Bishop'),
  ('saint-stanislaw-kostka-religious',                                     'Saint Stanisław Kostka, Religious'),
  ('blessed-john-beyzym-priest',                                           'Blessed John Beyzym, Priest'),
  ('blessed-honorat-kozminski-priest',                                     'Blessed Honorat Koźmiński, Priest'),
  ('saint-hedwig-of-poland',                                               'Saint Hedwig of Poland'),
  ('saint-josef-bilczewski-bishop',                                        'Saint Josef Bilczewski, Bishop'),
  ('saints-benedykt-jan-mateusz-isaak-and-krystyn-the-first-martyrs-of-poland', 'Saints Benedykt, Jan, Mateusz, Isaak and Krystyn, the First Martyrs of Poland'),
  ('blessed-karolina-kozkowna-virgin-and-martyr',                          'Blessed Karolina Kózkówna, Virgin and Martyr'),
  ('saint-rafal-kalinowski-priest',                                        'Saint Rafał Kalinowski, Priest'),
  ('saint-barbara-virgin-and-martyr',                                      'Saint Barbara, Virgin and Martyr')
) AS x(slug, name)
  ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
  ('saint-jozef-sebastian-pelczar-bishop',                                 'Saint Józef Sebastian Pelczar, évêque'),
  ('saint-vincent-pallotti-priest',                                        'Saint Vincent Pallotti, prêtre'),
  ('our-lady-queen-of-poland',                                             'Notre-Dame, Reine de Pologne'),
  ('saint-florian-martyr',                                                 'Saint Florian, martyr'),
  ('saint-stanislaw-kazimierczyk-priest',                                  'Saint Stanisław Kazimierczyk, prêtre'),
  ('saint-andrew-bobola-priest-and-martyr',                                'Saint André Bobola, prêtre et martyr'),
  ('our-lady-help-of-christians',                                          'Notre-Dame, Secours des chrétiens'),
  ('saint-ursula-ledochowska-virgin',                                      'Sainte Ursule Ledóchowska, vierge'),
  ('saint-john-sarkander-priest-and-martyr',                               'Saint Jean Sarkander, prêtre et martyr'),
  ('saint-zdzislawa',                                                      'Sainte Zdzisława'),
  ('saint-hedwig-the-queen',                                               'Sainte Edwige Reine'),
  ('blessed-antoni-nowowiejski-bishop-and-companions-martyrs',             'Bienheureux Antoni Nowowiejski, évêque, et compagnons, martyrs'),
  ('blessed-michael-kozal-bishop-and-martyr',                              'Bienheureux Michel Kozal, évêque et martyr'),
  ('saint-albert-chmielowski-religious',                                   'Saint Albert Chmielowski, religieux'),
  ('saint-zygmunt-gorazdowski-priest',                                     'Saint Zygmunt Gorazdowski, prêtre'),
  ('saint-otto-bishop',                                                    'Saint Otton, évêque'),
  ('blessed-maria-teresia-ledochowska-virgin',                             'Bienheureuse Maria Teresa Ledóchowska, vierge'),
  ('saint-john-of-dukla-priest',                                           'Saint Jean de Dukla, prêtre'),
  ('saint-bruno-boniface-of-querfurt-bishop-and-martyr',                   'Saint Bruno Boniface de Querfurt, évêque et martyr'),
  ('saints-andrzej-swierad-and-benedict-hermits',                          'Saints André Świerad et Benoît, ermites'),
  ('saint-simon-of-lipnica-priest',                                        'Saint Simon de Lipnica, prêtre'),
  ('blessed-czeslaw-priest',                                               'Bienheureux Czesław, prêtre'),
  ('saint-kinga-virgin',                                                   'Sainte Kinga, vierge'),
  ('saint-hyacinth-priest',                                                'Saint Hyacinthe, prêtre'),
  ('our-lady-of-czestochowa',                                              'Notre-Dame de Częstochowa'),
  ('blessed-maria-stella-and-companions-virgins-and-martyrs',              'Bienheureuse Maria Stella et compagnes, vierges et martyres'),
  ('saint-melchior-grodziecki-priest-and-martyr',                          'Saint Melchior Grodziecki, prêtre et martyr'),
  ('saint-zygmunt-szczesny-felinski-bishop',                               'Saint Zygmunt Szczęsny Feliński, évêque'),
  ('saint-stanislaw-kostka-religious',                                     'Saint Stanisław Kostka, religieux'),
  ('blessed-john-beyzym-priest',                                           'Bienheureux Jean Beyzym, prêtre'),
  ('blessed-honorat-kozminski-priest',                                     'Bienheureux Honorat Koźmiński, prêtre'),
  ('saint-hedwig-of-poland',                                               'Sainte Edwige de Pologne'),
  ('saint-josef-bilczewski-bishop',                                        'Saint Josef Bilczewski, évêque'),
  ('saints-benedykt-jan-mateusz-isaak-and-krystyn-the-first-martyrs-of-poland', 'Saints Benedykt, Jan, Mateusz, Isaak et Krystyn, premiers martyrs de Pologne'),
  ('blessed-karolina-kozkowna-virgin-and-martyr',                          'Bienheureuse Karolina Kózkówna, vierge et martyre'),
  ('saint-rafal-kalinowski-priest',                                        'Saint Rafał Kalinowski, prêtre'),
  ('saint-barbara-virgin-and-martyr',                                      'Sainte Barbe, vierge et martyre')
) AS x(slug, name)
  ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
  ('saint-jozef-sebastian-pelczar-bishop',                                 'Sanctus Ioseph Sebastianus Pelczar, episcopus'),
  ('saint-vincent-pallotti-priest',                                        'Sanctus Vincentius Pallotti, presbyter'),
  ('our-lady-queen-of-poland',                                             'Beata Maria Virgo, Regina Poloniae'),
  ('saint-florian-martyr',                                                 'Sanctus Florianus, martyr'),
  ('saint-stanislaw-kazimierczyk-priest',                                  'Sanctus Stanislaus Kazimierczyk, presbyter'),
  ('saint-andrew-bobola-priest-and-martyr',                                'Sanctus Andreas Bobola, presbyter et martyr'),
  ('our-lady-help-of-christians',                                          'Beata Maria Virgo, Auxilium Christianorum'),
  ('saint-ursula-ledochowska-virgin',                                      'Sancta Ursula Ledóchowska, virgo'),
  ('saint-john-sarkander-priest-and-martyr',                               'Sanctus Ioannes Sarkander, presbyter et martyr'),
  ('saint-zdzislawa',                                                      'Sancta Zdzislava'),
  ('saint-hedwig-the-queen',                                               'Sancta Hedvigis Regina'),
  ('blessed-antoni-nowowiejski-bishop-and-companions-martyrs',             'Beatus Antonius Nowowiejski, episcopus et socii, martyres'),
  ('blessed-michael-kozal-bishop-and-martyr',                              'Beatus Michael Kozal, episcopus et martyr'),
  ('saint-albert-chmielowski-religious',                                   'Sanctus Albertus Chmielowski, religiosus'),
  ('saint-zygmunt-gorazdowski-priest',                                     'Sanctus Sigismundus Gorazdowski, presbyter'),
  ('saint-otto-bishop',                                                    'Sanctus Otto, episcopus'),
  ('blessed-maria-teresia-ledochowska-virgin',                             'Beata Maria Theresia Ledóchowska, virgo'),
  ('saint-john-of-dukla-priest',                                           'Sanctus Ioannes de Dukla, presbyter'),
  ('saint-bruno-boniface-of-querfurt-bishop-and-martyr',                   'Sanctus Bruno Bonifatius de Querfurt, episcopus et martyr'),
  ('saints-andrzej-swierad-and-benedict-hermits',                          'Sancti Andreas Svierad et Benedictus, eremitae'),
  ('saint-simon-of-lipnica-priest',                                        'Sanctus Simon de Lipnica, presbyter'),
  ('blessed-czeslaw-priest',                                               'Beatus Czeslaus, presbyter'),
  ('saint-kinga-virgin',                                                   'Sancta Kinga, virgo'),
  ('saint-hyacinth-priest',                                                'Sanctus Hyacinthus, presbyter'),
  ('our-lady-of-czestochowa',                                              'Beata Maria Virgo Claromontana'),
  ('blessed-maria-stella-and-companions-virgins-and-martyrs',              'Beata Maria Stella et sociae, virgines et martyres'),
  ('saint-melchior-grodziecki-priest-and-martyr',                          'Sanctus Melchior Grodziecki, presbyter et martyr'),
  ('saint-zygmunt-szczesny-felinski-bishop',                               'Sanctus Sigismundus Felix Feliński, episcopus'),
  ('saint-stanislaw-kostka-religious',                                     'Sanctus Stanislaus Kostka, religiosus'),
  ('blessed-john-beyzym-priest',                                           'Beatus Ioannes Beyzym, presbyter'),
  ('blessed-honorat-kozminski-priest',                                     'Beatus Honoratus Koźmiński, presbyter'),
  ('saint-hedwig-of-poland',                                               'Sancta Hedvigis Poloniae'),
  ('saint-josef-bilczewski-bishop',                                        'Sanctus Ioseph Bilczewski, episcopus'),
  ('saints-benedykt-jan-mateusz-isaak-and-krystyn-the-first-martyrs-of-poland', 'Sancti Benedykt, Ioannes, Matthaeus, Isaac et Krystyn, primi martyres Poloniae'),
  ('blessed-karolina-kozkowna-virgin-and-martyr',                          'Beata Carolina Kózkówna, virgo et martyr'),
  ('saint-rafal-kalinowski-priest',                                        'Sanctus Raphael Kalinowski, presbyter'),
  ('saint-barbara-virgin-and-martyr',                                      'Sancta Barbara, virgo et martyr')
) AS x(slug, name)
  ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- =========================================================
-- Section 3a: Celebrations for Poland-only feasts
-- =========================================================

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, cal.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars cal  ON cal.code  = 'ROMAN_POLAND'
JOIN calendars rcal ON rcal.code = 'ROMAN_GENERAL'
JOIN (VALUES
  ('saint-jozef-sebastian-pelczar-bishop',                                 1, 19, 'MEM_OBL', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-vincent-pallotti-priest',                                        1, 22, 'MEM_OPT', 'WHITE', 'normal', true,  'Polish national calendar'),
  ('our-lady-queen-of-poland',                                             5,  3, 'SOLEMNITY', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-florian-martyr',                                                 5,  4, 'MEM_OBL', 'RED',   'normal', false, 'Polish national calendar'),
  ('saint-stanislaw-kazimierczyk-priest',                                  5,  5, 'MEM_OPT', 'WHITE', 'normal', true,  'Polish national calendar'),
  ('saint-andrew-bobola-priest-and-martyr',                                5, 16, 'FEAST',   'RED',   'normal', false, 'Polish national calendar'),
  ('our-lady-help-of-christians',                                          5, 24, 'MEM_OBL', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-ursula-ledochowska-virgin',                                      5, 29, 'MEM_OBL', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-john-sarkander-priest-and-martyr',                               5, 30, 'MEM_OPT', 'RED',   'normal', true,  'Polish national calendar'),
  ('saint-zdzislawa',                                                      5, 30, 'MEM_OPT', 'WHITE', 'normal', true,  'Polish national calendar'),
  ('saint-hedwig-the-queen',                                               6,  8, 'MEM_OBL', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('blessed-antoni-nowowiejski-bishop-and-companions-martyrs',             6, 12, 'MEM_OPT', 'RED',   'normal', true,  'Polish national calendar'),
  ('blessed-michael-kozal-bishop-and-martyr',                              6, 14, 'MEM_OBL', 'RED',   'normal', false, 'Polish national calendar'),
  ('saint-albert-chmielowski-religious',                                   6, 17, 'MEM_OBL', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-zygmunt-gorazdowski-priest',                                     6, 26, 'MEM_OPT', 'WHITE', 'normal', true,  'Polish national calendar'),
  ('saint-otto-bishop',                                                    7,  1, 'MEM_OPT', 'WHITE', 'normal', true,  'Polish national calendar'),
  ('blessed-maria-teresia-ledochowska-virgin',                             7,  6, 'MEM_OBL', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-john-of-dukla-priest',                                           7,  8, 'MEM_OBL', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-bruno-boniface-of-querfurt-bishop-and-martyr',                   7, 12, 'MEM_OBL', 'RED',   'normal', false, 'Polish national calendar'),
  ('saints-andrzej-swierad-and-benedict-hermits',                          7, 13, 'MEM_OBL', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-simon-of-lipnica-priest',                                        7, 18, 'MEM_OPT', 'WHITE', 'normal', true,  'Polish national calendar'),
  ('blessed-czeslaw-priest',                                               7, 20, 'MEM_OPT', 'WHITE', 'normal', true,  'Polish national calendar'),
  ('saint-kinga-virgin',                                                   7, 24, 'MEM_OBL', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-hyacinth-priest',                                                8, 17, 'MEM_OBL', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('our-lady-of-czestochowa',                                              8, 26, 'SOLEMNITY', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('blessed-maria-stella-and-companions-virgins-and-martyrs',              9,  4, 'MEM_OPT', 'RED',   'normal', true,  'Polish national calendar'),
  ('saint-melchior-grodziecki-priest-and-martyr',                          9,  7, 'MEM_OPT', 'RED',   'normal', true,  'Polish national calendar'),
  ('saint-zygmunt-szczesny-felinski-bishop',                               9, 17, 'MEM_OPT', 'WHITE', 'normal', true,  'Polish national calendar'),
  ('saint-stanislaw-kostka-religious',                                     9, 18, 'FEAST',   'WHITE', 'normal', false, 'Polish national calendar'),
  ('blessed-john-beyzym-priest',                                          10, 12, 'MEM_OPT', 'WHITE', 'normal', true,  'Polish national calendar'),
  ('blessed-honorat-kozminski-priest',                                    10, 13, 'MEM_OBL', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-hedwig-of-poland',                                              10, 16, 'MEM_OBL', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-josef-bilczewski-bishop',                                       10, 23, 'MEM_OPT', 'WHITE', 'normal', true,  'Polish national calendar'),
  ('saints-benedykt-jan-mateusz-isaak-and-krystyn-the-first-martyrs-of-poland', 11, 13, 'MEM_OBL', 'RED', 'normal', false, 'Polish national calendar'),
  ('blessed-karolina-kozkowna-virgin-and-martyr',                         11, 18, 'MEM_OBL', 'RED',   'normal', false, 'Polish national calendar'),
  ('saint-rafal-kalinowski-priest',                                       11, 20, 'MEM_OBL', 'WHITE', 'normal', false, 'Polish national calendar')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
  ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = rcal.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Section 3b: Celebrations for feasts already in ROMAN_GENERAL
-- =========================================================

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, cal.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars cal  ON cal.code  = 'ROMAN_POLAND'
JOIN calendars rcal ON rcal.code = 'ROMAN_GENERAL'
JOIN (VALUES
  ('saints-cyril-monk-and-methodius-bishop',                   2, 14, 'FEAST',     'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-casimir',                                            3,  4, 'FEAST',     'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-adalbert-bishop-and-martyr',                         4, 23, 'SOLEMNITY', 'RED',   'normal', false, 'Polish national calendar'),
  ('saint-fidelis-of-sigmaringen-priest-and-martyr',           4, 24, 'MEM_OPT',   'RED',   'normal', true,  'Polish national calendar'),
  ('saint-george-martyr',                                      4, 24, 'MEM_OPT',   'RED',   'normal', true,  'Polish national calendar'),
  ('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 4, 29, 'FEAST',     'WHITE', 'normal', false, 'Polish national calendar'),
  ('saints-philip-and-james-apostles',                         5,  6, 'FEAST',     'RED',   'normal', false, 'Polish national calendar'),
  ('saint-stanislaus-bishop-and-martyr',                       5,  8, 'SOLEMNITY', 'RED',   'normal', false, 'Polish national calendar'),
  ('saint-camillus-de-lellis-priest',                          7, 14, 'MEM_OPT',   'WHITE', 'normal', true,  'Polish national calendar'),
  ('saint-henry',                                              7, 14, 'MEM_OPT',   'WHITE', 'normal', true,  'Polish national calendar'),
  ('saint-anthony-zaccaria-priest',                            7,  5, 'MEM_OPT',   'WHITE', 'normal', true,  'Polish national calendar'),
  ('saint-maria-goretti-virgin-and-martyr',                    7,  5, 'MEM_OPT',   'RED',   'normal', true,  'Polish national calendar'),
  ('saint-benedict-abbot',                                     7, 11, 'FEAST',     'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-bridget-religious',                                  7, 23, 'FEAST',     'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-sharbel-makhluf-priest',                             7, 28, 'MEM_OPT',   'WHITE', 'normal', true,  'Polish national calendar'),
  ('saint-teresa-benedicta-of-the-cross-virgin-and-martyr',    8,  9, 'FEAST',     'RED',   'normal', false, 'Polish national calendar'),
  ('saint-faustina-kowalska-virgin',                          10,  5, 'MEM_OBL',   'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-john-of-kanty-priest',                              10, 20, 'MEM_OBL',   'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-john-paul-ii-pope',                                 10, 22, 'MEM_OBL',   'WHITE', 'normal', false, 'Polish national calendar'),
  ('saint-barbara-virgin-and-martyr',                         12,  4, 'MEM_OPT',   'RED',   'normal', true,  'Polish national calendar')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
  ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = rcal.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Section 3c: Movable feasts already in ROMAN_GENERAL
-- eternal high priest is seeded in spain calendar
-- =========================================================

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional, notes)
SELECT f.id, cal.id, r.id, lc.id, 'movable', x.movable_base, x.movable_offset_days, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars cal  ON cal.code  = 'ROMAN_POLAND'
JOIN calendars rcal ON rcal.code = 'ROMAN_GENERAL'
JOIN (VALUES
  ('blessed-virgin-mary-mother-of-the-church',   'PENTECOST', 1, 'FEAST', 'WHITE', 'normal', false, 'Polish national calendar'),
  ('jesus-christ-the-eternal-high-priest',        'PENTECOST', 4, 'FEAST_LORD', 'WHITE', 'normal', false, 'Polish national calendar')
) AS x(slug, movable_base, movable_offset_days, rank_code, color_code, observance_type, is_optional, notes)
  ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = rcal.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

COMMIT;
