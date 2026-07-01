BEGIN;

-- =====================================================
-- SEED: PATRONAGES + TRANSLATIONS + SAINT_PATRONAGES
-- Calendrier romain – France
-- =====================================================
-- Run order: after seedRomanSaintPatronages.sql
--            after seedRomanFranceSaints.sql
-- Sources : Vatican.va · Acta Apostolicae Sedis
--           Catholic Encyclopedia · Butler's Lives
-- Colonne source_type dans saint_patronages :
--   OFF = proclamation officielle du Saint-Siège (AAS)
--   TRD = patronage traditionnel séculaire reconnu
--   DEV = dévotion populaire répandue
-- =====================================================


-- =====================================================
-- 1) CODES DES PATRONAGES
-- =====================================================
-- FRANCE is already inserted in seedRomanSaintPatronages.sql.
-- Guard against execution order variations.

INSERT INTO patronages (code) VALUES
  ('FRANCE')
ON CONFLICT (code) DO NOTHING;

-- TODO: ('PARIS') – patronage code does not yet exist in the schema.
-- Once a PARIS patronage code is added (distinct from the PARIS places code),
-- add saint-genevieve → PARIS (TRD) here.


-- =====================================================
-- 2) TRADUCTIONS DES PATRONAGES
-- =====================================================
-- FRANCE translations are already seeded in seedRomanSaintPatronages.sql.
-- Guard against execution order variations.

INSERT INTO patronage_translations (patronage_id, locale_code, label)
SELECT p.id, x.locale_code, x.label
FROM patronages p
JOIN (VALUES
  ('FRANCE', 'en', 'France'),
  ('FRANCE', 'fr', 'France'),
  ('FRANCE', 'la', 'Gallia')
) AS x(code, locale_code, label) ON p.code = x.code
ON CONFLICT (patronage_id, locale_code) DO NOTHING;


-- =====================================================
-- 3) LIENS SAINT_PATRONAGES
-- =====================================================
-- Patronesses secondaires officielles de la France,
-- proclamées par le Saint-Siège :
--
--   saint-joan-of-arc
--     Canonisée par Benoît XV (1920) ; déclarée patronne
--     secondaire de la France par Pie XI (1922).
--
--   saint-therese-of-the-child-jesus
--     Déclarée patronne secondaire de la France par Pie XI
--     (AAS 36, 1944, pp. 300-302).
--     Note : déjà présente dans seedRomanSaintPatronages.sql
--     avec source_type = 'TRD' ; l'ON CONFLICT ci-dessous
--     ne modifie pas la ligne existante. Si une correction
--     vers 'OFF' est souhaitée, remplacer DO NOTHING par
--     DO UPDATE SET source_type = EXCLUDED.source_type.
--
-- Patronne principale :
--   saint-mary (Notre-Dame de l'Assomption) – Pie XI, 2 mars 1922
--   → déjà liée à FRANCE avec source_type = 'OFF' dans
--     seedRomanSaintPatronages.sql ; non dupliquée ici.

INSERT INTO saint_patronages (saint_id, patronage_id, source_type)
SELECT s.id, p.id, x.source_type
FROM (VALUES
  ('saint-joan-of-arc',                 'FRANCE', 'OFF'),  -- Pie XI, 1922
  ('saint-therese-of-the-child-jesus',  'FRANCE', 'OFF')   -- Pie XI, 1944
) AS x(saint_slug, patronage_code, source_type)
JOIN saints    s ON s.slug = x.saint_slug
JOIN patronages p ON p.code = x.patronage_code
ON CONFLICT (saint_id, patronage_id) DO NOTHING;


COMMIT;
