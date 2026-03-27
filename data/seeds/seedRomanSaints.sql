BEGIN;

-- ==============
-- JANUARY Saints
-- ==============
INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-basil-the-great', 'Saint Basil the Great',
  330, NULL, NULL, TRUE,
  379, 1, 1, TRUE,
  4,
  (SELECT id FROM places WHERE code='CAESAREA_CAPPADOCIAE'),
  (SELECT id FROM places WHERE code='CAESAREA_CAPPADOCIAE'),
  (SELECT id FROM places WHERE code='CAESAREA_CAPPADOCIAE')
),
(
  'saint-gregory-nazianzen', 'Saint Gregory Nazianzen',
  329, NULL, NULL, TRUE,
  390, 1, 25, TRUE,
  4,
  (SELECT id FROM places WHERE code='ARIANZUS'),
  (SELECT id FROM places WHERE code='ARIANZUS'),
  (SELECT id FROM places WHERE code='ARIANZUS')
),
(
  'saint-raymond-of-penyafort', 'Saint Raymond of Penyafort',
  1175, NULL, NULL, TRUE,
  1275, 1, 6, FALSE,
  13,
  (SELECT id FROM places WHERE code='PENYAFORT'),
  (SELECT id FROM places WHERE code='BARCELONA'),
  (SELECT id FROM places WHERE code='BARCELONA')
),
(
  'saint-hilary-of-poitiers', 'Saint Hilary of Poitiers',
  310, NULL, NULL, TRUE,
  367, NULL, NULL, TRUE,
  4,
  (SELECT id FROM places WHERE code='POITIERS'),
  (SELECT id FROM places WHERE code='POITIERS'),
  (SELECT id FROM places WHERE code='POITIERS')
),
(
  'saint-anthony-abbot', 'Saint Anthony, Abbot',
  251, NULL, NULL, TRUE,
  356, 1, 17, TRUE,
  4,
  (SELECT id FROM places WHERE code='HERAKLEOPOLIS_MAGNA'),
  (SELECT id FROM places WHERE code='HERAKLEOPOLIS_MAGNA'),
  (SELECT id FROM places WHERE code='HERAKLEOPOLIS_MAGNA')
),
(
  'saint-fabian-pope', 'Saint Fabian, Pope',
  NULL, NULL, NULL, TRUE,
  250, 1, 20, TRUE,
  3,
  NULL,
  (SELECT id FROM places WHERE code='ROME'),
  (SELECT id FROM places WHERE code='ROME')
),
(
  'saint-sebastian', 'Saint Sebastian',
  NULL, NULL, NULL, TRUE,
  288, NULL, NULL, TRUE,
  3,
  NULL,
  (SELECT id FROM places WHERE code='ROME'),
  (SELECT id FROM places WHERE code='ROME')
),
(
  'saint-agnes-of-rome', 'Saint Agnes of Rome',
  NULL, NULL, NULL, TRUE,
  304, 1, 21, TRUE,
  4,
  (SELECT id FROM places WHERE code='ROME'),
  (SELECT id FROM places WHERE code='ROME'),
  (SELECT id FROM places WHERE code='ROME')
),
(
  'saint-vincent-of-saragossa', 'Saint Vincent of Saragossa',
  NULL, NULL, NULL, TRUE,
  304, 1, 22, TRUE,
  4,
  (SELECT id FROM places WHERE code='SARAGOSSA'),
  (SELECT id FROM places WHERE code='VALENCIA'),
  (SELECT id FROM places WHERE code='SARAGOSSA')
),
(
  'saint-francis-de-sales', 'Saint Francis de Sales',
  1567, 8, 21, FALSE,
  1622, 12, 28, FALSE,
  17,
  (SELECT id FROM places WHERE code='ANNECY'),
  (SELECT id FROM places WHERE code='LYON'),
  (SELECT id FROM places WHERE code='ANNECY')
),
(
  'saint-paul-apostle', 'Saint Paul the Apostle',
  5, NULL, NULL, TRUE,
  67, NULL, NULL, TRUE,
  1,
  (SELECT id FROM places WHERE code='TARSUS'),
  (SELECT id FROM places WHERE code='ROME'),
  (SELECT id FROM places WHERE code='ROME')
),
(
  'saint-timothy-of-ephesus', 'Saint Timothy of Ephesus',
  NULL, NULL, NULL, TRUE,
  97, NULL, NULL, TRUE,
  1,
  (SELECT id FROM places WHERE code='LYSTRA'),
  (SELECT id FROM places WHERE code='EPHESUS'),
  (SELECT id FROM places WHERE code='EPHESUS')
),
(
  'saint-titus-of-crete', 'Saint Titus of Crete',
  NULL, NULL, NULL, TRUE,
  96, NULL, NULL, TRUE,
  1,
  (SELECT id FROM places WHERE code='CRETE'),
  (SELECT id FROM places WHERE code='CRETE'),
  (SELECT id FROM places WHERE code='CRETE')
),
(
  'saint-angela-merici', 'Saint Angela Merici',
  1474, 3, 21, TRUE,
  1540, 1, 27, FALSE,
  16,
  (SELECT id FROM places WHERE code='DESENZANO_DEL_GARDA'),
  (SELECT id FROM places WHERE code='BRESCIA'),
  (SELECT id FROM places WHERE code='BRESCIA')
),
(
  'saint-thomas-aquinas', 'Saint Thomas Aquinas',
  1225, NULL, NULL, TRUE,
  1274, 3, 7, FALSE,
  13,
  (SELECT id FROM places WHERE code='ROCCASECCA'),
  (SELECT id FROM places WHERE code='FOSSANOVA_ABBEY'),
  (SELECT id FROM places WHERE code='PARIS')
),
(
  'saint-john-bosco', 'Saint John Bosco',
  1815, 8, 16, FALSE,
  1888, 1, 31, FALSE,
  19,
  (SELECT id FROM places WHERE code='BECCHI_CASTELNUOVO_DON_BOSCO'),
  (SELECT id FROM places WHERE code='TURIN'),
  (SELECT id FROM places WHERE code='TURIN')
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'en', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
('saint-basil-the-great', 'Saint Basil the Great', 'Bishop and Doctor of the Church; one of the Cappadocian Fathers.', 'Basil of Caesarea was a 4th-century bishop, theologian and monastic reformer. His doctrinal works and pastoral writings deeply shaped Eastern and Western Christianity, especially on the Trinity and the Holy Spirit.', 'c. 330–379'),
('saint-gregory-nazianzen', 'Saint Gregory Nazianzen', 'Bishop and Doctor of the Church; theologian of the Trinity.', 'Gregory of Nazianzus, called “the Theologian,” is one of the great Cappadocian Fathers. His orations defended Nicene faith and clarified Trinitarian doctrine in the 4th century.', 'c. 329–390'),
('saint-raymond-of-penyafort', 'Saint Raymond of Penyafort', 'Dominican priest and canonist.', 'Raymond of Penyafort was a major medieval canon lawyer and Dominican friar. He helped compile canonical legislation and served the Church through preaching, governance and legal scholarship.', '1175–1275'),
('saint-hilary-of-poitiers', 'Saint Hilary of Poitiers', 'Bishop and Doctor of the Church; defender of Nicene orthodoxy.', 'Hilary was a 4th-century bishop who strongly opposed Arianism. His theological writings, especially on the Trinity, earned him recognition as a Doctor of the Church.', 'c. 310–367'),
('saint-anthony-abbot', 'Saint Anthony, Abbot', 'Desert father and pioneer of Christian monasticism.', 'Anthony withdrew to the Egyptian desert and became a spiritual father for generations of monks. His life, popularized by Athanasius, made him a foundational figure of Christian asceticism.', 'c. 251–356'),
('saint-fabian-pope', 'Saint Fabian, Pope', 'Early Church pope and martyr.', 'Fabian governed the Church of Rome in the 3rd century and is remembered for organizing ecclesial ministry in Rome. He died as a martyr during the Decian persecution.', 'd. 250'),
('saint-sebastian', 'Saint Sebastian', 'Roman martyr venerated since antiquity.', 'Sebastian is one of the best-known early martyrs of Rome. His cult spread widely in East and West, and he is traditionally invoked in times of plague and suffering.', '3rd century'),
('saint-agnes-of-rome', 'Saint Agnes of Rome', 'Virgin and martyr of Rome.', 'Agnes was a young Christian martyr of early 4th-century Rome. Revered for her fidelity and purity, she became one of the most beloved saints of the Roman Church.', 'd. c. 304'),
('saint-vincent-of-saragossa', 'Saint Vincent of Saragossa', 'Deacon and martyr in Hispania.', 'Vincent, a deacon from Saragossa, suffered martyrdom in Valencia during the Diocletianic persecution. His witness made him one of the great martyrs of the Iberian Church.', 'd. c. 304'),
('saint-francis-de-sales', 'Saint Francis de Sales', 'Bishop and Doctor of the Church.', 'Francis de Sales, bishop of Geneva, is renowned for his gentle spirituality and pastoral wisdom. His works, especially Introduction to the Devout Life, shaped modern Christian devotion.', '1567–1622'),
('saint-paul-apostle', 'Saint Paul the Apostle', 'Apostle to the Gentiles.', 'Paul of Tarsus, converted on the road to Damascus, became the great missionary of the early Church. His letters form a central part of the New Testament and Christian theology.', '1st century'),
('saint-timothy-of-ephesus', 'Saint Timothy of Ephesus', 'Disciple of Saint Paul; bishop of Ephesus.', 'Timothy accompanied Paul in missionary work and later led the Church of Ephesus. The Pastoral Epistles preserve Paul’s guidance for his ministry and leadership.', '1st century'),
('saint-titus-of-crete', 'Saint Titus of Crete', 'Companion of Saint Paul; bishop in Crete.', 'Titus was entrusted by Paul with organizing the Church in Crete. He is remembered as a faithful collaborator in apostolic mission and pastoral governance.', '1st century'),
('saint-angela-merici', 'Saint Angela Merici', 'Founder of the Ursulines.', 'Angela Merici dedicated her life to Christian formation of girls and young women. Her foundation became the Ursuline family, influential in education across the world.', '1474–1540'),
('saint-thomas-aquinas', 'Saint Thomas Aquinas', 'Priest and Doctor of the Church; major theologian.', 'Thomas Aquinas, Dominican friar and philosopher-theologian, integrated faith and reason with exceptional clarity. His Summa Theologiae remains a cornerstone of Catholic thought.', '1225–1274'),
('saint-john-bosco', 'Saint John Bosco', 'Priest and educator; founder of the Salesians.', 'John Bosco devoted his priestly life to poor and abandoned youth in Turin. His “preventive system” of education and pastoral charity inspired the Salesian mission worldwide.', '1815–1888')
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code)
DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'fr', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
('saint-basil-the-great', 'Saint Basile le Grand', 'Évêque et docteur de l’Église, Père cappadocien.', 'Basile de Césarée, évêque du IVe siècle, est l’un des grands Pères de l’Église. Sa pensée théologique sur la Trinité et l’Esprit Saint, ainsi que son action pastorale et monastique, ont marqué durablement la tradition chrétienne.', 'v. 330–379'),
('saint-gregory-nazianzen', 'Saint Grégoire de Nazianze', 'Évêque et docteur de l’Église, grand théologien de la Trinité.', 'Surnommé « le Théologien », Grégoire de Nazianze a défendu la foi nicéenne face aux controverses ariennes. Ses discours théologiques ont joué un rôle majeur dans la formulation de la doctrine trinitaire.', 'v. 329–390'),
('saint-raymond-of-penyafort', 'Saint Raymond de Penyafort', 'Prêtre dominicain et canoniste.', 'Dominicain catalan, Raymond fut un grand juriste de l’Église médiévale. Il contribua à la codification du droit canonique et exerça un ministère de gouvernement, de prédication et de conseil.', '1175–1275'),
('saint-hilary-of-poitiers', 'Saint Hilaire de Poitiers', 'Évêque et docteur de l’Église, défenseur de la foi nicéenne.', 'Évêque au IVe siècle, Hilaire fut l’un des principaux opposants à l’arianisme en Occident. Ses écrits sur la Trinité lui ont valu le titre de docteur de l’Église.', 'v. 310–367'),
('saint-anthony-abbot', 'Saint Antoine, abbé', 'Père du désert et figure fondatrice du monachisme.', 'Antoine se retira dans le désert d’Égypte pour mener une vie d’ascèse et de prière. Son exemple, largement diffusé dans toute la chrétienté, en fit un modèle majeur de vie monastique.', 'v. 251–356'),
('saint-fabian-pope', 'Saint Fabien, pape', 'Pape de l’Église primitive et martyr.', 'Fabien gouverna l’Église de Rome au IIIe siècle. Il est mort martyr pendant la persécution de Dèce et demeure une figure importante de l’organisation de l’Église ancienne.', '† 250'),
('saint-sebastian', 'Saint Sébastien', 'Martyr romain vénéré depuis l’Antiquité.', 'Saint Sébastien est l’un des martyrs les plus connus de l’Église de Rome. Son culte s’est diffusé très tôt en Orient et en Occident.', 'IIIe siècle'),
('saint-agnes-of-rome', 'Sainte Agnès de Rome', 'Vierge et martyre de Rome.', 'Jeune martyre des premiers siècles, Agnès est honorée pour sa fidélité au Christ. Elle est l’une des saintes les plus aimées de la tradition romaine.', '† v. 304'),
('saint-vincent-of-saragossa', 'Saint Vincent de Saragosse', 'Diacre et martyr en Hispanie.', 'Diacre de Saragosse, Vincent subit le martyre à Valence lors des persécutions du début du IVe siècle. Sa mémoire s’est largement répandue dans l’Église latine.', '† v. 304'),
('saint-francis-de-sales', 'Saint François de Sales', 'Évêque et docteur de l’Église.', 'Évêque de Genève, François de Sales est célèbre pour sa douceur pastorale et sa spiritualité accessible à tous. Ses écrits, notamment l’Introduction à la vie dévote, ont eu une grande influence.', '1567–1622'),
('saint-paul-apostle', 'Saint Paul apôtre', 'Apôtre des nations.', 'Ancien persécuteur converti sur le chemin de Damas, Paul devint l’un des plus grands missionnaires de l’Église naissante. Ses lettres constituent une part essentielle du Nouveau Testament.', 'Ier siècle'),
('saint-timothy-of-ephesus', 'Saint Timothée d’Éphèse', 'Disciple de saint Paul, évêque d’Éphèse.', 'Timothée accompagna Paul dans son œuvre missionnaire et reçut la charge pastorale de l’Église d’Éphèse. La tradition le retient comme un pasteur fidèle de l’ère apostolique.', 'Ier siècle'),
('saint-titus-of-crete', 'Saint Tite de Crète', 'Compagnon de saint Paul, évêque en Crète.', 'Tite fut envoyé par Paul pour organiser les communautés chrétiennes de Crète. Il est honoré comme un collaborateur essentiel de la mission apostolique.', 'Ier siècle'),
('saint-angela-merici', 'Sainte Angèle Merici', 'Fondatrice des Ursulines.', 'Angèle Merici consacra sa vie à l’éducation chrétienne des jeunes filles. Son charisme donna naissance à la famille ursuline, marquante dans l’histoire de l’éducation.', '1474–1540'),
('saint-thomas-aquinas', 'Saint Thomas d’Aquin', 'Prêtre et docteur de l’Église, théologien majeur.', 'Religieux dominicain, Thomas d’Aquin a profondément marqué la théologie et la philosophie chrétiennes. Sa Somme théologique demeure une référence majeure de la pensée catholique.', '1225–1274'),
('saint-john-bosco', 'Saint Jean Bosco', 'Prêtre éducateur, fondateur des Salésiens.', 'Jean Bosco se dévoua à l’accueil et à la formation des jeunes pauvres de Turin. Son œuvre éducative et pastorale a donné naissance à la famille salésienne.', '1815–1888')
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code)
DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'la', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
('saint-basil-the-great', 'Sanctus Basilius Magnus', 'Episcopus et Ecclesiae doctor, unus ex Patribus Cappadocibus.', 'Basilius Caesariensis, episcopus saeculi IV, doctrina de Trinitate et de Spiritu Sancto necnon vita pastorali et monastica Ecclesiam valde formavit.', 'c. 330–379'),
('saint-gregory-nazianzen', 'Sanctus Gregorius Nazianzenus', 'Episcopus et Ecclesiae doctor, insignis theologus Trinitatis.', 'Gregorius, cognomento “Theologus”, fidem Nicaenam strenue defendit. Orationes eius ad doctrinam trinitariam in Ecclesia magni momenti fuerunt.', 'c. 329–390'),
('saint-raymond-of-penyafort', 'Sanctus Raymundus de Penyafort', 'Presbyter Ordinis Praedicatorum et canonista.', 'Raymundus, frater Praedicator, in iure canonico excelluit et Ecclesiae in regimine, praedicatione atque disciplina iuridica profuit.', '1175–1275'),
('saint-hilary-of-poitiers', 'Sanctus Hilarius Pictaviensis', 'Episcopus et Ecclesiae doctor, fidei Nicaenae defensor.', 'Hilarius Pictaviensis contra Arianos fortiter pugnavit. Scripta eius de Trinitate eum inter praecipuos doctores Ecclesiae collocant.', 'c. 310–367'),
('saint-anthony-abbot', 'Sanctus Antonius Abbas', 'Pater deserti et vitae monasticae exemplar.', 'Antonius in deserto Aegypti vitam asceticam duxit atque multos ad vitam monasticam inspiravit; ideo pater monachorum vocatur.', 'c. 251–356'),
('saint-fabian-pope', 'Sanctus Fabianus Papa', 'Papa Ecclesiae antiquae et martyr.', 'Fabianus Ecclesiam Romanam saeculo III rexit et in persecutione Deciana martyrium consummavit.', '† 250'),
('saint-sebastian', 'Sanctus Sebastianus', 'Martyr Romanus ab antiquis temporibus veneratus.', 'Sebastianus inter martyres Romanos celeberrimus est; cultus eius per totam Ecclesiam diffuse propagatus est.', 'saec. III'),
('saint-agnes-of-rome', 'Sancta Agnes Romana', 'Virgo et martyr Romana.', 'Agnes, iuvenis martyr, ob constantiam fidei et puritatem insigniter colitur in traditione Ecclesiae Romanae.', '† c. 304'),
('saint-vincent-of-saragossa', 'Sanctus Vincentius Caesaraugustanus', 'Diaconus et martyr in Hispania.', 'Vincentius diaconus martyrium Valentiae passus est et inter maximos martyres Hispaniae numeratur.', '† c. 304'),
('saint-francis-de-sales', 'Sanctus Franciscus Salesius', 'Episcopus et Ecclesiae doctor.', 'Franciscus Salesius, episcopus Genevensis, mansuetudine pastorali et scriptis spiritualibus claruit, praesertim in vita devota tradenda.', '1567–1622'),
('saint-paul-apostle', 'Sanctus Paulus Apostolus', 'Apostolus gentium.', 'Paulus, post conversionem Damascenam, Evangelium late annuntiavit; epistulae eius theologiae christianae fundamentum praebent.', 'saec. I'),
('saint-timothy-of-ephesus', 'Sanctus Timotheus Ephesius', 'Discipulus Sancti Pauli, episcopus Ephesi.', 'Timotheus socius Pauli in missione fuit et Ecclesiae Ephesi pastor constitutus est.', 'saec. I'),
('saint-titus-of-crete', 'Sanctus Titus Cretensis', 'Socius Sancti Pauli, episcopus in Creta.', 'Titus a Paulo ad ecclesias Cretenses ordinandas missus est et fidelis minister apostolicus habetur.', 'saec. I'),
('saint-angela-merici', 'Sancta Angela Merici', 'Fundatrix Ursulinarum.', 'Angela educationi christianae puellarum se dedicavit; ex eius charismate familia Ursulina orta est.', '1474–1540'),
('saint-thomas-aquinas', 'Sanctus Thomas Aquinas', 'Presbyter et Ecclesiae doctor, theologus praeclarus.', 'Thomas Aquinas, Ordinis Praedicatorum, fidem et rationem mirabiliter composuit; Summa Theologiae opus eius praecipuum est.', '1225–1274'),
('saint-john-bosco', 'Sanctus Ioannes Bosco', 'Presbyter educator, Fundator Salesianorum.', 'Ioannes Bosco iuvenibus pauperibus Taurini se tradidit; eius methodus educativa et caritas pastoralis per orbem fructum dederunt.', '1815–1888')
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code)
DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

-- Fevrier

INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-blaise', 'Saint Blaise',
  NULL, NULL, NULL, TRUE,
  316, NULL, NULL, TRUE,
  4,
  NULL,
  (SELECT id FROM places WHERE code='SMYRNA'),
  (SELECT id FROM places WHERE code='SMYRNA')
),
(
  'saint-ansgar', 'Saint Ansgar',
  801, 9, 8, FALSE,
  865, 2, 3, FALSE,
  9,
  NULL,
  NULL,
  NULL
),
(
  'saint-agatha', 'Saint Agatha',
  NULL, NULL, NULL, TRUE,
  251, NULL, NULL, TRUE,
  3,
  NULL,
  NULL,
  NULL
),
(
  'saint-paul-miki', 'Saint Paul Miki',
  1564, NULL, NULL, TRUE,
  1597, 2, 5, FALSE,
  16,
  (SELECT id FROM places WHERE code='JAPAN'),
  (SELECT id FROM places WHERE code='JAPAN'),
  (SELECT id FROM places WHERE code='JAPAN')
),
(
  'saint-jerome-emiliani', 'Saint Jerome Emiliani',
  1486, NULL, NULL, TRUE,
  1537, 2, 8, FALSE,
  16,
  NULL, NULL, NULL
),
(
  'saint-josephine-bakhita', 'Saint Josephine Bakhita',
  1869, NULL, NULL, TRUE,
  1947, 2, 8, FALSE,
  20,
  (SELECT id FROM places WHERE code='UGANDA'),
  NULL,
  NULL
),
(
  'saint-scholastica', 'Saint Scholastica',
  480, NULL, NULL, TRUE,
  543, 2, 10, TRUE,
  6,
  NULL, NULL, NULL
),
(
  'saint-cyril', 'Saint Cyril',
  826, NULL, NULL, TRUE,
  869, 2, 14, FALSE,
  9,
  NULL, NULL, NULL
),
(
  'saint-methodius', 'Saint Methodius',
  815, NULL, NULL, TRUE,
  885, 4, 6, FALSE,
  9,
  NULL, NULL, NULL
),
(
  'saint-peter-damian', 'Saint Peter Damian',
  1007, NULL, NULL, TRUE,
  1072, 2, 22, TRUE,
  11,
  NULL,
  NULL,
  NULL
),
(
  'saint-polycarp', 'Saint Polycarp',
  69, NULL, NULL, TRUE,
  155, 2, 23, TRUE,
  2,
  (SELECT id FROM places WHERE code='SMYRNA'),
  (SELECT id FROM places WHERE code='SMYRNA'),
  (SELECT id FROM places WHERE code='SMYRNA')
),
(
  'saint-gregory-of-narek', 'Saint Gregory of Narek',
  951, NULL, NULL, TRUE,
  1003, NULL, NULL, TRUE,
  10,
  NULL, NULL, NULL
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'en', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
('saint-blaise', 'Saint Blaise', 'Bishop and martyr venerated in the East and West.', 'Blaise is traditionally remembered as bishop of Sebaste and martyr. His cult spread widely, especially through the blessing of throats on his feast day.', '4th century'),
('saint-ansgar', 'Saint Ansgar', 'Missionary bishop, apostle of the North.', 'Ansgar evangelized in Scandinavia and became archbishop of Hamburg-Bremen. He is remembered for founding missions and enduring hardship for the Gospel.', '801–865'),
('saint-agatha', 'Saint Agatha', 'Virgin and martyr of Sicily.', 'Agatha, one of the most beloved early martyrs, witnessed faithfully to Christ in persecution. Her cult became universal very early in the Church.', '3rd century'),
('saint-paul-miki', 'Saint Paul Miki', 'Jesuit martyr of Japan.', 'Paul Miki and his companions were martyred at Nagasaki. Their witness remains central in the history of Christianity in Japan.', '1564–1597'),
('saint-jerome-emiliani', 'Saint Jerome Emiliani', 'Priest, founder devoted to abandoned children.', 'A Venetian noble turned priest, Jerome dedicated himself to orphans and the poor, and founded the Somascan Fathers.', '1486–1537'),
('saint-josephine-bakhita', 'Saint Josephine Bakhita', 'Former slave, religious sister, witness of hope.', 'Born in Sudan, Bakhita endured slavery before finding freedom and religious life in Italy. She is a modern witness of forgiveness and dignity.', 'c. 1869–1947'),
('saint-scholastica', 'Saint Scholastica', 'Virgin, sister of Saint Benedict.', 'Scholastica is venerated as a model of monastic prayer and charity. Tradition remembers her spiritual bond with her brother Benedict.', 'c. 480–543'),
('saint-cyril', 'Saint Cyril', 'Monk and missionary, co-patron of Europe.', 'Cyril, with Methodius, evangelized the Slavs and helped develop the Slavic liturgical tradition.', 'c. 826–869'),
('saint-methodius', 'Saint Methodius', 'Bishop and missionary among Slavs.', 'Brother and companion of Cyril, Methodius continued the Slavic mission and defended the use of local language in liturgy.', 'c. 815–885'),
('saint-peter-damian', 'Saint Peter Damian', 'Bishop and Doctor of the Church, reformer.', 'Peter Damian was a leading figure of 11th-century Church reform, combining ascetic life, scholarship and service to ecclesial unity.', 'c. 1007–1072'),
('saint-polycarp', 'Saint Polycarp', 'Bishop and martyr, apostolic father.', 'Polycarp of Smyrna, disciple of the Apostle John according to tradition, gave heroic witness in martyrdom and remains a key early Christian figure.', 'c. 69–155'),
('saint-gregory-of-narek', 'Saint Gregory of Narek', 'Monk and Doctor of the Church in the Armenian tradition.', 'Gregory, monk and mystic, is renowned for the Book of Lamentations and his profound spiritual theology.', 'c. 951–1003')
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code)
DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'fr', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
('saint-blaise', 'Saint Blaise', 'Évêque et martyr vénéré en Orient et en Occident.', 'Saint Blaise est traditionnellement honoré comme évêque de Sébaste et martyr. Son culte s’est largement diffusé, notamment par la bénédiction des gorges.', 'IVe siècle'),
('saint-ansgar', 'Saint Anschaire', 'Évêque missionnaire, apôtre du Nord.', 'Anschaire évangélisa la Scandinavie et devint archevêque de Hambourg-Brême. Il reste une figure majeure de l’évangélisation des peuples du Nord.', '801–865'),
('saint-agatha', 'Sainte Agathe', 'Vierge et martyre de Sicile.', 'Sainte Agathe, l’une des grandes martyres antiques, est honorée pour sa fidélité au Christ au temps des persécutions.', 'IIIe siècle'),
('saint-paul-miki', 'Saint Paul Miki', 'Martyr jésuite au Japon.', 'Paul Miki et ses compagnons furent martyrisés à Nagasaki. Leur témoignage demeure central dans l’histoire chrétienne japonaise.', '1564–1597'),
('saint-jerome-emiliani', 'Saint Jérôme Emilien', 'Prêtre, fondateur au service des orphelins.', 'Noble vénitien devenu prêtre, Jérôme se consacra aux enfants abandonnés et fonda les Somasques.', '1486–1537'),
('saint-josephine-bakhita', 'Sainte Joséphine Bakhita', 'Ancienne esclave, religieuse, témoin d’espérance.', 'Née au Soudan, Bakhita connut l’esclavage avant de trouver la liberté et la vie religieuse en Italie. Elle est un signe moderne de pardon et de dignité.', 'v. 1869–1947'),
('saint-scholastica', 'Sainte Scholastique', 'Vierge, sœur de saint Benoît.', 'Scholastique est honorée comme modèle de prière monastique et de charité fraternelle dans la tradition bénédictine.', 'v. 480–543'),
('saint-cyril', 'Saint Cyrille', 'Moine missionnaire, copatron de l’Europe.', 'Cyrille, avec Méthode, annonça l’Évangile aux Slaves et contribua à la tradition liturgique slave.', 'v. 826–869'),
('saint-methodius', 'Saint Méthode', 'Évêque missionnaire des Slaves.', 'Frère et collaborateur de Cyrille, Méthode poursuivit l’œuvre missionnaire et défendit l’usage des langues locales dans la liturgie.', 'v. 815–885'),
('saint-peter-damian', 'Saint Pierre Damien', 'Évêque et docteur de l’Église, réformateur.', 'Pierre Damien fut une figure majeure de la réforme ecclésiale au XIe siècle, alliant vie ascétique, science théologique et service de l’unité.', 'v. 1007–1072'),
('saint-polycarp', 'Saint Polycarpe', 'Évêque et martyr, Père apostolique.', 'Polycarpe de Smyrne, disciple de saint Jean selon la tradition, donna un témoignage exemplaire dans le martyre.', 'v. 69–155'),
('saint-gregory-of-narek', 'Saint Grégoire de Narek', 'Moine et docteur de l’Église dans la tradition arménienne.', 'Grégoire de Narek est célèbre pour le Livre des Lamentations et sa théologie spirituelle profonde.', 'v. 951–1003')
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code)
DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'la', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
('saint-blaise', 'Sanctus Blasius', 'Episcopus et martyr in Oriente et Occidente veneratus.', 'Sanctus Blasius ut episcopus Sebastensis et martyr traditur. Cultus eius late diffusus est, praesertim per benedictionem gutturis.', 'saec. IV'),
('saint-ansgar', 'Sanctus Ansgarius', 'Episcopus missionarius, apostolus Septentrionis.', 'Ansgarius in Scandinavia evangelizavit atque archiepiscopus Hamburgensis-Bremensis factus est. Inter praecipuos missionarios numeratur.', '801–865'),
('saint-agatha', 'Sancta Agatha', 'Virgo et martyr Sicula.', 'Sancta Agatha inter clarissimas martyres antiquitatis habetur, ob constantiam fidei in persecutione.', 'saec. III'),
('saint-paul-miki', 'Sanctus Paulus Miki', 'Martyr e Societate Iesu in Iaponia.', 'Paulus Miki cum sociis Nagasakii martyrium subiit; eorum testimonium in historia Ecclesiae Iaponicae eminenter manet.', '1564–1597'),
('saint-jerome-emiliani', 'Sanctus Hieronymus Aemilianus', 'Presbyter, fundator pro orphanis et pauperibus.', 'Hieronymus Aemilianus, Venetus nobilis ad sacerdotium conversus, orphanis et egenis se dedicavit atque Somascos fundavit.', '1486–1537'),
('saint-josephine-bakhita', 'Sancta Iosephina Bakhita', 'Olim serva, postea religiosa, spei testis.', 'Nata in Sudania, servitutem passa est; in Italia libertatem et vitam religiosam invenit, signum reconciliationis et dignitatis humanae facta.', 'c. 1869–1947'),
('saint-scholastica', 'Sancta Scholastica', 'Virgo, soror Sancti Benedicti.', 'Scholastica in traditione monastica tamquam exemplar orationis et caritatis recolitur.', 'c. 480–543'),
('saint-cyril', 'Sanctus Cyrillus', 'Monachus missionarius, co-patronus Europae.', 'Cyrillus cum Methodio Slavos evangelizavit et traditioni liturgicae Slavicae fundamenta dedit.', 'c. 826–869'),
('saint-methodius', 'Sanctus Methodius', 'Episcopus missionarius inter Slavos.', 'Frater et socius Cyrilli, Methodius opus missionarium continuavit atque usum linguae vernaculae in liturgia defendit.', 'c. 815–885'),
('saint-peter-damian', 'Sanctus Petrus Damiani', 'Episcopus et Ecclesiae doctor, reformator.', 'Petrus Damiani in reformatione Ecclesiae saeculi XI primas partes egit, vitam asceticam cum doctrina et ministerio coniungens.', 'c. 1007–1072'),
('saint-polycarp', 'Sanctus Polycarpus', 'Episcopus et martyr, pater apostolicus.', 'Polycarpus Smyrnensis, secundum traditionem discipulus Ioannis Apostoli, in martyrio clarum fidei testimonium dedit.', 'c. 69–155'),
('saint-gregory-of-narek', 'Sanctus Gregorius Narekensis', 'Monachus et Ecclesiae doctor in traditione Armena.', 'Gregorius Narekensis ob Librum Lamentationum et altam theologiam spiritualem in Ecclesia honoratur.', 'c. 951–1003')
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code)
DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

-- Mars
INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-casimir', 'Saint Casimir',
  1458, 10, 3, FALSE,
  1484, 3, 4, FALSE,
  15,
  NULL, NULL, NULL
),
(
  'saint-perpetua', 'Saint Perpetua',
  182, NULL, NULL, TRUE,
  203, 3, 7, FALSE,
  3,
  (SELECT id FROM places WHERE code='CARTHAGE'),
  (SELECT id FROM places WHERE code='CARTHAGE'),
  (SELECT id FROM places WHERE code='CARTHAGE')
),
(
  'saint-felicity', 'Saint Felicity',
  NULL, NULL, NULL, TRUE,
  203, 3, 7, FALSE,
  3,
  (SELECT id FROM places WHERE code='CARTHAGE'),
  (SELECT id FROM places WHERE code='CARTHAGE'),
  (SELECT id FROM places WHERE code='CARTHAGE')
),
(
  'saint-john-of-god', 'Saint John of God',
  1495, NULL, NULL, TRUE,
  1550, 3, 8, FALSE,
  16,
  NULL, NULL, NULL
),
(
  'saint-frances-of-rome', 'Saint Frances of Rome',
  1384, NULL, NULL, TRUE,
  1440, 3, 9, FALSE,
  15,
  (SELECT id FROM places WHERE code='ROME'),
  (SELECT id FROM places WHERE code='ROME'),
  (SELECT id FROM places WHERE code='ROME')
),
(
  'saint-patrick', 'Saint Patrick',
  385, NULL, NULL, TRUE,
  461, 3, 17, TRUE,
  5,
  NULL,
  (SELECT id FROM places WHERE code='DUBLIN'),
  (SELECT id FROM places WHERE code='DUBLIN')
),
(
  'saint-cyril-of-jerusalem', 'Saint Cyril of Jerusalem',
  315, NULL, NULL, TRUE,
  386, 3, 18, TRUE,
  4,
  (SELECT id FROM places WHERE code='JERUSALEM'),
  (SELECT id FROM places WHERE code='JERUSALEM'),
  (SELECT id FROM places WHERE code='JERUSALEM')
),
(
  'saint-joseph-spouse-of-mary', 'Saint Joseph, Spouse of Mary',
  NULL, NULL, NULL, TRUE,
  NULL, NULL, NULL, TRUE,
  1,
  NULL, NULL,
  (SELECT id FROM places WHERE code='NAZARETH')
),
(
  'saint-turibius-of-mongrovejo', 'Saint Turibius of Mongrovejo',
  1538, NULL, NULL, TRUE,
  1606, 3, 23, FALSE,
  17,
  (SELECT id FROM places WHERE code='MOGROVEJO'),
  (SELECT id FROM places WHERE code='LIMA'),
  (SELECT id FROM places WHERE code='LIMA')
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'en', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
('saint-casimir', 'Saint Casimir', 'Prince of Poland and Lithuania, model of Christian virtue.', 'Casimir, known for charity and purity of life, is venerated as a patron of Poland and Lithuania.', '1458–1484'),
('saint-perpetua', 'Saint Perpetua', 'Martyr of Carthage.', 'Perpetua, together with Felicity and companions, gave one of the earliest and most moving testimonies of martyrdom in the early Church.', 'd. 203'),
('saint-felicity', 'Saint Felicity', 'Martyr of Carthage.', 'Felicity, martyred with Perpetua, is remembered for steadfast faith under persecution.', 'd. 203'),
('saint-john-of-god', 'Saint John of God', 'Religious founder dedicated to the sick and poor.', 'John of God founded a path of hospital charity and care for the vulnerable, inspiring the Hospitaller tradition.', '1495–1550'),
('saint-frances-of-rome', 'Saint Frances of Rome', 'Wife, mother, and religious; witness of charity.', 'Frances of Rome lived holy marriage and later religious life, serving the poor and the sick in the city of Rome.', '1384–1440'),
('saint-patrick', 'Saint Patrick', 'Missionary bishop and patron of Ireland.', 'Patrick evangelized Ireland and remains one of the most beloved missionary saints in Christian tradition.', 'c. 385–461'),
('saint-cyril-of-jerusalem', 'Saint Cyril of Jerusalem', 'Bishop and Doctor of the Church.', 'Cyril is especially known for his catechetical instructions and his defense of orthodox faith in Jerusalem.', 'c. 315–386'),
('saint-joseph-spouse-of-mary', 'Saint Joseph, Spouse of Mary', 'Spouse of the Blessed Virgin Mary, guardian of Jesus.', 'Joseph is honored as foster-father of Christ, patron of the universal Church and model of obedience and quiet fidelity.', '1st century'),
('saint-turibius-of-mongrovejo', 'Saint Turibius of Mongrovejo', 'Archbishop and missionary pastor in Peru.', 'Turibius reformed church life in the New World, defended indigenous peoples and promoted evangelization with great zeal.', '1538–1606')
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code)
DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'fr', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
('saint-casimir', 'Saint Casimir', 'Prince de Pologne et de Lituanie, modèle de vertu chrétienne.', 'Casimir est honoré pour sa charité et sa pureté de vie; il est patron de la Pologne et de la Lituanie.', '1458–1484'),
('saint-perpetua', 'Sainte Perpétue', 'Martyre de Carthage.', 'Perpétue, avec Félicité et leurs compagnons, a donné l’un des plus anciens témoignages de martyre de l’Église ancienne.', '† 203'),
('saint-felicity', 'Sainte Félicité', 'Martyre de Carthage.', 'Félicité, martyre avec Perpétue, est vénérée pour sa constance dans la foi.', '† 203'),
('saint-john-of-god', 'Saint Jean de Dieu', 'Religieux fondateur au service des malades et des pauvres.', 'Jean de Dieu a inspiré la tradition hospitalière chrétienne par son engagement envers les plus fragiles.', '1495–1550'),
('saint-frances-of-rome', 'Sainte Françoise de Rome', 'Épouse, mère et religieuse, témoin de charité.', 'Françoise de Rome a vécu la sainteté dans le mariage puis dans la vie religieuse, au service des pauvres et des malades.', '1384–1440'),
('saint-patrick', 'Saint Patrick', 'Évêque missionnaire et patron de l’Irlande.', 'Patrick évangélisa l’Irlande et demeure l’une des figures missionnaires les plus célèbres de l’Église.', 'v. 385–461'),
('saint-cyril-of-jerusalem', 'Saint Cyrille de Jérusalem', 'Évêque et docteur de l’Église.', 'Cyrille est connu pour ses catéchèses baptismales et sa défense de la foi orthodoxe à Jérusalem.', 'v. 315–386'),
('saint-joseph-spouse-of-mary', 'Saint Joseph, époux de Marie', 'Époux de la Vierge Marie, gardien de Jésus.', 'Joseph est honoré comme père nourricier du Christ, patron de l’Église universelle et modèle de fidélité silencieuse.', 'Ier siècle'),
('saint-turibius-of-mongrovejo', 'Saint Turibe de Mogrovejo', 'Archevêque missionnaire au Pérou.', 'Turibe renouvela la vie de l’Église au Pérou, défendit les peuples autochtones et promut l’évangélisation.', '1538–1606')
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code)
DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'la', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
('saint-casimir', 'Sanctus Casimirus', 'Princeps Poloniae et Lituaniae, exemplar virtutis christianae.', 'Casimirus propter caritatem et puritatem vitae celebratur; inter patronos Poloniae et Lituaniae numeratur.', '1458–1484'),
('saint-perpetua', 'Sancta Perpetua', 'Martyr Carthaginensis.', 'Perpetua cum Felicitate et sociis inter priscos martyrii testes eminuit.', '† 203'),
('saint-felicity', 'Sancta Felicitas', 'Martyr Carthaginensis.', 'Felicitas, una cum Perpetua passa, ob constantiam fidei veneratur.', '† 203'),
('saint-john-of-god', 'Sanctus Ioannes a Deo', 'Religiosus fundator in servitio infirmorum et pauperum.', 'Ioannes a Deo opere hospitali christiano novum impulsum dedit atque misericordiae exemplar praebuit.', '1495–1550'),
('saint-frances-of-rome', 'Sancta Francisca Romana', 'Uxor, mater et religiosa, caritatis testis.', 'Francisca Romana sanctitatem in vita coniugali et religiosa coniunxit, pauperibus atque aegrotis serviens.', '1384–1440'),
('saint-patrick', 'Sanctus Patricius', 'Episcopus missionarius et patronus Hiberniae.', 'Patricius Hiberniam evangelizavit et inter maximos missionarios Ecclesiae habetur.', 'c. 385–461'),
('saint-cyril-of-jerusalem', 'Sanctus Cyrillus Hierosolymitanus', 'Episcopus et Ecclesiae doctor.', 'Cyrillus catechesibus suis notissimus est et fidem orthodoxam Hierosolymis strenue defendit.', 'c. 315–386'),
('saint-joseph-spouse-of-mary', 'Sanctus Ioseph, Sponsus Mariae', 'Sponsus Beatae Mariae Virginis, custos Iesu.', 'Ioseph tamquam pater nutritius Christi et patronus Ecclesiae universalis colitur.', 'saec. I'),
('saint-turibius-of-mongrovejo', 'Sanctus Turibius de Mogrovejo', 'Archiepiscopus missionarius in Peruvia.', 'Turibius vitam ecclesialem in Novo Orbe reformavit et evangelizationem cum zelo promovit.', '1538–1606')
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code)
DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

-- Avril
INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-francis-of-paola', 'Saint Francis of Paola',
  1416, 3, 27, FALSE,
  1507, 4, 2, FALSE,
  16,
  NULL, NULL, NULL
),
(
  'saint-isidore', 'Saint Isidore',
  560, NULL, NULL, TRUE,
  636, 4, 4, FALSE,
  7,
  NULL, NULL, NULL
),
(
  'saint-vincent-ferrer', 'Saint Vincent Ferrer',
  1350, 1, 23, FALSE,
  1419, 4, 5, FALSE,
  15,
  (SELECT id FROM places WHERE code='VALENCIA'),
  NULL,
  NULL
),
(
  'saint-john-baptist-de-la-salle', 'Saint John Baptist de La Salle',
  1651, 4, 30, FALSE,
  1719, 4, 7, FALSE,
  18,
  (SELECT id FROM places WHERE code='REIMS'),
  NULL,
  NULL
),
(
  'saint-stanislaus', 'Saint Stanislaus',
  1030, NULL, NULL, TRUE,
  1079, 4, 11, FALSE,
  11,
  NULL,
  (SELECT id FROM places WHERE code='KRAKOW'),
  (SELECT id FROM places WHERE code='KRAKOW')
),
(
  'saint-martin-i', 'Saint Martin I',
  NULL, NULL, NULL, TRUE,
  655, 4, 13, FALSE,
  7,
  NULL, NULL,
  (SELECT id FROM places WHERE code='ROME')
),
(
  'saint-anselm', 'Saint Anselm',
  1033, NULL, NULL, TRUE,
  1109, 4, 21, FALSE,
  12,
  NULL,
  (SELECT id FROM places WHERE code='CANTERBURY'),
  (SELECT id FROM places WHERE code='CANTERBURY')
),
(
  'saint-george', 'Saint George',
  NULL, NULL, NULL, TRUE,
  303, NULL, NULL, TRUE,
  4,
  NULL, NULL, NULL
),
(
  'saint-adalbert', 'Saint Adalbert',
  956, NULL, NULL, TRUE,
  997, 4, 23, FALSE,
  10,
  NULL, NULL, NULL
),
(
  'saint-fidelis-of-sigmaringen', 'Saint Fidelis of Sigmaringen',
  1578, 10, 1, FALSE,
  1622, 4, 24, FALSE,
  17,
  NULL, NULL, NULL
),
(
  'saint-mark-evangelist', 'Saint Mark the Evangelist',
  NULL, NULL, NULL, TRUE,
  68, NULL, NULL, TRUE,
  1,
  NULL,
  (SELECT id FROM places WHERE code='ALEXANDRIA'),
  (SELECT id FROM places WHERE code='ALEXANDRIA')
),
(
  'saint-peter-chanel', 'Saint Peter Chanel',
  1803, 7, 12, FALSE,
  1841, 4, 28, FALSE,
  19,
  NULL, NULL, NULL
),
(
  'saint-louis-grignon-de-montfort', 'Saint Louis Grignion de Montfort',
  1673, 1, 31, FALSE,
  1716, 4, 28, FALSE,
  18,
  NULL, NULL, NULL
),
(
  'saint-catherine-of-siena', 'Saint Catherine of Siena',
  1347, 3, 25, FALSE,
  1380, 4, 29, FALSE,
  14,
  (SELECT id FROM places WHERE code='SIENA'),
  (SELECT id FROM places WHERE code='ROME'),
  (SELECT id FROM places WHERE code='SIENA')
),
(
  'saint-pius-v', 'Saint Pius V',
  1504, 1, 17, FALSE,
  1572, 5, 1, FALSE,
  16,
  NULL,
  (SELECT id FROM places WHERE code='ROME'),
  (SELECT id FROM places WHERE code='ROME')
)
ON CONFLICT (slug) DO NOTHING;
