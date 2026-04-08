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
('EASTERTIDE', 'Eastertide')
ON CONFLICT (code) DO NOTHING;

-- EN
INSERT INTO liturgical_season_translations (season_code, locale_code, label) VALUES
('ADVENT', 'en', 'Advent'),
('CHRISTMASTIDE', 'en', 'Christmas Time'),
('ORDINARY_TIME', 'en', 'Ordinary Time'),
('LENT', 'en', 'Lent'),
('TRIDUUM', 'en', 'Paschal Triduum'),
('EASTERTIDE', 'en', 'Easter Time')
ON CONFLICT (season_code, locale_code) DO NOTHING;

-- FR
INSERT INTO liturgical_season_translations (season_code, locale_code, label) VALUES
('ADVENT', 'fr', 'Avent'),
('CHRISTMASTIDE', 'fr', 'Temps de Noël'),
('ORDINARY_TIME', 'fr', 'Temps ordinaire'),
('LENT', 'fr', 'Carême'),
('TRIDUUM', 'fr', 'Triduum pascal'),
('EASTERTIDE', 'fr', 'Temps pascal')
ON CONFLICT (season_code, locale_code) DO NOTHING;

-- LA
INSERT INTO liturgical_season_translations (season_code, locale_code, label) VALUES
('ADVENT', 'la', 'Tempus Adventus'),
('CHRISTMASTIDE', 'la', 'Tempus Nativitatis'),
('ORDINARY_TIME', 'la', 'Tempus per annum'),
('LENT', 'la', 'Tempus Quadragesimae'),
('TRIDUUM', 'la', 'Triduum Paschale'),
('EASTERTIDE', 'la', 'Tempus Paschale')
ON CONFLICT (season_code, locale_code) DO NOTHING;

-- =========================================================
-- ROMAN_GENERAL season boundaries (rule-based)
-- Convention:
-- - start rule + end rule per season
-- - end is inclusive (except where noted)
-- =========================================================

-- ADVENT
-- starts: First Sunday of Advent
-- ends: Dec 24 (before Christmas Vigil)
INSERT INTO liturgical_season_rules
(calendar_id, season_code, rule_kind, month, day, movable_base, movable_offset_days, is_start, inclusive, notes)
SELECT c.id, x.season_code, x.rule_kind, x.month, x.day, x.movable_base, x.movable_offset_days, x.is_start, x.inclusive, x.notes
FROM calendars c
JOIN (VALUES
('ADVENT', 'movable', NULL::smallint, NULL::smallint, 'FIRST_ADVENT_SUNDAY', 0, TRUE, TRUE, 'Start of Advent'),
('ADVENT', 'fixed', 12::smallint, 24::smallint, NULL, NULL, FALSE, TRUE, 'End of Advent (daytime of Dec 24)')
) AS x(season_code, rule_kind, month, day, movable_base, movable_offset_days, is_start, inclusive, notes)
ON c.code = 'ROMAN_GENERAL';

-- CHRISTMASTIDE
-- starts: Dec 25
-- ends: Baptism of the Lord
INSERT INTO liturgical_season_rules
(calendar_id, season_code, rule_kind, month, day, movable_base, movable_offset_days, is_start, inclusive, notes)
SELECT c.id, x.season_code, x.rule_kind, x.month, x.day, x.movable_base, x.movable_offset_days, x.is_start, x.inclusive, x.notes
FROM calendars c
JOIN (VALUES
('CHRISTMASTIDE', 'fixed', 12::smallint, 25::smallint, NULL, NULL, TRUE, TRUE, 'Start of Christmas Time'),
('CHRISTMASTIDE', 'movable', NULL::smallint, NULL::smallint, 'BAPTISM_OF_THE_LORD', 0, FALSE, TRUE, 'End of Christmas Time')
) AS x(season_code, rule_kind, month, day, movable_base, movable_offset_days, is_start, inclusive, notes)
ON c.code = 'ROMAN_GENERAL';

-- ORDINARY_TIME (part 1)
-- starts: day after Baptism of the Lord
-- ends: day before Ash Wednesday
INSERT INTO liturgical_season_rules
(calendar_id, season_code, rule_kind, month, day, movable_base, movable_offset_days, is_start, inclusive, notes)
SELECT c.id, x.season_code, x.rule_kind, x.month, x.day, x.movable_base, x.movable_offset_days, x.is_start, x.inclusive, x.notes
FROM calendars c
JOIN (VALUES
('ORDINARY_TIME', 'movable', NULL::smallint, NULL::smallint, 'BAPTISM_OF_THE_LORD', 1, TRUE, TRUE, 'Ordinary Time starts after Baptism of the Lord'),
('ORDINARY_TIME', 'movable', NULL::smallint, NULL::smallint, 'ASH_WEDNESDAY', -1, FALSE, TRUE, 'Ordinary Time part 1 ends before Ash Wednesday')
) AS x(season_code, rule_kind, month, day, movable_base, movable_offset_days, is_start, inclusive, notes)
ON c.code = 'ROMAN_GENERAL';

-- LENT
-- starts: Ash Wednesday
-- ends: day before Holy Thursday evening Mass
INSERT INTO liturgical_season_rules
(calendar_id, season_code, rule_kind, month, day, movable_base, movable_offset_days, is_start, inclusive, notes)
SELECT c.id, x.season_code, x.rule_kind, x.month, x.day, x.movable_base, x.movable_offset_days, x.is_start, x.inclusive, x.notes
FROM calendars c
JOIN (VALUES
('LENT', 'movable', NULL::smallint, NULL::smallint, 'ASH_WEDNESDAY', 0, TRUE, TRUE, 'Start of Lent'),
('LENT', 'movable', NULL::smallint, NULL::smallint, 'HOLY_THURSDAY', -1, FALSE, TRUE, 'Lent ends before Evening Mass of the Lord''s Supper')
) AS x(season_code, rule_kind, month, day, movable_base, movable_offset_days, is_start, inclusive, notes)
ON c.code = 'ROMAN_GENERAL';

-- TRIDUUM
-- starts: Holy Thursday
-- ends: Easter Sunday
INSERT INTO liturgical_season_rules
(calendar_id, season_code, rule_kind, month, day, movable_base, movable_offset_days, is_start, inclusive, notes)
SELECT c.id, x.season_code, x.rule_kind, x.month, x.day, x.movable_base, x.movable_offset_days, x.is_start, x.inclusive, x.notes
FROM calendars c
JOIN (VALUES
('TRIDUUM', 'movable', NULL::smallint, NULL::smallint, 'HOLY_THURSDAY', 0, TRUE, TRUE, 'Start of Paschal Triduum'),
('TRIDUUM', 'movable', NULL::smallint, NULL::smallint, 'EASTER_SUNDAY', 0, FALSE, TRUE, 'End of Paschal Triduum')
) AS x(season_code, rule_kind, month, day, movable_base, movable_offset_days, is_start, inclusive, notes)
ON c.code = 'ROMAN_GENERAL';

-- EASTERTIDE
-- starts: Easter Sunday
-- ends: Pentecost Sunday
INSERT INTO liturgical_season_rules
(calendar_id, season_code, rule_kind, month, day, movable_base, movable_offset_days, is_start, inclusive, notes)
SELECT c.id, x.season_code, x.rule_kind, x.month, x.day, x.movable_base, x.movable_offset_days, x.is_start, x.inclusive, x.notes
FROM calendars c
JOIN (VALUES
('EASTERTIDE', 'movable', NULL::smallint, NULL::smallint, 'EASTER_SUNDAY', 0, TRUE, TRUE, 'Start of Easter Time'),
('EASTERTIDE', 'movable', NULL::smallint, NULL::smallint, 'PENTECOST', 0, FALSE, TRUE, 'End of Easter Time')
) AS x(season_code, rule_kind, month, day, movable_base, movable_offset_days, is_start, inclusive, notes)
ON c.code = 'ROMAN_GENERAL';

-- ORDINARY_TIME (part 2)
-- starts: day after Pentecost
-- ends: day before First Sunday of Advent
INSERT INTO liturgical_season_rules
(calendar_id, season_code, rule_kind, month, day, movable_base, movable_offset_days, is_start, inclusive, notes)
SELECT c.id, x.season_code, x.rule_kind, x.month, x.day, x.movable_base, x.movable_offset_days, x.is_start, x.inclusive, x.notes
FROM calendars c
JOIN (VALUES
('ORDINARY_TIME', 'movable', NULL::smallint, NULL::smallint, 'PENTECOST', 1, TRUE, TRUE, 'Ordinary Time part 2 starts after Pentecost'),
('ORDINARY_TIME', 'movable', NULL::smallint, NULL::smallint, 'FIRST_ADVENT_SUNDAY', -1, FALSE, TRUE, 'Ordinary Time ends before Advent')
) AS x(season_code, rule_kind, month, day, movable_base, movable_offset_days, is_start, inclusive, notes)
ON c.code = 'ROMAN_GENERAL';

-- =========================================================
-- Season -> color fallback (ROMAN_GENERAL)
-- =========================================================

INSERT INTO liturgical_season_colors (season_code, calendar_id, color_id)
SELECT x.season_code, c.id, lc.id
FROM calendars c
JOIN liturgical_colors lc ON lc.code = x.color_code
JOIN (VALUES
  ('ADVENT', 'PURPLE'),
  ('CHRISTMASTIDE', 'WHITE'),
  ('ORDINARY_TIME', 'GREEN'),
  ('LENT', 'PURPLE'),
  ('TRIDUUM', 'RED'),
  ('EASTERTIDE', 'WHITE')
) AS x(season_code, color_code)
ON c.code = 'ROMAN_GENERAL'
ON CONFLICT (season_code, calendar_id) DO UPDATE
SET color_id = EXCLUDED.color_id;


COMMIT;
