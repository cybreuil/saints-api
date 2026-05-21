BEGIN;

INSERT INTO saint_images (
    saint_id,
    image_id,
    sort_order,
    is_primary,
    subject_role
)
SELECT
    s.id,
    i.id,
    x.sort_order,
    x.is_primary,
    x.subject_role
FROM saints s
JOIN (
	VALUES

-- =========================
-- Principal Roman saints (Mary, Joseph, John the Baptist)
-- =========================

-- Saint Mary
('saint-mary', '/saints/saint-mary_tiepolo.jpg', 1, TRUE, 'subject'),
('saint-mary', '/saints/saint-mary_velazquez.jpg', 2, FALSE, 'subject'),
('saint-mary', '/saints/saint-mary_caravaggio_annunciation.jpg', 3, FALSE, 'subject'),
('saint-mary', '/saints/saint-mary_raphael.jpg', 4, FALSE, 'subject'),
('saint-mary', '/saints/saint-mary_caravaggio_madonna-di-loreto.jpg', 5, FALSE, 'subject'),
('saint-mary', '/saints/saint-mary_caravaggio_madonna-of-the-rosary.jpg', 6, FALSE, 'subject'),
('saint-mary', '/saints/saint-mary_botticelli_madonna-of-the-book.jpg', 7, FALSE, 'subject'),
('saint-mary', '/saints/saint-mary_botticelli_magnificat.jpg', 8, FALSE, 'subject'),
('saint-mary', '/saints/saint-mary_sassoferrato.jpg', 9, FALSE, 'subject'),
('saint-mary', '/saints/saint-mary_murillo.jpg', 10, FALSE, 'subject'),
('saint-mary', '/saints/saint-mary_guido-reni.jpg', 11, FALSE, 'subject'),
('saint-mary', '/saints/saint-mary_caravaggio_dormition.jpg', 12, FALSE, 'subject'),
('saint-mary', '/saints/saint-mary_velazquez_adoration.jpg', 13, FALSE, 'subject'),
('saint-mary', '/saints/saint-mary_champaigne.jpg', 14, FALSE, 'subject'),
('saint-mary', '/saints/saint-mary_gentileschi_annunciation.jpg', 15, FALSE, 'subject'),

-- Saint Joseph
('saint-joseph', '/saints/saint-joseph_guido-reni.jpg', 1, TRUE, 'subject'),
('saint-joseph', '/saints/saint-joseph_carracci.jpg', 2, FALSE, 'subject'),
('saint-joseph', '/saints/saint-joseph_murillo.jpg', 3, FALSE, 'subject'),
('saint-joseph', '/saints/saint-joseph_murillo_holy-family.jpg', 4, FALSE, 'subject'),
('saint-joseph', '/saints/saint-joseph_la-tour.jpg', 5, FALSE, 'subject'),
('saint-joseph', '/saints/saint-joseph_champaigne.jpg', 6, FALSE, 'subject'),
('saint-joseph', '/saints/saint-joseph_briggs.jpg', 7, FALSE, 'subject'),

-- Saint John the Baptist
('saint-john-the-baptist', '/saints/saint-john-the-baptist_caravaggio.jpg', 1, TRUE, 'subject'),
('saint-john-the-baptist', '/saints/saint-john-the-baptist_leonardo-da-vinci.jpg', 2, FALSE, 'subject'),
('saint-john-the-baptist', '/saints/saint-john-the-baptist_lemoine.jpg', 3, FALSE, 'subject'),
('saint-john-the-baptist', '/saints/saint-john-the-baptist_tanzio.jpg', 4, FALSE, 'subject'),

-- =========================
-- January saints
-- =========================

-- Saint Basil the Great
('saint-basil-the-great', '/saints/saint-basil-the-great_domenichino_grottaferrata.jpg', 1, TRUE, 'subject'),
('saint-basil-the-great', '/saints/saint-basil-the-great.webp', 2, FALSE, 'subject'),
('saint-basil-the-great', '/saints/saint-basil-the-great_mosaic.jpg', 3, FALSE, 'subject'),

-- Saint Gregory Nazianzen
('saint-gregory-nazianzen', '/saints/saint-gregory-nazianzen_domenichino_grottaferrata.jpg', 1, TRUE, 'subject'),
('saint-gregory-nazianzen', '/saints/saint-gregory-nazianzen.jpg', 2, FALSE, 'subject'),

-- Saint Raymond of Penyafort
('saint-raymond-of-penyafort', '/saints/saint-raymond-of-penyafort_francisco-de-reyna.jpg', 1, TRUE, 'subject'),
('saint-raymond-of-penyafort', '/saints/saint-raymond-of-penyafort_tommaso-dolabella.jpg', 2, FALSE, 'subject'),

-- Saint Hilary of Poitiers
('saint-hilary-of-poitiers', '/saints/saint-hilary-of-poitiers_cremiere.jpg', 1, TRUE, 'subject'),
('saint-hilary-of-poitiers', '/saints/saint-hilary-of-poitiers.png', 2, FALSE, 'subject'),

-- Saint Anthony, Abbot
('saint-anthony-abbot', '/saints/saint-anthony-abbot_zurbaran.jpg', 1, TRUE, 'subject'),
('saint-anthony-abbot', '/saints/saint-anthony-abbot_icon.jpg', 2, FALSE, 'subject'),
('saint-anthony-abbot', '/saints/saint-anthony-abbot_osservanza-master_gold-temptation.jpg', 3, FALSE, 'subject'),
('saint-anthony-abbot', '/saints/saint-anthony-abbot_osservanza-master_woman-temptation.jpg', 4, FALSE, 'subject'),
('saint-anthony-abbot', '/saints/saint-anthony-abbot_bosch.jpg', 5, FALSE, 'subject'),
('saint-anthony-abbot', '/saints/saint-anthony-abbot-&-cornelius-&-cyprian_veronese.jpg', 6, FALSE, 'subject'),

-- Saint Fabian Pope
('saint-fabian-pope', '/saints/saint-fabian-pope.jpg', 1, TRUE, 'subject'),
('saint-fabian-pope', '/saints/saint-fabian-pope_master-of-messkirch.jpg', 2, FALSE, 'subject'),

-- Saint Sebastian
('saint-sebastian', '/saints/saint-sebastian_sodoma.jpg', 1, TRUE, 'subject'),
('saint-sebastian', '/saints/saint-sebastian_guido-reni.jpg', 2, FALSE, 'subject'),
('saint-sebastian', '/saints/saint-sebastian_ribera.jpg', 3, FALSE, 'subject'),
('saint-sebastian', '/saints/saint-sebastian_rubens.jpg', 4, FALSE, 'subject'),

-- Saint Agnes of Rome
('saint-agnes-of-rome', '/saints/saint-agnes-of-rome_domenichino.jpg', 1, TRUE, 'subject'),
('saint-agnes-of-rome', '/saints/saint-agnes-of-rome_massimo-stanzione.jpg', 2, FALSE, 'subject'),
('saint-agnes-of-rome', '/saints/saint-agnes-of-rome_andrea-del-sarto.jpg', 3, FALSE, 'subject'),

-- Saint Vincent of Saragossa
('saint-vincent-of-saragossa', '/saints/saint-vincent-of-saragossa_tomas-giner.jpg', 1, TRUE, 'subject'),
('saint-vincent-of-saragossa', '/saints/saint-vincent-of-saragossa_school-of-francisco-ribalta.jpg', 2, FALSE, 'subject'),

-- Saint Francis de Sales
('saint-francis-de-sales', '/saints/saint-francis-de-sales.webp', 1, TRUE, 'subject'),
('saint-francis-de-sales', '/saints/saint-francis-de-sales_2.jpg', 2, FALSE, 'subject'),
('saint-francis-de-sales', '/saints/saint-francis-de-sales_briggs.jpg', 3, FALSE, 'subject'),
('saint-francis-de-sales', '/saints/saint-francis-de-sales_brenet.jpg', 4, FALSE, 'subject'),
('saint-francis-de-sales', '/saints/saint-francis-de-sales-&-jane-frances-de-chantal_bayeu.jpg', 5, FALSE, 'subject'),
('saint-francis-de-sales', '/saints/saint-francis-de-sales-&-jane-frances-de-chantal_halle.jpg', 6, FALSE, 'subject'),
('saint-francis-de-sales', '/saints/saint-francis-de-sales-&-jane-frances-de-chantal.jpg', 7, FALSE, 'subject'),

-- Saint Paul, Apostle
('saint-paul-apostle', '/saints/saint-paul-apostle_rubens.jpg', 1, TRUE, 'subject'),
('saint-paul-apostle', '/saints/saint-paul-apostle_ribera.jpg', 2, FALSE, 'subject'),
('saint-paul-apostle', '/saints/saint-paul-apostle_velasquez.jpg', 3, FALSE, 'subject'),
('saint-paul-apostle', '/saints/saint-paul-apostle_zurbaran.jpg', 4, FALSE, 'subject'),
('saint-paul-apostle', '/saints/saint-paul-apostle_dyck.jpg', 5, FALSE, 'subject'),
('saint-paul-apostle', '/saints/saint-paul-apostle_caravaggio_conversion.jpg', 6, FALSE, 'subject'),
('saint-paul-apostle', '/saints/saint-paul-apostle_rembrandt_prison.jpg', 7, FALSE, 'subject'),
('saint-paul-apostle', '/saints/saint-paul-apostle_rembrandt.jpg', 8, FALSE, 'subject'),
('saint-paul-apostle', '/saints/saint-paul-apostle_la-tour.jpg', 9, FALSE, 'subject'),
('saint-paul-apostle', '/saints/saint-paul-apostle_guercino.jpg', 10, FALSE, 'subject'),
('saint-paul-apostle', '/saints/saint-paul-apostle_guercino_2.jpg', 11, FALSE, 'subject'),

-- Saint Timothy of Ephesus
('saint-timothy-of-ephesus', '/saints/saint-timothy-of-ephesus_icon.jpg', 1, TRUE, 'subject'),
('saint-timothy-of-ephesus', '/saints/saint-timothy-of-ephesus_drost_timothy-with-grandmother-lois.jpg', 2, FALSE, 'subject'),
('saint-timothy-of-ephesus', '/saints/saint-timothy-of-ephesus.jpg', 3, FALSE, 'subject'),

-- Saint Titus of Crete
('saint-titus-of-crete', '/saints/saint-titus-of-crete_icon.jpg', 1, TRUE, 'subject'),
('saint-titus-of-crete', '/saints/saint-titus-of-crete.jpg', 2, FALSE, 'subject'),

-- Saint Angela Merici
('saint-angela-merici', '/saints/saint-angela-merici.webp', 1, TRUE, 'subject'),
('saint-angela-merici', '/saints/saint-angela-merici_crucifix.jpg', 2, FALSE, 'subject'),

-- Saint Thomas Aquinas
('saint-thomas-aquinas', '/saints/saint-thomas-aquinas.jpg', 1, TRUE, 'subject'),
('saint-thomas-aquinas', '/saints/saint-thomas-aquinas_velasquez_temptation.jpg', 2, FALSE, 'subject'),
('saint-thomas-aquinas', '/saints/saint-thomas-aquinas_tito.jpg', 3, FALSE, 'subject'),
('saint-thomas-aquinas', '/saints/saint-thomas-aquinas_zurbaran.jpg', 4, FALSE, 'subject'),

-- Saint John Bosco
('saint-john-bosco', '/saints/saint-john-bosco_painting-from-picture.png', 1, TRUE, 'subject'),
('saint-john-bosco', '/saints/saint-john-bosco_picture.jpg', 2, FALSE, 'subject'),

-- =========================
-- February saints
-- =========================

-- Saint Blaise
('saint-blaise', '/saints/saint-blaise_trotti.jpg', 1, TRUE, 'subject'),
('saint-blaise', '/saints/saint-blaise_tiepolo.jpg', 2, FALSE, 'subject'),

-- Saint Ansgar
('saint-ansgar', '/saints/saint-ansgar.jpg', 1, TRUE, 'subject'),

-- Saint Agatha
('saint-agatha', '/saints/saint-agatha.jpg', 1, TRUE, 'subject'),
('saint-agatha', '/saints/saint-agatha_tiepolo.jpg', 2, FALSE, 'subject'),

-- Saint Paul Miki
('saint-paul-miki', '/saints/saint-paul-miki_tanzio.png', 1, TRUE, 'subject'),
('saint-paul-miki', '/saints/saint-paul-miki.jpg', 2, FALSE, 'subject'),

-- Saint Jerome Emiliani
('saint-jerome-emiliani', '/saints/saint-jerome-emiliani_traverso.jpg', 1, TRUE, 'subject'),
('saint-jerome-emiliani', '/saints/saint-jerome-emiliani_crespi.jpg', 2, FALSE, 'subject'),
('saint-jerome-emiliani', '/saints/saint-jerome-emiliani.jpg', 3, FALSE, 'subject'),
('saint-jerome-emiliani', '/saints/saint-jerome-emiliani_2.jpg', 4, FALSE, 'subject'),

-- Saint Josephine Bakhita
('saint-josephine-bakhita', '/saints/saint-josephine-bakhita_ferreira.jpg', 1, TRUE, 'subject'),
('saint-josephine-bakhita', '/saints/saint-josephine-bakhita_warford_no-watermark.jpg', 2, FALSE, 'subject'),
('saint-josephine-bakhita', '/saints/saint-josephine-bakhita.jpg', 3, FALSE, 'subject'),

-- Saint Scholastica
('saint-scholastica', '/saints/saint-scholastica_bergl.jpg', 1, TRUE, 'subject'),
('saint-scholastica', '/saints/saint-scholastica.jpg', 2, FALSE, 'subject'),
('saint-scholastica', '/saints/saint-scholastica_sassoferrato.jpg', 3, FALSE, 'subject'),
('saint-scholastica', '/saints/saint-scholastica_briggs.jpg', 4, FALSE, 'subject'),
('saint-scholastica', '/saints/saint-benedict-&-scholastica.jpg', 5, FALSE, 'subject'),

-- Saint Cyril
('saint-cyril', '/saints/saint-cyril.jpg', 1, TRUE, 'subject'),
('saint-cyril', '/saints/saint-cyril-&-methodius.jpg', 2, FALSE, 'subject'),
('saint-cyril', '/saints/saint-cyril-&-methodius_2.jpg', 3, FALSE, 'subject'),
('saint-cyril', '/saints/saint-cyril-&-methodius_3.jpg', 4, FALSE, 'subject'),

-- Saint Methodius
('saint-methodius', '/saints/saint-methodius.jpg', 1, TRUE, 'subject'),
('saint-methodius', '/saints/saint-cyril-&-methodius.jpg', 2, FALSE, 'subject'),
('saint-methodius', '/saints/saint-cyril-&-methodius_2.jpg', 3, FALSE, 'subject'),
('saint-methodius', '/saints/saint-cyril-&-methodius_3.jpg', 4, FALSE, 'subject'),

-- Saint Peter Damian
('saint-peter-damian', '/saints/saint-peter-damian.jpg', 1, TRUE, 'subject'),
('saint-peter-damian', '/saints/saint-peter-damian_briggs.jpg', 2, FALSE, 'subject'),

-- Saint Polycarp
('saint-polycarp', '/saints/saint-polycarp.jpg', 1, TRUE, 'subject'),
('saint-polycarp', '/saints/saint-polycarp_2.jpg', 2, FALSE, 'subject'),
('saint-polycarp', '/saints/saint-polycarp_3.png', 3, FALSE, 'subject'),

-- Saint Gregory of Narek
('saint-gregory-of-narek', '/saints/saint-gregory-of-narek_minin.jpg', 1, TRUE, 'subject'),
('saint-gregory-of-narek', '/saints/saint-gregory-of-narek.jpg', 2, FALSE, 'subject'),

-- =========================
-- March saints
-- =========================

-- Saint Casimir
('saint-casimir', '/saints/saint-casimir_masucci.jpg', 1, TRUE, 'subject'),
('saint-casimir', '/saints/saint-casimir_collenius.jpg', 2, FALSE, 'subject'),
('saint-casimir', '/saints/saint-casimir.jpg', 3, FALSE, 'subject'),

-- Saint Perpetua
('saint-perpetua', '/saints/saint-perpetua_ridolfi.jpg', 1, TRUE, 'subject'),
('saint-perpetua', '/saints/saint-perpetua_bouguereau.jpg', 2, FALSE, 'subject'),
('saint-perpetua', '/saints/saint-perpetua_mosaic.jpg', 3, FALSE, 'subject'),
('saint-perpetua', '/saints/saint-perpetua-&-felicity.jpg', 4, FALSE, 'subject'),
('saint-perpetua', '/saints/saint-perpetua_martyr.webp', 5, FALSE, 'subject'),
('saint-perpetua', '/saints/saint-perpetua-&-felicity_2.jpg', 6, FALSE, 'subject'),
('saint-perpetua', '/saints/saint-perpetua-&-felicity_3.jpg', 7, FALSE, 'subject'),

-- Saint Felicity
('saint-felicity', '/saints/saint-perpetua-&-felicity.jpg', 1, TRUE, 'subject'),
('saint-felicity', '/saints/saint-perpetua-&-felicity_2.jpg', 2, FALSE, 'subject'),
('saint-felicity', '/saints/saint-perpetua-&-felicity_3.jpg', 3, FALSE, 'subject'),

-- Saint John of God
('saint-john-of-god', '/saints/saint-john-of-god_murillo.jpg', 1, TRUE, 'subject'),
('saint-john-of-god', '/saints/saint-john-of-god_coello.jpg', 2, FALSE, 'subject'),
('saint-john-of-god', '/saints/saint-john-of-god_gonzalez.jpg', 3, FALSE, 'subject'),

-- Saint Frances of Rome
('saint-frances-of-rome', '/saints/saint-frances-of-rome_sparadino.jpg', 1, TRUE, 'subject'),
('saint-frances-of-rome', '/saints/saint-frances-of-rome_gentileschi.jpg', 2, FALSE, 'subject'),
('saint-frances-of-rome', '/saints/saint-frances-of-rome_poussin.jpg', 3, FALSE, 'subject'),
('saint-frances-of-rome', '/saints/saint-frances-of-rome.jpg', 4, FALSE, 'subject'),

-- Saint Patrick
('saint-patrick', '/saints/saint-patrick.jpg', 1, TRUE, 'subject'),
('saint-patrick', '/saints/saint-patrick_tiepolo.jpg', 2, FALSE, 'subject'),
('saint-patrick', '/saints/saint-patrick_collaert.jpg', 3, FALSE, 'subject'),
('saint-patrick', '/saints/saint-patrick_stained-glass.jpg', 4, FALSE, 'subject'),

-- Saint Cyril of Jerusalem
('saint-cyril-of-jerusalem', '/saints/saint-cyril-of-jerusalem_bartolozzi.jpg', 1, TRUE, 'subject'),
('saint-cyril-of-jerusalem', '/saints/saint-cyril-of-jerusalem.jpg', 2, FALSE, 'subject'),
('saint-cyril-of-jerusalem', '/saints/saint-cyril-of-jerusalem_2.png', 3, FALSE, 'subject'),

-- Saint Turibius of Mogrovejo
('saint-turibius-of-mogrovejo', '/saints/saint-turibius-of-mogrovejo.jpg', 1, TRUE, 'subject'),
('saint-turibius-of-mogrovejo', '/saints/saint-turibius-of-mogrovejo_conca.jpg', 2, FALSE, 'subject'),

-- =========================
-- April saints
-- =========================

-- Saint Francis of Paola
('saint-francis-of-paola', '/saints/saint-francis-of-paola_ribera.jpg', 1, TRUE, 'subject'),
('saint-francis-of-paola', '/saints/saint-francis-of-paola_bianchi.jpg', 2, FALSE, 'subject'),
('saint-francis-of-paola', '/saints/saint-francis-of-paola_gandolfi.jpg', 3, FALSE, 'subject'),
('saint-francis-of-paola', '/saints/saint-francis-of-paola_giordano.jpg', 4, FALSE, 'subject'),

-- Saint Isidore
('saint-isidore', '/saints/saint-isidore_murillo.jpg', 1, TRUE, 'subject'),
('saint-isidore', '/saints/saint-isidore_pacully.jpg', 2, FALSE, 'subject'),

-- Saint Vincent Ferrer
('saint-vincent-ferrer', '/saints/saint-vincent-ferrer_miranda.jpg', 1, TRUE, 'subject'),
('saint-vincent-ferrer', '/saints/saint-vincent-ferrer_pace.jpg', 2, FALSE, 'subject'),
('saint-vincent-ferrer', '/saints/saint-vincent-ferrer_cano.jpg', 3, FALSE, 'subject'),
('saint-vincent-ferrer', '/saints/saint-vincent-ferrer_juanes.jpg', 4, FALSE, 'subject'),

-- Saint John Baptist de La Salle
('saint-john-baptist-de-la-salle', '/saints/saint-john-baptist-de-la-salle.jpg', 1, TRUE, 'subject'),
('saint-john-baptist-de-la-salle', '/saints/saint-john-baptist-de-la-salle_muller.jpg', 2, FALSE, 'subject'),
('saint-john-baptist-de-la-salle', '/saints/saint-john-baptist-de-la-salle_2.jpg', 3, FALSE, 'subject'),

-- Saint Stanislaus
('saint-stanislaus', '/saints/saint-stanislaus_samostrzelnik.jpg', 1, TRUE, 'subject'),
('saint-stanislaus', '/saints/saint-stanislaus.jpg', 2, FALSE, 'subject'),

-- Saint Martin I
('saint-martin-i', '/saints/saint-martin-i_montor.jpg', 1, TRUE, 'subject'),
('saint-martin-i', '/saints/saint-martin-i_stained-glass.jpg', 2, FALSE, 'subject'),
('saint-martin-i', '/saints/saint-martin-i.png', 3, FALSE, 'subject'),

-- Saint Anselm
('saint-anselm', '/saints/saint-anselm_glover.jpg', 1, TRUE, 'subject'),
('saint-anselm', '/saints/saint-anselm.jpg', 2, FALSE, 'subject'),

-- Saint George
('saint-george', '/saints/saint-george_raphael.jpg', 1, TRUE, 'subject'),
('saint-george', '/saints/saint-george_martorell.jpg', 2, FALSE, 'subject'),
('saint-george', '/saints/saint-george_rubens.jpg', 3, FALSE, 'subject'),
('saint-george', '/saints/saint-george_moreau.jpg', 4, FALSE, 'subject'),
('saint-george', '/saints/saint-george_schut.jpg', 5, FALSE, 'subject'),
('saint-george', '/saints/saint-george_domenichino.jpg', 6, FALSE, 'subject'),
('saint-george', '/saints/saint-george_icon.jpg', 7, FALSE, 'subject'),

-- Saint Adalbert
('saint-adalbert', '/saints/saint-adalbert_kovacz.jpg', 1, TRUE, 'subject'),
('saint-adalbert', '/saints/saint-adalbert-&-procopius.jpg', 2, FALSE, 'subject'),

-- Saint Fidelis of Sigmaringen
('saint-fidelis-of-sigmaringen', '/saints/saint-fidelis-of-sigmaringen.jpg', 1, TRUE, 'subject'),
('saint-fidelis-of-sigmaringen', '/saints/saint-fidelis-of-sigmaringen.webp', 2, FALSE, 'subject'),
('saint-fidelis-of-sigmaringen', '/saints/saint-fidelis-of-sigmaringen-&-joseph-of-leonessa_tiepolo.jpg', 3, FALSE, 'subject'),

-- Saint Mark the Evangelist
('saint-mark-evangelist', '/saints/saint-mark-evangelist_hals.jpg', 1, TRUE, 'subject'),
('saint-mark-evangelist', '/saints/saint-mark-evangelist_borovikovsky.jpg', 2, FALSE, 'subject'),
('saint-mark-evangelist', '/saints/saint-mark-evangelist_tintoretto_finding.jpg', 3, FALSE, 'subject'),
('saint-mark-evangelist', '/saints/saint-mark-evangelist_tintoretto_translation.jpg', 4, FALSE, 'subject'),

-- Saint Peter Chanel
('saint-peter-chanel', '/saints/saint-peter-chanel.jpg', 1, TRUE, 'subject'),
('saint-peter-chanel', '/saints/saint-peter-chanel_nicolet.jpg', 2, FALSE, 'subject'),

-- Saint Louis Grignion de Montfort
('saint-louis-grignion-de-montfort', '/saints/saint-louis-grignion-de-montfort.jpg', 1, TRUE, 'subject'),
('saint-louis-grignion-de-montfort', '/saints/saint-louis-grignion-de-montfort_2.jpg', 2, FALSE, 'subject'),
('saint-louis-grignion-de-montfort', '/saints/saint-louis-grignion-de-montfort_3.jpg', 3, FALSE, 'subject'),

-- Saint Catherine of Siena
('saint-catherine-of-siena', '/saints/saint-catherine-of-siena_dolci.jpg', 1, TRUE, 'subject'),
('saint-catherine-of-siena', '/saints/saint-catherine-of-siena_tiepolo.jpg', 2, FALSE, 'subject'),
('saint-catherine-of-siena', '/saints/saint-catherine-of-siena.jpg', 3, FALSE, 'subject'),
('saint-catherine-of-siena', '/saints/saint-catherine-of-siena-&-rose-of-lima-&-agnes-of-montepulciano_tiepolo.jpg', 4, FALSE, 'subject'),
('saint-catherine-of-siena', '/saints/saint-catherine-of-siena_sassoferrato.jpg', 5, FALSE, 'subject'),

-- Saint Pius V
('saint-pius-v', '/saints/saint-pius-v_passarotti.jpg', 1, TRUE, 'subject'),
('saint-pius-v', '/saints/saint-pius-v_giovane.jpg', 2, FALSE, 'subject'),
('saint-pius-v', '/saints/saint-pius-v.jpg', 3, FALSE, 'subject'),

-- =========================
-- May saints
-- =========================

-- Saint Athanasius
('saint-athanasius', '/saints/saint-athanasius_domenichino_grottaferrata.jpg', 1, TRUE, 'subject'),
('saint-athanasius', '/saints/saint-athanasius_solimena.jpg', 2, FALSE, 'subject'),
('saint-athanasius', '/saints/saint-athanasius_icon.jpg', 3, FALSE, 'subject'),

-- Saint Philip, Apostle
('saint-philip-apostle', '/saints/saint-philip-apostle_rubens.jpg', 1, TRUE, 'subject'),
('saint-philip-apostle', '/saints/saint-philip-apostle_la-tour.jpg', 2, FALSE, 'subject'),
('saint-philip-apostle', '/saints/saint-philip-apostle_ribera.jpg', 3, FALSE, 'subject'),
('saint-philip-apostle', '/saints/saint-philip-apostle_dyck.jpg', 4, FALSE, 'subject'),

-- Saint James the Less, Apostle
('saint-james-the-less-apostle', '/saints/saint-james-the-less-apostle_rubens.jpg', 1, TRUE, 'subject'),
('saint-james-the-less-apostle', '/saints/saint-james-the-less-apostle_la-tour.jpg', 2, FALSE, 'subject'),
('saint-james-the-less-apostle', '/saints/saint-james-the-less-apostle_ribera.jpg', 3, FALSE, 'subject'),
('saint-james-the-less-apostle', '/saints/saint-james-the-less-apostle_batoni.jpg', 4, FALSE, 'subject'),

-- Saint John of Ávila
('saint-john-of-avila', '/saints/saint-john-of-avila_greco.jpg', 1, TRUE, 'subject'),
('saint-john-of-avila', '/saints/saint-john-of-avila_subleyras.jpg', 2, FALSE, 'subject'),

-- Saint Nereus
('saint-nereus', '/saints/saint-domitilla-&-nereus-&-achilleus_rubens.jpg', 1, TRUE, 'subject'),
('saint-nereus', '/saints/saint-domitilla-&-nereus-&-achilleus_pomarancio.jpg', 2, FALSE, 'subject'),

-- Saint Achilleus
('saint-achilleus', '/saints/saint-domitilla-&-nereus-&-achilleus_rubens.jpg', 1, TRUE, 'subject'),
('saint-achilleus', '/saints/saint-domitilla-&-nereus-&-achilleus_pomarancio.jpg', 2, FALSE, 'subject'),

-- Saint Pancras
('saint-pancras', '/saints/saint-pancras_sachs.jpg', 1, TRUE, 'subject'),
('saint-pancras', '/saints/saint-pancras_guercino.jpg', 2, FALSE, 'subject'),

-- Saint Matthias, Apostle
('saint-matthias-apostle', '/saints/saint-matthias-apostle_rubens.jpg', 1, TRUE, 'subject'),
('saint-matthias-apostle', '/saints/saint-matthias-apostle_dyck.jpg', 2, FALSE, 'subject'),
('saint-matthias-apostle', '/saints/saint-matthias-apostle_tristan.jpg', 3, FALSE, 'subject'),

-- Saint John I
('saint-john-i', '/saints/saint-john-i_montor.jpg', 1, TRUE, 'subject'),
('saint-john-i', '/saints/saint-john-i.jpg', 2, FALSE, 'subject'),

-- Saint Bernardine of Siena
('saint-bernardine-of-siena', '/saints/saint-bernardine-of-siena_bellini.png', 1, TRUE, 'subject'),
('saint-bernardine-of-siena', '/saints/saint-bernardine-of-siena.jpg', 2, FALSE, 'subject'),
('saint-bernardine-of-siena', '/saints/saint-bernardine-of-siena_greco.jpg', 3, FALSE, 'subject'),
('saint-bernardine-of-siena', '/saints/saint-bernardine-of-siena_brescia.jpg', 4, FALSE, 'subject'),

-- Saint Christopher Magallanes
('saint-christopher-magallanes', '/saints/saint-christopher-magallanes.jpg', 1, TRUE, 'subject'),
('saint-christopher-magallanes', '/saints/saint-christopher-magallanes_2.jpg', 2, FALSE, 'subject'),
('saint-christopher-magallanes', '/saints/saint-christopher-magallanes_picture.jpg', 3, FALSE, 'subject'),

-- Saint Rita of Cascia
('saint-rita-of-cascia', '/saints/saint-rita-of-cascia.png', 1, TRUE, 'subject'),
('saint-rita-of-cascia', '/saints/saint-rita-of-cascia_2.jpg', 2, FALSE, 'subject'),
('saint-rita-of-cascia', '/saints/saint-rita-of-cascia_brandi.jpg', 3, FALSE, 'subject'),
('saint-rita-of-cascia', '/saints/saint-rita-of-cascia_poussin.jpg', 4, FALSE, 'subject'),
('saint-rita-of-cascia', '/saints/saint-rita-of-cascia_torres.jpg', 5, FALSE, 'subject'),

-- Saint Bede the Venerable
('saint-bede-the-venerable', '/saints/saint-bede-the-venerable.webp', 1, TRUE, 'subject'),
('saint-bede-the-venerable', '/saints/saint-bede-the-venerable_penrose.jpg', 2, FALSE, 'subject'),
('saint-bede-the-venerable', '/saints/saint-bede-the-venerable_icon.webp', 3, FALSE, 'subject'),

-- Saint Gregory VII
('saint-gregory-vii', '/saints/saint-gregory-vii_knille.webp', 1, TRUE, 'subject'),
('saint-gregory-vii', '/saints/saint-gregory-vii.png', 2, FALSE, 'subject'),
('saint-gregory-vii', '/saints/saint-gregory-vii_scarpelli.jpg', 3, FALSE, 'subject'),
('saint-gregory-vii', '/saints/saint-gregory-vii_2.webp', 4, FALSE, 'subject'),
('saint-gregory-vii', '/saints/saint-gregory-vii_3.png', 5, FALSE, 'subject'),
('saint-gregory-vii', '/saints/saint-gregory-vii_4.jpg', 6, FALSE, 'subject'),

-- Saint Mary Magdalene de’ Pazzi
('saint-mary-magdalene-de-pazzi', '/saints/saint-mary-magdalene-de-pazzi_cano.jpg', 1, TRUE, 'subject'),
('saint-mary-magdalene-de-pazzi', '/saints/saint-mary-magdalene-de-pazzi_rosi.jpg', 2, FALSE, 'subject'),
('saint-mary-magdalene-de-pazzi', '/saints/saint-mary-magdalene-de-pazzi_moya.jpg', 3, FALSE, 'subject'),

-- Saint Philip Neri
('saint-philip-neri', '/saints/saint-philip-neri_reni.jpg', 1, TRUE, 'subject'),
('saint-philip-neri', '/saints/saint-philip-neri_conca.gif', 2, FALSE, 'subject'),
('saint-philip-neri', '/saints/saint-philip-neri_dolci.jpg', 3, FALSE, 'subject'),
('saint-philip-neri', '/saints/saint-philip-neri_tiepolo.jpg', 4, FALSE, 'subject'),
('saint-philip-neri', '/saints/saint-philip-neri_nogari.jpg', 5, FALSE, 'subject'),

-- Saint Augustine of Canterbury
('saint-augustine-of-canterbury', '/saints/saint-augustine-of-canterbury_lommelin.jpg', 1, TRUE, 'subject'),
('saint-augustine-of-canterbury', '/saints/saint-augustine-of-canterbury.jpg', 2, FALSE, 'subject'),
('saint-augustine-of-canterbury', '/saints/saint-augustine-of-canterbury_icon.jpg', 3, FALSE, 'subject'),

-- Saint Paul VI
('saint-paul-vi', '/saints/saint-paul-vi.jpg', 1, TRUE, 'subject'),
('saint-paul-vi', '/saints/saint-paul-vi_picture.jpg', 2, FALSE, 'subject'),
('saint-paul-vi', '/saints/saint-paul-vi_picture_2.webp', 3, FALSE, 'subject'),

-- =========================
-- June saints
-- =========================

-- Saint Justin Martyr
('saint-justin-martyr', '/saints/saint-justin-martyr_thevet.jpg', 1, TRUE, 'subject'),
('saint-justin-martyr', '/saints/saint-justin-martyr_icon.jpg', 2, FALSE, 'subject'),

-- Saint Marcellinus
('saint-marcellinus', '/saints/saint-marcellinus-&-peter.jpg', 1, TRUE, 'subject'),
('saint-marcellinus', '/saints/saint-marcellinus-&-peter_martyr.jpg', 2, FALSE, 'subject'),
('saint-marcellinus', '/saints/saint-marcellinus-&-peter_2.jpg', 3, FALSE, 'subject'),

-- Saint Peter (Exorcist)
('saint-peter-exorcist', '/saints/saint-marcellinus-&-peter.jpg', 1, TRUE, 'subject'),
('saint-peter-exorcist', '/saints/saint-marcellinus-&-peter_martyr.jpg', 2, FALSE, 'subject'),
('saint-peter-exorcist', '/saints/saint-marcellinus-&-peter_2.jpg', 3, FALSE, 'subject'),

-- Saint Charles Lwanga and Companions
('saint-charles-lwanga-and-companions', '/saints/saint-charles-lwanga-and-companions_icon.jpg', 1, TRUE, 'subject'),
('saint-charles-lwanga-and-companions', '/saints/saint-charles-lwanga-and-companions.avif', 2, FALSE, 'subject'),
('saint-charles-lwanga-and-companions', '/saints/saint-charles-lwanga-and-companions_2.jpg', 3, FALSE, 'subject'),

-- Saint Boniface
('saint-boniface', '/saints/saint-boniface_bloemaert.jpg', 1, TRUE, 'subject'),
('saint-boniface', '/saints/saint-boniface_rode.jpg', 2, FALSE, 'subject'),
('saint-boniface', '/saints/saint-boniface_rethel.jpg', 3, FALSE, 'subject'),

-- Saint Norbert
('saint-norbert', '/saints/saint-norbert_vaszary.jpg', 1, TRUE, 'subject'),
('saint-norbert', '/saints/saint-norbert_rubens.jpg', 2, FALSE, 'subject'),
('saint-norbert', '/saints/saint-norbert_hoey.jpg', 3, FALSE, 'subject'),
('saint-norbert', '/saints/saint-norbert_crayer.jpg', 4, FALSE, 'subject'),
('saint-norbert', '/saints/saint-norbert.jpg', 5, FALSE, 'subject'),

-- Saint Ephrem
('saint-ephrem', '/saints/saint-ephrem_icon.jpg', 1, TRUE, 'subject'),
('saint-ephrem', '/saints/saint-ephrem_mosaic.jpg', 2, FALSE, 'subject'),
('saint-ephrem', '/saints/saint-ephrem_illustration.jpg', 3, FALSE, 'subject'),

-- Saint Barnabas, Apostle
('saint-barnabas-apostle', '/saints/saint-barnabas-apostle.jpg', 1, TRUE, 'subject'),
('saint-barnabas-apostle', '/saints/saint-barnabas-apostle_veronese.jpg', 2, FALSE, 'subject'),
('saint-barnabas-apostle', '/saints/saint-paul-apostle-&-barnabas.jpg', 3, FALSE, 'subject'),

-- Saint Anthony of Padua
('saint-anthony-of-padua', '/saints/saint-anthony-of-padua_zurbaran.jpg', 1, TRUE, 'subject'),
('saint-anthony-of-padua', '/saints/saint-anthony-of-padua_farelli.jpg', 2, FALSE, 'subject'),
('saint-anthony-of-padua', '/saints/saint-anthony-of-padua_sirani.jpg', 3, FALSE, 'subject'),
('saint-anthony-of-padua', '/saints/saint-anthony-of-padua_strozzi.jpg', 4, FALSE, 'subject'),
('saint-anthony-of-padua', '/saints/saint-anthony-of-padua_murillo.jpg', 5, FALSE, 'subject'),

-- Saint Romuald
('saint-romuald', '/saints/saint-romuald_guercino.jpg', 1, TRUE, 'subject'),
('saint-romuald', '/saints/saint-romuald_loth.jpg', 2, FALSE, 'subject'),
('saint-romuald', '/saints/saint-romuald_angelico.jpg', 3, FALSE, 'subject'),
('saint-romuald', '/saints/saint-romuald_mussini.jpg', 4, FALSE, 'subject'),

-- Saint Aloysius Gonzaga
('saint-aloysius-gonzaga', '/saints/saint-aloysius-gonzaga_mazzanti.jpg', 1, TRUE, 'subject'),
('saint-aloysius-gonzaga', '/saints/saint-aloysius-gonzaga_guercino.jpg', 2, FALSE, 'subject'),
('saint-aloysius-gonzaga', '/saints/saint-aloysius-gonzaga_goya.jpg', 3, FALSE, 'subject'),
('saint-aloysius-gonzaga', '/saints/saint-aloysius-gonzaga_tiepolo.jpg', 4, FALSE, 'subject'),

-- Saint Paulinus of Nola
('saint-paulinus-of-nola', '/saints/saint-paulinus-of-nola.jpg', 1, TRUE, 'subject'),
('saint-paulinus-of-nola', '/saints/saint-paulinus-of-nola_stained-glass.jpg', 2, FALSE, 'subject'),
('saint-paulinus-of-nola', '/saints/saint-paulinus-of-nola_azzolino.jpg', 3, FALSE, 'subject'),

-- Saint John Fisher
('saint-john-fisher', '/saints/saint-john-fisher_holbein-younger.jpg', 1, TRUE, 'subject'),
('saint-john-fisher', '/saints/saint-john-fisher_illustration.jpg', 2, FALSE, 'subject'),
('saint-john-fisher', '/saints/saint-john-fisher_briggs.jpg', 3, FALSE, 'subject'),
('saint-john-fisher', '/saints/saint-john-fisher_briggs_2.jpg', 4, FALSE, 'subject'),

-- Saint Thomas More
('saint-thomas-more', '/saints/saint-thomas-more_holbein-younger.jpg', 1, TRUE, 'subject'),
('saint-thomas-more', '/saints/saint-thomas-more_ward.jpg', 2, FALSE, 'subject'),

-- Saint Peter, Apostle
('saint-peter-apostle', '/saints/saint-peter-apostle_rubens.jpg', 1, TRUE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_rubens_charge.jpg', 2, FALSE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_dyck.jpg', 3, FALSE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_dyck_penitent.jpg', 4, FALSE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_guercino.jpg', 5, FALSE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_guercino_weeping.jpg', 6, FALSE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_murillo.jpg', 7, FALSE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_ribera.jpg', 8, FALSE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_ribera_penitent.jpg', 9, FALSE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_caravaggio_crucifixion.jpg', 10, FALSE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_rembrandt.jpg', 11, FALSE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_rembrandt_denial.jpg', 12, FALSE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_rembrandt_prison.jpg', 13, FALSE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_velazquez.jpg', 14, FALSE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_zurbaran.jpg', 15, FALSE, 'subject'),
('saint-peter-apostle', '/saints/saint-peter-apostle_brion.jpg', 16, FALSE, 'subject'),

-- Saint Cyril of Alexandria
('saint-cyril-of-alexandria', '/saints/saint-cyril-of-alexandria_fresco.jpg', 1, TRUE, 'subject'),
('saint-cyril-of-alexandria', '/saints/saint-cyril-of-alexandria_icon.jpg', 2, FALSE, 'subject'),
('saint-cyril-of-alexandria', '/saints/saint-cyril-of-alexandria_stained-glass.jpg', 3, FALSE, 'subject'),

-- Saint Irenaeus
('saint-irenaeus', '/saints/saint-irenaeus_icon.jpg', 1, TRUE, 'subject'),
('saint-irenaeus', '/saints/saint-irenaeus_stained-glass.jpg', 2, FALSE, 'subject'),

-- =========================
-- July saints
-- =========================

-- Saint Thomas, Apostle
('saint-thomas-apostle', '/saints/saint-thomas-apostle_rubens.jpg', 1, TRUE, 'subject'),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_dyck.jpg', 2, FALSE, 'subject'),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_velazquez.jpg', 3, FALSE, 'subject'),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_ribera.jpg', 4, FALSE, 'subject'),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_la-tour.jpg', 5, FALSE, 'subject'),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_la-tour_2.jpg', 6, FALSE, 'subject'),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_caravaggio.jpg', 7, FALSE, 'subject'),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_rubens_martyr.jpg', 8, FALSE, 'subject'),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_rembrandt.jpg', 9, FALSE, 'subject'),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_zurbaran.jpg', 10, FALSE, 'subject'),

-- Saint Elizabeth of Portugal
('saint-elizabeth-of-portugal', '/saints/saint-elizabeth-of-portugal_zurbaran.jpg', 1, TRUE, 'subject'),
('saint-elizabeth-of-portugal', '/saints/saint-elizabeth-of-portugal.jpg', 2, FALSE, 'subject'),
('saint-elizabeth-of-portugal', '/saints/saint-elizabeth-of-portugal_2.jpg', 3, FALSE, 'subject'),
('saint-elizabeth-of-portugal', '/saints/saint-elizabeth-of-portugal_castro.jpg', 4, FALSE, 'subject'),

-- Saint Anthony Zaccaria
('saint-anthony-zaccaria', '/saints/saint-anthony-zaccaria.jpg', 1, TRUE, 'subject'),
('saint-anthony-zaccaria', '/saints/saint-anthony-zaccaria_2.jpg', 2, FALSE, 'subject'),
('saint-anthony-zaccaria', '/saints/saint-anthony-zaccaria_3.jpg', 3, FALSE, 'subject'),
('saint-anthony-zaccaria', '/saints/saint-anthony-zaccaria_4.jpg', 4, FALSE, 'subject'),

-- Saint Maria Goretti
('saint-maria-goretti', '/saints/saint-maria-goretti_soffredini.jpg', 1, TRUE, 'subject'),
('saint-maria-goretti', '/saints/saint-maria-goretti_2.jpg', 2, FALSE, 'subject'),

-- Saint Augustine Zhao Rong and Companions
('saint-augustine-zhao-rong', '/saints/saint-augustine-zhao-rong_icon.jpg', 1, TRUE, 'subject'),
('saint-augustine-zhao-rong', '/saints/saint-augustine-zhao-rong-&-companions_liu.jpg', 2, FALSE, 'subject'),
('saint-augustine-zhao-rong', '/saints/saint-augustine-zhao-rong_stained-glass.jpg', 3, FALSE, 'subject'),

-- Saint Benedict, Abbot
('saint-benedict', '/saints/saint-benedict.jpg', 1, TRUE, 'subject'),
('saint-benedict', '/saints/saint-benedict_piazzetta.jpg', 2, FALSE, 'subject'),
('saint-benedict', '/saints/saint-benedict_briggs.jpg', 3, FALSE, 'subject'),
('saint-benedict', '/saints/saint-benedict_zurbaran.jpg', 4, FALSE, 'subject'),
('saint-benedict', '/saints/saint-benedict_2.jpg', 5, FALSE, 'subject'),
('saint-benedict', '/saints/saint-benedict_restout.jpg', 6, FALSE, 'subject'),
('saint-benedict', '/saints/saint-benedict-&-scholastica.jpg', 7, FALSE, 'subject'),

-- Saint Henry
('saint-henry', '/saints/saint-henry_baer.jpg', 1, TRUE, 'subject'),
('saint-henry', '/saints/saint-henry.jpg', 2, FALSE, 'subject'),
('saint-henry', '/saints/saint-henry_fuhricht.jpg', 3, FALSE, 'subject'),
('saint-henry', '/saints/saint-henry_2.jpg', 4, FALSE, 'subject'),

-- Saint Camillus de Lellis
('saint-camillus-de-lellis', '/saints/saint-camillus-de-lellis_gandolfi.jpg', 1, TRUE, 'subject'),
('saint-camillus-de-lellis', '/saints/saint-camillus-de-lellis_lozano.jpg', 2, FALSE, 'subject'),
('saint-camillus-de-lellis', '/saints/saint-camillus-de-lellis.jpg', 3, FALSE, 'subject'),
('saint-camillus-de-lellis', '/saints/saint-camillus-de-lellis_subleyras.jpg', 4, FALSE, 'subject'),

-- Saint Bonaventure
('saint-bonaventure', '/saints/saint-bonaventure_cavazzola.jpg', 1, TRUE, 'subject'),
('saint-bonaventure', '/saints/saint-bonaventure_lombard.jpg', 2, FALSE, 'subject'),
('saint-bonaventure', '/saints/saint-bonaventure_rubens.jpg', 3, FALSE, 'subject'),
('saint-bonaventure', '/saints/saint-bonaventure_orpen.jpg', 4, FALSE, 'subject'),
('saint-bonaventure', '/saints/saint-bonaventure_zurbaran.jpg', 5, FALSE, 'subject'),

-- Saint Apollinaris
('saint-apollinaris', '/saints/saint-apollinaris-&-peter_pasquali.jpg', 1, TRUE, 'subject'),
('saint-apollinaris', '/saints/saint-apollinaris_mosaic.jpg', 2, FALSE, 'subject'),

-- Saint Lawrence of Brindisi
('saint-lawrence-of-brindisi', '/saints/saint-lawrence-of-brindisi.png', 1, TRUE, 'subject'),
('saint-lawrence-of-brindisi', '/saints/saint-lawrence-of-brindisi_2.jpg', 2, FALSE, 'subject'),
('saint-lawrence-of-brindisi', '/saints/saint-lawrence-of-brindisi_3.jpg', 3, FALSE, 'subject'),

-- Saint Mary Magdalene
('saint-mary-magdalene', '/saints/saint-mary-magdalene_spadarino.jpg', 1, TRUE, 'subject'),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_caravaggio_ecstasy.jpg', 2, FALSE, 'subject'),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_champaigne.jpg', 3, FALSE, 'subject'),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_rubens.jpg', 4, FALSE, 'subject'),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_caravaggio_penitent.jpg', 5, FALSE, 'subject'),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_la-tour.jpg', 6, FALSE, 'subject'),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_veronese.jpg', 7, FALSE, 'subject'),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_merle.jpg', 8, FALSE, 'subject'),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_ivanov.jpg', 9, FALSE, 'subject'),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_titian.jpg', 10, FALSE, 'subject'),
('saint-mary-magdalene', '/saints/saint-mary-magdalene_giotto.jpg', 11, FALSE, 'subject'),

-- Saint Bridget
('saint-bridget', '/saints/saint-bridget.jpg', 1, TRUE, 'subject'),
('saint-bridget', '/saints/saint-bridget_friano.jpg', 2, FALSE, 'subject'),
('saint-bridget', '/saints/saint-bridget_2.jpg', 3, FALSE, 'subject'),
('saint-bridget', '/saints/saint-bridget_briggs.jpg', 4, FALSE, 'subject'),

-- Saint Sharbel Makhluf
('saint-sharbel-makhluf', '/saints/saint-sharbel-makhluf.jpg', 1, TRUE, 'subject'),
('saint-sharbel-makhluf', '/saints/saint-sharbel-makhluf_2.jpg', 2, FALSE, 'subject'),
('saint-sharbel-makhluf', '/saints/saint-sharbel-makhluf_3.jpg', 3, FALSE, 'subject'),

-- Saint James, Apostle
('saint-james-apostle', '/saints/saint-james-apostle_rubens.jpg', 1, TRUE, 'subject'),
('saint-james-apostle', '/saints/saint-james-apostle_reni.jpg', 2, FALSE, 'subject'),
('saint-james-apostle', '/saints/saint-james-apostle_dyck.jpg', 3, FALSE, 'subject'),
('saint-james-apostle', '/saints/saint-james-apostle_ribera.jpg', 4, FALSE, 'subject'),
('saint-james-apostle', '/saints/saint-james-apostle_rembrandt.jpg', 5, FALSE, 'subject'),
('saint-james-apostle', '/saints/saint-james-apostle_zurbaran.jpg', 6, FALSE, 'subject'),
('saint-james-apostle', '/saints/saint-james-apostle_murillo.jpg', 7, FALSE, 'subject'),
('saint-james-apostle', '/saints/saint-james-apostle_tiepolo.jpg', 8, FALSE, 'subject'),
('saint-james-apostle', '/saints/saint-james-apostle_dyck_martyr.jpg', 9, FALSE, 'subject'),
('saint-james-apostle', '/saints/saint-james-apostle_zurbaran_martyr.jpg', 10, FALSE, 'subject'),

-- Saint Joachim
('saint-joachim', '/saints/saint-joachim_wautier.jpg', 1, TRUE, 'subject'),
('saint-joachim', '/saints/saint-joachim_gutierrez.jpg', 2, FALSE, 'subject'),
('saint-joachim', '/saints/saint-joachim-&-mary_camilo.jpg', 3, FALSE, 'subject'),
('saint-joachim', '/saints/saint-joachim-&-mary.jpg', 4, FALSE, 'subject'),
('saint-joachim', '/saints/saint-joachim-&-anne_maratta.jpg', 5, FALSE, 'subject'),
('saint-joachim', '/saints/saint-anne-&-joachim-&-mary_wautier.jpg', 6, FALSE, 'subject'),
('saint-joachim', '/saints/saint-anne-&-joachim-&-mary_tiepolo.jpg', 7, FALSE, 'subject'),

-- Saint Anne
('saint-anne', '/saints/saint-anne-&-mary_coypel.jpg', 1, TRUE, 'subject'),
('saint-anne', '/saints/saint-anne-&-mary_murillo.jpg', 2, FALSE, 'subject'),
('saint-anne', '/saints/saint-anne-&-mary_la-tour.jpg', 3, FALSE, 'subject'),
('saint-anne', '/saints/saint-anne-&-mary_stella.jpg', 4, FALSE, 'subject'),
('saint-anne', '/saints/saint-anne-&-joachim-&-mary_wautier.jpg', 5, FALSE, 'subject'),
('saint-anne', '/saints/saint-anne-&-joachim-&-mary_tiepolo.jpg', 6, FALSE, 'subject'),
('saint-anne', '/saints/saint-anne-&-mary-&-child.jpg', 7, FALSE, 'subject'),
('saint-anne', '/saints/saint-anne-&-mary_icon.jpg', 8, FALSE, 'subject'),

-- Saint Martha of Bethany
('saint-martha-of-bethany', '/saints/saint-martha-of-bethany_ring-sakabe.webp', 1, TRUE, 'subject'),
('saint-martha-of-bethany', '/saints/saint-martha-of-bethany-&-mary-of-bethany-&-christ_vermeer.jpg', 2, FALSE, 'subject'),
('saint-martha-of-bethany', '/saints/saint-martha-of-bethany-&-mary-of-bethany-&-christ_rubens.jpg', 3, FALSE, 'subject'),
('saint-martha-of-bethany', '/saints/saint-martha-of-bethany.jpg', 4, FALSE, 'subject'),

-- Saint Mary of Bethany
('saint-mary-of-bethany', '/saints/saint-mary-of-bethany_ring-sakabe.jpg', 1, TRUE, 'subject'),
('saint-mary-of-bethany', '/saints/saint-martha-of-bethany-&-mary-of-bethany-&-christ_vermeer.jpg', 2, FALSE, 'subject'),
('saint-mary-of-bethany', '/saints/saint-martha-of-bethany-&-mary-of-bethany-&-christ_rubens.jpg', 3, FALSE, 'subject'),

-- Saint Lazarus of Bethany
('saint-lazarus-of-bethany', '/saints/saint-lazarus-of-bethany_caravaggio.jpg', 1, TRUE, 'subject'),
('saint-lazarus-of-bethany', '/saints/saint-lazarus-of-bethany_rubens.jpg', 2, FALSE, 'subject'),
('saint-lazarus-of-bethany', '/saints/saint-lazarus-of-bethany_gebhardt.jpg', 3, FALSE, 'subject'),
('saint-lazarus-of-bethany', '/saints/saint-lazarus-of-bethany_flandes.jpg', 4, FALSE, 'subject'),

-- Saint Peter Chrysologus
('saint-peter-chrysologus', '/saints/saint-peter-chrysologus.jpg', 1, TRUE, 'subject'),
('saint-peter-chrysologus', '/saints/saint-peter-chrysologus-&-cassian_fontana.jpg', 2, FALSE, 'subject'),

-- Saint Ignatius of Loyola
('saint-ignatius-of-loyola', '/saints/saint-ignatius-of-loyola_rubens.jpg', 1, TRUE, 'subject'),
('saint-ignatius-of-loyola', '/saints/saint-ignatius-of-loyola_rubens_miracle.jpg', 2, FALSE, 'subject'),
('saint-ignatius-of-loyola', '/saints/saint-ignatius-of-loyola_zurbaran.jpg', 3, FALSE, 'subject'),
('saint-ignatius-of-loyola', '/saints/saint-ignatius-of-loyola.jpg', 4, FALSE, 'subject'),

-- =========================
-- August Saints
-- =========================

-- Saint Alphonsus Liguori
('saint-alphonsus-liguori', '/saints/saint-alphonsus-liguori.jpg', 1, TRUE, 'subject'),
('saint-alphonsus-liguori', '/saints/saint-alphonsus-liguori_2.jpg', 2, FALSE, 'subject'),
('saint-alphonsus-liguori', '/saints/saint-alphonsus-liguori_3.jpg', 3, FALSE, 'subject'),
('saint-alphonsus-liguori', '/saints/saint-alphonsus-liguori_4.jpg', 4, FALSE, 'subject'),

-- Saint Eusebius of Vercelli
('saint-eusebius-of-vercelli', '/saints/saint-eusebius-of-vercelli.jpg', 1, TRUE, 'subject'),
('saint-eusebius-of-vercelli', '/saints/saint-eusebius-of-vercelli_2.jpg', 2, FALSE, 'subject'),
('saint-eusebius-of-vercelli', '/saints/saint-eusebius-of-vercelli-&-roch-&-sebastian_ricci.jpg', 3, FALSE, 'subject'),

-- Saint Peter Julian Eymard
('saint-peter-julian-eymard', '/saints/saint-peter-julian-eymard.jpg', 1, TRUE, 'subject'),
('saint-peter-julian-eymard', '/saints/saint-peter-julian-eymard_2.jpg', 2, FALSE, 'subject'),

-- Saint John Vianney
('saint-john-vianney', '/saints/saint-john-vianney_briggs.jpg', 1, TRUE, 'subject'),
('saint-john-vianney', '/saints/saint-john-vianney_desvallieres.png', 2, FALSE, 'subject'),
('saint-john-vianney', '/saints/saint-john-vianney.jpg', 3, FALSE, 'subject'),
('saint-john-vianney', '/saints/saint-john-vianney_2.jpg', 4, FALSE, 'subject'),
('saint-john-vianney', '/saints/saint-john-vianney_borel.jpg', 5, FALSE, 'subject'),

-- Saint Sixtus II and Companions
('saint-sixtus-ii-and-companions', '/saints/saint-sixtus-ii_botticelli.jpg', 1, TRUE, 'subject'),
('saint-sixtus-ii-and-companions', '/saints/saint-sixtus-ii.jpg', 2, FALSE, 'subject'),

-- Saint Cajetan
('saint-cajetan', '/saints/saint-cajetan_tiepolo.jpg', 1, TRUE, 'subject'),
('saint-cajetan', '/saints/saint-cajetan_ricci.jpg', 2, FALSE, 'subject'),
('saint-cajetan', '/saints/saint-cajetan_solimena.jpg', 3, FALSE, 'subject'),

-- Saint Dominic
('saint-dominic', '/saints/saint-dominic_coello.jpg', 1, TRUE, 'subject'),
('saint-dominic', '/saints/saint-dominic_cavallino.jpg', 2, FALSE, 'subject'),
('saint-dominic', '/saints/saint-dominic_campeche.jpg', 3, FALSE, 'subject'),

-- Saint Teresa Benedicta of the Cross (Edith Stein)
('saint-teresa-benedicta-of-the-cross', '/saints/saint-teresa-benedicta-of-the-cross_ferreira_no-watermark.jpg', 1, TRUE, 'subject'),
('saint-teresa-benedicta-of-the-cross', '/saints/saint-teresa-benedicta-of-the-cross_passport.jpg', 2, FALSE, 'subject'),
('saint-teresa-benedicta-of-the-cross', '/saints/saint-teresa-benedicta-of-the-cross.jpg', 3, FALSE, 'subject'),

-- Saint Lawrence
('saint-lawrence', '/saints/saint-lawrence_briggs.jpg', 1, TRUE, 'subject'),
('saint-lawrence', '/saints/saint-lawrence_santacroce.jpg', 2, FALSE, 'subject'),
('saint-lawrence', '/saints/saint-lawrence_champaigne_martyr.jpg', 3, FALSE, 'subject'),
('saint-lawrence', '/saints/saint-lawrence_limosin.jpg', 4, FALSE, 'subject'),
('saint-lawrence', '/saints/saint-lawrence_calli.jpg', 5, FALSE, 'subject'),
('saint-lawrence', '/saints/saint-lawrence_titan_martyr.jpg', 6, FALSE, 'subject'),
('saint-lawrence', '/saints/saint-lawrence_strozzi.jpg', 7, FALSE, 'subject'),

-- Saint Clare
('saint-clare', '/saints/saint-clare_martini.jpg', 1, TRUE, 'subject'),
('saint-clare', '/saints/saint-clare_moroni.jpg', 2, FALSE, 'subject'),
('saint-clare', '/saints/saint-clare_arco.jpg', 3, FALSE, 'subject'),

-- Saint Jane Frances de Chantal
('saint-jane-frances-de-chantal', '/saints/saint-jane-frances-de-chantal.webp', 1, TRUE, 'subject'),
('saint-jane-frances-de-chantal', '/saints/saint-jane-frances-de-chantal_2.jpg', 2, FALSE, 'subject'),
('saint-jane-frances-de-chantal', '/saints/saint-francis-de-sales-&-jane-frances-de-chantal.jpg', 3, FALSE, 'subject'),
('saint-jane-frances-de-chantal', '/saints/saint-francis-de-sales-&-jane-frances-de-chantal_bayeu.jpg', 4, FALSE, 'subject'),
('saint-jane-frances-de-chantal', '/saints/saint-francis-de-sales-&-jane-frances-de-chantal_halle.jpg', 5, FALSE, 'subject'),

-- Saint Pontian
('saint-pontian', '/saints/saint-pontian_aretino.jpg', 1, TRUE, 'subject'),
('saint-pontian', '/saints/saint-pontian_montor.jpg', 2, FALSE, 'subject'),
('saint-pontian', '/saints/saint-pontian.jpg', 3, FALSE, 'subject'),
('saint-pontian', '/saints/saint-pontian_echave_martyr.jpg', 4, FALSE, 'subject'),

-- Saint Hippolytus of Rome
('saint-hippolytus-of-rome', '/saints/saint-hippolytus-of-rome.jpg', 1, TRUE, 'subject'),
('saint-hippolytus-of-rome', '/saints/saint-hippolytus-of-rome_icon.jpg', 2, FALSE, 'subject'),
('saint-hippolytus-of-rome', '/saints/saint-hippolytus-of-rome_julien_martyr.jpg', 3, FALSE, 'subject'),

-- Saint Maximus the Confessor
('saint-maximus-the-confessor', '/saints/saint-maximus-the-confessor.jpg', 1, TRUE, 'subject'),
('saint-maximus-the-confessor', '/saints/saint-maximus-the-confessor_icon.jpg', 2, FALSE, 'subject'),
('saint-maximus-the-confessor', '/saints/saint-maximus-the-confessor_icon_2.jpg', 3, FALSE, 'subject'),
('saint-maximus-the-confessor', '/saints/saint-maximus-the-confessor_2.png', 4, FALSE, 'subject'),

-- Saint Maximilien Kolbe
('saint-maximilien-kolbe', '/saints/saint-maximilien-kolbe_pawlowski.jpg', 1, TRUE, 'subject'),
('saint-maximilien-kolbe', '/saints/saint-maximilien-kolbe.jpg', 2, FALSE, 'subject'),
('saint-maximilien-kolbe', '/saints/saint-maximilien-kolbe_2.jpg', 3, FALSE, 'subject'),

-- Saint Stephen of Hungary
('saint-stephen-of-hungary', '/saints/saint-stephen-of-hungary.jpg', 1, TRUE, 'subject'),
('saint-stephen-of-hungary', '/saints/saint-stephen-of-hungary_2.jpg', 2, FALSE, 'subject'),
('saint-stephen-of-hungary', '/saints/saint-stephen-of-hungary_verhaghen.jpg', 3, FALSE, 'subject'),
('saint-stephen-of-hungary', '/saints/saint-stephen-of-hungary_3.jpg', 4, FALSE, 'subject'),

-- Saint John Eudes
('saint-john-eudes', '/saints/saint-john-eudes.jpg', 1, TRUE, 'subject'),
('saint-john-eudes', '/saints/saint-john-eudes_2.jpg', 2, FALSE, 'subject'),

-- Saint Bernard (of Clairvaux)
('saint-bernard', '/saints/saint-bernard_latil.jpg', 1, TRUE, 'subject'),
('saint-bernard', '/saints/saint-bernard_greco.jpg', 2, FALSE, 'subject'),
('saint-bernard', '/saints/saint-bernard_goya.jpg', 3, FALSE, 'subject'),
('saint-bernard', '/saints/saint-bernard_ribalta.jpg', 4, FALSE, 'subject'),
('saint-bernard', '/saints/saint-bernard_cano.jpg', 5, FALSE, 'subject'),
('saint-bernard', '/saints/saint-bernard_signol.jpg', 6, FALSE, 'subject'),
('saint-bernard', '/saints/saint-bernard_vivar.jpg', 7, FALSE, 'subject'),

-- Saint Pius X
('saint-pius-x', '/saints/saint-pius-x_gerrer.jpg', 1, TRUE, 'subject'),
('saint-pius-x', '/saints/saint-pius-x.jpg', 2, FALSE, 'subject'),
('saint-pius-x', '/saints/saint-pius-x_bordignon.jpg', 3, FALSE, 'subject'),

-- Saint Rose of Lima
('saint-rose-of-lima', '/saints/saint-rose-of-lima_coello.jpg', 1, TRUE, 'subject'),
('saint-rose-of-lima', '/saints/saint-rose-of-lima.jpg', 2, FALSE, 'subject'),
('saint-rose-of-lima', '/saints/saint-rose-of-lima_medoro.jpg', 3, FALSE, 'subject'),
('saint-rose-of-lima', '/saints/saint-rose-of-lima_laso.jpg', 4, FALSE, 'subject'),
('saint-rose-of-lima', '/saints/saint-rose-of-lima_murillo.jpg', 5, FALSE, 'subject'),
('saint-rose-of-lima', '/saints/saint-rose-of-lima_briggs.jpg', 6, FALSE, 'subject'),

-- Saint Bartholomew, Apostle
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_rubens.jpg', 1, TRUE, 'subject'),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_dyck.jpg', 2, FALSE, 'subject'),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_ribera.jpg', 3, FALSE, 'subject'),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_zurbaran.jpg', 4, FALSE, 'subject'),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_rembrandt.jpg', 5, FALSE, 'subject'),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_rembrandt_2.jpg', 6, FALSE, 'subject'),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle-cavallino.jpg', 7, FALSE, 'subject'),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_ribera_martyr.jpg', 8, FALSE, 'subject'),
('saint-bartholomew-apostle', '/saints/saint-bartholomew-apostle_tiepolo_martyr.jpg', 9, FALSE, 'subject'),

-- Saint Louis
('saint-louis', '/saints/saint-louis_signol.jpg', 1, TRUE, 'subject'),
('saint-louis', '/saints/saint-louis_lagrenee.jpg', 2, FALSE, 'subject'),
('saint-louis', '/saints/saint-louis_cabanel.jpg', 3, FALSE, 'subject'),
('saint-louis', '/saints/saint-louis_greco.jpg', 4, FALSE, 'subject'),
('saint-louis', '/saints/saint-louis_loo.jpg', 5, FALSE, 'subject'),
('saint-louis', '/saints/saint-louis_decreuse.jpg', 6, FALSE, 'subject'),
('saint-louis', '/saints/saint-louis_vien.jpg', 7, FALSE, 'subject'),
('saint-louis', '/saints/saint-louis_thevenin.jpg', 8, FALSE, 'subject'),

-- Saint Joseph Calasanz
('saint-joseph-calasanz', '/saints/saint-joseph-calasanz_casanova.jpg', 1, TRUE, 'subject'),
('saint-joseph-calasanz', '/saints/saint-joseph-calasanz_corvi.jpg', 2, FALSE, 'subject'),
('saint-joseph-calasanz', '/saints/saint-joseph-calasanz_goya.jpg', 3, FALSE, 'subject'),

-- Saint Monica
('saint-monica', '/saints/saint-monica_cabanel.jpg', 1, TRUE, 'subject'),
('saint-monica', '/saints/saint-augustine-of-hippo-&-monica_scheffer.jpg', 2, FALSE, 'subject'),
('saint-monica', '/saints/saint-monica_gozzoli.jpg', 3, FALSE, 'subject'),

-- Saint Augustine of Hippo
('saint-augustine-of-hippo', '/saints/saint-augustine-of-hippo_champaigne.jpg', 1, TRUE, 'subject'),
('saint-augustine-of-hippo', '/saints/saint-augustine-of-hippo-&-monica_scheffer.jpg', 2, FALSE, 'subject'),
('saint-augustine-of-hippo', '/saints/saint-augustine-of-hippo_coello.jpg', 3, FALSE, 'subject'),
('saint-augustine-of-hippo', '/saints/saint-augustine-of-hippo_botticelli.jpg', 4, FALSE, 'subject'),
('saint-augustine-of-hippo', '/saints/saint-augustine-of-hippo_coello_triumph.jpg', 5, FALSE, 'subject'),
('saint-augustine-of-hippo', '/saints/saint-augustine-of-hippo_rubens.jpg', 6, FALSE, 'subject'),
('saint-augustine-of-hippo', '/saints/saint-augustine-of-hippo_rubens_jesus.jpg', 7, FALSE, 'subject'),

-- =========================
-- September Saints
-- =========================

-- Saint Gregory the Great
('saint-gregory-the-great', '/saints/saint-gregory-the-great_vien.jpg', 1, TRUE, 'subject'),
('saint-gregory-the-great', '/saints/saint-gregory-the-great_ribera.jpg', 2, FALSE, 'subject'),
('saint-gregory-the-great', '/saints/saint-gregory-the-great_stom.jpg', 3, FALSE, 'subject'),
('saint-gregory-the-great', '/saints/saint-gregory-the-great_theodoric.jpg', 4, FALSE, 'subject'),
('saint-gregory-the-great', '/saints/saint-gregory-the-great_gasparro.jpg', 5, FALSE, 'subject'),

-- Saint Teresa of Calcutta
('saint-teresa-of-calcutta', '/saints/saint-teresa-of-calcutta_zumo.jpg', 1, TRUE, 'subject'),
('saint-teresa-of-calcutta', '/saints/saint-teresa-of-calcutta_bettmann.jpg', 2, FALSE, 'subject'),
('saint-teresa-of-calcutta', '/saints/saint-teresa-of-calcutta.jpg', 3, FALSE, 'subject'),

-- Saint Peter Claver
('saint-peter-claver', '/saints/saint-peter-claver.jpg', 1, TRUE, 'subject'),
('saint-peter-claver', '/saints/saint-peter-claver_vitta.jpg', 2, FALSE, 'subject'),
('saint-peter-claver', '/saints/saint-peter-claver_2.jpg', 3, FALSE, 'subject'),

-- Saint John Chrysostom
('saint-john-chrysostom', '/saints/saint-john-chrysostom_champaigne.jpg', 1, TRUE, 'subject'),
('saint-john-chrysostom', '/saints/saint-john-chrysostom_wencker.jpg', 2, FALSE, 'subject'),
('saint-john-chrysostom', '/saints/saint-john-chrysostom_mosaic.jpg', 3, FALSE, 'subject'),

-- Saint Cornelius
('saint-cornelius', '/saints/saint-cornelius.jpg', 1, TRUE, 'subject'),
('saint-cornelius', '/saints/saint-cornelius_2.jpg', 2, FALSE, 'subject'),
('saint-cornelius', '/saints/saint-cornelius_mosaic.jpg', 3, FALSE, 'subject'),
('saint-cornelius', '/saints/saint-cornelius_3.jpg', 4, FALSE, 'subject'),
('saint-cornelius', '/saints/saint-anthony-abbot-&-cornelius-&-cyprian_veronese.jpg', 5, FALSE, 'subject'),

-- Saint Cyprian
('saint-cyprian', '/saints/saint-cyprian.jpg', 1, TRUE, 'subject'),
('saint-cyprian', '/saints/saint-cyprian_2.jpg', 2, FALSE, 'subject'),
('saint-cyprian', '/saints/saint-anthony-abbot-&-cornelius-&-cyprian_veronese.jpg', 3, FALSE, 'subject'),

-- Saint Robert Bellarmine
('saint-robert-bellarmine', '/saints/saint-robert-bellarmine.jpg', 1, TRUE, 'subject'),
('saint-robert-bellarmine', '/saints/saint-robert-bellarmine_2.png', 2, FALSE, 'subject'),

-- Saint Hildegard of Bingen
('saint-hildegard-of-bingen', '/saints/saint-hildegard-of-bingen.jpg', 1, TRUE, 'subject'),
('saint-hildegard-of-bingen', '/saints/saint-hildegard-of-bingen_2.jpg', 2, FALSE, 'subject'),
('saint-hildegard-of-bingen', '/saints/saint-hildegard-of-bingen_3.webp', 3, FALSE, 'subject'),
('saint-hildegard-of-bingen', '/saints/saint-hildegard-of-bingen_casparo.jpg', 4, FALSE, 'subject'),

-- Saint Januarius
('saint-januarius', '/saints/saint-januarius_caravaggio.jpg', 1, TRUE, 'subject'),
('saint-januarius', '/saints/saint-januarius_vaccaro.jpg', 2, FALSE, 'subject'),
('saint-januarius', '/saints/saint-januarius_solimena.jpg', 3, FALSE, 'subject'),
('saint-januarius', '/saints/saint-januarius_solimena_miracle.jpg', 4, FALSE, 'subject'),
('saint-januarius', '/saints/saint-januarius_solimena_prison.jpg', 5, FALSE, 'subject'),
('saint-januarius', '/saints/saint-januarius_gentileschi_martyr.jpg', 6, FALSE, 'subject'),

-- Saint Andrew Kim Tae-gon
('saint-andrew-kim-tae-gon', '/saints/saint-andrew-kim-tae-gon.jpg', 1, TRUE, 'subject'),
('saint-andrew-kim-tae-gon', '/saints/saint-andrew-kim-tae-gon-&-companions.jpg', 2, FALSE, 'subject'),

-- Saint Paul Chong Ha-sang
('saint-paul-chong-ha-sang', '/saints/saint-paul-chong-ha-sang_warford_no-watermark.jpg', 1, TRUE, 'subject'),
('saint-paul-chong-ha-sang', '/saints/saint-paul-chong-ha-sang-&-companions.jpg', 2, FALSE, 'subject'),
('saint-paul-chong-ha-sang', '/saints/saint-andrew-kim-tae-gon-&-companions.jpg', 3, FALSE, 'subject'),

-- Saint Matthew, Apostle and Evangelist
('saint-matthew', '/saints/saint-matthew_rubens.jpg', 1, TRUE, 'subject'),
('saint-matthew', '/saints/saint-matthew_dyck.jpg', 2, FALSE, 'subject'),
('saint-matthew', '/saints/saint-matthew_rembrandt.jpg', 3, FALSE, 'subject'),
('saint-matthew', '/saints/saint-matthew_caravaggio.jpg', 4, FALSE, 'subject'),
('saint-matthew', '/saints/saint-matthew_caravaggio_calling.jpg', 5, FALSE, 'subject'),
('saint-matthew', '/saints/saint-matthew_caravaggio_martyr.jpg', 6, FALSE, 'subject'),
('saint-matthew', '/saints/saint-matthew_hals.jpg', 7, FALSE, 'subject'),
('saint-matthew', '/saints/saint-matthew_reni.jpg', 8, FALSE, 'subject'),
('saint-matthew', '/saints/saint-matthew_zurbaran.jpg', 9, FALSE, 'subject'),

-- Saint Pius of Pietrelcina
('saint-pius-of-pietrelcina', '/saints/saint-pius-of-pietrelcina_2.jpg', 1, TRUE, 'subject'),
('saint-pius-of-pietrelcina', '/saints/saint-pius-of-pietrelcina_dughetti.jpg', 2, FALSE, 'subject'),
('saint-pius-of-pietrelcina', '/saints/saint-pius-of-pietrelcina.jpg', 3, FALSE, 'subject'),
('saint-pius-of-pietrelcina', '/saints/saint-pius-of-pietrelcina_3_no-watermark.jpg', 4, FALSE, 'subject'),

-- Saint Cosmas
('saint-cosmas', '/saints/saint-cosmas-&-damian.jpg', 1, TRUE, 'subject'),
('saint-cosmas', '/saints/saint-cosmas-&-damian_2.jpg', 2, FALSE, 'subject'),
('saint-cosmas', '/saints/saint-cosmas-&-damian_3.jpg', 3, FALSE, 'subject'),
('saint-cosmas', '/saints/saint-cosmas-&-damian_4.jpg', 4, FALSE, 'subject'),

-- Saint Damian
('saint-damian', '/saints/saint-cosmas-&-damian.jpg', 1, TRUE, 'subject'),
('saint-damian', '/saints/saint-cosmas-&-damian_2.jpg', 2, FALSE, 'subject'),
('saint-damian', '/saints/saint-cosmas-&-damian_3.jpg', 3, FALSE, 'subject'),
('saint-damian', '/saints/saint-cosmas-&-damian_4.jpg', 4, FALSE, 'subject'),

-- Saint Vincent de Paul
('saint-vincent-de-paul', '/saints/saint-vincent-de-paul_gerome.webp', 1, TRUE, 'subject'),
('saint-vincent-de-paul', '/saints/saint-vincent-de-paul_delaroche.jpg', 2, FALSE, 'subject'),
('saint-vincent-de-paul', '/saints/saint-vincent-de-paul_tours.png', 3, FALSE, 'subject'),

-- Saint Wenceslaus
('saint-wenceslaus', '/saints/saint-wenceslaus_caroselli.jpg', 1, TRUE, 'subject'),
('saint-wenceslaus', '/saints/saint-wenceslaus_skreta.jpg', 2, FALSE, 'subject'),
('saint-wenceslaus', '/saints/saint-wenceslaus_tkadlik.jpg', 3, FALSE, 'subject'),

-- Saint Lawrence Ruiz
('saint-lawrence-ruiz', '/saints/saint-lawrence-ruiz_warford_no-watermark.jpg', 1, TRUE, 'subject'),
('saint-lawrence-ruiz', '/saints/saint-lawrence-ruiz_stained-glass.jpg', 2, FALSE, 'subject'),
('saint-lawrence-ruiz', '/saints/saint-lawrence-ruiz-&-companions.jpg', 3, FALSE, 'subject'),

-- Saint Jerome
('saint-jerome', '/saints/saint-jerome_ribera.jpg', 1, TRUE, 'subject'),
('saint-jerome', '/saints/saint-jerome_vanni.jpg', 2, FALSE, 'subject'),
('saint-jerome', '/saints/saint-jerome_dyck.jpg', 3, FALSE, 'subject'),
('saint-jerome', '/saints/saint-jerome_caravaggio.jpg', 4, FALSE, 'subject'),
('saint-jerome', '/saints/saint-jerome_brugghen.jpg', 5, FALSE, 'subject'),
('saint-jerome', '/saints/saint-jerome_durer.jpg', 6, FALSE, 'subject'),
('saint-jerome', '/saints/saint-jerome_vouet.jpg', 7, FALSE, 'subject'),
('saint-jerome', '/saints/saint-jerome_barocci.jpg', 8, FALSE, 'subject'),
('saint-jerome', '/saints/saint-jerome_goya.jpg', 9, FALSE, 'subject'),

-- =========================
-- October Saints
-- =========================

-- Saint Thérèse of the Child Jesus
('saint-therese-of-the-child-jesus', '/saints/saint-therese-of-the-child-jesus_wingate.jpg', 1, TRUE, 'subject'),
('saint-therese-of-the-child-jesus', '/saints/saint-therese-of-the-child-jesus_celine.jpg', 2, FALSE, 'subject'),
('saint-therese-of-the-child-jesus', '/saints/saint-therese-of-the-child-jesus_celine_photo.jpg', 3, FALSE, 'subject'),
('saint-therese-of-the-child-jesus', '/saints/saint-therese-of-the-child-jesus_celine_photo_2.jpg', 4, FALSE, 'subject'),
('saint-therese-of-the-child-jesus', '/saints/saint-therese-of-the-child-jesus_celine_photo_3.jpg', 5, FALSE, 'subject'),
('saint-therese-of-the-child-jesus', '/saints/saint-therese-of-the-child-jesus.jpg', 6, FALSE, 'subject'),

-- Saint Francis of Assisi
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_caravaggio.jpg', 1, TRUE, 'subject'),
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_zurbaran.jpg', 2, FALSE, 'subject'),
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_fruytiers.jpg', 3, FALSE, 'subject'),
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_murillo.jpg', 4, FALSE, 'subject'),
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_ribera.jpg', 5, FALSE, 'subject'),
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_tiepolo.jpg', 6, FALSE, 'subject'),
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_murillo_2.jpg', 7, FALSE, 'subject'),
('saint-francis-of-assisi', '/saints/saint-francis-of-assisi_schut.jpg', 8, FALSE, 'subject'),

-- Saint Faustina Kowalska
('saint-faustina-kowalska', '/saints/saint-faustina-kowalska.jpg', 1, TRUE, 'subject'),
('saint-faustina-kowalska', '/saints/saint-faustina-kowalska_2.jpg', 2, FALSE, 'subject'),
('saint-faustina-kowalska', '/saints/saint-faustina-kowalska_photo.jpg', 3, FALSE, 'subject'),
('saint-faustina-kowalska', '/saints/saint-faustina-kowalska_3.jpg', 4, FALSE, 'subject'),

-- Saint Bruno
('saint-bruno', '/saints/saint-bruno_rosa.jpg', 1, TRUE, 'subject'),
('saint-bruno', '/saints/saint-bruno_marchesi.jpg', 2, FALSE, 'subject'),
('saint-bruno', '/saints/saint-bruno_mignard.jpg', 3, FALSE, 'subject'),
('saint-bruno', '/saints/saint-bruno_lesueur.jpg', 4, FALSE, 'subject'),

-- Saint Denis
('saint-denis', '/saints/saint-denis.jpg', 1, TRUE, 'subject'),
('saint-denis', '/saints/saint-denis_vien.jpg', 2, FALSE, 'subject'),
('saint-denis', '/saints/saint-denis-&-companions_bourdichon.jpg', 3, FALSE, 'subject'),
('saint-denis', '/saints/saint-denis-&-companions_bonnat_martyr.jpg', 4, FALSE, 'subject'),

-- Saint John Leonardi
('saint-john-leonardi', '/saints/saint-john-leonardi.jpg', 1, TRUE, 'subject'),
('saint-john-leonardi', '/saints/saint-john-leonardi_2.jpg', 2, FALSE, 'subject'),
('saint-john-leonardi', '/saints/saint-john-leonardi_3.webp', 3, FALSE, 'subject'),
('saint-john-leonardi', '/saints/saint-john-leonardi_4.jpg', 4, FALSE, 'subject'),

-- Saint John Henry Newman
('saint-john-henry-newman', '/saints/saint-john-henry-newman_millais.jpg', 1, TRUE, 'subject'),
('saint-john-henry-newman', '/saints/saint-john-henry-newman_photo.gif', 2, FALSE, 'subject'),
('saint-john-henry-newman', '/saints/saint-john-henry-newman.jpg', 3, FALSE, 'subject'),

-- Saint John XXIII
('saint-john-xxiii', '/saints/saint-john-xxiii.jpg', 1, TRUE, 'subject'),
('saint-john-xxiii', '/saints/saint-john-xxiii_photo.jpg', 2, FALSE, 'subject'),
('saint-john-xxiii', '/saints/saint-john-xxiii_photo_2.jpg', 3, FALSE, 'subject'),

-- Saint Callistus I
('saint-callistus-i', '/saints/saint-callistus-i.jpg', 1, TRUE, 'subject'),
('saint-callistus-i', '/saints/saint-callistus-i_2.jpg', 2, FALSE, 'subject'),
('saint-callistus-i', '/saints/saint-callistus-i_3.jpg', 3, FALSE, 'subject'),

-- Saint Teresa of Jesus (Teresa of Ávila)
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_cagnacci.jpg', 1, TRUE, 'subject'),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_murillo.jpg', 2, FALSE, 'subject'),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_bazzani.jpg', 3, FALSE, 'subject'),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_balaca.jpg', 4, FALSE, 'subject'),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_rubens.jpg', 5, FALSE, 'subject'),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_rubens_2.jpg', 6, FALSE, 'subject'),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_batoni.jpg', 7, FALSE, 'subject'),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_vien.jpg', 8, FALSE, 'subject'),
('saint-teresa-of-jesus', '/saints/saint-teresa-of-jesus_gerard.jpg', 9, FALSE, 'subject'),

-- Saint Hedwig
('saint-hedwig', '/saints/saint-hedwig.jpg', 1, TRUE, 'subject'),
('saint-hedwig', '/saints/saint-hedwig_2.jpg', 2, FALSE, 'subject'),
('saint-hedwig', '/saints/saint-hedwig_3.jpg', 3, FALSE, 'subject'),
('saint-hedwig', '/saints/saint-hedwig_4.jpg', 4, FALSE, 'subject'),
('saint-hedwig', '/saints/saint-hedwig_5.jpg', 5, FALSE, 'subject'),
('saint-hedwig', '/saints/saint-hedwig_6.jpg', 6, FALSE, 'subject'),

-- Saint Margaret Mary Alacoque
('saint-margaret-mary-alacoque', '/saints/saint-margaret-mary-alacoque.jpg', 1, TRUE, 'subject'),
('saint-margaret-mary-alacoque', '/saints/saint-margaret-mary-alacoque_2.jpg', 2, FALSE, 'subject'),
('saint-margaret-mary-alacoque', '/saints/saint-margaret-mary-alacoque_3.jpg', 3, FALSE, 'subject'),

-- Saint Ignatius of Antioch, Bishop and Martyr
('saint-ignatius-antioch', '/saints/saint-ignatius-antioch.jpg', 1, TRUE, 'subject'),
('saint-ignatius-antioch', '/saints/saint-ignatius-antioch_2.jpg', 2, FALSE, 'subject'),
('saint-ignatius-antioch', '/saints/saint-ignatius-antioch_3.jpg', 3, FALSE, 'subject'),

-- Saint Luke, Evangelist
('saint-luke', '/saints/saint-luke_reni.jpg', 1, TRUE, 'subject'),
('saint-luke', '/saints/saint-luke_borovikovsky.jpg', 2, FALSE, 'subject'),
('saint-luke', '/saints/saint-luke_hals.jpg', 3, FALSE, 'subject'),
('saint-luke', '/saints/saint-luke_weyden.jpg', 4, FALSE, 'subject'),
('saint-luke', '/saints/saint-luke_guercino.jpg', 5, FALSE, 'subject'),

-- Saint John de Brébeuf
('saint-john-de-brebeuf', '/saints/saint-john-de-brebeuf.jpg', 1, TRUE, 'subject'),
('saint-john-de-brebeuf', '/saints/saint-john-de-brebeuf_thwaites.jpg', 2, FALSE, 'subject'),
('saint-john-de-brebeuf', '/saints/saint-john-de-brebeuf-&-companions.png', 3, FALSE, 'subject'),

-- Saint Paul of the Cross
('saint-paul-of-the-cross', '/saints/saint-paul-of-the-cross.jpg', 1, TRUE, 'subject'),
('saint-paul-of-the-cross', '/saints/saint-paul-of-the-cross_2.jpg', 2, FALSE, 'subject'),
('saint-paul-of-the-cross', '/saints/saint-paul-of-the-cross_3.jpg', 3, FALSE, 'subject'),
('saint-paul-of-the-cross', '/saints/saint-paul-of-the-cross_4.jpg', 4, FALSE, 'subject'),

-- Saint John Paul II
('saint-john-paul-ii', '/saints/saint-john-paul-ii_bobnick_no-watermark.jpg', 1, TRUE, 'subject'),
('saint-john-paul-ii', '/saints/saint-john-paul-ii_babailov.jpg', 2, FALSE, 'subject'),
('saint-john-paul-ii', '/saints/saint-john-paul-ii.jpg', 3, FALSE, 'subject'),
('saint-john-paul-ii', '/saints/saint-john-paul-ii_2.jpg', 4, FALSE, 'subject'),
('saint-john-paul-ii', '/saints/saint-john-paul-ii_tsarkova.jpg', 5, FALSE, 'subject'),
('saint-john-paul-ii', '/saints/saint-john-paul-ii_tsarkova_2.jpg', 6, FALSE, 'subject'),

-- Saint John of Capistrano
('saint-john-of-capistrano', '/saints/saint-john-of-capistrano_del-arco.jpg', 1, TRUE, 'subject'),
('saint-john-of-capistrano', '/saints/saint-john-of-capistrano_grassi.jpg', 2, FALSE, 'subject'),
('saint-john-of-capistrano', '/saints/saint-john-of-capistrano.jpg', 3, FALSE, 'subject'),

-- Saint Anthony Mary Claret, Bishop
('saint-anthony-mary-claret', '/saints/saint-anthony-mary-claret.jpg', 1, TRUE, 'subject'),
('saint-anthony-mary-claret', '/saints/saint-anthony-mary-claret_madrazo.jpg', 2, FALSE, 'subject'),
('saint-anthony-mary-claret', '/saints/saint-anthony-mary-claret_pujadas.jpg', 3, FALSE, 'subject'),

-- Saint Simon, Apostle
('saint-simon-apostle', '/saints/saint-simon-apostle_rubens.jpg', 1, TRUE, 'subject'),
('saint-simon-apostle', '/saints/saint-simon-apostle_dyck.jpg', 2, FALSE, 'subject'),
('saint-simon-apostle', '/saints/saint-simon-apostle_dyck_2.jpg', 3, FALSE, 'subject'),
('saint-simon-apostle', '/saints/saint-simon-apostle_rembrandt.jpg', 4, FALSE, 'subject'),
('saint-simon-apostle', '/saints/saint-simon-apostle_ribera.jpg', 5, FALSE, 'subject'),
('saint-simon-apostle', '/saints/saint-simon-apostle_zurbaran.jpg', 6, FALSE, 'subject'),
('saint-simon-apostle', '/saints/saint-simon-apostle-&-jude-apostle_schmidt_martyr.jpg', 7, FALSE, 'subject'),

-- Saint Jude, Apostle
('saint-jude-apostle', '/saints/saint-jude-apostle_dyck.jpg', 1, TRUE, 'subject'),
('saint-jude-apostle', '/saints/saint-jude-apostle_dyck_2.jpg', 2, FALSE, 'subject'),
('saint-jude-apostle', '/saints/saint-jude-apostle_ribera.jpg', 3, FALSE, 'subject'),
('saint-jude-apostle', '/saints/saint-jude-apostle_la-tour.jpg', 4, FALSE, 'subject'),
('saint-jude-apostle', '/saints/saint-jude-apostle_zurbaran.jpg', 5, FALSE, 'subject'),
('saint-jude-apostle', '/saints/saint-simon-apostle-&-jude-apostle_schmidt_martyr.jpg', 6, FALSE, 'subject'),

-- =========================
-- November Saints
-- =========================

-- Saint Martin de Porres
('saint-martin-de-porres', '/saints/saint-martin-de-porres_briggs.jpg', 1, TRUE, 'subject'),
('saint-martin-de-porres', '/saints/saint-martin-de-porres.jpg', 2, FALSE, 'subject'),
('saint-martin-de-porres', '/saints/saint-martin-de-porres_warford.jpg', 3, FALSE, 'subject'),
('saint-martin-de-porres', '/saints/saint-martin-de-porres_2.jpg', 4, FALSE, 'subject'),

-- Saint Charles Borromeo
('saint-charles-borromeo', '/saints/saint-charles-borromeo_borgianni.jpg', 1, TRUE, 'subject'),
('saint-charles-borromeo', '/saints/saint-charles-borromeo_figino.jpg', 2, FALSE, 'subject'),
('saint-charles-borromeo', '/saints/saint-charles-borromeo_tiepolo.jpg', 3, FALSE, 'subject'),
('saint-charles-borromeo', '/saints/saint-charles-borromeo_gherardi.jpg', 4, FALSE, 'subject'),
('saint-charles-borromeo', '/saints/saint-charles-borromeo_borgianni_2.jpg', 5, FALSE, 'subject'),

-- Saint Leo the Great
('saint-leo-the-great', '/saints/saint-leo-the-great_el-mozo.jpg', 1, TRUE, 'subject'),
('saint-leo-the-great', '/saints/saint-leo-the-great.webp', 2, FALSE, 'subject'),
('saint-leo-the-great', '/saints/saint-leo-the-great_2.jpg', 3, FALSE, 'subject'),

-- Saint Martin of Tours
('saint-martin-of-tours', '/saints/saint-martin-of-tours_martini.jpg', 1, TRUE, 'subject'),
('saint-martin-of-tours', '/saints/saint-martin-of-tours_dyck.jpg', 2, FALSE, 'subject'),
('saint-martin-of-tours', '/saints/saint-martin-of-tours_maes.jpg', 3, FALSE, 'subject'),
('saint-martin-of-tours', '/saints/saint-martin-of-tours.jpg', 4, FALSE, 'subject'),

-- Saint Josaphat, Bishop and Martyr
('saint-josaphat', '/saints/saint-josaphat_azovskyj.jpg', 1, TRUE, 'subject'),
('saint-josaphat', '/saints/saint-josaphat_simmler_martyr.jpg', 2, FALSE, 'subject'),
('saint-josaphat', '/saints/saint-josaphat_icon.jpg', 3, FALSE, 'subject'),

-- Saint Albert the Great
('saint-albert-the-great', '/saints/saint-albert-the-great_gomez.jpg', 1, TRUE, 'subject'),
('saint-albert-the-great', '/saints/saint-albert-the-great.jpg', 2, FALSE, 'subject'),
('saint-albert-the-great', '/saints/saint-albert-the-great-&-thomas-aquinas.jpg', 3, FALSE, 'subject'),

-- Saint Margaret of Scotland
('saint-margaret-of-scotland', '/saints/saint-margaret-of-scotland_largillierre.jpg', 1, TRUE, 'subject'),
('saint-margaret-of-scotland', '/saints/saint-margaret-of-scotland_hole.jpg', 2, FALSE, 'subject'),
('saint-margaret-of-scotland', '/saints/saint-margaret-of-scotland.jpg', 3, FALSE, 'subject'),

-- Saint Gertrude
('saint-gertrude', '/saints/saint-gertrude_cabrera.jpg', 1, TRUE, 'subject'),
('saint-gertrude', '/saints/saint-gertrude.jpg', 2, FALSE, 'subject'),
('saint-gertrude', '/saints/saint-gertrude_2.jpg', 3, FALSE, 'subject'),

-- Saint Elizabeth of Hungary
('saint-elizabeth-of-hungary', '/saints/saint-elizabeth-of-hungary_martini.jpg', 1, TRUE, 'subject'),
('saint-elizabeth-of-hungary', '/saints/saint-elizabeth-of-hungary_leighton.jpg', 2, FALSE, 'subject'),
('saint-elizabeth-of-hungary', '/saints/saint-elizabeth-of-hungary_collins.webp', 3, FALSE, 'subject'),
('saint-elizabeth-of-hungary', '/saints/saint-elizabeth-of-hungary_stokes.jpg', 4, FALSE, 'subject'),

-- Saint Cecilia
('saint-cecilia', '/saints/saint-cecilia_reni.jpg', 1, TRUE, 'subject'),
('saint-cecilia', '/saints/saint-cecilia_guercino.jpg', 2, FALSE, 'subject'),
('saint-cecilia', '/saints/saint-cecilia_paelinck-horgnies.jpg', 3, FALSE, 'subject'),
('saint-cecilia', '/saints/saint-cecilia_gentileschi-&-lanfranco.jpg', 4, FALSE, 'subject'),
('saint-cecilia', '/saints/saint-cecilia_raphael.jpg', 5, FALSE, 'subject'),
('saint-cecilia', '/saints/saint-cecilia_saraceni_martyr.jpg', 6, FALSE, 'subject'),
('saint-cecilia', '/saints/saint-cecilia_madrazo.jpg', 7, FALSE, 'subject'),

-- Saint Clement I
('saint-clement-i', '/saints/saint-clement-i_fresco.jpg', 1, TRUE, 'subject'),
('saint-clement-i', '/saints/saint-clement-i.jpg', 2, FALSE, 'subject'),
('saint-clement-i', '/saints/saint-clement-i_mosaic.jpg', 3, FALSE, 'subject'),
('saint-clement-i', '/saints/saint-clement-i_tiepolo.jpg', 4, FALSE, 'subject'),
('saint-clement-i', '/saints/saint-clement-i_montor.jpg', 5, FALSE, 'subject'),

-- Saint Columban, Abbot
('saint-columban', '/saints/saint-columban.jpg', 1, TRUE, 'subject'),
('saint-columban', '/saints/saint-columban_stained-glass.jpg', 2, FALSE, 'subject'),

-- Saint Andrew Dung-Lac
('saint-andrew-dung-lac', '/saints/saint-andrew-dung-lac_stained-glass.jpg', 1, TRUE, 'subject'),
('saint-andrew-dung-lac', '/saints/saint-andrew-dung-lac-&-companions.jpg', 2, FALSE, 'subject'),
('saint-andrew-dung-lac', '/saints/saint-andrew-dung-lac_warford.jpg', 3, FALSE, 'subject'),

-- Saint Catherine of Alexandria
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_caravaggio.jpg', 1, TRUE, 'subject'),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_raphael.jpg', 2, FALSE, 'subject'),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_crivelli.jpg', 3, FALSE, 'subject'),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_murillo.jpg', 4, FALSE, 'subject'),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_guinet.jpg', 5, FALSE, 'subject'),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_gentileschi.jpg', 6, FALSE, 'subject'),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_gentileschi_2.jpg', 7, FALSE, 'subject'),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_farinati_martyr.jpg', 8, FALSE, 'subject'),
('saint-catherine-of-alexandria', '/saints/saint-catherine-of-alexandria_lehmann.jpg', 9, FALSE, 'subject'),

-- Saint Andrew, Apostle
('saint-andrew-apostle', '/saints/saint-andrew-apostle_rubens.jpg', 1, TRUE, 'subject'),
('saint-andrew-apostle', '/saints/saint-andrew-apostle_dyck.jpg', 2, FALSE, 'subject'),
('saint-andrew-apostle', '/saints/saint-andrew-apostle_ribera.jpg', 3, FALSE, 'subject'),
('saint-andrew-apostle', '/saints/saint-andrew-apostle_tournier.jpg', 4, FALSE, 'subject'),
('saint-andrew-apostle', '/saints/saint-andrew-apostle_zurbaran.jpg', 5, FALSE, 'subject'),
('saint-andrew-apostle', '/saints/saint-andrew-apostle_loo.jpg', 6, FALSE, 'subject'),
('saint-andrew-apostle', '/saints/saint-andrew-apostle_murillo_martyr.jpg', 7, FALSE, 'subject'),

-- =========================
-- December Saints
-- =========================

-- Saint Francis Xavier
('saint-francis-xavier', '/saints/saint-francis-xavier_murillo.jpg', 1, TRUE, 'subject'),
('saint-francis-xavier', '/saints/saint-francis-xavier_dyck.jpg', 2, FALSE, 'subject'),
('saint-francis-xavier', '/saints/saint-francis-xavier_rubens.jpg', 3, FALSE, 'subject'),
('saint-francis-xavier', '/saints/saint-francis-xavier_poussin.jpg', 4, FALSE, 'subject'),

-- Saint John Damascene
('saint-john-damascene', '/saints/saint-john-damascene.jpg', 1, TRUE, 'subject'),
('saint-john-damascene', '/saints/saint-john-damascene_homsi.gif', 2, FALSE, 'subject'),
('saint-john-damascene', '/saints/saint-john-damascene_2.jpg', 3, FALSE, 'subject'),
('saint-john-damascene', '/saints/saint-john-damascene_3.jpg', 4, FALSE, 'subject'),

-- Saint Nicholas
('saint-nicholas', '/saints/saint-nicholas_cermak.jpg', 1, TRUE, 'subject'),
('saint-nicholas', '/saints/saint-nicholas_moretto.jpg', 2, FALSE, 'subject'),
('saint-nicholas', '/saints/saint-nicholas_bourdichon.jpg', 3, FALSE, 'subject'),
('saint-nicholas', '/saints/saint-nicholas_icon.jpg', 4, FALSE, 'subject'),
('saint-nicholas', '/saints/saint-nicholas_titian.jpg', 5, FALSE, 'subject'),
('saint-nicholas', '/saints/saint-nicholas_repin.jpg', 6, FALSE, 'subject'),
('saint-nicholas', '/saints/saint-nicholas_domenichino_grottaferrata.jpg', 7, FALSE, 'subject'),
('saint-nicholas', '/saints/saint-nicholas_giordano.jpg', 8, FALSE, 'subject'),

-- Saint Ambrose
('saint-ambrose', '/saints/saint-ambrose_goya.jpg', 1, TRUE, 'subject'),
('saint-ambrose', '/saints/saint-ambrose_vignon.jpg', 2, FALSE, 'subject'),
('saint-ambrose', '/saints/saint-ambrose_dyck.jpg', 3, FALSE, 'subject'),
('saint-ambrose', '/saints/saint-ambrose_subleyras.jpg', 4, FALSE, 'subject'),
('saint-ambrose', '/saints/saint-ambrose_mosaic.jpg', 5, FALSE, 'subject'),
('saint-ambrose', '/saints/saint-ambrose_mosaic_2.jpg', 6, FALSE, 'subject'),

-- Saint Juan Diego Cuauhtlatoatzin
('saint-juan-diego-cuauhtlatoatzin', '/saints/saint-juan-diego-cuauhtlatoatzin_berzosa.jpg', 1, TRUE, 'subject'),
('saint-juan-diego-cuauhtlatoatzin', '/saints/saint-juan-diego-cuauhtlatoatzin_cabrera.jpg', 2, FALSE, 'subject'),
('saint-juan-diego-cuauhtlatoatzin', '/saints/saint-juan-diego-cuauhtlatoatzin_cabrera_2.jpg', 3, FALSE, 'subject'),

-- Saint Damasus I
('saint-damasus-i', '/saints/saint-damasus-i_lithography.jpg', 1, TRUE, 'subject'),
('saint-damasus-i', '/saints/saint-damasus-i_cavalieri.jpg', 2, FALSE, 'subject'),
('saint-damasus-i', '/saints/saint-damasus-i.jpg', 3, FALSE, 'subject'),
('saint-damasus-i', '/saints/saint-damasus-i_engraving.webp', 4, FALSE, 'subject'),
('saint-damasus-i', '/saints/saint-damasus-i_montor.jpg', 5, FALSE, 'subject'),

-- Saint Lucy
('saint-lucy', '/saints/saint-lucy_zurbaran.jpg', 1, TRUE, 'subject'),
('saint-lucy', '/saints/saint-lucy_pirez.jpg', 2, FALSE, 'subject'),
('saint-lucy', '/saints/saint-lucy_garofalo.jpg', 3, FALSE, 'subject'),
('saint-lucy', '/saints/saint-lucy_ricci.jpg', 4, FALSE, 'subject'),
('saint-lucy', '/saints/saint-lucy_caravaggio.jpg', 5, FALSE, 'subject'),

-- Saint John of the Cross
('saint-john-of-the-cross', '/saints/saint-john-of-the-cross_zurbaran.jpg', 1, TRUE, 'subject'),
('saint-john-of-the-cross', '/saints/saint-john-of-the-cross_bunel.jpg', 2, FALSE, 'subject'),
('saint-john-of-the-cross', '/saints/saint-john-of-the-cross.jpg', 3, FALSE, 'subject'),

-- Saint Peter Canisius
('saint-peter-canisius', '/saints/saint-peter-canisius.jpg', 1, TRUE, 'subject'),
('saint-peter-canisius', '/saints/saint-peter-canisius_custos.jpg', 2, FALSE, 'subject'),
('saint-peter-canisius', '/saints/saint-peter-canisius_2.jpg', 3, FALSE, 'subject'),
('saint-peter-canisius', '/saints/saint-peter-canisius_3.jpg', 4, FALSE, 'subject'),

-- Saint John of Kanty
('saint-john-of-kanty', '/saints/saint-john-of-kanty_kuntze.jpg', 1, TRUE, 'subject'),
('saint-john-of-kanty', '/saints/saint-john-of-kanty.jpg', 2, FALSE, 'subject'),
('saint-john-of-kanty', '/saints/saint-john-of-kanty_kotsis.jpg', 3, FALSE, 'subject'),

-- Saint Stephen, the First Martyr
('saint-stephen-martyr', '/saints/saint-stephen-martyr_crivelli.jpg', 1, TRUE, 'subject'),
('saint-stephen-martyr', '/saints/saint-stephen-martyr_champaigne_martyr.jpg', 2, FALSE, 'subject'),
('saint-stephen-martyr', '/saints/saint-stephen-martyr_rubens.jpg', 3, FALSE, 'subject'),
('saint-stephen-martyr', '/saints/saint-stephen-martyr_damaskinos.png', 4, FALSE, 'subject'),
('saint-stephen-martyr', '/saints/saint-stephen-martyr_millais.jpg', 5, FALSE, 'subject'),

-- Saint John, Apostle and Evangelist
('saint-john', '/saints/saint-john_rubens.jpg', 1, TRUE, 'subject'),
('saint-john', '/saints/saint-john_dyck.jpg', 2, FALSE, 'subject'),
('saint-john', '/saints/saint-john_domenichino.jpg', 3, FALSE, 'subject'),
('saint-john', '/saints/saint-john_zurbaran.jpg', 4, FALSE, 'subject'),
('saint-john', '/saints/saint-john_dolci.jpg', 5, FALSE, 'subject'),
('saint-john', '/saints/saint-john_grunewald.jpg', 6, FALSE, 'subject'),
('saint-john', '/saints/saint-john_hals.jpg', 7, FALSE, 'subject'),
('saint-john', '/saints/saint-john_bosch.jpg', 8, FALSE, 'subject'),

-- The Holy Innocents, Martyrs
('holy-innocents', '/saints/holy-innocents_rubens.jpg', 1, TRUE, 'subject'),
('holy-innocents', '/saints/holy-innocents_reni.jpg', 2, FALSE, 'subject'),
('holy-innocents', '/saints/holy-innocents_cogniet.jpg', 3, FALSE, 'subject'),
('holy-innocents', '/saints/holy-innocents_rubens_2.jpg', 4, FALSE, 'subject'),
('holy-innocents', '/saints/holy-innocents_briggs.jpg', 5, FALSE, 'subject'),

-- Saint Thomas Becket
('saint-thomas-becket', '/saints/saint-thomas-becket.jpg', 1, TRUE, 'subject'),
('saint-thomas-becket', '/saints/saint-thomas-becket_francke.jpg', 2, FALSE, 'subject'),
('saint-thomas-becket', '/saints/saint-thomas-becket_2.jpg', 3, FALSE, 'subject'),
('saint-thomas-becket', '/saints/saint-thomas-becket_stained-glass.jpg', 4, FALSE, 'subject'),

-- Saint Sylvester I
('saint-sylvester-i', '/saints/saint-sylvester-i.jpg', 1, TRUE, 'subject'),
('saint-sylvester-i', '/saints/saint-sylvester-i_2.jpg', 2, FALSE, 'subject'),
('saint-sylvester-i', '/saints/saint-sylvester-i_icon.jpg', 3, FALSE, 'subject')


	) AS x(
    saint_slug,
    image_url,
    sort_order,
    is_primary,
    subject_role
)
ON s.slug = x.saint_slug
JOIN images i
    ON i.image_url = x.image_url
ON CONFLICT (saint_id, image_id) DO NOTHING;

COMMIT;
