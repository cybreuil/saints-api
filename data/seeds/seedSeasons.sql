BEGIN;

-- =========================================================
-- Liturgical seasons reference + translations
-- =========================================================

INSERT INTO liturgical_seasons (code, default_name) VALUES
('ADVENT', 'Advent'),
('CHRISTMASTIDE', 'Christmastide'),
('ORDINARY_TIME', 'Ordinary Time'),
('LENT', 'Lent'),
('TRIDUUM', 'Triduum'),
('EASTERTIDE', 'Eastertide'),

-- Traditional Roman calendar (1960) Extra Seasons
('SEPTUAGESIMA', 'Septuagesima'),
('PASSIONTIDE', 'Passiontide'),
('POST_PENTECOST', 'Time after Pentecost')
ON CONFLICT (code) DO NOTHING;

-- =========================================================
-- TRANSLATIONS
-- =========================================================

INSERT INTO liturgical_season_translations (season_code, locale_code, label) VALUES

-- =========================================================
-- ENGLISH
-- =========================================================

('ADVENT', 'en', 'Advent'),
('CHRISTMASTIDE', 'en', 'Christmas Time'),
('ORDINARY_TIME', 'en', 'Ordinary Time'),
('LENT', 'en', 'Lent'),
('TRIDUUM', 'en', 'Paschal Triduum'),
('EASTERTIDE', 'en', 'Eastertide'),

('SEPTUAGESIMA', 'en', 'Septuagesima'),
('PASSIONTIDE', 'en', 'Passiontide'),
('POST_PENTECOST', 'en', 'Time after Pentecost'),

-- =========================================================
-- FRENCH
-- =========================================================

('ADVENT', 'fr', 'Avent'),
('CHRISTMASTIDE', 'fr', 'Temps de Noël'),
('ORDINARY_TIME', 'fr', 'Temps ordinaire'),
('LENT', 'fr', 'Carême'),
('TRIDUUM', 'fr', 'Triduum pascal'),
('EASTERTIDE', 'fr', 'Temps pascal'),

('SEPTUAGESIMA', 'fr', 'Temps de la Septuagésime'),
('PASSIONTIDE', 'fr', 'Temps de la Passion'),
('POST_PENTECOST', 'fr', 'Temps après la Pentecôte'),

-- =========================================================
-- LATIN
-- =========================================================

('ADVENT', 'la', 'Tempus Adventus'),
('CHRISTMASTIDE', 'la', 'Tempus Nativitatis'),
('ORDINARY_TIME', 'la', 'Tempus per annum'),
('LENT', 'la', 'Tempus Quadragesimae'),
('TRIDUUM', 'la', 'Triduum Paschale'),
('EASTERTIDE', 'la', 'Tempus Paschale'),

('SEPTUAGESIMA', 'la', 'Tempus Septuagesimae'),
('PASSIONTIDE', 'la', 'Tempus Passionis'),
('POST_PENTECOST', 'la', 'Tempus post Pentecosten')

ON CONFLICT (season_code, locale_code) DO NOTHING;

COMMIT;
