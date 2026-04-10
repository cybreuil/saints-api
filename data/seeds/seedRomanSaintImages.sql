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
('saint-mary', '/saints/saint-mary_sassoferrato.jpg', 'The Virgin in Prayer Painting', 'The Virgin in Prayer, by Sassoferrato, from National Gallery', 'Sassoferrato', '1640-1650', NULL, 'Public Domain', NULL, 9, FALSE),
('saint-mary', '/saints/saint-mary_murillo.jpg', 'The Immaculate Conception Painting', 'The Immaculate Conception, by Bartolomé Esteban Murillo, from Museo del Prado', 'Bartolomé Esteban Murillo', '1678', NULL, 'Public Domain', NULL, 10, FALSE),
('saint-mary', '/saints/saint-mary_guido-reni.jpg', 'The Assumption of the Virgin Painting', 'The Assumption of the Virgin, by Guido Reni, from The Städel Museum', 'Guido Reni', '1637-1638', NULL, 'Public Domain', NULL, 11, FALSE),
('saint-mary', '/saints/saint-mary_caravaggio_dormition.jpg', 'The Dormition of the Virgin Painting', 'The Dormition of the Virgin, by Caravaggio, from Musée du Louvre', 'Caravaggio', '1606-1607', NULL, 'Public Domain', NULL, 12, FALSE),

-- Saint Joseph
('saint-joseph', '/saints/saint-joseph_guido-reni.jpg', 'Saint Joseph and the Christ Child Painting', 'Saint Joseph and the Christ Child, by Guido Reni, from Museum of Fine Arts of Houston', 'Guido Reni', '1640', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-joseph', '/saints/saint-joseph_carracci.jpg', 'The Holy Family Painting', 'The Holy Family, by Annibale Carracci, from Borghese Gallery', 'Annibale Carracci', '1596-1597', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-joseph', '/saints/saint-joseph_murillo.jpg', 'Saint Joseph and the Christ Child'),

-- Saint John the Baptist
('saint-john-the-baptist', '/saints/saint-john-the-baptist_caravaggio.jpg', 'Saint John the Baptist Painting', 'Saint John the Baptist, by Caravaggio, from Galleria Nazionale d''Arte Antica', 'Caravaggio', '1604-1605', NULL, 'Public Domain', NULL, 1, TRUE)

) AS x(
  slug, image_url, alt_text, caption, credit, license, author, date, source_url, sort_order, is_primary
)
ON s.slug = x.slug
ON CONFLICT DO NOTHING;

COMMIT;
