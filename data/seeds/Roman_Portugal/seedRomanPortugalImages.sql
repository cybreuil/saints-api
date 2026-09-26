BEGIN;

-- =====
-- Roman PORTUGAL saints images
-- =====
--
-- FULL WIP

INSERT INTO images (
  image_url,
  title,
  image_type,
  alt_text,
  creator,
  date_label,
  repository,
  credit,
  license,
  source_url
) VALUES

-- Blessed Gonçalo de Amarante
('/saints/pt/blessed-goncalo-de-amarante_andre.webp', 'Blessed Gonçalo de Amarante', 'painting', 'Blessed Gonçalo de Amarante Painting', 'António André', '1618-1625', 'Museum of Aveiro (Portugal)', NULL, 'Public Domain', NULL),
('/saints/pt/blessed-goncalo-de-amarante.webp', 'Blessed Gonçalo de Amarante', 'painting', 'Blessed Gonçalo de Amarante Painting', NULL, '17th Century', NULL, NULL, 'Public Domain', NULL),

-- Saint John de Brito
('/saints/pt/saint-john-de-brito.webp', 'Saint John de Brito', 'painting', 'Saint John de Brito Painting', NULL, NULL, NULL, NULL, 'Attribution-ShareAlike 4.0 International', NULL),
('/saints/pt/saint-john-de-brito_martyr.webp', 'Martyrdom of Saint John de Britto Killed by Sethupathi King of Ramnad', 'illustration', 'Saint John de Brito Martyrdom Illustration', NULL, '19th Century', NULL, NULL, 'Attribution-ShareAlike 4.0 International', NULL),

-- Saint Theotonius
('/saints/pt/saint-theotonius_goncalves.webp', 'Saint Theotonius', 'painting', 'Saint Theotonius Painting', 'Nuno Gonçalves', '15th Century', 'National Museum of Ancient Art (Lisbon)', NULL, 'Public Domain', NULL),
('/saints/pt/saint-theotonius_goncalves_2.webp', 'aint Theotonius at the feet of Our Lady of the Immaculate Conception', 'painting', 'Saint Theotonius Painting', 'André Gonçalves', '18th Century', 'Santa Casa da Misericórdia (Coimbra)', NULL, 'Public Domain', NULL),

-- Saint Jacinta Marto
('/saints/pt/saint-jacinta-marto.webp', 'Saint Jacinta Marto', 'painting', 'Saint Jacinta Marto Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Francisco Marto
('/saints/pt/saint-francisco-marto.webp', 'Saint Francisco Marto', 'painting', 'Saint Francisco Marto Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Blessed Joan of Portugal
('/saints/pt/blessed-joan-of-portugal.webp', 'Blessed Joan of Portugal', 'painting', 'Blessed Joan of Portugal Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Blessed Sancha of Portugal
('/saints/pt/blessed-sancha-of-portugal.webp', 'Blessed Sancha of Portugal', 'painting', 'Blessed Sancha of Portugal Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Blessed Mafalda of Portugal
('/saints/pt/blessed-mafalda-of-portugal.webp', 'Blessed Mafalda of Portugal', 'painting', 'Blessed Mafalda of Portugal Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Blessed Theresa of Portugal
('/saints/pt/blessed-theresa-of-portugal.webp', 'Blessed Theresa of Portugal', 'painting', 'Blessed Theresa of Portugal Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Blessed Inácio de Azevedo
('/saints/pt/blessed-inacio-de-azevedo.webp', 'Blessed Inácio de Azevedo', 'painting', 'Blessed Inácio de Azevedo Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Blessed Bartholomew of the Martyrs
('/saints/pt/blessed-bartholomew-of-the-martyrs.webp', 'Blessed Bartholomew of the Martyrs', 'painting', 'Blessed Bartholomew of the Martyrs Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Beatrice of Silva
('/saints/pt/saint-beatrice-of-silva.webp', 'Saint Beatrice of Silva', 'painting', 'Saint Beatrice of Silva Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Blessed Gonçalo de Lagos
('/saints/pt/blessed-goncalo-de-lagos.webp', 'Blessed Gonçalo de Lagos', 'painting', 'Blessed Gonçalo de Lagos Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Nuno of Saint Mary
('/saints/pt/saint-nuno-of-saint-mary.webp', 'Saint Nuno of Saint Mary', 'painting', 'Saint Nuno of Saint Mary Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Martin of Dume
('/saints/pt/saint-martin-of-dume.webp', 'Saint Martin of Dume', 'painting', 'Saint Martin of Dume Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Gerald of Braga
('/saints/pt/saint-gerald-of-braga.webp', 'Saint Gerald of Braga', 'painting', 'Saint Gerald of Braga Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL);

COMMIT;
