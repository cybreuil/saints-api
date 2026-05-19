BEGIN;

-- =========================================================
-- Roman saints images
-- =========================================================
-- Convention:
-- - image_url served from /public (store as /saints/...)
-- - images table: one row per unique artwork
-- - saint_images: junction table allowing one image to be linked to multiple saints
--
-- NOTE:
-- all apostles painted by Rubens
-- all evangelists by Hals
-- all apostles by La Tour painted as well (some paintings missing)
-- =========================================================


-- =============================================================
-- PART 1 : IMAGES (unique artworks)
-- One row per unique image_url. Shared images are inserted once.
-- =============================================================

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

-- =========================
-- Principal Roman saints (Mary, Joseph, John the Baptist)
-- =========================

-- Saint Mary
('/saints/saint-mary_tiepolo.jpg', 'The Immaculate Conception', 'painting', 'The Immaculate Conception Painting', 'Giambattista Tiepolo', '1748', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-mary_velazquez.jpg', 'The Coronation of the Virgin', 'painting', 'The Coronation of the Virgin Painting', 'Diego Velázquez', '1645-1650', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-mary_caravaggio_annunciation.jpg', 'The Annunciation', 'painting', 'The Annunciation Painting', 'Caravaggio', '1608', 'Musée des Beaux-Arts de Nancy', NULL, 'Public Domain', NULL),
('/saints/saint-mary_raphael.jpg', 'The Sistine Madonna', 'painting', 'The Sistine Madonna Painting', 'Raphael', '1513-1514', 'Gemäldegalerie Alte Meister', NULL, 'Public Domain', NULL),
('/saints/saint-mary_caravaggio_madonna-di-loreto.jpg', 'Madonna di Loreto', 'painting', 'Madonna di Loreto Painting', 'Caravaggio', '1606', 'Sant''Agostino (Rome)', NULL, 'Public Domain', NULL),
('/saints/saint-mary_caravaggio_madonna-of-the-rosary.jpg', 'Madonna of the Rosary', 'painting', 'Madonna of the Rosary Painting', 'Caravaggio', '1607', 'Kunsthistorisches Museum', NULL, 'Public Domain', NULL),
('/saints/saint-mary_botticelli_madonna-of-the-book.jpg', 'The Madonna of the Book', 'painting', 'The Madonna of the Book Painting', 'Sandro Botticelli', '1480-1481', 'Museo Poldi Pezzoli', NULL, 'Public Domain', NULL),
('/saints/saint-mary_botticelli_magnificat.jpg', 'The Madonna of the Magnificat', 'painting', 'The Madonna of the Magnificat Painting', 'Sandro Botticelli', '1481', 'Uffizi Gallery', NULL, 'Public Domain', NULL),
('/saints/saint-mary_sassoferrato.jpg', 'The Virgin in Prayer', 'painting', 'The Virgin in Prayer Painting', 'Sassoferrato', '1640-1650', 'National Gallery (London)', NULL, 'Public Domain', NULL),
('/saints/saint-mary_murillo.jpg', 'The Immaculate Conception', 'painting', 'The Immaculate Conception Painting', 'Bartolomé Esteban Murillo', '1678', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-mary_guido-reni.jpg', 'The Assumption of the Virgin', 'painting', 'The Assumption of the Virgin Painting', 'Guido Reni', '1637-1638', 'The Städel Museum', NULL, 'Public Domain', NULL),
('/saints/saint-mary_caravaggio_dormition.jpg', 'The Dormition of the Virgin', 'painting', 'The Dormition of the Virgin Painting', 'Caravaggio', '1606-1607', 'Musée du Louvre', NULL, 'Public Domain', NULL),
('/saints/saint-mary_velazquez_adoration.jpg', 'The Adoration of the Magi', 'painting', 'The Adoration of the Magi Painting', 'Diego Velázquez', '1619', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-mary_champaigne.jpg', 'Madonna and Child', 'painting', 'Madonna and Child Painting', 'Philippe de Champaigne', '17th Century', 'Musée des Beaux-Arts d''Agen', NULL, 'Attribution-ShareAlike 4.0 International', NULL),
('/saints/saint-mary_gentileschi_annunciation.jpg', 'The Annunciation', 'painting', 'The Annunciation Painting', 'Orazio Gentileschi', '1623', 'Galleria Sabauda', NULL, 'Public Domain', NULL),

-- Saint Joseph
('/saints/saint-joseph_guido-reni.jpg', 'Saint Joseph and the Christ Child', 'painting', 'Saint Joseph and the Christ Child Painting', 'Guido Reni', '1640', 'Museum of Fine Arts of Houston', NULL, 'Public Domain', NULL),
('/saints/saint-joseph_carracci.jpg', 'The Holy Family', 'painting', 'The Holy Family Painting', 'Annibale Carracci', '1596-1597', 'Borghese Gallery', NULL, 'Public Domain', NULL),
('/saints/saint-joseph_murillo.jpg', 'Saint Joseph and the Christ Child', NULL, 'Saint Joseph and the Christ Child', 'Bartolomé Esteban Murillo', '1670-1675', 'The John and Mable Ringling Museum of Art', NULL, 'Public Domain', NULL),
('/saints/saint-joseph_murillo_holy-family.jpg', 'The Holy Family', 'painting', 'The Holy Family Painting', 'Bartolomé Esteban Murillo', '1640-1649', 'National Gallery of Ireland', NULL, 'Public Domain', NULL),
('/saints/saint-joseph_la-tour.jpg', 'Joseph the Carpenter', 'painting', 'Joseph the Carpenter Painting', 'Georges de La Tour', '1640-1645', 'Musée du Louvre', NULL, 'Public Domain', NULL),
('/saints/saint-joseph_champaigne.jpg', 'The Dream of Saint Joseph', 'painting', 'The Dream of Saint Joseph Painting', 'Philippe de Champaigne', '1642-1643', 'National Gallery (London)', NULL, 'Public Domain', NULL),
('/saints/saint-joseph_briggs.jpg', 'The Lily and the Carpenter', 'painting', 'The Lily and the Carpenter Painting', 'Gwyneth Thompson Briggs', '21th Century', NULL, NULL, 'Public Domain', NULL),

-- Saint John the Baptist
('/saints/saint-john-the-baptist_caravaggio.jpg', 'Saint John the Baptist in the Wilderness', 'painting', 'Saint John the Baptist in the Wilderness Painting', 'Caravaggio', '1604-1605', 'Nelson-Atkins Museum of Art', NULL, 'Public Domain', NULL),
('/saints/saint-john-the-baptist_leonardo-da-vinci.jpg', 'Saint John the Baptist', 'painting', 'Saint John the Baptist Painting', 'Leonardo da Vinci', '1513-1516', 'Musée du Louvre', NULL, 'Public Domain', NULL),
('/saints/saint-john-the-baptist_lemoine.jpg', 'Saint John the Baptist', 'painting', 'Saint John the Baptist Painting', 'François Lemoine', '1726', 'Saint-Eustache (Paris)', NULL, 'Public Domain', NULL),
('/saints/saint-john-the-baptist_tanzio.jpg', 'Saint John the Baptist', 'painting', 'Saint John the Baptist Painting', 'Tanzio da Varallo', '1627-1629', 'Philbrook Museum of Art', NULL, 'Public Domain', NULL),

-- =========================
-- January saints
-- =========================

-- Saint Basil the Great
('/saints/saint-basil-the-great_domenichino_grottaferrata.jpg', 'Saint Basil the Great', 'fresco', 'Saint Basil the Great Fresco', 'Domenichino', '1609-1612', 'Grottaferrata Abbey', NULL, 'Public Domain', NULL),
('/saints/saint-basil-the-great.webp', 'Saint Basil the Great', 'painting', 'Saint Basil the Great Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-basil-the-great_mosaic.jpg', 'Saint Basil the Great', 'mosaic', 'Saint Basil the Great Mosaic', NULL, '11th Century', NULL, NULL, 'Public Domain', NULL),

-- Saint Gregory Nazianzen
('/saints/saint-gregory-nazianzen_domenichino_grottaferrata.jpg', 'Saint Gregory Nazianzen', 'fresco', 'Saint Gregory Nazianzen Fresco', 'Domenichino', '1609-1612', 'Grottaferrata Abbey', NULL, 'Public Domain', NULL),
('/saints/saint-gregory-nazianzen.jpg', 'Saint Gregory Nazianzen', 'fresco', 'Saint Gregory Nazianzen Fresco', NULL, '14th century', 'Kariye Camii (Istanbul)', NULL, 'Public Domain', NULL),

-- Saint Raymond of Penyafort
('/saints/saint-raymond-of-penyafort_francisco-de-reyna.jpg', 'Saint Raymond of Penyafort', 'painting', 'Saint Raymond of Penyafort Painting', 'Francisco de Reyna', '17th century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-raymond-of-penyafort_tommaso-dolabella.jpg', 'Saint Raymond of Penyafort', 'painting', 'Saint Raymond of Penyafort Painting', 'Tommaso Dolabella', '1627', 'Church of the Holy Trinity (Kraków)', NULL, 'Public Domain', NULL),

-- Saint Hilary of Poitiers
('/saints/saint-hilary-of-poitiers_cremiere.jpg', 'Saint Hilary of Poitiers', 'painting', 'Saint Hilary of Poitiers Painting', 'Pierre-Floréal Crémière', '1846', 'Saint-Hilaire du Martray (Loudun)', NULL, 'Public Domain', NULL),
('/saints/saint-hilary-of-poitiers.png', 'Saint Hilary of Poitiers', 'icon', 'Saint Hilary of Poitiers Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Anthony, Abbot
('/saints/saint-anthony-abbot_zurbaran.jpg', 'Saint Anthony, Abbot', 'painting', 'Saint Anthony the Great Painting', 'Francisco de Zurbarán', '1640', 'Uffizi Gallery', NULL, 'Public Domain', NULL),
('/saints/saint-anthony-abbot_icon.jpg', 'Saint Anthony, Abbot', 'icon', 'Saint Anthony the Great Icon', 'Michael Damaskinos', '16th Century', 'Byzantine and Christian Museum (Athens)', NULL, 'Public Domain', NULL),
('/saints/saint-anthony-abbot_osservanza-master_gold-temptation.jpg', 'The Gold Temptation of Saint Anthony', 'painting', 'The Temptation of Saint Anthony Painting', 'Osservanza Master', '1435-1440', 'Metropolitan Museum of Art', NULL, 'Public Domain', NULL),
('/saints/saint-anthony-abbot_osservanza-master_woman-temptation.jpg', 'The Woman Temptation of Saint Anthony', 'painting', 'The Temptation of Saint Anthony Painting', 'Osservanza Master', '1435-1440', 'Yale University Art Gallery', NULL, 'Public Domain', NULL),
('/saints/saint-anthony-abbot_bosch.jpg', 'The Temptation of Saint Anthony', 'painting', 'The Temptation of Saint Anthony Painting', 'Hieronymus Bosch', '16th Century', 'Museo del Prado', NULL, 'Public Domain', NULL),
-- also linked to saint-cornelius and saint-cyprian below
('/saints/saint-anthony-abbot-&-cornelius-&-cyprian_veronese.jpg', 'Saint Anthony the Great with Saints Cornelius and Cyprian', 'painting', 'Saint Anthony the Great with Saints Cornelius and Cyprian Painting', 'Paolo Veronese', '1565-1571', 'Pinacoteca di Brera (Milan)', NULL, 'Public Domain', NULL),

-- Saint Fabian Pope
('/saints/saint-fabian-pope.jpg', 'Saint Fabian, Pope', 'painting', 'Saint Fabian Pope Painting', 'Giovanni di Paolo', '15th Century', 'National Gallery (London)', NULL, 'Public Domain', NULL),
('/saints/saint-fabian-pope_master-of-messkirch.jpg', 'Saint Fabian, Pope', 'painting', 'Saint Fabian Pope Painting', 'Master of Messkirch', '16th Century', 'Veste Coburg Art Collections', NULL, 'Public Domain', NULL),

-- Saint Sebastian
('/saints/saint-sebastian_sodoma.jpg', 'Saint Sebastian', 'painting', 'Saint Sebastian Painting', 'Il Sodoma', '1525', 'Uffizi Gallery', NULL, 'Public Domain', NULL),
('/saints/saint-sebastian_guido-reni.jpg', 'Saint Sebastian', 'painting', 'Saint Sebastian Painting', 'Guido Reni', '1615', 'Musei di Strada Nuova', NULL, 'Public Domain', NULL),
('/saints/saint-sebastian_ribera.jpg', 'Saint Sebastian', 'painting', 'Saint Sebastian Painting', 'Jusepe de Ribera', '1636', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-sebastian_rubens.jpg', 'Saint Sebastian', 'painting', 'Saint Sebastian Painting', 'Peter Paul Rubens', '17th Century', 'Private Collection', NULL, 'Public Domain', NULL),

-- Saint Agnes of Rome
('/saints/saint-agnes-of-rome_domenichino.jpg', 'Saint Agnes of Rome', 'painting', 'Saint Agnes of Rome Painting', 'Domenichino', '1620', 'Royal Collection of the British Royal Family', NULL, 'Public Domain', NULL),
('/saints/saint-agnes-of-rome_massimo-stanzione.jpg', 'Saint Agnes of Rome', 'painting', 'Saint Agnes of Rome Painting', 'Massimo Stanzione', '1635-1640', 'Museu Nacional d''Art de Catalunya', NULL, 'Public Domain', NULL),
('/saints/saint-agnes-of-rome_andrea-del-sarto.jpg', 'Saint Agnes of Rome', 'painting', 'Saint Agnes of Rome Painting', 'Andrea del Sarto', '16th Century', 'Pisa Cathedral', NULL, 'Public Domain', NULL),

-- Saint Vincent of Saragossa
('/saints/saint-vincent-of-saragossa_tomas-giner.jpg', 'Saint Vincent of Saragossa', 'painting', 'Saint Vincent of Saragossa Painting', 'Tomás Giner', '1462-1466', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-vincent-of-saragossa_school-of-francisco-ribalta.jpg', 'Saint Vincent of Saragossa', 'painting', 'Saint Vincent of Saragossa Painting', 'School of Francisco Ribalta', '17th Century', 'Museo del Prado', NULL, 'Public Domain', NULL),

-- Saint Francis de Sales
('/saints/saint-francis-de-sales.webp', 'Saint Francis de Sales', 'painting', 'Saint Francis de Sales Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-francis-de-sales_2.jpg', 'Saint Francis de Sales', 'painting', 'Saint Francis de Sales Painting', NULL, '17th Century', 'Château de Bussy-Rabutin', NULL, 'Public Domain', NULL),
('/saints/saint-francis-de-sales_briggs.jpg', 'Saint Francis de Sales by Gwyneth Thompson Briggs', 'painting', 'Saint Francis de Sales Painting', 'Gwyneth Thompson Briggs', '21th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-francis-de-sales_brenet.jpg', 'Saint Francis de Sales', 'painting', 'Saint Francis de Sales Painting', 'Nicolas Guy Brenet', '18th Century', 'Château de Blois', NULL, 'Public Domain', NULL),
-- also linked to saint-jane-frances-de-chantal below
('/saints/saint-francis-de-sales-&-jane-frances-de-chantal_bayeu.jpg', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal', 'painting', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal Painting', 'Francisco Bayeu', '18th Century', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-francis-de-sales-&-jane-frances-de-chantal_halle.jpg', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal', 'painting', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal Painting', 'Noël Hallé', '18th Century', 'Saint-Louis-en-l''Île Church', NULL, 'Public Domain', NULL),
('/saints/saint-francis-de-sales-&-jane-frances-de-chantal.jpg', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal', 'painting', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal Painting', NULL, NULL, 'Monastery of the Visitation (Paris)', NULL, 'Public Domain', NULL),

-- Saint Paul, Apostle
('/saints/saint-paul-apostle_rubens.jpg', 'Saint Paul the Apostle', 'painting', 'Saint Paul Apostle Painting', 'Peter Paul Rubens', '1611-1612', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-paul-apostle_ribera.jpg', 'Saint Paul the Apostle', 'painting', 'Saint Paul Apostle Painting', 'Jusepe de Ribera', '1615-1616', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-paul-apostle_velasquez.jpg', 'Saint Paul the Apostle', 'painting', 'Saint Paul Apostle Painting', 'Diego Velázquez', '1619-1620', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-paul-apostle_zurbaran.jpg', 'Saint Paul the Apostle', 'painting', 'Saint Paul Apostle Painting', 'Francisco de Zurbarán', '1633', 'National Museum of Ancient Art', NULL, 'Attribution 3.0 Unported', NULL),
('/saints/saint-paul-apostle_dyck.jpg', 'Saint Paul the Apostle', 'painting', 'Saint Paul Apostle Painting', 'Anthony van Dyck', '1618-1620', 'Landesmuseum Hannover', NULL, 'Public Domain', NULL),
('/saints/saint-paul-apostle_caravaggio_conversion.jpg', 'The Conversion of Saint Paul', 'painting', 'The Conversion of Saint Paul Painting', 'Caravaggio', '1601', 'Odescalchi Balbi Collection', NULL, 'Public Domain', NULL),
('/saints/saint-paul-apostle_rembrandt_prison.jpg', 'The Apostle Paul in Prison', 'painting', 'The Apostle Paul in Prison Painting', 'Rembrandt', '1627', 'Rijksmuseum', NULL, 'Public Domain', NULL),
('/saints/saint-paul-apostle_rembrandt.jpg', 'Saint Paul the Apostle', 'painting', 'Saint Paul Apostle Painting', 'Rembrandt', '1657', 'National Gallery of Art (Washington, D.C.)', NULL, 'Public Domain', NULL),
('/saints/saint-paul-apostle_la-tour.jpg', 'Saint Paul the Apostle', 'painting', 'Saint Paul Apostle Painting', 'Georges de La Tour', '1820', 'Musée Toulouse-Lautrec', NULL, 'Public Domain', NULL),
('/saints/saint-paul-apostle_guercino.jpg', 'Saint Paul the Apostle', 'painting', 'Saint Paul Apostle Painting', 'Il Guercino', '1650', 'Royal Collection of the British Royal Family', NULL, 'Public Domain', NULL),
('/saints/saint-paul-apostle_guercino_2.jpg', 'Saint Paul the Apostle', 'painting', 'Saint Paul Apostle Painting', 'Il Guercino', '17th Century', 'Slovak National Gallery', NULL, 'Public Domain', NULL),
-- also linked to saint-barnabas-apostle below
('/saints/saint-paul-apostle-&-barnabas.jpg', 'Saint Paul and Saint Barnabas in Lystra', 'painting', 'Saint Paul and Saint Barnabas in Lystra Painting', 'Claude-Guy Hallé', '1717', 'Musée Carnavalet', NULL, 'Public Domain', NULL),

-- Saint Timothy of Ephesus
('/saints/saint-timothy-of-ephesus_icon.jpg', 'Saint Timothy of Ephesus', 'icon', 'Saint Timothy of Ephesus Icon', NULL, NULL, 'an Orthodox Parish (USA)', NULL, 'Attribution-ShareAlike 4.0 International', NULL),
('/saints/saint-timothy-of-ephesus_drost_timothy-with-grandmother-lois.jpg', 'Saint Timothy of Ephesus', 'painting', 'Saint Timothy of Ephesus with his Grandmother Lois Painting', 'Rembrandt', '1650', 'Hermitage Museum', NULL, 'Public Domain', NULL),
-- NOTE: data correction applied — original had creator=''1803'' (clearly a date), fixed to date_label=''1803'' and license=''Public Domain''
('/saints/saint-timothy-of-ephesus.jpg', 'Saint Timothy of Ephesus', 'painting', 'Saint Timothy of Ephesus Painting', NULL, '1803', 'Basilica of Santa Pudentiana (Rome)', NULL, 'Public Domain', NULL),

-- Saint Titus of Crete
('/saints/saint-titus-of-crete_icon.jpg', 'Saint Titus of Crete', 'icon', 'Saint Titus of Crete Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-titus-of-crete.jpg', 'Saint Titus of Crete', 'painting', 'Saint Titus of Crete Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Angela Merici
('/saints/saint-angela-merici.webp', 'Saint Angela Merici', 'painting', 'Saint Angela Merici Painting', NULL, '17th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-angela-merici_crucifix.jpg', 'Saint Angela Merici', 'painting', 'Saint Angela Merici Painting', NULL, '17th Century', NULL, NULL, 'Creative Commons Attribution', NULL),

-- Saint Thomas Aquinas
('/saints/saint-thomas-aquinas.jpg', 'Saint Thomas Aquinas', 'painting', 'Saint Thomas Aquinas Painting', 'Carlo Crivelli', '1476', 'National Gallery', NULL, 'Public Domain', NULL),
('/saints/saint-thomas-aquinas_velasquez_temptation.jpg', 'The temptation of Saint Thomas Aquinas', 'painting', 'The Temptation of Saint Thomas Aquinas Painting', 'Diego Velázquez', '1632', 'Orihuela Cathedral Museum', NULL, 'Public Domain', NULL),
('/saints/saint-thomas-aquinas_tito.jpg', 'The Vision of Saint Thomas Aquinas', 'painting', 'The Vision of Saint Thomas Aquinas Painting', 'Santi di Tito', '1593', 'Basilica of Saint Mark (Florence)', NULL, 'Public Domain', NULL),
('/saints/saint-thomas-aquinas_zurbaran.jpg', 'The Apotheosis of Saint Thomas Aquinas', 'painting', 'The Apotheosis of Saint Thomas Aquinas Painting', 'Francisco de Zurbarán', '1631', 'Museum of Fine Arts of Seville', NULL, 'Public Domain', NULL),

-- Saint John Bosco
('/saints/saint-john-bosco_painting-from-picture.png', 'Saint John Bosco', 'painting', 'Saint John Bosco Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-john-bosco_picture.jpg', 'Saint John Bosco', 'photograph', 'Saint John Bosco Picture', 'Carlo Felice', '1880', NULL, NULL, 'Public Domain', NULL),

-- =========================
-- February saints
-- =========================

-- Saint Blaise
('/saints/saint-blaise_trotti.jpg', 'Saint Blaise', 'painting', 'Saint Blaise Painting', 'Giovanni Battista Trotti', '1590', 'Museum of Fine Arts (Budapest)', NULL, 'Public Domain', NULL),
('/saints/saint-blaise_tiepolo.jpg', 'Saint Blaise', 'painting', 'Saint Blaise Painting', 'Giambattista Tiepolo', '1734', 'Ca'' Rezzonico', NULL, 'Public Domain', NULL),

-- Saint Ansgar
('/saints/saint-ansgar.jpg', 'Saint Ansgar', 'painting', 'Saint Ansgar Painting', NULL, '1457', 'Church Trinitatis (Hamburg)', NULL, 'Public Domain', NULL),

-- Saint Agatha
('/saints/saint-agatha.jpg', 'The Martyrdom of Saint Agatha', 'painting', 'The Martyrdom of Saint Agatha Painting', NULL, '1619', 'Museo Nazionale di Capodimonte', NULL, 'Public Domain', NULL),
('/saints/saint-agatha_tiepolo.jpg', 'The Martyrdom of Saint Agatha', 'painting', 'The Martyrdom of Saint Agatha Painting', 'Giambattista Tiepolo', '1756', 'Gemäldegalerie', NULL, 'Public Domain', NULL),

-- Saint Paul Miki
('/saints/saint-paul-miki_tanzio.png', 'The Martyrdom of Saint Paul Miki & Companions', 'painting', 'The Martyrdom of Saint Paul Miki & Companions Painting', 'Tanzio da Varallo', '1625-1632', 'Pinacoteca di Brera', NULL, 'Public Domain', NULL),
('/saints/saint-paul-miki.jpg', 'Saint Paul Miki', 'painting', 'Saint Paul Miki Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Jerome Emiliani (need double checking)
('/saints/saint-jerome-emiliani_traverso.jpg', 'Saint Jerome Emiliani presents the orphans to the Virgin', 'painting', 'Saint Jerome Emiliani presents the orphans to the Virgin Painting', 'Mattia Traverso', '1943', 'Church of Santa Maria del Popolo (Cherasco)', NULL, 'Public Domain', NULL),
('/saints/saint-jerome-emiliani_crespi.jpg', 'Saint Jerome Emiliani', 'painting', 'Saint Jerome Emiliani Painting', 'Daniele Crespi', '1620', 'Vercurago', NULL, 'Public Domain', NULL),
('/saints/saint-jerome-emiliani.jpg', 'Saint Jerome Emiliani', 'painting', 'Saint Jerome Emiliani Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-jerome-emiliani_2.jpg', 'Saint Jerome Emiliani', 'painting', 'Saint Jerome Emiliani Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Josephine Bakhita (need small watermark correction)
('/saints/saint-josephine-bakhita_ferreira.jpg', 'Saint Josephine Bakhita', 'painting', 'Saint Josephine Bakhita Painting', NULL, '21th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-josephine-bakhita_warford_no-watermark.jpg', 'Saint Josephine Bakhita', 'painting', 'Saint Josephine Bakhita Painting', NULL, '21th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-josephine-bakhita.jpg', 'Saint Josephine Bakhita Portrait', NULL, 'Saint Josephine Bakhita Portrait', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Scholastica
('/saints/saint-scholastica_bergl.jpg', 'Saint Scholastica', 'painting', 'Saint Scholastica Painting', 'Johann Baptist Wenzel Bergl', '1765', 'Basilica of Kleinmariazell', NULL, 'Public Domain', NULL),
('/saints/saint-scholastica.jpg', 'Saint Scholastica', 'painting', 'Saint Scholastica Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-scholastica_sassoferrato.jpg', 'Saint Scholastica', 'painting', 'Saint Scholastica Painting', 'Sassoferrato', '17th Century', 'Museum of Fine Arts of Lyon', NULL, 'Public Domain', NULL),
('/saints/saint-scholastica_briggs.jpg', 'Saint Scholastica', 'painting', 'Saint Scholastica Painting', 'Gwyneth Thompson Briggs', '21th Century', NULL, NULL, 'Public Domain', NULL),
-- also linked to saint-benedict below
('/saints/saint-benedict-&-scholastica.jpg', 'Saint Benedict and Saint Scholastica', 'painting', 'Saint Benedict and Saint Scholastica Painting', 'Yan'' Dargent', '19th Century', NULL, NULL, 'Public Domain', NULL),

-- Saint Cyril (brother of Saint Methodius)
('/saints/saint-cyril.jpg', 'Saint Cyril', 'icon', 'Saint Cyril Icon', NULL, NULL, 'Holy Mount of Grabarka (Poland)', NULL, 'Public Domain', NULL),
-- also linked to saint-methodius below
('/saints/saint-cyril-&-methodius.jpg', 'Saint Cyril and Saint Methodius', 'painting', 'Saint Cyril and Saint Methodius Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-cyril-&-methodius_2.jpg', 'Saint Cyril and Saint Methodius', 'icon', 'Saint Cyril and Saint Methodius Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-cyril-&-methodius_3.jpg', 'Saint Cyril and Saint Methodius', 'icon', 'Saint Cyril and Saint Methodius Icon', NULL, NULL, 'Holy Trinity Monastery (New York)', NULL, 'Public Domain', NULL),

-- Saint Methodius (brother of Saint Cyril)
('/saints/saint-methodius.jpg', 'Saint Methodius', 'icon', 'Saint Methodius Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Peter Damian
('/saints/saint-peter-damian.jpg', 'Saint Peter Damian', 'painting', 'Saint Peter Damian Painting', 'Andrea Barbiani', '18th Century', 'Biblioteca Classense', NULL, 'Public Domain', NULL),
('/saints/saint-peter-damian_briggs.jpg', 'Saint Peter Damian', 'painting', 'Saint Peter Damian Painting', 'Gwyneth Thompson Briggs', '21th Century', NULL, NULL, 'Public Domain', NULL),

-- Saint Polycarp
('/saints/saint-polycarp.jpg', 'Saint Polycarp', 'icon', 'Saint Polycarp Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-polycarp_2.jpg', 'Saint Polycarp', 'icon', 'Saint Polycarp Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-polycarp_3.png', 'Saint Polycarp', 'icon', 'Saint Polycarp Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Gregory of Narek
('/saints/saint-gregory-of-narek_minin.jpg', 'Saint Gregory of Narek', 'painting', 'Saint Gregory of Narek Painting', 'Sergei Minin', '2004', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-gregory-of-narek.jpg', 'Saint Gregory of Narek', 'painting', 'Saint Gregory of Narek Painting', 'Arshak Fetvadjian', '20th Century', NULL, NULL, 'Public Domain', NULL),

-- =========================
-- March saints
-- =========================

-- Saint Casimir
('/saints/saint-casimir_masucci.jpg', 'Saint Casimir', 'painting', 'Saint Casimir Painting', 'Agostino Masucci', '18th Century', 'Royal Castle in Warsaw', NULL, 'Public Domain', NULL),
('/saints/saint-casimir_collenius.jpg', 'Saint Casimir', 'painting', 'Saint Casimir Painting', 'Hermannus Collenius', '18th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-casimir.jpg', 'Saint Casimir', 'painting', 'Saint Casimir Painting', NULL, '1594', 'Vilnius Cathedral', NULL, 'Public Domain', NULL),

-- Saint Perpetua
('/saints/saint-perpetua_ridolfi.jpg', 'Saint Perpetua', 'painting', 'Saint Perpetua Painting', 'Antonio Ridolfi', '1857', 'Istituto d''Arte de Sienne', NULL, 'Public Domain', NULL),
-- fixed: was '/saint-perpetua_bouguereau.jpg' (missing /saints/ prefix)
('/saints/saint-perpetua_bouguereau.jpg', 'Saint Perpetua', 'painting', 'Saint Perpetua Painting', 'William-Adolphe Bouguereau', '1877', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-perpetua_mosaic.jpg', 'Saint Perpetua', 'mosaic', 'Saint Perpetua Mosaic', NULL, NULL, 'Euphrasian Basilica (Croatia)', NULL, 'Public Domain', NULL),
-- also linked to saint-felicity below
('/saints/saint-perpetua-&-felicity.jpg', 'Saint Perpetua and Saint Felicity', 'painting', 'Saint Perpetua and Saint Felicity Painting', NULL, '1520', 'National Museum in Warsaw', NULL, 'Public Domain', NULL),
('/saints/saint-perpetua_martyr.webp', 'The Martyrdom of Saint Perpetua', 'painting', 'The Martyrdom of Saint Perpetua Painting', NULL, '21th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-perpetua-&-felicity_2.jpg', 'Saint Perpetua and Saint Felicity', 'mosaic', 'Saint Perpetua and Saint Felicity Mosaic', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-perpetua-&-felicity_3.jpg', 'Saint Perpetua and Saint Felicity', 'mosaic', 'Saint Perpetua and Saint Felicity Mosaic', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint John of God
('/saints/saint-john-of-god_murillo.jpg', 'Saint John of God', 'painting', 'Saint John of God Painting', 'Bartolomé Esteban Murillo', '1672', 'Hospital de la Caridad', NULL, 'Public Domain', NULL),
('/saints/saint-john-of-god_coello.jpg', 'Saint John of God with an Angel', 'painting', 'Saint John of God Painting', 'Claudio Coello', '17th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-john-of-god_gonzalez.jpg', 'Saint John of God', 'painting', 'Saint John of God Painting', 'Manuel Gómez-Moreno González', '1880', 'Museo de Bellas Artes de Granada', NULL, 'Public Domain', NULL),

-- Saint Frances of Rome
('/saints/saint-frances-of-rome_sparadino.jpg', 'Saint Frances of Rome with the Angel', 'painting', 'Saint Frances of Rome with the Angel Painting', 'lo Sparadino', '17th Century', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-frances-of-rome_gentileschi.jpg', 'Saint Frances of Rome', 'painting', 'Saint Frances of Rome Painting', 'Orazio Gentileschi', '1620', 'Galleria Nazionale delle Marche', NULL, 'Public Domain', NULL),
('/saints/saint-frances-of-rome_poussin.jpg', 'Saint Frances Announcing the End of the Plague in Rome', 'painting', 'Saint Frances Announcing the End of the Plague in Rome Painting', 'Nicolas Poussin', '1657', 'Musée du Louvre', NULL, 'Public Domain', NULL),
('/saints/saint-frances-of-rome.jpg', 'Saint Frances of Rome', 'painting', 'Saint Frances of Rome Painting', NULL, '1650', NULL, NULL, 'Public Domain', NULL),

-- Saint Patrick
('/saints/saint-patrick.jpg', 'Saint Patrick and the Snakes', 'painting', 'Saint Patrick and the Snakes Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-patrick_tiepolo.jpg', 'Saint Patrick', 'painting', 'Saint Patrick Painting', 'Giambattista Tiepolo', '1746', 'Musei Civici di Padova', NULL, 'Public Domain', NULL),
('/saints/saint-patrick_collaert.jpg', 'Saint Patrick', 'painting', 'Saint Patrick Painting', 'Adriaen Collaert', '1603', 'National Gallery of Ireland', NULL, 'Public Domain', NULL),
('/saints/saint-patrick_stained-glass.jpg', 'Saint Patrick', 'stained_glass', 'Saint Patrick Stained Glass', NULL, NULL, 'Saint Patrick Catholic Church (Ohio)', NULL, 'Public Domain', NULL),

-- Saint Cyril of Jerusalem
('/saints/saint-cyril-of-jerusalem_bartolozzi.jpg', 'Saint Cyril of Jerusalem', 'painting', 'Saint Cyril of Jerusalem Painting', 'Francesco Bartolozzi', '18th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-cyril-of-jerusalem.jpg', 'Saint Cyril of Jerusalem', 'fresco', 'Saint Cyril of Jerusalem Fresco', NULL, '14th Century', 'an Orthodox Church', NULL, 'Public Domain', NULL),
('/saints/saint-cyril-of-jerusalem_2.png', 'Saint Cyril of Jerusalem', 'icon', 'Saint Cyril of Jerusalem Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Turibius of Mogrovejo
('/saints/saint-turibius-of-mogrovejo.jpg', 'Saint Turibius of Mogrovejo', 'painting', 'Saint Turibius of Mogrovejo Painting', NULL, '17th Century', 'Museo Nacional de Bellas Artes (Buenos Aires)', NULL, 'Public Domain', NULL),
('/saints/saint-turibius-of-mogrovejo_conca.jpg', 'The Miracle of Saint Turibius of Mogrovejo', 'painting', 'The Miracle of Saint Turibius of Mogrovejo Painting', 'Giovanni Conca', '1723', 'Musei Vaticani', NULL, 'Public Domain', NULL),

-- =========================
-- April saints
-- =========================

-- Saint Francis of Paola
('/saints/saint-francis-of-paola_ribera.jpg', 'Saint Francis of Paola', 'painting', 'Saint Francis of Paola Painting', 'Jusepe de Ribera', '1652', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-francis-of-paola_bianchi.jpg', 'Saint Francis of Paola in Ecstasy', 'painting', 'Saint Francis of Paola in Ecstasy Painting', 'Pietro Bianchi', '1728', 'Musée du Louvre', NULL, 'Public Domain', NULL),
('/saints/saint-francis-of-paola_gandolfi.jpg', 'The Vision of Saint Francis of Paola', 'painting', 'The Vision of Saint Francis of Paola Painting', 'Ubaldo Gandolfi', '1778', 'Pinacoteca Nazionale di Bologna', NULL, 'Public Domain', NULL),
('/saints/saint-francis-of-paola_giordano.jpg', 'Saint Francis of Paola crosses the straits of Messina', 'painting', 'Saint Francis of Paola crosses the straits of Messina Painting', NULL, '1692', 'Private collection', NULL, 'Public Domain', NULL),

-- Saint Isidore
('/saints/saint-isidore_murillo.jpg', 'Saint Isidore', 'painting', 'Saint Isidore Painting', 'Bartolomé Esteban Murillo', '1655', 'Seville Cathedral', NULL, 'Public Domain', NULL),
('/saints/saint-isidore_pacully.jpg', 'Saint Isidore', 'painting', 'Saint Isidore Painting', 'Master of the Pacully collection', '1480-1490', 'National Museum of Sculpture (Valladolid)', NULL, 'Public Domain', NULL),

-- Saint Vincent Ferrer
('/saints/saint-vincent-ferrer_miranda.jpg', 'Saint Vincent Ferrer', 'painting', 'Saint Vincent Ferrer Painting', 'Francisco de Miranda', '1661', 'Museum of Fine Arts (Budapest)', NULL, 'Public Domain', NULL),
('/saints/saint-vincent-ferrer_pace.jpg', 'Saint Vincent Ferrer', 'painting', 'Saint Vincent Ferrer Painting', 'Ranieri Del Pace', '1709', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-vincent-ferrer_cano.jpg', 'Saint Vincent Ferrer Preaching', 'painting', 'Saint Vincent Ferrer Preaching Painting', 'Alonso Cano', '1644-1645', 'Fundación Banco Santander', NULL, 'Public Domain', NULL),
('/saints/saint-vincent-ferrer_juanes.jpg', 'Saint Vincent Ferrer', 'painting', 'Saint Vincent Ferrer Painting', 'Juan de Juanes', '1445-1450', 'Private Collection', NULL, 'Public Domain', NULL),

-- Saint John Baptist de La Salle
('/saints/saint-john-baptist-de-la-salle.jpg', 'Saint John Baptist de la Salle', 'painting', 'Saint John Baptist de la Salle Painting', NULL, '19th Century', 'Private collection', NULL, 'Public Domain', NULL),
('/saints/saint-john-baptist-de-la-salle_muller.jpg', 'Saint John Baptist de la Salle, engraving by Chapon, from a Painting by Charles Muller', 'engraving', 'Saint John Baptist de la Salle Engraving', 'Chapon', '1887', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-john-baptist-de-la-salle_2.jpg', 'Saint John Baptist de la Salle', 'painting', 'Saint John Baptist de la Salle Painting', 'Gagliardi Giovanni', '20th Century', NULL, NULL, 'Public Domain', NULL),

-- Saint Stanislaus
('/saints/saint-stanislaus_samostrzelnik.jpg', 'Saint Stanislaus', 'painting', 'Saint Stanislaus Painting', 'Stanisław Samostrzelnik', '1530-1535', 'National Library of Poland', NULL, 'Public Domain', NULL),
('/saints/saint-stanislaus.jpg', 'Saint Stanislaus', 'painting', 'Saint Stanislaus Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Martin I
('/saints/saint-martin-i_montor.jpg', 'Saint Martin I', 'illustration', 'Saint Martin I Illustration', 'Alexis-François Artaud de Montor', '1842', 'The Lives and Times of the Popes', NULL, 'Public Domain', NULL),
('/saints/saint-martin-i_stained-glass.jpg', 'Saint Martin I', 'stained_glass', 'Saint Martin I Stained Glass', NULL, '1888', 'Saint Martin Church (Arc-en-Barrois)', NULL, 'Public Domain', NULL),
('/saints/saint-martin-i.png', 'Saint Martin I', 'mosaic', 'Saint Martin I Mosaic', NULL, '19th Century', 'Papal Basilica of Saint Paul Outside the Walls', NULL, 'Public Domain', NULL),

-- Saint Anselm
('/saints/saint-anselm_glover.jpg', 'Saint Anselm', 'engraving', 'Saint Anselm Engraving', 'George Glover', '17th Century', 'National Portrait Gallery', NULL, 'Public Domain', NULL),
('/saints/saint-anselm.jpg', 'Saint Anselm', 'painting', 'Saint Anselm Painting', NULL, NULL, 'Chiesa di S. Anselmo (Bomarzo)', NULL, 'Public Domain', NULL),

-- Saint George
('/saints/saint-george_raphael.jpg', 'Saint George and the Dragon', 'painting', 'Saint George and the Dragon Painting', 'Raphael', '1505-1506', 'National Gallery of Art (Washington, D.C.)', NULL, 'Public Domain', NULL),
('/saints/saint-george_martorell.jpg', 'Saint George and the Dragon', 'painting', 'Saint George and the Dragon Painting', 'Bernat Martorell', '1434-1435', 'Art Institute of Chicago', NULL, 'Public Domain', NULL),
('/saints/saint-george_rubens.jpg', 'Saint George Battles the Dragon', 'painting', 'Saint George Battles the Dragon Painting', 'Peter Paul Rubens', '1606-1608', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-george_moreau.jpg', 'Saint George and the Dragon', 'painting', 'Saint George Slaying the Dragon Painting', 'Gustave Moreau', '1889-1890', 'National Gallery (London)', NULL, 'Public Domain', NULL),
('/saints/saint-george_schut.jpg', 'The Beheading of Saint George', 'painting', 'The Beheading of Saint George Painting', 'Cornelis Schut', '1643', 'Royal Museum of Fine Arts Antwerp', NULL, 'Public Domain', NULL),
('/saints/saint-george_domenichino.jpg', 'Saint George', 'painting', 'Saint George Painting', 'Domenichino', '17th Century', NULL, NULL, 'Public Domain', NULL),
-- Not really catholic
-- ('/saints/saint-george_rossetti.jpg', 'The Wedding of Saint George and Princess Sabra', 'painting', 'The Wedding of Saint George and Princess Sabra Painting', 'Dante Gabriel Rossetti', '1857', 'Tate Britain', NULL, 'Public Domain', NULL),
('/saints/saint-george_icon.jpg', 'Saint George', 'icon', 'Saint George Byzantine Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Adalbert
('/saints/saint-adalbert_kovacz.jpg', 'Saint Adalbert', 'painting', 'Saint Adalbert Painting', 'Mihály Kovács', '1855', 'Dobó István Castle Museum', NULL, 'Public Domain', NULL),
('/saints/saint-adalbert-&-procopius.jpg', 'Saint Adalbert and Saint Procopius', 'painting', 'Saint Adalbert and Saint Procopius Painting', 'Master of Eggenburg', '1490-1500', 'Metropolitan Museum of Art', NULL, 'Public Domain', NULL),

-- Saint Fidelis of Sigmaringen
('/saints/saint-fidelis-of-sigmaringen.jpg', 'The Martyrdom of Saint Fidelis of Sigmaringen', 'painting', 'The Martyrdom of Saint Fidelis of Sigmaringen Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-fidelis-of-sigmaringen.webp', 'The Martyrdom of Saint Fidelis of Sigmaringen', 'painting', 'The Martyrdom of Saint Fidelis of Sigmaringen Painting', NULL, '18th Century', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-fidelis-of-sigmaringen-&-joseph-of-leonessa_tiepolo.jpg', 'Saint Fidelis of Sigmaringen and Saint Joseph of Leonessa', 'painting', 'Saint Fidelis of Sigmaringen and Saint Joseph of Leonessa Painting', 'Giambattista Tiepolo', '1752-1758', 'Galleria nazionale di Parma', NULL, 'Public Domain', NULL),

-- Saint Mark the Evangelist
('/saints/saint-mark-evangelist_hals.jpg', 'Saint Mark the Evangelist', 'painting', 'Saint Mark the Evangelist Painting', 'Frans Hals', '1625-1630', 'Pushkin Museum', NULL, 'Public Domain', NULL),
('/saints/saint-mark-evangelist_borovikovsky.jpg', 'Saint Mark the Evangelist', 'painting', 'Saint Mark the Evangelist Painting', 'Vladimir Borovikovsky', '1804-1809', 'State Russian Museum', NULL, 'Public Domain', NULL),
('/saints/saint-mark-evangelist_tintoretto_finding.jpg', 'Finding of the Body of Saint Mark', 'painting', 'Finding of the Body of Saint Mark Painting', 'Jacopo Tintoretto', '1562', 'Pinacoteca di Brera', NULL, 'Public Domain', NULL),
('/saints/saint-mark-evangelist_tintoretto_translation.jpg', 'The Translation of the Body of Saint Mark', 'painting', 'The Translation of the Body of Saint Mark Painting', 'Jacopo Tintoretto', '1562-1566', 'Gallerie dell''Accademia', NULL, 'Public Domain', NULL),

-- Saint Peter Chanel
('/saints/saint-peter-chanel.jpg', 'Saint Peter Chanel', 'painting', 'Saint Peter Chanel Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-peter-chanel_nicolet.jpg', 'Saint Peter Chanel', 'illustration', 'Saint Peter Chanel Illustration', 'Claude Nicolet', '1923', 'Book : "Vie du bienheureux Pierre-Louis-Marie Chanel : prêtre mariste et premier martyr de l''Océanie"', NULL, 'Public Domain', NULL),

-- Saint Louis Grignion de Montfort
('/saints/saint-louis-grignion-de-montfort.jpg', 'Saint Louis Grignion de Montfort', 'painting', 'Saint Louis Grignion de Montfort Painting', NULL, '19th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-louis-grignion-de-montfort_2.jpg', 'Saint Louis Grignion de Montfort and Blessed Marie-Louise Trichet', 'illustration', 'Saint Louis Grignion de Montfort and Blessed Marie-Louise Trichet Illustration', NULL, '19th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-louis-grignion-de-montfort_3.jpg', 'Saint Louis Grignion de Montfort', 'illustration', 'Saint Louis Grignion de Montfort Illustration', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Catherine of Siena
-- NOTE: fixed broken slugs (saint-catherine-of-siena_dolci.jpg etc.) to saint-catherine-of-siena
('/saints/saint-catherine-of-siena_dolci.jpg', 'Saint Catherine of Siena', 'painting', 'Saint Catherine of Siena Painting', 'Carlo Dolci', '1665', 'Dulwich Picture Gallery', NULL, 'Public Domain', NULL),
('/saints/saint-catherine-of-siena_tiepolo.jpg', 'Saint Catherine of Siena', 'painting', 'Saint Catherine of Siena Painting', 'Giambattista Tiepolo', '1746', 'Gemäldegalerie (Berlin)', NULL, 'Public Domain', NULL),
('/saints/saint-catherine-of-siena.jpg', 'Saint Catherine of Siena', 'painting', 'Saint Catherine of Siena Painting', NULL, '19th Century', 'Santa Maria del Rosario in Prati', NULL, 'Public Domain', NULL),
('/saints/saint-catherine-of-siena-&-rose-of-lima-&-agnes-of-montepulciano_tiepolo.jpg', 'The Virgin Appearing to Saint Catherine of Siena and Saint Rose of Lima and Saint Agnes of Montepulciano', 'painting', 'The Virgin Appearing to Saint Catherine of Siena, Saint Rose of Lima and Saint Agnes of Montepulciano Painting', 'Giambattista Tiepolo', '1747-1748', 'Gesuati', NULL, 'Public Domain', NULL),
('/saints/saint-catherine-of-siena_sassoferrato.jpg', 'Saint Catherine of Siena', 'painting', 'Saint Catherine of Siena Painting', 'Sassoferrato', '17th Century', 'Museo del Settecento Veneziano', NULL, 'Attribution 3.0 Unported', NULL),

-- Saint Pius V
('/saints/saint-pius-v_passarotti.jpg', 'Saint Pius V', 'painting', 'Saint Pius V Painting', 'Bartolomeo Passarotti', '1566', 'Walters Art Museum', NULL, 'Public Domain', NULL),
('/saints/saint-pius-v_giovane.jpg', 'Saint Pius V', 'painting', 'Saint Pius V Painting', 'Palma il Giovane', '1600', 'Museo d''Arte di Chianciano Terme', NULL, 'Public Domain', NULL),
('/saints/saint-pius-v.jpg', 'Saint Pius V', 'painting', 'Saint Pius V Painting', NULL, '18th Century', NULL, NULL, 'Public Domain', NULL),

-- =========================
-- May saints
-- =========================

-- Saint Athanasius
('/saints/saint-athanasius_domenichino_grottaferrata.jpg', 'Saint Athanasius', 'fresco', 'Saint Athanasius Fresco', 'Domenichino', '1609-1612', 'Grottaferata Abbey', NULL, 'Public Domain', NULL),
('/saints/saint-athanasius_solimena.jpg', 'Saint Athanasius', 'painting', 'Saint Athanasius Painting', 'Francesco Solimena', '18th Century', 'Naples Cathedral', NULL, 'Public Domain', NULL),
('/saints/saint-athanasius_icon.jpg', 'Saint Athanasius', 'icon', 'Saint Athanasius Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Philip, Apostle
('/saints/saint-phillip-apostle_rubens.jpg', 'Saint Philip the Apostle', 'painting', 'Saint Philip Apostle Painting', 'Peter Paul Rubens', '1611', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-phillip-apostle_la-tour.jpg', 'Saint Philip the Apostle', 'painting', 'Saint Philip Apostle Painting', 'Georges de La Tour', '1625', 'Chrysler Museum of Art', NULL, 'Public Domain', NULL),
('/saints/saint-phillip-apostle_ribera.jpg', 'Saint Philip the Apostle', 'painting', 'Saint Philip Apostle Painting', 'Jusepe de Ribera', '1610', 'Fondazione Roberto Longhi', NULL, 'Public Domain', NULL),
('/saints/saint-phillip-apostle_dyck.jpg', 'Saint Philip the Apostle', 'painting', 'Saint Philip Apostle Painting', 'Anthony van Dyck', '1619-1621', 'Kunsthistorisches Museum', NULL, 'Public Domain', NULL),

-- Saint James the Less, Apostle
('/saints/saint-james-the-less-apostle_rubens.jpg', 'Saint James the Less the Apostle', 'painting', 'Saint James the Less Apostle Painting', 'Peter Paul Rubens', '1610-1611', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-james-the-less-apostle_la-tour.jpg', 'Saint James the Less the Apostle', 'painting', 'Saint James the Less Apostle Painting', 'Georges de La Tour', '1625', 'Chrysler Museum of Art', NULL, 'Public Domain', NULL),
('/saints/saint-james-the-less-apostle_ribera.jpg', 'Saint James the Less the Apostle', 'painting', 'Saint James the Less Apostle Painting', 'Jusepe de Ribera', '1652', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-james-the-less-apostle_batoni.jpg', 'Saint James the Less the Apostle', 'painting', 'Saint James the Less Apostle Painting', 'Pompeo Batoni', '1740-1743', 'National Trust', NULL, 'Public Domain', NULL),

-- Saint John of Ávila
('/saints/saint-john-of-avila_greco.jpg', 'Saint John of Ávila', 'painting', 'Saint John of Ávila Painting', 'El Greco', '1580', 'El Greco Museum', NULL, 'Public Domain', NULL),
('/saints/saint-john-of-avila_subleyras.jpg', 'Saint John of Ávila', 'painting', 'Saint John of Ávila Painting', 'Pierre Subleyras', '1745-1746', 'Birmingham Museums Trust', NULL, 'Public Domain', NULL),

-- Saint Nereus
-- also linked to saint-achilleus below
('/saints/saint-domitilla-&-nereus-&-achilleus_rubens.jpg', 'Saint Domitilla with Saint Nereus and Saint Achilleus', 'painting', 'Saint Domitilla with Saint Nereus and Saint Achilleus Painting', 'Peter Paul Rubens', '1608', 'Santa Maria in Vallicella', NULL, 'Public Domain', NULL),
('/saints/saint-domitilla-&-nereus-&-achilleus_pomarancio.jpg', 'Saint Domitilla with Saint Nereus and Saint Achilleus', 'painting', 'Saint Domitilla with Saint Nereus and Saint Achilleus Painting', 'Cristoforo Roncalli (Il Pomarancio)', '1598', 'Santi Nereo e Achilleo', NULL, 'Public Domain', NULL),

-- Saint Pancras
('/saints/saint-pancras_sachs.jpg', 'Saint Pancras', 'painting', 'Saint Pancras Painting', 'Lambert Sachs', '19th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-pancras_guercino.jpg', 'Saint Pancras', 'painting', 'Saint Pancras Painting', 'Il Guercino', '1620-1625', 'Pinacoteca di Brera', NULL, 'Public Domain', NULL),

-- Saint Matthias, Apostle
('/saints/saint-matthias-apostle_rubens.jpg', 'Saint Matthias the Apostle', 'painting', 'Saint Matthias Apostle Painting', 'Peter Paul Rubens', '1611', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-matthias-apostle_dyck.jpg', 'Saint Matthias the Apostle', 'painting', 'Saint Matthias Apostle Painting', 'Anthony van Dyck', '1619', 'Yale University Art Gallery', NULL, 'Public Domain', NULL),
('/saints/saint-matthias-apostle_tristan.jpg', 'Saint Matthias the Apostle', 'painting', 'Saint Matthias Apostle Painting', 'Luis Tristán', '1620', 'El Greco Museum', NULL, 'Public Domain', NULL),

-- Saint John I
('/saints/saint-john-i_montor.jpg', 'Saint John I', 'illustration', 'Saint John I Illustration', 'Alexis-François Artaud de Montor', '1842', 'The Lives and Times of the Popes', NULL, 'Public Domain', NULL),
('/saints/saint-john-i.jpg', 'Saint John I', 'mosaic', 'Saint John I Mosaic', NULL, '19th Century', 'Papal Basilica of Saint Paul Outside the Walls', NULL, 'Public Domain', NULL),

-- Saint Bernardine of Siena
('/saints/saint-bernardine-of-siena_bellini.png', 'Saint Bernardine of Siena', 'painting', 'Saint Bernardine of Siena Painting', 'Jacopo Bellini', '1450-1455', 'Metropolitan Museum of Art', NULL, 'Public Domain', NULL),
('/saints/saint-bernardine-of-siena.jpg', 'Saint Bernardine of Siena', 'painting', 'Saint Bernardine of Siena Painting', NULL, '16th Century', 'Langeais Castle (France)', NULL, 'Public Domain', NULL),
('/saints/saint-bernardine-of-siena_greco.jpg', 'Saint Bernardine of Siena', 'painting', 'Saint Bernardine of Siena Painting', 'El Greco', '1603', 'El Greco Museum', NULL, 'Public Domain', NULL),
('/saints/saint-bernardine-of-siena_brescia.jpg', 'The Virgin and Child with Saint Bernardino and Other Saints', 'painting', 'The Virgin and Child with Saint Bernardino and Other Saints', 'Moretto da Brescia', '1540', 'National Gallery', NULL, 'Public Domain', NULL),

-- Saint Christopher Magallanes
('/saints/saint-christopher-magallanes.jpg', 'Saint Christopher Magallanes', 'painting', 'Saint Christopher Magallanes Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-christopher-magallanes_2.jpg', 'Saint Christopher Magallanes', 'painting', 'Saint Christopher Magallanes Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-christopher-magallanes_picture.jpg', 'Saint Christopher Magallanes', 'photograph', 'Saint Christopher Magallanes Picture', NULL, '20th Century', NULL, NULL, 'Public Domain', NULL),

-- Saint Rita of Cascia
('/saints/saint-rita-of-cascia.png', 'Saint Rita of Cascia', 'painting', 'Saint Rita of Cascia Painting', NULL, '17th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-rita-of-cascia_2.jpg', 'Saint Rita of Cascia', 'painting', 'Saint Rita of Cascia Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-rita-of-cascia_brandi.jpg', 'Saint Rita of Cascia in Ecstasy', 'painting', 'Saint Rita of Cascia in Ecstasy Painting', 'Giacinto Brandi', '17th Century', 'Sant''Agostino (Rome)', NULL, 'Public Domain', NULL),
('/saints/saint-rita-of-cascia_poussin.jpg', 'The Translation of Saint Rita of Cascia', 'painting', 'The Translation of Saint Rita of Cascia Painting', 'Nicolas Poussin', '1635', 'Dulwich Picture Gallery', NULL, 'Public Domain', NULL),
('/saints/saint-rita-of-cascia_torres.jpg', 'Saint Rita of Cascia', 'painting', 'Saint Rita of Cascia Painting', 'Antonio de Torres', '1720', 'El Paso Museum of Art', NULL, 'Public Domain', NULL),

-- Saint Bede the Venerable
('/saints/saint-bede-the-venerable.webp', 'Saint Bede the Venerable', 'engraving', 'Saint Bede the Venerable Engraving', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-bede-the-venerable_penrose.jpg', 'Saint Bede the Venerable translating the Last Chapter of the Gospel of John on his Deathbed', 'painting', 'Saint Bede the Venerable translating the Last Chapter of the Gospel of John on his Deathbed Painting', 'James Doyle Penrose', '1902', 'Royal Academy (London)', NULL, 'Public Domain', NULL),
('/saints/saint-bede-the-venerable_icon.webp', 'Saint Bede the Venerable', 'icon', 'Saint Bede the Venerable Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Gregory VII
('/saints/saint-gregory-vii_knille.webp', 'Saint Gregory VII', 'engraving', 'Saint Gregory VII Engraving', 'Otto Knille', '19th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-gregory-vii.png', 'Saint Gregory VII', 'painting', 'Saint Gregory VII Painting', NULL, '17th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-gregory-vii_scarpelli.jpg', 'The Holy Roman Emperor Henry IV begging for the forgiveness of Pope Gregory VII', 'illustration', 'The Holy Roman Emperor Henry IV begging for the forgiveness of Pope Gregory VII Illustration', 'Tancredi Scarpelli', '1930', 'Book : "Storia d''Italia by Paolo Giudici"', NULL, 'Public Domain', NULL),
('/saints/saint-gregory-vii_2.webp', 'Saint Gregory VII forgives Quintius', 'illustration', 'Saint Gregory VII Illustration', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-gregory-vii_3.png', 'Saint Gregory VII', 'mosaic', 'Saint Gregory VII Mosaic', NULL, '19th Century', 'Papal Basilica of Saint Paul Outside the Walls', NULL, 'Public Domain', NULL),
('/saints/saint-gregory-vii_4.jpg', 'Saint Gregory VII', 'illustration', 'Saint Gregory VII Illustration', 'Giovanni Battista de'' Cavalieri', '1580', 'Book : "Pontificum Romanorum effigies"', NULL, 'Public Domain', NULL),

-- Saint Mary Magdalene de' Pazzi
('/saints/saint-mary-magdalene-de-pazzi_cano.jpg', 'Saint Mary Magdalene de'' Pazzi', 'painting', 'Saint Mary Magdalene de'' Pazzi Painting', 'Alonso Cano', '1628', 'Museum of Fine Arts of Seville', NULL, 'Public Domain', NULL),
('/saints/saint-mary-magdalene-de-pazzi_rosi.jpg', 'Saint Mary Magdalene de'' Pazzi in Ecstasy', 'painting', 'Saint Mary Magdalene de'' Pazzi in Ecstasy Painting', 'Alessandro Rosi', '17th Century', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-mary-magdalene-de-pazzi_moya.jpg', 'Vision of Saint Mary Magdalene de'' Pazzi', 'painting', 'Vision of Saint Mary Magdalene de'' Pazzi Painting', 'Pedro de Moya', '17th Century', 'Museo de Bellas Artes de Granada', NULL, 'Public Domain', NULL),

-- Saint Philip Neri
('/saints/saint-philip-neri_reni.jpg', 'Saint Philip Neri in Ecstasy', 'painting', 'Saint Philip Neri in Ecstasy Painting', 'Guido Reni', '1614', 'Santa Maria in Vallicella', NULL, 'Public Domain', NULL),
('/saints/saint-philip-neri_conca.gif', 'Saint Philip Neri', 'painting', 'Saint Philip Neri Painting', 'Sebastiano Conca', '18th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-philip-neri_dolci.jpg', 'Saint Philip Neri', 'painting', 'Saint Philip Neri Painting', 'Carlo Dolci', '1645-1646', 'Metropolitan Museum of Art', NULL, 'Public Domain', NULL),
('/saints/saint-philip-neri_tiepolo.jpg', 'Saint Philip Neri', 'painting', 'Saint Philip Neri Painting', 'Giambattista Tiepolo', '1739-1740', 'Museo Diocesano Camerino', NULL, 'Public Domain', NULL),
('/saints/saint-philip-neri_nogari.jpg', 'Saint Philip Neri', 'painting', 'Saint Philip Neri Painting', 'Carlo Francesco Nogari', '18th Century', 'Galleria nazionale di Parma', NULL, 'Public Domain', NULL),

-- Saint Augustine of Canterbury
('/saints/saint-augustine-of-canterbury_lommelin.jpg', 'Saint Augustine of Canterbury', 'engraving', 'Saint Augustine of Canterbury Engraving', 'Adriaen Lommelin', '17th Century', NULL, NULL, 'Attribution 4.0 International', NULL),
('/saints/saint-augustine-of-canterbury.jpg', 'Saint Augustine of Canterbury and the Saxons', 'illustration', 'Saint Augustine of Canterbury and the Saxons Illustration', 'Joseph Martin Kronheim', '1868', 'Book: "Pictures of English history"', NULL, 'Public Domain', NULL),
('/saints/saint-augustine-of-canterbury_icon.jpg', 'Saint Augustine of Canterbury', 'icon', 'Saint Augustine of Canterbury Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Paul VI
('/saints/saint-paul-vi.jpg', 'Saint Paul VI', 'painting', 'Saint Paul VI Painting', NULL, '20th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-paul-vi_picture.jpg', 'Saint Paul VI', 'photograph', 'Saint Paul VI Picture', 'Fotografia Felici', '1969', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-paul-vi_picture_2.webp', 'Saint Paul VI', 'photograph', 'Saint Paul VI Picture', NULL, '20th Century', NULL, NULL, 'Public Domain', NULL),

-- =========================
-- June saints
-- =========================

-- Saint Justin Martyr
('/saints/saint-justin-martyr_thevet.jpg', 'Saint Justin Martyr', 'illustration', 'Saint Justin Martyr Illustration', 'André Thévet', '1584', 'Book : "Les Vrais Pourtraits et Vies des Hommes Illustres"', NULL, 'Public Domain', NULL),
('/saints/saint-justin-martyr_icon.jpg', 'Saint Justin Martyr', 'icon', 'Saint Justin Martyr Icon', 'Theophanes the Cretan', '1545-1546', 'Stavronikita Monastery', NULL, 'Public Domain', NULL),

-- Saint Marcellinus
-- also linked to saint-peter-exorcist below
('/saints/saint-marcellinus-&-peter.jpg', 'Saint Marcellinus and Saint Peter', 'painting', 'Saint Marcellinus and Saint Peter (exorcist) Painting', NULL, NULL, 'Santi Marcellino e Pietro al Laterano (Rome)', NULL, 'Public Domain', NULL),
('/saints/saint-marcellinus-&-peter_martyr.jpg', 'The Martyrdom of Saint Marcellinus and Saint Peter (exorcist)', 'illustration', 'The Martyrdom of Saint Marcellinus and Saint Peter (exorcist) Illustration', NULL, '1170-1200', 'Codex Bodmer', NULL, 'Public Domain', NULL),
('/saints/saint-marcellinus-&-peter_2.jpg', 'Saint Marcellinus and Saint Peter (exorcist)', 'illustration', 'Saint Marcellinus and Saint Peter (exorcist) Illustration', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Charles Lwanga and Companions (maybe should optimize by creating a "saint-charles-lwanga" slug only)
('/saints/saint-charles-lwanga-and-companions_icon.jpg', 'Saint Charles Lwanga and Companions', 'icon', 'Saint Charles Lwanga and Companions Icon', 'Teresa Satola', '2013', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-charles-lwanga-and-companions.avif', 'Saint Charles Lwanga and Companions', 'painting', 'Saint Charles Lwanga and Companions Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-charles-lwanga-and-companions_2.jpg', 'Saint Charles Lwanga and Companions', 'painting', 'Saint Charles Lwanga and Companions Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
-- WIP

-- Saint Boniface
('/saints/saint-boniface_bloemaert.jpg', 'Saint Boniface', 'painting', 'Saint Boniface Painting', 'Cornelis Bloemaert', '1630', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-boniface_rode.jpg', 'Saint Boniface chops down a cult tree in Hessen', 'engraving', 'Saint Boniface chops down a cult tree in Hessen Engraving', 'Bernhard Rode', '1781', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-boniface_rethel.jpg', 'Saint Boniface', 'painting', 'Saint Boniface Painting', 'Alfred Rethel', '1832', 'Berggruen Museum', NULL, 'Public Domain', NULL),

-- Saint Norbert
('/saints/saint-norbert_vaszary.jpg', 'Saint Norbert', 'painting', 'Saint Norbert Painting', 'János Vaszary', '1897', 'a Zsámbék Church', NULL, 'Public Domain', NULL),
('/saints/saint-norbert_rubens.jpg', 'Saint Norbert overcoming Tanchelm', 'painting', 'Saint Norbert overcoming Tanchelm Painting', 'Peter Paul Rubens', '1623', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-norbert_hoey.jpg', 'Saint Norbert', 'painting', 'Saint Norbert Painting', 'Jean de Hoey', '17th Century', 'Xanten Chapter Museum', NULL, 'Public Domain', NULL),
('/saints/saint-norbert_crayer.jpg', 'Saint Norbert', 'painting', 'Saint Norbert Painting', 'Gaspar de Crayer', '1664', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-norbert.jpg', 'Saint Norbert', 'painting', 'Saint Norbert Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Ephrem
('/saints/saint-ephrem_icon.jpg', 'Saint Ephrem', 'icon', 'Saint Ephrem Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-ephrem_mosaic.jpg', 'Saint Ephrem', 'mosaic', 'Saint Ephrem Mosaic', NULL, '11th Century', 'Nea Moni of Chios', NULL, 'Public Domain', NULL),
('/saints/saint-ephrem_illustration.jpg', 'Saint Ephrem', 'illustration', 'Saint Ephrem Illustration', NULL, '16th Century', 'a Russian Missal', NULL, 'Public Domain', NULL),

-- Saint Barnabas, Apostle
('/saints/saint-barnabas-apostle.jpg', 'Saint Barnabas the Apostle', 'painting', 'Saint Barnabas Apostle Painting', NULL, '18th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-barnabas-apostle_veronese.jpg', 'Saint Barnabas the Apostle healing the Sick', 'painting', 'Saint Barnabas Apostle healing the Sick Painting', 'Paolo Veronese', '1566', 'San Giorgio in Braida (Verona)', NULL, 'Public Domain', NULL),
-- NOTE: '/saints/saint-paul-apostle-&-barnabas.jpg' is already inserted above (also linked to Barnabas)

-- Saint Anthony of Padua
('/saints/saint-anthony-of-padua_zurbaran.jpg', 'Saint Anthony of Padua', 'painting', 'Saint Anthony of Padua Painting', 'Francisco de Zurbarán', '1627-1630', 'São Paulo Museum of Art', NULL, 'Public Domain', NULL),
('/saints/saint-anthony-of-padua_farelli.jpg', 'Saint Anthony of Padua with the Christ Child', 'painting', 'Saint Anthony of Padua with the Christ Child Painting', 'Giacomo Farelli', '17th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-anthony-of-padua_sirani.jpg', 'Saint Anthony of Padua with the Christ Child', 'painting', 'Saint Anthony of Padua with the Christ Child Painting', 'Elisabetta Sirani', '17th Century', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-anthony-of-padua_strozzi.jpg', 'Saint Anthony of Padua holding the Infant Jesus', 'painting', 'Saint Anthony of Padua holding the Infant Jesus Painting', 'Bernardo Strozzi', '1625', 'Musée des Beaux-Arts de Strasbourg', NULL, 'Public Domain', NULL),
('/saints/saint-anthony-of-padua_murillo.jpg', 'Saint Anthony of Padua with the Child', 'painting', 'Saint Anthony of Padua with the Child Painting', 'Bartolomé Esteban Murillo', '1668-1669', 'Museum of Fine Arts of Seville', NULL, 'Public Domain', NULL),

-- Saint Romuald
('/saints/saint-romuald_guercino.jpg', 'Saint Romuald', 'painting', 'Saint Romuald Painting', 'Il Guercino', '1640-1641', 'Ravenna Art Museum', NULL, 'Public Domain', NULL),
('/saints/saint-romuald_loth.jpg', 'Saint Romuald', 'painting', 'Saint Romuald Painting', 'Johann Carl Loth', '17th Century', 'Gallerie dell''Accademia', NULL, 'Public Domain', NULL),
('/saints/saint-romuald_angelico.jpg', 'Saint Romuald', 'fresco', 'Saint Romuald Fresco', 'Fra Angelico', '1441', 'Museo Nazionale di San Marco', NULL, 'Public Domain', NULL),
('/saints/saint-romuald_mussini.jpg', 'Saint Romuald', 'painting', 'Saint Romuald Painting', 'Bernardino Mussini', '1914-1915', 'Monastery of Camaldoli', NULL, 'Public Domain', NULL),

-- Saint Aloysius Gonzaga
('/saints/saint-aloysius-gonzaga_mazzanti.jpg', 'Saint Aloysius Gonzaga adoring the Crucifix', 'painting', 'Saint Aloysius Gonzaga adoring the Crucifix Painting', 'Ludovico Mazzanti', '1740-1745', 'Fondation Bemberg', NULL, 'Public Domain', NULL),
('/saints/saint-aloysius-gonzaga_guercino.jpg', 'The Vocation of Saint Aloysius Gonzaga', 'painting', 'The Vocation of Saint Aloysius Gonzaga Painting', 'Il Guercino', '1650', 'Metropolitan Museum of Art', NULL, 'Public Domain', NULL),
('/saints/saint-aloysius-gonzaga_goya.jpg', 'Saint Aloysius Gonzaga', 'painting', 'Saint Aloysius Gonzaga Painting', 'Francisco Goya', '1798', 'Zaragoza Museum', NULL, 'Public Domain', NULL),
('/saints/saint-aloysius-gonzaga_tiepolo.jpg', 'Saint Aloysius Gonzaga in Glory', 'painting', 'Saint Aloysius Gonzaga in Glory Painting', 'Giambattista Tiepolo', '1726', 'Courtauld Institute of Art', NULL, 'Public Domain', NULL),

-- Saint Paulinus of Nola
('/saints/saint-paulinus-of-nola.jpg', 'Saint Paulinus of Nola', 'engraving', 'Saint Paulinus of Nola Line Engraving', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-paulinus-of-nola_stained-glass.jpg', 'Saint Paulinus of Nola', 'stained_glass', 'Saint Paulinus of Nola Stained Glass', NULL, NULL, 'Linz Cathedral (Austria)', NULL, 'Public Domain', NULL),
('/saints/saint-paulinus-of-nola_azzolino.jpg', 'Saint Paulinus of Nola frees a Slave', 'painting', 'Saint Paulinus of Nola frees a Slave Painting', 'Giovanni Bernardino Azzolini', '1626', 'Pio Monte della Misericordia', NULL, 'Public Domain', NULL),

-- Saint John Fisher
('/saints/saint-john-fisher_holbein-younger.jpg', 'Saint John Fisher', 'painting', 'Saint John Fisher Painting', 'Hans Holbein the Younger', '1497-1543', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-john-fisher_illustration.jpg', 'Saint John Fisher', 'engraving', 'Saint John Fisher Line Engraving', 'Jacobus Houbraken', '1743', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-john-fisher_briggs.jpg', 'Saint John Fisher', 'painting', 'Saint John Fisher Painting', 'Gwyneth Thompson Briggs', '2019', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-john-fisher_briggs_2.jpg', 'Saint John Fisher', 'painting', 'Saint John Fisher Painting', 'Gwyneth Thompson Briggs', '21th Century', NULL, NULL, 'Public Domain', NULL),

-- Saint Thomas More
('/saints/saint-thomas-more_holbein-younger.jpg', 'Saint Thomas More', 'painting', 'Saint Thomas More Painting', 'Hans Holbein the Younger', '1527', 'Frick Collection', NULL, 'Public Domain', NULL),
('/saints/saint-thomas-more_ward.jpg', 'Saint Thomas More Farewell to his Daughter', 'painting', 'Saint Thomas More Farewell to his Daughter Painting', 'Edward Matthew Ward', '19th Century', NULL, NULL, 'Public Domain', NULL),

-- Saint Peter, Apostle
('/saints/saint-peter-apostle_rubens.jpg', 'Saint Peter the Apostle', 'painting', 'Saint Peter Apostle Painting', 'Peter Paul Rubens', '1610-1612', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-peter-apostle_rubens_charge.jpg', 'Christ''s Charge to Peter', 'painting', 'Christ''s Charge to Peter Painting', 'Peter Paul Rubens', '1616', 'Wallace Collection', NULL, 'Public Domain', NULL),
('/saints/saint-peter-apostle_dyck.jpg', 'Saint Peter the Apostle', 'painting', 'Saint Peter Apostle Painting', 'Anthony van Dyck', '17th Century', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-peter-apostle_dyck_penitent.jpg', 'The Penitent Saint Peter', 'painting', 'The Penitent Saint Peter Painting', 'Anthony van Dyck', '1618-1620', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-peter-apostle_guercino.jpg', 'Saint Peter the Apostle', 'painting', 'Saint Peter Apostle Painting', 'Il Guercino', '17th Century', 'Fondation Bemberg', NULL, 'Attribution-ShareAlike 4.0 International', NULL),
('/saints/saint-peter-apostle_guercino_weeping.jpg', 'Saint Peter Weeping before the Virgin', 'painting', 'Saint Peter Weeping before the Virgin Painting', 'Il Guercino', '1647', 'Musée du Louvre', NULL, 'Public Domain', NULL),
('/saints/saint-peter-apostle_murillo.jpg', 'Saint Peter the Apostle in Tears', 'painting', 'Saint Peter Apostle in Tears Painting', 'Bartolomé Esteban Murillo', '1650-1655', 'Museo de Bellas Artes de Bilbao', NULL, 'Public Domain', NULL),
('/saints/saint-peter-apostle_ribera.jpg', 'Saint Peter the Apostle', 'painting', 'Saint Peter Apostle Painting', 'Jusepe de Ribera', '1630', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-peter-apostle_ribera_penitent.jpg', 'The Penitent Saint Peter', 'painting', 'The Penitent Saint Peter Painting', 'Jusepe de Ribera', '1628-1632', 'Art Institute of Chicago', NULL, 'Public Domain', NULL),
('/saints/saint-peter-apostle_caravaggio_crucifixion.jpg', 'The Crucifixion of Saint Peter', 'painting', 'The Crucifixion of Saint Peter Painting', 'Caravaggio', '1600-1601', 'Santa Maria del Popolo (Rome)', NULL, 'Public Domain', NULL),
('/saints/saint-peter-apostle_rembrandt.jpg', 'Saint Peter the Apostle', 'painting', 'Saint Peter Apostle Painting', 'Rembrandt', '1632', 'Nationalmuseum (Stockholm)', NULL, 'Public Domain', NULL),
('/saints/saint-peter-apostle_rembrandt_denial.jpg', 'The Denial of Saint Peter', 'painting', 'The Denial of Saint Peter Painting', 'Rembrandt', '1660', 'Rijksmuseum', NULL, 'Public Domain', NULL),
('/saints/saint-peter-apostle_rembrandt_prison.jpg', 'Saint Peter in Prison', 'painting', 'Saint Peter in Prison Painting', 'Rembrandt', '1631', 'Israel Museum', NULL, 'Public Domain', NULL),
('/saints/saint-peter-apostle_velazquez.jpg', 'The Tears of Saint Peter the Apostle', 'painting', 'The Tears of Saint Peter Apostle Painting', 'Diego Velázquez', '1617-1619', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-peter-apostle_zurbaran.jpg', 'Saint Peter the Apostle', 'painting', 'Saint Peter Apostle Painting', 'Francisco de Zurbarán', '1633', 'National Museum of Ancient Art (Lisbon)', NULL, 'Public Domain', NULL),
('/saints/saint-peter-apostle_brion.jpg', 'Jesus and Peter on the Water', 'painting', 'Jesus and Peter on the Water Painting', 'Gustave Brion', '1863', 'Private Collection', NULL, 'Public Domain', NULL),

-- Saint Cyril of Alexandria
('/saints/saint-cyril-of-alexandria_fresco.jpg', 'Saint Cyril of Alexandria', 'fresco', 'Saint Cyril of Alexandria Fresco', NULL, '14th Century', 'Kariye Camii (Istanbul)', NULL, 'Public Domain', NULL),
('/saints/saint-cyril-of-alexandria_icon.jpg', 'Saint Cyril of Alexandria', 'icon', 'Saint Cyril of Alexandria Icon', 'Emmanuel Tzanes', '1654', 'Byzantine Museum of Antivouniotissa', NULL, 'Attribution-ShareAlike 3.0 Unported', NULL),
('/saints/saint-cyril-of-alexandria_stained-glass.jpg', 'Saint Cyril of Alexandria', 'stained_glass', 'Saint Cyril of Alexandria Stained Glass', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Irenaeus
('/saints/saint-irenaeus_icon.jpg', 'Saint Irenaeus', 'icon', 'Saint Irenaeus Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-irenaeus_stained-glass.jpg', 'Saint Irenaeus', 'stained_glass', 'Saint Irenaeus Stained Glass', 'Lucien Bégule', '1901', 'Saint Irenaeus Church (Lyon)', NULL, 'Public Domain', NULL),

-- First Martyrs of the Holy Roman Church
-- (we don''t do it as it is a group of martyrs, not a saint)

-- =========================
-- July saints
-- =========================

-- Saint Thomas, Apostle
('/saints/saint-thomas-apostle_rubens.jpg', 'Saint Thomas the Apostle', 'painting', 'Saint Thomas Apostle Painting', 'Peter Paul Rubens', '1610-1612', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-thomas-apostle_dyck.jpg', 'Saint Thomas the Apostle', 'painting', 'Saint Thomas Apostle Painting', 'Anthony van Dyck', '1620', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-thomas-apostle_velazquez.jpg', 'Saint Thomas the Apostle', 'painting', 'Saint Thomas Apostle Painting', 'Diego Velázquez', '1618-1620', 'Musée des Beaux-Arts d''Orléans', NULL, 'Public Domain', NULL),
('/saints/saint-thomas-apostle_ribera.jpg', 'Saint Thomas the Apostle', 'painting', 'Saint Thomas Apostle Painting', 'Jusepe de Ribera', '1630-1635', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-thomas-apostle_la-tour.jpg', 'Saint Thomas the Apostle', 'painting', 'Saint Thomas Apostle Painting', 'Georges de La Tour', '1625-1630', 'Musée du Louvre', NULL, 'Public Domain', NULL),
('/saints/saint-thomas-apostle_la-tour_2.jpg', 'Saint Thomas the Apostle', 'painting', 'Saint Thomas Apostle Painting', 'Georges de La Tour', '17th Century', 'National Museum of Western Art (Tokyo)', NULL, 'Public Domain', NULL),
('/saints/saint-thomas-apostle_caravaggio.jpg', 'The Incredulity of Saint Thomas', 'painting', 'The Incredulity of Saint Thomas Painting', 'Caravaggio', '1601-1602', 'Sanssouci', NULL, 'Public Domain', NULL),
('/saints/saint-thomas-apostle_rubens_martyr.jpg', 'The Martyrdom of Saint Thomas the Apostle', 'painting', 'The Martyrdom of Saint Thomas Apostle Painting', 'Peter Paul Rubens', '1636-1638', 'National Gallery Prague', NULL, 'Public Domain', NULL),
('/saints/saint-thomas-apostle_rembrandt.jpg', 'The Incredulity of Saint Thomas', 'painting', 'The Incredulity of Saint Thomas Painting', 'Rembrandt', '1634', 'Pushkin Museum', NULL, 'Public Domain', NULL),
('/saints/saint-thomas-apostle_zurbaran.jpg', 'Saint Thomas the Apostle', 'painting', 'Saint Thomas Apostle Painting', 'Francisco de Zurbarán', '1633', 'National Museum of Ancient Art (Lisbon)', NULL, 'Public Domain', NULL),

-- Saint Elizabeth of Portugal
('/saints/saint-elizabeth-of-portugal_zurbaran.jpg', 'Saint Elizabeth of Portugal', 'painting', 'Saint Elizabeth of Portugal Painting', 'Francisco de Zurbarán', '1630-1635', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-elizabeth-of-portugal.jpg', 'Saint Elizabeth of Portugal', 'painting', 'Saint Elizabeth of Portugal Painting', NULL, '1852', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-elizabeth-of-portugal_2.jpg', 'Queen Saint Elizabeth and the Miracle of the Roses', 'painting', 'Queen Saint Elizabeth and the Miracle of the Roses Painting', NULL, '1540', 'Machado de Castro National Museum', NULL, 'Public Domain', NULL),
('/saints/saint-elizabeth-of-portugal_castro.jpg', 'Saint Elizabeth of Portugal', 'painting', 'Saint Elizabeth of Portugal Painting', 'José Gil de Castro', '1820', 'Museo Colonial', NULL, 'Public Domain', NULL),

-- Saint Anthony Zaccaria
('/saints/saint-anthony-zaccaria.jpg', 'Saint Anthony Zaccaria', 'illustration', 'Saint Anthony Zaccaria Illustration', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-anthony-zaccaria_2.jpg', 'Saint Anthony Zaccaria', 'painting', 'Saint Anthony Zaccaria Painting', NULL, NULL, NULL, NULL, 'Attribution-ShareAlike 3.0 Unported', NULL),
('/saints/saint-anthony-zaccaria_3.jpg', 'Saint Anthony Zaccaria', 'painting', 'Saint Anthony Zaccaria Painting', NULL, NULL, NULL, NULL, 'Attribution-ShareAlike 4.0 International', NULL),
('/saints/saint-anthony-zaccaria_4.jpg', 'Saint Anthony Zaccaria', 'painting', 'Saint Anthony Zaccaria Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Maria Goretti
('/saints/saint-maria-goretti_soffredini.jpg', 'Saint Maria Goretti', 'painting', 'Saint Maria Goretti Painting', 'Giuseppe Brovelli Soffredini', '20th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-maria-goretti_2.jpg', 'Saint Maria Goretti', 'painting', 'Saint Maria Goretti Painting', NULL, '20th Century', NULL, NULL, 'Public Domain', NULL),

-- Saint Augustine Zhao Rong and Companions
('/saints/saint-augustine-zhao-rong_icon.jpg', 'Saint Augustine Zhao Rong', 'icon', 'Saint Augustine Zhao Rong Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-augustine-zhao-rong-&-companions_liu.jpg', 'Saint Augustine Zhao Rong and Companions (120 Martyrs of China)', 'painting', 'Saint Augustine Zhao Rong and Companions Painting', 'Monica Liu', NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-augustine-zhao-rong_stained-glass.jpg', 'Saint Augustine Zhao Rong', 'stained_glass', 'Saint Augustine Zhao Rong Stained Glass', NULL, NULL, 'Shrine of Saint Andrew Kim Taegon (Philippines)', NULL, 'Public Domain', NULL),

-- Saint Benedict, Abbot
('/saints/saint-benedict.jpg', 'Saint Benedict', 'painting', 'Saint Benedict Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-benedict_piazzetta.jpg', 'Saint Benedict', 'painting', 'Saint Benedict Painting', 'Giambattista Piazzetta', '18th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-benedict_briggs.jpg', 'Saint Benedict', 'painting', 'Saint Benedict Painting', 'Gwyneth Thompson Briggs', '21th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-benedict_zurbaran.jpg', 'Saint Benedict', 'painting', 'Saint Benedict Painting', 'Francisco de Zurbarán', '1640-1645', 'Metropolitan Museum of Art', NULL, 'Public Domain', NULL),
('/saints/saint-benedict_2.jpg', 'Saint Benedict', 'painting', 'Saint Benedict Painting', NULL, '17th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-benedict_restout.jpg', 'Saint Benedict', 'painting', 'Saint Benedict Painting', 'Jean Restout', '1746', 'Église Saint-Gilles de Bourg-la-Reine', NULL, 'Attribution-ShareAlike 4.0 International', NULL),
-- shared image (already present earlier in your file, keep ONLY ONE row in images):
-- ('/saints/saint-benedict-&-scholastica.jpg', 'Saint Benedict and Saint Scholastica', 'painting', 'Saint Benedict and Saint Scholastica Painting', 'Yan'' Dargent', '19th Century', NULL, NULL, 'Public Domain', NULL),

-- Saint Henry
('/saints/saint-henry_baer.jpg', 'Saint Henry', 'painting', 'Saint Henry Painting', 'Hans Baer', '1611', 'Archdiocese of Freiburg', NULL, 'Public Domain', NULL),
('/saints/saint-henry.jpg', 'Saint Henry', 'illustration', 'Saint Henry Illustration', NULL, '11th Century', 'Regensburg Sacramentary (Bavarian State Library)', NULL, 'Public Domain', NULL),
('/saints/saint-henry_fuhricht.jpg', 'Saint Henry', 'illustration', 'Saint Henry Drawing', 'Joseph von Führich', '19th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-henry_2.jpg', 'Saint Henry', 'illustration', 'Saint Henry Illustration', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Camillus de Lellis
('/saints/saint-camillus-de-lellis_gandolfi.jpg', 'Saint Camillus de Lellis', 'painting', 'Saint Camillus de Lellis Painting', 'Gaetano Gandolfi', '18th Century', 'Toledo Museum of Art', NULL, 'Public Domain', NULL),
('/saints/saint-camillus-de-lellis_lozano.jpg', 'Saint Camillus de Lellis in Ecstasy', 'painting', 'Saint Camillus de Lellis in Ecstasy Painting', 'Cristóbal Lozano', '1762', 'Lima Art Museum', NULL, 'Public Domain', NULL),
('/saints/saint-camillus-de-lellis.jpg', 'Saint Camillus de Lellis', 'painting', 'Saint Camillus de Lellis Painting', NULL, '18th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-camillus-de-lellis_subleyras.jpg', 'Saint Camillus de Lellis saves the Sick', 'painting', 'Saint Camillus de Lellis saves the Sick Painting', 'Pierre Subleyras', '1746', 'Museo di Roma', NULL, 'Public Domain', NULL),

-- Saint Bonaventure
('/saints/saint-bonaventure_cavazzola.jpg', 'Saint Bonaventure', 'painting', 'Saint Bonaventure Painting', 'Il Cavazzola', '16th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-bonaventure_lombard.jpg', 'Saint Bonaventure', 'painting', 'Saint Bonaventure Painting', 'François Lombard', '1639', 'Basilique Saint-Bonaventure (Lyon)', NULL, 'Public Domain', NULL),
('/saints/saint-bonaventure_rubens.jpg', 'Saint Bonaventure', 'painting', 'Saint Bonaventure Painting', 'Peter Paul Rubens', '1620', 'Palais des Beaux-Arts de Lille', NULL, 'Public Domain', NULL),
('/saints/saint-bonaventure_orpen.jpg', 'Saint Bonaventure Inspired to Write', 'painting', 'Saint Bonaventure Inspired to Write Painting', 'Rebecca Dulcibella Orpen', '1890', 'National Trust', NULL, 'Public Domain', NULL),
('/saints/saint-bonaventure_zurbaran.jpg', 'Displaying the Body of Saint Bonaventure', 'painting', 'Displaying the Body of Saint Bonaventure Painting', 'Francisco de Zurbarán', '1629', 'Musée du Louvre', NULL, 'Public Domain', NULL),

-- Saint Apollinaris
('/saints/saint-apollinaris-&-peter_pasquali.jpg', 'Saint Peter sends Saint Apollinaris to Ravenna', 'painting', 'Saint Peter sends Saint Apollinaris to Ravenna Painting', 'Filippo Pasquali', '1683', 'Ravenna Cathedral', NULL, 'Public Domain', NULL),
('/saints/saint-apollinaris_mosaic.jpg', 'Saint Apollinaris', 'mosaic', 'Saint Apollinaris Mosaic', NULL, '6th Century', 'Basilica of Sant''Apollinare in Classe', NULL, 'Public Domain', NULL),

-- Saint Lawrence of Brindisi
('/saints/saint-lawrence-of-brindisi.png', 'Saint Lawrence of Brindisi at the Battle of Albareale', 'painting', 'Saint Lawrence of Brindisi at the Battle of Albareale Painting', 'Francesco Grandi', '19th Century', 'Pinacoteca (Vatican)', NULL, 'Public Domain', NULL),
('/saints/saint-lawrence-of-brindisi_2.jpg', 'Saint Lawrence of Brindisi', 'painting', 'Saint Lawrence of Brindisi Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-lawrence-of-brindisi_3.jpg', 'Communion of Saint Lawrence of Brindisi', 'painting', 'Communion of Saint Lawrence of Brindisi Painting', 'Raffaele da Roma', '1770', NULL, NULL, 'Public Domain', NULL),

-- Saint Mary Magdalene
('/saints/saint-mary-magdalene_spadarino.jpg', 'The Penitent Mary Magdalene', 'painting', 'The Penitent Mary Magdalene Painting', 'Lo Spadarino', '1625-1635', 'Walters Art Museum', NULL, 'Public Domain', NULL),
('/saints/saint-mary-magdalene_caravaggio_ecstasy.jpg', 'Saint Mary Magdalene in Ecstasy', 'painting', 'Saint Mary Magdalene in Ecstasy Painting', 'Caravaggio', '1606', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-mary-magdalene_champaigne.jpg', 'The Repentant Mary Magdalene', 'painting', 'The Repentant Mary Magdalene Painting', 'Philippe de Champaigne', '1648', 'Museum of Fine Arts (Houston)', NULL, 'Public Domain', NULL),
('/saints/saint-mary-magdalene_rubens.jpg', 'Saint Mary Magdalene in Ecstasy', 'painting', 'Saint Mary Magdalene in Ecstasy Painting', 'Peter Paul Rubens', '1619-1620', 'Palais des Beaux-Arts de Lille', NULL, 'Public Domain', NULL),
('/saints/saint-mary-magdalene_caravaggio_penitent.jpg', 'The Penitent Mary Magdalene', 'painting', 'The Penitent Mary Magdalene Painting', 'Caravaggio', '1594-1596', 'Galleria Doria Pamphilj (Rome)', NULL, 'Public Domain', NULL),
('/saints/saint-mary-magdalene_la-tour.jpg', 'Saint Mary Magdalene', 'painting', 'Saint Mary Magdalene Painting', 'Georges de La Tour', '1640-1645', 'Musée du Louvre', NULL, 'Public Domain', NULL),
('/saints/saint-mary-magdalene_veronese.jpg', 'The Conversion of Mary Magdalene', 'painting', 'The Conversion of Mary Magdalene Painting', 'Paolo Veronese', '1548', 'National Gallery (London)', NULL, 'Public Domain', NULL),
('/saints/saint-mary-magdalene_merle.jpg', 'Saint Mary Magdalene in the Cave', 'painting', 'Saint Mary Magdalene in the Cave Painting', 'Hugues Merle', '1868', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-mary-magdalene_ivanov.jpg', 'Christ''s Appearance to Mary Magdalene after the Resurrection', 'painting', 'Christ''s Appearance to Mary Magdalene after the Resurrection Painting', 'Alexander Ivanov', '1835', 'State Russian Museum', NULL, 'Public Domain', NULL),
('/saints/saint-mary-magdalene_titian.jpg', 'Noli Me Tangere', 'painting', 'Noli Me Tangere Painting', 'Titian', '1514', 'National Gallery (London)', NULL, 'Public Domain', NULL),
('/saints/saint-mary-magdalene_giotto.jpg', 'Noli Me Tangere', 'fresco', 'Noli Me Tangere Fresco', 'Giotto', '1304-1306', 'Scrovegni Chapel (Padua)', NULL, 'Public Domain', NULL),

-- Saint Bridget
('/saints/saint-bridget.jpg', 'Saint Bridget', 'painting', 'Saint Bridget Painting', 'Hermen Rode', '15th Century', 'Salem Church (Södermanland)', NULL, 'Public Domain', NULL),
('/saints/saint-bridget_friano.jpg', 'Saint Bridget', 'painting', 'Saint Bridget Painting', 'Maso da San Friano', '1540', 'Cook Collection', NULL, 'Public Domain', NULL),
('/saints/saint-bridget_2.jpg', 'Saint Bridget', 'painting', 'Saint Bridget Painting', NULL, NULL, 'Santa Maria della Catena (Naples)', NULL, 'Attribution-ShareAlike 4.0 International', NULL),
('/saints/saint-bridget_briggs.jpg', 'Saint Bridget', 'painting', 'Saint Bridget Painting', 'Gwyneth Thompson Briggs', '21th Century', NULL, NULL, 'Public Domain', NULL),

-- Saint Sharbel Makhluf
('/saints/saint-sharbel-makhluf.jpg', 'Saint Sharbel Makhluf', 'painting', 'Saint Sharbel Makhluf Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-sharbel-makhluf_2.jpg', 'Saint Sharbel Makhluf', 'illustration', 'Saint Sharbel Makhluf Illustration', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-sharbel-makhluf_3.jpg', 'Saint Sharbel Makhluf', 'illustration', 'Saint Sharbel Makhluf Illustration', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint James, Apostle
('/saints/saint-james-apostle_rubens.jpg', 'Saint James the Apostle', 'painting', 'Saint James Apostle Painting', 'Peter Paul Rubens', '1612-1613', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-james-apostle_reni.jpg', 'Saint James the Apostle', 'painting', 'Saint James Apostle Painting', 'Guido Reni', '1636-1638', 'Museum of Fine Arts (Houston)', NULL, 'Public Domain', NULL),
('/saints/saint-james-apostle_dyck.jpg', 'Saint James the Apostle', 'painting', 'Saint James Apostle Painting', 'Anthony van Dyck', '1620', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-james-apostle_ribera.jpg', 'Saint James the Apostle', 'painting', 'Saint James Apostle Painting', 'Jusepe de Ribera', '1630-1635', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-james-apostle_rembrandt.jpg', 'Saint James the Apostle', 'painting', 'Saint James Apostle Painting', 'Rembrandt', '1661', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-james-apostle_zurbaran.jpg', 'Saint James the Apostle', 'painting', 'Saint James Apostle Painting', 'Francisco de Zurbarán', '1633', 'National Museum of Ancient Art (Lisbon)', NULL, 'Public Domain', NULL),
('/saints/saint-james-apostle_murillo.jpg', 'Saint James the Apostle', 'painting', 'Saint James Apostle Painting', 'Bartolomé Esteban Murillo', '1655', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-james-apostle_tiepolo.jpg', 'Saint James the Great Conquering the Moors (Santiago Matamoros)', 'painting', 'Saint James the Great Conquering the Moors (Santiago Matamoros) Painting', 'Giambattista Tiepolo', '1749-1750', 'Museum of Fine Arts (Budapest)', NULL, 'Public Domain', NULL),
('/saints/saint-james-apostle_dyck_martyr.jpg', 'The Martyrdom of Saint James the Apostle', 'painting', 'The Martyrdom of Saint James Apostle Painting', 'Anthony van Dyck', '1627-1632', 'Musée des Beaux-Arts de Valenciennes', NULL, 'Public Domain', NULL),
('/saints/saint-james-apostle_zurbaran_martyr.jpg', 'The Martyrdom of Saint James the Apostle', 'painting', 'The Martyrdom of Saint James Apostle Painting', 'Francisco de Zurbarán', '1640', 'Museo del Prado', NULL, 'Public Domain', NULL),

-- Saint Joachim
('/saints/saint-joachim_wautier.jpg', 'Saint Joachim', 'painting', 'Saint Joachim Painting', 'Michaelina Wautier', '1650', 'Kunsthistorisches Museum', NULL, 'Public Domain', NULL),
('/saints/saint-joachim_gutierrez.jpg', 'Saint Joachim', 'painting', 'Saint Joachim Painting', 'Juan Simón Gutiérrez', '1700', 'Museo de Bellas Artes de Sevilla', NULL, 'Public Domain', NULL),
('/saints/saint-joachim-&-mary_camilo.jpg', 'Saint Joachim and Saint Mary', 'painting', 'Saint Joachim and Saint Mary Painting', 'Francisco Camilo', '17th Century', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-joachim-&-mary.jpg', 'Saint Joachim and Saint Mary', 'painting', 'Saint Joachim and Saint Mary Painting', NULL, '17th Century', 'Museo Colonial (Bogotá)', NULL, 'Public Domain', NULL),
('/saints/saint-joachim-&-anne_maratta.jpg', 'The Vision of Saint Joachim and Saint Anne', 'painting', 'The Vision of Saint Joachim and Saint Anne Painting', 'Carlo Maratta', '1670-1685', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-anne-&-joachim-&-mary_wautier.jpg', 'Education of the Virgin by Saint Anne & Saint Joachim', 'painting', 'Education of the Virgin by Saint Anne & Saint Joachim Painting', 'Michaelina Wautier', '1656', 'Private Collection', NULL, 'Public Domain', NULL),
('/saints/saint-anne-&-joachim-&-mary_tiepolo.jpg', 'Education of the Virgin by Saint Anne & Saint Joachim', 'painting', 'Education of the Virgin by Saint Anne & Saint Joachim Painting', 'Giambattista Tiepolo', '1732', 'Santa Maria della Fava', NULL, 'Public Domain', NULL),

-- Saint Anne
('/saints/saint-anne-&-mary_coypel.jpg', 'Education of the Virgin by Saint Anne', 'painting', 'Education of the Virgin by Saint Anne Painting', 'Charles Antoine Coypel', '1735-1737', 'Speed Art Museum', NULL, 'Public Domain', NULL),
('/saints/saint-anne-&-mary_murillo.jpg', 'Education of the Virgin by Saint Anne', 'painting', 'Education of the Virgin by Saint Anne Painting', 'Bartolomé Esteban Murillo', '1655', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-anne-&-mary_la-tour.jpg', 'Education of the Virgin by Saint Anne', 'painting', 'Education of the Virgin by Saint Anne Painting', 'Georges de La Tour', '1650', 'The Frick Collection', NULL, 'Public Domain', NULL),
('/saints/saint-anne-&-mary_stella.jpg', 'Saint Anne Leading the Virgin to the Temple', 'painting', 'Saint Anne Leading the Virgin to the Temple Painting', 'Jacques Stella', '1640', 'Musée des Beaux-Arts de Rouen', NULL, 'Public Domain', NULL),
-- shared images (already present earlier in your file via Joachim block; keep ONLY ONE row in images):
-- ('/saints/saint-anne-&-joachim-&-mary_wautier.jpg', 'Education of the Virgin by Saint Anne & Saint Joachim', 'painting', 'Education of the Virgin by Saint Anne & Saint Joachim Painting', 'Michaelina Wautier', '1656', 'Private Collection', NULL, 'Public Domain', NULL),
-- ('/saints/saint-anne-&-joachim-&-mary_tiepolo.jpg', 'Education of the Virgin by Saint Anne & Saint Joachim', 'painting', 'Education of the Virgin by Saint Anne & Saint Joachim Painting', 'Giambattista Tiepolo', '1732', 'Santa Maria della Fava', NULL, 'Public Domain', NULL),
('/saints/saint-anne-&-mary-&-child.jpg', 'The Virgin and Child with Saint Anne', 'painting', 'The Virgin and Child with Saint Anne Painting', 'Leonardo da Vinci', '1503-1519', 'Musée du Louvre', NULL, 'Public Domain', NULL),
('/saints/saint-anne-&-mary_icon.jpg', 'Saint Anne with the Virgin', 'icon', 'Saint Anne with the Virgin Icon', NULL, '1440', 'Benaki Museum', NULL, 'Public Domain', NULL),

-- Saint Martha of Bethany
('/saints/saint-martha-of-bethany_ring-sakabe.webp', 'Saint Martha of Bethany', 'painting', 'Saint Martha of Bethany Painting', 'Jordan Ring-Sakabe', '2019', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-martha-of-bethany-&-mary-of-bethany-&-christ_vermeer.jpg', 'Christ in the House of Martha and Mary', 'painting', 'Christ in the House of Martha and Mary Painting', 'Johannes Vermeer', '1654-1655', 'Scottish National Gallery', NULL, 'Public Domain', NULL),
('/saints/saint-martha-of-bethany-&-mary-of-bethany-&-christ_rubens.jpg', 'Christ in the House of Martha and Mary', 'painting', 'Christ in the House of Martha and Mary Painting', 'Peter Paul Rubens & Jan Brueghel the Younger', '1628', 'National Gallery of Ireland', NULL, 'Public Domain', NULL),
('/saints/saint-martha-of-bethany.jpg', 'Saint Martha of Bethany & the Tarasque', 'painting', 'Saint Martha of Bethany & the Tarasque Painting', NULL, '18th Century', NULL, NULL, 'Public Domain', NULL),

-- Saint Mary of Bethany
('/saints/saint-mary-of-bethany_ring-sakabe.jpg', 'Saint Mary of Bethany', 'painting', 'Saint Mary of Bethany Painting', 'Jordan Ring-Sakabe', '2024', NULL, NULL, 'Public Domain', NULL),
-- NOTE: same shared artworks as above but with different filename; keep as separate images (different image_url)
('/saints/saint-mary-of-bethany-&-martha-of-bethany-&-christ_vermeer.jpg', 'Christ in the House of Martha and Mary', 'painting', 'Christ in the House of Martha and Mary Painting', 'Johannes Vermeer', '1654-1655', 'Scottish National Gallery', NULL, 'Public Domain', NULL),
('/saints/saint-mary-of-bethany-&-martha-of-bethany-&-christ_rubens.jpg', 'Christ in the House of Martha and Mary', 'painting', 'Christ in the House of Martha and Mary Painting', 'Peter Paul Rubens & Jan Brueghel the Younger', '1628', 'National Gallery of Ireland', NULL, 'Public Domain', NULL),

-- Saint Lazarus of Bethany
('/saints/saint-lazarus-of-bethany_caravaggio.jpg', 'The Raising of Lazarus', 'painting', 'The Raising of Lazarus Painting', 'Caravaggio', '1609', 'Regional Museum of Messina', NULL, 'Public Domain', NULL),
('/saints/saint-lazarus-of-bethany_rubens.jpg', 'The Raising of Lazarus', 'painting', 'The Raising of Lazarus Painting', 'Peter Paul Rubens', '1625', 'Galleria Sabauda', NULL, 'Public Domain', NULL),
('/saints/saint-lazarus-of-bethany_gebhardt.jpg', 'The Raising of Lazarus', 'painting', 'The Raising of Lazarus Painting', 'Eduard von Gebhardt', '1896', 'Museum Kunstpalast', NULL, 'Public Domain', NULL),
('/saints/saint-lazarus-of-bethany_flandes.jpg', 'The Raising of Lazarus', 'painting', 'The Raising of Lazarus Painting', 'Juan de Flandes', '1514-1519', 'Museo del Prado', NULL, 'Public Domain', NULL),

-- Saint Peter Chrysologus
('/saints/saint-peter-chrysologus.jpg', 'Saint Peter Chrysologus', 'painting', 'Saint Peter Chrysologus Painting', 'School of Guercino', '17th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-peter-chrysologus-&-cassian_fontana.jpg', 'Assumption of the Virgin with Saints Peter Chrysologus and Cassian', 'painting', 'Assumption of the Virgin with Saints Peter Chrysologus and Cassian Painting', 'Lavinia Fontana', '1583', NULL, NULL, 'Public Domain', NULL),

-- Saint Ignatius of Loyola
('/saints/saint-ignatius-of-loyola_rubens.jpg', 'Saint Ignatius of Loyola', 'painting', 'Saint Ignatius of Loyola Painting', 'Peter Paul Rubens', '1620-1622', 'Norton Simon Museum', NULL, 'Public Domain', NULL),
('/saints/saint-ignatius-of-loyola_rubens_miracle.jpg', 'Miracle of Saint Ignatius of Loyola', 'painting', 'Miracle of Saint Ignatius of Loyola Painting', 'Peter Paul Rubens', '1617-1618', 'Kunsthistorisches Museum', NULL, 'Public Domain', NULL),
('/saints/saint-ignatius-of-loyola_zurbaran.jpg', 'Saint Ignatius of Loyola', 'painting', 'Saint Ignatius of Loyola Painting', 'Francisco de Zurbarán', '17th Century', 'Royal Collection of the British royal family', NULL, 'Public Domain', NULL),
('/saints/saint-ignatius-of-loyola.jpg', 'Ignatius convalesces at Loyola', 'painting', 'Ignatius convalesces at Loyola Painting', 'Albert Chevallier Tayler', '1904', NULL, NULL, 'Public Domain', NULL),

-- =========================
-- August Saints a double check !
-- =========================

-- Saint Alphonsus Liguori
('/saints/saint-alphonsus-liguori.jpg', 'Saint Alphonsus Liguori', 'painting', 'Saint Alphonsus Liguori Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-alphonsus-liguori_2.jpg', 'Saint Alphonsus Liguori', 'painting', 'Saint Alphonsus Liguori Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-alphonsus-liguori_3.jpg', 'Saint Alphonsus Liguori', 'painting', 'Saint Alphonsus Liguori Painting', NULL, NULL, NULL, NULL, 'Attribution-ShareAlike 3.0 Unported', NULL),
('/saints/saint-alphonsus-liguori_4.jpg', 'Saint Alphonsus Liguori', 'painting', 'Saint Alphonsus Liguori Painting', NULL, '1850', NULL, NULL, 'Public Domain', NULL),

-- Saint Eusebius of Vercelli
('/saints/saint-eusebius-of-vercelli.jpg', 'Saint Eusebius of Vercelli', 'painting', 'Saint Eusebius of Vercelli Painting', NULL, NULL, 'Vercelli Cathedral', NULL, 'Public Domain', NULL),
('/saints/saint-eusebius-of-vercelli_2.jpg', 'Saint Eusebius of Vercelli', 'painting', 'Saint Eusebius of Vercelli Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-eusebius-of-vercelli-&-roch-&-sebastian_ricci.jpg', 'Saint Eusebius of Vercelli with Saints Roch and Sebastian', 'painting', 'Saint Eusebius of Vercelli with Saints Roch and Sebastian Painting', 'Sebastiano Ricci', '1724-1725', 'University of Turin', NULL, 'Public Domain', NULL),

-- Saint Peter Julian Eymard
('/saints/saint-peter-julian-eymard.jpg', 'Saint Peter Julian Eymard', 'painting', 'Saint Peter Julian Eymard Painting', NULL, NULL, NULL, NULL, 'Attribution-ShareAlike 4.0 International', NULL),
('/saints/saint-peter-julian-eymard_2.jpg', 'Saint Peter Julian Eymard', 'photograph', 'Saint Peter Julian Eymard Photograph', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint John Vianney
('/saints/saint-john-vianney_briggs.jpg', 'Saint John Vianney', 'painting', 'Saint John Vianney Painting', 'Gwyneth Thompson Briggs', '2022', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-john-vianney_desvallieres.png', 'Saint John Vianney', 'painting', 'Saint John Vianney Painting', 'George Desvallières', '1920', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-john-vianney.jpg', 'Saint John Vianney', 'illustration', 'Saint John Vianney Illustration', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-john-vianney_2.jpg', 'Saint John Vianney', 'painting', 'Saint John Vianney Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-john-vianney_borel.jpg', 'Saint John Vianney', 'fresco', 'Saint John Vianney Fresco', 'Paul Borel', '1907', 'Basilique d''Ars', NULL, 'Public Domain', NULL),

-- Saint Sixtus II and Companions
('/saints/saint-sixtus-ii_botticelli.jpg', 'Saint Sixtus II', 'fresco', 'Saint Sixtus II Fresco', 'Sandro Botticelli', '1481-1482', 'Sistine Chapel', NULL, 'Public Domain', NULL),
('/saints/saint-sixtus-ii.jpg', 'Saint Sixtus II', 'mosaic', 'Saint Sixtus II Mosaic', NULL, '19th Century', 'Papal Basilica of Saint Paul Outside the Walls', NULL, 'Public Domain', NULL),

-- Saint Cajetan
('/saints/saint-cajetan_tiepolo.jpg', 'Saint Cajetan', 'painting', 'Saint Cajetan Painting', 'Giambattista Tiepolo', '1710-1736', 'Museu Nacional de Belas Artes', NULL, 'Public Domain', NULL),
('/saints/saint-cajetan_ricci.jpg', 'Saint Cajetan Comforting a Dying Man', 'painting', 'Saint Cajetan Comforting a Dying Man Painting', 'Sebastiano Ricci', '1704', 'Pinacoteca di Brera', NULL, 'Public Domain', NULL),
('/saints/saint-cajetan_solimena.jpg', 'Saint Cajetan in Glory', 'painting', 'Saint Cajetan in Glory Painting', 'Francesco Solimena', '1725', 'San Gaetano (Vicenza)', NULL, 'Public Domain', NULL),

-- Saint Dominic
('/saints/saint-dominic_coello.jpg', 'Saint Dominic', 'painting', 'Saint Dominic Painting', 'Claudio Coello', '1685', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-dominic_cavallino.jpg', 'The Vision of Saint Dominic', 'painting', 'The Vision of Saint Dominic Painting', 'Bernardo Cavallino', '1640-1645', 'National Gallery of Canada', NULL, 'Public Domain', NULL),
('/saints/saint-dominic_campeche.jpg', 'Saint Dominic', 'painting', 'Saint Dominic Painting', 'José Campeche', '1790', 'Art Gallery of Ontario', NULL, 'Public Domain', NULL),

-- Saint Teresa Benedicta of the Cross
('/saints/saint-teresa-benedicta-of-the-cross_ferreira_no-watermark.jpg', 'Saint Teresa Benedicta of the Cross', 'painting', 'Saint Teresa Benedicta of the Cross Painting', 'Ruben Ferreira', '21th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-teresa-benedicta-of-the-cross_passport.jpg', 'Saint Teresa Benedicta of the Cross', 'photograph', 'Saint Teresa Benedicta of the Cross Photograph', NULL, '1938-1939', 'Passport', NULL, 'Public Domain', NULL),
('/saints/saint-teresa-benedicta-of-the-cross.jpg', 'Saint Teresa Benedicta of the Cross', 'painting', 'Saint Teresa Benedicta of the Cross Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Lawrence
('/saints/saint-lawrence_briggs.jpg', 'Saint Lawrence', 'painting', 'Saint Lawrence Painting', 'Gwyneth Thompson Briggs', '21th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-lawrence_santacroce.jpg', 'Saint Lawrence', 'painting', 'Saint Lawrence Painting', 'Girolamo da Santacroce', '1520-1530', 'Courtauld Gallery', NULL, 'Public Domain', NULL),
('/saints/saint-lawrence_champaigne_martyr.jpg', 'The Martyrdom of Saint Lawrence', 'painting', 'The Martyrdom of Saint Lawrence Painting', 'Jean Baptiste de Champaigne', '1660', 'National Gallery of Art (Washington, D.C.)', NULL, 'Public Domain', NULL);

-- Saint Clare
('/saints/saint-clare_martini.jpg', 'Saint Clare', 'fresco', 'Saint Clare Fresco', 'Simone Martini', '1322-1326', 'Lower Basilica of San Francesco', NULL, 'Public Domain', NULL),
('/saints/saint-clare_moroni.jpg', 'Saint Clare', 'painting', 'Saint Clare Painting', 'Giovanni Battista Moroni', '1548', 'Tridentine Diocesan Museum', NULL, 'Attribution-ShareAlike 4.0 International', NULL),
('/saints/saint-clare_arco.jpg', 'Saint Clare', 'painting', 'Saint Clare Painting', 'Alonso del Arco', '17th Century', 'The Bowes Museum', NULL, 'Public Domain', NULL),

-- Saint Jane Frances de Chantal
('/saints/saint-jane-frances-de-chantal.webp', 'Saint Jane Frances de Chantal', 'painting', 'Saint Jane Frances de Chantal Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-jane-frances-de-chantal_2.jpg', 'Saint Jane Frances de Chantal', 'painting', 'Saint Jane Frances de Chantal Painting', NULL, '19th Century', 'Monastery of the Visitation of Holy Mary in Toledo (Ohio)', NULL, 'Public Domain', NULL),
('/saints/saint-francis-de-sales-&-jane-frances-de-chantal.jpg', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal', 'painting', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal Painting', NULL, NULL, 'Monastery of the Visitation (Paris)', NULL, 'Public Domain', NULL),
('/saints/saint-francis-de-sales-&-jane-frances-de-chantal_bayeu.jpg', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal', 'painting', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal Painting', 'Francisco Bayeu', '18th Century', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-francis-de-sales-&-jane-frances-de-chantal_halle.jpg', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal', 'painting', 'Saint Francis de Sales gives the Rule of the Order of the Visitation to Saint Jane Frances de Chantal Painting', 'Noël Hallé', '18th Century', 'Saint-Louis-en-l''Île Church', NULL, 'Public Domain', NULL),

-- Saint Pontian
('/saints/saint-pontian_aretino.jpg', 'Saint Pontian', 'painting', 'Saint Pontian Painting', 'Aretino', '1530-1535', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-pontian_montor.jpg', 'Saint Pontian', 'illustration', 'Saint Pontian Illustration', 'Alexis-François Artaud de Montor', '1842', 'The Lives and Times of the Popes', NULL, 'Public Domain', NULL),
('/saints/saint-pontian.jpg', 'Saint Pontian', 'mosaic', 'Saint Pontian Mosaic', NULL, '19th Century', 'Papal Basilica of Saint Paul Outside the Walls', NULL, 'Public Domain', NULL),
('/saints/saint-pontian_echave_martyr.jpg', 'The Martyrdom of Saint Pontian', 'painting', 'The Martyrdom of Saint Pontian Painting', 'Baltasar de Echave Orio', '1612', 'Museo Nacional de Arte (Mexico)', NULL, 'Public Domain', NULL),

-- Saint Hippolytus of Rome
('/saints/saint-hippolytus-of-rome.jpg', 'Saint Hippolytus of Rome', 'icon', 'Saint Hippolytus of Rome Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-hippolytus-of-rome_icon.jpg', 'Saint Hippolytus of Rome', 'icon', 'Saint Hippolytus of Rome Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-hippolytus-of-rome_julien_martyr.jpg', 'The Martyrdom of Saint Hippolytus of Rome', 'painting', 'The Martyrdom of Saint Hippolytus of Rome Painting', 'Simon Julien', '1762', 'Lyon Cathedral', NULL, 'Public Domain', NULL),

-- Saint Maximus the Confessor
('/saints/saint-maximus-the-confessor.jpg', 'Saint Maximus the Confessor', 'fresco', 'Saint Maximus the Confessor Fresco', NULL, '14th Century', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-maximus-the-confessor_icon.jpg', 'Saint Maximus the Confessor', 'icon', 'Saint Maximus the Confessor Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-maximus-the-confessor_icon_2.jpg', 'Saint Maximus the Confessor', 'icon', 'Saint Maximus the Confessor Icon', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-maximus-the-confessor_2.png', 'Saint Maximus the Confessor', 'fresco', 'Saint Maximus the Confessor Fresco', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Stephen of Hungary
('/saints/saint-stephen-of-hungary.jpg', 'Saint Stephen of Hungary', 'painting', 'Saint Stephen of Hungary Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),
('/saints/saint-stephen-of-hungary_2.jpg', 'Saint Stephen of Hungary', 'painting', 'Saint Stephen of Hungary Painting', NULL, '17th Century', 'Hungarian National Museum', NULL, 'Public Domain', NULL),
('/saints/saint-stephen-of-hungary_verhaghen.jpg', 'Saint Stephen of Hungary Receiving the Legate', 'painting', 'Saint Stephen of Hungary Receiving the Legate Painting', 'Pieter-Jozef Verhaghen', '1770', 'Museum of Fine Arts (Budapest)', NULL, 'Public Domain', NULL),
('/saints/saint-stephen-of-hungary_3.jpg', 'Saint Stephen of Hungary', 'painting', 'Saint Stephen of Hungary Painting', NULL, '18th Century', 'Museum of Fine Arts (Budapest)', NULL, 'Public Domain', NULL),

-- Saint John Eudes
('/saints/saint-john-eudes.jpg', 'Saint John Eudes', 'painting', 'Saint John Eudes Painting', NULL, '1673', NULL, NULL, 'Public Domain', NULL),
('/saints/saint-john-eudes_2.jpg', 'Saint John Eudes', 'painting', 'Saint John Eudes Painting', NULL, NULL, NULL, NULL, 'Public Domain', NULL),

-- Saint Bernard
('/saints/saint-bernard_latil.jpg', 'Saint Bernard', 'painting', 'Saint Bernard Painting', 'François Vincent Latil', '19th Century', 'Saint-Étienne-du-Mont (Paris)', NULL, 'Public Domain', NULL),
('/saints/saint-bernard_greco.jpg', 'Saint Bernard', 'painting', 'Saint Bernard Painting', 'El Greco', '1577-1579', 'Hermitage Museum', NULL, 'Public Domain', NULL),
('/saints/saint-bernard_goya.jpg', 'Saint Bernard of Clairvaux Curing a Cripple', 'painting', 'Saint Bernard of Clairvaux Curing a Cripple Painting', 'Francisco Goya', '1787', 'Real Monasterio de San Joaquín y Santa Ana', NULL, 'Public Domain', NULL),
('/saints/saint-bernard_ribalta.jpg', 'Christ Embracing Saint Bernard', 'painting', 'Christ Embracing Saint Bernard Painting', 'Francisco Ribalta', '1625-1627', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-bernard_cano.jpg', 'The Vision of Saint Bernard', 'painting', 'The Vision of Saint Bernard Painting', 'Alonso Cano', '1650', 'Museo del Prado', NULL, 'Public Domain', NULL),
('/saints/saint-bernard_signol.jpg', 'Saint Bernard preaching the second Crusade at Vezelay', 'painting', 'Saint Bernard preaching the second Crusade at Vezelay Painting', 'Émile Signol', '1840', 'Château de Versailles', NULL, 'Public Domain', NULL),
('/saints/saint-bernard_vivar.jpg', 'Saint Bernard', 'painting', 'Saint Bernard Painting', 'Juan Correa de Vivar', '1540-1545', 'Museo del Prado', NULL, 'Public Domain', NULL),
