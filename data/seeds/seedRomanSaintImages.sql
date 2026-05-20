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
	-- Saint Mary
	-- =========================

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

    -- =========================
    -- Saint Joseph
    -- =========================

    ('saint-joseph', '/saints/saint-joseph_guido-reni.jpg', 1, TRUE, 'subject'),
    ('saint-joseph', '/saints/saint-joseph_carracci.jpg', 2, FALSE, 'subject'),
    ('saint-joseph', '/saints/saint-joseph_murillo.jpg', 3, FALSE, 'subject'),
    ('saint-joseph', '/saints/saint-joseph_murillo_holy-family.jpg', 4, FALSE, 'subject'),
    ('saint-joseph', '/saints/saint-joseph_la-tour.jpg', 5, FALSE, 'subject'),
    ('saint-joseph', '/saints/saint-joseph_champaigne.jpg', 6, FALSE, 'subject'),
    ('saint-joseph', '/saints/saint-joseph_briggs.jpg', 7, FALSE, 'subject'),

    -- =========================
    -- Saint John the Baptist
    -- =========================

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

    -- Saint Anthony Abbot
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

    -- Saint Paul Apostle
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
    ('saint-patrick', '/saints/saint-patrick_tiepolo.jpg', 2, TRUE, 'subject'),
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

    -- Saint Philip the Apostle
    ('saint-philip-apostle', '/saints/saint-philip-apostle_rubens.jpg', 1, TRUE, 'subject'),
    ('saint-philip-apostle', '/saints/saint-philip-apostle_la-tour.jpg', 2, FALSE, 'subject'),
    ('saint-philip-apostle', '/saints/saint-philip-apostle_ribera.jpg', 3, FALSE, 'subject'),
    ('saint-philip-apostle', '/saints/saint-philip-apostle_dyck.jpg', 4, FALSE, 'subject'),

    -- Saint James the Less the Apostle
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

    -- Saint Matthias the Apostle
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

	-- Saint Barnabas (Apostle)
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

	-- Saint Peter Apostle
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
	('saint-irenaeus', '/saints/saint-irenaeus_stained-glass.jpg', 2, FALSE, 'subject');

	-- =========================
	-- July saints
	-- =========================

	-- Saint Thomas, Apostle
('saint-thomas-apostle', '/saints/saint-thomas-apostle_rubens.jpg', 1, TRUE, 'subject'),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_dyck.jpg', 2, FALSE, 'subject'),
('saint-thomas-apostle', '/saints/saint-thomas-apostle_velazquez.jpg', 3, FALSE, 'subject'),

-- Saint Elizabeth of Portugal
('saint-elizabeth-of-portugal', '/saints/saint-elizabeth-of-portugal_zurbaran.jpg', 1, TRUE, 'subject'),
('saint-elizabeth-of-portugal', '/saints/saint-elizabeth-of-portugal.jpg', 2, FALSE, 'subject'),
('saint-elizabeth-of-portugal', '/saints/saint-elizabeth-of-portugal_2.jpg', 3, FALSE, 'subject'),

-- Saint Anthony Zaccaria
('saint-anthony-zaccaria', '/saints/saint-anthony-zaccaria.jpg', 1, TRUE, 'subject'),
('saint-anthony-zaccaria', '/saints/saint-anthony-zaccaria_2.jpg', 2, FALSE, 'subject'),
('saint-anthony-zaccaria', '/saints/saint-anthony-zaccaria_3.jpg', 3, FALSE, 'subject'),
('saint-anthony-zaccaria', '/saints/saint-anthony-zaccaria_4.jpg', 4, FALSE, 'subject'),

-- Saint Maria Goretti
('saint-maria-goretti', '/saints/saint-maria-goretti_soffredini.jpg', 1, TRUE, 'subject'),
('saint-maria-goretti', '/saints/saint-maria-goretti_2.jpg', 2, FALSE, 'subject'),

-- Saint Augustine Zhao Rong
('saint-augustine-zhao-rong', '/saints/saint-augustine-zhao-rong_icon.jpg', 1, TRUE, 'subject'),
('saint-augustine-zhao-rong', '/saints/saint-augustine-zhao-rong-&-companions_liu.jpg', 2, FALSE, 'subject'),
('saint-augustine-zhao-rong', '/saints/saint-augustine-zhao-rong_stained-glass.jpg', 3, FALSE, 'subject'),

-- Saint Benedict
('saint-benedict', '/saints/saint-benedict.jpg', 1, TRUE, 'subject'),
('saint-benedict', '/saints/saint-benedict_piazzetta.jpg', 2, FALSE, 'subject'),
('saint-benedict', '/saints/saint-benedict_briggs.jpg', 3, FALSE, 'subject'),
('saint-benedict', '/saints/saint-benedict_zurbaran.jpg', 4, FALSE, 'subject'),
('saint-benedict', '/saints/saint-benedict_2.jpg', 5, FALSE, 'subject'),
('saint-benedict', '/saints/saint-benedict_restout.jpg', 6, FALSE, 'subject'),

-- Saint Henry
('saint-henry', '/saints/saint-henry_baer.jpg', 1, TRUE, 'subject'),
('saint-henry', '/saints/saint-henry.jpg', 2, FALSE, 'subject'),
('saint-henry', '/saints/saint-henry_fuhricht.jpg', 3, FALSE, 'subject'),

-- Saint Camillus de Lellis
('saint-camillus-de-lellis', '/saints/saint-camillus-de-lellis_gandolfi.jpg', 1, TRUE, 'subject'),
('saint-camillus-de-lellis', '/saints/saint-camillus-de-lellis_lozano.jpg', 2, FALSE, 'subject'),
('saint-camillus-de-lellis', '/saints/saint-camillus-de-lellis_subleyras.jpg', 3, FALSE, 'subject'),

-- Saint Bonaventure
('saint-bonaventure', '/saints/saint-bonaventure_cavazzola.jpg', 1, TRUE, 'subject'),
('saint-bonaventure', '/saints/saint-bonaventure_lombard.jpg', 2, FALSE, 'subject'),
('saint-bonaventure', '/saints/saint-bonaventure_rubens.jpg', 3, FALSE, 'subject'),

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

-- Saint Bridget
('saint-bridget', '/saints/saint-bridget.jpg', 1, TRUE, 'subject'),
('saint-bridget', '/saints/saint-bridget_friano.jpg', 2, FALSE, 'subject'),
('saint-bridget', '/saints/saint-bridget_briggs.jpg', 3, FALSE, 'subject'),

-- Saint Sharbel Makhluf
('saint-sharbel-makhluf', '/saints/saint-sharbel-makhluf.jpg', 1, TRUE, 'subject'),
('saint-sharbel-makhluf', '/saints/saint-sharbel-makhluf_2.jpg', 2, FALSE, 'subject'),

-- Saint James, Apostle
('saint-james-apostle', '/saints/saint-james-apostle_rubens.jpg', 1, TRUE, 'subject'),
('saint-james-apostle', '/saints/saint-james-apostle_reni.jpg', 2, FALSE, 'subject'),
('saint-james-apostle', '/saints/saint-james-apostle_dyck.jpg', 3, FALSE, 'subject'),

-- Saint Joachim
('saint-joachim', '/saints/saint-joachim_wautier.jpg', 1, TRUE, 'subject'),
('saint-joachim', '/saints/saint-joachim_gutierrez.jpg', 2, FALSE, 'subject'),

-- Saint Anne
('saint-anne', '/saints/saint-anne-&-mary_coypel.jpg', 1, TRUE, 'subject'),
('saint-anne', '/saints/saint-anne-&-mary_murillo.jpg', 2, FALSE, 'subject'),

-- Saint Martha of Bethany
('saint-martha-of-bethany', '/saints/saint-martha-of-bethany_ring-sakabe.webp', 1, TRUE, 'subject'),
('saint-martha-of-bethany', '/saints/saint-martha-of-bethany_vermeer.jpg', 2, FALSE, 'subject'),

-- Saint Mary of Bethany
('saint-mary-of-bethany', '/saints/saint-mary-of-bethany_ring-sakabe.jpg', 1, TRUE, 'subject'),

-- Saint Lazarus of Bethany
('saint-lazarus-of-bethany', '/saints/saint-lazarus-of-bethany_caravaggio.jpg', 1, TRUE, 'subject'),

-- Saint Peter Chrysologus
('saint-peter-chrysologus', '/saints/saint-peter-chrysologus.jpg', 1, TRUE, 'subject'),

-- Saint Ignatius of Loyola
('saint-ignatius-of-loyola', '/saints/saint-ignatius-of-loyola_rubens.jpg', 1, TRUE, 'subject'),
	) AS x(
    saint_slug,
    image_url,
    sort_order,
    is_primary,
    subject_role
)
ON s.slug = x.saint_slug
JOIN images i
    ON i.image_url = x.image_url;
