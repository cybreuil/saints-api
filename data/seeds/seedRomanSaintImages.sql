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
('saint-mary', '/saints/saint-mary_gentileschi_annunciation.jpg', 'The Annunciation Painting', 'The Annunciation, by Orazio Gentileschi, from Galleria Sabauda', 'Orazio Gentileschi', '1623', NULL, 'Public Domain', NULL, 15, FALSE),

-- Saint Joseph
('saint-joseph', '/saints/saint-joseph_guido-reni.jpg', 'Saint Joseph and the Christ Child Painting', 'Saint Joseph and the Christ Child, by Guido Reni, from Museum of Fine Arts of Houston', 'Guido Reni', '1640', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-joseph', '/saints/saint-joseph_carracci.jpg', 'The Holy Family Painting', 'The Holy Family, by Annibale Carracci, from Borghese Gallery', 'Annibale Carracci', '1596-1597', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-joseph', '/saints/saint-joseph_murillo.jpg', 'Saint Joseph and the Christ Child', 'Saint Joseph and the Christ Child, by Bartolomé Esteban Murillo, from The John and Mable Ringling Museum of Art', 'Bartolomé Esteban Murillo', '1670-1675', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-joseph', '/saints/saint-joseph_murillo_holy-family.jpg', 'The Holy Family Painting', 'The Holy Family, by Bartolomé Esteban Murillo, from National Gallery of Ireland', 'Bartolomé Esteban Murillo', '1640-1649', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-joseph', '/saints/saint-joseph_la-tour.jpg', 'Joseph the Carpenter Painting', 'Joseph the Carpenter, by Georges de La Tour, from Musée du Louvre', 'Georges de La Tour', '1640-1645', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-joseph', '/saints/saint-joseph_champaigne.jpg', 'The Dream of Saint Joseph Painting', 'The Dream of Saint Joseph, by Philippe de Champaigne, from National Gallery', 'Philippe de Champaigne', '1642-1643', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-joseph', '/saints/saint-joseph_briggs.jpg', 'The Lily and the Carpenter Painting', 'The Lily and the Carpenter, by Gwyneth Thompson Briggs', 'Gwyneth Thompson Briggs', '21th Century', NULL, 'Public Domain', NULL, 7, FALSE),

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
('saint-anthony-abbot', '/saints/saint-anthony-abbot-&-cornelius-&-cyprian_veronese.jpg', 'Saint Anthony the Great with Saints Cornelius and Cyprian Painting', 'Saint Anthony the Great with Saints Cornelius and Cyprian, by Paolo Veronese, from Pinacoteca di Brera (Milan)', 'Paolo Veronese', '1565-1571', NULL, 'Public Domain', NULL, 6, FALSE),

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
('saint-francis-de-sales', '/saints/saint-francis-de-sales.webp', 'Saint Francis de Sales Painting', 'Saint Francis de Sales, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-francis-de-sales', '/saints/saint-francis-de-sales_2.jpg', 'Saint Francis de Sales Painting', 'Saint Francis de Sales, by an unknown artist, from the Château de Bussy-Rabutin', NULL, '17th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-francis-de-sales', '/saints/saint-francis-de-sales_briggs.jpg', 'Saint Francis de Sales Painting', 'Saint Francis de Sales by Gwyneth Thompson Briggs', 'Gwyneth Thompson Briggs', '21th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-francis-de-sales', '/saints/saint-francis-de-sales_brenet.jpg', 'Saint Francis de Sales Painting', 'Saint Francis de Sales, by Nicolas Guy Brenet, from Château de Blois', 'Nicolas Guy Brenet', '18th Century', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-francis-de-sales', '/saints/saint-francis-de-sales-&-jane-frances-de-chantal_bayeu.jpg', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal Painting', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal, by Francisco Bayeu, from Museo del Prado', 'Francisco Bayeu', '18th Century', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-francis-de-sales', '/saints/saint-francis-de-sales-&-jane-frances-de-chantal_halle.jpg', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal Painting', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal, by Noël Hallé, from Saint-Louis-en-l''Île Church', 'Noël Hallé', '18th Century', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-francis-de-sales', '/saints/saint-francis-de-sales-&-jane-frances-de-chantal.jpg', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal Painting', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal, by an unknown artist, from Monastery of the Visitation (Paris)', NULL, NULL, NULL, 'Public Domain', NULL, 7, FALSE),

-- Saint Paul, Apostle
('saint-paul-apostle', '/saints/saint-paul-apostle_rubens.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1611-1612', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-paul-apostle', '/saints/saint-paul-apostle_ribera.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Jusepe de Ribera, from Museo del Prado', 'Jusepe de Ribera', '1615-1616', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_velasquez.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Diego Velázquez, from Museo del Prado', 'Diego Velázquez', '1619-1620', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_zurbaran.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Francisco de Zurbarán, from National Museum of Ancient Art', 'Francisco de Zurbarán', '1633', NULL, 'Attribution 3.0 Unported', NULL, 4, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_dyck.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Anthony van Dyck, from Landesmuseum Hannover', 'Anthony van Dyck', '1618-1620', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_caravaggio_conversion.jpg', 'The Conversion of Saint Paul Painting', 'The Conversion of Saint Paul, by Caravaggio, from Odescalchi Balbi Collection', 'Caravaggio', '1601', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_rembrandt_prison.jpg', 'The Apostle Paul in Prison Painting', 'The Apostle Paul in Prison, by Rembrandt, from Rijksmuseum', 'Rembrandt', '1627', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_rembrandt.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Rembrandt, from National Gallery of Art (Washington, D.C.)', 'Rembrandt', '1657', NULL, 'Public Domain', NULL, 8, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_la-tour.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Georges de La Tour (copy), from Musée Toulouse-Lautrec', 'Georges de La Tour', '1820', NULL, 'Public Domain', NULL, 9, FALSE),
('saint-paul-apostle', '/saints/saint-paul-apostle_guercino.jpg', 'Saint Paul Apostle Painting', 'Saint Paul the Apostle, by Il Guercino, from the Royal Collection of the British royal family', 'Il Guercino', '1650', NULL, 'Public Domain', NULL, 10, FALSE),
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
('saint-josephine-bakhita', '/saints/saint-josephine-bakhita_ferreira.jpg', 'Saint Josephine Bakhita Painting', 'Saint Josephine Bakhita, by Ruben Ferreira', NULL, '21th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-josephine-bakhita', '/saints/saint-josephine-bakhita_warford_no-watermark.jpg', 'Saint Josephine Bakhita Painting', 'Saint Josephine Bakhita, by John Alan Warford', NULL, '21th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-josephine-bakhita', '/saints/saint-josephine-bakhita.jpg', 'Saint Josephine Bakhita Portrait', 'Saint Josephine Bakhita Portrait', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

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
('saint-george', '/saints/saint-george_raphael.jpg', 'Saint George and the Dragon Painting', 'Saint George and the Dragon, by Raphael, from National Gallery of Art (Washington, D.C.)', 'Raphael', '1505-1506', NULL, 'Public Domain', NULL, 1, TRUE),
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
('saint-justin-martyr', '/saints/saint-justin-martyr_thevet.jpg', 'Saint Justin Martyr Illustration', 'Saint Justin Martyr, by André Thevet, from Book : "Les Vrais Pourtraits et Vies des Hommes Illustres"', 'André Thévet', '1584', NULL, 'Public Domain', NULL, 1, TRUE),
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

-- Saint John Fisher
('saint-john-fisher', '/saints/saint-john-fisher_holbein-younger.jpg', 'Saint John Fisher Painting', 'Saint John Fisher, by Hans Holbein the Younger', 'Hans Holbein the Younger', '1497-1543', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-fisher', '/saints/saint-john-fisher_illustration.jpg', 'Saint John Fisher Line Engraving', 'Saint John Fisher, by Jacobus Houbraken', 'Jacobus Houbraken', '1743', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-fisher', '/saints/saint-john-fisher_briggs.jpg', 'Saint John Fisher Painting', 'Saint John Fisher, by Gwyneth Thompson Briggs', 'Gwyneth Thompson Briggs', '2019', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-john-fisher', '/saints/saint-john-fisher_briggs_2.jpg', 'Saint John Fisher Painting', 'Saint John Fisher, by Gwyneth Thompson Briggs', 'Gwyneth Thompson Briggs', '21th Century', NULL, 'Public Domain', NULL, 4, FALSE),

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
('saint-peter-apostle', '/saints/saint-peter-apostle_brion.jpg', 'Jesus and Peter on the Water Painting', 'Jesus and Peter on the Water, by Gustave Brion, from Private Collection', 'Gustave Brion', '1863', NULL, 'Public Domain', NULL, 16, FALSE),

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
('saint-mary-magdalene', '/saints/saint-mary-magdalene_ivanov.jpg', 'Christ''s Appearance to Mary Magdalene after the Resurrection Painting', 'Christ''s Appearance to Mary Magdalene after the Resurrection, by Alexander Ivanov, from Russian Museum', 'Alexander Ivanov', '1835', NULL, 'Public Domain', NULL, 9, FALSE),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_titian.jpg', 'Noli Me Tangere Painting', 'Noli Me Tangere, by Titian, from National Gallery (London)', 'Titian', '1514', NULL, 'Public Domain', NULL, 10, FALSE),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_giotto.jpg', 'Noli Me Tangere Fresco', 'Noli Me Tangere, by Giotto, from Scrovegni Chapel (Padua)', 'Giotto', '1304	-1306', NULL, 'Public Domain', NULL, 11, FALSE),

-- Saint Bridget
('saint-bridget', '/saints/saint-bridget.jpg', 'Saint Bridget Painting', 'Saint Bridget, by an Hermen Rode, from Salem Church (Södermanland)', 'Hermen Rode', '15th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-bridget', '/saints/saint-bridget_friano.jpg', 'Saint Bridget Painting', 'Saint Bridget, by Maso da San Friano, from the Cook Collection', 'Maso da San Friano', '1540', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-bridget', '/saints/saint-bridget_2.jpg', 'Saint Bridget Painting', 'Saint Bridget, by an unknown artist, from Santa Maria della Catena (Naples)', NULL, NULL, NULL, 'Attribution-ShareAlike 4.0 International', NULL, 3, FALSE),
('saint-bridget', '/saints/saint-bridget_briggs.jpg', 'Saint Bridget Painting', 'Saint Bridget, by Gwyneth Thompson Briggs', 'Gwyneth Thompson Briggs', '21th Century', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Sharbel Makhluf
('saint-sharbel-makhluf', '/saints/saint-sharbel-makhluf.jpg', 'Saint Sharbel Makhluf Painting', 'Saint Sharbel Makhluf, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-sharbel-makhluf', '/saints/saint-sharbel-makhluf_2.jpg', 'Saint Sharbel Makhluf Illustration', 'Saint Sharbel Makhluf, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-sharbel-makhluf', '/saints/saint-sharbel-makhluf_3.jpg', 'Saint Sharbel Makhluf Illustration', 'Saint Sharbel Makhluf, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint James, Apostle
('saint-james-apostle', '/saints/saint-james-apostle_rubens.jpg', 'Saint James Apostle Painting', 'Saint James the Apostle, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1612-1613', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-james-apostle', '/saints/saint-james-apostle_reni.jpg', 'Saint James Apostle Painting', 'Saint James the Apostle, by Guido Reni, from Museum of Fine Arts (Houston)', 'Guido Reni', '1636-1638', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-james-apostle', '/saints/saint-james-apostle_dyck.jpg', 'Saint James Apostle Painting', 'Saint James the Apostle, by Anthony van Dyck, from Private Collection', 'Anthony van Dyck', '1620', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-james-apostle', '/saints/saint-james-apostle_ribera.jpg', 'Saint James Apostle Painting', 'Saint James the Apostle, by Jusepe de Ribera, from Museo del Prado', 'Jusepe de Ribera', '1630-1635', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-james-apostle', '/saints/saint-james-apostle_rembrandt.jpg', 'Saint James Apostle Painting', 'Saint James the Apostle, by Rembrandt, from Private Collection', 'Rembrandt', '1661', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-james-apostle', '/saints/saint-james-apostle_zurbaran.jpg', 'Saint James Apostle Painting', 'Saint James the Apostle, by Francisco de Zurbarán, from National Museum of Ancient Art (Lisbon)', 'Francisco de Zurbarán', '1633', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-james-apostle', '/saints/saint-james-apostle_murillo.jpg', 'Saint James Apostle Painting', 'Saint James the Apostle, by Bartolomé Esteban Murillo, from Museo del Prado', 'Bartolomé Esteban Murillo', '1655', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-james-apostle', '/saints/saint-james-apostle_tiepolo.jpg', 'Saint James the Great Conquering the Moors (Santiago Matamoros) Painting', 'Saint James the Great Conquering the Moors (Santiago Matamoros), by Giambattista Tiepolo, from Museum of Fine Arts (Budapest)', 'Giambattista Tiepolo', '1749-1750', NULL, 'Public Domain', NULL, 8, FALSE),
('saint-james-apostle', '/saints/saint-james-apostle_dyck_martyr.jpg', 'The Martyrdom of Saint James Apostle Painting', 'The Martyrdom of Saint James the Apostle, by Anthony van Dyck, from Musée des Beaux-Arts de Valenciennes', 'Anthony van Dyck', '1627-1632', NULL, 'Public Domain', NULL, 9, FALSE),
('saint-james-apostle', '/saints/saint-james-apostle_zurbaran_martyr.jpg', 'The Martyrdom of Saint James Apostle Painting', 'The Martyrdom of Saint James the Apostle, by Francisco de Zurbarán, from Museo del Prado', 'Francisco de Zurbarán', '1640', NULL, 'Public Domain', NULL, 10, FALSE),

-- Saint Joachim
('saint-joachim', '/saints/saint-joachim_wautier.jpg', 'Saint Joachim Painting', 'Saint Joachim, by Michaelina Wautier, from Kunsthistorisches Museum', 'Michaelina Wautier', '1650', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-joachim', '/saints/saint-joachim_gutierrez.jpg', 'Saint Joachim Painting', 'Saint Joachim, by Juan Simón Gutiérrez, from Museo de Bellas Artes de Sevilla', 'Juan Simón Gutiérrez', '1700', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-joachim', '/saints/saint-joachim-&-mary_camilo.jpg', 'Saint Joachim and Saint Mary Painting', 'Saint Joachim and Saint Mary, by Francisco Camilo, from Museo del Prado', 'Francisco Camilo', '17th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-joachim', '/saints/saint-joachim-&-mary.jpg', 'Saint Joachim and Saint Mary Painting', 'Saint Joachim and Saint Mary, by an unknown artist, from Museo Colonial (Bogotá)', NULL, '17th Century', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-joachim', '/saints/saint-joachim-&-anne_maratta.jpg', 'The Vision of Saint Joachim and Saint Anne Painting', 'The Vision of Saint Joachim and Saint Anne, by Carlo Maratta, from Private Collection', 'Carlo Maratta', '1670-1685', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-joachim', '/saints/saint-anne-&-joachim-&-mary_wautier.jpg', 'Education of the Virgin by Saint Anne & Saint Joachim Painting', 'Education of the Virgin by Saint Anne & Saint Joachim, by Michaelina Wautier, from Private Collection', 'Michaelina Wautier', '1656', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-joachim', '/saints/saint-anne-&-joachim-&-mary_tiepolo.jpg', 'Education of the Virgin by Saint Anne & Saint Joachim Painting', 'Education of the Virgin by Saint Anne & Saint Joachim, by Giambattista Tiepolo, from Santa Maria della Fava', 'Giambattista Tiepolo', '1732', NULL, 'Public Domain', NULL, 7, FALSE),

-- Saint Anne
('saint-anne', '/saints/saint-anne-&-mary_coypel.jpg', 'Education of the Virgin by Saint Anne Painting', 'Education of the Virgin by Saint Anne, by Charles Antoine Coypel, from Speed Art Museum', 'Charles Antoine Coypel', '1735-1737', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-anne', '/saints/saint-anne-&-mary_murillo.jpg', 'Education of the Virgin by Saint Anne Painting', 'Education of the Virgin by Saint Anne, by Bartolomé Esteban Murillo, from Museo del Prado', 'Bartolomé Esteban Murillo', '1655', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-anne', '/saints/saint-anne-&-mary_la-tour.jpg', 'Education of the Virgin by Saint Anne Painting', 'Education of the Virgin by Saint Anne, by Georges de La Tour, from The Frick Collection', 'Georges de La Tour', '1650', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-anne', '/saints/saint-anne-&-mary_stella.jpg', 'Saint Anne Leading the Virgin to the Temple Painting', 'Saint Anne Leading the Virgin to the Temple, by Jacques Stella, from Musée des Beaux-Arts de Rouen', 'Jacques Stella', '1640', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-anne', '/saints/saint-anne-&-joachim-&-mary_wautier.jpg', 'Education of the Virgin by Saint Anne & Saint Joachim Painting', 'Education of the Virgin by Saint Anne & Saint Joachim, by Michaelina Wautier, from Private Collection', 'Michaelina Wautier', '1656', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-anne', '/saints/saint-anne-&-joachim-&-mary_tiepolo.jpg', 'Education of the Virgin by Saint Anne & Saint Joachim Painting', 'Education of the Virgin by Saint Anne & Saint Joachim, by Giambattista Tiepolo, from Santa Maria della Fava', 'Giambattista Tiepolo', '1732', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-anne', '/saints/saint-anne-&-mary-&-child.jpg', 'The Virgin and Child with Saint Anne Painting', 'The Virgin and Child with Saint Anne, by Leonardo da Vinci, from Musée du Louvre', 'Leonardo da Vinci', '1503-1519', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-anne', '/saints/saint-anne-&-mary_icon.jpg', 'Saint Anne with the Virgin Icon', 'Saint Anne with the Virgin, by an unknown artist, from Benaki Museum', NULL, '1440', NULL, 'Public Domain', NULL, 8, FALSE),

-- Saint Martha of Bethany
('saint-martha-of-bethany', '/saints/saint-martha-of-bethany_ring-sakabe.webp', 'Saint Martha of Bethany Painting', 'Saint Martha of Bethany, by Jordan Ring-Sakabe', 'Jordan Ring-Sakabe', '2019', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-martha-of-bethany', '/saints/saint-martha-of-bethany-&-mary-of-bethany-&-christ_vermeer.jpg', 'Christ in the House of Martha and Mary Painting', 'Christ in the House of Martha and Mary, by Johannes Vermeer, from Scottish National Gallery', 'Johannes Vermeer', '1654-1655', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-martha-of-bethany', '/saints/saint-martha-of-bethany-&-mary-of-bethany-&-christ_rubens.jpg', 'Christ in the House of Martha and Mary Painting', 'Christ in the House of Martha and Mary, by Peter Paul Rubens & Jan Brueghel the Younger, from National Gallery of Ireland', 'Peter Paul Rubens & Jan Brueghel the Younger', '1628', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-martha-of-bethany', '/saints/saint-martha-of-bethany.jpg', 'Saint Martha of Bethany & the Tarasque Painting', 'Saint Martha of Bethany & the Tarasque, by an unknown artist', NULL, '18th Century', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Mary of Bethany
('saint-mary-of-bethany', '/saints/saint-mary-of-bethany_ring-sakabe.jpg', 'Saint Mary of Bethany Painting', 'Saint Mary of Bethany, by Jordan Ring-Sakabe', 'Jordan Ring-Sakabe', '2024', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-mary-of-bethany', '/saints/saint-mary-of-bethany-&-martha-of-bethany-&-christ_vermeer.jpg', 'Christ in the House of Martha and Mary Painting', 'Christ in the House of Martha and Mary, by Johannes Vermeer, from Scottish National Gallery', 'Johannes Vermeer', '1654-1655', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-mary-of-bethany', '/saints/saint-mary-of-bethany-&-martha-of-bethany-&-christ_rubens.jpg', 'Christ in the House of Martha and Mary Painting', 'Christ in the House of Martha and Mary, by Peter Paul Rubens & Jan Brueghel the Younger, from National Gallery of Ireland', 'Peter Paul Rubens & Jan Brueghel the Younger', '1628', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Lazarus of Bethany
('saint-lazarus-of-bethany', '/saints/saint-lazarus-of-bethany_caravaggio.jpg', 'The Raising of Lazarus Painting', 'The Raising of Lazarus, by Caravaggio, from Regional Museum of Messina', 'Caravaggio', '1609', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-lazarus-of-bethany', '/saints/saint-lazarus-of-bethany_rubens.jpg', 'The Raising of Lazarus Painting', 'The Raising of Lazarus, by Peter Paul Rubens, from Galleria Sabauda', 'Peter Paul Rubens', '1625', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-lazarus-of-bethany', '/saints/saint-lazarus-of-bethany_gebhardt.jpg', 'The Raising of Lazarus Painting', 'The Raising of Lazarus, by Eduard von Gebhardt, from Museum Kunstpalast', 'Eduard von Gebhardt', '1896', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-lazarus-of-bethany', '/saints/saint-lazarus-of-bethany_flandes.jpg', 'The Raising of Lazarus Painting', 'The Raising of Lazarus, by Juan de Flandes, from Museo del Prado', 'Juan de Flandes', '1514-1519', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Peter Chrysologus
('saint-peter-chrysologus', '/saints/saint-peter-chrysologus.jpg', 'Saint Peter Chrysologus Painting', 'Saint Peter Chrysologus, by School of Guercino', 'School of Guercino', '17th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-peter-chrysologus', '/saints/saint-peter-chrysologus-&-cassian_fontana.jpg', 'Assumption of the Virgin with Saints Peter Chrysologus and Cassian Painting', 'Assumption of the Virgin with Saints Peter Chrysologus and Cassian, by Lavinia Fontana', 'Lavinia Fontana', '1583', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Ignatius of Loyola
('saint-ignatius-of-loyola', '/saints/saint-ignatius-of-loyola_rubens.jpg', 'Saint Ignatius of Loyola Painting', 'Saint Ignatius of Loyola, by Peter Paul Rubens, from Norton Simon Museum', 'Peter Paul Rubens', '1620-1622', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-ignatius-of-loyola', '/saints/saint-ignatius-of-loyola_rubens_miracle.jpg', 'Miracle of Saint Ignatius of Loyola Painting', 'Miracle of Saint Ignatius of Loyola, by Peter Paul Rubens, from Kunsthistorisches Museum', 'Peter Paul Rubens', '1617-1618', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-ignatius-of-loyola', '/saints/saint-ignatius-of-loyola_zurbaran.jpg', 'Saint Ignatius of Loyola Painting', 'Saint Ignatius of Loyola, by Francisco de Zurbarán, from the Royal Collection of the British royal family', 'Francisco de Zurbarán', '17th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-ignatius-of-loyola', '/saints/saint-ignatius-of-loyola.jpg', 'Ignatius convalesces at Loyola Painting', 'Ignatius convalesces at Loyola, by Albert Chevallier Tayler', 'Albert Chevallier Tayler', '1904', NULL, 'Public Domain', NULL, 4, FALSE),

-- =========================
-- August Saints
-- =========================

-- Saint Alphonsus Liguori
('saint-alphonsus-liguori', '/saints/saint-alphonsus-liguori.jpg', 'Saint Alphonsus Liguori Painting', 'Saint Alphonsus Liguori, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-alphonsus-liguori', '/saints/saint-alphonsus-liguori_2.jpg', 'Saint Alphonsus Liguori Painting', 'Saint Alphonsus Liguori, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-alphonsus-liguori', '/saints/saint-alphonsus-liguori_3.jpg', 'Saint Alphonsus Liguori Painting', 'Saint Alphonsus Liguori, by an unknown artist', NULL, NULL, NULL, 'Attribution-ShareAlike 3.0 Unported', NULL, 3, FALSE),
('saint-alphonsus-liguori', '/saints/saint-alphonsus-liguori_4.jpg', 'Saint Alphonsus Liguori Painting', 'Saint Alphonsus Liguori, by an unknown artist', NULL, '1850', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Eusebius of Vercelli
('saint-eusebius-of-vercelli', '/saints/saint-eusebius-of-vercelli.jpg', 'Saint Eusebius of Vercelli Painting', 'Saint Eusebius of Vercelli, by an unknown artist, from Vercelli Cathedral', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-eusebius-of-vercelli', '/saints/saint-eusebius-of-vercelli_2.jpg', 'Saint Eusebius of Vercelli Painting', 'Saint Eusebius of Vercelli, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-eusebius-of-vercelli', '/saints/saint-eusebius-of-vercelli-&-roch-&-sebastian_ricci.jpg', 'Saint Eusebius of Vercelli with Saints Roch and Sebastian Painting', 'Saint Eusebius of Vercelli with Saints Roch and Sebastian, by Sebastiano Ricci, from University of Turin', 'Sebastiano Ricci', '1724-1725', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Peter Julian Eymard
('saint-peter-julian-eymard', '/saints/saint-peter-julian-eymard.jpg', 'Saint Peter Julian Eymard Painting', 'Saint Peter Julian Eymard, by an unknown artist', NULL, NULL, NULL, 'Attribution-ShareAlike 4.0 International', NULL, 1, TRUE),
('saint-peter-julian-eymard', '/saints/saint-peter-julian-eymard_2.jpg', 'Saint Peter Julian Eymard Photograph', 'Saint Peter Julian Eymard, by an unknown photographer', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint John Vianney
('saint-john-vianney', '/saints/saint-john-vianney_briggs.jpg', 'Saint John Vianney Painting', 'Saint John Vianney, by Gwyneth Thompson Briggs', 'Gwyneth Thompson Briggs', '2022', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-vianney', '/saints/saint-john-vianney_desvallieres.png', 'Saint John Vianney Painting', 'Saint John Vianney, by George Desvallières', 'George Desvallières', '1920', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-vianney', '/saints/saint-john-vianney.jpg', 'Saint John Vianney Illustration', 'Saint John Vianney, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-john-vianney', '/saints/saint-john-vianney_2.jpg', 'Saint John Vianney Painting', 'Saint John Vianney, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),
('saint-john-vianney', '/saints/saint-john-vianney_borel.jpg', 'Saint John Vianney Fresco', 'Saint John Vianney, by Paul Borel, from Basilique d''Ars', 'Paul Borel', '1907', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint Sixtus II and Companions
('saint-sixtus-ii-and-companions', '/saints/saint-sixtus-ii_botticelli.jpg', 'Saint Sixtus II Fresco', 'Saint Sixtus II, by Sandro Botticelli, from Sistine Chapel', 'Sandro Botticelli', '1481-1482', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-sixtus-ii-and-companions', '/saints/saint-sixtus-ii.jpg', 'Saint Sixtus II Mosaic', 'Saint Sixtus II, by an unknown artist, from Papal Basilica of Saint Paul Outside the Walls', NULL, '19th Century', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Cajetan
('saint-cajetan', '/saints/saint-cajetan_tiepolo.jpg', 'Saint Cajetan Painting', 'Saint Cajetan, by Giambattista Tiepolo, from Museu Nacional de Belas Artes', 'Giambattista Tiepolo', '1710-1736', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-cajetan', '/saints/saint-cajetan_ricci.jpg', 'Saint Cajetan Comforting a Dying Man Painting', 'Saint Cajetan Comforting a Dying Man, by Sebastiano Ricci, from Pinacoteca di Brera', 'Sebastiano Ricci', '1704', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-cajetan', '/saints/saint-cajetan_solimena.jpg', 'Saint Cajetan in Glory Painting', 'Saint Cajetan in Glory, by Francesco Solimena, from San Gaetano (Vicenza)', 'Francesco Solimena', '1725', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Dominic
('saint-dominic', '/saints/saint-dominic_coello.jpg', 'Saint Dominic Painting', 'Saint Dominic, by Claudio Coello, from Museo del Prado', 'Claudio Coello', '1685', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-dominic', '/saints/saint-dominic_cavallino.jpg', 'The Vision of Saint Dominic Painting', 'The Vision of Saint Dominic, by Bernardo Cavallino, from National Gallery of Canada', 'Bernardo Cavallino', '1640-1645', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-dominic', '/saints/saint-dominic_campeche.jpg', 'Saint Dominic Painting', 'Saint Dominic, by José Campeche, from Art Gallery of Ontario', 'José Campeche', '1790', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Teresa Benedicta of the Cross (Edith Stein)
('saint-teresa-benedicta-of-the-cross', '/saints/saint-teresa-benedicta-of-the-cross_ferreira_no-watermark.jpg', 'Saint Teresa Benedicta of the Cross Painting', 'Saint Teresa Benedicta of the Cross, by Ruben Ferreira', 'Ruben Ferreira', '21th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-teresa-benedicta-of-the-cross', '/saints/saint-teresa-benedicta-of-the-cross_passport.jpg', 'Saint Teresa Benedicta of the Cross Photograph', 'Saint Teresa Benedicta of the Cross, by an unknown photographer, from her Passport', NULL, '1938-1939', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-teresa-benedicta-of-the-cross', '/saints/saint-teresa-benedicta-of-the-cross.jpg', 'Saint Teresa Benedicta of the Cross Painting', 'Saint Teresa Benedicta of the Cross, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Lawrence
('saint-lawrence', '/saints/saint-lawrence_briggs.jpg', 'Saint Lawrence Painting', 'Saint Lawrence, by Gwyneth Thompson Briggs', 'Gwyneth Thompson Briggs', '21th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-lawrence', '/saints/saint-lawrence_santacroce.jpg', 'Saint Lawrence Painting', 'Saint Lawrence, by Girolamo da Santacroce, from Courtauld Gallery', 'Girolamo da Santacroce', '1520-1530', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-lawrence', '/saints/saint-lawrence_champaigne_martyr.jpg', 'The Martyrdom of Saint Lawrence Painting', 'The Martyrdom of Saint Lawrence, by Jean Baptiste de Champaigne, from National Gallery of Art (Washington, D.C.)', 'Jean Baptiste de Champaigne', '1660', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-lawrence', '/saints/saint-lawrence_limosin.jpg', 'Saint Lawrence Painting', 'Saint Lawrence, by Jean Limosin, from Museum of Fine Arts of Lyon', 'Jean Limosin', '17th Century', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-lawrence', '/saints/saint-lawrence_calli.jpg', 'Saint Lawrence Painting', 'Saint Lawrence, by Giuseppe Calì, from Saint Lawrence Church (Gozo)', 'Giuseppe Calì', '1889', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-lawrence', '/saints/saint-lawrence_titan_martyr.jpg', 'The Martyrdom of Saint Lawrence Painting', 'The Martyrdom of Saint Lawrence, by Titian, from El Escorial', 'Titian', '1564-1567', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-lawrence', '/saints/saint-lawrence_strozzi.jpg', 'Saint Lawrence Distributing the Treasures of the Church Painting', 'Saint Lawrence Distributing the Treasures of the Church, by Bernardo Strozzi, from North Carolina Museum of Art', 'Bernardo Strozzi', '1625', NULL, 'Public Domain', NULL, 7, FALSE),

-- Saint Clare
('saint-clare', '/saints/saint-clare_martini.jpg', 'Saint Clare Fresco', 'Saint Clare, by Simone Martini, from Lower Basilica of San Francesco', 'Simone Martini', '1322-1326', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-clare', '/saints/saint-clare_moroni.jpg', 'Saint Clare Painting', 'Saint Clare, by Giovanni Battista Moroni, from Tridentine Diocesan Museum', 'Giovanni Battista Moroni', '1548', NULL, 'Attribution-ShareAlike 4.0 International', NULL, 2, FALSE),
('saint-clare', '/saints/saint-clare_arco.jpg', 'Saint Clare Painting', 'Saint Clare, by Alonso del Arco, from The Bowes Museum', 'Alonso del Arco', '17th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Jane Frances de Chantal
('saint-jane-frances-de-chantal', '/saints/saint-jane-frances-de-chantal.webp', 'Saint Jane Frances de Chantal Painting', 'Saint Jane Frances de Chantal, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-jane-frances-de-chantal', '/saints/saint-jane-frances-de-chantal_2.jpg', 'Saint Jane Frances de Chantal Painting', 'Saint Jane Frances de Chantal, by an unknown artist, from Monastery of the Visitation of Holy Mary in Toledo (Ohio)', NULL, '19th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-jane-frances-de-chantal', '/saints/saint-francis-de-sales-&-jane-frances-de-chantal.jpg', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal Painting', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal, by an unknown artist, from Monastery of the Visitation (Paris)', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-jane-frances-de-chantal', '/saints/saint-francis-de-sales-&-jane-frances-de-chantal_bayeu.jpg', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal Painting', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal, by Francisco Bayeu, from Museo del Prado', 'Francisco Bayeu', '18th Century', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-jane-frances-de-chantal', '/saints/saint-francis-de-sales-&-jane-frances-de-chantal_halle.jpg', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal Painting', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal, by Noël Hallé, from Saint-Louis-en-l''Île Church', 'Noël Hallé', '18th Century', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint Pontian
('saint-pontian', '/saints/saint-pontian_aretino.jpg', 'Saint Pontian Painting', 'Saint Pontian, by Aretino, from Museo del Prado', 'Aretino', '1530-1535', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-pontian', '/saints/saint-pontian_montor.jpg', 'Saint Pontian Illustration', 'Saint Pontian, by Alexis-François Artaud de Montor, from The Lives and Times of the Popes', 'Alexis-François Artaud de Montor', '1842', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-pontian', '/saints/saint-pontian.jpg', 'Saint Pontian Mosaic', 'Saint Pontian, by an unknown artist, from Papal Basilica of Saint Paul Outside the Walls', NULL, '19th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-pontian', '/saints/saint-pontian_echave_martyr.jpg', 'The Martyrdom of Saint Pontian Painting', 'The Martyrdom of Saint Pontian, by Baltasar de Echave Orio, from Museo Nacional de Arte (Mexico)', 'Baltasar de Echave Orio', '1612', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Hippolytus of Rome
('saint-hippolytus-of-rome', '/saints/saint-hippolytus-of-rome.jpg', 'Saint Hippolytus of Rome Icon', 'Saint Hippolytus of Rome, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-hippolytus-of-rome', '/saints/saint-hippolytus-of-rome_icon.jpg', 'Saint Hippolytus of Rome Icon', 'Saint Hippolytus of Rome, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-hippolytus-of-rome', '/saints/saint-hippolytus-of-rome_julien_martyr.jpg', 'The Martyrdom of Saint Hippolytus of Rome Painting', 'The Martyrdom of Saint Hippolytus of Rome, by Simon Julien, from Lyon Cathedral', 'Simon Julien', '1762', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Maximus the Confessor
('saint-maximus-the-confessor', '/saints/saint-maximus-the-confessor.jpg', 'Saint Maximus the Confessor Fresco', 'Saint Maximus the Confessor, by an unknown artist', NULL, '14th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-maximus-the-confessor', '/saints/saint-maximus-the-confessor_icon.jpg', 'Saint Maximus the Confessor Icon', 'Saint Maximus the Confessor, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-maximus-the-confessor', '/saints/saint-maximus-the-confessor_icon_2.jpg', 'Saint Maximus the Confessor Icon', 'Saint Maximus the Confessor, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-maximus-the-confessor', '/saints/saint-maximus-the-confessor_2.png', 'Saint Maximus the Confessor Fresco', 'Saint Maximus the Confessor, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Maximilien Kolbe
('saint-maximilien-kolbe', '/saints/saint-maximilien-kolbe_pawlowski.jpg', 'Saint Maximilien Kolbe Painting', 'Saint Maximilien Kolbe, by Kevin Pawlowski', 'Kevin Pawlowski', '2023', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-maximilien-kolbe', '/saints/saint-maximilien-kolbe.jpg', 'Saint Maximilien Kolbe Photograph', 'Saint Maximilien Kolbe, by an unknown photographer', NULL, '1936', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-maximilien-kolbe', '/saints/saint-maximilien-kolbe_2.jpg', 'Saint Maximilien Kolbe Painting', 'Saint Maximilien Kolbe, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Stephen of Hungary
('saint-stephen-of-hungary', '/saints/saint-stephen-of-hungary.jpg', 'Saint Stephen of Hungary Painting', 'Saint Stephen of Hungary, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-stephen-of-hungary', '/saints/saint-stephen-of-hungary_2.jpg', 'Saint Stephen of Hungary Painting', 'Saint Stephen of Hungary, by an unknown artist, from Hungarian National Museum', NULL, '17th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-stephen-of-hungary', '/saints/saint-stephen-of-hungary_verhaghen.jpg', 'Saint Stephen of Hungary Receiving the Legate Painting', 'Saint Stephen of Hungary, by Pieter-Jozef Verhaghen, from Museum of Fine Arts (Budapest)', 'Pieter-Jozef Verhaghen', '1770', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-stephen-of-hungary', '/saints/saint-stephen-of-hungary_3.jpg', 'Saint Stephen of Hungary Painting', 'Saint Stephen of Hungary, by an unknown artist, from Museum of Fine Arts (Budapest)', NULL, '18th Century', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint John Eudes
('saint-john-eudes', '/saints/saint-john-eudes.jpg', 'Saint John Eudes Painting', 'Saint John Eudes, by an unknown artist', NULL, '1673', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-eudes', '/saints/saint-john-eudes_2.jpg', 'Saint John Eudes Painting', 'Saint John Eudes, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Bernard (of Clairvaux)
('saint-bernard', '/saints/saint-bernard_latil.jpg', 'Saint Bernard Painting', 'Saint Bernard, by François Vincent Latil (from Philippe de Champaigne), from Saint-Étienne-du-Mont (Paris)', 'François Vincent Latil', '19th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-bernard', '/saints/saint-bernard_greco.jpg', 'Saint Bernard Painting', 'Saint Bernard, by El Greco, from Hermitage Museum', 'El Greco', '1577-1579', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-bernard', '/saints/saint-bernard_goya.jpg', 'Saint Bernard of Clairvaux Curing a Cripple Painting', 'Saint Bernard of Clairvaux Curing a Cripple, by Francisco Goya, from Real Monasterio de San Joaquín y Santa Ana', 'Francisco Goya', '1787', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-bernard', '/saints/saint-bernard_ribalta.jpg', 'Christ Embracing Saint Bernard Painting', 'Christ Embracing Saint Bernard, by Francisco Ribalta, from Museo del Prado', 'Francisco Ribalta', '1625-1627', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-bernard', '/saints/saint-bernard_cano.jpg', 'The Vision of Saint Bernard Painting', 'The Vision of Saint Bernard, by Alonso Cano, from Museo del Prado', 'Alonso Cano', '1650', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-bernard', '/saints/saint-bernard_signol.jpg', 'Saint Bernard preaching the second Crusade at Vezelay painting', 'Saint Bernard preaching the second Crusade at Vezelay, by Émile Signol, from Château de Versailles', 'Émile Signol', '1840', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-bernard', '/saints/saint-bernard_vivar.jpg', 'Saint Bernard Painting', 'Saint Bernard, by Juan Correa de Vivar, from Museo del Prado', 'Juan Correa de Vivar', '1540-1545', NULL, 'Public Domain', NULL, 7, FALSE),

-- Saint Pius X
('saint-pius-x', '/saints/saint-pius-x_gerrer.jpg', 'Saint Pius X Painting', 'Saint Pius X, by Gregory Gerrer', 'Gregory Gerrer', '1904', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-pius-x', '/saints/saint-pius-x.jpg', 'Saint Pius X Photograph', 'Saint Pius X, by Ernest Walter Histed, from National Portrait Gallery (London)', 'Ernest Walter Histed', '1914', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-pius-x', '/saints/saint-pius-x_bordignon.jpg', 'Saint Pius X Painting', 'Saint Pius X, by Noè Bordignon, from Diocesan museum of Padua (Italy)', 'Noè Bordignon', '1920', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Rose of Lima
('saint-rose-of-lima', '/saints/saint-rose-of-lima_coello.jpg', 'Saint Rose of Lima Painting', 'Saint Rose of Lima, by Claudio Coello, from Museo del Prado', 'Claudio Coello', '1683', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-rose-of-lima', '/saints/saint-rose-of-lima.jpg', 'Saint Rose of Lima with Child Jesus Painting', 'Saint Rose of Lima with Child Jesus, by an unknown artist, from Lima Art Museum', NULL, '17th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-rose-of-lima', '/saints/saint-rose-of-lima_medoro.jpg', 'Saint Rose of Lima Painting', 'Saint Rose of Lima, by Angelino Medoro, from Santuario de Santa Rosa (Lima)', 'Angelino Medoro', '1617', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-rose-of-lima', '/saints/saint-rose-of-lima_laso.jpg', 'Saint Rose of Lima Painting', 'Saint Rose of Lima, by Francisco Laso, from Pinacoteca Municipal Ignacio Merino', 'Francisco Laso', '1859', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-rose-of-lima', '/saints/saint-rose-of-lima_murillo.jpg', 'Saint Rose of Lima Painting', 'Saint Rose of Lima, by Bartolomé Esteban Murillo', 'Bartolomé Esteban Murillo', '1670-1680', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-rose-of-lima', '/saints/saint-rose-of-lima_briggs.jpg', 'Saint Rose of Lima Painting', 'Saint Rose of Lima, by Gwyneth Thompson Briggs', 'Gwyneth Thompson Briggs', '21th Century', NULL, 'Public Domain', NULL, 6, FALSE),

-- Saint Bartholomew, Apostle
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_rubens.jpg', 'Saint Bartholomew Apostle Painting', 'Saint Bartholomew the Apostle, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1611', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_dyck.jpg', 'Saint Bartholomew Apostle Painting', 'Saint Bartholomew the Apostle, by Anthony van Dyck, from Staatliche Kunstsammlungen Dresden', 'Anthony van Dyck', '1618-1620', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_ribera.jpg', 'Saint Bartholomew Apostle Painting', 'Saint Bartholomew the Apostle, by Jusepe de Ribera, from Museo del Prado', 'Jusepe de Ribera', '1630', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_zurbaran.jpg', 'Saint Bartholomew Apostle Painting', 'Saint Bartholomew the Apostle, by Francisco de Zurbarán, from National Museum of Ancient Art (Lisbon)', 'Francisco de Zurbarán', '1633', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_rembrandt.jpg', 'Saint Bartholomew Apostle Painting', 'Saint Bartholomew the Apostle, by Rembrandt, from Timken Museum of Art', 'Rembrandt', '1657', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_rembrandt_2.jpg', 'Saint Bartholomew Apostle Painting', 'Saint Bartholomew the Apostle, by Rembrandt, from Getty Center', 'Rembrandt', '1661', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle-cavallino.jpg', 'Saint Bartholomew Apostle Painting', 'Saint Bartholomew the Apostle, by Bernardo Cavallino, from National Gallery', 'Bernardo Cavallino', '17th Century', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_ribera_martyr.jpg', 'The Martyrdom of Saint Bartholomew Painting', 'The Martyrdom of Saint Bartholomew, by Jusepe de Ribera, from Colegiata de Nuestra Señora de la Asunción', 'Jusepe de Ribera', '1616-1617', NULL, 'Public Domain', NULL, 8, FALSE),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_tiepolo_martyr.jpg', 'The Martyrdom of Saint Bartholomew Painting', 'The Martyrdom of Saint Bartholomew, by Giambattista Tiepolo, from San Stae', 'Giambattista Tiepolo', '1722', NULL, 'Public Domain', NULL, 9, FALSE),

-- Saint Louis
('saint-louis', '/saints/saint-louis_signol.jpg', 'Saint Louis Painting', 'Saint Louis, by Émile Signol, from Château de Versailles', 'Émile Signol', '1844', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-louis', '/saints/saint-louis_lagrenee.jpg', 'Meeting between Innocent IV and Saint Louis Painting', 'Meeting between Innocent IV and Saint Louis, by Louis-Jean-François Lagrenée, from Musée du Louvre', 'Louis-Jean-François Lagrenée', '1773', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-louis', '/saints/saint-louis_cabanel.jpg', 'The Glorification of Saint Louis Painting', 'The Glorification of Saint Louis, by Alexandre Cabanel, from Musée Fabre', 'Alexandre Cabanel', '1853-1855', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-louis', '/saints/saint-louis_greco.jpg', 'Saint Louis Painting', 'Saint Louis, by El Greco, from Musée du Louvre', 'El Greco', '1592', NULL, 'Public Domain', NULL, 4, FALSE),
-- ('saint-louis', '/saints/saint-louis_thevenin.jpg', 'Saint Louis Painting', 'Saint Louis, by Charles Thévenin, from Château de Versailles', 'Charles Thévenin', '19th Century', NULL, 'Public Domain', NULL, 4, FALSE),
-- thevenin copyright chateau versailles
('saint-louis', '/saints/saint-louis_loo.jpg', 'Coronation of Saint Louis Painting', 'Coronation of Saint Louis, by Charles-Amédée-Philippe van Loo, from Musée du Louvre', 'Charles-Amédée-Philippe van Loo', '1773', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-louis', '/saints/saint-louis_decreuse.jpg', 'Saint Louis Painting', 'Saint Louis, by Auguste de Creuse, from Château de Versailles', 'Auguste de Creuse', '1837', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-louis', '/saints/saint-louis_vien.jpg', 'Saint Louis entrusted the Regency of the Kingdom to his mother Queen Blanche of Castile Painting', 'Saint Louis entrusted the Regency of the Kingdom to his mother Queen Blanche of Castile, by Joseph-Marie Vien, from Musée du Louvre', 'Joseph-Marie Vien', '1773', NULL, 'Public Domain', NULL, 7, FALSE),

-- Saint Joseph Calasanz
('saint-joseph-calasanz', '/saints/saint-joseph-calasanz_casanova.jpg', 'Saint Joseph Calasanz Painting', 'Saint Joseph Calasanz, by Francisco Jover y Casanova, from Museo del Prado', 'Francisco Jover y Casanova', '1879', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-joseph-calasanz', '/saints/saint-joseph-calasanz_corvi.jpg', 'Saint Joseph Calasanz Ressucitating a Child Painting', 'Saint Joseph Calasanz Ressucitating a Child, by Domenico Corvi, from Wadsworth Atheneum', 'Domenico Corvi', '1767', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-joseph-calasanz', '/saints/saint-joseph-calasanz_goya.jpg', 'Last Communion of Saint Joseph Calasanz Painting', 'Last Communion of Saint Joseph Calasanz, by Francisco Goya', 'Francisco Goya', '1819', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Monica
('saint-monica', '/saints/saint-monica_cabanel.jpg', 'Saint Monica Painting', 'Saint Monica, by Alexandre Cabanel, from Milwaukee Art Museum', 'Alexandre Cabanel', '1845', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-monica', '/saints/saint-augustine-&-monica_scheffer.jpg', 'Saint Augustine and Saint Monica Painting', 'Saint Augustine and Saint Monica, by Ary Scheffer, from National Gallery', 'Ary Scheffer', '1854', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-monica', '/saints/saint-monica_gozzoli.jpg', 'Saint Monica Fresco', 'Saint Monica, by Benozzo Gozzoli, from Church of Sant''Agostino (San Gimignano)', 'Benozzo Gozzoli', '1464-1465', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Augustine of Hippo
('saint-augustine-of-hippo', '/saints/saint-augustine-of-hippo_champaigne.jpg', 'Saint Augustine of Hippo Painting', 'Saint Augustine of Hippo, by Philippe de Champaigne, from Los Angeles County Museum of Art', 'Philippe de Champaigne', '1645', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-augustine-of-hippo', '/saints/saint-augustine-of-hippo-&-monica_scheffer.jpg', 'Saint Augustine and Saint Monica Painting', 'Saint Augustine and Saint Monica, by Ary Scheffer, from National Gallery', 'Ary Scheffer', '1854', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-augustine-of-hippo', '/saints/saint-augustine-of-hippo_coello.jpg', 'Saint Augustine of Hippo Painting', 'Saint Augustine of Hippo, by Claudio Coello, from Private Collection', 'Claudio Coello', '17th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-augustine-of-hippo', '/saints/saint-augustine-of-hippo_botticelli.jpg', 'Saint Augustine of Hippo Painting', 'Saint Augustine of Hippo, by Sandro Botticelli, from Ognissanti Church (Florence)', 'Sandro Botticelli', '1480', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-augustine-of-hippo', '/saints/saint-augustine-of-hippo_coello_triumph.jpg', 'The Triumph of Saint Augustine Painting', 'The Triumph of Saint Augustine, by Claudio Coello, from Museo del Prado', 'Claudio Coello', '1664', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-augustine-of-hippo', '/saints/saint-augustine-of-hippo_rubens.jpg', 'Saint Augustine of Hippo Painting', 'Saint Augustine of Hippo, by Peter Paul Rubens, from National Gallery Prague', 'Peter Paul Rubens', '1636-1638', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-augustine-of-hippo', '/saints/saint-augustine-of-hippo_rubens_jesus.jpg', 'Saint Augustine of Hippo with Christ & Virgin Mary Painting', 'Saint Augustine of Hippo with Christ & Virgin Mary, by Peter Paul Rubens, from Royal Academy of Fine Arts of San Fernando', 'Peter Paul Rubens', '1615', NULL, 'Public Domain', NULL, 7, FALSE),

-- =========================
-- September Saints
-- =========================

-- Saint Gregory the Great
('saint-gregory-the-great', '/saints/saint-gregory-the-great_vien.jpg', 'Saint Gregory the Great Painting', 'Saint Gregory the Great, by Joseph-Marie Vien, from Musée Fabre', 'Joseph-Marie Vien', '1766', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-gregory-the-great', '/saints/saint-gregory-the-great_ribera.jpg', 'Saint Gregory the Great Painting', 'Saint Gregory the Great, by Jusepe de Ribera, from Galleria Nazionale d''Arte Antica (Rome)', 'Jusepe de Ribera', '1614', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-gregory-the-great', '/saints/saint-gregory-the-great_stom.jpg', 'Saint Gregory the Great Painting', 'Saint Gregory the Great, by Matthias Stom, from Kunstmuseum Basel', 'Matthias Stom', '17th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-gregory-the-great', '/saints/saint-gregory-the-great_theodoric.jpg', 'Saint Gregory the Great Painting', 'Saint Gregory the Great, by Master Theodoric, from National Gallery Prague', 'Master Theodoric', '1370', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-gregory-the-great', '/saints/saint-gregory-the-great_gasparro.jpg', 'Saint Gregory the Great Painting', 'Saint Gregory the Great, by Giovanni Gasparro, from Museo Diocesano (Lecce)', 'Giovanni Gasparro', '2017', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint Teresa of Calcutta
('saint-teresa-of-calcutta', '/saints/saint-teresa-of-calcutta_zumo.jpg', 'Saint Teresa of Calcutta Painting', 'Saint Teresa of Calcutta, by Jacob Zumo', 'Jacob Zumo', '2024', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-teresa-of-calcutta', '/saints/saint-teresa-of-calcutta_bettmann.jpg', 'Saint Teresa of Calcutta Photograph', 'Saint Teresa of Calcutta, by an unknown photographer, from Bettmann Archive', NULL, '1988', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-teresa-of-calcutta', '/saints/saint-teresa-of-calcutta.jpg', 'Saint Teresa of Calcutta Photograph', 'Saint Teresa of Calcutta, by an unknown photographer', NULL, '1995', NULL, 'Attribution-ShareAlike 2.0 Generic', NULL, 3, FALSE),

-- Saint Peter Claver
('saint-peter-claver', '/saints/saint-peter-claver.jpg', 'Saint Peter Claver Painting', 'Saint Peter Claver, by an unknown artist, from Palace of the Inquisition (Cartagena)', NULL, NULL, NULL, 'Attribution-ShareAlike 4.0 International', NULL, 1, TRUE),
('saint-peter-claver', '/saints/saint-peter-claver_vitta.jpg', 'Saint Peter Claver Engraving', 'Saint Peter Claver, by Joseph Vitta (after Pietro Gagliardi)', 'Joseph Vitta', NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-peter-claver', '/saints/saint-peter-claver_2.jpg', 'Saint Peter Claver Painting', 'Saint Peter Claver, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint John Chrysostom
('saint-john-chrysostom', '/saints/saint-john-chrysostom_champaigne.jpg', 'Saint John Chrysostom Illustration', 'Saint John Chrysostom, by Jean-Baptiste de Champaigne, from Rijksmuseum', 'Jean-Baptiste de Champaigne', '17th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-chrysostom', '/saints/saint-john-chrysostom_wencker.jpg', 'Saint John Chrystostomos Preaching Before the Empress Eudoxia Painting', 'Saint John Chrystostomos Preaching Before the Empress Eudoxia, by Joseph Wencker, from Musée Crozatier', 'Joseph Wencker', '1880-1881', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-chrysostom', '/saints/saint-john-chrysostom_mosaic.jpg', 'Saint John Chrysostom Mosaic', 'Saint John Chrysostom, by an unknown artist, from Hagia Sophia (Constantinople)', NULL, '9th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Cornelius
('saint-cornelius', '/saints/saint-cornelius.jpg', 'Saint Cornelius Painting', 'Saint Cornelius, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-cornelius', '/saints/saint-cornelius_2.jpg', 'Saint Cornelius Stained Glass', 'Saint Cornelius, by Master of Saint Severin, from Victoria and Albert Museum (London)', 'Master of Saint Severin', '1520-1521', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-cornelius', '/saints/saint-cornelius_mosaic.jpg', 'Saint Cornelius Mosaic', 'Saint Cornelius, by an unknown artist, from Santa Maria in Trastevere (Rome)', NULL, '13th Century', NULL, 'Attribution-ShareAlike 4.0 International', NULL, 3, FALSE),
('saint-cornelius', '/saints/saint-cornelius_3.jpg', 'Saint Cornelius Mosaic', 'Saint Cornelius, by an unknown artist, from Papal Basilica of Saint Paul Outside the Walls', NULL, '19th Century', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-cornelius', '/saints/saint-anthony-abbot-&-cornelius-&-cyprian_veronese.jpg', 'Saint Anthony the Great with Saints Cornelius and Cyprian Painting', 'Saint Anthony the Great with Saints Cornelius and Cyprian, by Paolo Veronese, from Pinacoteca di Brera (Milan)', 'Paolo Veronese', '1565-1571', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint Cyprian
('saint-cyprian', '/saints/saint-cyprian.jpg', 'Saint Cyprian Illustration', 'Saint Cyprian, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-cyprian', '/saints/saint-cyprian_2.jpg', 'Saint Cyprian Painting', 'Saint Cyprian, by Master of Messkirch, from Staatsgalerie Stuttgart', 'Master of Messkirch', '1535-1540', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-cyprian', '/saints/saint-anthony-abbot-&-cornelius-&-cyprian_veronese.jpg', 'Saint Anthony the Great with Saints Cornelius and Cyprian Painting', 'Saint Anthony the Great with Saints Cornelius and Cyprian, by Paolo Veronese, from Pinacoteca di Brera (Milan)', 'Paolo Veronese', '1565-1571', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Robert Bellarmine
('saint-robert-bellarmine', '/saints/saint-robert-bellarmine.jpg', 'Saint Robert Bellarmine Painting', 'Saint Robert Bellarmine, by an unknown artist, from Plantin–Moretus Museum (Antwerp)', NULL, '1622-1623', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-robert-bellarmine', '/saints/saint-robert-bellarmine_2.png', 'Saint Robert Bellarmine Painting', 'Saint Robert Bellarmine, by an unknown artist', NULL, '17th Century', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Hildegard of Bingen
('saint-hildegard-of-bingen', '/saints/saint-hildegard-of-bingen.jpg', 'Saint Hildegard von Bingen receives a divine inspiration and passes it on to her scribe Illumination', 'Saint Hildegard von Bingen receives a divine inspiration and passes it on to her scribe, by an unknown artist, from the Rupertsberg Codex of Liber Scivias', NULL, '1151', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-hildegard-of-bingen', '/saints/saint-hildegard-of-bingen_2.jpg', 'Saint Hildegard of Bingen Fresco', 'Saint Hildegard of Bingen, by an unknown artist, from Eibingen Abbey', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-hildegard-of-bingen', '/saints/saint-hildegard-of-bingen_3.webp', 'Saint Hildegard of Bingen Painting', 'Saint Hildegard of Bingen, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-hildegard-of-bingen', '/saints/saint-hildegard-of-bingen_casparo.jpg', 'The Vision of the Church of Saint Hildegard von Bingen Painting', 'The Vision of the Church of Saint Hildegard von Bingen, by Giovanni Gasparro', 'Giovanni Gasparro', '2014-2018', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Januarius
('saint-januarius', '/saints/saint-januarius_caravaggio.jpg', 'Saint Januarius Painting', 'Saint Januarius, by Louis Finson (from Caravaggio), from Palmer Museum of Art', 'Louis Finson', '1610-1612', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-januarius', '/saints/saint-januarius_vaccaro.jpg', ' The Ascension of Saint Januarius Painting', 'The Ascension of Saint Januarius, by Andrea Vaccaro, from Museo del Prado', 'Andrea Vaccaro', '1635', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-januarius', '/saints/saint-januarius_solimena.jpg', 'Saint Januarius Painting', 'Saint Januarius, by Francesco Solimena', 'Francesco Solimena', '1702', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-januarius', '/saints/saint-januarius_solimena_miracle.jpg', 'The Miracle of Saint Januarius Painting', 'The Miracle of Saint Januarius, by Francesco Solimena', 'Francesco Solimena', NULL, NULL, 'Public Domain', NULL, 4, FALSE),
('saint-januarius', '/saints/saint-januarius_solimena_prison.jpg', 'Saint Januarius visited in prison by Proculus and Sosius Painting', 'Saint Januarius visited in prison by Proculus and Sosius, by Francesco Solimena', 'Francesco Solimena', NULL, NULL, 'Public Domain', NULL, 5, FALSE),
('saint-januarius', '/saints/saint-januarius_gentileschi_martyr.jpg', 'The Martyrdom of Saint Januarius in the Amphitheatre at Pozzuoli Painting', 'The Martyrdom of Saint Januarius in the Amphitheatre at Pozzuoli, by Artemisia Gentileschi, from Pozzuoli cathedral', 'Artemisia Gentileschi', '1636-1637', NULL, 'Public Domain', NULL, 6, FALSE),

-- Saint Andrew Kim Tae-gon
('saint-andrew-kim-tae-gon', '/saints/saint-andrew-kim-tae-gon.jpg', 'Saint Andrew Kim Tae-gon Painting', 'Saint Andrew Kim Tae-gon, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-andrew-kim-tae-gon', '/saints/saint-andrew-kim-tae-gon-&-companions.jpg', 'Saint Andrew Kim Tae-gon and Companions Painting', 'Saint Andrew Kim Tae-gon and Companions, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Paul Chong Ha-sang
('saint-paul-chong-ha-sang', '/saints/saint-paul-chong-ha-sang_warford_no-watermark.jpg', 'Saint Paul Chong Ha-sang Painting', 'Saint Paul Chong Ha-sang, by John Alan Warford', 'John Alan Warford', '21th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-paul-chong-ha-sang', '/saints/saint-paul-chong-ha-sang-&-companions.jpg', 'Saint Paul Chong Ha-sang and Companions Illustration', 'Saint Paul Chong Ha-sang and Companions, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-paul-chong-ha-sang', '/saints/saint-andrew-kim-tae-gon-&-companions.jpg', 'Saint Andrew Kim Tae-gon and Companions Painting', 'Saint Andrew Kim Tae-gon and Companions, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Matthew, Apostle and Evangelist
('saint-matthew', '/saints/saint-matthew_rubens.jpg', 'Saint Matthew Painting', 'Saint Matthew the Apostle and Evangelist, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1611', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-matthew', '/saints/saint-matthew_dyck.jpg', 'Saint Matthew Painting', 'Saint Matthew the Apostle and Evangelist, by Anthony van Dyck, from King Baudouin Foundation', 'Anthony van Dyck', '1618-1620', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-matthew', '/saints/saint-matthew_rembrandt.jpg', 'The Evangelist Matthew and the Angel Painting', 'The Evangelist Matthew and the Angel, by Rembrandt, from Louvre-Lens', 'Rembrandt', '1661', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-matthew', '/saints/saint-matthew_caravaggio.jpg', 'The Inspiration of Saint Matthew Painting', 'The Inspiration of Saint Matthew, by Caravaggio, from San Luigi dei Francesi (Rome)', 'Caravaggio', '1602', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-matthew', '/saints/saint-matthew_caravaggio_calling.jpg', 'The Calling of Saint Matthew Painting', 'The Calling of Saint Matthew, by Caravaggio, from San Luigi dei Francesi (Rome)', 'Caravaggio', '1599-1600', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-matthew', '/saints/saint-matthew_caravaggio_martyr.jpg', 'The Martyrdom of Saint Matthew Painting', 'The Martyrdom of Saint Matthew, by Caravaggio, from San Luigi dei Francesi (Rome)', 'Caravaggio', '1599-1600', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-matthew', '/saints/saint-matthew_hals.jpg', 'Saint Matthew Painting', 'Saint Matthew, by Frans Hals, from Odesa Museum of Western and Eastern Art', 'Frans Hals', '1625', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-matthew', '/saints/saint-matthew_reni.jpg', 'Saint Matthew Painting', 'Saint Matthew, by Guido Reni, from Pinacoteca Vaticana', 'Guido Reni', '1635', NULL, 'Public Domain', NULL, 8, FALSE),
('saint-matthew', '/saints/saint-matthew_zurbaran.jpg', 'Saint Matthew Painting', 'Saint Matthew, by Francisco de Zurbarán, from National Museum of Ancient Art', 'Francisco de Zurbarán', '1633', NULL, 'Public Domain', NULL, 9, FALSE),

-- Saint Pius of Pietrelcina
('saint-pius-of-pietrelcina', '/saints/saint-pius-of-pietrelcina_2.jpg', 'Saint Pius of Pietrelcina Painting', 'Saint Pius of Pietrelcina, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-pius-of-pietrelcina', '/saints/saint-pius-of-pietrelcina_dughetti.jpg', 'Saint Pius of Pietrelcina Drawing', 'Saint Pius of Pietrelcina, by Roberto Dughetti', 'Roberto Dughetti', '1966', NULL, 'Attribution-ShareAlike 3.0 Unported', NULL, 2, FALSE),
('saint-pius-of-pietrelcina', '/saints/saint-pius-of-pietrelcina.jpg', 'Saint Pius of Pietrelcina Photograph', 'Saint Pius of Pietrelcina, by Elia Stelluto', 'Elia Stelluto', '20th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-pius-of-pietrelcina', '/saints/saint-pius-of-pietrelcina_3_no-watermark.jpg', 'Saint Pius of Pietrelcina Photograph', 'Saint Pius of Pietrelcina, by Elia Stelluto', 'Elia Stelluto', '20th Century', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Cosmas
('saint-cosmas', '/saints/saint-cosmas-&-damian.jpg', 'Saint Cosmas and Saint Damian Illustration', 'Saint Cosmas and Saint Damian, by Jean Bourdichon, from Bibliothèque Nationale de France', 'Jean Bourdichon', '1503-1508', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-cosmas', '/saints/saint-cosmas-&-damian_2.jpg', 'Saint Cosmas and Saint Damian Painting', 'Saint Cosmas and Saint Damian, by Hans von Kulmbach, from Germanisches Nationalmuseum', 'Hans von Kulmbach', '1507-1508', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-cosmas', '/saints/saint-cosmas-&-damian_3.jpg', 'Saint Cosmas and Saint Damian Icon', 'Saint Cosmas and Saint Damian, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-cosmas', '/saints/saint-cosmas-&-damian_4.jpg', 'Saint Cosmas and Saint Damian Icon', 'Saint Cosmas and Saint Damian, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Damian
('saint-damian', '/saints/saint-cosmas-&-damian.jpg', 'Saint Cosmas and Saint Damian Illustration', 'Saint Cosmas and Saint Damian, by Jean Bourdichon, from Bibliothèque Nationale de France', 'Jean Bourdichon', '1503-1508', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-damian', '/saints/saint-cosmas-&-damian_2.jpg', 'Saint Cosmas and Saint Damian Painting', 'Saint Cosmas and Saint Damian, by Hans von Kulmbach, from Germanisches Nationalmuseum', 'Hans von Kulmbach', '1507-1508', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-damian', '/saints/saint-cosmas-&-damian_3.jpg', 'Saint Cosmas and Saint Damian Icon', 'Saint Cosmas and Saint Damian, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-damian', '/saints/saint-cosmas-&-damian_4.jpg', 'Saint Cosmas and Saint Damian Icon', 'Saint Cosmas and Saint Damian, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Vincent de Paul
('saint-vincent-de-paul', '/saints/saint-vincent-de-paul_gerome.webp', 'Saint Vincent de Paul Painting', 'Saint Vincent de Paul, by Jean-Léon Gérôme, from Musée Jean-Léon Gérôme', 'Jean-Léon Gérôme', '1847', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-vincent-de-paul', '/saints/saint-vincent-de-paul_delaroche.jpg', 'Saint Vincent de Paul Preaching to the Court of Louis XIII on Behalf of the Abandoned Children Painting', 'Saint Vincent de Paul Preaching to the Court of Louis XIII on Behalf of the Abandoned Children, by Paul Delaroche, from Yale University Art Gallery', 'Paul Delaroche', '1823', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-vincent-de-paul', '/saints/saint-vincent-de-paul_tours.png', 'Saint Vincent de Paul Painting', 'Saint Vincent de Paul, by Simon François de Tours', 'Simon François de Tours', '17th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Wenceslaus
('saint-wenceslaus', '/saints/saint-wenceslaus_caroselli.jpg', 'Saint Wenceslaus Painting', 'Saint Wenceslaus, by Angelo Caroselli, from Kunsthistorisches Museum', 'Angelo Caroselli', '1627-1630', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-wenceslaus', '/saints/saint-wenceslaus_skreta.jpg', 'Saint Wenceslaus Painting', 'Saint Wenceslaus, by Karel Škréta, from National Museum in Warsaw', 'Karel Škréta', '17th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-wenceslaus', '/saints/saint-wenceslaus_tkadlik.jpg', 'Saint Wenceslaus & Saint Ludmila during the Mass Painting', 'Saint Wenceslaus & Saint Ludmila during the Mass, by František Tkadlík, from National Gallery Prague', 'František Tkadlík', '1837', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Lawrence Ruiz
('saint-lawrence-ruiz', '/saints/saint-lawrence-ruiz_warford_no-watermark.jpg', 'Saint Lawrence Ruiz Painting', 'Saint Lawrence Ruiz, by John Alan Warford', 'John Alan Warford', '21th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-lawrence-ruiz', '/saints/saint-lawrence-ruiz_stained-glass.jpg', 'Saint Lawrence Ruiz Stained Glass', 'Saint Lawrence Ruiz, by an unknown artist, from Cubao Cathedral (Philippines)', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-lawrence-ruiz', '/saints/saint-lawrence-ruiz-&-companions.jpg', 'Saint Lawrence Ruiz and Companions Illustration', 'Saint Lawrence Ruiz and Companions, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Jerome
('saint-jerome', '/saints/saint-jerome_ribera.jpg', 'Saint Jerome Painting', 'Saint Jerome, by Jusepe de Ribera, from Museum of Fine Arts (Budapest)', 'Jusepe de Ribera', '1620', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-jerome', '/saints/saint-jerome_vanni.jpg', 'Saint Jerome Painting', 'Saint Jerome, by Francesco Vanni', 'Francesco Vanni', '17th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-jerome', '/saints/saint-jerome_dyck.jpg', 'Saint Jerome Meditating in the Desert Painting', 'Saint Jerome Meditating in the Desert, by Anthony van Dyck, from Museum Boijmans Van Beuningen', 'Anthony van Dyck', '1619', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-jerome', '/saints/saint-jerome_caravaggio.jpg', 'Saint Jerome Writing Painting', 'Saint Jerome Writing, by Caravaggio, from Galleria Borghese (Rome)', 'Caravaggio', '1605-1606', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-jerome', '/saints/saint-jerome_brugghen.jpg', 'Saint Jerome Painting', 'Saint Jerome, by Hendrick ter Brugghen, from The Cleveland Museum of Art', 'Hendrick ter Brugghen', '1621', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-jerome', '/saints/saint-jerome_durer.jpg', 'Saint Jerome in the Wilderness Painting', 'Saint Jerome in the Wilderness, by Albrecht Dürer, from National Gallery (London)', 'Albrecht Dürer', '1496', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-jerome', '/saints/saint-jerome_vouet.jpg', 'Saint Jerome and the Angel Painting', 'Saint Jerome and the Angel, by Simon Vouet, from National Gallery of Art (Washington, D.C.)', 'Simon Vouet', '1622-1625', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-jerome', '/saints/saint-jerome_barocci.jpg', 'Saint Jerome Painting', 'Saint Jerome, by Federico Barocci, from Galleria Borghese', 'Federico Barocci', '1600', NULL, 'Public Domain', NULL, 8, FALSE),
('saint-jerome', '/saints/saint-jerome_goya.jpg', ' Saint Jerome in Penitence Painting', 'Saint Jerome in Penitence, by Francisco Goya', 'Francisco Goya', '1798', NULL, 'Public Domain', NULL, 9, FALSE),

-- =========================
-- October Saints
-- =========================

-- Saint Thérèse of the Child Jesus
('saint-therese-of-the-child-jesus', '/saints/saint-therese-of-the-child-jesus_wingate.jpg', 'Saint Thérèse of the Child Jesus Painting', 'Saint Thérèse of the Child Jesus, by Henry Wingate', 'Henry Wingate', '2016', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-therese-of-the-child-jesus', '/saints/saint-therese-of-the-child-jesus_celine.jpg', 'Saint Thérèse of the Child Jesus Painting', 'Saint Thérèse of the Child Jesus, by Céline Martin, from Carmel of Lisieux', 'Céline Martin', '1925', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-therese-of-the-child-jesus', '/saints/saint-therese-of-the-child-jesus_celine_photo.jpg', 'Saint Thérèse of the Child Jesus Photograph', 'Saint Thérèse of the Child Jesus, Photographed by Céline Martin, from Carmel of Lisieux', 'Céline Martin', '1896', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-therese-of-the-child-jesus', '/saints/saint-therese-of-the-child-jesus_celine_photo_2.jpg', 'Saint Thérèse of the Child Jesus with Rosary Photograph', 'Saint Thérèse of the Child Jesus with Rosary, Photographed by Céline Martin, from Carmel of Lisieux', 'Céline Martin', '1896', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-therese-of-the-child-jesus', '/saints/saint-therese-of-the-child-jesus_celine_photo_2.jpg', 'Saint Thérèse of the Child Jesus dressed as Joan of Arc Photograph', 'Saint Thérèse of the Child Jesus dressed as Joan of Arc, Photographed by Céline Martin, from Carmel of Lisieux', 'Céline Martin', '1895', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-therese-of-the-child-jesus', '/saints/saint-therese-of-the-child-jesus.jpg', 'Saint Thérèse of the Child Jesus Painting', 'Saint Thérèse of the Child Jesus, by an unknown artist, from Santa Teresa del Bambin Gesù in Panfilo (Rome)', NULL, NULL, NULL, 'Public Domain', NULL, 6, FALSE),

-- The painting of St. Therese of Avila in the church Chiesa di San Franceso d Assisi by A. Nicolas (1931). ???

-- Saint Francis of Assisi
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_caravaggio.jpg', 'Saint Francis in Prayer Painting', 'Saint Francis in Prayer, by Caravaggio, from Galleria Nazionale d''Arte Antica (Rome)', 'Caravaggio', '1595-1606', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_zurbaran.jpg', 'Saint Francis of Assisi Painting', 'Saint Francis of Assisi, by Francisco de Zurbarán, from National Gallery (London)', 'Francisco de Zurbarán', '1635-1639', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_fruytiers.jpg', 'Saint Francis of Assisi Painting', 'Saint Francis of Assisi, by Philip Fruytiers, from Royal Museum of Fine Arts Antwerp', 'Philip Fruytiers', '17th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_murillo.jpg', 'Saint Francis of Assisi Painting', 'Saint Francis of Assisi, by Bartolomé Esteban Murillo, from Cathedral of Our Lady (Antwerp)', 'Bartolomé Esteban Murillo', '1645-1650', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_ribera.jpg', 'Saint Francis of Assisi Painting', 'Saint Francis of Assisi, by Jusepe de Ribera, from Escurial', 'Jusepe de Ribera', '1642', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_tiepolo.jpg', 'Saint Francis of Assisi receiving the Stigmata Painting', 'Saint Francis of Assisi receiving the Stigmata, by Giambattista Tiepolo, from Museo del Prado', 'Giambattista Tiepolo', '1767-1769', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_murillo_2.jpg', 'Saint Francis embracing Christ on the Cross Painting', 'Saint Francis of Assisi embracing Christ on the Cross, by Bartolomé Esteban Murillo, from Museum of Fine Arts of Seville', 'Bartolomé Esteban Murillo', '1668-1669', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_schut.jpg', 'Miracle of the Portiuncula Painting', 'Miracle of the Portiuncula, by Cornelis Schut, from Royal Museum of Fine Arts Antwerp', 'Cornelis Schut', '1649', NULL, 'Public Domain', NULL, 8, FALSE),

-- Saint Faustina Kowalska
('saint-faustina-kowalska', '/saints/saint-faustina-kowalska.jpg', 'Saint Faustina Kowalska Painting', 'Saint Faustina Kowalska, by Stanisław Sztama', 'Stanisław Sztama', '20th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-faustina-kowalska', '/saints/saint-faustina-kowalska_2.jpg', 'Saint Faustina Kowalska & Divine Mercy Painting', 'Saint Faustina Kowalska & Divine Mercy, by Helena Tchórzewska', 'Helena Tchórzewska', '20th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-faustina-kowalska', '/saints/saint-faustina-kowalska_photo.jpg', 'Saint Faustina Kowalska Photograph', 'Saint Faustina Kowalska, by an unknown photographer', NULL, '1931', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-faustina-kowalska', '/saints/saint-faustina-kowalska_3.jpg', 'Saint Faustina Kowalska & Divine Mercy Painting', 'Saint Faustina Kowalska & Divine Mercy', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Bruno
('saint-bruno', '/saints/saint-bruno_rosa.jpg', 'Saint Bruno Painting', 'Saint Bruno, by Salvator Rosa, from Complesso di santa Caterina', 'Salvator Rosa', '17th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-bruno', '/saints/saint-bruno_marchesi.jpg', 'Saint Bruno Painting', 'Saint Bruno, by Girolamo Marchesi, from Walters Art Museum', 'Girolamo Marchesi', '1525', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-bruno', '/saints/saint-bruno_mignard.jpg', 'Saint Bruno Painting', 'Saint Bruno, by Nicolas Mignard, from Calvet Museum', 'Nicolas Mignard', '1638', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-bruno', '/saints/saint-bruno_lesueur.jpg', 'The Death of Saint Bruno Painting', 'The Death of Saint Bruno, by Eustache Le Sueur, from Musée du Louvre', 'Eustache Le Sueur', '1645-1648', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Denis
('saint-denis', '/saints/saint-denis.jpg', 'Saint Denis Painting', 'Saint Denis, by an unknown artist', NULL, '17th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-denis', '/saints/saint-denis_vien.jpg', 'Saint Denis Preaching in Gaul Painting', 'Saint Denis Preaching in Gaul, by Joseph-Marie Vien, from Church of Saint-Roch (Paris)', 'Joseph-Marie Vien', '1767', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-denis', '/saints/saint-denis-&-companions_bourdichon.jpg', 'Saint Denis & Companions Illumination', 'Saint Denis & Companions, by Jean Bourdichon, from Book : "Horae ad usum Parisiensem" (Bibliothèque nationale de France)', 'Jean Bourdichon', '1475-1500', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-denis', '/saints/saint-denis-&-companions_bonnat_martyr.jpg', 'The Martyrdom of Saint Denis & Companions Painting', 'The Martyrdom of Saint Denis & Companions, by Léon Bonnat, from Panthéon (Paris)', 'Léon Bonnat', '1880', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint John Leonardi
('saint-john-leonardi', '/saints/saint-john-leonardi.jpg', 'Saint John Leonardi Painting', 'Saint John Leonardi, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-leonardi', '/saints/saint-john-leonardi_2.jpg', 'Saint John Leonardi Painting', 'Saint John Leonardi, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-leonardi', '/saints/saint-john-leonardi_3.webp', 'Saint John Leonardi Painting', 'Saint John Leonardi, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-john-leonardi', '/saints/saint-john-leonardi_4.jpg', 'Saint John Leonardi Painting', 'Saint John Leonardi, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint John Henry Newman
('saint-john-henry-newman', '/saints/saint-john-henry-newman_millais.jpg', 'Saint John Henry Newman Painting', 'Saint John Henry Newman, by John Everett Millais, from National Portrait Gallery (London)', 'John Everett Millais', '1881', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-henry-newman', '/saints/saint-john-henry-newman_photo.gif', 'Saint John Henry Newman Photograph', 'Saint John Henry Newman, by an unknown photographer', NULL, '1887', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-henry-newman', '/saints/saint-john-henry-newman.jpg', 'Saint John Henry Newman Painting', 'Saint John Henry Newman, by an unknown artist, from a Church in Rome', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint John XXIII
('saint-john-xxiii', '/saints/saint-john-xxiii.jpg', 'Saint John XXIII Painting', 'Saint John XXIII, by Kurt Wenner', 'Kurt Wenner', '2022', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-xxiii', '/saints/saint-john-xxiii_photo.jpg', 'Saint John XXIII Photograph', 'Saint John XXIII, Photographed by Fotografia Felici, from Catholic News Service', 'Fotografia Felici', '1959-1962', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-xxiii', '/saints/saint-john-xxiii_photo_2.jpg', 'Saint John XXIII Photograph', 'Saint John XXIII, by an unknown photographer', NULL, '1958-1963', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Callistus I
('saint-callistus-i', '/saints/saint-callistus-i.jpg', 'Saint Callistus I Engraving', 'Saint Callistus I', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-callistus-i', '/saints/saint-callistus-i_2.jpg', 'Saint Callistus I Fresco', 'Saint Callistus I, by an unknown artist, from Papal Basilica of Saint Paul Outside the Walls', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-callistus-i', '/saints/saint-callistus-i_3.jpg', 'Saint Callistus I Illustration', 'Saint Callistus I, by Giovanni Battista de'' Cavalieri, from Book : "Pontificum Romanorum effigies"', 'Giovanni Battista de'' Cavalieri', '1580', NULL, 'CC0 1.0 Universal', NULL, 3, FALSE),

-- Saint Teresa of Jesus (Teresa of Ávila)
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_cagnacci.jpg', 'Saint Teresa of Jesus Painting', 'Saint Teresa of Jesus, by Guido Cagnacci, from Private Collection', 'Guido Cagnacci', '1645', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_murillo.jpg', 'Saint Teresa of Jesus Painting', 'Saint Teresa of Jesus, by Bartolomé Esteban Murillo, from Museo de Bellas Artes de Gran Canaria', 'Bartolomé Esteban Murillo', '1650', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_bazzani.jpg', 'The Ecstasy of Saint Teresa of Jesus', 'The Ecstasy of Saint Teresa of Jesus, by Giuseppe Bazzani, from Museum of Fine Arts (Budapest)', 'Giuseppe Bazzani', '1745-1750', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_balaca.jpg', 'Saint Teresa of Jesus Painting', 'Saint Teresa of Jesus, by Eduardo Balaca, from Museo del Prado', 'Eduardo Balaca', '1877', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_rubens.jpg', 'Saint Teresa of Avila''s Vision of the Dove Painting', 'Saint Teresa of Avila''s Vision of the Dove, by Peter Paul Rubens, from Fitzwilliam Museum', 'Peter Paul Rubens', '1614-1635', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_rubens_2.jpg', 'Saint Teresa of jesus Painting', 'Saint Teresa of Jesus, by Peter Paul Rubens, from Kunsthistorisches Museum', 'Peter Paul Rubens', '1615', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_batoni.jpg', 'Transverberation of Saint Teresa of Jesus Painting', 'Transverberation of Saint Teresa of Jesus, by Pompeo Batoni, from Museo nazionale di Villa Guinigi', 'Pompeo Batoni', '1743', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_vien.jpg', 'Saint Teresa of Jesus Painting', 'Saint Teresa of Jesus, by Joseph-Marie Vien', 'Joseph-Marie Vien', '18th century', NULL, 'Public Domain', NULL, 8, FALSE),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_gerard.jpg', 'Saint Teresa of Jesus Painting', 'Saint Teresa of Jesus, by François Gérard, from Infirmerie Marie-Thérèse (Paris)', 'François Gérard', '1827', NULL, 'Public Domain', NULL, 9, FALSE),

-- Saint Hedwig
('saint-hedwig', '/saints/saint-hedwig.jpg', 'Saint Hedwig Illustration', 'Saint Hedwig, by an unknown artist, from Schlackenwerther Codex', NULL, '1353', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-hedwig', '/saints/saint-hedwig_2.jpg', 'Saint Hedwig Illustration', 'Saint Hedwig, by an unknown artist', NULL, '20th century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-hedwig', '/saints/saint-hedwig_3.jpg', 'Saint Hedwig Illustration', 'Saint Hedwig, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-hedwig', '/saints/saint-hedwig_4.jpg', 'Saint Hedwig Painting', 'Saint Hedwig, by Wojciech Gerson', 'Wojciech Gerson', '1861', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-hedwig', '/saints/saint-hedwig_5.jpg', 'Saint Hedwig Painting', 'Saint Hedwig by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 5, FALSE),
('saint-hedwig', '/saints/saint-hedwig_6.jpg', 'Saint Hedwig Illustration', 'Saint Hedwig, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 6, FALSE),

-- Saint Margaret Mary Alacoque
('saint-margaret-mary-alacoque', '/saints/saint-margaret-mary-alacoque.jpg', 'Saint Margaret Mary Alacoque Painting', 'Saint Margaret Mary Alacoque, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-margaret-mary-alacoque', '/saints/saint-margaret-mary-alacoque_2.jpg', 'Saint Margaret Mary Alacoque Painting', 'Saint Margaret Mary Alacoque, by an unknown artist, from Monastery of Paray-le-Monial', NULL, '19th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-margaret-mary-alacoque', '/saints/saint-margaret-mary-alacoque_3.jpg', 'Saint Margaret Mary Alacoque Vision of sacred Heart Painting', 'Saint Margaret Mary Alacoque Vision of Sacred Heart, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Ignatius of Antioch, Bishop and Martyr
('saint-ignatius-antioch', '/saints/saint-ignatius-antioch.jpg', 'The Martyrdom of Saint Ignatius of Antioch Painting', 'The Martyrdom of Saint Ignatius of Antioch, by an unknown artist', NULL, '17th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-ignatius-antioch', '/saints/saint-ignatius-antioch_2.jpg', 'The Martyrdom of Saint Ignatius of Antioch Painting', 'The Martyrdom of Saint Ignatius of Antioch, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-ignatius-antioch', '/saints/saint-ignatius-antioch_3.jpg', 'Saint Ignatius of Antioch Icon', 'Saint Ignatius of Antioch Icon, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Luke, Evangelist
('saint-luke', '/saints/saint-luke_reni.jpg', 'Saint Luke Painting', 'Saint Luke the Evangelist, by Guido Reni, from Bob Jones University(USA)', 'Guido Reni', '1621', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-luke', '/saints/saint-luke_borovikovsky.jpg', 'Saint Luke Painting', 'Saint Luke the Evangelist, by Vladimir Borovikovsky, from State Russian Museum', 'Vladimir Borovikov', '1804-1809', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-luke', '/saints/saint-luke_hals.jpg', 'Saint Luke Painting', 'Saint Luke the Evangelist, by Frans Hals, from Odesa Museum of Western and Eastern Art', 'Frans Hals', '1625', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-luke', '/saints/saint-luke_weyden.jpg', 'Saint Luke Drawing the Virgin Painting', 'Saint Luke Drawing the Virgin, by Rogier van der Weyden, from Museum of Fine Arts (Boston)', 'Rogier van der Weyden', '1435-1440', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-luke', '/saints/saint-luke_guercino.jpg', 'Saint Luke Displaying a Painting of the Virgin Painting', 'Saint Luke Displaying a Painting of the Virgin, by Il Guercino, from Nelson-Atkins Museum of Art', 'Il Guercino', '1652-1653', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint John de Brébeuf
('saint-john-de-brebeuf', '/saints/saint-john-de-brebeuf.jpg', 'Saint John de Brébeuf Painting', 'Saint John de Brébeuf, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-de-brebeuf', '/saints/saint-john-de-brebeuf_thwaites.jpg', 'Saint John de Brébeuf Drawing', 'Saint John de Brébeuf, by Reuben Gold Thwaites', 'Reuben Gold Thwaites', '1897', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-de-brebeuf', '/saints/saint-john-de-brebeuf-&-companions.png', 'Saint John de Brébeuf & Companions Illustration', 'Saint John de Brébeuf & Companions, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Paul of the Cross
('saint-paul-of-the-cross', '/saints/saint-paul-of-the-cross.jpg', 'Saint Paul of the Cross Painting', 'Saint Paul of the Cross, by an unknown artist', NULL, NULL, NULL, 'Attribution-ShareAlike 4.0 International', NULL, 1, TRUE),
('saint-paul-of-the-cross', '/saints/saint-paul-of-the-cross_2.jpg', 'Saint Paul of the Cross Painting', 'Saint Paul of the Cross, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-paul-of-the-cross', '/saints/saint-paul-of-the-cross_3.jpg', 'Saint Paul of the Cross Painting', 'Saint Paul of the Cross, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-paul-of-the-cross', '/saints/saint-paul-of-the-cross_4.jpg', 'Saint Paul of the Cross Painting', 'Saint Paul of the Cross, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint John Paul II
('saint-john-paul-ii', '/saints/saint-john-paul-ii_bobnick_no-watermark.jpg', 'Saint John Paul II Painting', 'Saint John Paul II, by Dick Bobnick', 'Dick Bobnick', '2015', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-paul-ii', '/saints/saint-john-paul-ii_babailov.jpg', 'Saint John Paul II Painting', 'Saint John Paul II, by Igor Babailov, from Palace of Castel Gandolfo', 'Igor Babailov', '21th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-paul-ii', '/saints/saint-john-paul-ii.jpg', 'Saint John Paul II Photograph', 'Saint John Paul II, by Grzegorz Gałązka', 'Grzegorz Gałązka', NULL, NULL, 'Public Domain', NULL, 3, FALSE),
('saint-john-paul-ii', '/saints/saint-john-paul-ii_2.jpg', 'Saint John Paul II Photograph', 'Saint John Paul II, by an unknown photographer', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),
('saint-john-paul-ii', '/saints/saint-john-paul-ii_tsarkova.jpg', 'Saint John Paul II Painting', 'Saint John Paul II, by Natalia Tsarkova', 'Natalia Tsarkova', '2006', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-john-paul-ii', '/saints/saint-john-paul-ii_tsarkova_2.jpg', 'Saint John Paul II Painting', 'Saint John Paul II, by Natalia Tsarkova', 'Natalia Tsarkova', '2000', NULL, 'Public Domain', NULL, 6, FALSE),

-- Saint John of Capistrano
('saint-john-of-capistrano', '/saints/saint-john-of-capistrano_del-arco.jpg', 'Saint John of Capistrano Painting', 'Saint John of Capistrano, by Alonso del Arco, from Museo del Prado', 'Alonso del Arco', '17th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-of-capistrano', '/saints/saint-john-of-capistrano_grassi.jpg', 'Saint John of Capistrano Painting', 'Saint John of Capistrano, by Nicolò Grassi, from San Francesco della Vigna (Venice)', 'Nicolò Grassi', NULL, NULL, 'Attribution-ShareAlike 4.0 International', NULL, 2, FALSE),
('saint-john-of-capistrano', '/saints/saint-john-of-capistrano.jpg', 'Saint John of Capistrano Illumination', 'Saint John of Capistrano, by an unknown artist', NULL, '1470-1480', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Anthony Mary Claret, Bishop
('saint-anthony-mary-claret', '/saints/saint-anthony-mary-claret.jpg', 'Saint Anthony Mary Claret Painting', 'Saint Anthony Mary Claret, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-anthony-mary-claret', '/saints/saint-anthony-mary-claret_madrazo.jpg', 'Saint Anthony Mary Claret Painting', 'Saint Anthony Mary Claret, by Luis de Madrazo, from Museum of Romanticism (Madrid)', 'Luis de Madrazo', '19th century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-anthony-mary-claret', '/saints/saint-anthony-mary-claret_pujadas.jpg', 'Saint Anthony Mary Claret Photograph', 'Saint Anthony Mary Claret, photographed by Bernardo Pujadas', 'Bernardo Pujadas', '1860', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Simon, Apostle
('saint-simon-apostle', '/saints/saint-simon-apostle_rubens.jpg', 'Saint Simon Apostle Painting', 'Saint Simon the Apostle, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1611', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-simon-apostle', '/saints/saint-simon-apostle_dyck.jpg', 'Saint Simon Apostle Painting', 'Saint Simon the Apostle, by Anthony van Dyck, from Kunsthistorisches Museum', 'Anthony van Dyck', '1619-1621', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-simon-apostle', '/saints/saint-simon-apostle_dyck_2.jpg', 'Saint Simon Apostle Painting', 'Saint Simon the Apostle, by Anthony van Dyck, from Staatliche Kunstsammlungen Dresden', 'Anthony van Dyck', '1618-1620', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-simon-apostle', '/saints/saint-simon-apostle_rembrandt.jpg', 'Saint Simon Apostle Painting', 'Saint Simon the Apostle, by Rembrandt, from Kunsthaus Zürich', 'Rembrandt', '1661', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-simon-apostle', '/saints/saint-simon-apostle_ribera.jpg', 'Saint Simon Apostle Painting', 'Saint Simon the Apostle, by Jusepe de Ribera, from Museo del Prado', 'Jusepe de Ribera', '1630-1635', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-simon-apostle', '/saints/saint-simon-apostle_zurbaran.jpg', 'Saint Simon Apostle Painting', 'Saint Simon the Apostle, by Francisco de Zurbarán, from National Museum of Ancient Art (Lisbon)', 'Francisco de Zurbarán', '1633', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-simon-apostle', '/saints/saint-simon-apostle-&-jude-apostle_schmidt_martyr.jpg', 'The Martyrdom of Saint Simon Zelotes and Saint Judas Thaddeus Painting', 'The Martyrdom of Saint Simon Zelotes and Saint Judas Thaddeus, by Martin Johann Schmidt, from Spencer Museum of Art (USA)', 'Martin Johann Schmidt', '1796', NULL, 'Public Domain', NULL, 7, FALSE),

-- Saint Jude, Apostle
('saint-jude-apostle', '/saints/saint-jude-apostle_dyck.jpg', 'Saint Jude Apostle Painting', 'Saint Jude the Apostle, by Anthony van Dyck, from Kunsthistorisches Museum', 'Anthony van Dyck', '1619-1621', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-jude-apostle', '/saints/saint-jude-apostle_dyck_2.jpg', 'Saint Jude Apostle Painting', 'Saint Jude the Apostle, by Anthony van Dyck, from Museums of Metz (from Musée du Louvre)', 'Anthony van Dyck', '1618-1620', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-jude-apostle', '/saints/saint-jude-apostle_ribera.jpg', 'Saint Jude Apostle Painting', 'Saint Jude the Apostle, by Jusepe de Ribera, from Museo del Prado', 'Jusepe de Ribera', '1630-1635', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-jude-apostle', '/saints/saint-jude-apostle_la-tour.jpg', 'Saint Jude Apostle Painting', 'Saint Jude the Apostle, by Georges de La Tour, from Musée Toulouse-Lautrec', 'Georges de La Tour', '1620', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-jude-apostle', '/saints/saint-jude-apostle_zurbaran.jpg', 'Saint Jude Apostle Painting', 'Saint Jude the Apostle, by Francisco de Zurbarán, from National Museum of Ancient Art (Lisbon)', 'Francisco de Zurbarán', '1633', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-jude-apostle', '/saints/saint-simon-apostle-&-jude-apostle_schmidt_martyr.jpg', 'The Martyrdom of Saint Simon Zelotes and Saint Judas Thaddeus Painting', 'The Martyrdom of Saint Simon Zelotes and Saint Judas Thaddeus, by Martin Johann Schmidt, from Spencer Museum of Art (USA)', 'Martin Johann Schmidt', '1796', NULL, 'Public Domain', NULL, 7, FALSE),

-- REMOVE WATERMARK AND ADD SEDMAK FOR SAINT JUDE!

-- =========================
-- November Saints
-- =========================

-- Saint Martin de Porres
('saint-martin-de-porres', '/saints/saint-martin-de-porres_briggs.jpg', 'Saint Martin de Porres Painting', 'Saint Martin de Porres, by Gwyneth Thompson Briggs', 'Gwyneth Thompson Briggs', '21th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-martin-de-porres', '/saints/saint-martin-de-porres.jpg', 'Saint Martin de Porres Illustration', 'Saint Martin de Porres, by an unknown artist', NULL, NULL, NULL, 'Attribution-ShareAlike 3.0 Unported', NULL, 2, FALSE),
('saint-martin-de-porres', '/saints/saint-martin-de-porres_warford.jpg', 'Saint Martin de Porres Painting', 'Saint Martin de Porres, by John Alan Warford', 'John Alan Warford', NULL, NULL, 'Public Domain', NULL, 3, FALSE),
-- Need remove of watermark !
('saint-martin-de-porres', '/saints/saint-martin-de-porres_2.jpg', 'Saint Martin de Porres Painting', 'Saint Martin de Porres, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Charles Borromeo
('saint-charles-borromeo', '/saints/saint-charles-borromeo_borgianni.jpg', 'Saint Charles Borromeo Painting', 'Saint Charles Borromeo, by Orazio Borgianni, from Hermitage Museum', 'Orazio Borgianni', '1610', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-charles-borromeo', '/saints/saint-charles-borromeo_figino.jpg', 'Saint Charles Borromeo Painting', 'Saint Charles Borromeo, by Giovanni Ambrogio Figino, from Pinacoteca Ambrosiana', 'Giovanni Ambrogio Figino', '1575-1599', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-charles-borromeo', '/saints/saint-charles-borromeo_tiepolo.jpg', 'Saint Charles Borromeo Painting', 'Saint Charles Borromeo, by Giambattista Tiepolo, from Cincinnati Art Museum', 'Giambattista Tiepolo', '1767-1769', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-charles-borromeo', '/saints/saint-charles-borromeo_gherardi.jpg', 'Saint Charles Borromeo giving Communion to Plague Victims Painting', 'Saint Charles Borromeo giving Communion to Plague Victims, by Antonio Gherardi, from Moretti Fine Art (Paris)', 'Antonio Gherardi', '17th Century', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-charles-borromeo', '/saints/saint-charles-borromeo_borgianni_2.jpg', 'Saint Charles Borromeo Painting', 'Saint Charles Borromeo, by Orazio Borgianni, from San Carlo alle Quattro Fontane Chruch (Rome)', 'Orazio Borgianni', '1611-1612', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint Leo the Great
('saint-leo-the-great', '/saints/saint-leo-the-great_el-mozo.jpg', 'Saint Leo the Great Painting', 'Saint Leo the Great, by Francisco Herrera the Younger (el Mozo), from Museo del Prado', 'Francisco Herrera the Younger (el Mozo)', '17th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-leo-the-great', '/saints/saint-leo-the-great.webp', 'Saint Leo the Great Painting', 'Saint Leo the Great, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-leo-the-great', '/saints/saint-leo-the-great_2.jpg', 'Saint Leo the Great Mosaic', 'Saint Leo the Great, by an unknown artist, from Papal Basilica of Saint Paul Outside the Walls', NULL, '19th Century', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Martin of Tours
('saint-martin-of-tours', '/saints/saint-martin-of-tours_martini.jpg', 'Saint Martin of Tours Fresco', 'Saint Martin of Tours, by Simone Martini, from Lower Basilica of San Francesco', 'Simone Martini', '1322-1326', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-martin-of-tours', '/saints/saint-martin-of-tours_dyck.jpg', 'Saint Martin Sharing his Cloak with a Beggar Painting', 'Saint Martin Sharing his Cloak with a Beggar, by Anthony van Dyck, from Church of Saint Martin (Zaventem)', 'Anthony van Dyck', '1621', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-martin-of-tours', '/saints/saint-martin-of-tours_maes.jpg', 'Saint Martin Raising a Man from the Dead Painting', 'Saint Martin Raising a Man from the Dead, by Godfried Maes', 'Godfried Maes', '1687', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-martin-of-tours', '/saints/saint-martin-of-tours.jpg', 'Saint Martin of Tours Painting', 'Saint Martin of Tours, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Josaphat, Bishop and Martyr
('saint-josaphat', '/saints/saint-josaphat_azovskyj.jpg', 'Saint Josaphat Painting', 'Saint Josaphat, by Mykola Azovskyj', 'Mykola Azovskyj', '1946', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-josaphat', '/saints/saint-josaphat_simmler_martyr.jpg', 'The Martyrdom of Saint Josaphat Painting', 'The Martyrdom of Saint Josaphat, by Józef Simmler, from National Museum in Warsaw', 'Józef Simmler', '1861', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-josaphat', '/saints/saint-josaphat_icon.jpg', 'Saint Josaphat Icon', 'Saint Josaphat, by an unknown artist', NULL, NULL, NULL, 'Attribution-ShareAlike 4.0 International', NULL, 3, FALSE),

-- Saint Albert the Great
('saint-albert-the-great', '/saints/saint-albert-the-great_gomez.jpg', 'Saint Albert the Great Painting', 'Saint Albert the Great, by Vicente Salvador Gómez, from Museu de Belles Arts de València', 'Vicente Salvador Gómez', '1660', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-albert-the-great', '/saints/saint-albert-the-great.jpg', 'Saint Albert the Great Painting', 'Saint Albert the Great, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-albert-the-great', '/saint-albert-the-great-&-thomas-aquinas.jpg', 'Saint Albert the Great & Thomas Aquinas Painting', 'Saint Albert the Great & Thomas Aquinas, by Alonso Antonio Villamor', 'Alonso Antonio Villamor', NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Margaret of Scotland
('saint-margaret-of-scotland', '/saints/saint-margaret-of-scotland_largillierre.jpg', 'Saint Margaret of Scotland Painting', 'Saint Margaret of Scotland, by Nicolas de Largillierre', 'Nicolas de Largillierre', '1692', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-margaret-of-scotland', '/saints/saint-margaret-of-scotland_hole.jpg', 'The Landing Of Saint Margaret at Queensferry Painting', 'The Landing Of Saint Margaret at Queensferry, by William Hole, from Scottish National Portrait Gallery', 'William Hole', '1899', NULL, 'Attribution-ShareAlike 3.0 Unported', NULL, 2, FALSE),
('saint-margaret-of-scotland', '/saints/saint-margaret-of-scotland.jpg', 'Saint Margaret of Scotland Illustration', 'Saint Margaret of Scotland, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Gertrude
('saint-gertrude', '/saints/saint-gertrude_cabrera.jpg', 'Saint Gertrude Painting', 'Saint Gertrude, by Miguel Cabrera, from Dallas Museum of Art', 'Miguel Cabrera', '1763', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-gertrude', '/saints/saint-gertrude.jpg', 'Saint Gertrude Painting', 'Saint Gertrude, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-gertrude', '/saints/saint-gertrude_2.jpg', 'Saint Gertrude Painting', 'Saint Gertrude, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Elizabeth of Hungary
('saint-elizabeth-of-hungary', '/saints/saint-elizabeth-of-hungary_martini.jpg', 'Saint Elizabeth of Hungary Fresco', 'Saint Elizabeth of Hungary, by Simone Martini, from Lower Basilica of San Francesco', 'Simone Martini', '1322-1326', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-elizabeth-of-hungary', '/saints/saint-elizabeth-of-hungary_leighton.jpg', 'The Charity of Saint Elizabeth of Hungary Painting', 'The Charity of Saint Elizabeth of Hungary, by Edmund Blair Leighton', 'Edmund Blair Leighton', '1895', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-elizabeth-of-hungary', '/saints/saint-elizabeth-of-hungary_collins.webp', 'The Devout Childhood of Saint Elizabeth of Hungary Painting', 'The Devout Childhood of Saint Elizabeth of Hungary, by Charles Alston Collins, from Detroit Institute of Arts', 'Charles Alston Collins', '1852', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-elizabeth-of-hungary', '/saints/saint-elizabeth-of-hungary_stokes.jpg', 'Saint Elizabeth of Hungary Painting', 'Saint Elizabeth of Hungary, by Marianne Stokes, from Art Gallery of New South Wales (Sydney)', 'Marianne Stokes', '1920', NULL, 'CC0 1.0 Universal', NULL, 4, FALSE),

-- Saint Cecilia
('saint-cecilia', '/saints/saint-cecilia_reni.jpg', 'Saint Cecilia Painting', 'Saint Cecilia, by Guido Reni, from Norton Simon Museum (Los Angeles)', 'Guido Reni', '1606', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-cecilia', '/saints/saint-cecilia_guercino.jpg', 'Saint Cecilia Painting', 'Saint Cecilia, by Il Guercino, from Dulwich Picture Gallery', 'Il Guercino', '1649', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-cecilia', '/saints/saint-cecilia_paelinck-horgnies.jpg', 'Saint Cecilia Painting', 'Saint Cecilia, by Fanny Paelinck-Horgnies, from Museum of Fine Arts (Ghent)', 'Fanny Paelinck-Horgnies', '1829', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-cecilia', '/saints/saint-cecilia_gentileschi-&-lanfranco.jpg', 'Saint Cecilia Painting', 'Saint Cecilia, by Orazio Gentileschi & Giovanni Lanfranco, from National Gallery of Art (Washington, D.C.)', 'Orazio Gentileschi & Giovanni Lanfranco', '1617-1627', NULL, 'Public Domain', NULL, 4, FALSE),
-- raphael paints cecilia with saint paul john augustine & mary magdalene, maybe i should add
('saint-cecilia', '/saints/saint-cecilia_raphael.jpg', 'The Ecstasy of Saint Cecilia Painting', 'The Ecstasy of Saint Cecilia, by Raphael, from Pinacoteca Nazionale di Bologna', 'Raphael', '1514', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-cecilia', '/saints/saint-cecilia_saraceni_martyr.jpg', 'The Martyrdom of Saint Cecilia Painting', 'The Martyrdom of Saint Cecilia, by Carlo Saraceni', 'Carlo Saraceni', '1610', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-cecilia', '/saints/saint-cecilia_madrazo.jpg', 'The Burial of Saint Cecilia Painting', 'The Burial of Saint Cecilia, by Luis de Madrazo, from Museo del Prado', 'Luis de Madrazo', '1852', NULL, 'Public Domain', NULL, 7, FALSE),

-- Saint Clement I
('saint-clement-i', '/saints/saint-clement-i_fresco.jpg', 'Saint Clement I Fresco', 'Saint Clement I, by an unknown artist, from Santa Maria Antiqua Church', NULL, '5th Century', NULL, 'CC0 1.0 Universal', NULL, 1, TRUE),
('saint-clement-i', '/saints/saint-clement-i.jpg', 'Saint Clement I Painting', 'Saint Clement I, by an unknown artist, from Papal Basilica of Saint Paul Outside the Walls', NULL, '19th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-clement-i', '/saints/saint-clement-i_mosaic.jpg', 'Saint Clement I Mosaic', 'Saint Clement I, by an unknown artist, from Saint Sophia Cathedral (Kyiv)', NULL, '11th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-clement-i', '/saints/saint-clement-i_tiepolo.jpg', 'Saint Clement I Vision of the Trinity Painting', 'Saint Clement I Vision of the Trinity, by Giambattista Tiepolo, from National Gallery (London)', 'Giambattista Tiepolo', '1730-1735', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-clement-i', '/saints/saint-clement-i_montor.jpg', 'Saint Clement I Illustration', 'Saint Clement I Illustration, by Alexis-François Artaud de Montor, from The Lives and Times of the Popes', 'Alexis-François Artaud de Montor', '1842', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint Columban, Abbot
('saint-columban', '/saints/saint-columban.jpg', 'Saint Columban Illustration', 'Saint Columban, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-columban', '/saints/saint-columban_stained-glass.jpg', 'Saint Columban Stained Glass', 'Saint Columban, by an unknown artist, from Bobbio Abbey', NULL, '19th Century', NULL, 'Public Domain', NULL, 2, FALSE),

-- Saint Andrew Dung-Lac
('saint-andrew-dung-lac', '/saints/saint-andrew-dung-lac_stained-glass.jpg', 'Saint Andrew Dung-Lac Stained Glass', 'Saint Andrew Dung-Lac, by an unknown artist, from Saint Paul Catholic Church (Westerville, Ohio)', NULL, NULL, NULL, 'Attribution-ShareAlike 3.0 Unported', NULL, 1, TRUE),
('saint-andrew-dung-lac', '/saints/saint-andrew-dung-lac-&-companions.jpg', 'Saint Andrew Dung-Lac & Companions Mosaic', 'Saint Andrew Dung-Lac & Companions, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 2, FALSE),
('saint-andrew-dung-lac', '/saints/saint-andrew-dung-lac_warford.jpg', 'Saint Andrew Dung-Lac Painting', 'Saint Andrew Dung-Lac, by John Alan Warford', 'John Alan Warford', '21th Century', NULL, 'Public Domain', NULL, 3, FALSE),
-- Need remove watermark !

-- Saint Catherine of Alexandria
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_caravaggio.jpg', 'Saint Catherine of Alexandria Painting', 'Saint Catherine of Alexandria, by Caravaggio, from Thyssen-Bornemisza Museum', 'Caravaggio', '1598', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_raphael.jpg', 'Saint Catherine of Alexandria Painting', 'Saint Catherine of Alexandria, by Raphael, from National Gallery (London)', 'Raphael', '1507-1509', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_crivelli.jpg', 'Saint Catherine of Alexandria Painting', 'Saint Catherine of Alexandria, by Carlo Crivelli, from Polo museale di San Francesco', 'Carlo Crivelli', '1470', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_murillo.jpg', 'Saint Catherine of Alexandria Painting', 'Saint Catherine of Alexandria, by Bartolomé Esteban Murillo, from Museum of Fine Arts of Seville', 'Bartolomé Esteban Murillo', '1650', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_guinet.jpg', 'Saint Catherine of Alexandria Painting', 'Saint Catherine of Alexandria, by Claude Guinet, from Museum of Fine Arts of Lyon', 'Claude Guinet', '1507', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_gentileschi.jpg', 'Saint Catherine of Alexandria Painting', 'Saint Catherine of Alexandria, by Artemisia Gentileschi, from Museo del Prado', 'Artemisia Gentileschi', '1620', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_gentileschi_2.jpg', 'Self Portrait of Artemisia Gentileschi as Saint Catherine Painting', 'Self Portrait of Artemisia Gentileschi as Saint Catherine, by Artemisia Gentileschi, from National Gallery (London)', 'Artemisia Gentileschi', '1616', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_farinati_martyr.jpg', 'The Martyrdom of Saint Catherine of Alexandria Painting', 'The Martyrdom of Saint Catherine of Alexandria, by Paolo Farinati, from Museum of Fine Arts (Budapest)', 'Paolo Farinati', '1579', NULL, 'Public Domain', NULL, 8, FALSE),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_lehmann.jpg', 'The Translation of the Body of Saint Catherine of Alexandria Painting', 'The Translation of the Body of Saint Catherine of Alexandria, by Henri Lehmann, from Musée Fabre', 'Henri Lehmann', '1839', NULL, 'Public Domain', NULL, 9, FALSE),

-- Saint Andrew, Apostle
('saint-andrew-apostle', '/saints/saint-andrew-apostle_rubens.jpg', 'Saint Andrew Apostle Painting', 'Saint Andrew the Apostle, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1611', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-andrew-apostle', '/saints/saint-andrew-apostle_dyck.jpg', 'Saint Andrew Apostle Painting', 'Saint Andrew the Apostle, by Anthony van Dyck, from Museo de Arte de Ponce', 'Anthony van Dyck', '17th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-andrew-apostle', '/saints/saint-andrew-apostle_ribera.jpg', 'Saint Andrew Apostle Painting', 'Saint Andrew the Apostle, by Jusepe de Ribera, from Museo de Arte de Ponce', 'Jusepe de Ribera', '17th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-andrew-apostle', '/saints/saint-andrew-apostle_tournier.jpg', 'Saint Andrew Apostle Painting', 'Saint Andrew the Apostle, by Nicolas Tournier', 'Nicolas Tournier', '17th Century', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-andrew-apostle', '/saints/saint-andrew-apostle_zurbaran.jpg', 'Saint Andrew Apostle Painting', 'Saint Andrew the Apostle, by Francisco de Zurbarán, from National Museum of Ancient Art (Lisbon)', 'Francisco de Zurbarán', '1633', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-andrew-apostle', '/saints/saint-andrew-apostle_loo.jpg', 'Saint Andrew Apostle Painting', 'Saint Andrew the Apostle, by Charles André van Loo, from Musée des Beaux-Arts d''Angers', 'Charles André van Loo', '18th Century', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-andrew-apostle', '/saints/saint-andrew-apostle_murillo_martyr.jpg', 'The Martyrdom of Saint Andrew Apostle Painting', 'The Martyrdom of Saint Andrew the Apostle, by Bartolomé Esteban Murillo, from Museo del Prado', 'Bartolomé Esteban Murillo', '1675-1682', NULL, 'Public Domain', NULL, 7, FALSE),

-- =========================
-- December Saints
-- =========================

-- Saint Francis Xavier
('saint-francis-xavier', '/saints/saint-francis-xavier_murillo.jpg', 'Saint Francis Xavier Painting', 'Saint Francis Xavier, by Bartolomé Esteban Murillo, from Wadsworth Atheneum', 'Bartolomé Esteban Murillo', '1670', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-francis-xavier', '/saints/saint-francis-xavier_dyck.jpg', 'Saint Francis Xavier Painting', 'Saint Francis Xavier, by Anthony van Dyck, from Pinacoteca Vaticana', 'Anthony van Dyck', '1630', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-francis-xavier', '/saints/saint-francis-xavier_rubens.jpg', 'The Miracles of Saint Francis Xavier Painting', 'The Miracles of Saint Francis Xavier, by Peter Paul Rubens, from Kunsthistorisches Museum', 'Peter Paul Rubens', '1617-1618', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-francis-xavier', '/saints/saint-francis-xavier_poussin.jpg', 'The Miracle of Saint Francis Xavier Painting', 'The Miracle of Saint Francis Xavier, by Nicolas Poussin, from Musée du Louvre', 'Nicolas Poussin', '1641-1642', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint John Damascene
('saint-john-damascene', '/saints/saint-john-damascene.jpg', 'Saint John Damascene Icon', 'Saint John Damascene, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-damascene', '/saints/saint-john-damascene_homsi.gif', 'Saint John Damascene Icon', 'Saint John Damascene, by Ne''meh Naser Homsi', 'Ne''meh Naser Homsi', '19th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-damascene', '/saints/saint-john-damascene_2.jpg', 'Saint John Damascene Icon', 'Saint John Damascene, by an unknown artist, from Mount Athos', NULL, '14th Century', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-john-damascene', '/saints/saint-john-damascene_3.jpg', 'Saint John Damascene Illustration', 'Saint John Damascene, by Francesco Bartolozzi (after Domenichino)', 'Francesco Bartolozzi', '1762', NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint Nicholas
('saint-nicholas', '/saints/saint-nicholas_cermak.jpg', 'Saint Nicholas Painting', 'Saint Nicholas, by Jaroslav Čermák', 'Jaroslav Čermák', '19th Century', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-nicholas', '/saints/saint-nicholas_moretto.jpg', 'Saint Nicholas of Bari presents the Rovelli students to Madonna and Child Painting', 'Saint Nicholas of Bari presents the Rovelli students to Madonna and Child, by Moretto da Brescia, from Pinacoteca Tosio Martinengo', 'Moretto da Brescia', '1539', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-nicholas', '/saints/saint-nicholas_bourdichon.jpg', 'Saint Nicholas Resurrecting the three Butchered Children Illustration', 'Saint Nicholas Resurrecting the three Butchered Children, by Jean Bourdichon, from Book : "Les Grandes Heures d''Anne de Bretagne"', 'Jean Bourdichon', '1503-1508', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-nicholas', '/saints/saint-nicholas_icon.jpg', 'Saint Nicholas Icon', 'Saint Nicholas, by Aleksa Petrov, from Lipno Church', 'Aleksa Petrov', '1294', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-nicholas', '/saints/saint-nicholas_titian.jpg', 'Saint Nicholas Painting', 'Saint Nicholas, by Titian, from Chiesa di San Sebastiano (Venice)', 'Titian', '1563', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-nicholas', '/saints/saint-nicholas_repin.jpg', 'Saint Nicholas of Myra saves Three Innocents from Death Painting', 'Saint Nicholas of Myra saves Three Innocents from Death, by Ilya Repin, from State Russian Museum', 'Ilya Repin', '1888', NULL, 'Public Domain', NULL, 6, FALSE),

-- Saint Ambrose
('saint-ambrose', '/saints/saint-ambrose_goya.jpg', 'Saint Ambrose Painting', 'Saint Ambrose, by Francisco Goya, from Cleveland Museum of Art', 'Francisco Goya', '1796-1799', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-ambrose', '/saints/saint-ambrose_vignon.jpg', 'Saint Ambrose Painting', 'Saint Ambrose, by Claude Vignon, from Minneapolis Institute of Art', 'Claude Vignon', '1623-1625', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-ambrose', '/saints/saint-ambrose_dyck.jpg', 'Saint Ambrose barring Theodosius from Milan Cathedral Painting', 'Saint Ambrose barring Theodosius from Milan Cathedral, by Anthony van Dyck, from National Gallery (London)', 'Anthony van Dyck', '1619-1620', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-ambrose', '/saints/saint-ambrose_subleyras.jpg', 'Saint Ambrose Absolving Theodosius Painting', 'Saint Ambrose Absolving Theodosius, by Pierre Subleyras, from Galleria Nazionale dell''Umbria', 'Pierre Subleyras', '1745', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-ambrose', '/saints/saint-ambrose_mosaic.jpg', 'Saint Ambrose Mosaic', 'Saint Ambrose, by an unknown artist, from Palazzo dei Normanni', NULL, '1140', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-ambrose', '/saints/saint-ambrose_mosaic_2.jpg', 'Saint Ambrose Mosaic', 'Saint Ambrose, by an unknown artist, from Basilica of Sant''Ambrogio', NULL, '4th Century', NULL, 'Public Domain', NULL, 6, FALSE),

-- Saint Juan Diego Cuauhtlatoatzin
('saint-juan-diego-cuauhtlatoatzin', '/saints/saint-juan-diego-cuauhtlatoatzin_berzosa.jpg', 'Saint Juan Diego Cuauhtlatoatzin Painting', 'Saint Juan Diego Cuauhtlatoatzin, by Raúl Berzosa', 'Raúl Berzosa', '2016', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-juan-diego-cuauhtlatoatzin', '/saints/saint-juan-diego-cuauhtlatoatzin_cabrera.jpg', 'Saint Juan Diego Cuauhtlatoatzin Painting', 'Saint Juan Diego Cuauhtlatoatzin, by Miguel Cabrera', 'Miguel Cabrera', '1752', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-juan-diego-cuauhtlatoatzin', '/saints/saint-juan-diego-cuauhtlatoatzin_cabrera_2.jpg', 'Saint Juan Diego Cuauhtlatoatzin Painting', 'Saint Juan Diego Cuauhtlatoatzin, by Miguel Cabrera', 'Miguel Cabrera', '18th century', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Damasus I, pope
('saint-damasus-i', '/saints/saint-damasus-i_lithography.jpg', 'Saint Damasus I Lithography', 'Saint Damasus I, by Pedro Augusto Guglielmi, from Biblioteca Nacional de Portugal', 'Pedro Augusto Guglielmi', '1840', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-damasus-i', '/saints/saint-damasus-i_cavalieri.jpg', 'Saint Damasus I Illustration', 'Saint Damasus I, by Giovanni Battista de'' Cavalieri, from Book : "Pontificum Romanorum effigies"', 'Giovanni Battista de'' Cavalieri', '1580', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-damasus-i', '/saints/saint-damasus-i.jpg', 'Saint Damasus I Painting', 'Saint Damasus I, by Juan Carreño de Miranda, from Casa de la Villa (Madrid)', 'Juan Carreño de Miranda', '1685', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-damasus-i', '/saints/saint-damasus-i_engraving.webp', 'Saint Damasus I Engraving', 'Saint Damasus I, by Tomás Carlos Capuz', 'Tomás Carlos Capuz', '19th Century', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-damasus-i', '/saints/saint-damasus-i_montor.jpg', 'Saint Damasus I Illustration', 'Saint Damasus I, by Alexis-François Artaud de Montor, from The Lives and Times of the Popes', 'Alexis-François Artaud de Montor', '1842', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint Lucy
('saint-lucy', '/saints/saint-lucy_zurbaran.jpg', 'Saint Lucy Painting', 'Saint Lucy, by Francisco de Zurbarán, from National Gallery of Art (Washington, D.C.)', 'Francisco de Zurbarán', '1635-1640', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-lucy', '/saints/saint-lucy_pirez.jpg', 'Saint Lucy Painting', 'Saint Lucy, by Álvaro Pires de Évora, from Capuchin Convent of Nola', 'Álvaro Pires de Évora', '1420', NULL, 'Attribution-ShareAlike 4.0 International', NULL, 2, FALSE),
('saint-lucy', '/saints/saint-lucy_garofalo.jpg', 'Saint Lucy Painting', 'Saint Lucy, by Il Garofalo, from Capitoline Museums (Rome)', 'Il Garofalo', '1535-1540', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-lucy', '/saints/saint-lucy_ricci.jpg', 'Last Communion and Martyrdom of Saint Lucy Painting', 'Last Communion and Martyrdom of Saint Lucy, by Sebastiano Ricci, Santa Lucia Church (Parma)', 'Sebastiano Ricci', '1730', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-lucy', '/saints/saint-lucy_caravaggio.jpg', 'The Burial of Saint Lucy Painting', 'The Burial of Saint Lucy, by Caravaggio, from Santa Lucia al Sepolcro Church (Syracuse)', 'Caravaggio', '1608', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint John of the Cross
('saint-john-of-the-cross', '/saints/saint-john-of-the-cross_zurbaran.jpg', 'Saint John of the Cross Painting', 'Saint John of the Cross, by Francisco de Zurbarán, from Archdiocesan Museum in Katowice', 'Francisco de Zurbarán', '1656', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-of-the-cross', '/saints/saint-john-of-the-cross_bunel.jpg', 'Saint John of the Cross Illustration', 'Saint John of the Cross, by Michel Bunel, from Rijksmuseum', 'Michel Bunel', '18th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-of-the-cross', '/saints/saint-john-of-the-cross.jpg', 'Saint John of the Cross Painting', 'Saint John of the Cross, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 3, FALSE),
-- need hanchett painting without watermark

-- Saint Peter Canisius
('saint-peter-canisius', '/saints/saint-peter-canisius.jpg', 'Saint Peter Canisius Painting', 'Saint Peter Canisius, by an unknown artist', NULL, '1699', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-peter-canisius', '/saints/saint-peter-canisius_custos.jpg', 'Saint Peter Canisius Painting', 'Saint Peter Canisius, by Dominicus Custos', 'Dominicus Custos', '1600', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-peter-canisius', '/saints/saint-peter-canisius_2.jpg', 'Saint Peter Canisius Painting', 'Saint Peter Canisius, by an unknown artist', NULL, '1546', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-peter-canisius', '/saints/saint-peter-canisius_3.jpg', 'Saint Peter Canisius Painting', 'Saint Peter Canisius, by an unknown artist', NULL, NULL, NULL, 'Public Domain', NULL, 4, FALSE),

-- Saint John of Kanty
('saint-john-of-kanty', '/saints/saint-john-of-kanty_kuntze.jpg', 'Miracle of Saint John of Kanty Painting', 'Miracle of Saint John of Kanty, by Tadeusz Kuntze, from National Museum in Kraków', 'Tadeusz Kuntze', '1767', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john-of-kanty', '/saints/saint-john-of-kanty.jpg', 'Saint John of Kanty Painting', 'Saint John of Kanty, by an unknown artist', NULL, '18th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john-of-kanty', '/saints/saint-john-of-kanty_kotsis.jpg', 'Saint John of Kanty before Our Lady Painting', 'Saint John of Kanty before Our Lady, by Aleksander Kotsis', 'Aleksander Kotsis', '1865', NULL, 'Public Domain', NULL, 3, FALSE),

-- Saint Stephen, the First Martyr
('saint-stephen-martyr', '/saints/saint-stephen-martyr_crivelli.jpg', 'Saint Stephen-martyr Painting', 'Saint Stephen-martyr, by Carlo Crivelli, from National Gallery (London)', 'Carlo Crivelli', '1476', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-stephen-martyr', '/saints/saint-stephen-martyr_champaigne_martyr.jpg', 'The Martyrdom of Saint Stephen-martyr Painting', 'The Martyrdom of Saint Stephen-martyr, by Philippe de Champaigne, from Private Collection', 'Philippe de Champaigne', '17th Century', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-stephen-martyr', '/saints/saint-stephen-martyr_rubens.jpg', 'The Stoning of Saint Stephen-martyr Painting', 'The Stoning of Saint Stephen-martyr, by Peter Paul Rubens, from Musée des Beaux-Arts de Valenciennes', 'Peter Paul Rubens', '1616-1617', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-stephen-martyr', '/saints/saint-stephen-martyr_damaskinos.png', 'The Stoning of Saint Stephen-martyr Painting', 'The Stoning of Saint Stephen-martyr, by Michael Damaskinos, from Municipal Gallery of Corfu', 'Michael Damaskinos', '1591', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-stephen-martyr', '/saints/saint-stephen-martyr_millais.jpg', 'Saint Stephen Painting', 'Saint Stephen, by John Everett Millais, from Tate Britain', 'John Everett Millais', '1895', NULL, 'Public Domain', NULL, 5, FALSE),

-- Saint John, Apostle and Evangelist
('saint-john', '/saints/saint-john_rubens.jpg', 'Saint John Apostle & Evangelist Painting', 'Saint John the Apostle & Evangelist, by Peter Paul Rubens, from Museo del Prado', 'Peter Paul Rubens', '1610-1612', NULL, 'Public Domain', NULL, 1, TRUE),
('saint-john', '/saints/saint-john_dyck.jpg', 'Saint John Apostle & Evangelist Painting', 'Saint John the Apostle & Evangelist, by Anthony van Dyck, from Museum of Fine Arts (Budapest)', 'Anthony van Dyck', '1618-1620', NULL, 'Public Domain', NULL, 2, FALSE),
('saint-john', '/saints/saint-john_domenichino.jpg', 'Saint John Apostle & Evangelist Painting', 'Saint John the Apostle & Evangelist, by Domenichino, from National Gallery (London)', 'Domenichino', '1621-1629', NULL, 'Public Domain', NULL, 3, FALSE),
('saint-john', '/saints/saint-john_zurbaran.jpg', 'Saint John Apostle & Evangelist Painting', 'Saint John the Apostle & Evangelist, by Francisco de Zurbarán, from National Museum of Ancient Art (Lisbon)', 'Francisco de Zurbarán', '1633', NULL, 'Public Domain', NULL, 4, FALSE),
('saint-john', '/saints/saint-john_dolci.jpg', 'Saint John Apostle & Evangelist Painting', 'Saint John the Apostle & Evangelist, by Carlo Dolci, from Pushkin State Museum of Fine Arts (Moscow)', 'Carlo Dolci', '1647', NULL, 'Public Domain', NULL, 5, FALSE),
('saint-john', '/saints/saint-john_grunewald.jpg', 'Saint John Supporting Saint Mary Painting', 'Saint John Supporting Saint Mary, by Matthias Grünewald, from Unterlinden Museum', 'Matthias Grünewald', '1512-1516', NULL, 'Public Domain', NULL, 6, FALSE),
('saint-john', '/saints/saint-john_hals.jpg', 'Saint John Apostle & Evangelist Painting', 'Saint John the Apostle & Evangelist, by Frans Hals, from Getty Center (Los Angeles)', 'Frans Hals', '1625-1628', NULL, 'Public Domain', NULL, 7, FALSE),
('saint-john', '/saints/saint-john_bosch.jpg', 'Saint John on Patmos Painting', 'Saint John on Patmos, by Hieronymus Bosch, from Gemäldegalerie (Berlin)', 'Hieronymus Bosch', '1489', NULL, 'Public Domain', NULL, 8, FALSE),










---
)
AS x (slug, image_url, alt_text, caption, credit, license, author, date, source_url, sort_order, is_primary)

ON s.slug = x.slug
ON CONFLICT DO NOTHING;

COMMIT;
