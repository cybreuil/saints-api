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

-- =========================================================
-- TRANSLATIONS
-- =========================================================

INSERT INTO liturgical_season_translations (season_code, locale_code, label) VALUES
('ADVENT', 'en', 'Advent'),
('CHRISTMASTIDE', 'en', 'Christmas Time'),
('ORDINARY_TIME', 'en', 'Ordinary Time'),
('LENT', 'en', 'Lent'),
('TRIDUUM', 'en', 'Paschal Triduum'),
('EASTERTIDE', 'en', 'Eastertide'),

('ADVENT', 'fr', 'Avent'),
('CHRISTMASTIDE', 'fr', 'Temps de Noël'),
('ORDINARY_TIME', 'fr', 'Temps ordinaire'),
('LENT', 'fr', 'Carême'),
('TRIDUUM', 'fr', 'Triduum pascal'),
('EASTERTIDE', 'fr', 'Temps pascal'),

('ADVENT', 'la', 'Tempus Adventus'),
('CHRISTMASTIDE', 'la', 'Tempus Nativitatis'),
('ORDINARY_TIME', 'la', 'Tempus per annum'),
('LENT', 'la', 'Tempus Quadragesimae'),
('TRIDUUM', 'la', 'Triduum Paschale'),
('EASTERTIDE', 'la', 'Tempus Paschale')
ON CONFLICT (season_code, locale_code) DO NOTHING;

-- =========================================================
-- RULES
-- =========================================================

-- =========================================================
-- ADVENT
-- =========================================================

INSERT INTO liturgical_season_intervals (
    calendar_id, season_code,
    segment_index,
    start_kind, start_month, start_day, start_movable_base, start_offset_days,
    end_kind, end_month, end_day, end_movable_base, end_offset_days,
    inclusive, notes
)
SELECT
    c.id, 'ADVENT',
    0,
    'movable', NULL, NULL, 'FIRST_ADVENT_SUNDAY', 0,
    'fixed', 12, 24, NULL, 0,
    TRUE, 'Advent'
FROM calendars c
WHERE c.code = 'ROMAN_GENERAL';

-- =========================================================
-- CHRISTMASTIDE
-- =========================================================

INSERT INTO liturgical_season_intervals (
    calendar_id, season_code,
    segment_index,
    start_kind, start_month, start_day, start_movable_base, start_offset_days,
    end_kind, end_month, end_day, end_movable_base, end_offset_days,
    inclusive, notes
)
SELECT
    c.id, 'CHRISTMASTIDE',
    0,
    'fixed', 12, 25, NULL, 0,
    'movable', NULL, NULL, 'BAPTISM_OF_THE_LORD', 0,
    TRUE, 'Christmas Time'
FROM calendars c
WHERE c.code = 'ROMAN_GENERAL';

-- =========================================================
-- ORDINARY TIME (PART 1)
-- =========================================================

INSERT INTO liturgical_season_intervals (
	calendar_id, season_code,
	segment_index,
	start_kind, start_month, start_day, start_movable_base, start_offset_days,
	end_kind, end_month, end_day, end_movable_base, end_offset_days,
	inclusive, notes
)
SELECT
    c.id, 'ORDINARY_TIME',
    0,
    'movable', NULL, NULL, 'BAPTISM_OF_THE_LORD', 1,
    'movable', NULL, NULL, 'ASH_WEDNESDAY', -1,
    TRUE, 'Ordinary Time I'
FROM calendars c
WHERE c.code = 'ROMAN_GENERAL';

-- =========================================================
-- LENT
-- =========================================================

INSERT INTO liturgical_season_intervals (
	calendar_id, season_code,
	segment_index,
	start_kind, start_month, start_day, start_movable_base, start_offset_days,
	end_kind, end_month, end_day, end_movable_base, end_offset_days,
	inclusive, notes
)
SELECT
    c.id, 'LENT',
    0,
    'movable', NULL, NULL, 'ASH_WEDNESDAY', 0,
    'movable', NULL, NULL, 'HOLY_THURSDAY', -1,
    TRUE, 'Lent'
FROM calendars c
WHERE c.code = 'ROMAN_GENERAL';

-- =========================================================
-- TRIDUUM
-- =========================================================

INSERT INTO liturgical_season_intervals (
    calendar_id, season_code,
    segment_index,
    start_kind, start_month, start_day, start_movable_base, start_offset_days,
    end_kind, end_month, end_day, end_movable_base, end_offset_days,
    inclusive, notes
)
SELECT
    c.id, 'TRIDUUM',
    0,
    'movable', NULL, NULL, 'HOLY_THURSDAY', 0,
    'movable', NULL, NULL, 'EASTER_SUNDAY', 0,
    TRUE, 'Triduum'
FROM calendars c
WHERE c.code = 'ROMAN_GENERAL';

-- =========================================================
-- EASTERTIDE
-- =========================================================

INSERT INTO liturgical_season_intervals (
	calendar_id, season_code,
	segment_index,
	start_kind, start_month, start_day, start_movable_base, start_offset_days,
	end_kind, end_month, end_day, end_movable_base, end_offset_days,
	inclusive, notes
)
SELECT
    c.id, 'EASTERTIDE',
    0,
    'movable', NULL, NULL, 'EASTER_SUNDAY', 0,
    'movable', NULL, NULL, 'PENTECOST', 0,
    TRUE, 'Easter Time'
FROM calendars c
WHERE c.code = 'ROMAN_GENERAL';

-- =========================================================
-- ORDINARY TIME (PART 2)
-- =========================================================

INSERT INTO liturgical_season_intervals (
    calendar_id, season_code,
    segment_index,
    start_kind, start_month, start_day, start_movable_base, start_offset_days,
    end_kind, end_month, end_day, end_movable_base, end_offset_days,
    inclusive, notes
)
SELECT
    c.id, 'ORDINARY_TIME',
    1,
    'movable', NULL, NULL, 'PENTECOST', 1,
    'movable', NULL, NULL, 'FIRST_ADVENT_SUNDAY', -1,
    TRUE, 'Ordinary Time II'
FROM calendars c
WHERE c.code = 'ROMAN_GENERAL';

-- =========================================================
-- COLORS
-- =========================================================

INSERT INTO liturgical_season_colors (
season_code, calendar_id, color_id)
SELECT x.season_code, c.id, lc.id
FROM calendars c
JOIN
(VALUES ('ADVENT', 'PURPLE'),
		('CHRISTMASTIDE', 'WHITE'),
		('ORDINARY_TIME', 'GREEN'),
		('LENT', 'PURPLE'),
		('TRIDUUM', 'RED'),
		('EASTERTIDE', 'WHITE') )
AS x(season_code, color_code)
ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_colors lc
ON lc.code = x.color_code
ON CONFLICT (season_code, calendar_id)
DO UPDATE SET color_id = EXCLUDED.color_id;

COMMIT;
