-- =========================================================
-- Seed MVP - General Roman Calendar 1969
-- Assumes createTables.sql has already been executed
-- Default/internal content is in English
-- =========================================================

-- =========================================================
-- 1) Attributes
-- =========================================================

INSERT INTO attributes (code, category) VALUES
('KEYS', 'symbol'),
('ROOSTER', 'symbol'),
('FISHERMAN', 'title'),
('BEARD', 'symbol'),
('SWORD', 'symbol'),
('BOOK', 'symbol'),
('BALD', 'symbol'),
('ROSES', 'symbol'),
('CARMELITE_HABIT', 'order'),
('ANIMALS', 'symbol'),
('STIGMATA', 'title'),
('BROWN_HABIT', 'order'),
('ARMOR', 'symbol'),
('BANNER', 'symbol'),
('BURNING_HEART', 'symbol'),
('DOMINICAN_HABIT', 'order'),
('BISHOPS_COLLAR', 'title'),
('THORN_WOUND', 'symbol'),
('GRIDIRON', 'symbol'),
('DALMATIC', 'title'),
('ROSARY', 'symbol'),
('PEASANT_DRESS', 'symbol'),
('MITRE', 'title'),
('PERFUME_JAR', 'symbol'),
('LONG_HAIR', 'symbol'),
('MARTYR', 'title'),
('VIRGIN', 'title'),
('DOCTOR_OF_THE_CHURCH', 'title'),
('BISHOP', 'title'),
('POPE', 'title'),
('APOSTLE', 'title');

INSERT INTO attribute_translations (attribute_id, locale_code, label, description)
SELECT a.id, 'en', x.label, x.description
FROM attributes a
JOIN (VALUES
    ('KEYS', 'Keys', 'Traditional symbol of Saint Peter and authority in the Church.'),
    ('ROOSTER', 'Rooster', 'Reminder of Peter’s denial before the cock crowed.'),
    ('FISHERMAN', 'Fisherman', 'Reference to the apostolic call of Peter and Andrew.'),
    ('BEARD', 'Beard', 'Common iconographic feature in sacred art.'),
    ('SWORD', 'Sword', 'Attribute of Saint Paul and symbol of martyrdom and the Word.'),
    ('BOOK', 'Book', 'Symbol of teaching, Scripture, and doctrine.'),
    ('BALD', 'Bald', 'Common iconographic trait in depictions of Saint Paul.'),
    ('ROSES', 'Roses', 'Associated with Thérèse of Lisieux and grace.'),
    ('CARMELITE_HABIT', 'Carmelite habit', 'Sign of belonging to the Carmelite order.'),
    ('ANIMALS', 'Animals', 'Attribute associated with Saint Francis of Assisi.'),
    ('STIGMATA', 'Stigmata', 'Marks of Christ’s Passion received by certain saints.'),
    ('BROWN_HABIT', 'Brown habit', 'Common Franciscan habit.'),
    ('ARMOR', 'Armor', 'Attribute associated with Saint Joan of Arc.'),
    ('BANNER', 'Banner', 'Military and sacred standard carried by Joan of Arc.'),
    ('BURNING_HEART', 'Burning heart', 'Attribute of Saint Augustine.'),
    ('DOMINICAN_HABIT', 'Dominican habit', 'Sign of Dominican spirituality or affiliation.'),
    ('BISHOPS_COLLAR', 'Bishop’s collar', 'Symbolic episcopal vesture.'),
    ('THORN_WOUND', 'Thorn wound', 'Associated with Saint Rita’s union with the Passion.'),
    ('GRIDIRON', 'Gridiron', 'Traditional symbol of Saint Lawrence.'),
    ('DALMATIC', 'Dalmatic', 'Vestment of a deacon.'),
    ('ROSARY', 'Rosary', 'Prayer beads and Marian devotion.'),
    ('PEASANT_DRESS', 'Peasant dress', 'Simple rural clothing associated with Bernadette.'),
    ('MITRE', 'Mitre', 'Episcopal headgear.'),
    ('PERFUME_JAR', 'Perfume jar', 'Traditional attribute of Mary Magdalene.'),
    ('LONG_HAIR', 'Long hair', 'Traditional iconographic trait of Mary Magdalene.'),
    ('MARTYR', 'Martyr', 'Title given to a saint who died for the faith.'),
    ('VIRGIN', 'Virgin', 'Title used in hagiography and liturgy.'),
    ('DOCTOR_OF_THE_CHURCH', 'Doctor of the Church', 'Title given to major teachers of the faith.'),
    ('BISHOP', 'Bishop', 'Ecclesial office and hagiographical title.'),
    ('POPE', 'Pope', 'Title used for the Bishop of Rome.'),
    ('APOSTLE', 'Apostle', 'Title for the apostles of Christ.')
) AS x(code, label, description)
ON a.code = x.code;

INSERT INTO attribute_translations (attribute_id, locale_code, label, description)
SELECT a.id, 'fr', x.label, x.description
FROM attributes a
JOIN (VALUES
    ('KEYS', 'Clés', 'Symbole traditionnel de saint Pierre et de l’autorité dans l’Église.'),
    ('ROOSTER', 'Coq', 'Rappel du reniement de Pierre avant le chant du coq.'),
    ('FISHERMAN', 'Pêcheur', 'Référence à l’appel apostolique de Pierre et André.'),
    ('BEARD', 'Barbe', 'Trait iconographique fréquent dans l’art sacré.'),
    ('SWORD', 'Épée', 'Attribut de saint Paul et symbole du martyre et de la Parole.'),
    ('BOOK', 'Livre', 'Symbole de l’enseignement, de l’Écriture et de la doctrine.'),
    ('BALD', 'Chauve', 'Trait iconographique fréquent de saint Paul.'),
    ('ROSES', 'Roses', 'Associées à Thérèse de Lisieux et à la grâce.'),
    ('CARMELITE_HABIT', 'Habit carmélite', 'Signe d’appartenance au Carmel.'),
    ('ANIMALS', 'Animaux', 'Attribut associé à saint François d’Assise.'),
    ('STIGMATA', 'Stigmates', 'Marques de la Passion du Christ reçues par certains saints.'),
    ('BROWN_HABIT', 'Habit brun', 'Habit franciscain traditionnel.'),
    ('ARMOR', 'Armure', 'Attribut associé à sainte Jeanne d’Arc.'),
    ('BANNER', 'Drapeau', 'Étendard militaire et sacré porté par Jeanne d’Arc.'),
    ('BURNING_HEART', 'Cœur enflammé', 'Attribut de saint Augustin.'),
    ('DOMINICAN_HABIT', 'Habit dominicain', 'Signe de spiritualité ou d’appartenance dominicaine.'),
    ('BISHOPS_COLLAR', 'Col d’évêque', 'Vêtement symbolique de l’épiscopat.'),
    ('THORN_WOUND', 'Blessure d’épine', 'Associée à l’union de sainte Rita à la Passion.'),
    ('GRIDIRON', 'Gril', 'Symbole traditionnel de saint Laurent.'),
    ('DALMATIC', 'Dalmatique', 'Vêtement propre au diacre.'),
    ('ROSARY', 'Chapelet', 'Objet de prière et de dévotion mariale.'),
    ('PEASANT_DRESS', 'Habit de paysanne', 'Vêtement simple associé à Bernadette.'),
    ('MITRE', 'Mitre', 'Coiffure épiscopale.'),
    ('PERFUME_JAR', 'Vase de parfum', 'Attribut traditionnel de Marie-Madeleine.'),
    ('LONG_HAIR', 'Cheveux longs', 'Trait iconographique traditionnel de Marie-Madeleine.'),
    ('MARTYR', 'Martyr', 'Titre donné à un saint mort pour la foi.'),
    ('VIRGIN', 'Vierge', 'Titre utilisé dans l’hagiographie et la liturgie.'),
    ('DOCTOR_OF_THE_CHURCH', 'Docteur de l’Église', 'Titre donné aux grands maîtres de la foi.'),
    ('BISHOP', 'Évêque', 'Charge ecclésiale et titre hagiographique.'),
    ('POPE', 'Pape', 'Titre de l’évêque de Rome.'),
    ('APOSTLE', 'Apôtre', 'Titre des apôtres du Christ.')
) AS x(code, label, description)
ON a.code = x.code;

-- =========================================================
-- 2) Patronages
-- =========================================================

INSERT INTO patronages (code) VALUES
('FISHERS'),
('POPES'),
('ROME'),
('MISSIONARIES'),
('WRITERS'),
('PRESS'),
('FRANCE'),
('FLORISTS'),
('ANIMALS'),
('ECOLOGISTS'),
('ITALY'),
('SOLDIERS'),
('CAPTIVES'),
('THEOLOGIANS'),
('PRINTERS'),
('NURSES'),
('EUROPE'),
('JOURNALISTS'),
('DESPERATE_CAUSES'),
('COUPLES'),
('COOKS'),
('POOR'),
('SICK'),
('SHEPHERDS'),
('CATECHISTS'),
('JERUSALEM'),
('HAIRDRESSERS'),
('PENITENTS');

INSERT INTO patronage_translations (patronage_id, locale_code, label, description)
SELECT p.id, 'en', x.label, x.description
FROM patronages p
JOIN (VALUES
    ('FISHERS', 'Fishers', 'Patronage of fishers and fishermen.'),
    ('POPES', 'Popes', 'Patronage connected with the papacy.'),
    ('ROME', 'Rome', 'Patronage of the city of Rome.'),
    ('MISSIONARIES', 'Missionaries', 'Patronage of missionary work.'),
    ('WRITERS', 'Writers', 'Patronage of writers and authors.'),
    ('PRESS', 'Press', 'Patronage of media and press professions.'),
    ('FRANCE', 'France', 'Patronage related to France.'),
    ('FLORISTS', 'Florists', 'Patronage of florists and flower-related trades.'),
    ('ANIMALS', 'Animals', 'Patronage of animals.'),
    ('ECOLOGISTS', 'Ecologists', 'Patronage of ecology and care for creation.'),
    ('ITALY', 'Italy', 'Patronage related to Italy.'),
    ('SOLDIERS', 'Soldiers', 'Patronage of military personnel.'),
    ('CAPTIVES', 'Captives', 'Patronage of prisoners and captives.'),
    ('THEOLOGIANS', 'Theologians', 'Patronage of theologians.'),
    ('PRINTERS', 'Printers', 'Patronage of printers and publishing.'),
    ('NURSES', 'Nurses', 'Patronage of nurses and caregivers.'),
    ('EUROPE', 'Europe', 'Patronage related to Europe.'),
    ('JOURNALISTS', 'Journalists', 'Patronage of journalists.'),
    ('DESPERATE_CAUSES', 'Desperate causes', 'Invoked in impossible or desperate situations.'),
    ('COUPLES', 'Couples', 'Patronage of married couples and family life.'),
    ('COOKS', 'Cooks', 'Patronage of cooks and kitchen workers.'),
    ('POOR', 'Poor', 'Patronage of the poor.'),
    ('SICK', 'Sick', 'Patronage of the sick.'),
    ('SHEPHERDS', 'Shepherds', 'Patronage of shepherds.'),
    ('CATECHISTS', 'Catechists', 'Patronage of catechists and teachers of the faith.'),
    ('JERUSALEM', 'Jerusalem', 'Patronage related to Jerusalem.'),
    ('HAIRDRESSERS', 'Hairdressers', 'Patronage of hairdressers.'),
    ('PENITENTS', 'Penitents', 'Patronage of penitents.')
) AS x(code, label, description)
ON p.code = x.code;

INSERT INTO patronage_translations (patronage_id, locale_code, label, description)
SELECT p.id, 'fr', x.label, x.description
FROM patronages p
JOIN (VALUES
    ('FISHERS', 'Pêcheurs', 'Patronage des pêcheurs.'),
    ('POPES', 'Papes', 'Patronage lié à la papauté.'),
    ('ROME', 'Rome', 'Patronage de la ville de Rome.'),
    ('MISSIONARIES', 'Missionnaires', 'Patronage de l’activité missionnaire.'),
    ('WRITERS', 'Écrivains', 'Patronage des écrivains et auteurs.'),
    ('PRESS', 'Presse', 'Patronage des métiers de la presse.'),
    ('FRANCE', 'France', 'Patronage lié à la France.'),
    ('FLORISTS', 'Floristes', 'Patronage des fleuristes.'),
    ('ANIMALS', 'Animaux', 'Patronage des animaux.'),
    ('ECOLOGISTS', 'Écologistes', 'Patronage de l’écologie et du soin de la création.'),
    ('ITALY', 'Italie', 'Patronage lié à l’Italie.'),
    ('SOLDIERS', 'Soldats', 'Patronage des militaires.'),
    ('CAPTIVES', 'Captifs', 'Patronage des prisonniers et des captifs.'),
    ('THEOLOGIANS', 'Théologiens', 'Patronage des théologiens.'),
    ('PRINTERS', 'Imprimeurs', 'Patronage des imprimeurs et de l’édition.'),
    ('NURSES', 'Infirmières', 'Patronage des infirmières et soignants.'),
    ('EUROPE', 'Europe', 'Patronage lié à l’Europe.'),
    ('JOURNALISTS', 'Journalistes', 'Patronage des journalistes.'),
    ('DESPERATE_CAUSES', 'Causes désespérées', 'Invoqué dans les situations impossibles ou désespérées.'),
    ('COUPLES', 'Couples', 'Patronage des couples et de la vie familiale.'),
    ('COOKS', 'Cuisiniers', 'Patronage des cuisiniers.'),
    ('POOR', 'Pauvres', 'Patronage des pauvres.'),
    ('SICK', 'Malades', 'Patronage des malades.'),
    ('SHEPHERDS', 'Bergers', 'Patronage des bergers.'),
    ('CATECHISTS', 'Catéchistes', 'Patronage des catéchistes et enseignants de la foi.'),
    ('JERUSALEM', 'Jérusalem', 'Patronage lié à Jérusalem.'),
    ('HAIRDRESSERS', 'Coiffeurs', 'Patronage des coiffeurs.'),
    ('PENITENTS', 'Pénitents', 'Patronage des pénitents.')
) AS x(code, label, description)
ON p.code = x.code;

-- =========================================================
-- 3) Saints
-- =========================================================

INSERT INTO saints (
    slug,
    default_name,
    birth_year,
    death_year,
    death_is_approximate,
    century,
    short_description,
    image_url
) VALUES
('saint-joseph', 'Saint Joseph', NULL, NULL, TRUE, 1, 'Spouse of the Virgin Mary and patron of the universal Church.', NULL),
('saint-peter', 'Saint Peter', NULL, 64, TRUE, 1, 'Apostle, leader of the Apostles and first bishop of Rome.', '/saints-pic/Saint Peter as Pope - Peter Paul Rubens.jpg'),
('saint-paul', 'Saint Paul', NULL, 67, TRUE, 1, 'Apostle to the nations, converted on the road to Damascus.', '/saints-pic/Paul_Guercino.jpg'),
('saint-john-the-baptist', 'Saint John the Baptist', NULL, NULL, TRUE, 1, 'Forerunner of Christ, son of Zechariah and Elizabeth.', NULL),
('saint-mary', 'Saint Mary', NULL, NULL, TRUE, 1, 'Mother of Jesus Christ, honored under many titles in the liturgy.', NULL),
('saint-therese-of-lisieux', 'Saint Thérèse of Lisieux', 1873, 1897, FALSE, 19, 'Carmelite nun, Doctor of the Church, and witness of the little way.', '/saints-pic/sainte-therese-de-lenfant-jesus-pluie-de-roses.jpg'),
('saint-francis-of-assisi', 'Saint Francis of Assisi', 1181, 1226, TRUE, 13, 'Founder of the Franciscans and patron of animals and ecology.', '/saints-pic/St_Francis_of_Assisi_at_Prayer_-_Esteban_Murillo.jpg'),
('saint-joan-of-arc', 'Saint Joan of Arc', 1412, 1431, FALSE, 15, 'Virgin, patriot, and martyr; secondary patroness of France.', '/saints-pic/Jeanne_d''arc_écoutant_les_voix-_-Benouville.jpg'),
('saint-augustine-of-hippo', 'Saint Augustine of Hippo', 354, 430, FALSE, 4, 'Bishop, Doctor of the Church, and major Christian theologian.', '/saints-pic/Saint_Augustine-_-Philippe_de_Champaigne.jpg'),
('saint-catherine-of-siena', 'Saint Catherine of Siena', 1347, 1380, FALSE, 14, 'Dominican tertiary, mystic, Doctor of the Church, and co-patroness of Europe.', '/saints-pic/Sainte_Catherine_-_Giovanni_Battista_Tiepolo.jpg'),
('saint-francis-de-sales', 'Saint Francis de Sales', 1567, 1622, FALSE, 16, 'Bishop, spiritual writer, and patron saint of journalists and writers.', '/saints-pic/St. Francis de Sales.jpg'),
('saint-rita-of-cascia', 'Saint Rita of Cascia', 1381, 1457, FALSE, 15, 'Augustinian nun invoked in difficult and desperate causes.', '/saints-pic/SANTA-RITA.jpg'),
('saint-lawrence', 'Saint Lawrence', NULL, 258, FALSE, 3, 'Roman deacon and martyr, renowned for charity toward the poor.', '/saints-pic/Laurent.jpg'),
('saint-bernadette-soubirous', 'Saint Bernadette Soubirous', 1844, 1879, FALSE, 19, 'Visionary of Lourdes, known for humility, prayer, and fidelity.', '/saints-pic/st-bernadette-soubirous-cc-Manolo-Guallart.jpg'),
('saint-cyril-of-jerusalem', 'Saint Cyril of Jerusalem', 315, 387, TRUE, 4, 'Bishop, catechist, and Doctor of the Church.', '/saints-pic/Bartolozzi_St_Cyril_of_Jerusalem.jpg'),
('saint-mary-magdalene', 'Saint Mary Magdalene', NULL, NULL, TRUE, 1, 'Disciple of the Lord and first witness of the Resurrection.', '/saints-pic/Maria_Magdalene_by_Caravaggio.jpg');

INSERT INTO saint_translations (
    saint_id,
    locale_code,
    name,
    short_description,
    full_biography,
    life_label
)
SELECT s.id, 'en', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
    ('saint-joseph', 'Saint Joseph', 'Spouse of the Virgin Mary and patron of the universal Church.', 'Saint Joseph is honored as the spouse of the Virgin Mary and guardian of the Christ Child.', '1st century'),
    ('saint-peter', 'Saint Peter', 'Apostle, leader of the Apostles and first bishop of Rome.', 'Saint Peter, called by Christ, is regarded as the leader of the Apostles and the first pope.', '1st century'),
    ('saint-paul', 'Saint Paul', 'Apostle to the nations, converted on the road to Damascus.', 'Saint Paul, once a persecutor of Christians, became one of the greatest proclaimers of the Gospel.', '1st century'),
    ('saint-john-the-baptist', 'Saint John the Baptist', 'Forerunner of Christ, son of Zechariah and Elizabeth.', 'Saint John the Baptist prepared the way of the Lord and baptized Jesus in the Jordan.', '1st century'),
    ('saint-mary', 'Saint Mary', 'Mother of Jesus Christ, honored under many titles in the liturgy.', 'The Blessed Virgin Mary holds a central place in the liturgy of the Church.', '1st century'),
    ('saint-therese-of-lisieux', 'Saint Thérèse of Lisieux', 'Carmelite nun, Doctor of the Church, and witness of the little way.', 'Saint Thérèse of Lisieux is a French Carmelite whose spirituality of trust and surrender has touched the whole world.', '1873–1897'),
    ('saint-francis-of-assisi', 'Saint Francis of Assisi', 'Founder of the Franciscans and patron of animals and ecology.', 'Saint Francis of Assisi embraced evangelical poverty and left an immense spiritual legacy.', 'c. 1181–1226'),
    ('saint-joan-of-arc', 'Saint Joan of Arc', 'Virgin, French heroine, and martyr.', 'Saint Joan of Arc led the French armies and later died as a martyr at Rouen.', '1412–1431'),
    ('saint-augustine-of-hippo', 'Saint Augustine of Hippo', 'Bishop, Doctor of the Church, and major Christian theologian.', 'Saint Augustine deeply shaped Western theology through his major works.', '354–430'),
    ('saint-catherine-of-siena', 'Saint Catherine of Siena', 'Dominican tertiary, mystic, Doctor of the Church, and co-patroness of Europe.', 'Saint Catherine of Siena was a major spiritual and political figure of the fourteenth century.', '1347–1380'),
    ('saint-francis-de-sales', 'Saint Francis de Sales', 'Bishop, spiritual writer, and patron of journalists.', 'Saint Francis de Sales is known for his gentleness, pedagogy, and spiritual writings.', '1567–1622'),
    ('saint-rita-of-cascia', 'Saint Rita of Cascia', 'Augustinian nun invoked in difficult causes.', 'Saint Rita is widely known as the saint of impossible causes.', '1381–1457'),
    ('saint-lawrence', 'Saint Lawrence', 'Roman deacon and martyr, famous for charity toward the poor.', 'Saint Lawrence was martyred in Rome and remains one of the Church’s most beloved saints.', '3rd century'),
    ('saint-bernadette-soubirous', 'Saint Bernadette Soubirous', 'Visionary of Lourdes and model of humility and prayer.', 'Saint Bernadette received the apparitions of the Virgin Mary at Lourdes in 1858.', '1844–1879'),
    ('saint-cyril-of-jerusalem', 'Saint Cyril of Jerusalem', 'Bishop, catechist, and Doctor of the Church.', 'Saint Cyril of Jerusalem is known for his catechetical lectures and defense of Nicene faith.', 'c. 315–387'),
    ('saint-mary-magdalene', 'Saint Mary Magdalene', 'Disciple of the Lord and first witness of the Resurrection.', 'Saint Mary Magdalene is called the apostle to the apostles in Christian tradition.', '1st century')
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug;

INSERT INTO saint_translations (
    saint_id,
    locale_code,
    name,
    short_description,
    full_biography,
    life_label
)
SELECT s.id, 'fr', x.name, x.short_description, x.full_biography, x.life_label
FROM saints s
JOIN (VALUES
    ('saint-joseph', 'Saint Joseph', 'Époux de la Vierge Marie et patron de l’Église universelle.', 'Saint Joseph est vénéré comme l’époux de la Vierge Marie et le gardien du Christ enfant.', 'Ier siècle'),
    ('saint-peter', 'Saint Pierre', 'Apôtre, chef des Apôtres et premier évêque de Rome.', 'Saint Pierre, appelé par le Christ, est considéré comme le chef des Apôtres et le premier pape.', 'Ier siècle'),
    ('saint-paul', 'Saint Paul', 'Apôtre des nations, converti sur le chemin de Damas.', 'Saint Paul, ancien persécuteur des chrétiens, devint l’un des plus grands annonciateurs de l’Évangile.', 'Ier siècle'),
    ('saint-john-the-baptist', 'Saint Jean-Baptiste', 'Précurseur du Christ, fils de Zacharie et d’Élisabeth.', 'Saint Jean-Baptiste prépare les chemins du Seigneur et baptise Jésus dans le Jourdain.', 'Ier siècle'),
    ('saint-mary', 'Sainte Marie', 'Mère de Jésus-Christ, honorée sous de nombreux titres dans la liturgie.', 'La bienheureuse Vierge Marie occupe une place centrale dans la liturgie de l’Église.', 'Ier siècle'),
    ('saint-therese-of-lisieux', 'Sainte Thérèse de Lisieux', 'Carmélite, docteur de l’Église, et témoin de la petite voie.', 'Sainte Thérèse de Lisieux est une carmélite française dont la spiritualité de confiance et d’abandon a marqué le monde entier.', '1873–1897'),
    ('saint-francis-of-assisi', 'Saint François d''Assise', 'Fondateur des franciscains et patron des animaux et de l’écologie.', 'Saint François d’Assise a embrassé la pauvreté évangélique et laissé un héritage spirituel immense.', '1181–1226'),
    ('saint-joan-of-arc', 'Sainte Jeanne d''Arc', 'Vierge, héroïne française et martyre.', 'Sainte Jeanne d’Arc mena les armées françaises avant de mourir martyre à Rouen.', '1412–1431'),
    ('saint-augustine-of-hippo', 'Saint Augustin d''Hippone', 'Évêque, docteur de l’Église et grand théologien chrétien.', 'Saint Augustin a profondément marqué la théologie occidentale par ses œuvres majeures.', '354–430'),
    ('saint-catherine-of-siena', 'Sainte Catherine de Sienne', 'Mystique dominicaine, docteur de l’Église et co-patronne de l’Europe.', 'Sainte Catherine de Sienne fut une grande figure spirituelle et politique du XIVe siècle.', '1347–1380'),
    ('saint-francis-de-sales', 'Saint François de Sales', 'Évêque, écrivain spirituel et patron des journalistes.', 'Saint François de Sales est reconnu pour sa douceur, sa pédagogie et ses écrits spirituels.', '1567–1622'),
    ('saint-rita-of-cascia', 'Sainte Rita de Cascia', 'Religieuse augustine invoquée dans les causes difficiles.', 'Sainte Rita est connue comme la sainte des causes désespérées.', '1381–1457'),
    ('saint-lawrence', 'Saint Laurent', 'Diacre romain et martyr, célèbre pour sa charité envers les pauvres.', 'Saint Laurent fut martyrisé à Rome et demeure l’un des saints les plus populaires de l’Église.', 'IIIe siècle'),
    ('saint-bernadette-soubirous', 'Sainte Bernadette Soubirous', 'Voyante de Lourdes, modèle d’humilité et de prière.', 'Sainte Bernadette reçut les apparitions de la Vierge Marie à Lourdes en 1858.', '1844–1879'),
    ('saint-cyril-of-jerusalem', 'Saint Cyrille de Jérusalem', 'Évêque, catéchiste et docteur de l’Église.', 'Saint Cyrille de Jérusalem est connu pour ses catéchèses et sa défense de la foi nicéenne.', 'vers 315–387'),
    ('saint-mary-magdalene', 'Sainte Marie-Madeleine', 'Disciple du Seigneur et premier témoin de la Résurrection.', 'Sainte Marie-Madeleine est appelée l’apôtre des apôtres dans la tradition chrétienne.', 'Ier siècle')
) AS x(slug, name, short_description, full_biography, life_label)
ON s.slug = x.slug;

-- =========================================================
-- 4) Saint <-> attributes
-- =========================================================

INSERT INTO saint_attributes (saint_id, attribute_id)
SELECT s.id, a.id
FROM saints s
JOIN attributes a ON a.code = x.attribute_code
JOIN (VALUES
    ('saint-peter', 'KEYS'),
    ('saint-peter', 'ROOSTER'),
    ('saint-peter', 'FISHERMAN'),
    ('saint-peter', 'BEARD'),
    ('saint-peter', 'APOSTLE'),
    ('saint-peter', 'POPE'),
    ('saint-paul', 'SWORD'),
    ('saint-paul', 'BOOK'),
    ('saint-paul', 'BALD'),
    ('saint-paul', 'APOSTLE'),
    ('saint-john-the-baptist', 'MARTYR'),
    ('saint-therese-of-lisieux', 'ROSES'),
    ('saint-therese-of-lisieux', 'CARMELITE_HABIT'),
    ('saint-therese-of-lisieux', 'DOCTOR_OF_THE_CHURCH'),
    ('saint-francis-of-assisi', 'ANIMALS'),
    ('saint-francis-of-assisi', 'STIGMATA'),
    ('saint-francis-of-assisi', 'BROWN_HABIT'),
    ('saint-joan-of-arc', 'ARMOR'),
    ('saint-joan-of-arc', 'SWORD'),
    ('saint-joan-of-arc', 'BANNER'),
    ('saint-joan-of-arc', 'MARTYR'),
    ('saint-joan-of-arc', 'VIRGIN'),
    ('saint-augustine-of-hippo', 'BOOK'),
    ('saint-augustine-of-hippo', 'BURNING_HEART'),
    ('saint-augustine-of-hippo', 'DOCTOR_OF_THE_CHURCH'),
    ('saint-augustine-of-hippo', 'BISHOP'),
    ('saint-catherine-of-siena', 'ROSES'),
    ('saint-catherine-of-siena', 'DOMINICAN_HABIT'),
    ('saint-catherine-of-siena', 'DOCTOR_OF_THE_CHURCH'),
    ('saint-catherine-of-siena', 'VIRGIN'),
    ('saint-francis-de-sales', 'BOOK'),
    ('saint-francis-de-sales', 'BISHOPS_COLLAR'),
    ('saint-francis-de-sales', 'DOCTOR_OF_THE_CHURCH'),
    ('saint-francis-de-sales', 'BISHOP'),
    ('saint-rita-of-cascia', 'ROSES'),
    ('saint-rita-of-cascia', 'THORN_WOUND'),
    ('saint-lawrence', 'GRIDIRON'),
    ('saint-lawrence', 'DALMATIC'),
    ('saint-lawrence', 'MARTYR'),
    ('saint-bernadette-soubirous', 'ROSARY'),
    ('saint-bernadette-soubirous', 'PEASANT_DRESS'),
    ('saint-cyril-of-jerusalem', 'BOOK'),
    ('saint-cyril-of-jerusalem', 'MITRE'),
    ('saint-cyril-of-jerusalem', 'DOCTOR_OF_THE_CHURCH'),
    ('saint-cyril-of-jerusalem', 'BISHOP'),
    ('saint-mary-magdalene', 'PERFUME_JAR'),
    ('saint-mary-magdalene', 'LONG_HAIR')
) AS x(saint_slug, attribute_code)
ON s.slug = x.saint_slug;

-- =========================================================
-- 5) Saint <-> patronages
-- =========================================================

INSERT INTO saint_patronages (saint_id, patronage_id)
SELECT s.id, p.id
FROM saints s
JOIN patronages p ON p.code = x.patronage_code
JOIN (VALUES
    ('saint-peter', 'FISHERS'),
    ('saint-peter', 'POPES'),
    ('saint-peter', 'ROME'),
    ('saint-paul', 'MISSIONARIES'),
    ('saint-paul', 'WRITERS'),
    ('saint-paul', 'PRESS'),
    ('saint-therese-of-lisieux', 'MISSIONARIES'),
    ('saint-therese-of-lisieux', 'FRANCE'),
    ('saint-therese-of-lisieux', 'FLORISTS'),
    ('saint-francis-of-assisi', 'ANIMALS'),
    ('saint-francis-of-assisi', 'ECOLOGISTS'),
    ('saint-francis-of-assisi', 'ITALY'),
    ('saint-joan-of-arc', 'FRANCE'),
    ('saint-joan-of-arc', 'SOLDIERS'),
    ('saint-joan-of-arc', 'CAPTIVES'),
    ('saint-augustine-of-hippo', 'THEOLOGIANS'),
    ('saint-augustine-of-hippo', 'PRINTERS'),
    ('saint-catherine-of-siena', 'NURSES'),
    ('saint-catherine-of-siena', 'ITALY'),
    ('saint-catherine-of-siena', 'EUROPE'),
    ('saint-francis-de-sales', 'JOURNALISTS'),
    ('saint-francis-de-sales', 'WRITERS'),
    ('saint-rita-of-cascia', 'DESPERATE_CAUSES'),
    ('saint-rita-of-cascia', 'COUPLES'),
    ('saint-lawrence', 'COOKS'),
    ('saint-lawrence', 'POOR'),
    ('saint-bernadette-soubirous', 'SICK'),
    ('saint-bernadette-soubirous', 'SHEPHERDS'),
    ('saint-cyril-of-jerusalem', 'CATECHISTS'),
    ('saint-cyril-of-jerusalem', 'JERUSALEM'),
    ('saint-mary-magdalene', 'HAIRDRESSERS'),
    ('saint-mary-magdalene', 'PENITENTS')
) AS x(saint_slug, patronage_code)
ON s.slug = x.saint_slug;

-- =========================================================
-- 6) Feasts
-- =========================================================

INSERT INTO feasts (slug, default_name, feast_type) VALUES
('mary-mother-of-god', 'Mary, Mother of God', 'marian'),
('conversion-of-saint-paul', 'Conversion of Saint Paul', 'saint'),
('presentation-of-the-lord', 'Presentation of the Lord', 'christological'),
('chair-of-saint-peter', 'Chair of Saint Peter', 'saint'),
('saint-joseph', 'Saint Joseph, Spouse of the Blessed Virgin Mary', 'saint'),
('annunciation-of-the-lord', 'Annunciation of the Lord', 'christological'),
('saint-cyril-of-jerusalem', 'Saint Cyril of Jerusalem', 'saint'),
('saint-bernadette-soubirous', 'Saint Bernadette Soubirous', 'saint'),
('saint-catherine-of-siena', 'Saint Catherine of Siena', 'saint'),
('saint-rita-of-cascia', 'Saint Rita of Cascia', 'saint'),
('nativity-of-saint-john-the-baptist', 'Nativity of Saint John the Baptist', 'saint'),
('saints-peter-and-paul', 'Saints Peter and Paul, Apostles', 'saint'),
('saint-mary-magdalene', 'Saint Mary Magdalene', 'saint'),
('saint-lawrence', 'Saint Lawrence', 'saint'),
('assumption-of-the-blessed-virgin-mary', 'Assumption of the Blessed Virgin Mary', 'marian'),
('saint-augustine-of-hippo', 'Saint Augustine of Hippo', 'saint'),
('saint-therese-of-lisieux', 'Saint Thérèse of Lisieux', 'saint'),
('saint-francis-of-assisi', 'Saint Francis of Assisi', 'saint'),
('all-saints', 'All Saints', 'other'),
('immaculate-conception', 'Immaculate Conception of the Blessed Virgin Mary', 'marian'),
('nativity-of-the-lord', 'Nativity of the Lord', 'christological'),
('saint-francis-de-sales', 'Saint Francis de Sales', 'saint');


INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
    ('mary-mother-of-god', 'Mary, Mother of God', 'Marian solemnity celebrated on January 1 in the Roman calendar.'),
    ('conversion-of-saint-paul', 'Conversion of Saint Paul', 'Feast commemorating the conversion of the Apostle to the nations.'),
    ('presentation-of-the-lord', 'Presentation of the Lord', 'Feast of the Lord celebrated forty days after Christmas.'),
    ('chair-of-saint-peter', 'Chair of Saint Peter', 'Feast of the pastoral authority entrusted to the Apostle Peter.'),
    ('saint-joseph', 'Saint Joseph, Spouse of the Blessed Virgin Mary', 'Solemnity of Saint Joseph in the Roman calendar.'),
    ('annunciation-of-the-lord', 'Annunciation of the Lord', 'Solemnity of the announcement made to the Virgin Mary.'),
    ('saint-cyril-of-jerusalem', 'Saint Cyril of Jerusalem', 'Memorial of Saint Cyril of Jerusalem, bishop and Doctor of the Church.'),
    ('saint-bernadette-soubirous', 'Saint Bernadette Soubirous', 'Memorial of Saint Bernadette, visionary of Lourdes.'),
    ('saint-catherine-of-siena', 'Saint Catherine of Siena', 'Memorial of Saint Catherine of Siena, Doctor of the Church.'),
    ('saint-rita-of-cascia', 'Saint Rita of Cascia', 'Popular memorial included for testing.'),
    ('nativity-of-saint-john-the-baptist', 'Nativity of Saint John the Baptist', 'Solemnity of the birth of the Forerunner.'),
    ('saints-peter-and-paul', 'Saints Peter and Paul, Apostles', 'Solemnity of the two great Apostles of Rome.'),
    ('saint-mary-magdalene', 'Saint Mary Magdalene', 'Feast of Saint Mary Magdalene.'),
    ('saint-lawrence', 'Saint Lawrence', 'Feast of Saint Lawrence, deacon and martyr.'),
    ('assumption-of-the-blessed-virgin-mary', 'Assumption of the Blessed Virgin Mary', 'Marian solemnity on August 15.'),
    ('saint-augustine-of-hippo', 'Saint Augustine of Hippo', 'Memorial of Saint Augustine, bishop and Doctor of the Church.'),
    ('saint-therese-of-lisieux', 'Saint Thérèse of Lisieux', 'Memorial of Saint Thérèse of the Child Jesus, Doctor of the Church.'),
    ('saint-francis-of-assisi', 'Saint Francis of Assisi', 'Memorial of Saint Francis of Assisi.'),
    ('all-saints', 'All Saints', 'Solemnity of all known and unknown saints.'),
    ('immaculate-conception', 'Immaculate Conception of the Blessed Virgin Mary', 'Marian solemnity on December 8.'),
    ('nativity-of-the-lord', 'Nativity of the Lord', 'Solemnity of Christmas.'),
    ('saint-francis-de-sales', 'Saint Francis de Sales', 'Memorial of Saint Francis de Sales, bishop and Doctor of the Church.')
) AS x(slug, name, description)
ON f.slug = x.slug;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
    ('mary-mother-of-god', 'Sainte Marie, Mère de Dieu', 'Solennité mariale célébrée le 1er janvier dans le calendrier romain.'),
    ('conversion-of-saint-paul', 'Conversion de saint Paul', 'Fête commémorant la conversion de l’Apôtre des nations.'),
    ('presentation-of-the-lord', 'Présentation du Seigneur', 'Fête du Seigneur célébrée quarante jours après Noël.'),
    ('chair-of-saint-peter', 'Chaire de saint Pierre', 'Fête de l’autorité pastorale confiée à l’Apôtre Pierre.'),
    ('saint-joseph', 'Saint Joseph, époux de la Vierge Marie', 'Solennité de saint Joseph dans le calendrier romain.'),
    ('annunciation-of-the-lord', 'Annonciation du Seigneur', 'Solennité de l’annonce faite à la Vierge Marie.'),
    ('saint-cyril-of-jerusalem', 'Saint Cyrille de Jérusalem', 'Mémoire de saint Cyrille de Jérusalem, évêque et docteur de l’Église.'),
    ('saint-bernadette-soubirous', 'Sainte Bernadette Soubirous', 'Mémoire de sainte Bernadette, voyante de Lourdes.'),
    ('saint-catherine-of-siena', 'Sainte Catherine de Sienne', 'Mémoire de sainte Catherine de Sienne, docteur de l’Église.'),
    ('saint-rita-of-cascia', 'Sainte Rita de Cascia', 'Mémoire populaire ajoutée pour test.'),
    ('nativity-of-saint-john-the-baptist', 'Nativité de saint Jean-Baptiste', 'Solennité de la naissance du Précurseur.'),
    ('saints-peter-and-paul', 'Saints Pierre et Paul, apôtres', 'Solennité des deux grands Apôtres de Rome.'),
    ('saint-mary-magdalene', 'Sainte Marie-Madeleine', 'Fête de sainte Marie-Madeleine.'),
    ('saint-lawrence', 'Saint Laurent', 'Fête de saint Laurent, diacre et martyr.'),
    ('assumption-of-the-blessed-virgin-mary', 'Assomption de la Bienheureuse Vierge Marie', 'Solennité mariale du 15 août.'),
    ('saint-augustine-of-hippo', 'Saint Augustin d’Hippone', 'Mémoire de saint Augustin, évêque et docteur de l’Église.'),
    ('saint-therese-of-lisieux', 'Sainte Thérèse de Lisieux', 'Mémoire de sainte Thérèse de l’Enfant-Jésus, docteur de l’Église.'),
    ('saint-francis-of-assisi', 'Saint François d’Assise', 'Mémoire de saint François d’Assise.'),
    ('all-saints', 'Tous les Saints', 'Solennité de tous les saints connus et inconnus.'),
    ('immaculate-conception', 'Immaculée Conception de la Bienheureuse Vierge Marie', 'Solennité mariale du 8 décembre.'),
    ('nativity-of-the-lord', 'Nativité du Seigneur', 'Solennité de Noël.'),
    ('saint-francis-de-sales', 'Saint François de Sales', 'Mémoire de saint François de Sales, évêque et docteur de l’Église.')
) AS x(slug, name, description)
ON f.slug = x.slug;

-- =========================================================
-- 7) Feast dates
-- =========================================================

INSERT INTO feast_dates (
    feast_id,
    calendar_id,
    date_kind,
    month,
    day,
    notes
)
SELECT f.id, c.id, 'fixed', x.month, x.day, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN (VALUES
    ('mary-mother-of-god', 1, 1, 'Fixed date in the General Roman Calendar'),
    ('saint-francis-de-sales', 1, 24, 'Fixed date in the General Roman Calendar'),
    ('conversion-of-saint-paul', 1, 25, 'Fixed date in the General Roman Calendar'),
    ('presentation-of-the-lord', 2, 2, 'Fixed date in the General Roman Calendar'),
    ('chair-of-saint-peter', 2, 22, 'Fixed date in the General Roman Calendar'),
    ('saint-cyril-of-jerusalem', 3, 18, 'Fixed date in the General Roman Calendar'),
    ('saint-joseph', 3, 19, 'Fixed date in the General Roman Calendar'),
    ('annunciation-of-the-lord', 3, 25, 'Fixed date in the General Roman Calendar'),
    ('saint-bernadette-soubirous', 4, 16, 'Included from mock data for testing'),
    ('saint-catherine-of-siena', 4, 29, 'Fixed date in the General Roman Calendar'),
    ('saint-rita-of-cascia', 5, 22, 'Included from mock data for testing'),
    ('nativity-of-saint-john-the-baptist', 6, 24, 'Fixed date in the General Roman Calendar'),
    ('saints-peter-and-paul', 6, 29, 'Fixed date in the General Roman Calendar'),
    ('saint-mary-magdalene', 7, 22, 'Fixed date in the General Roman Calendar'),
    ('saint-lawrence', 8, 10, 'Fixed date in the General Roman Calendar'),
    ('assumption-of-the-blessed-virgin-mary', 8, 15, 'Fixed date in the General Roman Calendar'),
    ('saint-augustine-of-hippo', 8, 28, 'Fixed date in the General Roman Calendar'),
    ('saint-therese-of-lisieux', 10, 1, 'Fixed date in the General Roman Calendar'),
    ('saint-francis-of-assisi', 10, 4, 'Fixed date in the General Roman Calendar'),
    ('all-saints', 11, 1, 'Fixed date in the General Roman Calendar'),
    ('immaculate-conception', 12, 8, 'Fixed date in the General Roman Calendar'),
    ('nativity-of-the-lord', 12, 25, 'Fixed date in the General Roman Calendar')
) AS x(slug, month, day, notes)
ON f.slug = x.slug;

-- =========================================================
-- 8) Celebrations
-- =========================================================

WITH celebration_data(slug, rank_code, color_code, notes) AS (
    VALUES
        ('mary-mother-of-god', 'SOLEMNITY', 'WHITE', 'Marian solemnity'),
        ('saint-francis-de-sales', 'MEM_OBL', 'WHITE', 'Memorial of Saint Francis de Sales'),
        ('conversion-of-saint-paul', 'FEAST', 'WHITE', 'Feast of Saint Paul'),
        ('presentation-of-the-lord', 'FEAST', 'WHITE', 'Feast of the Lord'),
        ('chair-of-saint-peter', 'FEAST', 'WHITE', 'Feast of Saint Peter'),
        ('saint-cyril-of-jerusalem', 'MEM_OPT', 'WHITE', 'Optional memorial for testing'),
        ('saint-joseph', 'SOLEMNITY', 'WHITE', 'Solemnity of Saint Joseph'),
        ('annunciation-of-the-lord', 'SOLEMNITY', 'WHITE', 'Solemnity of the Lord'),
        ('saint-bernadette-soubirous', 'MEM_OPT', 'WHITE', 'Optional memorial included from mock data'),
        ('saint-catherine-of-siena', 'MEM_OBL', 'WHITE', 'Memorial of Saint Catherine of Siena'),
        ('saint-rita-of-cascia', 'MEM_OPT', 'WHITE', 'Optional memorial included from mock data'),
        ('nativity-of-saint-john-the-baptist', 'SOLEMNITY', 'WHITE', 'Solemnity of Saint John the Baptist'),
        ('saints-peter-and-paul', 'SOLEMNITY', 'RED', 'Solemnity of Saints Peter and Paul'),
        ('saint-mary-magdalene', 'FEAST', 'WHITE', 'Feast of Saint Mary Magdalene'),
        ('saint-lawrence', 'FEAST', 'RED', 'Feast of Saint Lawrence'),
        ('assumption-of-the-blessed-virgin-mary', 'SOLEMNITY', 'WHITE', 'Marian solemnity'),
        ('saint-augustine-of-hippo', 'MEM_OBL', 'WHITE', 'Memorial of Saint Augustine'),
        ('saint-therese-of-lisieux', 'MEM_OBL', 'WHITE', 'Memorial of Saint Thérèse of Lisieux'),
        ('saint-francis-of-assisi', 'MEM_OBL', 'WHITE', 'Memorial of Saint Francis of Assisi'),
        ('all-saints', 'SOLEMNITY', 'WHITE', 'Solemnity of All Saints'),
        ('immaculate-conception', 'SOLEMNITY', 'WHITE', 'Marian solemnity'),
        ('nativity-of-the-lord', 'SOLEMNITY', 'WHITE', 'Christmas solemnity')
)
INSERT INTO celebrations (
    feast_id,
    calendar_id,
    rank_id,
    color_id,
    is_optional,
    notes
)
SELECT
    f.id,
    c.id,
    r.id,
    lc.id,
    (cd.rank_code = 'MEM_OPT'),
    cd.notes
FROM celebration_data cd
JOIN feasts f ON f.slug = cd.slug
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = cd.rank_code
JOIN liturgical_colors lc ON lc.code = cd.color_code;

-- =========================================================
-- 9) Celebration <-> saints
-- =========================================================

INSERT INTO celebration_saints (
    celebration_id,
    saint_id,
    role
)
SELECT ce.id, s.id, x.role
FROM celebrations ce
JOIN feasts f ON f.id = ce.feast_id
JOIN saints s ON s.slug = x.saint_slug
JOIN (VALUES
    ('mary-mother-of-god', 'saint-mary', 'principal'),
    ('conversion-of-saint-paul', 'saint-paul', 'principal'),
    ('chair-of-saint-peter', 'saint-peter', 'principal'),
    ('saint-cyril-of-jerusalem', 'saint-cyril-of-jerusalem', 'principal'),
    ('saint-joseph', 'saint-joseph', 'principal'),
    ('saint-bernadette-soubirous', 'saint-bernadette-soubirous', 'principal'),
    ('saint-catherine-of-siena', 'saint-catherine-of-siena', 'principal'),
    ('saint-rita-of-cascia', 'saint-rita-of-cascia', 'principal'),
    ('nativity-of-saint-john-the-baptist', 'saint-john-the-baptist', 'principal'),
    ('saints-peter-and-paul', 'saint-peter', 'principal'),
    ('saints-peter-and-paul', 'saint-paul', 'principal'),
    ('saint-mary-magdalene', 'saint-mary-magdalene', 'principal'),
    ('saint-lawrence', 'saint-lawrence', 'principal'),
    ('assumption-of-the-blessed-virgin-mary', 'saint-mary', 'principal'),
    ('saint-augustine-of-hippo', 'saint-augustine-of-hippo', 'principal'),
    ('saint-therese-of-lisieux', 'saint-therese-of-lisieux', 'principal'),
    ('saint-francis-of-assisi', 'saint-francis-of-assisi', 'principal'),
    ('immaculate-conception', 'saint-mary', 'principal'),
    ('saint-francis-de-sales', 'saint-francis-de-sales', 'principal')
) AS x(feast_slug, saint_slug, role)
ON f.slug = x.feast_slug
WHERE ce.calendar_id = (
    SELECT id FROM calendars WHERE code = 'ROMAN_GENERAL_1969'
);
