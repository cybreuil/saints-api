-- 1) Combien de fêtes au total ?
SELECT COUNT(*) AS feasts_count FROM feasts;

-- 2) Combien de traductions par langue ?
SELECT locale_code, COUNT(*) 
FROM feast_translations
GROUP BY locale_code
ORDER BY locale_code;

-- 3) Doublons potentiels de date par fête/calendrier
SELECT feast_id, calendar_id, month, day, COUNT(*)
FROM feast_dates
WHERE date_kind = 'fixed'
GROUP BY feast_id, calendar_id, month, day
HAVING COUNT(*) > 1;

-- 4) Movables présents ?
SELECT movable_base, COUNT(*)
FROM feast_dates
WHERE date_kind = 'movable'
GROUP BY movable_base
ORDER BY movable_base;

-- 5) Celebrations sans rank (doit être 0)
SELECT COUNT(*) AS celebrations_without_rank
FROM celebrations
WHERE rank_id IS NULL;

-- 6) Celebrations sans couleur (normal d'en avoir avec ta policy safe-color)
SELECT COUNT(*) AS celebrations_without_color
FROM celebrations
WHERE color_id IS NULL;
