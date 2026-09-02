BEGIN;

-- =========================================================
-- Roman Portugal Calendar - FEAST <-> SAINT links
-- =========================================================
-- Covers only Portugal-specific feasts that are NOT already
-- present in ROMAN_GENERAL's feast_saints.
--
-- Promoted feasts from ROMAN_GENERAL are elevated in Portugal
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

  -- Jan 11 – Blessed Gonçalo de Amarante, Priest
  ('blessed-goncalo-de-amarante-priest',
   'blessed-goncalo-de-amarante',
   'primary'),

  -- Feb 4 – Saint John de Brito, Priest and Martyr
  ('saint-john-de-brito-priest-and-martyr',
   'saint-john-de-brito',
   'primary'),

  -- Feb 18 – Saint Theotonius, Priest
  ('saint-theotonius-priest',
   'saint-theotonius',
   'primary'),

  -- Feb 20 – Saints Jacinta and Francisco Marto
  ('saints-jacinta-and-francisco-marto',
   'saint-jacinta-marto',
   'primary'),
  ('saints-jacinta-and-francisco-marto',
   'saint-francisco-marto',
   'primary'),

  -- May 12 – Blessed Joan of Portugal, Virgin
  ('blessed-joan-of-portugal-virgin',
   'blessed-joan-of-portugal',
   'primary'),

  -- Jun 10 – Guardian Angel of Portugal
  -- no saint link

  -- Jun 20 – Blessed Sancha and Mafalda, Virgins
  ('blessed-sancha-and-mafalda-virgins',
   'blessed-sancha-of-portugal',
   'primary'),
  ('blessed-sancha-and-mafalda-virgins',
   'blessed-mafalda-of-portugal',
   'primary'),

  -- Jun 20 – Blessed Theresa of Portugal, Religious
  ('blessed-theresa-of-portugal-religious',
   'blessed-theresa-of-portugal',
   'primary'),

  -- Jul 17 – Blessed Inácio de Azevedo, Priest, and Companions, Martyrs
  ('blessed-inacio-de-azevedo-priest-and-companions-martyrs',
   'blessed-inacio-de-azevedo',
   'primary'),

  -- Jul 18 – Blessed Bartholomew of the Martyrs, Bishop
  ('blessed-bartholomew-of-the-martyrs-bishop',
   'blessed-bartholomew-of-the-martyrs',
   'primary'),

  -- Aug 17 – Saint Beatrice of Silva, Virgin
  ('saint-beatrice-of-silva-virgin',
   'saint-beatrice-of-silva',
   'primary'),

  -- Oct 27 – Blessed Gonçalo de Lagos, Priest
  ('blessed-goncalo-de-lagos-priest',
   'blessed-goncalo-de-lagos',
   'primary'),

  -- Nov 6 – Saint Nuno of Saint Mary
  ('saint-nuno-of-saint-mary',
   'saint-nuno-of-saint-mary',
   'primary'),

  -- Dec 5 – Saints Fructuosus, Martin of Dume and Gerald, Bishops
  ('saints-fructuosus-martin-of-dume-and-gerald-bishops',
   'saint-fructuosus',
   'primary'),
  ('saints-fructuosus-martin-of-dume-and-gerald-bishops',
   'saint-martin-of-dume',
   'primary'),
  ('saints-fructuosus-martin-of-dume-and-gerald-bishops',
   'saint-gerald-of-braga',
   'primary')

  -- Marian / Christological specific feasts already linked in ROMAN_GENERAL
  -- our-lady-of-fatima -> saint-mary already exists
  -- the-five-wounds-of-the-lord -> no saint link needed

  -- Anthony of Lisbon reuses ROMAN_GENERAL feast/saint link:
  -- saint-anthony-of-padua-priest-and-doctor-of-the-church -> saint-anthony-of-padua

  -- John of God reuses ROMAN_GENERAL feast/saint link:
  -- saint-john-of-god-religious -> saint-john-of-god

  -- Elizabeth of Portugal reuses ROMAN_GENERAL feast/saint link:
  -- saint-elizabeth-of-portugal -> saint-elizabeth-of-portugal

  -- Saints Cyril and Methodius, Saint Catherine of Siena,
  -- Saint Benedict, Saint Bridget, Saint Teresa Benedicta
  -- all reuse ROMAN_GENERAL feast_saints links.

) AS x(feast_slug, saint_slug, role)
JOIN feasts f ON f.slug = x.feast_slug
JOIN saints s ON s.slug = x.saint_slug
ON CONFLICT (feast_id, saint_id) DO NOTHING;

COMMIT;
