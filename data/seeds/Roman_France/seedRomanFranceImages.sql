BEGIN;

-- =========================================================
-- Roman FRANCE saints images
-- =========================================================
-- Convention:
-- - image_url served from /public (store as /saints/fr/...)
-- - images table: one row per unique artwork
-- - saint_images: junction table allowing one image to be linked to multiple saints
-- =========================================================

-- By Feast date

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

-- Saint Genevieve (JAN 3)
('/saints/fr/saint-genevieve_le-brun.webp', 'Saint Genevieve', 'painting', 'Saint Genevieve Painting', 'Élisabeth Vigée Le Brun', '1821', 'Musée du domaine royal de Marly', NULL, 'Public Domain', NULL),
('/saints/fr/saint-genevieve.webp', 'Saint Genevieve', 'painting', 'Saint Genevieve Painting', NULL, '1615-1620', 'Musée Carnavalet', NULL, 'Public Domain', NULL),
('/saints/fr/saint-genevieve_gustafson.webp', 'Saint Genevieve', 'painting', 'Saint Genevieve Painting', 'Scott Gustafson', '21th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/fr/saint-genevieve_laurens.webp', 'The Death of Saint Genevieve', 'painting', 'The Death of Saint Genevieve Painting', 'Jean-Paul Laurens', '1877-1880', 'Panthéon (Paris)', NULL, 'Public Domain', NULL),
('/saints/fr/saint-genevieve_delauney.webp', 'Saint Genevieve Calming the Parisians on the Approach of Attila', 'painting', 'Saint Genevieve Calming the Parisians on the Approach of Attila Painting', 'Jules-Élie Delaunay', '19th century', NULL, NULL, 'Public Domain', NULL),

-- Saint Remigius (JAN 15)
('/saints/fr/saint-remigius_clovis.webp', 'The Baptism of Clovis by Saint Remigius', 'painting', 'The Baptism of Clovis by Saint Remigius Painting', 'Master of Saint Giles', '1500', 'National Gallery of Art', NULL, 'Public Domain', NULL),
('/saints/fr/saint-remigius_wine.webp', 'Saint Remigius Replenishing the Barrel of Wine', 'painting', 'Saint Remigius Replenishing the Barrel of Wine Painting', NULL, '1500-1505', 'Metropolitan Museum of Art', NULL, 'Public Domain', NULL),
('/saints/fr/saint-remigius.webp', 'Saint Remigius', 'painting', 'Saint Remigius Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Bernadette Soubirous (FEB 18)
('/saints/fr/saint-bernadette-soubirous.webp', 'Saint Bernadette Soubirous', 'painting', 'Saint Bernadette Soubirous Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

COMMIT;
