-- Generated from GeneralRoman.ts inputs
BEGIN;

-- Assumes calendar code 'ROMAN_GENERAL_1969' exists
WITH cal AS (SELECT id FROM calendars WHERE code = 'ROMAN_GENERAL_1969') SELECT 1;

-- basil_the_great_and_gregory_nazianzen_bishops
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('basil_the_great_and_gregory_nazianzen_bishops', 'Basil The Great And Gregory Nazianzen Bishops', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Basil The Great And Gregory Nazianzen Bishops', NULL
FROM feasts f
WHERE f.slug = 'basil_the_great_and_gregory_nazianzen_bishops'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 2, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'basil_the_great_and_gregory_nazianzen_bishops';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'basil_the_great_and_gregory_nazianzen_bishops'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- most_holy_name_of_jesus
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('most_holy_name_of_jesus', 'Most Holy Name Of Jesus', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Most Holy Name Of Jesus', NULL
FROM feasts f
WHERE f.slug = 'most_holy_name_of_jesus'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 3, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'most_holy_name_of_jesus';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'most_holy_name_of_jesus'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- raymond_of_penyafort_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('raymond_of_penyafort_priest', 'Raymond Of Penyafort Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Raymond Of Penyafort Priest', NULL
FROM feasts f
WHERE f.slug = 'raymond_of_penyafort_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 7, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'raymond_of_penyafort_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'raymond_of_penyafort_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- hilary_of_poitiers_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('hilary_of_poitiers_bishop', 'Hilary Of Poitiers Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Hilary Of Poitiers Bishop', NULL
FROM feasts f
WHERE f.slug = 'hilary_of_poitiers_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 13, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'hilary_of_poitiers_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'hilary_of_poitiers_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- anthony_of_egypt_abbot
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('anthony_of_egypt_abbot', 'Anthony Of Egypt Abbot', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Anthony Of Egypt Abbot', NULL
FROM feasts f
WHERE f.slug = 'anthony_of_egypt_abbot'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 17, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'anthony_of_egypt_abbot';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'anthony_of_egypt_abbot'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- fabian_i_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('fabian_i_pope', 'Fabian I Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Fabian I Pope', NULL
FROM feasts f
WHERE f.slug = 'fabian_i_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 20, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'fabian_i_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'fabian_i_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- sebastian_of_milan_martyr
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('sebastian_of_milan_martyr', 'Sebastian Of Milan Martyr', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Sebastian Of Milan Martyr', NULL
FROM feasts f
WHERE f.slug = 'sebastian_of_milan_martyr'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 20, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'sebastian_of_milan_martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'sebastian_of_milan_martyr'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- agnes_of_rome_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('agnes_of_rome_virgin', 'Agnes Of Rome Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Agnes Of Rome Virgin', NULL
FROM feasts f
WHERE f.slug = 'agnes_of_rome_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 21, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'agnes_of_rome_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'agnes_of_rome_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- vincent_of_saragossa_deacon
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('vincent_of_saragossa_deacon', 'Vincent Of Saragossa Deacon', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Vincent Of Saragossa Deacon', NULL
FROM feasts f
WHERE f.slug = 'vincent_of_saragossa_deacon'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 22, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'vincent_of_saragossa_deacon';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'vincent_of_saragossa_deacon'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- francis_de_sales_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('francis_de_sales_bishop', 'Francis De Sales Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Francis De Sales Bishop', NULL
FROM feasts f
WHERE f.slug = 'francis_de_sales_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 24, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'francis_de_sales_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'francis_de_sales_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- conversion_of_saint_paul_the_apostle
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('conversion_of_saint_paul_the_apostle', 'Conversion Of Saint Paul The Apostle', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Conversion Of Saint Paul The Apostle', NULL
FROM feasts f
WHERE f.slug = 'conversion_of_saint_paul_the_apostle'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 25, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'conversion_of_saint_paul_the_apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'conversion_of_saint_paul_the_apostle'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- timothy_of_ephesus_and_titus_of_crete_bishops
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('timothy_of_ephesus_and_titus_of_crete_bishops', 'Timothy Of Ephesus And Titus Of Crete Bishops', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Timothy Of Ephesus And Titus Of Crete Bishops', NULL
FROM feasts f
WHERE f.slug = 'timothy_of_ephesus_and_titus_of_crete_bishops'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 26, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'timothy_of_ephesus_and_titus_of_crete_bishops';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'timothy_of_ephesus_and_titus_of_crete_bishops'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- angela_merici_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('angela_merici_virgin', 'Angela Merici Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Angela Merici Virgin', NULL
FROM feasts f
WHERE f.slug = 'angela_merici_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 27, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'angela_merici_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'angela_merici_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- thomas_aquinas_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thomas_aquinas_priest', 'Thomas Aquinas Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thomas Aquinas Priest', NULL
FROM feasts f
WHERE f.slug = 'thomas_aquinas_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 28, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thomas_aquinas_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'thomas_aquinas_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_bosco_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_bosco_priest', 'John Bosco Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Bosco Priest', NULL
FROM feasts f
WHERE f.slug = 'john_bosco_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 1, 31, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_bosco_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_bosco_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- blaise_of_sebaste_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('blaise_of_sebaste_bishop', 'Blaise Of Sebaste Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Blaise Of Sebaste Bishop', NULL
FROM feasts f
WHERE f.slug = 'blaise_of_sebaste_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 2, 3, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'blaise_of_sebaste_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'blaise_of_sebaste_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- ansgar_of_hamburg_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('ansgar_of_hamburg_bishop', 'Ansgar Of Hamburg Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Ansgar Of Hamburg Bishop', NULL
FROM feasts f
WHERE f.slug = 'ansgar_of_hamburg_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 2, 3, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'ansgar_of_hamburg_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'ansgar_of_hamburg_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- agatha_of_sicily_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('agatha_of_sicily_virgin', 'Agatha Of Sicily Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Agatha Of Sicily Virgin', NULL
FROM feasts f
WHERE f.slug = 'agatha_of_sicily_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 2, 5, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'agatha_of_sicily_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'agatha_of_sicily_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- paul_miki_and_companions_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('paul_miki_and_companions_martyrs', 'Paul Miki And Companions Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Paul Miki And Companions Martyrs', NULL
FROM feasts f
WHERE f.slug = 'paul_miki_and_companions_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 2, 6, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'paul_miki_and_companions_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'paul_miki_and_companions_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- jerome_emiliani
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('jerome_emiliani', 'Jerome Emiliani', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Jerome Emiliani', NULL
FROM feasts f
WHERE f.slug = 'jerome_emiliani'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 2, 8, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'jerome_emiliani';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'jerome_emiliani'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- josephine_bakhita_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('josephine_bakhita_virgin', 'Josephine Bakhita Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Josephine Bakhita Virgin', NULL
FROM feasts f
WHERE f.slug = 'josephine_bakhita_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 2, 8, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'josephine_bakhita_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'josephine_bakhita_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- scholastica_of_nursia_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('scholastica_of_nursia_virgin', 'Scholastica Of Nursia Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Scholastica Of Nursia Virgin', NULL
FROM feasts f
WHERE f.slug = 'scholastica_of_nursia_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 2, 10, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'scholastica_of_nursia_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'scholastica_of_nursia_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- our_lady_of_lourdes
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('our_lady_of_lourdes', 'Our Lady Of Lourdes', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Our Lady Of Lourdes', NULL
FROM feasts f
WHERE f.slug = 'our_lady_of_lourdes'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 2, 11, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'our_lady_of_lourdes';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'our_lady_of_lourdes'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- cyril_constantine_the_philosopher_monk_and_methodius_michael_of_thessaloniki_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('cyril_constantine_the_philosopher_monk_and_methodius_michael_of_thessaloniki_bishop', 'Cyril Constantine The Philosopher Monk And Methodius Michael Of Thessaloniki Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Cyril Constantine The Philosopher Monk And Methodius Michael Of Thessaloniki Bishop', NULL
FROM feasts f
WHERE f.slug = 'cyril_constantine_the_philosopher_monk_and_methodius_michael_of_thessaloniki_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 2, 14, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'cyril_constantine_the_philosopher_monk_and_methodius_michael_of_thessaloniki_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'cyril_constantine_the_philosopher_monk_and_methodius_michael_of_thessaloniki_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- seven_holy_founders_of_the_servite_order
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('seven_holy_founders_of_the_servite_order', 'Seven Holy Founders Of The Servite Order', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Seven Holy Founders Of The Servite Order', NULL
FROM feasts f
WHERE f.slug = 'seven_holy_founders_of_the_servite_order'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 2, 17, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'seven_holy_founders_of_the_servite_order';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'seven_holy_founders_of_the_servite_order'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- peter_damian_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('peter_damian_bishop', 'Peter Damian Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Peter Damian Bishop', NULL
FROM feasts f
WHERE f.slug = 'peter_damian_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 2, 21, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'peter_damian_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'peter_damian_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- chair_of_saint_peter_the_apostle
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('chair_of_saint_peter_the_apostle', 'Chair Of Saint Peter The Apostle', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Chair Of Saint Peter The Apostle', NULL
FROM feasts f
WHERE f.slug = 'chair_of_saint_peter_the_apostle'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 2, 22, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'chair_of_saint_peter_the_apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'chair_of_saint_peter_the_apostle'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- polycarp_of_smyrna_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('polycarp_of_smyrna_bishop', 'Polycarp Of Smyrna Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Polycarp Of Smyrna Bishop', NULL
FROM feasts f
WHERE f.slug = 'polycarp_of_smyrna_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 2, 23, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'polycarp_of_smyrna_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'polycarp_of_smyrna_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- gregory_of_narek_abbot
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('gregory_of_narek_abbot', 'Gregory Of Narek Abbot', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Gregory Of Narek Abbot', NULL
FROM feasts f
WHERE f.slug = 'gregory_of_narek_abbot'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 2, 27, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'gregory_of_narek_abbot';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'gregory_of_narek_abbot'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- casimir_of_poland
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('casimir_of_poland', 'Casimir Of Poland', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Casimir Of Poland', NULL
FROM feasts f
WHERE f.slug = 'casimir_of_poland'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 3, 4, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'casimir_of_poland';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'casimir_of_poland'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- perpetua_of_carthage_and_felicity_of_carthage_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('perpetua_of_carthage_and_felicity_of_carthage_martyrs', 'Perpetua Of Carthage And Felicity Of Carthage Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Perpetua Of Carthage And Felicity Of Carthage Martyrs', NULL
FROM feasts f
WHERE f.slug = 'perpetua_of_carthage_and_felicity_of_carthage_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 3, 7, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'perpetua_of_carthage_and_felicity_of_carthage_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'perpetua_of_carthage_and_felicity_of_carthage_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_of_god_duarte_cidade_religious
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_of_god_duarte_cidade_religious', 'John Of God Duarte Cidade Religious', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Of God Duarte Cidade Religious', NULL
FROM feasts f
WHERE f.slug = 'john_of_god_duarte_cidade_religious'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 3, 8, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_of_god_duarte_cidade_religious';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_of_god_duarte_cidade_religious'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- frances_of_rome_religious
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('frances_of_rome_religious', 'Frances Of Rome Religious', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Frances Of Rome Religious', NULL
FROM feasts f
WHERE f.slug = 'frances_of_rome_religious'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 3, 9, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'frances_of_rome_religious';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'frances_of_rome_religious'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- patrick_of_ireland_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('patrick_of_ireland_bishop', 'Patrick Of Ireland Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Patrick Of Ireland Bishop', NULL
FROM feasts f
WHERE f.slug = 'patrick_of_ireland_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 3, 17, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'patrick_of_ireland_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'patrick_of_ireland_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- cyril_of_jerusalem_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('cyril_of_jerusalem_bishop', 'Cyril Of Jerusalem Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Cyril Of Jerusalem Bishop', NULL
FROM feasts f
WHERE f.slug = 'cyril_of_jerusalem_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 3, 18, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'cyril_of_jerusalem_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'cyril_of_jerusalem_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- joseph_spouse_of_mary
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('joseph_spouse_of_mary', 'Joseph Spouse Of Mary', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Joseph Spouse Of Mary', NULL
FROM feasts f
WHERE f.slug = 'joseph_spouse_of_mary'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 3, 19, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralSolemnity_3'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'joseph_spouse_of_mary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralSolemnity_3'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'joseph_spouse_of_mary'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- turibius_of_mogrovejo_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('turibius_of_mogrovejo_bishop', 'Turibius Of Mogrovejo Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Turibius Of Mogrovejo Bishop', NULL
FROM feasts f
WHERE f.slug = 'turibius_of_mogrovejo_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 3, 23, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'turibius_of_mogrovejo_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'turibius_of_mogrovejo_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- francis_of_paola_hermit
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('francis_of_paola_hermit', 'Francis Of Paola Hermit', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Francis Of Paola Hermit', NULL
FROM feasts f
WHERE f.slug = 'francis_of_paola_hermit'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 2, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'francis_of_paola_hermit';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'francis_of_paola_hermit'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- isidore_of_seville_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('isidore_of_seville_bishop', 'Isidore Of Seville Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Isidore Of Seville Bishop', NULL
FROM feasts f
WHERE f.slug = 'isidore_of_seville_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 4, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'isidore_of_seville_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'isidore_of_seville_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- vincent_ferrer_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('vincent_ferrer_priest', 'Vincent Ferrer Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Vincent Ferrer Priest', NULL
FROM feasts f
WHERE f.slug = 'vincent_ferrer_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 5, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'vincent_ferrer_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'vincent_ferrer_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_baptist_de_la_salle_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_baptist_de_la_salle_priest', 'John Baptist De La Salle Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Baptist De La Salle Priest', NULL
FROM feasts f
WHERE f.slug = 'john_baptist_de_la_salle_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 7, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_baptist_de_la_salle_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_baptist_de_la_salle_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- stanislaus_of_szczepanow_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('stanislaus_of_szczepanow_bishop', 'Stanislaus Of Szczepanow Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Stanislaus Of Szczepanow Bishop', NULL
FROM feasts f
WHERE f.slug = 'stanislaus_of_szczepanow_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 11, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'stanislaus_of_szczepanow_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'stanislaus_of_szczepanow_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- martin_i_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('martin_i_pope', 'Martin I Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Martin I Pope', NULL
FROM feasts f
WHERE f.slug = 'martin_i_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 13, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'martin_i_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'martin_i_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- anselm_of_canterbury_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('anselm_of_canterbury_bishop', 'Anselm Of Canterbury Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Anselm Of Canterbury Bishop', NULL
FROM feasts f
WHERE f.slug = 'anselm_of_canterbury_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 21, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'anselm_of_canterbury_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'anselm_of_canterbury_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- george_of_lydda_martyr
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('george_of_lydda_martyr', 'George Of Lydda Martyr', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'George Of Lydda Martyr', NULL
FROM feasts f
WHERE f.slug = 'george_of_lydda_martyr'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 23, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'george_of_lydda_martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'george_of_lydda_martyr'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- adalbert_of_prague_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('adalbert_of_prague_bishop', 'Adalbert Of Prague Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Adalbert Of Prague Bishop', NULL
FROM feasts f
WHERE f.slug = 'adalbert_of_prague_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 23, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'adalbert_of_prague_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'adalbert_of_prague_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- fidelis_of_sigmaringen_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('fidelis_of_sigmaringen_priest', 'Fidelis Of Sigmaringen Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Fidelis Of Sigmaringen Priest', NULL
FROM feasts f
WHERE f.slug = 'fidelis_of_sigmaringen_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 24, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'fidelis_of_sigmaringen_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'fidelis_of_sigmaringen_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- mark_evangelist
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('mark_evangelist', 'Mark Evangelist', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Mark Evangelist', NULL
FROM feasts f
WHERE f.slug = 'mark_evangelist'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 25, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'mark_evangelist';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'mark_evangelist'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- peter_chanel_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('peter_chanel_priest', 'Peter Chanel Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Peter Chanel Priest', NULL
FROM feasts f
WHERE f.slug = 'peter_chanel_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 28, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'peter_chanel_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'peter_chanel_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- louis_grignion_de_montfort_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('louis_grignion_de_montfort_priest', 'Louis Grignion De Montfort Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Louis Grignion De Montfort Priest', NULL
FROM feasts f
WHERE f.slug = 'louis_grignion_de_montfort_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 28, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'louis_grignion_de_montfort_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'louis_grignion_de_montfort_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- catherine_of_siena_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('catherine_of_siena_virgin', 'Catherine Of Siena Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Catherine Of Siena Virgin', NULL
FROM feasts f
WHERE f.slug = 'catherine_of_siena_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 29, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'catherine_of_siena_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'catherine_of_siena_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- pius_v_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('pius_v_pope', 'Pius V Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Pius V Pope', NULL
FROM feasts f
WHERE f.slug = 'pius_v_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 4, 30, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'pius_v_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'pius_v_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- joseph_the_worker
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('joseph_the_worker', 'Joseph The Worker', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Joseph The Worker', NULL
FROM feasts f
WHERE f.slug = 'joseph_the_worker'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 1, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'joseph_the_worker';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'joseph_the_worker'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- athanasius_of_alexandria_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('athanasius_of_alexandria_bishop', 'Athanasius Of Alexandria Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Athanasius Of Alexandria Bishop', NULL
FROM feasts f
WHERE f.slug = 'athanasius_of_alexandria_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 2, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'athanasius_of_alexandria_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'athanasius_of_alexandria_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- philip_and_james_apostles
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('philip_and_james_apostles', 'Philip And James Apostles', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Philip And James Apostles', NULL
FROM feasts f
WHERE f.slug = 'philip_and_james_apostles'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 3, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'philip_and_james_apostles';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'philip_and_james_apostles'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_of_avila_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_of_avila_priest', 'John Of Avila Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Of Avila Priest', NULL
FROM feasts f
WHERE f.slug = 'john_of_avila_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 10, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_of_avila_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_of_avila_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- nereus_of_terracina_and_achilleus_of_terracina_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('nereus_of_terracina_and_achilleus_of_terracina_martyrs', 'Nereus Of Terracina And Achilleus Of Terracina Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Nereus Of Terracina And Achilleus Of Terracina Martyrs', NULL
FROM feasts f
WHERE f.slug = 'nereus_of_terracina_and_achilleus_of_terracina_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 12, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'nereus_of_terracina_and_achilleus_of_terracina_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'nereus_of_terracina_and_achilleus_of_terracina_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- pancras_of_rome_martyr
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('pancras_of_rome_martyr', 'Pancras Of Rome Martyr', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Pancras Of Rome Martyr', NULL
FROM feasts f
WHERE f.slug = 'pancras_of_rome_martyr'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 12, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'pancras_of_rome_martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'pancras_of_rome_martyr'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- our_lady_of_fatima
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('our_lady_of_fatima', 'Our Lady Of Fatima', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Our Lady Of Fatima', NULL
FROM feasts f
WHERE f.slug = 'our_lady_of_fatima'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 13, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'our_lady_of_fatima';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'our_lady_of_fatima'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- matthias_apostle
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('matthias_apostle', 'Matthias Apostle', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Matthias Apostle', NULL
FROM feasts f
WHERE f.slug = 'matthias_apostle'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 14, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'matthias_apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'matthias_apostle'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_i_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_i_pope', 'John I Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John I Pope', NULL
FROM feasts f
WHERE f.slug = 'john_i_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 18, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_i_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'john_i_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- bernardine_of_siena_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('bernardine_of_siena_priest', 'Bernardine Of Siena Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Bernardine Of Siena Priest', NULL
FROM feasts f
WHERE f.slug = 'bernardine_of_siena_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 20, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'bernardine_of_siena_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'bernardine_of_siena_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- christopher_magallanes_priest_and_companions_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('christopher_magallanes_priest_and_companions_martyrs', 'Christopher Magallanes Priest And Companions Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Christopher Magallanes Priest And Companions Martyrs', NULL
FROM feasts f
WHERE f.slug = 'christopher_magallanes_priest_and_companions_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 21, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'christopher_magallanes_priest_and_companions_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'christopher_magallanes_priest_and_companions_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- rita_of_cascia_religious
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('rita_of_cascia_religious', 'Rita Of Cascia Religious', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Rita Of Cascia Religious', NULL
FROM feasts f
WHERE f.slug = 'rita_of_cascia_religious'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 22, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'rita_of_cascia_religious';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'rita_of_cascia_religious'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- bede_the_venerable_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('bede_the_venerable_priest', 'Bede The Venerable Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Bede The Venerable Priest', NULL
FROM feasts f
WHERE f.slug = 'bede_the_venerable_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 25, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'bede_the_venerable_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'bede_the_venerable_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- gregory_vii_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('gregory_vii_pope', 'Gregory Vii Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Gregory Vii Pope', NULL
FROM feasts f
WHERE f.slug = 'gregory_vii_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 25, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'gregory_vii_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'gregory_vii_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- mary_magdalene_de_pazzi_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('mary_magdalene_de_pazzi_virgin', 'Mary Magdalene De Pazzi Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Mary Magdalene De Pazzi Virgin', NULL
FROM feasts f
WHERE f.slug = 'mary_magdalene_de_pazzi_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 25, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'mary_magdalene_de_pazzi_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'mary_magdalene_de_pazzi_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- philip_neri_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('philip_neri_priest', 'Philip Neri Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Philip Neri Priest', NULL
FROM feasts f
WHERE f.slug = 'philip_neri_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 26, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'philip_neri_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'philip_neri_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- augustine_of_canterbury_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('augustine_of_canterbury_bishop', 'Augustine Of Canterbury Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Augustine Of Canterbury Bishop', NULL
FROM feasts f
WHERE f.slug = 'augustine_of_canterbury_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 27, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'augustine_of_canterbury_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'augustine_of_canterbury_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- paul_vi_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('paul_vi_pope', 'Paul Vi Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Paul Vi Pope', NULL
FROM feasts f
WHERE f.slug = 'paul_vi_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 29, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'paul_vi_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'paul_vi_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- visitation_of_mary
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('visitation_of_mary', 'Visitation Of Mary', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Visitation Of Mary', NULL
FROM feasts f
WHERE f.slug = 'visitation_of_mary'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 5, 31, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'visitation_of_mary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'visitation_of_mary'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- justin_martyr
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('justin_martyr', 'Justin Martyr', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Justin Martyr', NULL
FROM feasts f
WHERE f.slug = 'justin_martyr'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 1, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'justin_martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'justin_martyr'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- marcellinus_of_rome_and_peter_the_exorcist_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('marcellinus_of_rome_and_peter_the_exorcist_martyrs', 'Marcellinus Of Rome And Peter The Exorcist Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Marcellinus Of Rome And Peter The Exorcist Martyrs', NULL
FROM feasts f
WHERE f.slug = 'marcellinus_of_rome_and_peter_the_exorcist_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 2, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'marcellinus_of_rome_and_peter_the_exorcist_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'marcellinus_of_rome_and_peter_the_exorcist_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- charles_lwanga_and_companions_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('charles_lwanga_and_companions_martyrs', 'Charles Lwanga And Companions Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Charles Lwanga And Companions Martyrs', NULL
FROM feasts f
WHERE f.slug = 'charles_lwanga_and_companions_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 3, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'charles_lwanga_and_companions_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'charles_lwanga_and_companions_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- boniface_of_mainz_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('boniface_of_mainz_bishop', 'Boniface Of Mainz Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Boniface Of Mainz Bishop', NULL
FROM feasts f
WHERE f.slug = 'boniface_of_mainz_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 5, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'boniface_of_mainz_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'boniface_of_mainz_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- norbert_of_xanten_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('norbert_of_xanten_bishop', 'Norbert Of Xanten Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Norbert Of Xanten Bishop', NULL
FROM feasts f
WHERE f.slug = 'norbert_of_xanten_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 6, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'norbert_of_xanten_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'norbert_of_xanten_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- ephrem_the_syrian_deacon
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('ephrem_the_syrian_deacon', 'Ephrem The Syrian Deacon', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Ephrem The Syrian Deacon', NULL
FROM feasts f
WHERE f.slug = 'ephrem_the_syrian_deacon'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 9, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'ephrem_the_syrian_deacon';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'ephrem_the_syrian_deacon'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- barnabas_apostle
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('barnabas_apostle', 'Barnabas Apostle', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Barnabas Apostle', NULL
FROM feasts f
WHERE f.slug = 'barnabas_apostle'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 11, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'barnabas_apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'barnabas_apostle'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- anthony_of_padua_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('anthony_of_padua_priest', 'Anthony Of Padua Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Anthony Of Padua Priest', NULL
FROM feasts f
WHERE f.slug = 'anthony_of_padua_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 13, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'anthony_of_padua_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'anthony_of_padua_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- romuald_of_ravenna_abbot
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('romuald_of_ravenna_abbot', 'Romuald Of Ravenna Abbot', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Romuald Of Ravenna Abbot', NULL
FROM feasts f
WHERE f.slug = 'romuald_of_ravenna_abbot'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 19, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'romuald_of_ravenna_abbot';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'romuald_of_ravenna_abbot'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- aloysius_gonzaga_religious
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('aloysius_gonzaga_religious', 'Aloysius Gonzaga Religious', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Aloysius Gonzaga Religious', NULL
FROM feasts f
WHERE f.slug = 'aloysius_gonzaga_religious'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 21, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'aloysius_gonzaga_religious';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'aloysius_gonzaga_religious'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- paulinus_of_nola_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('paulinus_of_nola_bishop', 'Paulinus Of Nola Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Paulinus Of Nola Bishop', NULL
FROM feasts f
WHERE f.slug = 'paulinus_of_nola_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 22, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'paulinus_of_nola_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'paulinus_of_nola_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_fisher_bishop_and_thomas_more_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_fisher_bishop_and_thomas_more_martyrs', 'John Fisher Bishop And Thomas More Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Fisher Bishop And Thomas More Martyrs', NULL
FROM feasts f
WHERE f.slug = 'john_fisher_bishop_and_thomas_more_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 22, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_fisher_bishop_and_thomas_more_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'john_fisher_bishop_and_thomas_more_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- cyril_of_alexandria_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('cyril_of_alexandria_bishop', 'Cyril Of Alexandria Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Cyril Of Alexandria Bishop', NULL
FROM feasts f
WHERE f.slug = 'cyril_of_alexandria_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 27, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'cyril_of_alexandria_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'cyril_of_alexandria_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- irenaeus_of_lyon_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('irenaeus_of_lyon_bishop', 'Irenaeus Of Lyon Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Irenaeus Of Lyon Bishop', NULL
FROM feasts f
WHERE f.slug = 'irenaeus_of_lyon_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 28, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'irenaeus_of_lyon_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'irenaeus_of_lyon_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- first_martyrs_of_the_holy_roman_church
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('first_martyrs_of_the_holy_roman_church', 'First Martyrs Of The Holy Roman Church', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'First Martyrs Of The Holy Roman Church', NULL
FROM feasts f
WHERE f.slug = 'first_martyrs_of_the_holy_roman_church'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 6, 30, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'first_martyrs_of_the_holy_roman_church';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'first_martyrs_of_the_holy_roman_church'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- thomas_apostle
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thomas_apostle', 'Thomas Apostle', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thomas Apostle', NULL
FROM feasts f
WHERE f.slug = 'thomas_apostle'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 3, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thomas_apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'thomas_apostle'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- elizabeth_of_portugal
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('elizabeth_of_portugal', 'Elizabeth Of Portugal', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Elizabeth Of Portugal', NULL
FROM feasts f
WHERE f.slug = 'elizabeth_of_portugal'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 4, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'elizabeth_of_portugal';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'elizabeth_of_portugal'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- anthony_zaccaria_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('anthony_zaccaria_priest', 'Anthony Zaccaria Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Anthony Zaccaria Priest', NULL
FROM feasts f
WHERE f.slug = 'anthony_zaccaria_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 5, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'anthony_zaccaria_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'anthony_zaccaria_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- maria_goretti_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('maria_goretti_virgin', 'Maria Goretti Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Maria Goretti Virgin', NULL
FROM feasts f
WHERE f.slug = 'maria_goretti_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 6, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'maria_goretti_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'maria_goretti_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- augustine_zhao_rong_priest_and_companions_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('augustine_zhao_rong_priest_and_companions_martyrs', 'Augustine Zhao Rong Priest And Companions Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Augustine Zhao Rong Priest And Companions Martyrs', NULL
FROM feasts f
WHERE f.slug = 'augustine_zhao_rong_priest_and_companions_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 9, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'augustine_zhao_rong_priest_and_companions_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'augustine_zhao_rong_priest_and_companions_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- benedict_of_nursia_abbot
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('benedict_of_nursia_abbot', 'Benedict Of Nursia Abbot', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Benedict Of Nursia Abbot', NULL
FROM feasts f
WHERE f.slug = 'benedict_of_nursia_abbot'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 11, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'benedict_of_nursia_abbot';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'benedict_of_nursia_abbot'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- henry_ii_emperor
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('henry_ii_emperor', 'Henry Ii Emperor', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Henry Ii Emperor', NULL
FROM feasts f
WHERE f.slug = 'henry_ii_emperor'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 13, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'henry_ii_emperor';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'henry_ii_emperor'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- camillus_de_lellis_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('camillus_de_lellis_priest', 'Camillus De Lellis Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Camillus De Lellis Priest', NULL
FROM feasts f
WHERE f.slug = 'camillus_de_lellis_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 14, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'camillus_de_lellis_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'camillus_de_lellis_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- bonaventure_of_bagnoregio_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('bonaventure_of_bagnoregio_bishop', 'Bonaventure Of Bagnoregio Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Bonaventure Of Bagnoregio Bishop', NULL
FROM feasts f
WHERE f.slug = 'bonaventure_of_bagnoregio_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 15, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'bonaventure_of_bagnoregio_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'bonaventure_of_bagnoregio_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- our_lady_of_mount_carmel
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('our_lady_of_mount_carmel', 'Our Lady Of Mount Carmel', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Our Lady Of Mount Carmel', NULL
FROM feasts f
WHERE f.slug = 'our_lady_of_mount_carmel'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 16, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'our_lady_of_mount_carmel';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'our_lady_of_mount_carmel'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- apollinaris_of_ravenna_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('apollinaris_of_ravenna_bishop', 'Apollinaris Of Ravenna Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Apollinaris Of Ravenna Bishop', NULL
FROM feasts f
WHERE f.slug = 'apollinaris_of_ravenna_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 20, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'apollinaris_of_ravenna_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'apollinaris_of_ravenna_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- lawrence_of_brindisi_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('lawrence_of_brindisi_priest', 'Lawrence Of Brindisi Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Lawrence Of Brindisi Priest', NULL
FROM feasts f
WHERE f.slug = 'lawrence_of_brindisi_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 21, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'lawrence_of_brindisi_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'lawrence_of_brindisi_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- mary_magdalene
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('mary_magdalene', 'Mary Magdalene', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Mary Magdalene', NULL
FROM feasts f
WHERE f.slug = 'mary_magdalene'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 22, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'mary_magdalene';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'mary_magdalene'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- bridget_of_sweden_religious
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('bridget_of_sweden_religious', 'Bridget Of Sweden Religious', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Bridget Of Sweden Religious', NULL
FROM feasts f
WHERE f.slug = 'bridget_of_sweden_religious'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 23, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'bridget_of_sweden_religious';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'bridget_of_sweden_religious'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- sharbel_makhluf_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('sharbel_makhluf_priest', 'Sharbel Makhluf Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Sharbel Makhluf Priest', NULL
FROM feasts f
WHERE f.slug = 'sharbel_makhluf_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 24, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'sharbel_makhluf_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'sharbel_makhluf_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- james_apostle
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('james_apostle', 'James Apostle', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'James Apostle', NULL
FROM feasts f
WHERE f.slug = 'james_apostle'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 25, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'james_apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'james_apostle'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- joachim_and_anne_parents_of_mary
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('joachim_and_anne_parents_of_mary', 'Joachim And Anne Parents Of Mary', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Joachim And Anne Parents Of Mary', NULL
FROM feasts f
WHERE f.slug = 'joachim_and_anne_parents_of_mary'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 26, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'joachim_and_anne_parents_of_mary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'joachim_and_anne_parents_of_mary'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- martha_of_bethany_mary_of_bethany_and_lazarus_of_bethany
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('martha_of_bethany_mary_of_bethany_and_lazarus_of_bethany', 'Martha Of Bethany Mary Of Bethany And Lazarus Of Bethany', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Martha Of Bethany Mary Of Bethany And Lazarus Of Bethany', NULL
FROM feasts f
WHERE f.slug = 'martha_of_bethany_mary_of_bethany_and_lazarus_of_bethany'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 29, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'martha_of_bethany_mary_of_bethany_and_lazarus_of_bethany';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'martha_of_bethany_mary_of_bethany_and_lazarus_of_bethany'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- peter_chrysologus_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('peter_chrysologus_bishop', 'Peter Chrysologus Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Peter Chrysologus Bishop', NULL
FROM feasts f
WHERE f.slug = 'peter_chrysologus_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 30, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'peter_chrysologus_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'peter_chrysologus_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- ignatius_of_loyola_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('ignatius_of_loyola_priest', 'Ignatius Of Loyola Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Ignatius Of Loyola Priest', NULL
FROM feasts f
WHERE f.slug = 'ignatius_of_loyola_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 7, 31, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'ignatius_of_loyola_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'ignatius_of_loyola_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- alphonsus_mary_liguori_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('alphonsus_mary_liguori_bishop', 'Alphonsus Mary Liguori Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Alphonsus Mary Liguori Bishop', NULL
FROM feasts f
WHERE f.slug = 'alphonsus_mary_liguori_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 1, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'alphonsus_mary_liguori_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'alphonsus_mary_liguori_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- eusebius_of_vercelli_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('eusebius_of_vercelli_bishop', 'Eusebius Of Vercelli Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Eusebius Of Vercelli Bishop', NULL
FROM feasts f
WHERE f.slug = 'eusebius_of_vercelli_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 2, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'eusebius_of_vercelli_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'eusebius_of_vercelli_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- peter_julian_eymard_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('peter_julian_eymard_priest', 'Peter Julian Eymard Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Peter Julian Eymard Priest', NULL
FROM feasts f
WHERE f.slug = 'peter_julian_eymard_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 2, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'peter_julian_eymard_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'peter_julian_eymard_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_mary_vianney_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_mary_vianney_priest', 'John Mary Vianney Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Mary Vianney Priest', NULL
FROM feasts f
WHERE f.slug = 'john_mary_vianney_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 4, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_mary_vianney_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_mary_vianney_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- dedication_of_the_basilica_of_saint_mary_major
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('dedication_of_the_basilica_of_saint_mary_major', 'Dedication Of The Basilica Of Saint Mary Major', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Dedication Of The Basilica Of Saint Mary Major', NULL
FROM feasts f
WHERE f.slug = 'dedication_of_the_basilica_of_saint_mary_major'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 5, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'dedication_of_the_basilica_of_saint_mary_major';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'dedication_of_the_basilica_of_saint_mary_major'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- sixtus_ii_pope_and_companions_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('sixtus_ii_pope_and_companions_martyrs', 'Sixtus Ii Pope And Companions Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Sixtus Ii Pope And Companions Martyrs', NULL
FROM feasts f
WHERE f.slug = 'sixtus_ii_pope_and_companions_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 7, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'sixtus_ii_pope_and_companions_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'sixtus_ii_pope_and_companions_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- cajetan_of_thiene_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('cajetan_of_thiene_priest', 'Cajetan Of Thiene Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Cajetan Of Thiene Priest', NULL
FROM feasts f
WHERE f.slug = 'cajetan_of_thiene_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 7, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'cajetan_of_thiene_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'cajetan_of_thiene_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- dominic_de_guzman_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('dominic_de_guzman_priest', 'Dominic De Guzman Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Dominic De Guzman Priest', NULL
FROM feasts f
WHERE f.slug = 'dominic_de_guzman_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 8, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'dominic_de_guzman_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'dominic_de_guzman_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- teresa_benedicta_of_the_cross_stein_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('teresa_benedicta_of_the_cross_stein_virgin', 'Teresa Benedicta Of The Cross Stein Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Teresa Benedicta Of The Cross Stein Virgin', NULL
FROM feasts f
WHERE f.slug = 'teresa_benedicta_of_the_cross_stein_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 9, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'teresa_benedicta_of_the_cross_stein_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'teresa_benedicta_of_the_cross_stein_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- lawrence_of_rome_deacon
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('lawrence_of_rome_deacon', 'Lawrence Of Rome Deacon', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Lawrence Of Rome Deacon', NULL
FROM feasts f
WHERE f.slug = 'lawrence_of_rome_deacon'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 10, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'lawrence_of_rome_deacon';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'lawrence_of_rome_deacon'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- clare_of_assisi_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('clare_of_assisi_virgin', 'Clare Of Assisi Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Clare Of Assisi Virgin', NULL
FROM feasts f
WHERE f.slug = 'clare_of_assisi_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 11, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'clare_of_assisi_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'clare_of_assisi_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- jane_frances_de_chantal_religious
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('jane_frances_de_chantal_religious', 'Jane Frances De Chantal Religious', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Jane Frances De Chantal Religious', NULL
FROM feasts f
WHERE f.slug = 'jane_frances_de_chantal_religious'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 12, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'jane_frances_de_chantal_religious';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'jane_frances_de_chantal_religious'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- pontian_i_pope_and_hippolytus_of_rome_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('pontian_i_pope_and_hippolytus_of_rome_priest', 'Pontian I Pope And Hippolytus Of Rome Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Pontian I Pope And Hippolytus Of Rome Priest', NULL
FROM feasts f
WHERE f.slug = 'pontian_i_pope_and_hippolytus_of_rome_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 13, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'pontian_i_pope_and_hippolytus_of_rome_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'pontian_i_pope_and_hippolytus_of_rome_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- maximilian_mary_raymund_kolbe_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('maximilian_mary_raymund_kolbe_priest', 'Maximilian Mary Raymund Kolbe Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Maximilian Mary Raymund Kolbe Priest', NULL
FROM feasts f
WHERE f.slug = 'maximilian_mary_raymund_kolbe_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 14, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'maximilian_mary_raymund_kolbe_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'maximilian_mary_raymund_kolbe_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- stephen_i_of_hungary
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('stephen_i_of_hungary', 'Stephen I Of Hungary', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Stephen I Of Hungary', NULL
FROM feasts f
WHERE f.slug = 'stephen_i_of_hungary'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 16, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'stephen_i_of_hungary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'stephen_i_of_hungary'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_eudes_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_eudes_priest', 'John Eudes Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Eudes Priest', NULL
FROM feasts f
WHERE f.slug = 'john_eudes_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 19, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_eudes_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_eudes_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- bernard_of_clairvaux_abbot
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('bernard_of_clairvaux_abbot', 'Bernard Of Clairvaux Abbot', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Bernard Of Clairvaux Abbot', NULL
FROM feasts f
WHERE f.slug = 'bernard_of_clairvaux_abbot'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 20, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'bernard_of_clairvaux_abbot';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'bernard_of_clairvaux_abbot'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- pius_x_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('pius_x_pope', 'Pius X Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Pius X Pope', NULL
FROM feasts f
WHERE f.slug = 'pius_x_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 21, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'pius_x_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'pius_x_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- queenship_of_the_blessed_virgin_mary
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('queenship_of_the_blessed_virgin_mary', 'Queenship Of The Blessed Virgin Mary', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Queenship Of The Blessed Virgin Mary', NULL
FROM feasts f
WHERE f.slug = 'queenship_of_the_blessed_virgin_mary'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 22, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'queenship_of_the_blessed_virgin_mary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'queenship_of_the_blessed_virgin_mary'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- rose_of_lima_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('rose_of_lima_virgin', 'Rose Of Lima Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Rose Of Lima Virgin', NULL
FROM feasts f
WHERE f.slug = 'rose_of_lima_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 23, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'rose_of_lima_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'rose_of_lima_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- bartholomew_apostle
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('bartholomew_apostle', 'Bartholomew Apostle', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Bartholomew Apostle', NULL
FROM feasts f
WHERE f.slug = 'bartholomew_apostle'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 24, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'bartholomew_apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'bartholomew_apostle'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- louis_ix_of_france
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('louis_ix_of_france', 'Louis Ix Of France', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Louis Ix Of France', NULL
FROM feasts f
WHERE f.slug = 'louis_ix_of_france'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 25, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'louis_ix_of_france';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'louis_ix_of_france'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- joseph_of_calasanz_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('joseph_of_calasanz_priest', 'Joseph Of Calasanz Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Joseph Of Calasanz Priest', NULL
FROM feasts f
WHERE f.slug = 'joseph_of_calasanz_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 25, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'joseph_of_calasanz_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'joseph_of_calasanz_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- monica_of_hippo
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('monica_of_hippo', 'Monica Of Hippo', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Monica Of Hippo', NULL
FROM feasts f
WHERE f.slug = 'monica_of_hippo'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 27, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'monica_of_hippo';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'monica_of_hippo'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- augustine_of_hippo_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('augustine_of_hippo_bishop', 'Augustine Of Hippo Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Augustine Of Hippo Bishop', NULL
FROM feasts f
WHERE f.slug = 'augustine_of_hippo_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 28, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'augustine_of_hippo_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'augustine_of_hippo_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- passion_of_saint_john_the_baptist
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('passion_of_saint_john_the_baptist', 'Passion Of Saint John The Baptist', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Passion Of Saint John The Baptist', NULL
FROM feasts f
WHERE f.slug = 'passion_of_saint_john_the_baptist'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 8, 29, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'passion_of_saint_john_the_baptist';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'passion_of_saint_john_the_baptist'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- gregory_i_the_great_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('gregory_i_the_great_pope', 'Gregory I The Great Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Gregory I The Great Pope', NULL
FROM feasts f
WHERE f.slug = 'gregory_i_the_great_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 3, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'gregory_i_the_great_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'gregory_i_the_great_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- teresa_of_calcutta_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('teresa_of_calcutta_virgin', 'Teresa Of Calcutta Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Teresa Of Calcutta Virgin', NULL
FROM feasts f
WHERE f.slug = 'teresa_of_calcutta_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 5, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'teresa_of_calcutta_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'teresa_of_calcutta_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- nativity_of_the_blessed_virgin_mary
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('nativity_of_the_blessed_virgin_mary', 'Nativity Of The Blessed Virgin Mary', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Nativity Of The Blessed Virgin Mary', NULL
FROM feasts f
WHERE f.slug = 'nativity_of_the_blessed_virgin_mary'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 8, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'nativity_of_the_blessed_virgin_mary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'nativity_of_the_blessed_virgin_mary'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- peter_claver_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('peter_claver_priest', 'Peter Claver Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Peter Claver Priest', NULL
FROM feasts f
WHERE f.slug = 'peter_claver_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 9, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'peter_claver_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'peter_claver_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- most_holy_name_of_mary
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('most_holy_name_of_mary', 'Most Holy Name Of Mary', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Most Holy Name Of Mary', NULL
FROM feasts f
WHERE f.slug = 'most_holy_name_of_mary'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 12, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'most_holy_name_of_mary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'most_holy_name_of_mary'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_chrysostom_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_chrysostom_bishop', 'John Chrysostom Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Chrysostom Bishop', NULL
FROM feasts f
WHERE f.slug = 'john_chrysostom_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 13, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_chrysostom_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_chrysostom_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- our_lady_of_sorrows
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('our_lady_of_sorrows', 'Our Lady Of Sorrows', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Our Lady Of Sorrows', NULL
FROM feasts f
WHERE f.slug = 'our_lady_of_sorrows'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 15, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'our_lady_of_sorrows';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'our_lady_of_sorrows'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- cornelius_i_pope_and_cyprian_of_carthage_bishop_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('cornelius_i_pope_and_cyprian_of_carthage_bishop_martyrs', 'Cornelius I Pope And Cyprian Of Carthage Bishop Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Cornelius I Pope And Cyprian Of Carthage Bishop Martyrs', NULL
FROM feasts f
WHERE f.slug = 'cornelius_i_pope_and_cyprian_of_carthage_bishop_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 16, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'cornelius_i_pope_and_cyprian_of_carthage_bishop_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'cornelius_i_pope_and_cyprian_of_carthage_bishop_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- hildegard_of_bingen_abbess
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('hildegard_of_bingen_abbess', 'Hildegard Of Bingen Abbess', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Hildegard Of Bingen Abbess', NULL
FROM feasts f
WHERE f.slug = 'hildegard_of_bingen_abbess'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 17, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'hildegard_of_bingen_abbess';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'hildegard_of_bingen_abbess'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- robert_bellarmine_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('robert_bellarmine_bishop', 'Robert Bellarmine Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Robert Bellarmine Bishop', NULL
FROM feasts f
WHERE f.slug = 'robert_bellarmine_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 17, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'robert_bellarmine_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'robert_bellarmine_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- januarius_i_of_benevento_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('januarius_i_of_benevento_bishop', 'Januarius I Of Benevento Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Januarius I Of Benevento Bishop', NULL
FROM feasts f
WHERE f.slug = 'januarius_i_of_benevento_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 19, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'januarius_i_of_benevento_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'januarius_i_of_benevento_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- andrew_kim_tae_gon_priest_paul_chong_ha_sang_and_companions_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('andrew_kim_tae_gon_priest_paul_chong_ha_sang_and_companions_martyrs', 'Andrew Kim Tae Gon Priest Paul Chong Ha Sang And Companions Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Andrew Kim Tae Gon Priest Paul Chong Ha Sang And Companions Martyrs', NULL
FROM feasts f
WHERE f.slug = 'andrew_kim_tae_gon_priest_paul_chong_ha_sang_and_companions_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 20, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'andrew_kim_tae_gon_priest_paul_chong_ha_sang_and_companions_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'andrew_kim_tae_gon_priest_paul_chong_ha_sang_and_companions_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- matthew_apostle
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('matthew_apostle', 'Matthew Apostle', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Matthew Apostle', NULL
FROM feasts f
WHERE f.slug = 'matthew_apostle'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 21, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'matthew_apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'matthew_apostle'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- pius_francesco_forgione_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('pius_francesco_forgione_priest', 'Pius Francesco Forgione Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Pius Francesco Forgione Priest', NULL
FROM feasts f
WHERE f.slug = 'pius_francesco_forgione_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 23, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'pius_francesco_forgione_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'pius_francesco_forgione_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- cosmas_of_cilicia_and_damian_of_cilicia_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('cosmas_of_cilicia_and_damian_of_cilicia_martyrs', 'Cosmas Of Cilicia And Damian Of Cilicia Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Cosmas Of Cilicia And Damian Of Cilicia Martyrs', NULL
FROM feasts f
WHERE f.slug = 'cosmas_of_cilicia_and_damian_of_cilicia_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 26, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'cosmas_of_cilicia_and_damian_of_cilicia_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'cosmas_of_cilicia_and_damian_of_cilicia_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- vincent_de_paul_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('vincent_de_paul_priest', 'Vincent De Paul Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Vincent De Paul Priest', NULL
FROM feasts f
WHERE f.slug = 'vincent_de_paul_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 27, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'vincent_de_paul_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'vincent_de_paul_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- wenceslaus_i_of_bohemia_martyr
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('wenceslaus_i_of_bohemia_martyr', 'Wenceslaus I Of Bohemia Martyr', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Wenceslaus I Of Bohemia Martyr', NULL
FROM feasts f
WHERE f.slug = 'wenceslaus_i_of_bohemia_martyr'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 28, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'wenceslaus_i_of_bohemia_martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'wenceslaus_i_of_bohemia_martyr'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- lawrence_ruiz_and_companions_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('lawrence_ruiz_and_companions_martyrs', 'Lawrence Ruiz And Companions Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Lawrence Ruiz And Companions Martyrs', NULL
FROM feasts f
WHERE f.slug = 'lawrence_ruiz_and_companions_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 28, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'lawrence_ruiz_and_companions_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'lawrence_ruiz_and_companions_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- michael_gabriel_and_raphael_archangels
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('michael_gabriel_and_raphael_archangels', 'Michael Gabriel And Raphael Archangels', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Michael Gabriel And Raphael Archangels', NULL
FROM feasts f
WHERE f.slug = 'michael_gabriel_and_raphael_archangels'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 29, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'michael_gabriel_and_raphael_archangels';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'michael_gabriel_and_raphael_archangels'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- jerome_of_stridon_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('jerome_of_stridon_priest', 'Jerome Of Stridon Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Jerome Of Stridon Priest', NULL
FROM feasts f
WHERE f.slug = 'jerome_of_stridon_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 9, 30, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'jerome_of_stridon_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'jerome_of_stridon_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- therese_of_the_child_jesus_and_the_holy_face_of_lisieux_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('therese_of_the_child_jesus_and_the_holy_face_of_lisieux_virgin', 'Therese Of The Child Jesus And The Holy Face Of Lisieux Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Therese Of The Child Jesus And The Holy Face Of Lisieux Virgin', NULL
FROM feasts f
WHERE f.slug = 'therese_of_the_child_jesus_and_the_holy_face_of_lisieux_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 1, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'therese_of_the_child_jesus_and_the_holy_face_of_lisieux_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'therese_of_the_child_jesus_and_the_holy_face_of_lisieux_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- holy_guardian_angels
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('holy_guardian_angels', 'Holy Guardian Angels', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Holy Guardian Angels', NULL
FROM feasts f
WHERE f.slug = 'holy_guardian_angels'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 2, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'holy_guardian_angels';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'holy_guardian_angels'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- francis_of_assisi
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('francis_of_assisi', 'Francis Of Assisi', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Francis Of Assisi', NULL
FROM feasts f
WHERE f.slug = 'francis_of_assisi'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 4, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'francis_of_assisi';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'francis_of_assisi'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- faustina_kowalska_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('faustina_kowalska_virgin', 'Faustina Kowalska Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Faustina Kowalska Virgin', NULL
FROM feasts f
WHERE f.slug = 'faustina_kowalska_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 5, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'faustina_kowalska_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'faustina_kowalska_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- bruno_of_cologne_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('bruno_of_cologne_priest', 'Bruno Of Cologne Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Bruno Of Cologne Priest', NULL
FROM feasts f
WHERE f.slug = 'bruno_of_cologne_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 6, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'bruno_of_cologne_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'bruno_of_cologne_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- our_lady_of_the_rosary
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('our_lady_of_the_rosary', 'Our Lady Of The Rosary', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Our Lady Of The Rosary', NULL
FROM feasts f
WHERE f.slug = 'our_lady_of_the_rosary'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 7, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'our_lady_of_the_rosary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'our_lady_of_the_rosary'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- denis_of_paris_bishop_and_companions_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('denis_of_paris_bishop_and_companions_martyrs', 'Denis Of Paris Bishop And Companions Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Denis Of Paris Bishop And Companions Martyrs', NULL
FROM feasts f
WHERE f.slug = 'denis_of_paris_bishop_and_companions_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 9, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'denis_of_paris_bishop_and_companions_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'denis_of_paris_bishop_and_companions_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_leonardi_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_leonardi_priest', 'John Leonardi Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Leonardi Priest', NULL
FROM feasts f
WHERE f.slug = 'john_leonardi_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 9, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_leonardi_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_leonardi_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_xxiii_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_xxiii_pope', 'John Xxiii Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Xxiii Pope', NULL
FROM feasts f
WHERE f.slug = 'john_xxiii_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 11, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_xxiii_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_xxiii_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- callistus_i_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('callistus_i_pope', 'Callistus I Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Callistus I Pope', NULL
FROM feasts f
WHERE f.slug = 'callistus_i_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 14, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'callistus_i_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'callistus_i_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- teresa_of_jesus_of_avila_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('teresa_of_jesus_of_avila_virgin', 'Teresa Of Jesus Of Avila Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Teresa Of Jesus Of Avila Virgin', NULL
FROM feasts f
WHERE f.slug = 'teresa_of_jesus_of_avila_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 15, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'teresa_of_jesus_of_avila_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'teresa_of_jesus_of_avila_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- hedwig_of_silesia_religious
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('hedwig_of_silesia_religious', 'Hedwig Of Silesia Religious', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Hedwig Of Silesia Religious', NULL
FROM feasts f
WHERE f.slug = 'hedwig_of_silesia_religious'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 16, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'hedwig_of_silesia_religious';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'hedwig_of_silesia_religious'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- margaret_mary_alacoque_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('margaret_mary_alacoque_virgin', 'Margaret Mary Alacoque Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Margaret Mary Alacoque Virgin', NULL
FROM feasts f
WHERE f.slug = 'margaret_mary_alacoque_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 16, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'margaret_mary_alacoque_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'margaret_mary_alacoque_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- ignatius_of_antioch_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('ignatius_of_antioch_bishop', 'Ignatius Of Antioch Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Ignatius Of Antioch Bishop', NULL
FROM feasts f
WHERE f.slug = 'ignatius_of_antioch_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 17, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'ignatius_of_antioch_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'ignatius_of_antioch_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- luke_evangelist
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('luke_evangelist', 'Luke Evangelist', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Luke Evangelist', NULL
FROM feasts f
WHERE f.slug = 'luke_evangelist'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 18, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'luke_evangelist';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'luke_evangelist'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_de_brebeuf_isaac_jogues_priests_and_companions_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_de_brebeuf_isaac_jogues_priests_and_companions_martyrs', 'John De Brebeuf Isaac Jogues Priests And Companions Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John De Brebeuf Isaac Jogues Priests And Companions Martyrs', NULL
FROM feasts f
WHERE f.slug = 'john_de_brebeuf_isaac_jogues_priests_and_companions_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 19, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_de_brebeuf_isaac_jogues_priests_and_companions_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'john_de_brebeuf_isaac_jogues_priests_and_companions_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- paul_of_the_cross_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('paul_of_the_cross_priest', 'Paul Of The Cross Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Paul Of The Cross Priest', NULL
FROM feasts f
WHERE f.slug = 'paul_of_the_cross_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 19, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'paul_of_the_cross_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'paul_of_the_cross_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_paul_ii_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_paul_ii_pope', 'John Paul Ii Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Paul Ii Pope', NULL
FROM feasts f
WHERE f.slug = 'john_paul_ii_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 22, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_paul_ii_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_paul_ii_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_of_capistrano_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_of_capistrano_priest', 'John Of Capistrano Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Of Capistrano Priest', NULL
FROM feasts f
WHERE f.slug = 'john_of_capistrano_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 23, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_of_capistrano_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_of_capistrano_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- anthony_mary_claret_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('anthony_mary_claret_bishop', 'Anthony Mary Claret Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Anthony Mary Claret Bishop', NULL
FROM feasts f
WHERE f.slug = 'anthony_mary_claret_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 24, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'anthony_mary_claret_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'anthony_mary_claret_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- simon_and_jude_apostles
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('simon_and_jude_apostles', 'Simon And Jude Apostles', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Simon And Jude Apostles', NULL
FROM feasts f
WHERE f.slug = 'simon_and_jude_apostles'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 10, 28, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'simon_and_jude_apostles';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'simon_and_jude_apostles'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- commemoration_of_all_the_faithful_departed
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('commemoration_of_all_the_faithful_departed', 'Commemoration Of All The Faithful Departed', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Commemoration Of All The Faithful Departed', NULL
FROM feasts f
WHERE f.slug = 'commemoration_of_all_the_faithful_departed'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 2, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralSolemnity_3'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'commemoration_of_all_the_faithful_departed';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralSolemnity_3'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'commemoration_of_all_the_faithful_departed'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- martin_de_porres_religious
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('martin_de_porres_religious', 'Martin De Porres Religious', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Martin De Porres Religious', NULL
FROM feasts f
WHERE f.slug = 'martin_de_porres_religious'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 3, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'martin_de_porres_religious';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'martin_de_porres_religious'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- charles_borromeo_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('charles_borromeo_bishop', 'Charles Borromeo Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Charles Borromeo Bishop', NULL
FROM feasts f
WHERE f.slug = 'charles_borromeo_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 4, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'charles_borromeo_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'charles_borromeo_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- dedication_of_the_lateran_basilica
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('dedication_of_the_lateran_basilica', 'Dedication Of The Lateran Basilica', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Dedication Of The Lateran Basilica', NULL
FROM feasts f
WHERE f.slug = 'dedication_of_the_lateran_basilica'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 9, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralLordFeast_5'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'dedication_of_the_lateran_basilica';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralLordFeast_5'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'dedication_of_the_lateran_basilica'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- leo_i_the_great_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('leo_i_the_great_pope', 'Leo I The Great Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Leo I The Great Pope', NULL
FROM feasts f
WHERE f.slug = 'leo_i_the_great_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 10, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'leo_i_the_great_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'leo_i_the_great_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- martin_of_tours_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('martin_of_tours_bishop', 'Martin Of Tours Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Martin Of Tours Bishop', NULL
FROM feasts f
WHERE f.slug = 'martin_of_tours_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 11, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'martin_of_tours_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'martin_of_tours_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- josaphat_kuntsevych_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('josaphat_kuntsevych_bishop', 'Josaphat Kuntsevych Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Josaphat Kuntsevych Bishop', NULL
FROM feasts f
WHERE f.slug = 'josaphat_kuntsevych_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 12, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'josaphat_kuntsevych_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'josaphat_kuntsevych_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- albert_the_great_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('albert_the_great_bishop', 'Albert The Great Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Albert The Great Bishop', NULL
FROM feasts f
WHERE f.slug = 'albert_the_great_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 15, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'albert_the_great_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'albert_the_great_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- margaret_of_scotland
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('margaret_of_scotland', 'Margaret Of Scotland', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Margaret Of Scotland', NULL
FROM feasts f
WHERE f.slug = 'margaret_of_scotland'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 16, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'margaret_of_scotland';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'margaret_of_scotland'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- gertrude_the_great_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('gertrude_the_great_virgin', 'Gertrude The Great Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Gertrude The Great Virgin', NULL
FROM feasts f
WHERE f.slug = 'gertrude_the_great_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 16, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'gertrude_the_great_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'gertrude_the_great_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- elizabeth_of_hungary_religious
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('elizabeth_of_hungary_religious', 'Elizabeth Of Hungary Religious', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Elizabeth Of Hungary Religious', NULL
FROM feasts f
WHERE f.slug = 'elizabeth_of_hungary_religious'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 17, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'elizabeth_of_hungary_religious';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'elizabeth_of_hungary_religious'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- dedication_of_the_basilicas_of_saints_peter_and_paul_apostles
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('dedication_of_the_basilicas_of_saints_peter_and_paul_apostles', 'Dedication Of The Basilicas Of Saints Peter And Paul Apostles', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Dedication Of The Basilicas Of Saints Peter And Paul Apostles', NULL
FROM feasts f
WHERE f.slug = 'dedication_of_the_basilicas_of_saints_peter_and_paul_apostles'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 18, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'dedication_of_the_basilicas_of_saints_peter_and_paul_apostles';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'dedication_of_the_basilicas_of_saints_peter_and_paul_apostles'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- presentation_of_the_blessed_virgin_mary
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('presentation_of_the_blessed_virgin_mary', 'Presentation Of The Blessed Virgin Mary', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Presentation Of The Blessed Virgin Mary', NULL
FROM feasts f
WHERE f.slug = 'presentation_of_the_blessed_virgin_mary'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 21, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'presentation_of_the_blessed_virgin_mary';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'presentation_of_the_blessed_virgin_mary'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- cecilia_of_rome_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('cecilia_of_rome_virgin', 'Cecilia Of Rome Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Cecilia Of Rome Virgin', NULL
FROM feasts f
WHERE f.slug = 'cecilia_of_rome_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 22, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'cecilia_of_rome_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'cecilia_of_rome_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- clement_i_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('clement_i_pope', 'Clement I Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Clement I Pope', NULL
FROM feasts f
WHERE f.slug = 'clement_i_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 23, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'clement_i_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'clement_i_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- columban_of_luxeuil_abbot
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('columban_of_luxeuil_abbot', 'Columban Of Luxeuil Abbot', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Columban Of Luxeuil Abbot', NULL
FROM feasts f
WHERE f.slug = 'columban_of_luxeuil_abbot'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 23, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'columban_of_luxeuil_abbot';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'columban_of_luxeuil_abbot'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- andrew_dung_lac_priest_and_companions_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('andrew_dung_lac_priest_and_companions_martyrs', 'Andrew Dung Lac Priest And Companions Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Andrew Dung Lac Priest And Companions Martyrs', NULL
FROM feasts f
WHERE f.slug = 'andrew_dung_lac_priest_and_companions_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 24, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'andrew_dung_lac_priest_and_companions_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'andrew_dung_lac_priest_and_companions_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- catherine_of_alexandria_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('catherine_of_alexandria_virgin', 'Catherine Of Alexandria Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Catherine Of Alexandria Virgin', NULL
FROM feasts f
WHERE f.slug = 'catherine_of_alexandria_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 25, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'catherine_of_alexandria_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'catherine_of_alexandria_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- andrew_apostle
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('andrew_apostle', 'Andrew Apostle', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Andrew Apostle', NULL
FROM feasts f
WHERE f.slug = 'andrew_apostle'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 11, 30, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'andrew_apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'andrew_apostle'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- francis_xavier_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('francis_xavier_priest', 'Francis Xavier Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Francis Xavier Priest', NULL
FROM feasts f
WHERE f.slug = 'francis_xavier_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 3, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'francis_xavier_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'francis_xavier_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_damascene_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_damascene_priest', 'John Damascene Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Damascene Priest', NULL
FROM feasts f
WHERE f.slug = 'john_damascene_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 4, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_damascene_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_damascene_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- nicholas_of_myra_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('nicholas_of_myra_bishop', 'Nicholas Of Myra Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Nicholas Of Myra Bishop', NULL
FROM feasts f
WHERE f.slug = 'nicholas_of_myra_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 6, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'nicholas_of_myra_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'nicholas_of_myra_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- ambrose_of_milan_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('ambrose_of_milan_bishop', 'Ambrose Of Milan Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Ambrose Of Milan Bishop', NULL
FROM feasts f
WHERE f.slug = 'ambrose_of_milan_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 7, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'ambrose_of_milan_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'ambrose_of_milan_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- juan_diego_cuauhtlatoatzin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('juan_diego_cuauhtlatoatzin', 'Juan Diego Cuauhtlatoatzin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Juan Diego Cuauhtlatoatzin', NULL
FROM feasts f
WHERE f.slug = 'juan_diego_cuauhtlatoatzin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 9, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'juan_diego_cuauhtlatoatzin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'juan_diego_cuauhtlatoatzin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- our_lady_of_loreto
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('our_lady_of_loreto', 'Our Lady Of Loreto', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Our Lady Of Loreto', NULL
FROM feasts f
WHERE f.slug = 'our_lady_of_loreto'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 10, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'our_lady_of_loreto';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'our_lady_of_loreto'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- damasus_i_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('damasus_i_pope', 'Damasus I Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Damasus I Pope', NULL
FROM feasts f
WHERE f.slug = 'damasus_i_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 11, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'damasus_i_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'damasus_i_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- our_lady_of_guadalupe
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('our_lady_of_guadalupe', 'Our Lady Of Guadalupe', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Our Lady Of Guadalupe', NULL
FROM feasts f
WHERE f.slug = 'our_lady_of_guadalupe'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 12, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'our_lady_of_guadalupe';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'our_lady_of_guadalupe'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- lucy_of_syracuse_virgin
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('lucy_of_syracuse_virgin', 'Lucy Of Syracuse Virgin', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Lucy Of Syracuse Virgin', NULL
FROM feasts f
WHERE f.slug = 'lucy_of_syracuse_virgin'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 13, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'lucy_of_syracuse_virgin';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'lucy_of_syracuse_virgin'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_of_the_cross_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_of_the_cross_priest', 'John Of The Cross Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Of The Cross Priest', NULL
FROM feasts f
WHERE f.slug = 'john_of_the_cross_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 14, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_of_the_cross_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralMemorial_10'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OBL'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_of_the_cross_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- peter_canisius_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('peter_canisius_priest', 'Peter Canisius Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Peter Canisius Priest', NULL
FROM feasts f
WHERE f.slug = 'peter_canisius_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 21, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'peter_canisius_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'peter_canisius_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_of_kanty_priest
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_of_kanty_priest', 'John Of Kanty Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Of Kanty Priest', NULL
FROM feasts f
WHERE f.slug = 'john_of_kanty_priest'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 23, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_of_kanty_priest';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_of_kanty_priest'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- stephen_the_first_martyr
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('stephen_the_first_martyr', 'Stephen The First Martyr', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Stephen The First Martyr', NULL
FROM feasts f
WHERE f.slug = 'stephen_the_first_martyr'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 26, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'stephen_the_first_martyr';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'stephen_the_first_martyr'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- john_apostle
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('john_apostle', 'John Apostle', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'John Apostle', NULL
FROM feasts f
WHERE f.slug = 'john_apostle'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 27, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'john_apostle';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'john_apostle'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- holy_innocents_martyrs
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('holy_innocents_martyrs', 'Holy Innocents Martyrs', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Holy Innocents Martyrs', NULL
FROM feasts f
WHERE f.slug = 'holy_innocents_martyrs'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 28, NULL, NULL, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'holy_innocents_martyrs';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, FALSE, 'source=GeneralRoman.ts precedence=GeneralFeast_7'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'holy_innocents_martyrs'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- thomas_becket_bishop
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('thomas_becket_bishop', 'Thomas Becket Bishop', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Thomas Becket Bishop', NULL
FROM feasts f
WHERE f.slug = 'thomas_becket_bishop'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 29, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'thomas_becket_bishop';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'RED'
WHERE f.slug = 'thomas_becket_bishop'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- sylvester_i_pope
INSERT INTO feasts (slug, default_name, feast_type)
VALUES ('sylvester_i_pope', 'Sylvester I Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Sylvester I Pope', NULL
FROM feasts f
WHERE f.slug = 'sylvester_i_pope'
ON CONFLICT (feast_id, locale_code) DO NOTHING;
INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', 12, 31, NULL, NULL, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = 'sylvester_i_pope';
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, TRUE, 'source=GeneralRoman.ts precedence=OptionalMemorial_12'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'MEM_OPT'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'sylvester_i_pope'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

COMMIT;