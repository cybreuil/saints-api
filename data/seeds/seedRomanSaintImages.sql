BEGIN;

-- =========================================================
-- Roman saints images (multi-image seed)
-- =========================================================
-- Convention:
-- - image_url is served from /public (store as /saints/...)
-- - one primary image per saint
-- - sort_order controls gallery order


INSERT INTO saint_images (
  saint_id, image_url, alt_text, caption, author, date, credit, license, source_url, sort_order, is_primary
)
SELECT s.id, x.image_url, x.alt_text, x.caption, x.credit, x.license, x.author, x.date, x.source_url, x.sort_order, x.is_primary
FROM saints s
JOIN (VALUES

-- =========================
-- Principal Roman saints (Mary, Joseph, John the Baptist)
-- =========================

-- Saint Mary
('saint-mary', '/saints/saint-mary_tiepolo.jpg', 'The Immaculate Conception Painting', 'The Immaculate Conception, by Giovanni Battista Tiepolo, from Museo del Prado', 'Giovanni Battista Tiepolo', '1748', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-mary', '/saints/saint-mary_velazquez.jpg', 'The Coronation of the Virgin Painting', 'The Coronation of the Virgin, by Diego Velázquez, from Museo del Prado', 'Diego Velázquez', '1645-1650', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-mary', '/saints/saint-mary_caravaggio_annunciation.jpg', 'The Annunciation Painting', 'The Annunciation, by Caravaggio, from Musée des Beaux-Arts de Nancy', 'Caravaggio', '1608', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-mary', '/saints/saint-mary_raphael.jpg', 'The Sistine Madonna Painting', 'The Sistine Madonna, by Raphael, from Gemäldegalerie Alte Meister', 'Raphael', '1513-1514', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-mary', '/saints/saint-mary_caravaggio_madonna-di-loreto.jpg', 'Madonna di Loreto Painting', 'Madonna di Loreto, by Caravaggio, from Sant''Agostino, Rome', 'Caravaggio', '1606', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-mary', '/saints/saint-mary_caravaggio_madonna-of-the-rosary.jpg', 'Madonna of the Rosary Painting', 'Madonna of the Rosary, by Caravaggio, from Kunsthistorisches Museum', 'Caravaggio', '1607', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-mary', '/saints/saint-mary_botticelli_madonna-of-the-book.jpg', 'The Madonna of the Book Painting', 'The Madonna of the Book, by Sandro Botticelli, from Museo Poldi Pezzoli', 'Sandro Botticelli', '1480-1481', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-mary', '/saints/saint-mary_botticelli_magnificat.jpg', 'The Madonna of the Magnificat Painting', 'The Madonna of the Magnificat, by Sandro Botticelli, from Uffizi Gallery', 'Sandro Botticelli', '1481', NULL, 'Public Domain', NULL, 8, FALSE),
('saint-mary', '/saints/saint-mary_sassoferrato.jpg', 'The Virgin in Prayer Painting', 'The Virgin in Prayer, by Sassoferrato, from National Gallery of London', 'Sassoferrato', '1640-1650', NULL, 'Public Domain', NULL, 9, FALSE),
('saint-mary', '/saints/saint-mary_murillo.jpg', 'The Immaculate Conception Painting', 'The Immaculate Conception, by Bartolomé Esteban Murillo, from Museo del Prado', 'Bartolomé Esteban Murillo', '1678', NULL, 'Public Domain', NULL, 10, FALSE),
('saint-mary', '/saints/saint-mary_guido-reni.jpg', 'The Assumption of the Virgin Painting', 'The Assumption of the Virgin, by Guido Reni, from The Städel Museum', 'Guido Reni', '1637-1638', NULL, 'Public Domain', NULL, 11, FALSE),
('saint-mary', '/saints/saint-mary_caravaggio_dormition.jpg', 'The Dormition of the Virgin Painting', 'The Dormition of the Virgin, by Caravaggio, from Musée du Louvre', 'Caravaggio', '1606-1607', NULL, 'Public Domain', NULL, 12, FALSE),
('saint-mary', '/saints/saint-mary_velazquez_adoration.jpg', 'The Adoration of the Magi Painting', 'The Adoration of the Magi, by Diego Velázquez, from Museo del Prado', 'Diego Velázquez', '1619', NULL, 'Public Domain', NULL, 13, FALSE),

-- Saint Joseph
('saint-joseph', '/saints/saint-joseph_guido-reni.jpg', 'Saint Joseph and the Christ Child Painting', 'Saint Joseph and the Christ Child, by Guido Reni, from Museum of Fine Arts of Houston', 'Guido Reni', '1640', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-joseph', '/saints/saint-joseph_carracci.jpg', 'The Holy Family Painting', 'The Holy Family, by Annibale Carracci, from Borghese Gallery', 'Annibale Carracci', '1596-1597', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-joseph', '/saints/saint-joseph_murillo.jpg', 'Saint Joseph and the Christ Child', 'Saint Joseph and the Christ Child, by Bartolomé Esteban Murillo, from The John and Mable Ringling Museum of Art', 'Bartolomé Esteban Murillo', '1670-1675', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-joseph', '/saints/saint-joseph_murillo_holy-family.jpg', 'The Holy Family Painting', 'The Holy Family, by Bartolomé Esteban Murillo, from National Gallery of Ireland', 'Bartolomé Esteban Murillo', '1640-1649', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-joseph', '/saints/saint-joseph_la-tour.jpg', 'Joseph the Carpenter Painting', 'Joseph the Carpenter, by Georges de La Tour, from Musée du Louvre', 'Georges de La Tour', '1640-1645', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint John the Baptist
('saint-john-the-baptist', '/saints/saint-john-the-baptist_caravaggio.jpg', 'Saint John the Baptist in the Wilderness Painting', 'Saint John the Baptist in the Wilderness, by Caravaggio, from the Nelson-Atkins Museum of Art', 'Caravaggio', '1604-1605', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-the-baptist', '/saints/saint-john-the-baptist_leonardo-da-vinci.jpg', 'Saint John the Baptist Painting', 'Saint John the Baptist, by Leonardo da Vinci, from Musée du Louvre', 'Leonardo da Vinci', '1513-1516', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-the-baptist', '/saints/saint-john-the-baptist_lemoine.jpg', 'Saint John the Baptist Painting', 'Saint John the Baptist, by François Lemoine, from Saint-Eustache (Paris)', 'François Lemoine', '1726', NULL, 'Public Domain', NULL, 3, FALSE),
---
)

AS x (slug, image_url, alt_text, caption, credit, license, author, date, source_url, sort_order, is_primary)

ON s.slug = x.slug
ON CONFLICT DO NOTHING;

COMMIT;
