-- =========================================================
-- Roman 1960 France Specific Calendar - Proper Saints and Promoted Feasts
-- Calendar: ROMAN_1960_FRANCE
--
-- Prerequisites:
--   - ROMAN_1960 calendar already exists in calendars table
--   - ROMAN_1960_FRANCE has NO own liturgical_ranks rows; all rank
--     lookups must go through ROMAN_1960's ranks.
--   - France-specific promoted feasts reference slugs that already
--     exist in the feasts table (seeded by ROMAN_1960 or other calendars (can be general)
--
-- =========================================================

BEGIN;

-- WIKI SOURCE :
-- 3 January: St. Genevieve Virgin, III class (I class in the Archdiocese of Paris)
-- 18 February: St. Mary Bernard Soubirous Virgin, III class
-- 30 May: St. Joan of Arc Virgin, Secondary Patroness of France, II class
-- 3 June: St. Clothilde Queen and Widow, III class
-- 1 October: St. Remigius Bishop and Confessor, III class
-- 3 October: St. Teresa of the Child Jesus Virgin, Secondary Patroness of France, II class
-- 9 October: St. Denis Bishop, Rusticus Priest, and Eleutherius Martyrs, III class, Com. of St. John Leonardi Confessor

-- ======
-- France celebrations from existing feasts
-- ======

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optionel, notes)
SELECT f.id, cal.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM FEASTS f
JOIN calendars cal ON cal.code = 'ROMAN_1960_FRANCE'
JOIN calendars rcal ON rcal.code = 'ROMAN_1960'
JOIN (VALUES
	-- already existing feasts
	('saint-genevieve-virgin', 												1, 3, 	'CLASS_III', 	'WHITE', 	'normal', FALSE, 'I class in the Archdiocese of Paris - Wikipedia 1960'),
	('saint-bernadette-soubirous-virgin', 									2, 18, 	'CLASS_III', 	'WHITE', 	'normal', FALSE, 'Wikipedia 1960'),
	('saint-joan-of-arc-virgin', 											5, 30, 	'CLASS_II', 	'WHITE', 	'normal', FALSE, 'Secondary Patroness of France - Wikipedia 1960'),
	('saint-remigius-bishop', 												10, 1, 	'CLASS_III', 	'WHITE', 	'normal', FALSE, 'Wikipedia 1960'),
	('saint-clotilde', 														6, 3, 	'CLASS_III', 	'WHITE', 	'normal', FALSE, 'Wikipedia 1960'),
	('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 	10, 3, 	'CLASS_II', 	'WHITE', 	'normal', FALSE, 'Secondary Patroness of France - Wikipedia 1960'),
	('saint-denis-bishop-and-companions-martyrs', 							10, 9, 	'CLASS_III', 	'RED', 		'normal', FALSE, 'Wikipedia 1960')
) AS x (slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON rcal.id = r.calendar_id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;


COMMIT;
