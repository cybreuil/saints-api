-- =========================================================
-- Roman Portugal Calendar - Proper Saints and Promoted Feasts
-- Calendar: ROMAN_PORTUGAL
--
-- Prerequisites:
--   - ROMAN_PORTUGAL calendar already exists in calendars table
--   - ROMAN_PORTUGAL has NO own liturgical_ranks rows; all rank
--     lookups must go through ROMAN_GENERAL's ranks.
--   - Existing ROMAN_GENERAL feasts are NOT duplicated.
-- =========================================================

BEGIN;

-- =========================================================
-- Section 1: Portugal-only feasts (new slugs, not in ROMAN_GENERAL)
-- =========================================================

INSERT INTO feasts (slug, default_name, feast_type) VALUES
('blessed-goncalo-de-amarante-priest',                      'Blessed Gonçalo de Amarante, Priest',                               'sanctoral'),
('saint-john-de-brito-priest-and-martyr',                   'Saint John de Brito, Priest and Martyr',                            'sanctoral'),
('the-five-wounds-of-the-lord',                             'The Five Wounds of the Lord',                                        'christological'),
('saint-theotonius-priest',                                 'Saint Theotonius, Priest',                                           'sanctoral'),
('saints-jacinta-and-francisco-marto',                      'Saints Jacinta and Francisco Marto',                                 'sanctoral'),
('blessed-joan-of-portugal-virgin',                         'Blessed Joan of Portugal, Virgin',                                   'sanctoral'),
('guardian-angel-of-portugal',                              'Guardian Angel of Portugal',                                         'angelic'),
('blessed-sancha-and-mafalda-virgins',                      'Blessed Sancha and Mafalda, Virgins',                                'sanctoral'),
('blessed-theresa-of-portugal-religious',                   'Blessed Theresa of Portugal, Religious',                             'sanctoral'),
('blessed-inacio-de-azevedo-priest-and-companions-martyrs', 'Blessed Inácio de Azevedo, Priest, and Companions, Martyrs',         'sanctoral'),
('blessed-bartholomew-of-the-martyrs-bishop',               'Blessed Bartholomew of the Martyrs, Bishop',                         'sanctoral'),
('saint-beatrice-of-silva-virgin',                          'Saint Beatrice of Silva, Virgin',                                    'sanctoral'),
('blessed-goncalo-de-lagos-priest',                         'Blessed Gonçalo de Lagos, Priest',                                   'sanctoral'),
('saint-nuno-of-saint-mary',                                'Saint Nuno of Saint Mary',                                           'sanctoral'),
('saints-fructuosus-martin-of-dume-and-gerald-bishops',     'Saint Fructuosus, Saint Martin of Dume and Saint Gerald, Bishops',   'sanctoral')
ON CONFLICT (slug) DO NOTHING;

-- =========================================================
-- Section 2: Feast translations for Portugal-only feasts
-- =========================================================

-- EN
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
  ('blessed-goncalo-de-amarante-priest',                      'Blessed Gonçalo de Amarante, Priest'),
  ('saint-john-de-brito-priest-and-martyr',                   'Saint John de Brito, Priest and Martyr'),
  ('the-five-wounds-of-the-lord',                             'The Five Wounds of the Lord'),
  ('saint-theotonius-priest',                                 'Saint Theotonius, Priest'),
  ('saints-jacinta-and-francisco-marto',                      'Saints Jacinta and Francisco Marto'),
  ('blessed-joan-of-portugal-virgin',                         'Blessed Joan of Portugal, Virgin'),
  ('guardian-angel-of-portugal',                              'Guardian Angel of Portugal'),
  ('blessed-sancha-and-mafalda-virgins',                      'Blessed Sancha and Mafalda, Virgins'),
  ('blessed-theresa-of-portugal-religious',                   'Blessed Theresa of Portugal, Religious'),
  ('blessed-inacio-de-azevedo-priest-and-companions-martyrs', 'Blessed Inácio de Azevedo, Priest, and Companions, Martyrs'),
  ('blessed-bartholomew-of-the-martyrs-bishop',               'Blessed Bartholomew of the Martyrs, Bishop'),
  ('saint-beatrice-of-silva-virgin',                          'Saint Beatrice of Silva, Virgin'),
  ('blessed-goncalo-de-lagos-priest',                         'Blessed Gonçalo de Lagos, Priest'),
  ('saint-nuno-of-saint-mary',                                'Saint Nuno of Saint Mary'),
  ('saints-fructuosus-martin-of-dume-and-gerald-bishops',     'Saint Fructuosus, Saint Martin of Dume and Saint Gerald, Bishops')
) AS x(slug, name)
  ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
  ('blessed-goncalo-de-amarante-priest',                      'Bienheureux Gonçalo de Amarante, prêtre'),
  ('saint-john-de-brito-priest-and-martyr',                   'Saint Jean de Britto, prêtre et martyr'),
  ('the-five-wounds-of-the-lord',                             'Les Cinq Plaies du Seigneur'),
  ('saint-theotonius-priest',                                 'Saint Théotonio, prêtre'),
  ('saints-jacinta-and-francisco-marto',                      'Saints Jacinta et Francisco Marto'),
  ('blessed-joan-of-portugal-virgin',                         'Bienheureuse Jeanne de Portugal, vierge'),
  ('guardian-angel-of-portugal',                              'Ange gardien du Portugal'),
  ('blessed-sancha-and-mafalda-virgins',                      'Bienheureuses Sancha et Mafalda, vierges'),
  ('blessed-theresa-of-portugal-religious',                   'Bienheureuse Thérèse de Portugal, religieuse'),
  ('blessed-inacio-de-azevedo-priest-and-companions-martyrs', 'Bienheureux Inácio de Azevedo, prêtre, et compagnons, martyrs'),
  ('blessed-bartholomew-of-the-martyrs-bishop',               'Bienheureux Barthélemy des Martyrs, évêque'),
  ('saint-beatrice-of-silva-virgin',                          'Sainte Béatrice de Silva, vierge'),
  ('blessed-goncalo-de-lagos-priest',                         'Bienheureux Gonçalo de Lagos, prêtre'),
  ('saint-nuno-of-saint-mary',                                'Saint Nuno de Sainte Marie'),
  ('saints-fructuosus-martin-of-dume-and-gerald-bishops',     'Saints Fructueux, Martin de Dume et Gérald, évêques')
) AS x(slug, name)
  ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
  ('blessed-goncalo-de-amarante-priest',                      'Beatus Gonsalus de Amarante, presbyter'),
  ('saint-john-de-brito-priest-and-martyr',                   'Sanctus Ioannes de Britto, presbyter et martyr'),
  ('the-five-wounds-of-the-lord',                             'Quinque Vulnera Domini'),
  ('saint-theotonius-priest',                                 'Sanctus Theotonius, presbyter'),
  ('saints-jacinta-and-francisco-marto',                      'Sancti Iacinta et Franciscus Marto'),
  ('blessed-joan-of-portugal-virgin',                         'Beata Ioanna Lusitaniae, virgo'),
  ('guardian-angel-of-portugal',                              'Angelus custos Lusitaniae'),
  ('blessed-sancha-and-mafalda-virgins',                      'Beatae Sancia et Mafalda, virgines'),
  ('blessed-theresa-of-portugal-religious',                   'Beata Theresia Lusitaniae, religiosa'),
  ('blessed-inacio-de-azevedo-priest-and-companions-martyrs', 'Beatus Ignatius de Azevedo, presbyter, et socii, martyres'),
  ('blessed-bartholomew-of-the-martyrs-bishop',               'Beatus Bartholomaeus a Martyribus, episcopus'),
  ('saint-beatrice-of-silva-virgin',                          'Sancta Beatrix de Silva, virgo'),
  ('blessed-goncalo-de-lagos-priest',                         'Beatus Gonsalus de Lagos, presbyter'),
  ('saint-nuno-of-saint-mary',                                'Sanctus Nuno a Sancta Maria'),
  ('saints-fructuosus-martin-of-dume-and-gerald-bishops',     'Sancti Fructuosus, Martinus Bracarensis et Geraldus, episcopi')
) AS x(slug, name)
  ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- =========================================================
-- Section 3a: Celebrations for Portugal-only feasts
-- =========================================================

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, cal.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars cal  ON cal.code  = 'ROMAN_PORTUGAL'
JOIN calendars rcal ON rcal.code = 'ROMAN_GENERAL'
JOIN (VALUES
  ('blessed-goncalo-de-amarante-priest',                      1, 11, 'MEM_OPT', 'WHITE', 'normal', true,  'Secretariado Nacional de Liturgia'),
  ('saint-john-de-brito-priest-and-martyr',      			  2,  4, 'MEM_OBL', 'RED',   'normal', false, 'Secretariado Nacional de Liturgia'),
  ('the-five-wounds-of-the-lord',                             2,  7, 'FEAST',   'RED',   'normal', false, 'Secretariado Nacional de Liturgia'),
  ('saint-theotonius-priest',                                 2, 18, 'MEM_OBL', 'WHITE', 'normal', false, 'Secretariado Nacional de Liturgia'),
  ('saints-jacinta-and-francisco-marto',                      2, 20, 'MEM_OPT', 'WHITE', 'normal', true,  'Secretariado Nacional de Liturgia'),
  ('blessed-joan-of-portugal-virgin',                         5, 12, 'MEM_OPT', 'WHITE', 'normal', true,  'Secretariado Nacional de Liturgia'),
  ('guardian-angel-of-portugal',                              6, 10, 'MEM_OBL', 'WHITE', 'normal', false, 'Secretariado Nacional de Liturgia'),
  ('blessed-sancha-and-mafalda-virgins',                      6, 20, 'MEM_OPT', 'WHITE', 'normal', true,  'Secretariado Nacional de Liturgia'),
  ('blessed-theresa-of-portugal-religious',                   6, 20, 'MEM_OPT', 'WHITE', 'normal', true,  'Secretariado Nacional de Liturgia'),
  ('blessed-inacio-de-azevedo-priest-and-companions-martyrs', 7, 17, 'MEM_OBL', 'RED',   'normal', false, 'Secretariado Nacional de Liturgia'),
  ('blessed-bartholomew-of-the-martyrs-bishop',               7, 18, 'MEM_OBL', 'WHITE', 'normal', false, 'Secretariado Nacional de Liturgia'),
  ('saint-beatrice-of-silva-virgin',                          8, 17, 'MEM_OBL', 'WHITE', 'normal', false, 'Secretariado Nacional de Liturgia'),
  ('blessed-goncalo-de-lagos-priest',                        10, 27, 'MEM_OPT', 'WHITE', 'normal', true,  'Secretariado Nacional de Liturgia'),
  ('saint-nuno-of-saint-mary',                               11,  6, 'MEM_OBL', 'WHITE', 'normal', false, 'Secretariado Nacional de Liturgia'),
  ('saints-fructuosus-martin-of-dume-and-gerald-bishops',    12,  5, 'MEM_OBL', 'WHITE', 'normal', false, 'Secretariado Nacional de Liturgia')
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
JOIN calendars cal  ON cal.code  = 'ROMAN_PORTUGAL'
JOIN calendars rcal ON rcal.code = 'ROMAN_GENERAL'
JOIN (VALUES
  ('saints-cyril-monk-and-methodius-bishop',                   2, 14, 'FEAST',   'WHITE', 'normal', false, 'Secretariado Nacional de Liturgia'),
  ('saint-john-of-god-religious',                              3,  8, 'MEM_OBL', 'WHITE', 'normal', false, 'Secretariado Nacional de Liturgia'),
  ('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 4, 29, 'FEAST',   'WHITE', 'normal', false, 'Secretariado Nacional de Liturgia'),
  ('our-lady-of-fatima',                                       5, 13, 'FEAST',   'WHITE', 'normal', false, 'Secretariado Nacional de Liturgia'),
  ('saint-anthony-of-padua-priest-and-doctor-of-the-church',   6, 13, 'FEAST',   'WHITE', 'normal', false, 'Used for Saint Anthony of Lisbon'),
  ('saint-elizabeth-of-portugal',                              7,  4, 'MEM_OBL', 'WHITE', 'normal', false, 'Secretariado Nacional de Liturgia'),
  ('saint-benedict-abbot',                                     7, 11, 'FEAST',   'WHITE', 'normal', false, 'Secretariado Nacional de Liturgia'),
  ('saint-bridget-religious',                                  7, 23, 'FEAST',   'WHITE', 'normal', false, 'Secretariado Nacional de Liturgia'),
  ('saint-teresa-benedicta-of-the-cross-virgin-and-martyr',    8,  9, 'FEAST',   'RED',   'normal', false, 'Secretariado Nacional de Liturgia')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
  ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = rcal.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

COMMIT;
