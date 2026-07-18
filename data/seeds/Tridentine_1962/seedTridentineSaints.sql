BEGIN;

-- ==========================================
-- TRIDENTINE CALENDAR 1962 - NEW SAINTS SEED
-- Saints not present in the Roman General 2002 calendar
-- ==========================================

-- ==============
-- JANUARY
-- ==============

INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-telesphorus', 'Saint Telesphorus',
  NULL, NULL, NULL, TRUE,
  136, NULL, NULL, TRUE,
  2,
  NULL, NULL, NULL
),
(
  'saint-hyginus', 'Saint Hyginus',
  NULL, NULL, NULL, TRUE,
  142, NULL, NULL, TRUE,
  2,
  NULL, NULL, NULL
),
(
  'saint-paul-the-first-hermit', 'Saint Paul the First Hermit',
  228, NULL, NULL, TRUE,
  341, NULL, NULL, TRUE,
  4,
  NULL, NULL, NULL
),
(
  'saint-maurus-abbot', 'Saint Maurus',
  512, NULL, NULL, TRUE,
  584, NULL, NULL, TRUE,
  6,
  NULL, NULL, NULL
),
(
  'saint-marcellus-i', 'Saint Marcellus I',
  256, NULL, NULL, TRUE,
  308, 1, 16, FALSE,
  4,
  NULL, NULL, NULL
),
(
  'saint-prisca', 'Saint Prisca',
  NULL, NULL, NULL, TRUE,
  NULL, NULL, NULL, TRUE,
  3,
  NULL, NULL, NULL
),
(
  'saints-marius-martha-audifax-abachum', 'Saints Marius, Martha, Audifax and Abachum',
  NULL, NULL, NULL, TRUE,
  270, NULL, NULL, TRUE,
  3,
  NULL, NULL, NULL
),
(
  'saint-anastasius-of-persia', 'Saint Anastasius of Persia',
  NULL, NULL, NULL, TRUE,
  628, 1, 22, FALSE,
  7,
  NULL, NULL, NULL
),
(
  'saint-peter-nolasco', 'Saint Peter Nolasco',
  1189, NULL, NULL, TRUE,
  1256, 1, 25, FALSE,
  13,
  NULL, NULL, NULL
),
(
  'saint-martina', 'Saint Martina',
  NULL, NULL, NULL, TRUE,
  228, NULL, NULL, TRUE,
  3,
  NULL, NULL, NULL
),
(
  'saint-timothy-of-ephesus', 'Saint Timothy of Ephesus',
  NULL, NULL, NULL, TRUE,
  97, NULL, NULL, TRUE,
  1,
  NULL, NULL, NULL
)
ON CONFLICT (slug) DO NOTHING;


-- ==============
-- FEBRUARY
-- ==============

INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-ignatius-of-antioch', 'Saint Ignatius of Antioch',
  35, NULL, NULL, TRUE,
  108, NULL, NULL, TRUE,
  2,
  NULL, NULL, NULL
),
(
  'saint-andrew-corsini', 'Saint Andrew Corsini',
  1302, 11, 30, FALSE,
  1373, 1, 6, FALSE,
  14,
  NULL, NULL, NULL
),
(
  'saint-titus-bishop', 'Saint Titus',
  NULL, NULL, NULL, TRUE,
  NULL, NULL, NULL, TRUE,
  1,
  NULL, NULL, NULL
),
(
  'saint-romuald', 'Saint Romuald',
  951, NULL, NULL, TRUE,
  1027, 6, 19, FALSE,
  11,
  NULL, NULL, NULL
),
(
  'saint-john-of-matha', 'Saint John of Matha',
  1154, 6, 23, FALSE,
  1213, 12, 17, FALSE,
  13,
  NULL, NULL, NULL
),
(
  'saint-cyril-of-alexandria', 'Saint Cyril of Alexandria',
  376, NULL, NULL, TRUE,
  444, 6, 27, FALSE,
  5,
  NULL, NULL, NULL
),
(
  'saint-matthias', 'Saint Matthias',
  NULL, NULL, NULL, TRUE,
  80, NULL, NULL, TRUE,
  1,
  NULL, NULL, NULL
),
(
  'saint-gabriel-of-our-lady-of-sorrows', 'Saint Gabriel of Our Lady of Sorrows',
  1838, 3, 1, FALSE,
  1862, 2, 27, FALSE,
  19,
  NULL, NULL, NULL
),
(
  'saint-valentine', 'Saint Valentine',
  NULL, NULL, NULL, TRUE,
  269, 2, 14, FALSE,
  3,
  NULL, NULL, NULL
),
(
  'saints-faustinus-and-jovita', 'Saints Faustinus and Jovita',
  NULL, NULL, NULL, TRUE,
  121, NULL, NULL, TRUE,
  2,
  NULL, NULL, NULL
),
(
  'saint-simeon-of-jerusalem', 'Saint Simeon of Jerusalem',
  NULL, NULL, NULL, TRUE,
  107, NULL, NULL, TRUE,
  2,
  NULL, NULL, NULL
)
ON CONFLICT (slug) DO NOTHING;


-- ==============
-- MARCH
-- ==============

INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'the-forty-martyrs-of-sebaste', 'The Forty Martyrs of Sebaste',
  NULL, NULL, NULL, TRUE,
  320, 3, 10, FALSE,
  4,
  NULL, NULL, NULL
),
(
  'saint-john-damascene', 'Saint John Damascene',
  675, NULL, NULL, TRUE,
  749, 12, 4, FALSE,
  8,
  NULL, NULL, NULL
),
(
  'saint-john-capistran', 'Saint John Capistran',
  1386, 6, 24, FALSE,
  1456, 10, 23, FALSE,
  15,
  NULL, NULL, NULL
)
ON CONFLICT (slug) DO NOTHING;

-- ==============
-- APRIL
-- ==============

INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-leo-i-the-great', 'Saint Leo I the Great',
  400, NULL, NULL, TRUE,
  461, 11, 10, FALSE,
  5,
  NULL, NULL, NULL
),
(
  'saint-hermenegild', 'Saint Hermenegild',
  564, NULL, NULL, TRUE,
  585, 4, 13, FALSE,
  6,
  NULL, NULL, NULL
),
(
  'saint-justin-martyr', 'Saint Justin Martyr',
  100, NULL, NULL, TRUE,
  165, NULL, NULL, TRUE,
  2,
  NULL, NULL, NULL
),
(
  'saints-soter-and-cajus', 'Saints Soter and Cajus',
  NULL, NULL, NULL, TRUE,
  296, NULL, NULL, TRUE,
  3,
  NULL, NULL, NULL
),
(
  'saints-cletus-and-marcellinus', 'Saints Cletus and Marcellinus',
  NULL, NULL, NULL, TRUE,
  304, NULL, NULL, TRUE,
  4,
  NULL, NULL, NULL
),
(
  'saint-peter-canisius', 'Saint Peter Canisius',
  1521, 5, 8, FALSE,
  1597, 12, 21, FALSE,
  16,
  NULL, NULL, NULL
),
(
  'saint-paul-of-the-cross', 'Saint Paul of the Cross',
  1694, 1, 3, FALSE,
  1775, 10, 18, FALSE,
  18,
  NULL, NULL, NULL
),
(
  'saint-peter-of-verona', 'Saint Peter of Verona',
  1205, NULL, NULL, TRUE,
  1252, 4, 6, FALSE,
  13,
  NULL, NULL, NULL
)
ON CONFLICT (slug) DO NOTHING;


-- ==============
-- MAY
-- ==============

INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-antoninus-of-florence', 'Saint Antoninus of Florence',
  1389, 3, 1, FALSE,
  1459, 5, 2, FALSE,
  15,
  NULL, NULL, NULL
),
(
  'saints-nereus-achilleus-domitilla-pancras', 'Saints Nereus, Achilleus, Domitilla and Pancras',
  NULL, NULL, NULL, TRUE,
  NULL, NULL, NULL, TRUE,
  2,
  NULL, NULL, NULL
),
(
  'saint-ubald-of-gubbio', 'Saint Ubald of Gubbio',
  1084, NULL, NULL, TRUE,
  1160, 5, 16, FALSE,
  12,
  NULL, NULL, NULL
),
(
  'saint-paschal-baylon', 'Saint Paschal Baylon',
  1540, 5, 16, FALSE,
  1592, 5, 17, FALSE,
  16,
  NULL, NULL, NULL
),
(
  'saint-venantius', 'Saint Venantius',
  NULL, NULL, NULL, TRUE,
  250, NULL, NULL, TRUE,
  3,
  NULL, NULL, NULL
),
(
  'saint-peter-celestine', 'Saint Peter Celestine',
  1215, NULL, NULL, TRUE,
  1296, 5, 19, FALSE,
  13,
  NULL, NULL, NULL
)
ON CONFLICT (slug) DO NOTHING;

-- ==============
-- JUNE
-- ==============

INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-francis-caracciolo', 'Saint Francis Caracciolo',
  1563, 10, 13, FALSE,
  1608, 6, 4, FALSE,
  17,
  NULL, NULL, NULL
),
(
  'saint-margaret-of-scotland', 'Saint Margaret of Scotland',
  1045, NULL, NULL, TRUE,
  1093, 11, 16, FALSE,
  11,
  NULL, NULL, NULL
),
(
  'saint-john-of-sahagun', 'Saint John of Sahagún',
  1430, 6, 24, FALSE,
  1479, 6, 11, FALSE,
  15,
  NULL, NULL, NULL
),
(
  'saint-gregory-barbarigo', 'Saint Gregory Barbarigo',
  1625, 9, 16, FALSE,
  1697, 6, 18, FALSE,
  17,
  NULL, NULL, NULL
),
(
  'saint-ephraem-the-syrian', 'Saint Ephraem the Syrian',
  306, NULL, NULL, TRUE,
  373, 6, 9, FALSE,
  4,
  NULL, NULL, NULL
),
(
  'saint-juliana-falconieri', 'Saint Juliana Falconieri',
  1270, NULL, NULL, TRUE,
  1341, 6, 19, FALSE,
  14,
  NULL, NULL, NULL
),
(
  'saints-john-and-paul-martyrs', 'Saints John and Paul',
  NULL, NULL, NULL, TRUE,
  362, 6, 26, FALSE,
  4,
  NULL, NULL, NULL
),
(
  'saint-william-of-vercelli', 'Saint William of Vercelli',
  1085, NULL, NULL, TRUE,
  1142, 6, 25, FALSE,
  12,
  NULL, NULL, NULL
)
ON CONFLICT (slug) DO NOTHING;


-- ==============
-- JULY
-- ==============

INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'seven-holy-brothers-martyrs', 'The Seven Holy Brothers',
  NULL, NULL, NULL, TRUE,
  150, NULL, NULL, TRUE,
  2,
  NULL, NULL, NULL
),
(
  'saint-john-gualbert', 'Saint John Gualbert',
  995, NULL, NULL, TRUE,
  1073, 7, 12, FALSE,
  11,
  NULL, NULL, NULL
),
(
  'saint-henry-ii', 'Saint Henry II',
  972, 5, 6, FALSE,
  1024, 7, 13, FALSE,
  11,
  NULL, NULL, NULL
),
(
  'saints-nazarius-and-celsus', 'Saints Nazarius and Celsus',
  NULL, NULL, NULL, TRUE,
  68, NULL, NULL, TRUE,
  1,
  NULL, NULL, NULL
),
(
  'saint-apollinaris-of-ravenna', 'Saint Apollinaris of Ravenna',
  NULL, NULL, NULL, TRUE,
  75, NULL, NULL, TRUE,
  1,
  NULL, NULL, NULL
)
ON CONFLICT (slug) DO NOTHING;

-- ==============
-- AUGUST
-- ==============

INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-cajetan', 'Saint Cajetan',
  1480, 10, 1, FALSE,
  1547, 8, 7, FALSE,
  16,
  NULL, NULL, NULL
),
(
  'saint-hyacinth-of-krakow', 'Saint Hyacinth of Kraków',
  1185, NULL, NULL, TRUE,
  1257, 8, 15, FALSE,
  13,
  NULL, NULL, NULL
),
(
  'saint-philip-benizi', 'Saint Philip Benizi',
  1233, 8, 15, FALSE,
  1285, 8, 22, FALSE,
  13,
  NULL, NULL, NULL
),
(
  'saint-raymond-nonnatus', 'Saint Raymond Nonnatus',
  1204, NULL, NULL, TRUE,
  1240, 8, 31, FALSE,
  13,
  NULL, NULL, NULL
)
ON CONFLICT (slug) DO NOTHING;


-- ==============
-- SEPTEMBER
-- ==============

INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-lawrence-justinian', 'Saint Lawrence Justinian',
  1381, 7, 1, FALSE,
  1455, 1, 8, FALSE,
  15,
  NULL, NULL, NULL
),
(
  'saint-nicholas-of-tolentino', 'Saint Nicholas of Tolentino',
  1245, NULL, NULL, TRUE,
  1305, 9, 10, FALSE,
  14,
  NULL, NULL, NULL
),
(
  'saint-joseph-of-cupertino', 'Saint Joseph of Cupertino',
  1603, 6, 17, FALSE,
  1663, 9, 18, FALSE,
  17,
  NULL, NULL, NULL
),
(
  'saint-thomas-of-villanova', 'Saint Thomas of Villanova',
  1486, 9, 10, FALSE,
  1555, 9, 8, FALSE,
  16,
  NULL, NULL, NULL
),
(
  'saint-linus', 'Saint Linus',
  NULL, NULL, NULL, TRUE,
  76, NULL, NULL, TRUE,
  1,
  NULL, NULL, NULL
)
ON CONFLICT (slug) DO NOTHING;

-- ==============
-- OCTOBER
-- ==============

INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-edward-the-confessor', 'Saint Edward the Confessor',
  1003, NULL, NULL, TRUE,
  1066, 1, 5, FALSE,
  11,
  NULL, NULL, NULL
),
(
  'saint-callistus-i', 'Saint Callistus I',
  NULL, NULL, NULL, TRUE,
  222, 10, 14, FALSE,
  3,
  NULL, NULL, NULL
),
(
  'saint-peter-of-alcantara', 'Saint Peter of Alcantara',
  1499, 6, 19, FALSE,
  1562, 10, 18, FALSE,
  16,
  NULL, NULL, NULL
),
(
  'saint-hilarion', 'Saint Hilarion',
  291, NULL, NULL, TRUE,
  371, 10, 21, FALSE,
  4,
  NULL, NULL, NULL
)
ON CONFLICT (slug) DO NOTHING;

-- ==============
-- NOVEMBER
-- ==============

INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-andrew-avellino', 'Saint Andrew Avellino',
  1521, NULL, NULL, TRUE,
  1608, 11, 10, FALSE,
  17,
  NULL, NULL, NULL
),
(
  'saint-didacus-of-alcala', 'Saint Didacus of Alcalá',
  1400, NULL, NULL, TRUE,
  1463, 11, 12, FALSE,
  15,
  NULL, NULL, NULL
),
(
  'saint-gregory-thaumaturgus', 'Saint Gregory Thaumaturgus',
  213, NULL, NULL, TRUE,
  270, 11, 17, FALSE,
  3,
  NULL, NULL, NULL
),
(
  'saint-felix-of-valois', 'Saint Felix of Valois',
  1127, NULL, NULL, TRUE,
  1212, 11, 4, FALSE,
  12,
  NULL, NULL, NULL
),
(
  'saint-sylvester-gozzolini', 'Saint Sylvester Gozzolini',
  1177, NULL, NULL, TRUE,
  1267, 11, 26, FALSE,
  13,
  NULL, NULL, NULL
),
(
  'saint-saturninus-of-toulouse', 'Saint Saturninus of Toulouse',
  NULL, NULL, NULL, TRUE,
  257, 11, 29, FALSE,
  3,
  NULL, NULL, NULL
)
ON CONFLICT (slug) DO NOTHING;

-- ==============
-- DECEMBER
-- ==============

INSERT INTO saints (
  slug, default_name,
  birth_year, birth_month, birth_day, birth_is_approximate,
  death_year, death_month, death_day, death_is_approximate,
  century,
  place_of_birth_id, place_of_death_id, place_of_activity_id
) VALUES
(
  'saint-bibiana', 'Saint Bibiana',
  NULL, NULL, NULL, TRUE,
  363, 12, 2, FALSE,
  4,
  NULL, NULL, NULL
),
(
  'saint-thomas-becket', 'Saint Thomas Becket',
  1118, 12, 21, FALSE,
  1170, 12, 29, FALSE,
  12,
  NULL, NULL, NULL
),
(
  'saint-sylvester-i', 'Saint Sylvester I',
  NULL, NULL, NULL, TRUE,
  335, 12, 31, FALSE,
  4,
  NULL, NULL, NULL
),
(
  'saint-giles-abbot', 'Saint Giles',
  640, NULL, NULL, TRUE,
  710, 9, 1, FALSE,
  8,
  NULL, NULL, NULL
)
ON CONFLICT (slug) DO NOTHING;


-- ==========================================
-- TRANSLATIONS - ENGLISH
-- ==========================================

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'en', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
(
  'saint-telesphorus',
  'Saint Telesphorus',
  'Pope and martyr of the early Church, the second-century successor of Peter who died for his faith.',
  'Telesphorus was a Greek by birth who served as Bishop of Rome from around 125 to 136 AD. According to Irenaeus of Lyon, he was the only second-century pope whose martyrdom is historically attested. His pontificate oversaw the growing Church amid Roman persecution, and he is credited with introducing the Gloria in Excelsis into the Mass and mandating a pre-Easter fast. He was executed under the Emperor Hadrian, becoming a witness to the faith he shepherded.',
  '†c. 136'
),
(
  'saint-hyginus',
  'Saint Hyginus',
  'Early pope and martyr who governed the Church in Rome around 136–142 AD.',
  'Hyginus was a Greek philosopher who became the ninth Bishop of Rome, succeeding Telesphorus around 136 AD. His pontificate is associated with the first organizational structuring of the Roman clergy into distinct grades and the establishment of the role of godparent in baptism. He faced the challenge of early Gnostic teachers active in Rome, including Valentinus and Cerdo. Venerated as a martyr by tradition, he is honored in the Roman Martyrology, though the historical evidence for his martyrdom is less certain than that of his predecessor.',
  '†c. 142'
),
(
  'saint-paul-the-first-hermit',
  'Saint Paul the First Hermit',
  'The earliest known Christian hermit, who fled to the Egyptian desert during the Decian persecution and lived in solitude for nearly a century.',
  'Paul was born in the Thebaid region of Egypt around 228 AD. Fleeing Roman persecution under Decius, he retreated into the desert, finding shelter in a cave near a palm tree and a spring. According to Saint Jerome, who wrote his biography, Paul lived there for over ninety years in prayer and fasting, sustained miraculously by a raven that brought him half a loaf of bread daily. Saint Anthony the Great, guided by a vision, sought him out in extreme old age and found him near death. The two great hermits met briefly; Anthony buried Paul wrapped in a cloak given by Saint Athanasius, after two lions reportedly dug the grave. Paul is venerated as the father of eremitic monasticism, the first to choose the desert as a way to God before even Anthony made it famous.',
  'c. 228–341'
),
(
  'saint-maurus-abbot',
  'Saint Maurus',
  'Benedictine abbot, the first disciple of Saint Benedict, who is said to have walked on water to save a drowning novice.',
  'Maurus was born around 512 AD in a noble Roman family and was entrusted as a child to Saint Benedict at Subiaco. He became the holy patriarch''s favorite disciple and was sent by him to establish the Benedictine rule in Gaul around 543. He founded the monastery of Glanfeuil (Saint-Maur-sur-Loire) in France, spreading the Rule of Saint Benedict throughout the region. The famous episode in the Dialogues of Gregory the Great recounts how Maurus, at Benedict''s command, ran across the surface of a lake to rescue the boy Placid from drowning—a miracle he performed unconsciously, attributing it entirely to his master''s prayer. His influence on the Christianization of Gaul was immense, and the Maurist Congregation of Benedictines, founded in the seventeenth century, took his name in his honor.',
  'c. 512–584'
),
(
  'saint-marcellus-i',
  'Saint Marcellus I',
  'Pope and martyr who led the Church through the Diocletian persecution and was controversially accused of apostasy.',
  'Marcellus I served as Bishop of Rome from around 308 until his death, one of the most turbulent periods of Roman persecution under Diocletian. The Church had endured years without a pope, and upon his election Marcellus faced the immense task of reorganizing a community that had suffered greatly. He was accused by some—including the Donatist schismatics—of having handed over sacred books or incensed before idols during the persecution, though the historical evidence is disputed. He was expelled from Rome and died shortly after, likely from the hardships endured. The Church honors him as a martyr and confessor. His feast reflects the suffering of the Roman Church at the threshold of the Constantinian era.',
  'c. 256–308'
),
(
  'saint-prisca',
  'Saint Prisca',
  'Virgin and martyr venerated in Rome from ancient times, whose feast is among the oldest in the Roman calendar.',
  'Prisca is one of the most ancient martyrs venerated by the Roman Church, with a basilica on the Aventine Hill in Rome bearing her name from at least the fourth century. Tradition holds her to be a young Roman girl who professed the Christian faith and was martyred for refusing to apostatize, possibly during the reign of Claudius or a later emperor. Some pious traditions connect her with the Aquila and Priscilla of the New Testament, though historians regard these as distinct persons. Despite the legendary character of much of her story, the antiquity of her cult is undeniable, and she stands as a symbol of the faith of the early Roman Christian community.',
  '3rd c.'
),
(
  'saints-marius-martha-audifax-abachum',
  'Saints Marius, Martha, Audifax and Abachum',
  'A Persian noble family who came to Rome on pilgrimage and were martyred for burying Christian martyrs.',
  'Marius was a Persian nobleman who, with his wife Martha and their two sons Audifax and Abachum, traveled to Rome around 270 AD drawn by devotion to the apostles'' tombs and to the martyrs of their age. They ministered to Christians condemned to forced labor in the quarries and collected the relics of those executed. Arrested for their pious work, they were tortured and executed: the sons by beheading, Martha by drowning, and Marius by being burned alive. Their story, preserved in acts of uncertain historical value, reflects the reality of Persian Christians who venerated the Roman martyrs. They are honored as a family united in faith and sacrifice.',
  '†c. 270'
),
(
  'saint-anastasius-of-persia',
  'Saint Anastasius of Persia',
  'A Persian soldier who converted to Christianity after seeing the True Cross and was martyred by the Persians in 628.',
  'Anastasius was born in Persia and served as a soldier in the army of King Khosrow II, which sacked Jerusalem in 614 and carried off the True Cross. Deeply moved by accounts of this relic''s power, he journeyed to Jerusalem, received Christian baptism, and became a monk in the monastery of Saint Anastasius near the city. Returning to Persia to evangelize, he was captured by Persian authorities. After months of torture and imprisonment, refusing to apostatize, he was strangled and beheaded on January 22, 628. His head was brought to Rome and his cult spread rapidly through East and West. He is one of the first non-Roman martyrs to be honored liturgically throughout the universal Church.',
  '†628'
),
(
  'saint-peter-nolasco',
  'Saint Peter Nolasco',
  'Founder of the Order of Our Lady of Mercy (Mercedarians), dedicated to ransoming Christians held captive by the Moors.',
  'Peter Nolasco was born around 1189, probably in Languedoc, France, though Catalonian tradition claims him as a native of Barcelona. From youth he was moved by the plight of Christians enslaved by Muslim rulers in Spain and North Africa. Around 1218, with the support of King James I of Aragon and the Dominican Raymond of Pennafort, he founded the Order of Our Lady of Mercy, whose members took a fourth vow to offer themselves as hostages if necessary to secure the freedom of captives. Peter himself undertook several ransom expeditions to Granada and North Africa, reportedly liberating hundreds of slaves. He died in 1256, leaving behind an institution that would continue its work for centuries. His charity for the enslaved remains the heart of his legacy.',
  'c. 1189–1256'
),
(
  'saint-martina',
  'Saint Martina',
  'Roman virgin and martyr, patron of Rome, venerated from early Christian times on the Forum.',
  'Martina is one of the most ancient martyrs of Rome, venerated since at least the seventh century in the church at the foot of the Capitol near the Roman Forum. According to her Acts—historically uncertain but spiritually rich—she was a noble Roman Christian who refused to sacrifice to idols and endured prolonged tortures before being beheaded. Pope Honorius I built a church in her honor in 625. Her veneration received renewed impetus in 1634 when her relics were rediscovered during construction work. Urban VIII composed hymns in her honor and decreed a solemn feast. She remains a patron saint of Rome.',
  '3rd c.'
),
(
  'saint-timothy-of-ephesus',
  'Saint Timothy of Ephesus',
  'Bishop of Ephesus and beloved disciple of Saint Paul, to whom two New Testament epistles are addressed.',
  'Timothy was born in Lystra in Asia Minor of a Greek father and a Jewish mother named Eunice. He encountered Saint Paul on the apostle''s second missionary journey and became his closest companion and spiritual son. Paul circumcised him to make him acceptable to Jewish communities and took him on his travels throughout Macedonia, Greece, and Asia. Two of Paul''s epistles are addressed to him, containing instructions on Church governance and pastoral care. Timothy became the first bishop of Ephesus, where he governed the community with fidelity and zeal. According to tradition, he was martyred around 97 AD while opposing a pagan festival, beaten to death by the crowd. His relics were later transferred to Constantinople.',
  'c. 17–97'
)
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code) DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'en', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
(
  'saint-ignatius-of-antioch',
  'Saint Ignatius of Antioch',
  'Bishop of Antioch and apostolic Father, martyred in Rome around 108, who wrote seven celebrated letters on the way to his death.',
  'Ignatius was the third Bishop of Antioch, possibly a disciple of the Apostle John. Condemned to die in Rome, he was transported under guard and en route wrote seven letters to various Christian communities—Ephesus, Magnesia, Tralles, Rome, Philadelphia, Smyrna, and to Bishop Polycarp—which became foundational texts of early Christian theology. In them he defended the real presence of Christ in the Eucharist, insisted on unity around the bishop, and coined the word "Catholic" to describe the universal Church. His letter to the Romans begged them not to intercede for his release, as he longed to be "ground by the teeth of beasts" to become pure bread for Christ. He was thrown to the lions in the Colosseum, becoming one of the most celebrated martyrs of antiquity.',
  'c. 35–108'
),
(
  'saint-andrew-corsini',
  'Saint Andrew Corsini',
  'Carmelite friar and Bishop of Fiesole, known for his conversion from a dissolute youth to a life of extraordinary holiness.',
  'Andrew Corsini was born in Florence in 1302 into the noble Corsini family. His mother had a vision before his birth of a wolf transformed into a lamb upon entering a Carmelite church, which she took as a prophecy of his life. After a dissolute youth, Andrew was moved by his mother''s grief and entered the Carmelite order, later studying in Paris and Avignon. Ordained a priest and eventually a bishop, he served as Bishop of Fiesole with humility and care for the poor, often going barefoot and performing acts of extreme mortification. He was sent by Pope Urban V as a papal legate to reconcile the warring factions of Bologna, which he accomplished through prayer and patient negotiation. He died in 1373 and was canonized by Urban VIII in 1629.',
  '1302–1373'
),
(
  'saint-titus-bishop',
  'Saint Titus',
  'Apostolic companion of Saint Paul and first bishop of Crete, to whom an epistle in the New Testament is addressed.',
  'Titus was a Gentile Greek who became one of Saint Paul''s most trusted collaborators. He appears in the Acts of the Apostles and in Paul''s letters as a skilled diplomat sent to resolve crises in the Corinthian church. Paul''s epistle to Titus, addressed to him as bishop of Crete, contains instructions on appointing elders, refuting false teachers, and ordering the life of the Christian community. Titus traveled to Dalmatia as a missionary and tradition holds that he returned to Crete, where he governed the Church until an advanced old age. He is venerated as the first bishop of Crete and a model of the apostolic pastor.',
  '1st c.'
),
(
  'saint-romuald',
  'Saint Romuald',
  'Founder of the Camaldolese Order, who reformed Benedictine monasticism through a radical embrace of the hermit life.',
  'Romuald was born around 951 in Ravenna into the noble Onesti family. Witnessing his father kill a relative in a duel, he was overwhelmed by remorse and fled to a Benedictine monastery. After years of wandering and seeking stricter reform, he founded around 1012 the hermitage of Camaldoli in the Apennines, combining cenobitic community life with the solitary eremitic ideal. His rule blended the Rule of Saint Benedict with the traditions of the Eastern desert fathers. He reportedly aspired to martyrdom in Hungary and was prevented only by illness. He founded numerous monasteries throughout Italy and died alone in his cell in 1027. The Camaldolese congregation he founded still exists today.',
  '951–1027'
),
(
  'saint-john-of-matha',
  'Saint John of Matha',
  'French theologian and co-founder of the Order of the Most Holy Trinity (Trinitarians) for the ransom of Christian captives.',
  'John of Matha was born in 1154 in Faucon, Provence. A brilliant scholar, he studied theology in Paris where he was ordained a priest. During his first Mass he received a vision of Christ with two captive men—one white, one Moorish—which he interpreted as a call to found a religious order dedicated to ransoming Christian slaves. With the hermit Felix of Valois, he obtained papal approval from Innocent III in 1198 for the Order of the Most Holy Trinity. The Trinitarians devoted a third of their revenues to redeeming captives from Muslim lands. John himself led ransom missions to Morocco and Tunisia, reportedly liberating hundreds of prisoners. He died in Rome in 1213. His order continues its charitable work to this day.',
  '1154–1213'
),
(
  'saint-cyril-of-alexandria',
  'Saint Cyril of Alexandria',
  'Archbishop of Alexandria and Doctor of the Church, champion of the title Theotokos (Mother of God) against the Nestorian heresy.',
  'Cyril of Alexandria was born around 376 and became Archbishop of Alexandria in 412, succeeding his uncle Theophilus. He is one of the most formidable theologians of the patristic era. His central achievement was defending, against Nestorius of Constantinople, the teaching that Mary is truly Theotokos—God-bearer or Mother of God—a title that affirms the unity of Christ''s divine and human natures. He presided at the Council of Ephesus in 431, which condemned Nestorianism and defined the Theotokos dogma. His extensive writings on the Trinity, the Incarnation, and biblical commentary have made him one of the foremost Doctors of the Church. Pope Leo XIII declared him a Doctor in 1883. His theology remains foundational for both Catholic and Orthodox Christology.',
  'c. 376–444'
),
(
  'saint-matthias',
  'Saint Matthias',
  'Apostle chosen by lot to replace Judas Iscariot among the Twelve, a witness to the Resurrection from the beginning.',
  'Matthias was among the disciples of Jesus from the time of his baptism by John and was a witness to the Resurrection. After the Ascension, the community of disciples gathered in Jerusalem chose him by lot from among two candidates to fill the place left by Judas. He thus became the twelfth apostle, completing the symbolic number representing the twelve tribes of Israel. Tradition assigns him various missionary fields: Ethiopia, Colchis (modern Georgia), or Judea. According to one tradition he was stoned and beheaded by the Jews; according to another he died peacefully. His relics are venerated in Trier, Germany, at the Basilica of Saint Matthias, and in Rome at Santa Maria Maggiore.',
  '1st c.'
),
(
  'saint-gabriel-of-our-lady-of-sorrows',
  'Saint Gabriel of Our Lady of Sorrows',
  'Young Passionist novice who died of tuberculosis at twenty-four after a brief religious life of intense devotion and joy.',
  'Francis Possenti was born in Assisi in 1838, the eleventh of thirteen children of a papal governor. After two serious illnesses, he felt called to religious life, entering the Passionists in 1856 and taking the name Gabriel of Our Lady of Sorrows. He spent his novitiate and religious formation at the retreat of Isola del Gran Sasso in the Abruzzo mountains, where he became known for his joy, piety, devotion to the Virgin Mary, and scrupulous observance of the rule. Though never ordained a priest or assigned to apostolic work, his five years of religious life were so marked by holiness that his memory was cherished by all who knew him. He died of tuberculosis on February 27, 1862, at the age of twenty-four. Pius X beatified him in 1908 and Benedict XV canonized him in 1920. He is the patron saint of youth and seminarians.',
  '1838–1862'
),
(
  'saint-valentine',
  'Saint Valentine',
  'Roman priest and martyr, whose feast day on February 14 became associated with love and courtship in medieval times.',
  'Valentine was a priest or bishop in Rome who suffered martyrdom around 269 AD under the Emperor Claudius II. The historical details of his life are sparse, and the Roman Martyrology lists two Valentines—a priest of Rome and a bishop of Terni—who may be the same person. His Acts, of uncertain historical value, portray him as a healer and a Christian witness who was beheaded for refusing to renounce his faith. The association of his feast with romantic love appears to have origins in the late medieval period, notably in the writings of Geoffrey Chaucer, who connected February 14 with the mating season of birds. Whatever the origins of the tradition, the historical Valentine remains a martyr of the Roman Church, honored for his fidelity to Christ.',
  '†269'
),
(
  'saints-faustinus-and-jovita',
  'Saints Faustinus and Jovita',
  'Brothers from Brescia who were martyred under the Emperor Hadrian around 121 AD for preaching the Christian faith.',
  'Faustinus and Jovita were brothers from Brescia in northern Italy who lived during the reign of the Emperor Hadrian. According to their Acts—whose historicity is not certain—Faustinus was a priest and Jovita a deacon, and they were arrested for openly preaching Christianity and refusing to offer sacrifice to the pagan gods. They endured numerous tortures with miraculous steadfastness before being beheaded around 121 AD. The ancient basilica of Brescia, one of the earliest Christian buildings in northern Italy, was dedicated to them. They remain the principal patron saints of the city of Brescia and their cult has been continuous since the earliest Christian centuries there.',
  '†c. 121'
),
(
  'saint-simeon-of-jerusalem',
  'Saint Simeon of Jerusalem',
  'Second bishop of Jerusalem, cousin of the Lord, who led the Jewish-Christian community until his martyrdom around 107.',
  'Simeon was the son of Clopas, who is identified in the Gospels as a brother (or close relative) of Joseph, making Simeon a cousin of Jesus. He succeeded James the Less as bishop of Jerusalem and led the Jewish-Christian community through the catastrophic Jewish revolts and the destruction of Jerusalem. According to the historian Hegesippus, preserved in Eusebius, Simeon was denounced to the Emperor Trajan as a descendant of David and a Christian, tortured before the governor Atticus, and crucified around 107 AD at the remarkable age of over one hundred and twenty. He is thus both one of the last eyewitnesses of the Lord''s earthly family and one of the early Church''s most venerable martyrs.',
  'c. 1–107'
)
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code) DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'en', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
(
  'the-forty-martyrs-of-sebaste',
  'The Forty Martyrs of Sebaste',
  'Forty Roman soldiers who were left to die on a frozen lake in Armenia in 320 for refusing to renounce Christianity.',
  'The Forty Martyrs of Sebaste were soldiers of the Thunderbolt Legion stationed at Sebaste (modern Sivas, Turkey) who refused to renounce Christianity under the Emperor Licinius. Around 320 AD, in the depths of winter, they were stripped naked and forced onto a frozen lake, while warm baths were kept ready on the shore for any who apostatized. One soldier broke and ran to the shore, but a guard, moved by the steadfastness of the others, threw off his clothes and took his place, dying with the thirty-nine. Their frozen bodies were burned and the ashes cast into the river to prevent veneration. However, Christians recovered their remains, and their cult spread rapidly. Basil the Great, Gregory of Nyssa, and John Chrysostom all preached sermons in their honor. They are among the most celebrated martyrs of the Eastern Church.',
  '†320'
),
(
  'saint-john-damascene',
  'Saint John Damascene',
  'Syrian monk, theologian, and Doctor of the Church, the great defender of sacred images during the Iconoclast controversy.',
  'John of Damascus was born around 675 in Damascus into a prominent Christian family that had served the Umayyad caliphate. Educated in philosophy, theology, and the sciences, he served as a high official at the Muslim court before resigning around 706 to become a monk at the monastery of Saint Sabas near Jerusalem. From this secure position beyond Byzantine imperial reach, he composed his monumental Fount of Knowledge—a systematic summary of Christian doctrine that would profoundly influence both Eastern and Western theology. His three Discourses Against Those Who Calumniate Holy Images were a decisive defense of sacred art against Byzantine iconoclasm. He also wrote hymns, biblical commentaries, and philosophical works. Pope Leo XIII declared him a Doctor of the Church in 1890.',
  'c. 675–749'
),
(
  'saint-john-capistran',
  'Saint John Capistran',
  'Franciscan friar and papal legate whose preaching rallied Christian Europe and helped defeat the Ottoman siege of Belgrade in 1456.',
  'John Capistran was born in 1386 in Capestrano in the Abruzzo. He began his career as a lawyer and governor of Perugia before a religious conversion after a period of imprisonment led him to enter the Franciscan order. He became one of the most celebrated preachers of the fifteenth century, drawing vast crowds across Italy and central Europe in campaigns against heresy and moral laxity. As papal legate he supported the crusade against the Ottoman advance and personally led contingents of Christian forces at the Battle of Belgrade in 1456, where the Ottoman besiegers under Sultan Mehmed II were decisively repelled—an event attributed widely to miraculous intervention. He died of plague a few months later at Ilok. Alexander VIII canonized him in 1690.',
  '1386–1456'
),
(
  'saint-leo-i-the-great',
  'Saint Leo I the Great',
  'Pope and Doctor of the Church who defined the two natures of Christ at Chalcedon and famously turned back Attila the Hun from Rome.',
  'Leo I was born around 400 and served as pope from 440 to 461, one of the most consequential pontificates in history. A consummate theologian, his Tome—a letter to the Council of Chalcedon in 451—defined the orthodox doctrine of Christ''s two natures in one person, the foundational Christological definition of Catholic faith. With equal courage he faced the temporal crises of his era: in 452 he met Attila the Hun near Mantua and persuaded him to turn back from Rome, and in 455 he negotiated with Genseric the Vandal to spare the lives of the Roman population. His sermons and letters, marked by rhetorical power and theological depth, earned him the title "the Great." He is one of only three popes so designated.',
  'c. 400–461'
),
(
  'saint-hermenegild',
  'Saint Hermenegild',
  'Visigoth prince who converted from Arianism to Catholicism and was executed by his own father for refusing communion from an Arian bishop.',
  'Hermenegild was the son of the Visigoth King Leovigild of Spain, raised in Arianism. His marriage to the Frankish Catholic princess Ingundis and the influence of Saint Leander of Seville led to his conversion to Catholic orthodoxy. When his father discovered the conversion, Hermenegild led a rebellion centered in Seville, which was eventually suppressed. Imprisoned in Tarragona, he refused on Easter Sunday 585 to receive communion from an Arian bishop sent by his father, for which Leovigild had him executed. Gregory the Great and later Pope Gregory XIII championed his veneration as a martyr for the faith. His story was pivotal in the eventual conversion of the Visigoths to Catholicism under his brother Recared.',
  '564–585'
),
(
  'saint-justin-martyr',
  'Saint Justin Martyr',
  'Second-century philosopher and apologist who used Greek philosophy to defend Christianity and was martyred in Rome around 165.',
  'Justin was born around 100 AD in Flavia Neapolis (modern Nablus) in Samaria of pagan Greek parents. After studying various philosophical schools—Stoicism, Aristotelianism, Pythagoreanism—he found intellectual and spiritual fulfillment in Christianity, which he embraced as the true philosophy. He opened a school in Rome and wrote two Apologies addressed to the Emperor Antoninus Pius and the Senate, defending Christians against slanders and arguing for freedom of religion, and his Dialogue with Trypho, a debate with a Jewish scholar. His descriptions of early Christian liturgy are among our most valuable historical sources. He was denounced by a rival philosopher, tried before the prefect Rusticus, and beheaded around 165. His feast was added to the Roman calendar in 1882.',
  'c. 100–165'
),
(
  'saints-soter-and-cajus',
  'Saints Soter and Cajus',
  'Two early popes honored together in the Roman calendar: Soter (†175), known for charity to prisoners, and Cajus (†296).',
  'Soter served as Bishop of Rome from about 166 to 175. Dionysius of Corinth praised him for his generosity in sending material aid to all the churches and for welcoming and consoling Christians condemned to mines. Cajus served as Bishop of Rome from 283 to 296, during the reigns of Numerianus and Diocletian. According to tradition he was related to the Emperor Diocletian and used his position to protect Christians. He is said to have lived hidden in catacombs for eight years and was venerated as a martyr, though his martyrdom is not historically certain. Both popes were honored together in the traditional Roman calendar on April 22.',
  'Soter †175, Cajus †296'
),
(
  'saints-cletus-and-marcellinus',
  'Saints Cletus and Marcellinus',
  'Two early popes of Rome honored together: Cletus (†88), the third successor of Peter, and Marcellinus (†304), martyr of the Diocletian persecution.',
  'Cletus (also called Anacletus) was the third Bishop of Rome, succeeding Linus after Peter, governing the Church from approximately 68 to 88 AD. He is associated with the organization of the Roman presbyterate and the building of a shrine over Peter''s tomb. Marcellinus served as pope from 296 to 304, a period culminating in the Great Persecution of Diocletian. His memory was complicated by accusations of apostasy made by Donatists, though these are disputed by Catholic tradition. Both popes'' names appear in the Roman Canon of the Mass, attesting to their deep integration into Roman liturgical memory from the earliest centuries.',
  'Cletus †c. 88, Marcellinus †304'
),
(
  'saint-peter-canisius',
  'Saint Peter Canisius',
  'Jesuit theologian and Doctor of the Church, the "Second Apostle of Germany," whose catechisms consolidated the Catholic Reformation.',
  'Peter Canisius was born in Nijmegen in 1521 and entered the Society of Jesus after studying under Peter Faber at Cologne. He became one of the most effective instruments of the Catholic Reformation in German-speaking lands, working tirelessly in Bavaria, Austria, Bohemia, and Switzerland as a preacher, teacher, and organizer. His three catechisms—from the small children''s summary to the comprehensive Summa—were translated into fifteen languages and ran to hundreds of editions, countering Protestant influence at the popular level. He founded colleges and revitalized Catholic intellectual life across the region. Pius IX canonized and declared him a Doctor of the Church simultaneously in 1925.',
  '1521–1597'
),
(
  'saint-paul-of-the-cross',
  'Saint Paul of the Cross',
  'Founder of the Passionists, Italian mystic whose spirituality centered on contemplation of Christ''s Passion.',
  'Paul Danei was born in Ovada, Liguria, in 1694. After a period of intense mystical prayer and penance, he received in a vision the inspiration to found a congregation dedicated to preaching the Passion of Christ and to maintaining perpetual memory of his sufferings. He wrote a rule in 1720, and after years of delay and trial the Congregation of the Passion (Passionists) was formally approved in 1741. He spent decades as an itinerant missionary in central Italy, renowned for conversions, miracles, and mystical gifts. He also worked for the reconciliation of England to the Church, a cause close to his heart. He died in Rome in 1775 and was canonized by Pius IX in 1867.',
  '1694–1775'
),
(
  'saint-peter-of-verona',
  'Saint Peter of Verona',
  'Dominican friar, inquisitor, and martyr, killed by Cathar assassins in 1252 and canonized the following year.',
  'Peter was born around 1205 in Verona to Cathar parents but was drawn to orthodox Christianity as a child. He entered the Dominican order and became one of its most effective preachers, combating the Cathar heresy throughout northern Italy. His preaching attracted enormous crowds and his personal witness—born into heresy, choosing orthodoxy—gave his words particular power. As an inquisitor he pursued Cathar leaders with legal zeal, making powerful enemies. On April 6, 1252, while traveling from Como to Milan, he was ambushed by hired assassins who struck him on the head with an axe; as he lay dying he wrote in his blood on the ground the beginning of the Creed. He was canonized in 1253 by Innocent IV—less than a year after his death—one of the fastest canonizations in history.',
  'c. 1205–1252'
)
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code) DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'en', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
(
  'saint-antoninus-of-florence',
  'Saint Antoninus of Florence',
  'Dominican friar and Archbishop of Florence, renowned theologian of economics and social justice, and father of the poor.',
  'Antonino Pierozzi was born in Florence in 1389 and entered the Dominican order at sixteen, eventually becoming prior of several convents including San Marco, which he rebuilt under the direction of Fra Angelico. Made Archbishop of Florence in 1446, he administered his see with apostolic poverty, riding a mule rather than horses, distributing his revenues to the poor, and refusing to accept gifts. His Summa Theologica Moralis was the most comprehensive work of moral theology of its era and contains remarkably modern analysis of economic justice, just wages, and usury. When plague and earthquakes struck Florence, he organized relief with personal involvement. He was canonized by Adrian VI in 1523 and his body remains incorrupt in the Basilica of San Marco.',
  '1389–1459'
),
(
  'saints-nereus-achilleus-domitilla-pancras',
  'Saints Nereus, Achilleus, Domitilla and Pancras',
  'Roman martyrs of the first and second centuries venerated together since antiquity: two soldiers, a noblewoman, and a youth.',
  'Nereus and Achilleus were Roman soldiers, traditionally said to have been of the Praetorian Guard who converted to Christianity, threw down their weapons, and were subsequently martyred under Domitian around 100 AD. Their tomb on the Appian Way at the cemetery of Domitilla was identified by Pope Damasus in the fourth century and a basilica was built over it. Domitilla was a noble Christian woman, niece of the Emperor Domitian, exiled for her faith and later martyred. Pancras was a young Roman Christian martyred around 304 at the age of fourteen; the great basilica on the Janiculum in Rome bears his name. Together they represent the breadth of the Roman martyrology—soldier, aristocrat, and youth—all witnesses to Christ.',
  '1st–2nd c.'
),
(
  'saint-ubald-of-gubbio',
  'Saint Ubald of Gubbio',
  'Bishop of Gubbio, renowned for his gentleness and miraculous healings, whose body remains incorrupt in the cathedral.',
  'Ubald Baldassini was born around 1084 in Gubbio, Umbria, and was educated by the canons of the cathedral. After a period of reform, he was elected Bishop of Gubbio in 1129 despite his reluctance. His episcopate was marked by extraordinary mildness—he once refused to press charges against a man who had struck him across the face—and by tireless pastoral care. He twice repelled invaders threatening his city by going out barefoot to meet them, and both times the attackers withdrew. He was twice offered the archbishopric of Ravenna and refused. He died in 1160, and his body, preserved incorrupt, is still venerated in the cathedral of Gubbio. He was canonized by Celestine III in 1192 and is the patron of Gubbio.',
  '1084–1160'
),
(
  'saint-paschal-baylon',
  'Saint Paschal Baylon',
  'Franciscan lay brother of Spain whose burning love for the Eucharist made him the patron of Eucharistic congresses.',
  'Paschal Baylon was born in 1540 in Torre Hermosa, Aragon, on Whit Sunday—which gave him his name. He spent his youth as a shepherd before entering the Franciscan order as a lay brother around 1564. Stationed in various friaries in Valencia, he was characterized by extreme humility, austerity, and above all a mystical devotion to the Blessed Sacrament. He would spend hours kneeling before the tabernacle in states of ecstasy. He was sent on a diplomatic mission to France during a dangerous period of religious wars, and tradition holds he defended the Catholic doctrine of the Eucharist before hostile Calvinist crowds. He died in 1592 in the act of adoration as Mass was being sung. Leo XIII proclaimed him patron of all Eucharistic congresses in 1897.',
  '1540–1592'
),
(
  'saint-venantius',
  'Saint Venantius',
  'Teenage martyr of Camerino, Italy, who suffered a series of ingenious tortures before being beheaded around 250.',
  'Venantius was a young Christian of Camerino in the Marches of central Italy who was arrested during the Decian persecution around 250 AD. His Acts, while hagiographically embellished, describe a series of increasingly severe tortures—fire, wild beasts, being thrown from a cliff—all of which he reportedly survived through miraculous intervention before finally being beheaded. The governor himself converted upon witnessing the miracles attending the youth''s passion. Pope Clement X, who had a particular devotion to this martyr, extended his feast to the universal calendar in 1672. Venantius is venerated as the patron of Camerino and of Fabriano.',
  '†c. 250'
),
(
  'saint-peter-celestine',
  'Saint Peter Celestine',
  'Hermit, founder of the Celestine Benedictines, and pope who made history by freely resigning the papacy in 1294.',
  'Peter of Morrone was born around 1215 in Isernia in the Kingdom of Naples. After studies in Benedictine monasticism he became a hermit on Mount Morrone, where his extraordinary holiness attracted disciples. He founded the Celestine congregation, a reform branch of the Benedictines. In 1294, at nearly eighty years old and after a two-year papal vacancy, he was elected pope as Celestine V. His pontificate was a disaster of governance; after only five months he resigned—an act Dante controversially placed in Hell as "the great refusal," though the Church honors it as an act of humble wisdom. Boniface VIII had him imprisoned to prevent his use as a figurehead. He died in captivity in 1296 and was canonized in 1313.',
  'c. 1215–1296'
),
(
  'saint-francis-caracciolo',
  'Saint Francis Caracciolo',
  'Neapolitan nobleman and co-founder of the Clerks Regular Minor, known for perpetual adoration and extreme penitential life.',
  'Ascanio Caracciolo was born in 1563 in Villa Santa Maria, Abruzzo, of a noble family. After a serious skin disease he attributed to miraculous cure, he devoted himself to God and was ordained a priest. Through a mistaken delivery of a letter intended for another Ascanio Caracciolo, he was drawn into co-founding with John Augustine Adorno the Clerks Regular Minor in 1588, confirmed by Sixtus V. The congregation was distinctive for its fourth vow never to accept any ecclesiastical dignities and for introducing perpetual adoration before the Blessed Sacrament, alternating day and night. Francis refused the generalship of his order multiple times and all episcopal appointments. He died in 1608 at Agnone. He was canonized by Pius VII in 1807.',
  '1563–1608'
),
(
  'saint-margaret-of-scotland',
  'Saint Margaret of Scotland',
  'Queen of Scotland, born a princess of the English royal house, who reformed the Scottish Church and was a mother of remarkable piety.',
  'Margaret was born around 1045 in Hungary where her father, Edward the Exile, was in hiding. She came to England around 1057 and after the Norman Conquest fled to Scotland, where she married King Malcolm III around 1070. As queen she had enormous spiritual and civilizing influence: she reformed Scottish liturgical practice to conform to Roman usage, introduced regular confession and communion, promoted care of the poor—personally serving orphans and beggars before eating herself—and supported monastic foundations including Dunfermline Abbey. She bore eight children, three of whom became saints or pious rulers. She died on November 16, 1093, four days after hearing of her husband''s death in battle. Innocent IV canonized her in 1250.',
  'c. 1045–1093'
),
(
  'saint-john-of-sahagun',
  'Saint John of Sahagun',
  'Augustinian friar of Salamanca, the "Peacemaker of Castile," renowned for his preaching and for reconciling feuding noble families.',
  'John of Sahagun was born in 1430 in Sahagun, Leon. After education under the Benedictines and ordination as a secular priest, he held several benefices until a crisis of conscience led him to resign them all and eventually enter the Augustinian order at Salamanca in 1463. His preaching in that university city became famous throughout Castile; he addressed social vices openly, thundering against gambling, blasphemy, and the oppression of the poor by the rich. His most celebrated achievement was the reconciliation of the feuding noble houses of Salamanca whose private wars were devastating the city. He reportedly walked alone between armed factions and persuaded them to peace. He died on June 11, 1479, possibly poisoned by a woman whose illicit relationship he had denounced. He was canonized by Alexander VIII in 1690.',
  '1430–1479'
),
(
  'saint-gregory-barbarigo',
  'Saint Gregory Barbarigo',
  'Bishop of Padua and Cardinal, champion of reform and education, who promoted Church unity and friendship with scholars of his day.',
  'Gregory Barbarigo was born in Venice in 1625 to a noble family. Educated in law, he was drawn to religious life through the influence of Fabio Chigi (later Alexander VII) at the Congress of Munster. Ordained priest, he became Bishop of Bergamo in 1657 and then of Padua in 1664, where he served until his death in 1697. His episcopate was a model of Tridentine reform: he founded a seminary with a remarkable printing press producing books in Eastern languages to promote dialogue with Eastern Christians, built up the diocesan library, and maintained warm relationships with thinkers of his day. He was deeply committed to the reunion of separated Eastern Christians with Rome. John XXIII canonized him in 1960.',
  '1625–1697'
),
(
  'saint-ephraem-the-syrian',
  'Saint Ephraem the Syrian',
  'Deacon, Doctor of the Church, and greatest poet of early Christianity, who composed vast hymns to combat heresy and teach the faith.',
  'Ephraem was born around 306 in Nisibis, in what is now southeastern Turkey, possibly of Christian parents. He spent most of his life in Nisibis as a teacher and writer. When Nisibis was ceded to Persia in 363 he moved to Edessa, where he lived as a deacon until his death in 373. His literary output was extraordinary: commentaries on Scripture, doctrinal prose works, and above all hymns—hundreds of them—written to counter Gnostic and Arian songs circulating among the people, and to convey orthodox teaching through poetry. His Nativity and Epiphany hymns are among the masterpieces of early Christian literature. He also organized charitable relief during a famine shortly before his death. Benedict XV declared him a Doctor of the Church in 1920.',
  'c. 306–373'
),
(
  'saint-juliana-falconieri',
  'Saint Juliana Falconieri',
  'Florentine noble who founded the Servite nuns (Mantellate) and received the Eucharist miraculously on her deathbed.',
  'Juliana Falconieri was born in Florence around 1270 into the powerful Falconieri family; her uncle Alexis was one of the Seven Holy Founders of the Servites. Refusing marriage, she received the Servite habit from Saint Philip Benizi and founded the congregation of the Mantellate for consecrated women. She served the sick, comforted the dying, and governed her community with wisdom. On her deathbed, too ill to swallow the Eucharist, she asked that the consecrated host be laid on her chest; according to the Servite tradition, the host disappeared into her body and the image of the crucified Christ became visible on her skin. She died in 1341. Clement XII canonized her in 1737.',
  'c. 1270–1341'
),
(
  'saints-john-and-paul-martyrs',
  'Saints John and Paul',
  'Roman officers martyred in their own home on the Caelian Hill in 362 under Julian the Apostate for refusing to serve a pagan army.',
  'John and Paul were Roman officers, reportedly former soldiers of Constantine''s household who had distinguished themselves in war. Under the Emperor Julian the Apostate, they were offered positions in the army of the general Terrentianus but refused to serve a pagan commander, professing their Christian faith. They were secretly executed in their house on the Caelian Hill, the bodies buried in the garden to prevent a public martyrdom and cult. Pammachius, a Christian senator, later built a basilica over their home, which still stands today as the Basilica of Saints John and Paul in Rome. The discovery of their house beneath the basilica has been confirmed by archaeology.',
  '†362'
),
(
  'saint-william-of-vercelli',
  'Saint William of Vercelli',
  'Italian hermit who founded the monastery of Monte Vergine in the Apennines, a major Marian shrine still active today.',
  'William was born in 1085 in Vercelli, Piedmont, and as a youth undertook a pilgrimage to Compostela. Inspired by his travels and the example of hermits, he withdrew to Mount Partenio in Campania, where he led a life of severe penance. His holiness attracted followers and around 1119 he founded the monastery of Monte Vergine (now a major Marian pilgrimage site) and later the congregation of the Williamites, a branch of Benedictine hermits. He was a close friend and counselor to King Roger II of Sicily. He later founded further hermitages in Puglia and Basilicata and died at the monastery of Guglieto in 1142.',
  '1085–1142'
)
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code) DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'en', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
(
  'seven-holy-brothers-martyrs',
  'The Seven Holy Brothers',
  'Seven sons of Saint Felicity, martyred in Rome around 150 AD, each on a different day and by different means.',
  'The Seven Holy Brothers—Januarius, Felix, Philip, Sylvanus, Alexander, Vitalis, and Martial—are venerated as the sons of the Roman matron Felicity who was herself martyred after watching the execution of her sons. Their Acts portray them as young men of noble bearing who refused to offer sacrifice to Roman gods and were condemned separately, each dying by a different manner: some beheaded, one scourged, one burned. Historical scholars have questioned whether they were literally the biological sons of Saint Felicity of Rome, or whether the tradition combined distinct martyrs into a family grouping for liturgical purposes. Whatever the historical complexities, they were venerated from antiquity and their feast was fixed in the Roman calendar.',
  '†c. 150'
),
(
  'saint-john-gualbert',
  'Saint John Gualbert',
  'Florentine noble who forgave his brother''s murderer on Good Friday, became a monk, and founded the Vallombrosan Benedictines.',
  'John Gualbert was born around 995 in Florence into the noble Visdomini family. Pursuing a blood vendetta for his brother''s murder, he cornered the killer in a narrow passage on Good Friday. The man fell to his knees in a cross-like posture and begged mercy in the name of Christ. John, moved, spared him. Entering San Miniato al Monte afterward, he knelt before the crucifix, which according to tradition inclined its head toward him in approval. Renouncing the world, he entered the Benedictine monastery and then, dissatisfied with its laxity, founded around 1039 the monastery of Vallombrosa in the Apennines above Florence—a strict Benedictine reform that introduced lay brothers to handle temporal affairs so monks could focus entirely on prayer. He was canonized by Celestine III in 1193.',
  'c. 995–1073'
),
(
  'saint-henry-ii',
  'Saint Henry II',
  'Holy Roman Emperor, the last of the Ottonian dynasty, who governed with piety and is the only German emperor canonized by the Church.',
  'Henry II was born in 972 and became Holy Roman Emperor in 1014, the last of the Saxon Ottonian line. His reign was marked by constant military campaigns to preserve the empire, but equally by deep religious engagement. He worked closely with Pope Benedict VIII in the reform of the Church, supported the Cluny reform movement, founded the diocese of Bamberg to Christianize Slavic territories, and endowed numerous abbeys and churches. He and his wife Cunigunde lived, according to tradition, in a Josephite marriage of mutual continence. He died in 1024 without heirs. Eugenius III canonized him in 1146 and Innocent III canonized Cunigunde in 1200.',
  '972–1024'
),
(
  'saints-nazarius-and-celsus',
  'Saints Nazarius and Celsus',
  'Roman martyr Nazarius and his young companion Celsus, whose relics were discovered by Saint Ambrose in Milan in 395.',
  'Nazarius was a Roman Christian of the apostolic era, the son of a pagan father and a Christian mother, who undertook missionary journeys through Gaul and northern Italy before being arrested and executed in Milan under Nero around 68 AD. His young companion Celsus, a boy he had baptized, was martyred with him. Their cult was largely forgotten until Saint Ambrose, guided by a dream, discovered their relics near Milan in 395—finding the blood still liquid and the head intact, which he interpreted as a miracle. He placed their relics in the Basilica Apostolorum (now San Nazaro Maggiore) in Milan. Ambrose''s letter describing the discovery is one of the earliest accounts of relic translation.',
  'c. 1st c.'
),
(
  'saint-apollinaris-of-ravenna',
  'Saint Apollinaris of Ravenna',
  'First bishop and patron of Ravenna, traditionally a disciple of Saint Peter, martyred around 75 AD.',
  'Apollinaris is venerated as the first bishop of Ravenna and one of the earliest martyrs of northern Italy. According to tradition, he was a native of Antioch brought to Rome by Saint Peter himself and sent to evangelize Ravenna, where he established the Christian community. His Acts describe multiple arrests, tortures, and exiles before his final martyrdom around 75 AD. The great Basilica of Sant''Apollinare in Classe outside Ravenna, built in the sixth century, is one of the jewels of Byzantine art and architecture and a testament to the antiquity of his cult. Though the historical details of his life are uncertain, his veneration as founder and patron of the Church of Ravenna is among the most ancient in the Latin West.',
  'c. 1st c.'
),
(
  'saint-cajetan',
  'Saint Cajetan',
  'Co-founder of the Theatines, Italian reformer who renewed priestly life through apostolic poverty and founded pawnshops for the poor.',
  'Gaetano di Thiene was born in 1480 in Vicenza to a noble Venetian family. After studies in Padua and service in the papal curia, he was ordained a priest and devoted himself entirely to charitable works and apostolic ministry. In 1524, with Gian Pietro Carafa (later Paul IV), he co-founded the Congregation of Clerks Regular (Theatines), a community of priests living in apostolic poverty without fixed revenues to renew priestly life by example. He also founded the first Christian monte di pieta (pawnshop) in Venice and Naples to combat usury. His spirituality centered on profound devotion to the Infant Jesus and to Providence. He died in Naples in 1547 and was canonized by Clement X in 1671.',
  '1480–1547'
),
(
  'saint-hyacinth-of-krakow',
  'Saint Hyacinth of Krakow',
  'Polish Dominican friar called the "Apostle of Poland," who evangelized vast regions of northern and eastern Europe.',
  'Hyacinth was born around 1185 of a noble Polish family and was received into the Dominican order personally by Saint Dominic in Rome around 1220. Returning to Poland, he became the instrument by which the Dominican order spread through Poland, Prussia, Pomerania, Denmark, Sweden, Norway, Lithuania, Russia, and beyond. He founded the Dominican province of Poland and traveled tirelessly through pagan and schismatic territories. A celebrated episode at Kiev describes him carrying the Blessed Sacrament and a heavy alabaster statue of the Virgin across a river while Mongols sacked the city. He died in Krakow in 1257. Clement VIII canonized him in 1594.',
  'c. 1185–1257'
),
(
  'saint-philip-benizi',
  'Saint Philip Benizi',
  'Florentine physician and Servite general, renowned for humility and peacemaking, who fled rather than accept the papacy.',
  'Philip Benizi was born in Florence in 1233 to a noble family. He studied medicine and philosophy at Paris and Padua, but after a mystical experience entered the Servite order as a lay brother in 1254. His extraordinary qualities led to rapid advancement: he was ordained a priest, became prior of several houses, and in 1267 was elected Superior General of the Servites, which he led for seventeen years with wisdom and energy. At the conclave of 1268 his name was proposed seriously for the papacy, whereupon he fled to a cave on Mount Senario to escape election. He worked for peace between the Guelphs and Ghibellines and helped spread the Servite order through Tuscany and Germany. He died in 1285 at Todi.',
  '1233–1285'
),
(
  'saint-raymond-nonnatus',
  'Saint Raymond Nonnatus',
  'Mercedarian cardinal who offered himself as a hostage to ransom Christian slaves in North Africa and had his lips padlocked for preaching.',
  'Raymond was born in Portell, Catalonia, around 1204—his surname Nonnatus ("not born") reflecting the tradition that he was delivered by caesarean section after his mother died in labor. He entered the Mercedarian order, founded by Saint Peter Nolasco for the ransom of captives, and himself traveled to North Africa on ransom missions. He reportedly gave himself as a hostage when ransom money ran out, remaining in captivity in Algeria. The Muslim authorities, enraged by his success in converting some of their people to Christianity, padlocked his lips to prevent preaching. He was ransomed and returned to Spain, where Gregory IX made him a cardinal. He died in 1240 near Barcelona. He is invoked as patron of midwives, pregnant women, and falsely accused persons.',
  'c. 1204–1240'
)
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code) DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'en', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
(
  'saint-lawrence-justinian',
  'Saint Lawrence Justinian',
  'First Patriarch of Venice and model of episcopal holiness, who governed his see with austerity while caring tenderly for the poor.',
  'Lawrence Justinian was born in Venice in 1381 to a patrician family. At nineteen he joined the canons regular of San Giorgio in Alga, an austere congregation. Despite his preference for hidden life, he was made bishop of Castello (Venice) in 1433 and became the first Patriarch of Venice in 1451. His administration was marked by the paradox of firm governance and personal extreme poverty: he gave away his revenues to the poor, slept on a straw mattress, fasted rigorously, and composed mystical works of great depth including The Lignum Vitae. He refused the cardinalate offered by Eugenius IV. He died in 1455 and was canonized by Alexander VIII in 1690.',
  '1381–1455'
),
(
  'saint-nicholas-of-tolentino',
  'Saint Nicholas of Tolentino',
  'Augustinian friar of Tolentino, renowned miracle-worker and consoler of souls in purgatory, whose arms bled miraculously.',
  'Nicholas was born around 1245 in Sant''Angelo in Pontano, in the Marches of Italy. His parents obtained him through prayer at the shrine of Saint Nicholas of Bari—hence his name. He entered the Augustinian order and was assigned to the friary of Tolentino, where he spent the rest of his life. His ministry to the poor, the sick, and sinners made him celebrated throughout central Italy. He was particularly known for his intercession for the souls in purgatory and for his nightly reparatory Masses. After his death in 1305, his preserved arms reportedly bled on several occasions, notably before great disasters. Eugene IV canonized him in 1446.',
  'c. 1245–1305'
),
(
  'saint-joseph-of-cupertino',
  'Saint Joseph of Cupertino',
  'Franciscan friar famed for mystical levitations during prayer, patron of aviators, pilots, and students taking exams.',
  'Joseph Desa was born in 1603 in Cupertino, Apulia, in a shed behind his family''s house after his father died in debtors'' prison. A slow and awkward child, he was rejected by the Franciscan Conventuals and by the Capuchins before being accepted as a stable hand. His extraordinary piety led to ordination in 1628. He soon became famous throughout Italy for miraculous levitations during Mass and prayer—reportedly over seventy witnessed events, observed by Pope Urban VIII, the Spanish ambassador, and Johann Friedrich of Brunswick among others. Repeatedly investigated by the Inquisition (always cleared), he was transferred between friaries to limit public commotion. He died at Osimo in 1663 and was canonized by Clement XIII in 1767. He is patron of pilots and students.',
  '1603–1663'
),
(
  'saint-thomas-of-villanova',
  'Saint Thomas of Villanova',
  'Augustinian friar and Archbishop of Valencia, the "Almsgiver" who spent his revenues entirely on the poor.',
  'Thomas of Villanova was born in 1486 in Fuenllana, Castile, and grew up in Villanueva de los Infantes. He studied at Alcala and entered the Augustinian order in 1516. After teaching philosophy and theology and serving as prior provincial, he was appointed Archbishop of Valencia in 1544 by Charles V—an appointment he accepted only under obedience. His eleven-year episcopate was defined by lavish and systematic charity: he distributed his revenues to beggars, foundlings, the sick, and ransoming slaves from North Africa, earning the title "Father of the Poor." His sermons were noted for their biblical depth and apostolic fire. He died in 1555, having distributed even his bed. Alexander VII canonized him in 1658.',
  '1486–1555'
),
(
  'saint-linus',
  'Saint Linus',
  'Second pope and Bishop of Rome, immediate successor of Saint Peter, venerated as a martyr.',
  'Linus is named in Paul''s Second Letter to Timothy as being in Rome with the apostle, and is identified by Irenaeus of Lyon as the first successor of Peter and Paul as Bishop of Rome. He governed the Roman Church from approximately 67 to 76 AD, during one of the most dangerous periods of imperial persecution. Tradition holds that he was martyred, and his name appears in the Roman Canon of the Mass alongside Cletus and Clement, attesting to the deep antiquity of his veneration. His origins are uncertain—one tradition makes him a Tuscan, the son of a man named Herculanus. His relics were traditionally held near the tomb of Peter on the Vatican hill.',
  '†c. 76'
),
(
  'saint-edward-the-confessor',
  'Saint Edward the Confessor',
  'Last Anglo-Saxon king of England before the Conquest, venerated for his piety, justice, and the foundation of Westminster Abbey.',
  'Edward was born around 1003, son of King Ethelred the Unready. After decades of exile in Normandy, he was recalled to the English throne in 1042. His reign was characterized by piety, the promotion of ecclesiastical reform, and a reputation for miracle-working and healing. He rebuilt Westminster Abbey, which was consecrated shortly before his death in January 1066. Though childless—tradition holds he and his wife Edith lived chastely—he left England a united kingdom. He died on January 5, 1066, and was canonized by Alexander III in 1161. His body, translated to a shrine in Westminster Abbey in 1163 by Thomas Becket, remains there today.',
  '1003–1066'
),
(
  'saint-callistus-i',
  'Saint Callistus I',
  'Pope and martyr, former slave who became Bishop of Rome and whose merciful policies toward sinners caused controversy with the rigorists.',
  'Callistus had a dramatic life before his papacy: born a slave, he was entrusted with a bank by his master which failed, was imprisoned, freed, again arrested, and sent to the mines of Sardinia before being freed through the influence of Pope Victor I. Under Zephyrinus he administered the Roman cemetery on the Appian Way now bearing his name. Elected pope in 217, he was opposed by the rigorist Hippolytus who disputed both his theology and his pastoral policies—particularly his readiness to reconcile apostates and adulterers through penance. His decrees on marriage, recognizing unions between free women and slaves as valid, were seen as revolutionary. He was martyred around 222, reportedly thrown into a well. The Catacombs of Callistus on the Appian Way are among the most important Christian archaeological sites in Rome.',
  '†c. 222'
),
(
  'saint-peter-of-alcantara',
  'Saint Peter of Alcantara',
  'Spanish Franciscan mystic and reformer, spiritual director of Saint Teresa of Avila, who lived in legendary austerity.',
  'Peter Garavito was born in 1499 in Alcantara, Extremadura. He entered the Franciscan order at sixteen and pursued a path of radical austerity that became legendary: he slept only one and a half hours per night, ate once every three days, wore no shoes, and his cell was reportedly too small to lie down in. He reformed the Franciscan order in Spain, founding the "Alcantarine" stricter observance. His most celebrated contribution to Church history was his role as spiritual director and advocate of Saint Teresa of Avila, whose mystical experiences he examined and confirmed when others doubted her. Teresa described him as wasted and emaciated, seeming made of roots and bark rather than flesh. He was canonized by Clement IX in 1669.',
  '1499–1562'
),
(
  'saint-hilarion',
  'Saint Hilarion',
  'Father of Palestinian monasticism, disciple of Saint Anthony the Great, who brought the eremitic life from Egypt to the Holy Land.',
  'Hilarion was born around 291 near Gaza in a pagan family. Sent to Alexandria for education, he encountered Christianity and converted. Hearing of Anthony the Great in Egypt, he visited him and then returned to Palestine to live as a hermit in the desert near Gaza. His holiness attracted many disciples and he became the founder of Palestinian monasticism. His fame spread throughout the East, and Jerome wrote a biography celebrating him as the equal of Anthony. Harassed by pilgrims and unwanted attention, he moved repeatedly—to Egypt, Dalmatia, Cyprus—always seeking solitude. He died in Cyprus around 371. His life is known chiefly through Jerome''s Life of Hilarion.',
  'c. 291–371'
)
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code) DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

INSERT INTO saint_translations (saint_id, locale_code, name, short_description, full_biography, life_label)
SELECT s.id, 'en', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
(
  'saint-andrew-avellino',
  'Saint Andrew Avellino',
  'Theatine priest of Naples, master novice-director and mystic who died at the altar while celebrating Mass.',
  'Lancelot Avellino was born in 1521 in Castronuovo, Basilicata. He practiced law before being ordained a priest. After breaking a promise thoughtlessly he resolved never again to speak an untruth, and this led him to enter the Theatine order in Naples in 1556, taking the name Andrew. He became a renowned spiritual director, forming numerous souls including Saint Charles Borromeo, who had him brought to Milan. He returned to Naples and spent decades as novice master and preacher, drawing vast crowds. He reportedly had the gift of reading consciences and of prophecy. On November 10, 1608, while beginning Mass, he suffered a stroke and died before the altar—a death he had long foretold and desired. Alexander VIII canonized him in 1712.',
  '1521–1608'
),
(
  'saint-didacus-of-alcala',
  'Saint Didacus of Alcala',
  'Franciscan lay brother who lived among the simple and the poor, venerated for miraculous healings and the odor of sanctity.',
  'Diego of Alcala (Didacus is the Latin form of Diego) was born around 1400 in San Nicolas del Puerto, Andalusia. He entered the Franciscan order as a lay brother, never seeking ordination. He served as a missionary in the Canary Islands and later in various Spanish friaries. His life was one of radical simplicity, manual labor, and contemplative prayer. He was stationed at the friary of Alcala de Henares, where he cared for the sick with great tenderness. He died there on November 12, 1463. His body remained incorrupt, and in 1562 Prince Don Carlos of Spain was reportedly cured from a mortal head wound after Didacus''s incorrupt body was laid beside him. Pius V canonized him in 1588.',
  'c. 1400–1463'
),
(
  'saint-gregory-thaumaturgus',
  'Saint Gregory Thaumaturgus',
  'Bishop of Neocaesarea in Pontus, student of Origen, whose miracles were so celebrated he earned the surname "Wonder-Worker."',
  'Gregory was born around 213 into a pagan noble family in Neocaesarea (modern Niksar, Turkey). He studied under Origen at Caesarea, where his conversion to Christianity was effected by that great teacher. Returning to Pontus, he reluctantly accepted the episcopate and set about evangelizing the region. According to tradition, he found seventeen Christians in Neocaesarea at his arrival and left only seventeen pagans at his death. His miracles—moving a mountain, diverting a river, healing the sick—gave him his surname Thaumaturgus (Wonder-Worker). He composed a celebrated Creed, the first such personal formulation of Trinitarian doctrine, and received a vision of the Virgin and Saint John the Evangelist. Gregory of Nyssa wrote his biography, celebrating him as the greatest bishop of the East after the apostolic age.',
  'c. 213–270'
),
(
  'saint-felix-of-valois',
  'Saint Felix of Valois',
  'French hermit and co-founder with John of Matha of the Order of the Most Holy Trinity for the ransom of captives.',
  'Felix of Valois was born around 1127, traditionally of the royal house of France. He lived as a hermit in the forest of Cerfroid near Meaux, where he was discovered by John of Matha around 1193. Together they received a vision of a white stag with a red and blue cross—the Trinitarian symbol—which they interpreted as a heavenly sign to found an order dedicated to ransoming Christian captives from the Moors. Traveling to Rome, they obtained papal approval from Innocent III in 1198 for the Order of the Most Holy Trinity. Felix helped establish the first Trinitarian house at Cerfroid and continued as a contemplative hermit within the order. He died around 1212. The Trinitarians regard him as co-founder with John of Matha.',
  'c. 1127–1212'
),
(
  'saint-sylvester-gozzolini',
  'Saint Sylvester Gozzolini',
  'Founder of the Silvestrine Benedictines, who withdrew from cathedral life to the wilderness of Monte Fano after meditating on a corpse.',
  'Sylvester Gozzolini was born in 1177 in Osimo in the Marches. He studied canon law and theology at Bologna and Padua, then became a cathedral canon at Osimo. A sermon on the corruption of the clergy deeply disturbed him; the sight of the decaying corpse of a bishop intensified his revulsion at worldly ambition. Around 1227 he withdrew to the solitude of Monte Fano near Fabriano, where disciples gathered around him. In 1231 he organized them as a Benedictine congregation with an austere rule, which became known as the Silvestrines. He governed his congregation until his death in 1267 at the age of ninety. The Silvestrine congregation he founded still exists and maintains monasteries in Italy, India, Sri Lanka, and elsewhere. Clement VIII canonized him in 1598.',
  'c. 1177–1267'
),
(
  'saint-saturninus-of-toulouse',
  'Saint Saturninus of Toulouse',
  'First bishop and martyr of Toulouse, dragged to death by a bull in the third century, one of the earliest missionaries to Gaul.',
  'Saturninus (Sernin in the local language) is venerated as the first bishop of Toulouse and one of the evangelists of Roman Gaul. According to tradition, he was sent from Rome in the third century and established the Christian community at Toulouse. He was martyred around 257 during the reign of Decius or Valerian. The manner of his death was dramatic: he was dragged down the steps of the Capitol in Toulouse by a bull that had been led there for sacrifice, his head split open and his body torn apart. The enormous Romanesque Basilica of Saint-Sernin in Toulouse—one of the major pilgrimage churches on the road to Compostela—was built over the site of his burial and bears his name. He is the patron saint of Toulouse.',
  '†c. 257'
),
(
  'saint-bibiana',
  'Saint Bibiana',
  'Roman virgin and martyr of the fourth century, tied to a column and beaten to death, patron of epileptics and headache sufferers.',
  'Bibiana (also known as Viviana) was a Roman Christian maiden who suffered martyrdom, according to tradition, around 363 during the persecution of Julian the Apostate. Her Acts describe how her family was destroyed: her father Flavian, a former prefect, was branded with a hot iron and left to die; her mother Dafrosa was beheaded; and Bibiana and her sister Demetria were left without resources to renounce their faith by want. Demetria died of shock at the judge''s feet; Bibiana was tied to a column and beaten with leaded cords until dead. Pope Simplicius built a basilica over her burial place on the Esquiline Hill. Pope Urban VIII renovated it in 1625 and commissioned the famous statue of the saint by Bernini, which still stands in the church. She is invoked against headaches and epilepsy.',
  '†c. 363'
),
(
  'saint-thomas-becket',
  'Saint Thomas Becket',
  'Archbishop of Canterbury and martyr, murdered in his cathedral by knights of King Henry II in 1170 for defending the freedom of the Church.',
  'Thomas Becket was born in London in 1118 of Norman parents. He rose through royal service to become Chancellor of England and close friend of Henry II, who appointed him Archbishop of Canterbury in 1162 hoping to control the Church through him. Instead, Thomas underwent a conversion of life and became a fierce defender of ecclesiastical liberties against royal encroachment. A prolonged conflict over the Constitutions of Clarendon drove him into exile in France for six years. Returning in 1170 after a partial reconciliation, he resumed the struggle. On December 29, 1170, four knights acting on the king''s angry words entered Canterbury Cathedral and struck him down at the altar steps. He was canonized by Alexander III in 1173—less than three years after his death—and his shrine at Canterbury became the most popular pilgrimage site in England until its destruction by Henry VIII.',
  '1118–1170'
),
(
  'saint-sylvester-i',
  'Saint Sylvester I',
  'Pope who governed the Church during the reign of Constantine the Great, overseeing the Council of Nicaea and the first great basilicas of Rome.',
  'Sylvester I served as Bishop of Rome from 314 to 335, during the transformative reign of the Emperor Constantine. Though he did not personally preside at the Council of Nicaea in 325 (he was represented by legates), that foundational council occurred during his pontificate and defined the Nicene Creed against Arianism. Constantine''s patronage enabled the construction of the first great Christian basilicas of Rome: the Lateran Basilica (consecrated in 324), Old Saint Peter''s on the Vatican, Santa Croce in Gerusalemme, and others. Rich legends accumulated around him, including the false Donation of Constantine; the historical Sylvester was primarily a consolidator of the Church''s new public status. He died on December 31, 335, and his feast is kept on the last day of the year.',
  '†335'
),
(
  'saint-giles-abbot',
  'Saint Giles',
  'Seventh-century hermit of Provence, patron of the poor, crippled, and outcast, whose shrine in southern France became a major pilgrimage site.',
  'Giles (Aegidius in Latin) was, according to tradition, a Greek or Athenian of noble birth who came to Gaul in the late seventh century to live as a hermit. He settled in a forest near the mouth of the Rhone, where he lived for years in solitude, nourished—it was said—by the milk of a hind. The hind''s flight from hunters led a Visigoth king to the hermit, and the king''s reverence for Giles led to the founding of a monastery at the site, over which Giles presided as abbot. He died around 710. His tomb at Saint-Gilles-du-Gard in Languedoc became one of the major pilgrimage centers of medieval Europe, visited by thousands on their way to Compostela. He was invoked especially for the poor, crippled, lepers, and nursing mothers, and is one of the Fourteen Holy Helpers.',
  'c. 640–710'
)
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug
ON CONFLICT (saint_id, locale_code) DO UPDATE SET
  name = EXCLUDED.name,
  short_description = EXCLUDED.short_description,
  full_biography = EXCLUDED.full_biography,
  life_label = EXCLUDED.life_label;

-- WIP
