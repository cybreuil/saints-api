BEGIN;

-- =========================================================
-- Roman General Calendar - FEAST <-> SAINT links (full year)
-- =========================================================
-- Assumes:
-- - table feast_saints(feast_id, saint_id, role, ord)
-- - unique constraint on (feast_id, saint_id)
--
-- Feasts with no saint link (intentionally omitted):
-- - Christological feasts (Epiphany, Baptism, Transfiguration,
--   Exaltation of the Cross, Christ the King, Christmas, Easter, etc.)
-- - Temporal / liturgical feasts (Ash Wednesday, Palm Sunday, Triduum, etc.)
-- - Dedication feasts (Lateran, Saint Mary Major, Saints Peter and Paul)
-- - Collective feasts without individual slugs
--   (All Saints, Faithful Departed, Guardian Angels, Seven Founders of Servites)
-- =========================================================

INSERT INTO feast_saints (feast_id, saint_id, role)
SELECT f.id, s.id, x.role
FROM (VALUES

  -- =========================================================
  -- JANUARY
  -- =========================================================

  -- Jan 1 – Solemnity of Mary, Holy Mother of God
  ('solemnity-of-mary-the-holy-mother-of-god', 'saint-mary', 'primary'),

  -- Jan 2 – Saints Basil the Great and Gregory Nazianzen
  ('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'saint-basil-the-great', 'primary'),
  ('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'saint-gregory-nazianzen', 'primary'),

  -- Jan 7 – Saint Raymond of Penyafort
  ('saint-raymond-of-penyafort-priest', 'saint-raymond-of-penyafort', 'primary'),

  -- Jan 13 – Saint Hilary
  ('saint-hilary-bishop-and-doctor-of-the-church', 'saint-hilary-of-poitiers', 'primary'),

  -- Jan 17 – Saint Anthony, Abbot
  ('saint-anthony-abbot', 'saint-anthony-abbot', 'primary'),

  -- Jan 20 – Saint Fabian
  ('saint-fabian-pope-and-martyr', 'saint-fabian-pope', 'primary'),

  -- Jan 20 – Saint Sebastian
  ('saint-sebastian-martyr', 'saint-sebastian', 'primary'),

  -- Jan 21 – Saint Agnes
  ('saint-agnes-virgin-and-martyr', 'saint-agnes-of-rome', 'primary'),

  -- Jan 22 – Saint Vincent of Saragossa
  ('saint-vincent-deacon-and-martyr', 'saint-vincent-of-saragossa', 'primary'),

  -- Jan 24 – Saint Francis de Sales
  ('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'saint-francis-de-sales', 'primary'),

  -- Jan 25 – Conversion of Saint Paul
  ('the-conversion-of-saint-paul-the-apostle', 'saint-paul-apostle', 'primary'),

  -- Jan 26 – Saints Timothy and Titus
  ('saints-timothy-and-titus-bishops', 'saint-timothy-of-ephesus', 'primary'),
  ('saints-timothy-and-titus-bishops', 'saint-titus-of-crete', 'primary'),

  -- Jan 27 – Saint Angela Merici
  ('saint-angela-merici-virgin', 'saint-angela-merici', 'primary'),

  -- Jan 28 – Saint Thomas Aquinas
  ('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'saint-thomas-aquinas', 'primary'),

  -- Jan 31 – Saint John Bosco
  ('saint-john-bosco-priest', 'saint-john-bosco', 'primary'),

  -- =========================================================
  -- FEBRUARY
  -- =========================================================

  -- Feb 3 – Saint Blaise
  ('saint-blaise-bishop-and-martyr', 'saint-blaise', 'primary'),

  -- Feb 3 – Saint Ansgar
  ('saint-ansgar-bishop', 'saint-ansgar', 'primary'),

  -- Feb 5 – Saint Agatha
  ('saint-agatha-virgin-and-martyr', 'saint-agatha', 'primary'),

  -- Feb 6 – Saints Paul Miki and Companions
  ('saints-paul-miki-and-companions-martyrs', 'saint-paul-miki', 'primary'),

  -- Feb 8 – Saint Jerome Emiliani
  ('saint-jerome-emiliani-priest', 'saint-jerome-emiliani', 'primary'),

  -- Feb 8 – Saint Josephine Bakhita
  ('saint-josephine-bakhita-virgin', 'saint-josephine-bakhita', 'primary'),

  -- Feb 10 – Saint Scholastica
  ('saint-scholastica-virgin', 'saint-scholastica', 'primary'),

  -- Feb 11 – Our Lady of Lourdes
  ('our-lady-of-lourdes', 'saint-mary', 'primary'),

  -- Feb 14 – Saints Cyril and Methodius
  ('saints-cyril-monk-and-methodius-bishop', 'saint-cyril', 'primary'),
  ('saints-cyril-monk-and-methodius-bishop', 'saint-methodius', 'primary'),

  -- Feb 21 – Saint Peter Damian
  ('saint-peter-damian-bishop-and-doctor-of-the-church', 'saint-peter-damian', 'primary'),

  -- Feb 22 – Chair of Saint Peter
  ('the-chair-of-saint-peter-the-apostle', 'saint-peter-apostle', 'primary'),

  -- Feb 23 – Saint Polycarp
  ('saint-polycarp-bishop-and-martyr', 'saint-polycarp', 'primary'),

  -- Feb 27 – Saint Gregory of Narek
  ('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 'saint-gregory-of-narek', 'primary'),

  -- =========================================================
  -- MARCH
  -- =========================================================

  -- Mar 4 – Saint Casimir
  ('saint-casimir', 'saint-casimir', 'primary'),

  -- Mar 7 – Saints Perpetua and Felicity
  ('saints-perpetua-and-felicity-martyrs', 'saint-perpetua', 'primary'),
  ('saints-perpetua-and-felicity-martyrs', 'saint-felicity', 'primary'),

  -- Mar 8 – Saint John of God
  ('saint-john-of-god-religious', 'saint-john-of-god', 'primary'),

  -- Mar 9 – Saint Frances of Rome
  ('saint-frances-of-rome-religious', 'saint-frances-of-rome', 'primary'),

  -- Mar 17 – Saint Patrick
  ('saint-patrick-bishop', 'saint-patrick', 'primary'),

  -- Mar 18 – Saint Cyril of Jerusalem
  ('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 'saint-cyril-of-jerusalem', 'primary'),

  -- Mar 19 – Saint Joseph, Spouse of the Blessed Virgin Mary
  ('saint-joseph-spouse-of-the-blessed-virgin-mary', 'saint-joseph', 'primary'),

  -- Mar 23 – Saint Turibius of Mongrovejo
  ('saint-turibius-of-mongrovejo-bishop', 'saint-turibius-of-mogrovejo', 'primary'),

  -- =========================================================
  -- APRIL
  -- =========================================================

  -- Apr 2 – Saint Francis of Paola
  ('saint-francis-of-paola-hermit', 'saint-francis-of-paola', 'primary'),

  -- Apr 4 – Saint Isidore
  ('saint-isidore-bishop-and-doctor-of-the-church', 'saint-isidore', 'primary'),

  -- Apr 5 – Saint Vincent Ferrer
  ('saint-vincent-ferrer-priest', 'saint-vincent-ferrer', 'primary'),

  -- Apr 7 – Saint John Baptist de la Salle
  ('saint-john-baptist-de-la-salle-priest', 'saint-john-baptist-de-la-salle', 'primary'),

  -- Apr 11 – Saint Stanislaus
  ('saint-stanislaus-bishop-and-martyr', 'saint-stanislaus', 'primary'),

  -- Apr 13 – Saint Martin I
  ('saint-martin-i-pope-and-martyr', 'saint-martin-i', 'primary'),

  -- Apr 21 – Saint Anselm
  ('saint-anselm-bishop-and-doctor-of-the-church', 'saint-anselm', 'primary'),

  -- Apr 23 – Saint George
  ('saint-george-martyr', 'saint-george', 'primary'),

  -- Apr 23 – Saint Adalbert
  ('saint-adalbert-bishop-and-martyr', 'saint-adalbert', 'primary'),

  -- Apr 24 – Saint Fidelis of Sigmaringen
  ('saint-fidelis-of-sigmaringen-priest-and-martyr', 'saint-fidelis-of-sigmaringen', 'primary'),

  -- Apr 25 – Saint Mark
  ('saint-mark-evangelist', 'saint-mark-evangelist', 'primary'),

  -- Apr 28 – Saint Peter Chanel
  ('saint-peter-chanel-priest-and-martyr', 'saint-peter-chanel', 'primary'),

  -- Apr 28 – Saint Louis Grignion de Montfort
  ('saint-louis-grignon-de-montfort-priest', 'saint-louis-grignion-de-montfort', 'primary'),

  -- Apr 29 – Saint Catherine of Siena
  ('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 'saint-catherine-of-siena', 'primary'),

  -- Apr 30 – Saint Pius V
  ('saint-pius-v-pope', 'saint-pius-v', 'primary'),

  -- =========================================================
  -- MAY
  -- =========================================================

  -- May 1 – Saint Joseph the Worker
  ('saint-joseph-the-worker', 'saint-joseph', 'primary'),

  -- May 2 – Saint Athanasius
  ('saint-athanasius-bishop-and-doctor-of-the-church', 'saint-athanasius', 'primary'),

  -- May 3 – Saints Philip and James
  ('saints-philip-and-james-apostles', 'saint-philip-apostle', 'primary'),
  ('saints-philip-and-james-apostles', 'saint-james-the-less-apostle', 'primary'),

  -- May 10 – Saint John of Ávila
  ('saint-john-of-avila-priest-and-doctor-of-the-church', 'saint-john-of-avila', 'primary'),

  -- May 12 – Saints Nereus and Achilleus
  ('saints-nereus-and-achilleus-martyrs', 'saint-nereus', 'primary'),
  ('saints-nereus-and-achilleus-martyrs', 'saint-achilleus', 'primary'),

  -- May 12 – Saint Pancras
  ('saint-pancras-martyr', 'saint-pancras', 'primary'),

  -- May 13 – Our Lady of Fatima
  ('our-lady-of-fatima', 'saint-mary', 'primary'),

  -- May 14 – Saint Matthias
  ('saint-matthias-apostle', 'saint-matthias-apostle', 'primary'),

  -- May 18 – Saint John I
  ('saint-john-i-pope-and-martyr', 'saint-john-i', 'primary'),

  -- May 20 – Saint Bernardine of Siena
  ('saint-bernardine-of-siena-priest', 'saint-bernardine-of-siena', 'primary'),

  -- May 21 – Saint Christopher Magallanes and Companions
  ('saint-christopher-magallanes-priest-and-companions-martyrs', 'saint-christopher-magallanes', 'primary'),

  -- May 22 – Saint Rita of Cascia
  ('saint-rita-of-cascia-religious', 'saint-rita-of-cascia', 'primary'),

  -- May 25 – Saint Bede the Venerable
  ('saint-bede-the-venerable-priest-and-doctor-of-the-church', 'saint-bede-the-venerable', 'primary'),

  -- May 25 – Saint Gregory VII
  ('saint-gregory-vii-pope', 'saint-gregory-vii', 'primary'),

  -- May 25 – Saint Mary Magdalene de' Pazzi
  ('saint-mary-magdalene-de-pazzi-virgin', 'saint-mary-magdalene-de-pazzi', 'primary'),

  -- May 26 – Saint Philip Neri
  ('saint-philip-neri-priest', 'saint-philip-neri', 'primary'),

  -- May 27 – Saint Augustine of Canterbury
  ('saint-augustine-of-canterbury-bishop', 'saint-augustine-of-canterbury', 'primary'),

  -- May 29 – Saint Paul VI
  ('saint-paul-vi-pope', 'saint-paul-vi', 'primary'),

  -- May 31 – Visitation of the Blessed Virgin Mary
  ('the-visitation-of-the-blessed-virgin-mary', 'saint-mary', 'primary'),

  -- =========================================================
  -- JUNE
  -- =========================================================

  -- Jun 1 – Saint Justin
  ('saint-justin-martyr', 'saint-justin-martyr', 'primary'),

  -- Jun 2 – Saints Marcellinus and Peter
  ('saints-marcellinus-and-peter-martyrs', 'saint-marcellinus', 'primary'),
  ('saints-marcellinus-and-peter-martyrs', 'saint-peter-exorcist', 'primary'),

  -- Jun 3 – Saint Charles Lwanga and Companions
  ('saints-charles-lwanga-and-companions-martyrs', 'saint-charles-lwanga', 'primary'),

  -- Jun 5 – Saint Boniface
  ('saint-boniface-bishop-and-martyr', 'saint-boniface', 'primary'),

  -- Jun 6 – Saint Norbert
  ('saint-norbert-bishop', 'saint-norbert', 'primary'),

  -- Jun 9 – Saint Ephrem
  ('saint-ephrem-deacon-and-doctor-of-the-church', 'saint-ephrem', 'primary'),

  -- Jun 11 – Saint Barnabas
  ('saint-barnabas-apostle', 'saint-barnabas-apostle', 'primary'),

  -- Jun 13 – Saint Anthony of Padua
  ('saint-anthony-of-padua-priest-and-doctor-of-the-church', 'saint-anthony-of-padua', 'primary'),

  -- Jun 19 – Saint Romuald
  ('saint-romuald-abbot', 'saint-romuald', 'primary'),

  -- Jun 21 – Saint Aloysius Gonzaga
  ('saint-aloysius-gonzaga-religious', 'saint-aloysius-gonzaga', 'primary'),

  -- Jun 22 – Saint Paulinus of Nola
  ('saint-paulinus-of-nola-bishop', 'saint-paulinus-of-nola', 'primary'),

  -- Jun 22 – Saints John Fisher and Thomas More
  ('saints-john-fisher-bishop-and-thomas-more-martyrs', 'saint-john-fisher', 'primary'),
  ('saints-john-fisher-bishop-and-thomas-more-martyrs', 'saint-thomas-more', 'primary'),

  -- Jun 24 – Nativity of Saint John the Baptist
  ('the-nativity-of-saint-john-the-baptist', 'saint-john-the-baptist', 'primary'),

  -- Jun 27 – Saint Cyril of Alexandria
  ('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 'saint-cyril-of-alexandria', 'primary'),

  -- Jun 28 – Saint Irenaeus
  ('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 'saint-irenaeus', 'primary'),

  -- Jun 29 – Saints Peter and Paul
  ('saints-peter-and-paul-apostles', 'saint-peter-apostle', 'primary'),
  ('saints-peter-and-paul-apostles', 'saint-paul-apostle', 'primary'),

  -- =========================================================
  -- JULY
  -- =========================================================

  -- Jul 3 – Saint Thomas
  ('saint-thomas-apostle', 'saint-thomas-apostle', 'primary'),

  -- Jul 4 – Saint Elizabeth of Portugal
  ('saint-elizabeth-of-portugal', 'saint-elizabeth-of-portugal', 'primary'),

  -- Jul 5 – Saint Anthony Zaccaria
  ('saint-anthony-zaccaria-priest', 'saint-anthony-zaccaria', 'primary'),

  -- Jul 6 – Saint Maria Goretti
  ('saint-maria-goretti-virgin-and-martyr', 'saint-maria-goretti', 'primary'),

  -- Jul 9 – Saint Augustine Zhao Rong and Companions
  ('saint-augustine-zhao-rong-priest-and-companions-martyrs', 'saint-augustine-zhao-rong', 'primary'),

  -- Jul 11 – Saint Benedict
  ('saint-benedict-abbot', 'saint-benedict', 'primary'),

  -- Jul 13 – Saint Henry
  ('saint-henry', 'saint-henry', 'primary'),

  -- Jul 14 – Saint Camillus de Lellis
  ('saint-camillus-de-lellis-priest', 'saint-camillus-de-lellis', 'primary'),

  -- Jul 15 – Saint Bonaventure
  ('saint-bonaventure-bishop-and-doctor-of-the-church', 'saint-bonaventure', 'primary'),

  -- Jul 16 – Our Lady of Mount Carmel
  ('our-lady-of-mount-carmel', 'saint-mary', 'primary'),

  -- Jul 20 – Saint Apollinaris
  ('saint-apollinaris-bishop-and-martyr', 'saint-apollinaris', 'primary'),

  -- Jul 21 – Saint Lawrence of Brindisi
  ('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 'saint-lawrence-of-brindisi', 'primary'),

  -- Jul 22 – Saint Mary Magdalene
  ('saint-mary-magdalene', 'saint-mary-magdalene', 'primary'),

  -- Jul 23 – Saint Bridget
  ('saint-bridget-religious', 'saint-bridget', 'primary'),

  -- Jul 24 – Saint Sharbel Makhluf
  ('saint-sharbel-makhluf-priest', 'saint-sharbel-makhluf', 'primary'),

  -- Jul 25 – Saint James
  ('saint-james-apostle', 'saint-james-apostle', 'primary'),

  -- Jul 26 – Saints Joachim and Anne
  ('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 'saint-joachim', 'primary'),
  ('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 'saint-anne', 'primary'),

  -- Jul 29 – Saints Martha, Mary and Lazarus
  ('saints-martha-mary-and-lazarus', 'saint-martha-of-bethany', 'primary'),
  ('saints-martha-mary-and-lazarus', 'saint-mary-of-bethany', 'primary'),
  ('saints-martha-mary-and-lazarus', 'saint-lazarus-of-bethany', 'primary'),

  -- Jul 30 – Saint Peter Chrysologus
  ('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 'saint-peter-chrysologus', 'primary'),

  -- Jul 31 – Saint Ignatius of Loyola
  ('saint-ignatius-of-loyola-priest', 'saint-ignatius-of-loyola', 'primary'),

  -- =========================================================
  -- AUGUST
  -- =========================================================

  -- Aug 1 – Saint Alphonsus Liguori
  ('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 'saint-alphonsus-liguori', 'primary'),

  -- Aug 2 – Saint Eusebius of Vercelli
  ('saint-eusebius-of-vercelli-bishop', 'saint-eusebius-of-vercelli', 'primary'),

  -- Aug 2 – Saint Peter Julian Eymard
  ('saint-peter-julian-eymard-priest', 'saint-peter-julian-eymard', 'primary'),

  -- Aug 4 – Saint Jean Vianney
  ('saint-jean-vianney-priest', 'saint-john-vianney', 'primary'),

  -- Aug 7 – Saint Sixtus II and Companions
  ('saint-sixtus-ii-pope-and-companions-martyrs', 'saint-sixtus-ii-and-companions', 'primary'),

  -- Aug 7 – Saint Cajetan
  ('saint-cajetan-priest', 'saint-cajetan', 'primary'),

  -- Aug 8 – Saint Dominic
  ('saint-dominic-priest', 'saint-dominic', 'primary'),

  -- Aug 9 – Saint Teresa Benedicta of the Cross
  ('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 'saint-teresa-benedicta-of-the-cross', 'primary'),

  -- Aug 10 – Saint Lawrence
  ('saint-lawrence-deacon-and-martyr', 'saint-lawrence', 'primary'),

  -- Aug 11 – Saint Clare
  ('saint-clare-virgin', 'saint-clare', 'primary'),

  -- Aug 12 – Saint Jane Frances de Chantal
  ('saint-jane-frances-de-chantal-religious', 'saint-jane-frances-de-chantal', 'primary'),

  -- Aug 13 – Saints Pontian and Hippolytus
  ('saints-pontian-pope-and-hippolytus-priest-martyrs', 'saint-pontian', 'primary'),
  ('saints-pontian-pope-and-hippolytus-priest-martyrs', 'saint-hippolytus-of-rome', 'primary'),

  -- Aug 13 – Saint Maximus the Confessor
  ('saint-maximus-the-confessor', 'saint-maximus-the-confessor', 'primary'),

  -- Aug 14 – Saint Maximilian Kolbe
  ('saint-maximilian-kolbe-priest-and-martyr', 'saint-maximilian-kolbe', 'primary'),

  -- Aug 15 – Assumption of the Blessed Virgin Mary
  ('the-assumption-of-the-blessed-virgin-mary', 'saint-mary', 'primary'),

  -- Aug 16 – Saint Stephen of Hungary
  ('saint-stephen-of-hungary', 'saint-stephen-of-hungary', 'primary'),

  -- Aug 19 – Saint John Eudes
  ('saint-john-eudes-priest', 'saint-john-eudes', 'primary'),

  -- Aug 20 – Saint Bernard
  ('saint-bernard-abbot-and-doctor-of-the-church', 'saint-bernard', 'primary'),

  -- Aug 21 – Saint Pius X
  ('saint-pius-x-pope', 'saint-pius-x', 'primary'),

  -- Aug 22 – Queenship of the Blessed Virgin Mary
  ('the-queenship-of-the-blessed-virgin-mary', 'saint-mary', 'primary'),

  -- Aug 23 – Saint Rose of Lima
  ('saint-rose-of-lima-virgin', 'saint-rose-of-lima', 'primary'),

  -- Aug 24 – Saint Bartholomew
  ('saint-bartholomew-apostle', 'saint-bartholomew-apostle', 'primary'),

  -- Aug 25 – Saint Louis
  ('saint-louis', 'saint-louis', 'primary'),

  -- Aug 25 – Saint Joseph Calasanz
  ('saint-joseph-calasanz-priest', 'saint-joseph-calasanz', 'primary'),

  -- Aug 27 – Saint Monica
  ('saint-monica', 'saint-monica', 'primary'),

  -- Aug 28 – Saint Augustine of Hippo
  ('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 'saint-augustine-of-hippo', 'primary'),

  -- Aug 29 – Passion of Saint John the Baptist
  ('the-passion-of-saint-john-the-baptist-martyr', 'saint-john-the-baptist', 'primary'),

  -- =========================================================
  -- SEPTEMBER
  -- =========================================================

  -- Sep 3 – Saint Gregory the Great
  ('saint-gregory-the-great-pope-and-doctor-of-the-church', 'saint-gregory-the-great', 'primary'),

  -- Sep 5 – Saint Teresa of Calcutta
  ('saint-teresa-of-calcutta-virgin', 'saint-teresa-of-calcutta', 'primary'),

  -- Sep 8 – Nativity of the Blessed Virgin Mary
  ('the-nativity-of-the-blessed-virgin-mary', 'saint-mary', 'primary'),

  -- Sep 9 – Saint Peter Claver
  ('saint-peter-claver-priest', 'saint-peter-claver', 'primary'),

  -- Sep 12 – Most Holy Name of Mary
  ('the-most-holy-name-of-mary', 'saint-mary', 'primary'),

  -- Sep 13 – Saint John Chrysostom
  ('saint-john-chrysostom-bishop-and-doctor-of-the-church', 'saint-john-chrysostom', 'primary'),

  -- Sep 15 – Our Lady of Sorrows
  ('our-lady-of-sorrows', 'saint-mary', 'primary'),

  -- Sep 16 – Saints Cornelius and Cyprian
  ('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'saint-cornelius', 'primary'),
  ('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'saint-cyprian', 'primary'),

  -- Sep 17 – Saint Robert Bellarmine
  ('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 'saint-robert-bellarmine', 'primary'),

  -- Sep 17 – Saint Hildegard of Bingen
  ('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 'saint-hildegard-of-bingen', 'primary'),

  -- Sep 19 – Saint Januarius
  ('saint-januarius-bishop-and-martyr', 'saint-januarius', 'primary'),

  -- Sep 20 – Saints Andrew Kim Tae-gon, Paul Chong Ha-sang and Companions
  ('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 'saint-andrew-kim-tae-gon', 'primary'),
  ('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 'saint-paul-chong-ha-sang', 'primary'),

  -- Sep 21 – Saint Matthew
  ('saint-matthew-apostle-and-evangelist', 'saint-matthew', 'primary'),

  -- Sep 23 – Saint Pius of Pietrelcina
  ('saint-pius-of-pietrelcina-priest', 'saint-pius-of-pietrelcina', 'primary'),

  -- Sep 26 – Saints Cosmas and Damian
  ('saints-cosmas-and-damian-martyrs', 'saint-cosmas', 'primary'),
  ('saints-cosmas-and-damian-martyrs', 'saint-damian', 'primary'),

  -- Sep 27 – Saint Vincent de Paul
  ('saint-vincent-de-paul-priest', 'saint-vincent-de-paul', 'primary'),

  -- Sep 28 – Saint Wenceslaus
  ('saint-wenceslaus-martyr', 'saint-wenceslaus', 'primary'),

  -- Sep 28 – Saint Lawrence Ruiz and Companions
  ('saint-lawrence-ruiz-and-companions-martyrs', 'saint-lawrence-ruiz', 'primary'),

  -- Sep 30 – Saint Jerome
  ('saint-jerome-priest-and-doctor-of-the-church', 'saint-jerome', 'primary'),

  -- =========================================================
  -- OCTOBER
  -- =========================================================

  -- Oct 1 – Saint Thérèse of the Child Jesus
  ('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 'saint-therese-of-the-child-jesus', 'primary'),

  -- Oct 4 – Saint Francis of Assisi
  ('saint-francis-of-assisi', 'saint-francis-of-assisi', 'primary'),

  -- Oct 5 – Saint Faustina Kowalska
  ('saint-faustina-kowalska-virgin', 'saint-faustina-kowalska', 'primary'),

  -- Oct 6 – Saint Bruno
  ('saint-bruno-priest', 'saint-bruno', 'primary'),

  -- Oct 7 – Our Lady of the Rosary
  ('our-lady-of-the-rosary', 'saint-mary', 'primary'),

  -- Oct 9 – Saint Denis and Companions
  ('saint-denis-bishop-and-companions-martyrs', 'saint-denis', 'primary'),

  -- Oct 9 – Saint John Leonardi
  ('saint-john-leonardi-priest', 'saint-john-leonardi', 'primary'),

  -- Oct 9 – Saint John Henry Newman
  ('saint-john-henry-newman-priest-and-doctor-of-the-church', 'saint-john-henry-newman', 'primary'),

  -- Oct 11 – Saint John XXIII
  ('saint-john-xxiii-pope', 'saint-john-xxiii', 'primary'),

  -- Oct 14 – Saint Callistus I
  ('saint-callistus-i-pope-and-martyr', 'saint-callistus-i', 'primary'),

  -- Oct 15 – Saint Teresa of Jesus
  ('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 'saint-teresa-of-jesus', 'primary'),

  -- Oct 16 – Saint Hedwig
  ('saint-hedwig-religious', 'saint-hedwig', 'primary'),

  -- Oct 16 – Saint Margaret Mary Alacoque
  ('saint-margaret-mary-alacoque-virgin', 'saint-margaret-mary-alacoque', 'primary'),

  -- Oct 17 – Saint Ignatius of Antioch
  ('saint-ignatius-of-antioch-bishop-and-martyr', 'saint-ignatius-of-antioch', 'primary'),

  -- Oct 18 – Saint Luke
  ('saint-luke-evangelist', 'saint-luke', 'primary'),

  -- Oct 19 – Saints John de Brébeuf, Isaac Jogues and Companions
  ('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 'saint-john-de-brebeuf', 'primary'),

  -- Oct 19 – Saint Paul of the Cross
  ('saint-paul-of-the-cross-priest', 'saint-paul-of-the-cross', 'primary'),

  -- Oct 22 – Saint John Paul II
  ('saint-john-paul-ii-pope', 'saint-john-paul-ii', 'primary'),

  -- Oct 23 – Saint John of Capistrano
  ('saint-john-of-capistrano-priest', 'saint-john-of-capistrano', 'primary'),

  -- Oct 24 – Saint Anthony Mary Claret
  ('saint-anthony-mary-claret-bishop', 'saint-anthony-mary-claret', 'primary'),

  -- Oct 28 – Saints Simon and Jude
  ('saints-simon-and-jude-apostles', 'saint-simon-apostle', 'primary'),
  ('saints-simon-and-jude-apostles', 'saint-jude-apostle', 'primary'),

  -- =========================================================
  -- NOVEMBER
  -- =========================================================

  -- Nov 3 – Saint Martin de Porres
  ('saint-martin-de-porres-religious', 'saint-martin-de-porres', 'primary'),

  -- Nov 4 – Saint Charles Borromeo
  ('saint-charles-borromeo-bishop', 'saint-charles-borromeo', 'primary'),

  -- Nov 10 – Saint Leo the Great
  ('saint-leo-the-great-pope-and-doctor-of-the-church', 'saint-leo-the-great', 'primary'),

  -- Nov 11 – Saint Martin of Tours
  ('saint-martin-of-tours-bishop', 'saint-martin-of-tours', 'primary'),

  -- Nov 12 – Saint Josaphat
  ('saint-josaphat-bishop-and-martyr', 'saint-josaphat', 'primary'),

  -- Nov 15 – Saint Albert the Great
  ('saint-albert-the-great-bishop-and-doctor-of-the-church', 'saint-albert-the-great', 'primary'),

  -- Nov 16 – Saint Margaret of Scotland
  ('saint-margaret-of-scotland', 'saint-margaret-of-scotland', 'primary'),

  -- Nov 16 – Saint Gertrude
  ('saint-gertrude-virgin', 'saint-gertrude', 'primary'),

  -- Nov 17 – Saint Elizabeth of Hungary
  ('saint-elizabeth-of-hungary-religious', 'saint-elizabeth-of-hungary', 'primary'),

  -- Nov 21 – Presentation of the Blessed Virgin Mary
  ('the-presentation-of-the-blessed-virgin-mary', 'saint-mary', 'primary'),

  -- Nov 22 – Saint Cecilia
  ('saint-cecilia-virgin-and-martyr', 'saint-cecilia', 'primary'),

  -- Nov 23 – Saint Clement I
  ('saint-clement-i-pope-and-martyr', 'saint-clement-i', 'primary'),

  -- Nov 23 – Saint Columban
  ('saint-columban-abbot', 'saint-columban', 'primary'),

  -- Nov 24 – Saints Andrew Dung-Lac and Companions
  ('saints-andrew-dung-lac-priest-and-companions-martyrs', 'saint-andrew-dung-lac', 'primary'),

  -- Nov 25 – Saint Catherine of Alexandria
  ('saint-catherine-of-alexandria-virgin-and-martyr', 'saint-catherine-of-alexandria', 'primary'),

  -- Nov 30 – Saint Andrew
  ('saint-andrew-apostle', 'saint-andrew-apostle', 'primary'),

  -- =========================================================
  -- DECEMBER
  -- =========================================================

  -- Dec 3 – Saint Francis Xavier
  ('saint-francis-xavier-priest', 'saint-francis-xavier', 'primary'),

  -- Dec 4 – Saint John Damascene
  ('saint-john-damascene-priest-and-doctor-of-the-church', 'saint-john-damascene', 'primary'),

  -- Dec 6 – Saint Nicholas
  ('saint-nicholas-bishop', 'saint-nicholas', 'primary'),

  -- Dec 7 – Saint Ambrose
  ('saint-ambrose-bishop-and-doctor-of-the-church', 'saint-ambrose', 'primary'),

  -- Dec 8 – Immaculate Conception
  ('the-immaculate-conception-of-the-blessed-virgin-mary', 'saint-mary', 'primary'),

  -- Dec 9 – Saint Juan Diego
  ('saint-juan-diego-cuauhtlatoatzin', 'saint-juan-diego-cuauhtlatoatzin', 'primary'),

  -- Dec 10 – Our Lady of Loreto
  ('our-lady-of-loreto', 'saint-mary', 'primary'),

  -- Dec 11 – Saint Damasus I
  ('saint-damasus-i-pope', 'saint-damasus-i', 'primary'),

  -- Dec 12 – Our Lady of Guadalupe
  ('our-lady-of-guadalupe', 'saint-mary', 'primary'),

  -- Dec 13 – Saint Lucy
  ('saint-lucy-virgin-and-martyr', 'saint-lucy', 'primary'),

  -- Dec 14 – Saint John of the Cross
  ('saint-john-of-the-cross-priest-and-doctor-of-the-church', 'saint-john-of-the-cross', 'primary'),

  -- Dec 21 – Saint Peter Canisius
  ('saint-peter-canisius-priest-and-doctor-of-the-church', 'saint-peter-canisius', 'primary'),

  -- Dec 23 – Saint John of Kanty
  ('saint-john-of-kanty-priest', 'saint-john-of-kanty', 'primary'),

  -- Dec 26 – Saint Stephen, the First Martyr
  ('saint-stephen-the-first-martyr', 'saint-stephen-martyr', 'primary'),

  -- Dec 27 – Saint John, Apostle and Evangelist
  ('saint-john-apostle-and-evangelist', 'saint-john', 'primary'),

  -- Dec 28 – The Holy Innocents
  ('the-holy-innocents-martyrs', 'holy-innocents', 'primary'),

  -- Dec 29 – Saint Thomas Becket
  ('saint-thomas-becket-bishop-and-martyr', 'saint-thomas-becket', 'primary'),

  -- Dec 31 – Saint Sylvester I
  ('saint-sylvester-i-pope', 'saint-sylvester-i', 'primary'),

  -- Holy Family (movable – Sunday in the octave of Christmas)
  ('the-holy-family-of-jesus-mary-and-joseph', 'saint-mary', 'primary'),
  ('the-holy-family-of-jesus-mary-and-joseph', 'saint-joseph', 'primary'),

  -- =========================================================
  -- TEMPORAL MOVABLE
  -- =========================================================

  -- Blessed Virgin Mary, Mother of the Church (Monday after Pentecost)
  ('blessed-virgin-mary-mother-of-the-church', 'saint-mary', 'primary'),

  -- Immaculate Heart of the Blessed Virgin Mary (Saturday after Corpus Christi)
  ('the-immaculate-heart-of-the-blessed-virgin-mary', 'saint-mary', 'primary')

) AS x(feast_slug, saint_slug, role)
JOIN feasts f ON f.slug = x.feast_slug
JOIN saints s ON s.slug = x.saint_slug
ON CONFLICT (feast_id, saint_id) DO NOTHING;

COMMIT;
