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
('saint-john-the-baptist', '/saints/saint-john-the-baptist_tanzio.jpg', 'Saint John the Baptist Painting', 'Saint John the Baptist, by Tanzio da Varallo, from Philbrook Museum of Art', 'Tanzio da Varallo', '1627-1629', NULL, 'Public Domain', NULL, 4, FALSE),

-- =========================
-- January saints
-- =========================

-- Saint Basil the Great
('saint-basil-the-great', '/saints/saint-basil-the-great_grottaferrata.jpg', 'Saint Basil the Great Fresco', 'Saint Basil the Great, by an unknown artist, from Grottaferrata Abbey', NULL, '1609-1612', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-basil-the-great', '/saints/saint-basil-the-great.webp', 'Saint Basil the Great Painting', 'Saint Basil the Great, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-basil-the-great', '/saints/saint-basil-the-great_mosaic.jpg', 'Saint Basil the Great Mosaic', 'Saint Basil the Great, by an unknown artist', NULL, '11th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Gregory Nazianzen
('saint-gregory-nazianzen', '/saints/saint-gregory-nazianzen_grottaferrata.jpg', 'Saint Gregory Nazianzen Fresco', 'Saint Gregory Nazianzen, by an unknown artist, from Grottaferrata Abbey', NULL, '1609-1612', NULL, 'Public Domain', NULL, 1, TRUE),
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

-- Saint Paul Apostle
('saint-paul-apostle', '/saints/saint-paul-apostle_rubens.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1611-1612', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-paul-apostle', '/saints/saint-paul-apostle_ribera.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Jusepe de Ribera, from Museo del Prado', 'Jusepe de Ribera', '1615-1616', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_velasquez.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Diego Velázquez, from Museo del Prado', 'Diego Velázquez', '1619-1620', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_caravaggio_conversion.jpg', 'The Conversion of Saint Paul Painting', 'The Conversion of Saint Paul, by Caravaggio, from Odescalchi Balbi Collection', 'Caravaggio', '1601', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_rembrandt_prison.jpg', 'The Apostle Paul in Prison Painting', 'The Apostle Paul in Prison, by Rembrandt, from Rijksmuseum', 'Rembrandt', '1627', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_rembrandt.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Rembrandt, from National Gallery of Art', 'Rembrandt', '1657', NULL, 'Public Domain', NULL, 6, FALSE),

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

-- Saint John Bosco
('saint-john-bosco', '/saints/saint-john-bosco_painting-from-picture.png', 'Saint John Bosco Painting', 'Saint John Bosco, by an unknown artist, from a picture', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-bosco', '/saints/saint-john-bosco_picture.jpg', 'Saint John Bosco Picture', 'Saint John Bosco, Photographed by Carlo Felice in 1880', 'Carlo Felice', '1880', NULL, 'Public Domain', NULL, 2, FALSE),

-- =========================
-- February saints
-- =========================

-- Saint Blaise
('saint-blaise', '/saints/saint-blaise_trotti.jpg', 'Saint Blaise Painting', 'Saint Blaise, by Giovanni Battista Trotti, from Museum of Fine Arts (Budapest)', 'Giovanni Battista Trotti', '1590', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-blaise', '/saints/saint-blaise_tiepolo.jpg', 'Saint Blaise Painting', 'Saint Blaise, by Giovanni Battista Tiepolo, from Ca'' Rezzonico', 'Giovanni Battista Tiepolo', '1734', NULL, 'Public Domain', NULL, 2, FALSE),

--Saint Ansgar
('saint-ansgar', '/saints/saint-ansgar.jpg', 'Saint Ansgar Painting', 'Saint Ansgar, by Hans Bornemann, from Church Trinitatis (Hamburg)', NULL, '1457', NULL, 'Public Domain', NULL, 1, TRUE),

-- Saint Agatha
('saint-agatha', '/saints/saint-agatha.jpg', 'The Martyrdom of Saint Agatha Painting', 'The Martyrdom of Saint Agatha, by Massimo Stanzione, from Museo nazionale di Capodimonte', NULL, '1619', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-agatha', '/saints/saint-agatha_tiepolo.jpg', 'The Martyrdom of Saint Agatha Painting', 'The Martyrdom of Saint Agatha, by Giovanni Battista Tiepolo, from Gemäldegalerie', 'Giovanni Battista Tiepolo', '1756', NULL, 'Public Domain', NULL, 2, FALSE),

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









-- sAINT ROCH TIEPOLO A NE APS OUBLIER


---
)
AS x (slug, image_url, alt_text, caption, credit, license, author, date, source_url, sort_order, is_primary)

ON s.slug = x.slug
ON CONFLICT DO NOTHING;

COMMIT;
