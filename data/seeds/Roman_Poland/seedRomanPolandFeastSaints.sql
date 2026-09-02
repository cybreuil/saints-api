BEGIN;

-- =========================================================
-- Roman Poland Calendar - FEAST <-> SAINT links
-- =========================================================
-- Covers only Poland-specific feasts that are NOT already
-- present in ROMAN_GENERAL's feast_saints.
--
-- Promoted feasts from ROMAN_GENERAL are elevated in Poland
-- but their feast_saints links already exist — no new rows
-- needed here.
--
-- Assumes:
-- - table feast_saints(feast_id, saint_id, role)
-- - unique constraint on (feast_id, saint_id)
-- =========================================================

INSERT INTO feast_saints (feast_id, saint_id, role)
SELECT f.id, s.id, x.role
FROM (VALUES

  ('saint-jozef-sebastian-pelczar-bishop',
   'saint-jozef-sebastian-pelczar',
   'primary'),

  ('saint-vincent-pallotti-priest',
   'saint-vincent-pallotti',
   'primary'),

  ('our-lady-queen-of-poland',
   'saint-mary',
   'primary'),

  ('saint-florian-martyr',
   'saint-florian',
   'primary'),

  ('saint-stanislaw-kazimierczyk-priest',
   'saint-stanislaw-kazimierczyk',
   'primary'),

  ('saint-andrew-bobola-priest-and-martyr',
   'saint-andrew-bobola',
   'primary'),

  ('our-lady-help-of-christians',
   'saint-mary',
   'primary'),

  ('saint-ursula-ledochowska-virgin',
   'saint-ursula-ledochowska',
   'primary'),

  ('saint-john-sarkander-priest-and-martyr',
   'saint-john-sarkander',
   'primary'),

  ('saint-zdzislawa',
   'saint-zdzislawa',
   'primary'),

  ('saint-hedwig-the-queen',
   'saint-hedwig-the-queen',
   'primary'),

  ('blessed-antoni-nowowiejski-bishop-and-companions-martyrs',
   'blessed-antoni-nowowiejski',
   'primary'),

  ('blessed-michael-kozal-bishop-and-martyr',
   'blessed-michael-kozal',
   'primary'),

  ('saint-albert-chmielowski-religious',
   'saint-albert-chmielowski',
   'primary'),

  ('saint-zygmunt-gorazdowski-priest',
   'saint-zygmunt-gorazdowski',
   'primary'),

  ('saint-otto-bishop',
   'saint-otto-of-bamberg',
   'primary'),

  ('blessed-maria-teresia-ledochowska-virgin',
   'blessed-maria-teresia-ledochowska',
   'primary'),

  ('saint-john-of-dukla-priest',
   'saint-john-of-dukla',
   'primary'),

  ('saint-bruno-boniface-of-querfurt-bishop-and-martyr',
   'saint-bruno-boniface-of-querfurt',
   'primary'),

  ('saints-andrzej-swierad-and-benedict-hermits',
   'saint-andrzej-swierad',
   'primary'),
  ('saints-andrzej-swierad-and-benedict-hermits',
   'saint-benedict-the-hermit',
   'primary'),

  ('saint-simon-of-lipnica-priest',
   'saint-simon-of-lipnica',
   'primary'),

  ('blessed-czeslaw-priest',
   'blessed-czeslaw',
   'primary'),

  ('saint-kinga-virgin',
   'saint-kinga',
   'primary'),

  ('saint-hyacinth-priest',
   'saint-hyacinth',
   'primary'),

  ('our-lady-of-czestochowa',
   'saint-mary',
   'primary'),

  ('blessed-maria-stella-and-companions-virgins-and-martyrs',
   'blessed-maria-stella',
   'primary'),

  ('saint-melchior-grodziecki-priest-and-martyr',
   'saint-melchior-grodziecki',
   'primary'),

  ('saint-zygmunt-szczesny-felinski-bishop',
   'saint-zygmunt-szczesny-felinski',
   'primary'),

  ('saint-stanislaw-kostka-religious',
   'saint-stanislaw-kostka',
   'primary'),

  ('blessed-john-beyzym-priest',
   'blessed-john-beyzym',
   'primary'),

  ('blessed-honorat-kozminski-priest',
   'blessed-honorat-kozminski',
   'primary'),

  ('saint-hedwig-of-poland',
   'saint-hedwig-of-poland',
   'primary'),

  ('saint-josef-bilczewski-bishop',
   'saint-josef-bilczewski',
   'primary'),

  ('saints-benedykt-jan-mateusz-isaak-and-krystyn-the-first-martyrs-of-poland',
   'saint-benedykt-of-poland',
   'primary'),
  ('saints-benedykt-jan-mateusz-isaak-and-krystyn-the-first-martyrs-of-poland',
   'saint-jan-of-poland',
   'primary'),
  ('saints-benedykt-jan-mateusz-isaak-and-krystyn-the-first-martyrs-of-poland',
   'saint-mateusz-of-poland',
   'primary'),
  ('saints-benedykt-jan-mateusz-isaak-and-krystyn-the-first-martyrs-of-poland',
   'saint-isaak-of-poland',
   'primary'),
  ('saints-benedykt-jan-mateusz-isaak-and-krystyn-the-first-martyrs-of-poland',
   'saint-krystyn-of-poland',
   'primary'),

  ('blessed-karolina-kozkowna-virgin-and-martyr',
   'blessed-karolina-kozkowna',
   'primary'),

  ('saint-rafal-kalinowski-priest',
   'saint-rafal-kalinowski',
   'primary'),

  ('saint-barbara-virgin-and-martyr',
   'saint-barbara',
   'primary')

) AS x(feast_slug, saint_slug, role)
JOIN feasts f ON f.slug = x.feast_slug
JOIN saints s ON s.slug = x.saint_slug
ON CONFLICT (feast_id, saint_id) DO NOTHING;

COMMIT;
