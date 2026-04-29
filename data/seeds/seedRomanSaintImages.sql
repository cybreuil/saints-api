BEGIN;

-- =========================================================
-- Roman saints images (multi-image seed)
-- =========================================================
-- Convention:
-- - image_url is served from /public (store as /saints/...)
-- - one primary image per saint
-- - sort_order controls gallery order

-- NOTE :
-- all apostles painted by rubens
-- all evangelist by hals
-- all apostles by La Tour painted as well but some paintings are missing

-- =========================================================
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
('saint-mary', '/saints/saint-mary_tiepolo.jpg', 'The Immaculate Conception Painting', 'The Immaculate Conception, by Giambattista Tiepolo, from Museo del Prado', 'Giambattista Tiepolo', '1748', NULL, 'Public Domain', NULL, 1, TRUE),
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
('saint-mary', '/saints/saint-mary_champaigne.jpg', 'Madonna and Child Painting', 'Madonna and Child, by Philippe de Champaigne, from Musée des Beaux-Arts d''Agen', 'Philippe de Champaigne', '17th Century', NULL, 'Attribution-ShareAlike 4.0 International', NULL, 14, FALSE),

-- Saint Joseph
('saint-joseph', '/saints/saint-joseph_guido-reni.jpg', 'Saint Joseph and the Christ Child Painting', 'Saint Joseph and the Christ Child, by Guido Reni, from Museum of Fine Arts of Houston', 'Guido Reni', '1640', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-joseph', '/saints/saint-joseph_carracci.jpg', 'The Holy Family Painting', 'The Holy Family, by Annibale Carracci, from Borghese Gallery', 'Annibale Carracci', '1596-1597', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-joseph', '/saints/saint-joseph_murillo.jpg', 'Saint Joseph and the Christ Child', 'Saint Joseph and the Christ Child, by Bartolomé Esteban Murillo, from The John and Mable Ringling Museum of Art', 'Bartolomé Esteban Murillo', '1670-1675', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-joseph', '/saints/saint-joseph_murillo_holy-family.jpg', 'The Holy Family Painting', 'The Holy Family, by Bartolomé Esteban Murillo, from National Gallery of Ireland', 'Bartolomé Esteban Murillo', '1640-1649', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-joseph', '/saints/saint-joseph_la-tour.jpg', 'Joseph the Carpenter Painting', 'Joseph the Carpenter, by Georges de La Tour, from Musée du Louvre', 'Georges de La Tour', '1640-1645', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-joseph', '/saints/saint-joseph_champaigne.jpg', 'The Dream of Saint Joseph Painting', 'The Dream of Saint Joseph, by Philippe de Champaigne, from National Gallery', 'Philippe de Champaigne', '1642-1643', NULL, 'Public Domain', NULL, 6, FALSE),

-- Saint John the Baptist
('saint-john-the-baptist', '/saints/saint-john-the-baptist_caravaggio.jpg', 'Saint John the Baptist in the Wilderness Painting', 'Saint John the Baptist in the Wilderness, by Caravaggio, from the Nelson-Atkins Museum of Art', 'Caravaggio', '1604-1605', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-the-baptist', '/saints/saint-john-the-baptist_leonardo-da-vinci.jpg', 'Saint John the Baptist Painting', 'Saint John the Baptist, by Leonardo da Vinci, from Musée du Louvre', 'Leonardo da Vinci', '1513-1516', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-the-baptist', '/saints/saint-john-the-baptist_lemoine.jpg', 'Saint John the Baptist Painting', 'Saint John the Baptist, by François Lemoine, from Saint-Eustache (Paris)', 'François Lemoine', '1726', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-john-the-baptist', '/saints/saint-john-the-baptist_tanzio.jpg', 'Saint John the Baptist Painting', 'Saint John the Baptist, by Tanzio da Varallo, from Philbrook Museum of Art', 'Tanzio da Varallo', '1627-1629', NULL, 'Public Domain', NULL, 4, FALSE),

-- =========================
-- January saints
-- =========================

-- Saint Basil the Great
('saint-basil-the-great', '/saints/saint-basil-the-great_domenichino_grottaferrata.jpg', 'Saint Basil the Great Fresco', 'Saint Basil the Great, by Domenichino, from Grottaferrata Abbey', 'Domenichino', '1609-1612', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-basil-the-great', '/saints/saint-basil-the-great.webp', 'Saint Basil the Great Painting', 'Saint Basil the Great, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-basil-the-great', '/saints/saint-basil-the-great_mosaic.jpg', 'Saint Basil the Great Mosaic', 'Saint Basil the Great, by an unknown artist', NULL, '11th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Gregory Nazianzen
('saint-gregory-nazianzen', '/saints/saint-gregory-nazianzen_domenichino_grottaferrata.jpg', 'Saint Gregory Nazianzen Fresco', 'Saint Gregory Nazianzen, by Domenichino, from Grottaferrata Abbey', 'Domenichino', '1609-1612', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-gregory-nazianzen', '/saints/saint-gregory-nazianzen.jpg', 'Saint Gregory Nazianzen Fresco', 'Saint Gregory Nazianzen, by an unknown artist, from Kariye Camii (Istanbul)', NULL, '14th century', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Raymond of Penyafort
('saint-raymond-of-penyafort', '/saints/saint-raymond-of-penyafort_francisco-de-reyna.jpg', 'Saint Raymond of Penyafort Painting', 'Saint Raymond of Penyafort, by Francisco de Reyna', 'Francisco de Reyna', '17th century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-raymond-of-penyafort', '/saints/saint-raymond-of-penyafort_tommaso-dolabella.jpg', 'Saint Raymond of Penyafort Painting', 'Saint Raymond of Penyafort, by Tommaso Dolabella, from the Church of the Holy Trinity (Kraków)', 'Tommaso Dolabella', '1627', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Hilary of Poitiers
('saint-hilary-of-poitiers', '/saints/saint-hilary-of-poitiers_cremiere.jpg', 'Saint Hilary of Poitiers Painting', 'Saint Hilary of Poitiers, by Pierre-Floréal Crémière, from Saint-Hilaire du Martray (Loudun)', 'Pierre-Floréal Crémière', '1846', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-hilary-of-poitiers', '/saints/saint-hilary-of-poitiers.png', 'Saint Hilary of Poitiers Icon', 'Saint Hilary of Poitiers, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Anthony, Abbot
('saint-anthony-abbot', '/saints/saint-anthony-abbot_zurbaran.jpg', 'Saint Anthony the Great Painting', 'Saint Anthony, Abbot, by Francisco de Zurbarán, from Uffizi Gallery', 'Francisco de Zurbarán', '1640', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-anthony-abbot', '/saints/saint-anthony-abbot_icon.jpg', 'Saint Anthony the Great Icon', 'Saint Anthony, Abbot, by Michael Damaskinos, from Byzantine and Christian Museum (Athens)', 'Michael Damaskinos', '16th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-anthony-abbot', '/saints/saint-anthony-abbot_osservanza-master_gold-temptation.jpg', 'The Temptation of Saint Anthony Painting', 'The Gold Temptation of Saint Anthony, by the Osservanza Master, from Metropolitan Museum of Art', 'Osservanza Master', '1435-1440', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-anthony-abbot', '/saints/saint-anthony-abbot_osservanza-master_woman-temptation.jpg', 'The Temptation of Saint Anthony Painting', 'The Woman Temptation of Saint Anthony, by the Osservanza Master, from Yale University Art Gallery', 'Osservanza Master', '1435-1440', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-anthony-abbot', '/saints/saint-anthony-abbot_bosch.jpg', 'The Temptation of Saint Anthony Painting', 'The Temptation of Saint Anthony, by Hieronymus Bosch, from Museo del Prado', 'Hieronymus Bosch', '16th Century', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint Fabian Pope
('saint-fabian-pope', '/saints/saint-fabian-pope.jpg', 'Saint Fabian Pope Painting', 'Saint Fabian, Pope, by Giovanni di Paolo, from National Gallery (London)', 'Giovanni di Paolo', '15th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-fabian-pope', '/saints/saint-fabian-pope_master-of-messkirch.jpg', 'Saint Fabian Pope Painting', 'Saint Fabian, Pope, by the Master of Messkirch, from Veste Coburg Art Collections', 'Master of Messkirch', '16th Century', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Sebastian
('saint-sebastian', '/saints/saint-sebastian_sodoma.jpg', 'Saint Sebastian Painting', 'Saint Sebastian, by Il Sodoma, from Uffizi Gallery', 'Il Sodoma', '1525', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-sebastian', '/saints/saint-sebastian_guido-reni.jpg', 'Saint Sebastian Painting', 'Saint Sebastian, by Guido Reni, from Musei di Strada Nuova', 'Guido Reni', '1615', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-sebastian', '/saints/saint-sebastian_ribera.jpg', 'Saint Sebastian Painting', 'Saint Sebastian, by Jusepe de Ribera, from Museo del Prado', 'Jusepe de Ribera', '1636', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-sebastian', '/saints/saint-sebastian_rubens.jpg', 'Saint Sebastian Painting', 'Saint Sebastian, by Peter Paul Rubens, from Private Collection', 'Peter Paul Rubens', '17th Century', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Agnes of Rome
('saint-agnes-of-rome', '/saints/saint-agnes-of-rome_domenichino.jpg', 'Saint Agnes of Rome Painting', 'Saint Agnes of Rome, by Domenichino, from the Royal Collection of the British royal family', 'Domenichino', '1620', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-agnes-of-rome', '/saints/saint-agnes-of-rome_massimo-stanzione.jpg', 'Saint Agnes of Rome Painting', 'Saint Agnes of Rome, by Massimo Stanzione, from Museu Nacional d''Art de Catalunya', 'Massimo Stanzione', '1635-1640', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-agnes-of-rome', '/saints/saint-agnes-of-rome_andrea-del-sarto.jpg', 'Saint Agnes of Rome Painting', 'Saint Agnes of Rome, by Andrea del Sarto, from Pisa Cathedral', 'Andrea del Sarto', '16th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Vincent of Saragossa
('saint-vincent-of-saragossa', '/saints/saint-vincent-of-saragossa_tomas-giner.jpg', 'Saint Vincent of Saragossa Painting', 'Saint Vincent of Saragossa, by Tomás Giner, from Museo del Prado', 'Tomás Giner', '1462-1466', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-vincent-of-saragossa', '/saints/saint-vincent-of-saragossa_school-of-francisco-ribalta.jpg', 'Saint Vincent of Saragossa Painting', 'Saint Vincent of Saragossa, by the School of Francisco Ribalta, from Museo del Prado', 'School of Francisco Ribalta', '17th Century', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Francis de Sales
('saint-francis-de-sales', '/saints/saint-francis-de-sales.jpg', 'Saint Francis de Sales Painting', 'Saint Francis de Sales, by an unknown artist, from the Château de Bussy-Rabutin', NULL, '17th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-francis-de-sales', '/saints/saint-francis-de-sales_bayeu.jpg', 'Saint Francis de Sales Painting', 'Saint Francis de Sales, by Francisco Bayeu, from Museo del Prado', NULL, '18th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-francis-de-sales', '/saints/saint-francis-de-sales_brenet.jpg', 'Saint Francis de Sales Painting', 'Saint Francis de Sales, by Nicolas Guy Brenet, from Château de Blois', 'Nicolas Guy Brenet', '18th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Paul, Apostle
('saint-paul-apostle', '/saints/saint-paul-apostle_rubens.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1611-1612', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-paul-apostle', '/saints/saint-paul-apostle_ribera.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Jusepe de Ribera, from Museo del Prado', 'Jusepe de Ribera', '1615-1616', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_velasquez.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Diego Velázquez, from Museo del Prado', 'Diego Velázquez', '1619-1620', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_zurbaran.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Francisco de Zurbarán, from National Museum of Ancient Art', 'Francisco de Zurbarán', '1633', NULL, 'Attribution 3.0 Unported', NULL, 4, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_dyck.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Anthony van Dyck, from Landesmuseum Hannover', 'Anthony van Dyck', '1618-1620', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_caravaggio_conversion.jpg', 'The Conversion of Saint Paul Painting', 'The Conversion of Saint Paul, by Caravaggio, from Odescalchi Balbi Collection', 'Caravaggio', '1601', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_rembrandt_prison.jpg', 'The Apostle Paul in Prison Painting', 'The Apostle Paul in Prison, by Rembrandt, from Rijksmuseum', 'Rembrandt', '1627', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_rembrandt.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Rembrandt, from National Gallery of Art', 'Rembrandt', '1657', NULL, 'Public Domain', NULL, 8, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_la-tour.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Georges de La Tour (copy), from Musée Toulouse-Lautrec', 'Georges de La Tour', '1820', NULL, 'Public Domain', NULL, 9, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_guercino.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Il Guercino, from Royal Collection', 'Il Guercino', '1650', NULL, 'Public Domain', NULL, 10, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_guercino_2.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Il Guercino (or student), from Slovak National Gallery', 'Il Guercino', '17th Century', NULL, 'Public Domain', NULL, 11, FALSE),

-- Saint Timothy of Ephesus
('saint-timothy-of-ephesus', '/saints/saint-timothy-of-ephesus_icon.jpg', 'Saint Timothy of Ephesus Icon', 'Saint Timothy of Ephesus, by an unknown artist, from an orthodox parish (USA)', NULL, NULL, NULL, 'Attribution-ShareAlike 4.0 International', NULL, 1, TRUE),
('saint-timothy-of-ephesus', '/saints/saint-timothy-of-ephesus_drost_timothy-with-grandmother-lois.jpg', 'Saint Timothy of Ephesus with his Grandmother Lois Painting', 'Saint Timothy of Ephesus, by Willem Drost, from Hermitage Museum', 'Rembrandt', '1650', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-timothy-of-ephesus', '/saints/saint-timothy-of-ephesus.jpg', 'Saint Timothy of Ephesus Painting', 'Saint Timothy of Ephesus, by Bernardino Nocchi, from Basilica of Santa Pudentiana (Rome)', '1803', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Titus of Crete
('saint-titus-of-crete', '/saints/saint-titus-of-crete_icon.jpg', 'Saint Titus of Crete Icon', 'Saint Titus of Crete, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-titus-of-crete', '/saints/saint-titus-of-crete.jpg', 'Saint Titus of Crete Painting', 'Saint Titus of Crete', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Angela Merici
('saint-angela-merici', '/saints/saint-angela-merici.webp', 'Saint Angela Merici Painting', 'Saint Angela Merici, by an unknown artist', NULL, '17th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-angela-merici', '/saints/saint-angela-merici_crucifix.jpg', 'Saint Angela Merici Painting', 'Saint Angela Merici, by unknown artist', NULL, '17th Century', NULL, 'Creative Commons Attribution', NULL, 2, FALSE),

-- Saint Thomas Aquinas
('saint-thomas-aquinas', '/saints/saint-thomas-aquinas.jpg', 'Saint Thomas Aquinas Painting', 'Saint Thomas Aquinas, by Carlo Crivelli, from National Gallery', 'Carlo Crivelli', '1476', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-thomas-aquinas', '/saints/saint-thomas-aquinas_velasquez_temptation.jpg', 'The Temptation of Saint Thomas Aquinas Painting', 'The temptation of Saint Thomas Aquinas, by Diego Velázquez, from Orihuela Cathedral Museum', 'Diego Velázquez', '1632', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-thomas-aquinas', '/saints/saint-thomas-aquinas_tito.jpg', 'The Vision of Saint Thomas Aquinas Painting', 'The Vision of Saint Thomas Aquinas, by Santi di Tito, from Basilica of St. Mark (Florence)', 'Santi di Tito', '1593', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-thomas-aquinas', '/saints/saint-thomas-aquinas_zurbaran.jpg', 'The Apotheosis of Saint Thomas Aquinas Painting', 'The Apotheosis of Saint Thomas Aquinas, by Francisco de Zurbarán, from Museum of Fine Arts of Seville', 'Francisco de Zurbarán', '1631', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint John Bosco
('saint-john-bosco', '/saints/saint-john-bosco_painting-from-picture.png', 'Saint John Bosco Painting', 'Saint John Bosco, by an unknown artist, from a picture', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-bosco', '/saints/saint-john-bosco_picture.jpg', 'Saint John Bosco Picture', 'Saint John Bosco, Photographed by Carlo Felice in 1880', 'Carlo Felice', '1880', NULL, 'Public Domain', NULL, 2, FALSE),

-- =========================
-- February saints
-- =========================

-- Saint Blaise
('saint-blaise', '/saints/saint-blaise_trotti.jpg', 'Saint Blaise Painting', 'Saint Blaise, by Giovanni Battista Trotti, from Museum of Fine Arts (Budapest)', 'Giovanni Battista Trotti', '1590', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-blaise', '/saints/saint-blaise_tiepolo.jpg', 'Saint Blaise Painting', 'Saint Blaise, by Giambattista Tiepolo, from Ca'' Rezzonico', 'Giambattista Tiepolo', '1734', NULL, 'Public Domain', NULL, 2, FALSE),

--Saint Ansgar
('saint-ansgar', '/saints/saint-ansgar.jpg', 'Saint Ansgar Painting', 'Saint Ansgar, by Hans Bornemann, from Church Trinitatis (Hamburg)', NULL, '1457', NULL, 'Public Domain', NULL, 1, TRUE),

-- Saint Agatha
('saint-agatha', '/saints/saint-agatha.jpg', 'The Martyrdom of Saint Agatha Painting', 'The Martyrdom of Saint Agatha, by Massimo Stanzione, from Museo nazionale di Capodimonte', NULL, '1619', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-agatha', '/saints/saint-agatha_tiepolo.jpg', 'The Martyrdom of Saint Agatha Painting', 'The Martyrdom of Saint Agatha, by Giambattista Tiepolo, from Gemäldegalerie', 'Giambattista Tiepolo', '1756', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Paul Miki
('saint-paul-miki', '/saints/saint-paul-miki_tanzio.png', 'The Martyrdom of Saint Paul Miki & Companions Painting', 'The Martyrdom of Saint Paul Miki & Companions, by Tanzio da Varallo, from Pinacoteca di Brera', 'Tanzio da Varallo', '1625-1632', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-paul-miki', '/saints/saint-paul-miki.jpg', 'Saint Paul Miki Painting', 'Saint Paul Miki, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Jerome Emiliani (need double checking)
('saint-jerome-emiliani', '/saints/saint-jerome-emiliani_traverso.jpg', 'Saint Jerome Emiliani presents the orphans to the Virgin Painting', 'Saint Jerome Emiliani, by Mattia Traverso, from Church of Santa Maria del Popolo (Cherasco)', 'Mattia Traverso', '1943', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-jerome-emiliani', '/saints/saint-jerome-emiliani_crespi.jpg', 'Saint Jerome Emiliani Painting', 'Saint Jerome Emiliani, by Daniele Crespi, from Vercurago', 'Daniele Crespi', '1620', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-jerome-emiliani', '/saints/saint-jerome-emiliani.jpg', 'Saint Jerome Emiliani Painting', 'Saint Jerome Emiliani, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-jerome-emiliani', '/saints/saint-jerome-emiliani_2.jpg', 'Saint Jerome Emiliani Painting', 'Saint Jerome Emiliani, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Josephine Bakhita (need small watermark correction)
('saint-josephine-bakhita', '/saints/saint-josephine-bakhita_warford.jpg', 'Saint Josephine Bakhita Painting', 'Saint Josephine Bakhita, by John Alan Warford', NULL, '21th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-josephine-bakhita', '/saints/saint-josephine-bakhita.jpg', 'Saint Josephine Bakhita Portrait', 'Saint Josephine Bakhita Portrait', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Scholastica
('saint-scholastica', '/saints/saint-scholastica_bergl.jpg', 'Saint Scholastica Painting', 'Saint Scholastica, by Johann Baptist Wenzel Bergl, from Basilica of Kleinmariazell', 'Johann Baptist Wenzel Bergl', '1765', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-scholastica', '/saints/saint-scholastica.jpg', 'Saint Scholastica Painting', 'Saint Scholastica, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-scholastica', '/saints/saint-scholastica_sassoferrato.jpg', 'Saint Scholastica Painting', 'Saint Scholastica, by Sassoferrato, from Museum of Fine Arts of Lyon', 'Sassoferrato', '17th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-scholastica', '/saints/saint-scholastica_briggs.jpg', 'Saint Scholastica Painting', 'Saint Scholastica, by Gwyneth Thompson Briggs', 'Gwyneth Thompson Briggs', '21th Century', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-scholastica', '/saints/saint-benedict-&-scholastica.jpg', 'Saint Benedict and Saint Scholastica Painting', 'Saint Benedict and Saint Scholastica, by Yan'' Dargent', 'Yan'' Dargent', '19th Century', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint Cyril (brother of Saint Methodius)
('saint-cyril', '/saints/saint-cyril.jpg', 'Saint Cyril Icon', 'Saint Cyril, by an unknown artist, from the Holy Mount of Grabarka (Poland)', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-cyril', '/saints/saint-cyril-&-methodius.jpg', 'Saint Cyril and Saint Methodius Painting', 'Saint Cyril and Saint Methodius, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-cyril', '/saints/saint-cyril-&-methodius_2.jpg', 'Saint Cyril and Saint Methodius Icon', 'Saint Cyril and Saint Methodius, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-cyril', '/saints/saint-cyril-&-methodius_3.jpg', 'Saint Cyril and Saint Methodius Icon', 'Saint Cyril and Saint Methodius, by an unknown artist, from the Holy Trinity Monastery (New York)', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Methodius (brother of Saint Cyril)
('saint-methodius', '/saints/saint-methodius.jpg', 'Saint Methodius Icon', 'Saint Methodius, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-methodius', '/saints/saint-cyril-&-methodius.jpg', 'Saint Cyril and Saint Methodius Painting', 'Saint Cyril and Saint Methodius, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-methodius', '/saints/saint-cyril-&-methodius_2.jpg', 'Saint Cyril and Saint Methodius Icon', 'Saint Cyril and Saint Methodius, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-methodius', '/saints/saint-cyril-&-methodius_3.jpg', 'Saint Cyril and Saint Methodius Icon', 'Saint Cyril and Saint Methodius, by an unknown artist, from the Holy Trinity Monastery (New York)', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Peter Damian
('saint-peter-damian', '/saints/saint-peter-damian.jpg', 'Saint Peter Damian Painting', 'Saint Peter Damian, by Andrea Barbiani, from Biblioteca Classense', 'Andrea Barbiani', '18th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-peter-damian', '/saints/saint-peter-damian_briggs.jpg', 'Saint Peter Damian Painting', 'Saint Peter Damian, by Gwyneth Thompson Briggs', 'Gwyneth Thompson Briggs', '21th Century', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Polycarp
('saint-polycarp', '/saints/saint-polycarp.jpg', 'Saint Polycarp Icon', 'Saint Polycarp, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-polycarp', '/saints/saint-polycarp_2.jpg', 'Saint Polycarp Icon', 'Saint Polycarp, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-polycarp', '/saints/saint-polycarp_3.png', 'Saint Polycarp Icon', 'Saint Polycarp, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Gregory of Narek
('saint-gregory-of-narek', '/saints/saint-gregory-of-narek_minin.jpg', 'Saint Gregory of Narek Painting', 'Saint Gregory of Narek, by Sergei Minin', 'Sergei Minin', '2004', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-gregory-of-narek', '/saints/saint-gregory-of-narek.jpg', 'Saint Gregory of Narek Painting', 'Saint Gregory of Narek, by Arshak Fetvadjian', 'Arshak Fetvadjian', '20th Century', NULL, 'Public Domain', NULL, 2, FALSE),

-- =========================
-- March saints
-- =========================

-- Saint Casimir
('saint-casimir', '/saints/saint-casimir_masucci.jpg', 'Saint Casimir Painting', 'Saint Casimir, by Agostino Masucci, from the Royal Castle in Warsaw', 'Agostino Masucci', '18th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-casimir', '/saints/saint-casimir_collenius.jpg', 'Saint Casimir Painting', 'Saint Casimir, by Hermannus Collenius', 'Hermannus Collenius', '18th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-casimir', '/saints/saint-casimir.jpg', 'Saint Casimir Painting', 'Saint Casimir, by an unknown artist, from Vilnius Cathedral', NULL, '1594', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Perpetua
('saint-perpetua', '/saints/saint-perpetua_ridolfi.jpg', 'Saint Perpetua Painting', 'Saint Perpetua, by Antonio Ridolfi, from Istituto d’Arte de Sienne', 'Antonio Ridolfi', '1857', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-perpetua', '/saint-perpetua_bouguereau.jpg', 'Saint Perpetua Painting', 'Saint Perpetua, by William-Adolphe Bouguereau, from Private Collection', 'William-Adolphe Bouguereau', '1877', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-perpetua', '/saints/saint-perpetua_mosaic.jpg', 'Saint Perpetua Mosaic', 'Saint Perpetua, by an unknown artist, from Euphrasian Basilica (Croatia)', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-perpetua', '/saints/saint-perpetua-&-felicity.jpg', 'Saint Perpetua and Saint Felicity Painting', 'Saint Perpetua and Saint Felicity, by an unknown artist, from National Museum in Warsaw', NULL, '1520', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-perpetua', '/saints/saint-perpetua_martyr.webp', 'The Martyrdom of Saint Perpetua Painting', 'The Martyrdom of Saint Perpetua, by an unknown artist', NULL, '21th Century', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-perpetua', '/saints/saint-perpetua-&-felicity_2.jpg', 'Saint Perpetua and Saint Felicity Mosaic', 'Saint Perpetua and Saint Felicity, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 6, FALSE),
('saint-perpetua', '/saints/saint-perpetua-&-felicity_3.jpg', 'Saint Perpetua and Saint Felicity Mosaic', 'Saint Perpetua and Saint Felicity, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 7, FALSE),

-- Saint Felicity (maybe should find solo felicty painting -- CARE felicity of rome)
('saint-felicity', '/saints/saint-perpetua-&-felicity.jpg', 'Saint Perpetua and Saint Felicity Painting', 'Saint Perpetua and Saint Felicity, by an unknown artist, from National Museum in Warsaw', NULL, '1520', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-felicity', '/saints/saint-perpetua-&-felicity_2.jpg', 'Saint Perpetua and Saint Felicity Mosaic', 'Saint Perpetua and Saint Felicity, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-felicity', '/saints/saint-perpetua-&-felicity_3.jpg', 'Saint Perpetua and Saint Felicity Mosaic', 'Saint Perpetua and Saint Felicity, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint John of God
('saint-john-of-god', '/saints/saint-john-of-god_murillo.jpg', 'Saint John of God Painting', 'Saint John of God, by Bartolomé Esteban Murillo, from Hospital de la Caridad', 'Bartolomé Esteban Murillo', '1672', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-of-god', '/saints/saint-john-of-god_coello.jpg', 'Saint John of God Painting', 'Saint John of God with an Angel, by Claudio Coello', 'Claudio Coello', '17th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-of-god', '/saints/saint-john-of-god_gonzalez.jpg', 'Saint John of God Painting', 'Saint John of God, by Manuel Gómez-Moreno González, from Museo de Bellas Artes de Granada', 'Manuel Gómez-Moreno González', '1880', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Frances of Rome
('saint-frances-of-rome', '/saints/saint-frances-of-rome_sparadino.jpg', 'Saint Frances of Rome with the Angel Painting', 'Saint Frances of Rome with the Angel, by lo Sparadino, from Private Collection', 'lo Sparadino', '17th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-frances-of-rome', '/saints/saint-frances-of-rome_gentileschi.jpg', 'Saint Frances of Rome Painting', 'Saint Frances of Rome, by Orazio Gentileschi, from Galleria Nazionale delle Marche', 'Orazio Gentileschi', '1620', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-frances-of-rome', '/saints/saint-frances-of-rome_poussin.jpg', 'Saint Frances Announcing the End of the Plague in Rome Painting', 'Saint Frances Announcing the End of the Plague in Rome, by Nicolas Poussin, from Musée du Louvre', 'Nicolas Poussin', '1657', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-frances-of-rome', '/saints/saint-frances-of-rome.jpg', 'Saint Frances of Rome Painting', 'Saint Frances of Rome, by an unknown artist', NULL, '1650', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Patrick
('saint-patrick', '/saints/saint-patrick.jpg', 'Saint Patrick and the Snakes Painting', 'Saint Patrick and the Snakes, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-patrick', '/saints/saint-patrick_tiepolo.jpg', 'Saint Patrick Painting', 'Saint Patrick, by Giambattista Tiepolo, from Musei Civici di Padova', 'Giambattista Tiepolo', '1746', NULL, 'Public Domain', NULL, 2, TRUE),
('saint-patrick', '/saints/saint-patrick_collaert.jpg', 'Saint Patrick Painting', 'Saint Patrick, by Adriaen Collaert, from National Gallery of Ireland', 'Adriaen Collaert', '1603', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-patrick', '/saints/saint-patrick_stained-glass.jpg', 'Saint Patrick Stained Glass', 'Saint Patrick, by an unknown artist, from Saint Patrick Catholic Church (Ohio)', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Cyril of Jerusalem
('saint-cyril-of-jerusalem', '/saints/saint-cyril-of-jerusalem_bartolozzi.jpg', 'Saint Cyril of Jerusalem Painting', 'Saint Cyril of Jerusalem, by Francesco Bartolozzi', 'Francesco Bartolozzi', '18th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-cyril-of-jerusalem', '/saints/saint-cyril-of-jerusalem.jpg', 'Saint Cyril of Jerusalem Fresco', 'Saint Cyril of Jerusalem, by an unknown artist, from an Orthodox Church', NULL, '14th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-cyril-of-jerusalem', '/saints/saint-cyril-of-jerusalem_2.png', 'Saint Cyril of Jerusalem Icon', 'Saint Cyril of Jerusalem, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Turibius of Mogrovejo
('saint-turibius-of-mogrovejo', '/saints/saint-turibius-of-mogrovejo.jpg', 'Saint Turibius of Mogrovejo Painting', 'Saint Turibius of Mogrovejo, by an unknown artist, from Museo Nacional de Bellas Artes (Buenos Aires)', NULL, '17th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-turibius-of-mogrovejo', '/saints/saint-turibius-of-mogrovejo_conca.jpg', 'The Miracle of Saint Turibius of Mogrovejo Painting', 'The Miracle of Saint Turibius of Mogrovejo, by Sebastiano Conca, from Musei Vaticani', 'Giovanni Conca', '1723', NULL, 'Public Domain', NULL, 2, FALSE),

-- =========================
-- April saints
-- =========================

-- Saint Francis of Paola
('saint-francis-of-paola', '/saints/saint-francis-of-paola_ribera.jpg', 'Saint Francis of Paola Painting', 'Saint Francis of Paola, by Jusepe de Ribera, from Private Collection, ', 'Jusepe de Ribera', '1652', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-francis-of-paola', '/saints/saint-francis-of-paola_bianchi.jpg', 'Saint Francis of Paola in Ecstasy Painting', 'Saint Francis of Paola in Ecstasy, by Pietro Bianchi, from Musée du Louvre', 'Pietro Bianchi', '1728', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-francis-of-paola', '/saints/saint-francis-of-paola_gandolfi.jpg', 'The Vision of Saint Francis of Paola Painting', 'The Vision of Saint Francis of Paola, by Ubaldo Gandolfi, from Pinacoteca Nazionale di Bologna', 'Ubaldo Gandolfi', '1778', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-francis-of-paola', '/saints/saint-francis-of-paola_giordano.jpg', 'Saint Francis of Paola crosses the straits of Messina Painting', 'Saint Francis of Paola crosses the straits of Messina, by Luca Giordano, from Private collection', NULL, '1692', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Isidore
('saint-isidore', '/saints/saint-isidore_murillo.jpg', 'Saint Isidore Painting', 'Saint Isidore, by Bartolomé Esteban Murillo, from Seville Cathedral', 'Bartolomé Esteban Murillo', '1655', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-isidore', '/saints/saint-isidore_pacully.jpg', 'Saint Isidore Painting', 'Saint Isidore, by the Master of the Pacully collection, from National Museum of Sculpture (Valladolid)', 'Master of the Pacully collection', '1480-1490', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Vincent Ferrer
('saint-vincent-ferrer', '/saints/saint-vincent-ferrer_miranda.jpg', 'Saint Vincent Ferrer Painting', 'Saint Vincent Ferrer, by Juan Carreño de Miranda, from Museum of Fine Arts (Budapest)', 'Francisco de Miranda', '1661', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-vincent-ferrer', '/saints/saint-vincent-ferrer_pace.jpg', 'Saint Vincent Ferrer Painting', 'Saint Vincent Ferrer, by Ranieri Del Pace, from Private Collection', 'Ranieri Del Pace', '1709', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-vincent-ferrer', '/saints/saint-vincent-ferrer_cano.jpg', 'Saint Vincent Ferrer Preaching Painting', 'Saint Vincent Ferrer Preaching, by Alonso Cano, from Fundación Banco Santander', 'Alonso Cano', '1644-1645', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-vincent-ferrer', '/saints/saint-vincent-ferrer_juanes.jpg', 'Saint Vincent Ferrer Painting', 'Saint Vincent Ferrer, by Juan de Juanes, from Private Collection', 'Juan de Juanes', '1445-1450', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint John Baptist de La Salle
('saint-john-baptist-de-la-salle', '/saints/saint-john-baptist-de-la-salle.jpg', 'Saint John Baptist de la Salle Painting', 'Saint John Baptist de la Salle, by an unknown artist, from Private collection', NULL, '19th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-baptist-de-la-salle', '/saints/saint-john-baptist-de-la-salle_muller.jpg', 'Saint John Baptist de la Salle Engraving', 'Saint John Baptist de la Salle, engraving by Chapon, from a Painting by Charles Muller', 'Chapon', '1887', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-jonh-baptist-de-la-salle', '/saints/saint-john-baptist-de-la-salle_2.jpg', 'Saint John Baptist de la Salle Painting', 'Saint John Baptist de la Salle, by Gagliardi Giovanni', 'Gagliardi Giovanni', '20th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Stanislaus
('saint-stanislaus', '/saints/saint-stanislaus_samostrzelnik.jpg', 'Saint Stanislaus Painting', 'Saint Stanislaus, by Stanisław Samostrzelnik, from National Library of Poland', 'Stanisław Samostrzelnik', '1530-1535', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-stanislaus', '/saints/saint-stanislaus.jpg', 'Saint Stanislaus Painting', 'Saint Stanislaus, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Martin I
('saint-martin-i', '/saints/saint-martin-i_montor.jpg', 'Saint Martin I Illustration', 'Saint Martin I, by Alexis-François Artaud de Montor, from The Lives and Times of the Popes', 'Alexis-François Artaud de Montor', '1842', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-martin-i', '/saints/saint-martin-i_stained-glass.jpg', 'Saint Martin I Stained Glass', 'Saint Martin I, by an unknown artist, from Saint Martin Church (Arc-en-Barrois)', NULL, '1888', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-martin-i', '/saints/saint-martin-i.png', 'Saint Martin I Mosaic', 'Saint Martin I, by an unknown artist, from Papal Basilica of Saint Paul Outside the Walls', NULL, '19th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Anselm
('saint-anselm', '/saints/saint-anselm_glover.jpg', 'Saint Anselm Engraving', 'Saint Anselm, engraving by George Glover, from National Portrait Gallery', 'George Glover', '17th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-anselm', '/saints/saint-anselm.jpg', 'Saint Anselm Painting', 'Saint Anselm, by an unknown artist, from Chiesa di S. Anselmo (Bomarzo)', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint George
('saint-george', '/saints/saint-george_raphael.jpg', 'Saint George and the Dragon Painting', 'Saint George and the Dragon, by Raphael, from National Gallery of Art', 'Raphael', '1505-1506', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-george', '/saints/saint-george_martorell.jpg', 'Saint George and the Dragon Painting', 'Saint George and the Dragon, by Bernat Martorell, from Art Institute of Chicago', 'Bernat Martorell', '1434-1435', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-george', '/saints/saint-george_rubens.jpg', 'Saint George Battles the Dragon Painting', 'Saint George Battles the Dragon, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1606-1608', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-george', '/saints/saint-george_moreau.jpg', 'Saint George Slaying the Dragon Painting', 'Saint George and the Dragon, by Gustave Moreau, from National Gallery', 'Gustave Moreau', '1889-1890', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-george', '/saints/saint-george_schut.jpg', 'The Beheading of Saint George Painting', 'The Beheading of Saint George, by Cornelis Schut, from Royal Museum of Fine Arts Antwerp', 'Cornelis Schut', '1643', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-george', '/saints/saint-george_domenichino.jpg', 'Saint George Painting', 'Saint George, by Domenichino', 'Domenichino', '17th Century', NULL, 'Public Domain', NULL, 6, FALSE),
-- Not really catholic
-- ('saint-george', '/saints/saint-george_rossetti.jpg', 'The Wedding of Saint George and Princess Sabra Painting', 'The Wedding of Saint George and Princess Sabra, by Dante Gabriel Rossetti, from Tate Britain', 'Dante Gabriel Rossetti', '1857', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-george', '/saints/saint-george_icon.jpg', 'Saint George Byzantine Icon', 'Saint George, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 8, FALSE),

-- Saint Adalbert
('saint-adalbert', '/saints/saint-adalbert_kovacz.jpg', 'Saint Adalbert Painting', 'Saint Adalbert, by Mihály Kovács, from Dobó István Castle Museum', 'Mihály Kovács', '1855', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-adalbert', '/saints/saint-adalbert-&-procopius.jpg', 'Saint Adalbert and Saint Procopius Painting', 'Saint Adalbert and Saint Procopius, by the Master of Eggenburg, from Metropolitan Museum of Art', 'Master of Eggenburg', '1490-1500', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Fidelis of Sigmaringen
('saint-fidelis-of-sigmaringen', '/saints/saint-fidelis-of-sigmaringen.jpg', 'The Martyrdom of Saint Fidelis of Sigmaringen Painting', 'The Martyrdom of Saint Fidelis of Sigmaringen, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-fidelis-of-sigmaringen', '/saints/saint-fidelis-of-sigmaringen.webp', 'The Martyrdom of Saint Fidelis of Sigmaringen Painting', 'The Martyrdom of Saint Fidelis of Sigmaringen, by an unknown artist, from Private collection', NULL, '18th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-fidelis-of-sigmaringen', '/saints/saint-fidelis-of-sigmaringen-&-joseph-of-leonessa_tiepolo.jpg', 'Saint Fidelis of Sigmaringen and Saint Joseph of Leonessa Painting', 'Saint Fidelis of Sigmaringen and Saint Joseph of Leonessa, by Giambattista Tiepolo, from Galleria nazionale di Parma', 'Giambattista Tiepolo', '1752-1758', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Mark the Evangelist
('saint-mark-evangelist', '/saints/saint-mark-evangelist_hals.jpg', 'Saint Mark the Evangelist Painting', 'Saint Mark the Evangelist, by Frans Hals, from Pushkin Museum', 'Frans Hals', '1625-1630', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-mark-evangelist', '/saints/saint-mark-evangelist_borovikovsky.jpg', 'Saint Mark the Evangelist Painting', 'Saint Mark the Evangelist, by Vladimir Borovikovsky, from State Russian Museum', 'Vladimir Borovikovsky', '1804-1809', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-mark-evangelist', '/saints/saint-mark-evangelist_tintoretto_finding.jpg', 'Finding of the Body of Saint Mark Painting', 'Finding of the Body of Saint Mark, by Jacopo Tintoretto, from Pinacoteca di Brera', 'Jacopo Tintoretto', '1562', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-mark-evangelist', '/saints/saint-mark-evangelist_tintoretto_translation.jpg', 'The Translation of the Body of Saint Mark Painting', 'The Translation of the Body of Saint Mark, by Jacopo Tintoretto, from Gallerie dell''Accademia', 'Jacopo Tintoretto', '1562-1566', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Peter Chanel
('saint-peter-chanel', '/saints/saint-peter-chanel.jpg', 'Saint Peter Chanel Painting', 'Saint Peter Chanel, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-peter-chanel', '/saints/saint-peter-chanel_nicolet.jpg', 'Saint Peter Chanel Illustration', 'Saint Peter Chanel, by Claude Nicolet, from Book : "Vie du bienheureux Pierre-Louis-Marie Chanel : prêtre mariste et premier martyr de l''Océanie"', 'Claude Nicolet', '1923', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Louis Grignion de Montfort
('saint-louis-grignion-de-montfort', '/saints/saint-louis-grignion-de-montfort.jpg', 'Saint Louis Grignion de Montfort Painting', 'Saint Louis Grignion de Montfort, by an unknown artist', NULL, '19th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-louis-grignion-de-montfort', '/saints/saint-louis-grignion-de-montfort_2.jpg', 'Saint Louis Grignion de Montfort and Blessed Marie-Louise Trichet Illustration', 'Saint Louis Grignion de Montfort and Blessed Marie-Louise Trichet, by an unknown artist', NULL, '19th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-louis-grignion-de-montfort', '/saints/saint-louis-grignion-de-montfort_3.jpg', 'Saint Louis Grignion de Montfort Illustration', 'Saint Louis Grignion de Montfort, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Catherine of Siena
('saint-catherine-of-siena_dolci.jpg', '/saints/saint-catherine-of-siena_dolci.jpg', 'Saint Catherine of Siena Painting', 'Saint Catherine of Siena, by Carlo Dolci, from Dulwich Picture Gallery', 'Carlo Dolci', '1665', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-catherine-of-siena_tiepolo.jpg', '/saints/saint-catherine-of-siena_tiepolo.jpg', 'Saint Catherine of Siena Painting', 'Saint Catherine of Siena, by Giambattista Tiepolo, from Gemäldegalerie (Berlin)', 'Giambattista Tiepolo', '1746', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-catherine-of-siena.jpg', '/saints/saint-catherine-of-siena.jpg', 'Saint Catherine of Siena Painting', 'Saint Catherine of Siena, by an unknown artist, from Santa Maria del Rosario in Prati', NULL, '19th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-catherine-of-siena', '/saints/saint-catherine-of-siena-&-rose-of-lima-&-agnes-of-montepulciano_tiepolo.jpg', 'The Virgin Appearing to Saint Catherine of Siena, Saint Rose of Lima and Saint Agnes of Montepulciano Painting', 'The Virgin Appearing to Saint Catherine of Siena and Saint Rose of Lima and Saint Agnes of Montepulciano, by Giambattista Tiepolo, from Gesuati', 'Giambattista Tiepolo', '1747-1748', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-catherine-of-siena', '/saints/saint-catherine-of-siena_sassoferrato.jpg', 'Saint Catherine of Siena Painting', 'Saint Catherine of Siena, by Sassoferrato, from Museo del Settecento Veneziano', 'Sassoferrato', '17th Century', NULL, 'Attribution 3.0 Unported', NULL, 5, FALSE),

-- Saint Pius V
('saint-pius-v', '/saints/saint-pius-v_passarotti.jpg', 'Saint Pius V Painting', 'Saint Pius V, by Bartolomeo Passarotti, from Walters Art Museum', 'Bartolomeo Passarotti', '1566', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-pius-v', '/saints/saint-pius-v_giovane.jpg', 'Saint Pius V Painting', 'Saint Pius V, by Palma il Giovane, from Museo d''Arte di Chianciano Terme', 'Palma il Giovane', '1600', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-pius-v', '/saints/saint-pius-v.jpg', 'Saint Pius V Painting', 'Saint Pius V, by an unknown artist', NULL, '18th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- =========================
-- May saints
-- =========================

-- Saint Athanasius
('saint-athanasius', '/saints/saint-athanasius_domenichino_grottaferrata.jpg', 'Saint Athanasius Fresco', 'Saint Athanasius, by Domenichino, from Grottaferata Abbey', 'Domenichino', '1609-1612', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-athanasius', '/saints/saint-athanasius_solimena.jpg', 'Saint Athanasius Painting', 'Saint Athanasius, by Francesco Solimena, from Naples Cathedral', 'Francesco Solimena', '18th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-athanasius', '/saints/saint-athanasius_icon.jpg', 'Saint Athanasius Icon', 'Saint Athanasius, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),


-- Saint Philip, Apostle
('saint-phillip-apostle', '/saints/saint-phillip-apostle_rubens.jpg', 'Saint Philip Apostle Painting', 'Saint Philip the Apostle, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1611', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-phillip-apostle', '/saints/saint-phillip-apostle_la-tour.jpg', 'Saint Philip Apostle Painting', 'Saint Philip the Apostle, by Georges de La Tour, from Chrysler Museum of Art', 'Georges de La Tour', '1625', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-phillip-apostle', '/saints/saint-phillip-apostle_ribera.jpg', 'Saint Philip Apostle Painting', 'Saint Philip the Apostle, by Jusepe de Ribera, from Fondazione Roberto Longhi', 'Jusepe de Ribera', '1610', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-phillip-apostle', '/saints/saint-phillip-apostle_dyck.jpg', 'Saint Philip Apostle Painting', 'Saint Philip the Apostle, by Anthony van Dyck, from Kunsthistorisches Museum', 'Anthony van Dyck', '1619-1621', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint James the Less, Apostle
('saint-james-the-less-apostle', '/saints/saint-james-the-less-apostle_rubens.jpg', 'Saint James the Less Apostle Painting', 'Saint James the Less the Apostle, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1610-1611', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-james-the-less-apostle', '/saints/saint-james-the-less-apostle_la-tour.jpg', 'Saint James the Less Apostle Painting', 'Saint James the Less the Apostle, by Georges de La Tour, from Chrysler Museum of Art', 'Georges de La Tour', '1625', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-james-the-less-apostle', '/saints/saint-james-the-less-apostle_ribera.jpg', 'Saint James the Less Apostle Painting', 'Saint James the Less the Apostle, by Jusepe de Ribera, from Museo del Prado', 'Jusepe de Ribera', '1652', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-james-the-less-apostle', '/saints/saint-james-the-less-apostle_batoni.jpg', 'Saint James the Less Apostle Painting', 'Saint James the Less the Apostle, by Pompeo Batoni, from National Trust', 'Pompeo Batoni', '1740-1743', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint John of Ávila
('saint-john-of-avila', '/saints/saint-john-of-avila_greco.jpg', 'Saint John of Ávila Painting', 'Saint John of Ávila, by El Greco, from El Greco Museum', 'El Greco', '1580', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-of-avila', '/saints/saint-john-of-avila_subleyras.jpg', 'Saint John of Ávila Painting', 'Saint John of Ávila, by Pierre Subleyras, from Birmingham Museums Trust', 'Pierre Subleyras', '1745-1746', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Nereus
('saint-nereus', '/saints/saint-domitilla-&-nereus-&-achilleus_rubens.jpg', 'Saint Domitilla with Saint Nereus and Saint Achilleus Painting', 'Saint Domitilla with Saint Nereus and Saint Achilleus, by Peter Paul Rubens, from Santa Maria in Vallicella', 'Peter Paul Rubens', '1608', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-nereus', '/saints/saint-domitilla-&-nereus-&-achilleus_pomarancio.jpg', 'Saint Domitilla with Saint Nereus and Saint Achilleus Painting', 'Saint Domitilla with Saint Nereus and Saint Achilleus, by Cristoforo Roncalli (Il Pomarancio), from Santi Nereo e Achilleo', 'Cristoforo Roncalli (Il Pomarancio)', '1598', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Achilleus
('saint-achilleus', '/saints/saint-domitilla-&-nereus-&-achilleus_rubens.jpg', 'Saint Domitilla with Saint Nereus and Saint Achilleus Painting', 'Saint Domitilla with Saint Nereus and Saint Achilleus, by Peter Paul Rubens, from Santa Maria in Vallicella', 'Peter Paul Rubens', '1608', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-achilleus', '/saints/saint-domitilla-&-nereus-&-achilleus_pomarancio.jpg', 'Saint Domitilla with Saint Nereus and Saint Achilleus Painting', 'Saint Domitilla with Saint Nereus and Saint Achilleus, by Cristoforo Roncalli (Il Pomarancio), from Santi Nereo e Achilleo', 'Cristoforo Roncalli (Il Pomarancio)', '1598', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Pancras
('saint-pancras', '/saints/saint-pancras_sachs.jpg', 'Saint Pancras Painting', 'Saint Pancras, by Lambert Sachs', 'Lambert Sachs', '19th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-pancras', '/saints/saint-pancras_guercino.jpg', 'Saint Pancras Painting', 'Saint Pancras, by Il Guercino, from Pinacoteca di Brera', 'Il Guercino', '1620-1625', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Matthias, Apostle
('saint-matthias-apostle', '/saints/saint-matthias-apostle_rubens.jpg', 'Saint Matthias Apostle Painting', 'Saint Matthias the Apostle, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1611', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-matthias-apostle', '/saints/saint-matthias-apostle_dyck.jpg', 'Saint Matthias Apostle Painting', 'Saint Matthias the Apostle, by Anthony van Dyck, from Yale University Art Gallery', 'Anthony van Dyck', '1619', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-matthias-apostle', '/saints/saint-matthias-apostle_tristan.jpg', 'Saint Matthias Apostle Painting', 'Saint Matthias the Apostle, by Luis Tristán, from El Greco Museum', 'Luis Tristán', '1620', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint John I
('saint-john-i', '/saints/saint-john-i_montor.jpg', 'Saint John I Illustration', 'Saint John I, by Alexis-François Artaud de Montor, from The Lives and Times of the Popes', 'Alexis-François Artaud de Montor', '1842', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-i', '/saints/saint-john-i.jpg', 'Saint John I Mosaic', 'Saint John I, by an unknown artist, from Papal Basilica of Saint Paul Outside the Walls', NULL, '19th Century', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Bernardine of Siena
('saint-bernardine-of-siena', '/saints/saint-bernardine-of-siena_bellini.png', 'Saint Bernardine of Siena Painting', 'Saint Bernardine of Siena, by Jacopo Bellini, from Metropolitan Museum of Art', 'Jacopo Bellini', '1450-1455', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-bernardine-of-siena', '/saints/saint-bernardine-of-siena.jpg', 'Saint Bernardine of Siena Painting', 'Saint Bernardine of Siena, by an unknown artist, from Langeais Castle (France)', NULL, '16th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-bernardine-of-siena', '/saints/saint-bernardine-of-siena_greco.jpg', 'Saint Bernardine of Siena Painting', 'Saint Bernardine of Siena, by El Greco, from El Greco Museum', 'El Greco', '1603', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-bernardine-of-siena', '/saints/saint-bernardine-of-siena_brescia.jpg', 'The Virgin and Child with Saint Bernardino and Other Saints', 'The Virgin and Child with Saint Bernardino and Other Saints, by Moretto da Brescia, from National Gallery', 'Moretto da Brescia', '1540', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Christopher Magallanes
('saint-christopher-magallanes', '/saints/saint-christopher-magallanes.jpg', 'Saint Christopher Magallanes Painting', 'Saint Christopher Magallanes, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-christopher-magallanes', '/saints/saint-christopher-magallanes_2.jpg', 'Saint Christopher Magallanes Painting', 'Saint Christopher Magallanes, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-christopher-magallanes', '/saints/saint-christopher-magallanes_picture.jpg', 'Saint Christopher Magallanes Picture', 'Saint Christopher Magallanes', NULL, '20th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Rita of Cascia
('saint-rita-of-cascia', '/saints/saint-rita-of-cascia.png', 'Saint Rita of Cascia Painting', 'Saint Rita of Cascia, by an unknown artist', NULL, '17th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-rita-of-cascia', '/saints/saint-rita-of-cascia_2.jpg', 'Saint Rita of Cascia Painting', 'Saint Rita of Cascia, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-rita-of-cascia', '/saints/saint-rita-of-cascia_brandi.jpg', 'Saint Rita of Cascia in Ecstasy Painting', 'Saint Rita of Cascia in Ecstasy, by Giacinto Brandi, from Sant''Agostino (Rome)', 'Giacinto Brandi', '17th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-rita-of-cascia', '/saints/saint-rita-of-cascia_poussin.jpg', 'The Translation of Saint Rita of Cascia Painting', 'The Translation of Saint Rita of Cascia, by Nicolas Poussin, from Dulwich Picture Gallery', 'Nicolas Poussin', '1635', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-rita-of-cascia', '/saints/saint-rita-of-cascia_torres.jpg', 'Saint Rita of Cascia Painting', 'Saint Rita of Cascia, by Antonio de Torres, from El Paso Museum of Art', 'Antonio de Torres', '1720', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint Bede the Venerable
('saint-bede-the-venerable', '/saints/saint-bede-the-venerable.webp', 'Saint Bede the Venerable Engraving', 'Saint Bede the Venerable, engraving by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-bede-the-venerable', '/saints/saint-bede-the-venerable_penrose.jpg', 'Saint Bede the Venerable translating the Last Chapter of the Gospel of John on his Deathbed Painting', 'Saint Bede the Venerable translating the Last Chapter of the Gospel of John on his Deathbed, by James Doyle Penrose, from the Royal Academy (London)', 'James Doyle Penrose', '1902', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-bede-the-venerable', '/saints/saint-bede-the-venerable_icon.webp', 'Saint Bede the Venerable Icon', 'Saint Bede the Venerable, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Gregory VII
('saint-gregory-vii', '/saints/saint-gregory-vii_knille.webp', 'Saint Gregory VII Engraving', 'Saint Gregory VII, engraving from a Drawing by Otto Knille', 'Otto Knille', '19th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-gregory-vii', '/saints/saint-gregory-vii.png', 'Saint Gregory VII Painting', 'Saint Gregory VII, by an unknown artist, from', NULL, '17th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-gregory-vii', '/saints/saint-gregory-vii_scarpelli.jpg', 'The Holy Roman Emperor Henry IV begging for the forgiveness of Pope Gregory VII Illustration', 'The Holy Roman Emperor Henry IV begging for the forgiveness of Pope Gregory VII, by Tancredi Scarpelli, from Book : "Storia d''Italia by Paolo Giudici"', 'Tancredi Scarpelli', '1930', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-gregory-vii', '/saints/saint-gregory-vii_2.webp', 'Saint Gregory VII Illustration', 'Saint Gregory VII forgives Quintius, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),
('saint-gregory-vii', '/saints/saint-gregory-vii_3.png', 'Saint Gregory VII Mosaic', 'Saint Gregory VII, by an unknown artist, from Papal Basilica of Saint Paul Outside the Walls', NULL, '19th Century', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-gregory-vii', '/saints/saint-gregory-vii_4.jpg', 'Saint Gregory VII Illustration', 'Saint Gregory VII, by Giovanni Battista de'' Cavalieri, from Book : "Pontificum Romanorum effigies"', 'Giovanni Battista de'' Cavalieri', '1580', NULL, 'Public Domain', NULL, 6, FALSE),

-- Saint Mary Magdalene de’ Pazzi
('saint-mary-magdalene-de-pazzi', '/saints/saint-mary-magdalene-de-pazzi_cano.jpg', 'Saint Mary Magdalene de’ Pazzi Painting', 'Saint Mary Magdalene de’ Pazzi, by Alonso Cano, from Museum of Fine Arts of Seville', 'Alonso Cano', '1628', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-mary-magdalene-de-pazzi', '/saints/saint-mary-magdalene-de-pazzi_rosi.jpg', 'Saint Mary Magdalene de’ Pazzi in Ecstasy Painting', 'Saint Mary Magdalene de’ Pazzi in Ecstasy, by Alessandro Rosi, from Private collection', 'Alessandro Rosi', '17th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-mary-magdalene-de-pazzi', '/saints/saint-mary-magdalene-de-pazzi_moya.jpg', 'Vision of Saint Mary Magdalene de’ Pazzi Painting', 'Vision of Saint Mary Magdalene de’ Pazzi, by Pedro de Moya, from Museo de Bellas Artes de Granada', 'Pedro de Moya', '17th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Philip Neri
('saint-philip-neri', '/saints/saint-philip-neri_reni.jpg', 'Saint Philip Neri in Ecstasy Painting', 'Saint Philip Neri in Ecstasy, by Guido Reni, from Santa Maria in Vallicella', 'Guido Reni', '1614', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-philip-neri', '/saints/saint-philip-neri_conca.gif', 'Saint Philip Neri Painting', 'Saint Philip Neri, by Sebastiano Conca', 'Sebastiano Conca', '18th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-philip-neri', '/saints/saint-philip-neri_dolci.jpg', 'Saint Philip Neri Painting', 'Saint Philip Neri, by Carlo Dolci, from Metropolitan Museum of Art', 'Carlo Dolci', '1645-1646', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-philip-neri', '/saints/saint-philip-neri_tiepolo.jpg', 'Saint Philip Neri Painting', 'Saint Philip Neri, by Giambattista Tiepolo, from Museo Diocesano Camerino', 'Giambattista Tiepolo', '1739-1740', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-philip-neri', '/saints/saint-philip-neri_nogari.jpg', 'Saint Philip Neri Painting', 'Saint Philip Neri, by Carlo Francesco Nogari, from Galleria nazionale di Parma', 'Carlo Francesco Nogari', '18th Century', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint Augustine of Canterbury
('saint-augustine-of-canterbury', '/saints/saint-augustine-of-canterbury_lommelin.jpg', 'Saint Augustine of Canterbury Engraving', 'Saint Augustine of Canterbury, by Adriaen Lommelin', 'Adriaen Lommelin', '17th Century', NULL, 'Attribution 4.0 International', NULL, 1, TRUE),
('saint-augustine-of-canterbury', '/saints/saint-augustine-of-canterbury.jpg', 'Saint Augustine of Canterbury and the Saxons Illustration', 'Saint Augustine of Canterbury and the Saxons, by Joseph Martin Kronheim, from Book: "Pictures of English history"', 'Joseph Martin Kronheim', '1868', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-augustine-of-canterbury', '/saints/saint-augustine-of-canterbury_icon.jpg', 'Saint Augustine of Canterbury Icon', 'Saint Augustine of Canterbury, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Paul VI
('saint-paul-vi', '/saints/saint-paul-vi.jpg', 'Saint Paul VI Painting', 'Saint Paul VI, by an unknown artist', NULL, '20th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-paul-vi', '/saints/saint-paul-vi_picture.jpg', 'Saint Paul VI Picture', 'Saint Paul VI, Photographed by Fotografia Felici', 'Fotografia Felici', '1969', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-paul-vi', '/saints/saint-paul-vi_picture_2.webp', 'Saint Paul VI Picture', 'Saint Paul VI', NULL, '20th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- =========================
-- June saints
-- =========================

-- Saint Justin Martyr
('saint-justin-martyr', '/saints/saint-justin-martyr_thevet.jpg', 'Saint Justin Martyr Illustration', 'Saint Justin Martyr, by André Thevet, from Book: "Les Vrais Pourtraits et Vies des Hommes Illustres"', 'André Thévet', '1584', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-justin-martyr', '/saints/saint-justin-martyr_icon.jpg', 'Saint Justin Martyr Icon', 'Saint Justin Martyr, by Theophanes the Cretan, from Stavronikita Monastery', 'Theophanes the Cretan', '1545-1546', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Marcellinus
('saint-marcellinus', '/saints/saint-marcellinus-&-peter.jpg', 'Saint Marcellinus and Saint Peter (exorcist) Painting', 'Saint Marcellinus and Saint Peter, by an unknown artist, from Santi Marcellino e Pietro al Laterano (Rome)', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-marcellinus', '/saints/saint-marcellinus-&-peter_martyr.jpg', 'The Martyrdom of Saint Marcellinus and Saint Peter (exorcist) Illustration', 'The Martyrdom of Saint Marcellinus and Saint Peter (exorcist), by an unknown artist, from Codex Bodmer', NULL, '1170-1200', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-marcellinus', '/saints/saint-marcellinus-&-peter_2.jpg', 'Saint Marcellinus and Saint Peter (exorcist) Illustration', 'Saint Marcellinus and Saint Peter (exorcist)', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Peter (Exorcist)
('saint-peter-exorcist', '/saints/saint-marcellinus-&-peter.jpg', 'Saint Marcellinus and Saint Peter (exorcist) Painting', 'Saint Marcellinus and Saint Peter, by an unknown artist, from Santi Marcellino e Pietro al Laterano (Rome)', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-peter-exorcist', '/saints/saint-marcellinus-&-peter_martyr.jpg', 'The Martyrdom of Saint Marcellinus and Saint Peter (exorcist) Illustration', 'The Martyrdom of Saint Marcellinus and Saint Peter (exorcist), by an unknown artist, from Codex Bodmer', NULL, '1170-1200', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-peter-exorcist', '/saints/saint-marcellinus-&-peter_2.jpg', 'Saint Marcellinus and Saint Peter (exorcist) Illustration', 'Saint Marcellinus and Saint Peter (exorcist)', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Charles Lwanga and Companions (maybe should optimize by creating a "saint-charles-lwanga" slug only)
('saint-charles-lwanga-and-companions', '/saints/saint-charles-lwanga-and-companions_icon.jpg', 'Saint Charles Lwanga and Companions Icon', 'Saint Charles Lwanga and Companions, by Teresa Satola', 'Teresa Satola', '2013', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-charles-lwanga-and-companions', '/saints/saint-charles-lwanga-and-companions.avif', 'Saint Charles Lwanga and Companions Painting', 'Saint Charles Lwanga and Companions', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-charles-lwanga-and-companions', '/saints/saint-charles-lwanga-and-companions_2.jpg', 'Saint Charles Lwanga and Companions Painting', 'Saint Charles Lwanga and Companions', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
-- WIP

-- Saint Boniface
('saint-boniface', '/saints/saint-boniface_bloemaert.jpg', 'Saint Boniface Painting', 'Saint Boniface, by Cornelis Bloemaert', 'Cornelis Bloemaert', '1630', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-boniface', '/saints/saint-boniface_rode.jpg', 'Saint Boniface chops down a cult tree in Hessen Engraving', 'Saint Boniface chops down a cult tree in Hessen, by Bernhard Rode', 'Bernhard Rode', '1781', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-boniface', '/saints/saint-boniface_rethel.jpg', 'Saint Boniface Painting', 'Saint Boniface, by Alfred Rethel, from Berggruen Museum', 'Alfred Rethel', '1832', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Norbert
('saint-norbert', '/saints/saint-norbert_vaszary.jpg', 'Saint Norbert Painting', 'Saint Norbert, by János Vaszary, from a Zsámbék Church', 'János Vaszary', '1897', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-norbert', '/saints/saint-norbert_rubens.jpg', 'Saint Norbert overcoming Tanchelm Painting', 'Saint Norbert overcoming Tanchelm, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1623', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-norbert', '/saints/saint-norbert_hoey.jpg', 'Saint Norbert Painting', 'Saint Norbert, by Jean de Hoey, from Xanten Chapter Museum', 'Jean de Hoey', '17th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-norbert', '/saints/saint-norbert_crayer.jpg', 'Saint Norbert Painting', 'Saint Norbert, by Gaspar de Crayer', NULL, '1664', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-norbert', '/saints/saint-norbert.jpg', 'Saint Norbert Painting', 'Saint Norbert, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint Ephrem
('saint-ephrem', '/saints/saint-ephrem_icon.jpg', 'Saint Ephrem Icon', 'Saint Ephrem', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-ephrem', '/saints/saint-ephrem_mosaic.jpg', 'Saint Ephrem Mosaic', 'Saint Ephrem, by an unknown artist, from Nea Moni of Chios', NULL, '11th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-ephrem', '/saints/saint-ephrem_illustration.jpg', 'Saint Ephrem Illustration', 'Saint Ephrem, by an unknown artist, from a Russian Missal', NULL, '16th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Barnabas, Apostle
('saint-barnabas-apostle', '/saints/saint-barnabas-apostle.jpg', 'Saint Barnabas Apostle Painting', 'Saint Barnabas the Apostle, by an unknown artist', NULL, '18th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-barnabas-apostle', '/saints/saint-barnabas-apostle_veronese.jpg', 'Saint Barnabas Apostle healing the Sick Painting', 'Saint Barnabas the Apostle healing the Sick, by Paolo Veronese, from San Giorgio in Braida (Verona)', 'Paolo Veronese', '1566', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-barnabas-apostle', '/saints/saint-paul-apostle-&-barnabas.jpg', 'Saint Paul and Saint Barnabas in Lystra Painting', 'Saint Paul and Saint Barnabas in Lystra, by Claude-Guy Hallé, from Musée Carnavalet', 'Claude-Guy Hallé', '1717', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Anthony of Padua
('saint-anthony-of-padua', '/saints/saint-anthony-of-padua_zurbaran.jpg', 'Saint Anthony of Padua Painting', 'Saint Anthony of Padua, by Francisco de Zurbarán, from São Paulo Museum of Art', 'Francisco de Zurbarán', '1627-1630', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-anthony-of-padua', '/saints/saint-anthony-of-padua_farelli.jpg', 'Saint Anthony of Padua with the Christ Child Painting', 'Saint Anthony of Padua with the Christ Child, by Giacomo Farelli', 'Giacomo Farelli', '17th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-anthony-of-padua', '/saints/saint-anthony-of-padua_sirani.jpg', 'Saint Anthony of Padua with the Christ Child Painting', 'Saint Anthony of Padua with the Christ Child, by Elisabetta Sirani, from Private Collection', 'Elisabetta Sirani', '17th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-anthony-of-padua', '/saints/saint-anthony-of-padua_strozzi.jpg', 'Saint Anthony of Padua holding the Infant Jesus Painting', 'Saint Anthony of Padua holding the Infant Jesus, by Bernardo Strozzi, from Musée des Beaux-Arts de Strasbourg', 'Bernardo Strozzi', '1625', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-anthony-of-padua', '/saints/saint-anthony-of-padua_murillo.jpg', 'Saint Anthony of Padua with the Child Painting', 'Saint Anthony of Padua with the Child, by Bartolomé Esteban Murillo, from Museum of Fine Arts of Seville', 'Bartolomé Esteban Murillo', '1668-1669', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint Romuald
('saint-romuald', '/saints/saint-romuald_guercino.jpg', 'Saint Romuald Painting', 'Saint Romuald, by Il Guercino, from Ravenna Art Museum', 'Il Guercino', '1640-1641', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-romuald', '/saints/saint-romuald_loth.jpg', 'Saint Romuald Painting', 'Saint Romuald, by Johann Carl Loth, from Gallerie dell''Accademia', 'Johann Carl Loth', '17th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-romuald', '/saints/saint-romuald_angelico.jpg', 'Saint Romuald Fresco', 'Saint Romuald, by Fra Angelico, from Museo Nazionale di San Marco', 'Fra Angelico', '1441', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-romuald', '/saints/saint-romuald_mussini.jpg', 'Saint Romuald Painting', 'Saint Romuald, by Augusto Mussini, from Monastery of Camaldoli', 'Bernardino Mussini', '1914-1915', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Aloysius Gonzaga
('saint-aloysius-gonzaga', '/saints/saint-aloysius-gonzaga_mazzanti.jpg', 'Saint Aloysius Gonzaga adoring the Crucifix Painting', 'Saint Aloysius Gonzaga adoring the Crucifix, by Ludovico Mazzanti, from Fondation Bemberg', 'Ludovico Mazzanti', '1740-1745', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-aloysius-gonzaga', '/saints/saint-aloysius-gonzaga_guercino.jpg', 'The Vocation of Saint Aloysius Gonzaga Painting', 'The Vocation of Saint Aloysius Gonzaga, by Il Guercino, from Metropolitan Museum of Art', 'Il Guercino', '1650', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-aloysius-gonzaga', '/saints/saint-aloysius-gonzaga_goya.jpg', 'Saint Aloysius Gonzaga Painting', 'Saint Aloysius Gonzaga, by Francisco Goya, from Zaragoza Museum', 'Francisco Goya', '1798', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-aloysius-gonzaga', '/saints/saint-aloysius-gonzaga_tiepolo.jpg', 'Saint Aloysius Gonzaga in Glory Painting', 'Saint Aloysius Gonzaga in Glory, by Giambattista Tiepolo, from Courtauld Institute of Art', 'Giambattista Tiepolo', '1726', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Paulinus of Nola
('saint-paulinus-of-nola', '/saints/saint-paulinus-of-nola.jpg', 'Saint Paulinus of Nola Line Engraving', 'Saint Paulinus of Nola, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-paulinus-of-nola', '/saints/saint-paulinus-of-nola_stained-glass.jpg', 'Saint Paulinus of Nola Stained Glass', 'Saint Paulinus of Nola, by an unknown artist, from Linz Cathedral (upper Austria)', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-paulinus-of-nola', '/saints/saint-paulinus-of-nola_azzolino.jpg', 'Saint Paulinus of Nola frees a Slave Painting', 'Saint Paulinus of Nola frees a Slave , by Giovanni Bernardino Azzolini, from Pio Monte della Misericordia', 'Giovanni Bernardino Azzolini', '1626', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint John Fischer
('saint-john-fischer', '/saints/saint-john-fischer_holbein-younger.jpg', 'Saint John Fischer Painting', 'Saint John Fischer, by Hans Holbein the Younger', 'Hans Holbein the Younger', '1497-1543', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-fischer', '/saints/saint-john-fischer_illustration.jpg', 'Saint John Fischer Line Engraving', 'Saint John Fischer, by Jacobus Houbraken', 'Jacobus Houbraken', '1743', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-fischer', '/saints/saint-john-fischer_briggs.jpg', 'Saint John Fischer Painting', 'Saint John Fischer, by Gwyneth Thompson Briggs', 'Gwyneth Thompson Briggs', '2019', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Thomas More
('saint-thomas-more', '/saints/saint-thomas-more_holbein-younger.jpg', 'Saint Thomas More Painting', 'Saint Thomas More, by Hans Holbein the Younger, from Frick Collection', 'Hans Holbein the Younger', '1527', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-thomas-more', '/saints/saint-thomas-more_ward.jpg', 'Saint Thomas More Farewell to his Daughter Painting', 'Saint Thomas More Farewell to his Daughter, by Edward Matthew Ward', 'Edward Matthew Ward', '19th Century', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Peter, Apostle
('saint-peter-apostle', '/saints/saint-peter-apostle_rubens.jpg', 'Saint Peter Apostle Painting', 'Saint Peter the Apostle, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1610-1612', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-peter-apostle', '/saints/saint-peter-apostle_rubens_charge.jpg', 'Christ''s Charge to Peter Painting', 'Christ''s Charge to Peter, by Peter Paul Rubens, from Wallace Collection', 'Peter Paul Rubens', '1616', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-peter-apostle', '/saints/saint-peter-apostle_dyck.jpg', 'Saint Peter Apostle Painting', 'Saint Peter the Apostle, by Anthony van Dyck, from Private Collection', 'Anthony van Dyck', '17th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-peter-apostle', '/saints/saint-peter-apostle_dyck_penitent.jpg', 'The Penitent Saint Peter Painting', 'The Penitent Saint Peter, by Anthony van Dyck, from Private Collection', 'Anthony van Dyck', '1618-1620', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-peter-apostle', '/saints/saint-peter-apostle_guercino.jpg', 'Saint Peter Apostle Painting', 'Saint Peter the Apostle, by Il Guercino, from Fondation Bemberg', 'Il Guercino', '17th Century', NULL, 'Attribution-ShareAlike 4.0 International', NULL, 5, FALSE),
('saint-peter-apostle', '/saints/saint-peter-apostle_guercino_weeping.jpg', 'Saint Peter Weeping before the Virgin Painting', 'Saint Peter Weeping before the Virgin, by Il Guercino, from Musée du Louvre', 'Il Guercino', '1647', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-peter-apostle', '/saints/saint-peter-apostle_murillo.jpg', 'Saint Peter Apostle in Tears Painting', 'Saint Peter the Apostle in Tears, by Bartolomé Esteban Murillo, from Museo de Bellas Artes de Bilbao', 'Bartolomé Esteban Murillo', '1650-1655', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-peter-apostle', '/saints/saint-peter-apostle_ribera.jpg', 'Saint Peter Apostle Painting', 'Saint Peter the Apostle, by Jusepe de Ribera, from Museo del Prado', 'Jusepe de Ribera', '1630', NULL, 'Public Domain', NULL, 8, FALSE),
('saint-peter-apostle', '/saints/saint-peter-apostle_ribera_penitent.jpg', 'The Penitent Saint Peter Painting', 'The Penitent Saint Peter, by Jusepe de Ribera, from Art Institute of Chicago', 'Jusepe de Ribera', '1628-1632', NULL, 'Public Domain', NULL, 9, FALSE),
('saint-peter-apostle', '/saints/saint-peter-apostle_caravaggio_crucifixion.jpg', 'The Crucifixion of Saint Peter Painting', 'The Crucifixion of Saint Peter, by Caravaggio, from Santa Maria del Popolo (Rome)', 'Caravaggio', '1600-1601', NULL, 'Public Domain', NULL, 10, FALSE),
('saint-peter-apostle', '/saints/saint-peter-apostle_rembrandt.jpg', 'Saint Peter Apostle Painting', 'Saint Peter the Apostle, by Rembrandt, from Nationalmuseum (Stockholm)', 'Rembrandt', '1632', NULL, 'Public Domain', NULL, 11, FALSE),
('saint-peter-apostle', '/saints/saint-peter-apostle_rembrandt_denial.jpg', 'The Denial of Saint Peter Painting', 'The Denial of Saint Peter, by Rembrandt, from Rijksmuseum', 'Rembrandt', '1660', NULL, 'Public Domain', NULL, 12, FALSE),
('saint-peter-apostle', '/saints/saint-peter-apostle_rembrandt_prison.jpg', 'Saint Peter in Prison Painting', 'Saint Peter in Prison, by Rembrandt, from Israel Museum', 'Rembrandt', '1631', NULL, 'Public Domain', NULL, 13, FALSE),
('saint-peter-apostle', '/saints/saint-peter-apostle_velazquez.jpg', 'The Tears of Saint Peter Apostle Painting', 'The Tears of Saint Peter the Apostle, by Diego Velázquez, from Private Collection', 'Diego Velázquez', '1617-1619', NULL, 'Public Domain', NULL, 14, FALSE),
('saint-peter-apostle', '/saints/saint-peter-apostle_zurbaran.jpg', 'Saint Peter Apostle Painting', 'Saint Peter the Apostle, by Francisco de Zurbarán, from National Museum of Ancient Art (Lisbon)', 'Francisco de Zurbarán', '1633', NULL, 'Public Domain', NULL, 15, FALSE),

-- Saint Cyril of Alexandria
('saint-cyril-of-alexandria', '/saints/saint-cyril-of-alexandria_fresco.jpg', 'Saint Cyril of Alexandria Fresco', 'Saint Cyril of Alexandria, by an unknown artist, from the Chora', NULL, '14th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-cyril-of-alexandria', '/saints/saint-cyril-of-alexandria_icon.jpg', 'Saint Cyril of Alexandria Icon', 'Saint Cyril of Alexandria, by Emmanuel Tzanes, from Byzantine Museum of Antivouniotissa', 'Emmanuel Tzanes', '1654', NULL, 'Attribution-ShareAlike 3.0 Unported', NULL, 2, FALSE),
('saint-cyril-of-alexandria', '/saints/saint-cyril-of-alexandria_stained-glass.jpg', 'Saint Cyril of Alexandria Stained Glass', 'Saint Cyril of Alexandria', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Irenaeus
('saint-irenaeus', '/saints/saint-irenaeus_icon.jpg', 'Saint Irenaeus Icon', 'Saint Irenaeus, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-irenaeus', '/saints/saint-irenaeus_stained-glass.jpg', 'Saint Irenaeus Stained Glass', 'Saint Irenaeus, by Lucien Bégule, from Saint Irenaeus Church (Lyon)', 'Lucien Bégule', '1901', NULL, 'Public Domain', NULL, 2, FALSE),

-- First Martyrs of the Holy Roman Church
-- (we don't do it as it is a group of martyrs, not a saint

-- =========================
-- July saints
-- =========================

-- Saint Thomas, Apostle
('saint-thomas-apostle', '/saints/saint-thomas-apostle_rubens.jpg', 'Saint Thomas Apostle Painting', 'Saint Thomas the Apostle, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1610-1612', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_dyck.jpg', 'Saint Thomas Apostle Painting', 'Saint Thomas the Apostle, by Anthony van Dyck, from Private Collection', 'Anthony van Dyck', '1620', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_velazquez.jpg', 'Saint Thomas Apostle Painting', 'Saint Thomas the Apostle, by Diego Velázquez, from Musée des Beaux-Arts d''Orléans', 'Diego Velázquez', '1618-1620', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_ribera.jpg', 'Saint Thomas Apostle Painting', 'Saint Thomas the Apostle, by Jusepe de Ribera, from Museo del Prado', 'Jusepe de Ribera', '1630-1635', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_la-tour.jpg', 'Saint Thomas Apostle Painting', 'Saint Thomas the Apostle, by Georges de La Tour, from Musée du Louvre', 'Georges de La Tour', '1625-1630', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_la-tour_2.jpg', 'Saint Thomas Apostle Painting', 'Saint Thomas the Apostle, by Georges de La Tour, from National Museum of Western Art (Tokyo)', 'Georges de La Tour', '17th Century', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_caravaggio.jpg', 'The Incredulity of Saint Thomas Painting', 'The Incredulity of Saint Thomas, by Caravaggio, from Sanssouci', 'Caravaggio', '1601-1602', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_rubens_martyr.jpg', 'The Martyrdom of Saint Thomas Apostle Painting', 'The Martyrdom of Saint Thomas the Apostle, by Peter Paul Rubens, from National Gallery Prague', 'Peter Paul Rubens', '1636-1638', NULL, 'Public Domain', NULL, 8, FALSE),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_rembrandt.jpg', 'The Incredulity of Saint Thomas Painting', 'The Incredulity of Saint Thomas, by Rembrandt, from Pushkin Museum', 'Rembrandt', '1634', NULL, 'Public Domain', NULL, 9, FALSE),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_zurbaran.jpg', 'Saint Thomas Apostle Painting', 'Saint Thomas the Apostle, by Francisco de Zurbarán, from National Museum of Ancient Art (Lisbon)', 'Francisco de Zurbarán', '1633', NULL, 'Public Domain', NULL, 10, FALSE),

-- Saint Elizabeth of Portugal
('saint-elizabeth-of-portugal', '/saints/saint-elizabeth-of-portugal_zurbaran.jpg', 'Saint Elizabeth of Portugal Painting', 'Saint Elizabeth of Portugal, by Francisco de Zurbarán, from Museo del Prado', 'Francisco de Zurbarán', '1630-1635', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-elizabeth-of-portugal', '/saints/saint-elizabeth-of-portugal.jpg', 'Saint Elizabeth of Portugal Painting', 'Saint Elizabeth of Portugal, by an unknown artist', NULL, '1852', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-elizabeth-of-portugal', '/saints/saint-elizabeth-of-portugal_2.jpg', 'Queen Saint Elizabeth and the Miracle of the Roses Painting', 'Queen Saint Elizabeth and the Miracle of the Roses, by an unknown artist, from Machado de Castro National Museum', NULL, '1540', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-elizabeth-of-portugal', '/saints/saint-elizabeth-of-portugal_castro.jpg', 'Saint Elizabeth of Portugal Painting', 'Saint Elizabeth of Portugal, by José Gil de Castro, from Museo Colonial', 'José Gil de Castro', '1820', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Anthony Zaccaria
('saint-anthony-zaccaria', '/saints/saint-anthony-zaccaria.jpg', 'Saint Anthony Zaccaria Illustration', 'Saint Anthony Zaccaria', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-anthony-zaccaria', '/saints/saint-anthony-zaccaria_2.jpg', 'Saint Anthony Zaccaria Painting', 'Saint Anthony Zaccaria', NULL, NULL, NULL, 'Attribution-ShareAlike 3.0 Unported', NULL, 2, FALSE),
('saint-anthony-zaccaria', '/saints/saint-anthony-zaccaria_3.jpg', 'Saint Anthony Zaccaria Painting', 'Saint Anthony Zaccaria', NULL, NULL, NULL, 'Attribution-ShareAlike 4.0 International', NULL, 3, FALSE),
('saint-anthony-zaccaria', '/saints/saint-anthony-zaccaria_4.jpg', 'Saint Anthony Zaccaria Painting', 'Saint Anthony Zaccaria', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Maria Goretti
('saint-maria-goretti', '/saints/saint-maria-goretti_soffredini.jpg', 'Saint Maria Goretti Painting', 'Saint Maria Goretti, by Giuseppe Brovelli Soffredini', 'Giuseppe Brovelli Soffredini', '20th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-maria-goretti', '/saints/saint-maria-goretti_2.jpg', 'Saint Maria Goretti Painting', 'Saint Maria Illustration', NULL, '20th Century', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Augustine Zhao Rong and Companions
('saint-augustine-zhao-rong', '/saints/saint-augustine-zhao-rong_icon.jpg', 'Saint Augustine Zhao Rong Icon', 'Saint Augustine Zhao Rong, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-augustine-zhao-rong', '/saints/saint-augustine-zhao-rong-&-companions_liu.jpg', 'Saint Augustine Zhao Rong and Companions Painting', 'Saint Augustine Zhao Rong and Companions (120 Martyrs of China), by Monica Liu', 'Monica Liu', NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-augustine-zhao-rong', '/saints/saint-augustine-zhao-rong_stained-glass.jpg', 'Saint Augustine Zhao Rong Stained Glass', 'Saint Augustine Zhao Rong, by an unknown artist, from Shrine of Saint Andrew Kim Taegon (Philippines)', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Benedict, Abbot
('saint-benedict', '/saints/saint-benedict.jpg', 'Saint Benedict Painting', 'Saint Benedict, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-benedict', '/saints/saint-benedict_piazzetta.jpg', 'Saint Benedict Painting', 'Saint Benedict, by Giambattista Piazzetta', 'Giambattista Piazzetta', '18th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-benedict', '/saints/saint-benedict_briggs.jpg', 'Saint Benedict Painting', 'Saint Benedict, by Gwyneth Thompson Briggs', 'Gwyneth Thompson Briggs', '21th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-benedict', '/saints/saint-benedict_zurbaran.jpg', 'Saint Benedict Painting', 'Saint Benedict, by Francisco de Zurbarán, from Metropolitan Museum of Art', 'Francisco de Zurbarán', '1640-1645', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-benedict', '/saints/saint-benedict_2.jpg', 'Saint Benedict Painting', 'Saint Benedict, by an unknown artist', NULL, '17th Century', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-benedict', '/saints/saint-benedict_restout.jpg', 'Saint Benedict Painting', 'Saint Benedict, by Jean Restout, from Église Saint-Gilles de Bourg-la-Reine', 'Jean Restout', '1746', NULL, 'Attribution-ShareAlike 4.0 International', NULL, 6, FALSE),
('saint-benedict', '/saints/saint-benedict-&-scholastica.jpg', 'Saint Benedict and Saint Scholastica Painting', 'Saint Benedict and Saint Scholastica, by Yan'' Dargent', 'Yan'' Dargent', '19th Century', NULL, 'Public Domain', NULL, 7, FALSE),

-- Saint Henry
('saint-henry', '/saints/saint-henry_baer.jpg', 'Saint Henry Painting', 'Saint Henry, by Hans Baer, from the Archdiocese of Freiburg', 'Hans Baer', '1611', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-henry', '/saints/saint-henry.jpg', 'Saint Henry Illustration', 'Saint Henry, by an unknown artist, from the Regensburg Sacramentary (Bavarian State Library)', NULL, '11th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-henry', '/saints/saint-henry_fuhricht.jpg', 'Saint Henry Drawing', 'Saint Henry, by Joseph von Führich', 'Joseph von Führich', '19th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-henry', '/saints/saint-henry_2.jpg', 'Saint Henry Illustration', 'Saint Henry, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Camillus de Lellis
('saint-camillus-de-lellis', '/saints/saint-camillus-de-lellis_gandolfi.jpg', 'Saint Camillus de Lellis Painting', 'Saint Camillus de Lellis, by Gaetano Gandolfi, from Toledo Museum of Art', 'Gaetano Gandolfi', '18th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-camillus-de-lellis', '/saints/saint-camillus-de-lellis_lozano.jpg', 'Saint Camillus de Lellis in Ecstasy Painting', 'Saint Camillus de Lellis in Ecstasy, by Cristóbal Lozano, from Lima Art Museum', 'Cristóbal Lozano', '1762', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-camillus-de-lellis', '/saints/saint-camillus-de-lellis.jpg', 'Saint Camillus de Lellis Painting', 'Saint Camillus de Lellis, by an unknown artist', NULL, '18th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-camillus-de-lellis', '/saints/saint-camillus-de-lellis_subleyras.jpg', 'Saint Camillus de Lellis saves the Sick Painting', 'Saint Camillus de Lellis saves the Sick, by Pierre Subleyras, from Museo di Roma', 'Pierre Subleyras', '1746', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Bonaventure
('saint-bonaventure', '/saints/saint-bonaventure_cavazzola.jpg', 'Saint Bonaventure Painting', 'Saint Bonaventure, by Il Cavazzola', 'Il Cavazzola', '16th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-bonaventure', '/saints/saint-bonaventure_lombard.jpg', 'Saint Bonaventure Painting', 'Saint Bonaventure, by François Lombard, from Basilique Saint-Bonaventure (Lyon)', 'François Lombard', '1639', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-bonaventure', '/saints/saint-bonaventure_rubens.jpg', 'Saint Bonaventure Painting', 'Saint Bonaventure, by Peter Paul Rubens, from Palais des Beaux-Arts de Lille', 'Peter Paul Rubens', '1620', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-bonaventure', '/saints/saint-bonaventure_orpen.jpg', 'Saint Bonaventure Inspired to Write Painting', 'Saint Bonaventure Inspired to Write, by Rebecca Dulcibella Orpen, from National Trust', 'Rebecca Dulcibella Orpen', '1890', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-bonaventure', '/saints/saint-bonaventure_zurbaran.jpg', 'Displaying the Body of Saint Bonaventure Painting', 'Displaying the Body of Saint Bonaventure, by Francisco de Zurbarán, from Musée du Louvre', 'Francisco de Zurbarán', '1629', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint Apollinaris
('saint-apollinaris', '/saints/saint-apollinaris-&-peter_pasquali.jpg', 'Saint Peter sends Saint Apollinaris to Ravenna Painting', 'Saint Peter sends Saint Apollinaris to Ravenna, by Filippo Pasquali, from Ravenna Cathedral', 'Filippo Pasquali', '1683', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-apollinaris', '/saints/saint-apollinaris_mosaic.jpg', 'Saint Apollinaris Mosaic', 'Saint Apollinaris, by an unknown artist, from Basilica of Sant''Apollinare in Classe', NULL, '6th Century', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Lawrence of Brindisi
('saint-lawrence-of-brindisi', '/saints/saint-lawrence-of-brindisi.png', 'Saint Lawrence of Brindisi at the Battle of Albareale Painting', 'Saint Lawrence of Brindisi at the Battle of Albareale, by Francesco Grandi, from Pinacoteca (Vatican)', 'Francesco Grandi', '19th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-lawrence-of-brindisi', '/saints/saint-lawrence-of-brindisi_2.jpg', 'Saint Lawrence of Brindisi Painting', 'Saint Lawrence of Brindisi, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-lawrence-of-brindisi', '/saints/saint-lawrence-of-brindisi_3.jpg', 'Communion of Saint Lawrence of Brindisi Painting', 'Communion of Saint Lawrence of Brindisi, by Raffaele da Roma', 'Raffaele da Roma', '1770', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Mary Magdalene
('saint-mary-magdalene', '/saints/saint-mary-magdalene_spadarino.jpg', 'The Penitent Mary Magdalene Painting', 'The Penitent Mary Magdalene, by Lo Spadarino, from Walters Art Museum', 'Lo Spadarino', '1625-1635', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_caravaggio_ecstasy.jpg', 'Saint Mary Magdalene in Ecstasy Painting', 'Saint Mary Magdalene in Ecstasy, by Caravaggio, from Private Collection', 'Caravaggio', '1606', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_champaigne.jpg', 'The Repentant Mary Magdalene Painting', 'The Repentant Mary Magdalene, by Philippe de Champaigne, from Museum of Fine Arts (Houston)', 'Philippe de Champaigne', '1648', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_rubens.jpg', 'Saint Mary Magdalene in Ecstasy Painting', 'Saint Mary Magdalene in Ecstasy, by Peter Paul Rubens, from Palais des Beaux-Arts de Lille', 'Peter Paul Rubens', '1619-1620', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_caravaggio_penitent.jpg', 'The Penitent Mary Magdalene Painting', 'The Penitent Mary Magdalene, by Caravaggio, from Galleria Doria Pamphilj (Rome)', 'Caravaggio', '1594-1596', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_la-tour.jpg', 'Saint Mary Magdalene Painting', 'Saint Mary Magdalene, by Georges de La Tour, from Musée du Louvre', 'Georges de La Tour', '1640-1645', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_veronese.jpg', 'The Conversion of Mary Magdalene Painting', 'The Conversion of Mary Magdalene, by Paolo Veronese, from National Gallery (London)', 'Paolo Veronese', '1548', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_merle.jpg', 'Saint Mary Magdalene in the Cave Painting', 'Saint Mary Magdalene in the Cave, by Hugues Merle, from Private Collection', 'Hugues Merle', '1868', NULL, 'Public Domain', NULL, 8, FALSE),

-- Saint Bridget
('saint-bridget', '/saints/saint-bridget.jpg', 'Saint Bridget Painting', 'Saint Bridget, by an Hermen Rode, from Salem Church (Södermanland)', 'Hermen Rode', '15th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-bridget', '/saints/saint-bridget_friano.jpg', 'Saint Bridget Painting', 'Saint Bridget, by Maso da San Friano, from the Cook Collection', 'Maso da San Friano', '1540', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-bridget', '/saints/saint-bridget_2.jpg', 'Saint Bridget Painting', 'Saint Bridget, by an unknown artist, from Santa Maria della Catena (Naples)', NULL, NULL, NULL, 'Attribution-ShareAlike 4.0 International', NULL, 3, FALSE),

-- Saint Sharbel Makhluf
('saint-sharbel-makhluf', '/saints/saint-sharbel-makhluf.jpg', 'Saint Sharbel Makhluf Painting', 'Saint Sharbel Makhluf, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-sharbel-makhluf', '/saints/saint-sharbel-makhluf_2.jpg', 'Saint Sharbel Makhluf Illustration', 'Saint Sharbel Makhluf, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-sharbel-makhluf', '/saints/saint-sharbel-makhluf_3.jpg', 'Saint Sharbel Makhluf Illustration', 'Saint Sharbel Makhluf, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint James, Apostle
('saint-james-apostle', '/saints/saint-james-apostle_rubens.jpg', 'Saint James Apostle Painting', 'Saint James the Apostle, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1610-1612', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-james-apostle', '/saints/saint-james-apostle_dyck.jpg', 'Saint James Apostle Painting', 'Saint James the Apostle, by Anthony van Dyck, from Private Collection', 'Anthony van Dyck', '1620-1625', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-james-apostle', '/saints/saint-james-apostle_velazquez.jpg', 'Saint James Apostle Painting', 'Saint James the Apostle, by Diego Velázquez, from Museo del Prado', 'Diego Velázquez', '1618-1620', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-james-apostle', '/saints/saint-james-apostle_ribera.jpg', 'Saint James Apostle Painting', 'Saint James the Apostle, by Jusepe de Ribera, from Museo del Prado', 'Jusepe de Ribera', '1630-1635', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-james-apostle', '/saints/saint-james-apostle_caravaggio.jpg', 'The Martyrdom of Saint James Painting', 'The Martyrdom of Saint James the Apostle, by Caravaggio, from National Gallery (London)', 'Caravaggio', '1607-1608', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-james-apostle', '/saints/saint-james-apostle_rembrandt.jpg', 'The Martyrdom of Saint James Painting', 'The Martyrdom of Saint James the Apostle, by Rembrandt, from Pushkin Museum (Moscow)', 'Rembrandt', '1630-1632', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-james-apostle', '/saints/saint-james-apostle_zurbaran.jpg', 'Saint James Apostle Painting', 'Saint James the Apostle, by Francisco de Zurbarán, from National Museum of Ancient Art (Lisbon)', 'Francisco de Zurbarán', '1633', NULL, 'Public Domain', NULL, 7, FALSE),

-- a dl sur le 470s
('saint-mary-magdalene', '/saints/saint-mary-magdalene_ivanov.jpg', 'Christ''s Appearance to Mary Magdalene after the Resurrection Painting', 'Christ''s Appearance to Mary Magdalene after the Resurrection, by Alexander Ivanov, from Russian Museum', 'Alexander Ivanov', '1835', NULL, 'Public Domain', NULL, 9, FALSE),
