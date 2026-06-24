BEGIN;

-- =====================================================
-- SEED: ATTRIBUTES & TRANSLATIONS
-- Calendrier romain général
-- =====================================================
-- Run order: after seedRomanSaints.sql
-- Sources: Catholic Encyclopedia, Butler's Lives of the Saints,
--          Iconographie de l'art chrétien (Réau), Vatican.va
-- =====================================================


-- =====================================================
-- 1) ATTRIBUTES
-- =====================================================

INSERT INTO attributes (code, category) VALUES

-- --- SYMBOLES ICONOGRAPHIQUES ---
('LILY',              'symbol'),  -- Lys blanc (pureté, virginité)
('SWORD',             'symbol'),  -- Épée (martyre, autorité)
('BOOK',              'symbol'),  -- Livre (Évangile, écrits, sagesse)
('PALM',              'symbol'),  -- Palme (martyre)
('CROSS',             'symbol'),  -- Croix (passion, foi)
('SKULL',             'symbol'),  -- Crâne (memento mori, pénitence)
('WHEEL',             'symbol'),  -- Roue (supplice de sainte Catherine)
('KEYS',              'symbol'),  -- Clés (pouvoir des clés – Pierre ; maison – Marthe)
('GRIDIRON',          'symbol'),  -- Gril (martyre de Laurent et Vincent)
('ARROWS',            'symbol'),  -- Flèches (martyre de Sébastien)
('FISH',              'symbol'),  -- Poisson (pêcheurs apostoliques ; sermon d'Antoine)
('ANCHOR',            'symbol'),  -- Ancre (espérance ; noyade de Clément I)
('EAGLE',             'symbol'),  -- Aigle (symbole de Jean l'Évangéliste)
('LION',              'symbol'),  -- Lion (symbole de Marc ; Ignace dévoré)
('OX',                'symbol'),  -- Bœuf ailé (symbole de Luc l'Évangéliste)
('DOVE',              'symbol'),  -- Colombe (Esprit Saint ; visions mystiques)
('FLAMING_HEART',     'symbol'),  -- Cœur enflammé (amour ardent, mystique)
('CHAINS',            'symbol'),  -- Chaînes (captivité, libération)
('FLAMES',            'symbol'),  -- Flammes (martyre par le feu ; visions de feu)
('ROSES',             'symbol'),  -- Roses (prodige marial ; charité ; Thérèse)
('SHELL',             'symbol'),  -- Coquille (baptême ; pèlerinage)
('PEN',               'symbol'),  -- Plume (Docteurs, auteurs sacrés)
('DRAGON',            'symbol'),  -- Dragon (victoire sur le mal ; saint Georges)
('LANCE',             'symbol'),  -- Lance (apostolat ; martyre)
('STIGMATA',          'symbol'),  -- Stigmates (plaies du Christ – François, Padre Pio)
('AXE',               'symbol'),  -- Hache (martyre par décapitation)
('BELL',              'symbol'),  -- Cloche (Antoine abbé ; processions)
('PIG',               'symbol'),  -- Cochon (Antoine abbé – gardien des animaux)
('CROWN',             'symbol'),  -- Couronne (royauté ; martyre couronné)
('CROWN_OF_THORNS',   'symbol'),  -- Couronne d'épines (compassion à la Passion)
('CHILD_JESUS',       'symbol'),  -- Enfant Jésus (vision mystique ; Antoine, Joseph)
('ORGAN',             'symbol'),  -- Orgue (Cécile, patronne des musiciens)
('ROSARY',            'symbol'),  -- Chapelet (Dominique ; dévotion mariale)
('MITRE',             'symbol'),  -- Mitre (dignité épiscopale ou papale)
('CROSIER',           'symbol'),  -- Crosse (abbés et évêques)
('STONES',            'symbol'),  -- Pierres (lapidation d'Étienne)
('SALTIRE',           'symbol'),  -- Croix en sautoir (croix d'André en X)
('SAW',               'symbol'),  -- Scie (martyre de Simon l'Apôtre)
('SCALLOP_SHELL',     'symbol'),  -- Coquille Saint-Jacques (pèlerinage à Saint-Jacques)
('PILGRIM_STAFF',     'symbol'),  -- Bourdon (pèlerins ; Jacques, Louis)
('THREE_GOLDEN_BALLS','symbol'),  -- Trois boules d'or (générosité – Nicolas de Myre)
('MONSTRANCE',        'symbol'),  -- Ostensoir (Eucharistie – Claire, Norbert, Eymard)
('CHALICE',           'symbol'),  -- Calice (Eucharistie ; martyre de Jean l'Apôtre)
('TAU_CROSS',         'symbol'),  -- Croix en tau (François d'Assise ; Antoine abbé)
('LAMB',              'symbol'),  -- Agneau (Agnès ; Jean-Baptiste – Agnus Dei)
('JAR_OF_OINTMENT',   'symbol'),  -- Vase à parfum (Marie-Madeleine ; Marie de Béthanie)
('EYES',              'symbol'),  -- Yeux (Lucie – yeux arrachés)
('COINS',             'symbol'),  -- Pièces de monnaie (Matthieu publicain)
('BROOM',             'symbol'),  -- Balai (Marthe, Martin de Porres – service humble)
('CARPENTER_SQUARE',  'symbol'),  -- Équerre (Joseph charpentier ; Thomas apôtre bâtisseur)
('KNIFE',             'symbol'),  -- Couteau (Barthélemy – écorché vif)
('HALBERD',           'symbol'),  -- Hallebarde (Matthieu – martyre en Éthiopie)
('SCAPULAR',          'symbol'),  -- Scapulaire (Notre-Dame du Carmel)
('TILMA',             'symbol'),  -- Tilma (manteau de Juan Diego – image de Guadalupe)
('RAYS_OF_MERCY',     'symbol'),  -- Rayons de la Miséricorde (Faustine – image de la Miséricorde)
('LAMP',              'symbol'),  -- Lampe (Lucie – lumière dans les ténèbres)
('SHAMROCK',          'symbol'),  -- Trèfle à trois feuilles (Patrick – Trinité)
('SERPENT',           'symbol'),  -- Serpent (Patrick – chassa les serpents d'Irlande)
('TRUMPET',           'symbol'),  -- Trompette (Vincent Ferrier – ange du Jugement)
('IHS_MONOGRAM',      'symbol'),  -- Monogramme IHS (Bernardin de Sienne ; Jésuites)
('CANDLE',            'symbol'),  -- Cierge (Blaise – guérison des gorges ; Chandeleur)
('STAR',              'symbol'),  -- Étoile (Thomas d'Aquin ; Dominique ; Bruno)
('WINGS',             'symbol'),  -- Ailes d'ange (Françoise de Rome – ange visible ; Vincent Ferrier)
('BREAD',             'symbol'),  -- Pain (Élisabeth de Hongrie – charité envers les pauvres)
('VEIL',              'symbol'),  -- Voile (Marie, femmes saintes – modestie et virginité)

-- --- TITRES HAGIOGRAPHIQUES ---
('MARTYR',            'title'),   -- A versé son sang pour la foi
('VIRGIN',            'title'),   -- Virginité consacrée
('CONFESSOR',         'title'),   -- A confessé la foi sans mort violente
('DOCTOR_OF_THE_CHURCH','title'), -- Docteur de l'Église universelle
('APOSTLE',           'title'),   -- Un des Douze (ou assimilé)
('EVANGELIST',        'title'),   -- Auteur d'un Évangile canonique
('POPE',              'title'),   -- Évêque de Rome, Successeur de Pierre
('BISHOP',            'title'),   -- Évêque ordonné
('ABBOT',             'title'),   -- Père d'une communauté monastique
('ABBESS',            'title'),   -- Mère d'une communauté monastique féminine
('PRIEST',            'title'),   -- Prêtre ordonné
('DEACON',            'title'),   -- Diacre ordonné
('RELIGIOUS',         'title'),   -- Consacré(e) par vœux religieux
('HERMIT',            'title'),   -- Ermite, vie solitaire de prière
('PROPHET',           'title'),   -- Prophète, précurseur ou porte-parole de Dieu
('KING',              'title'),   -- Souverain (roi, reine, prince) canonisé
('QUEEN',             'title'),   -- Reine canonisée

-- --- ORDRES ET FAMILLES RELIGIEUSES ---
('BENEDICTINE',           'order'),
('CISTERCIAN',            'order'),
('CAMALDOLESE',           'order'),
('DOMINICAN',             'order'),
('FRANCISCAN',            'order'),
('POOR_CLARES',           'order'),
('JESUIT',                'order'),
('CARMELITE',             'order'),
('AUGUSTINIAN',           'order'),
('PREMONSTRATENSIAN',     'order'),
('THEATINE',              'order'),
('SALESIAN',              'order'),
('PASSIONIST',            'order'),
('REDEMPTORIST',          'order'),
('ORATORIAN',             'order'),
('VINCENTIAN',            'order'),
('BASILIAN',              'order'),
('CARTHUSIAN',            'order'),
('URSULINE',              'order'),
('VISITANDINE',           'order'),
('PIARIST',               'order'),
('CAMILLANS',             'order'),
('HOSPITALLER_OF_ST_JOHN','order'),
('BIRGITTINE',            'order'),
('CLARETIAN',             'order'),
('MISSIONARY_OF_CHARITY', 'order'),
('BARNABITE',             'order'),
('DE_LA_SALLE_BROTHERS',  'order'),
('MONTFORTIAN',           'order'),
('EUDISTS',               'order'),
('MARIST',                'order'),
('SOMASCHI',              'order'),
('CANOSSIAN',             'order')

ON CONFLICT (code) DO NOTHING;


-- =====================================================
-- 2) TRANSLATIONS – English (en)
-- =====================================================

INSERT INTO attribute_translations (attribute_id, locale_code, label, description)
SELECT a.id, 'en', x.label, x.description
FROM attributes a
JOIN (VALUES
  -- Symbols
  ('LILY',              'Lily',                   'White lily, symbol of purity and virginity.'),
  ('SWORD',             'Sword',                  'Symbol of martyrdom, spiritual combat, or authority.'),
  ('BOOK',              'Book',                   'Gospel, sacred writings, or the wisdom of Doctors.'),
  ('PALM',              'Palm branch',            'Crown of martyrdom; victory over death.'),
  ('CROSS',             'Cross',                  'The instrument of Christ''s Passion; sign of faith.'),
  ('SKULL',             'Skull',                  'Memento mori; penitence and contemplation of death.'),
  ('WHEEL',             'Wheel',                  'Instrument of torture, especially of Saint Catherine of Alexandria.'),
  ('KEYS',              'Keys',                   'Keys of the Kingdom (Peter); keys of the household (Martha).'),
  ('GRIDIRON',          'Gridiron',               'Instrument of martyrdom of Saints Lawrence and Vincent.'),
  ('ARROWS',            'Arrows',                 'Instrument of martyrdom of Saint Sebastian.'),
  ('FISH',              'Fish',                   'Sign of apostolic fishermen; Anthony preaching to fish.'),
  ('ANCHOR',            'Anchor',                 'Symbol of hope; Saint Clement I was drowned with an anchor.'),
  ('EAGLE',             'Eagle',                  'Symbolic animal of Saint John the Evangelist.'),
  ('LION',              'Lion',                   'Symbolic animal of Saint Mark; Ignatius devoured by lions.'),
  ('OX',                'Winged ox',              'Symbolic animal of Saint Luke the Evangelist.'),
  ('DOVE',              'Dove',                   'Holy Spirit; mystical visions of Gregory, Scholastica, Fabian.'),
  ('FLAMING_HEART',     'Flaming heart',          'Burning love for God; Augustine, Catherine of Siena, Teresa of Ávila.'),
  ('CHAINS',            'Chains',                 'Captivity, liberation, or service to those in chains.'),
  ('FLAMES',            'Flames',                 'Martyrdom by fire; visions of fire in mystical experience.'),
  ('ROSES',             'Roses',                  'Miraculous roses; charity; Little Flower; Our Lady of Guadalupe.'),
  ('SHELL',             'Shell',                  'Baptismal water; pilgrimage association.'),
  ('PEN',               'Pen / Quill',            'Attribute of Doctors, historians, and sacred writers.'),
  ('DRAGON',            'Dragon',                 'Defeat of evil; Saint George slaying the dragon.'),
  ('LANCE',             'Lance',                  'Apostolic mission; instrument of martyrdom.'),
  ('STIGMATA',          'Stigmata',               'The five wounds of Christ received by Francis and Padre Pio.'),
  ('AXE',               'Axe',                    'Instrument of beheading; martyrdom of Fisher, Josaphat, Chanel.'),
  ('BELL',              'Bell',                   'Associated with Anthony Abbot as guardian of animals.'),
  ('PIG',               'Pig',                    'Anthony Abbot, protector of farm animals.'),
  ('CROWN',             'Crown',                  'Royal dignity; the crown of martyrdom; queenship of Mary.'),
  ('CROWN_OF_THORNS',   'Crown of thorns',        'Compassionate sharing in Christ''s Passion.'),
  ('CHILD_JESUS',       'Christ Child',           'Mystical vision: Anthony of Padua, Joseph, guardian of the infant.'),
  ('ORGAN',             'Pipe organ',             'Saint Cecilia, patron of sacred music.'),
  ('ROSARY',            'Rosary',                 'Marian prayer; attributed to Dominic; popes and missionaries.'),
  ('MITRE',             'Mitre',                  'Episcopal or papal dignity.'),
  ('CROSIER',           'Crosier',                'Pastoral staff of bishops and abbots.'),
  ('STONES',            'Stones',                 'Lapidation; martyrdom of Saint Stephen the first martyr.'),
  ('SALTIRE',           'Saltire (X-cross)',      'The diagonal cross on which Saint Andrew was crucified.'),
  ('SAW',               'Saw',                    'Instrument of martyrdom of Saint Simon the Apostle.'),
  ('SCALLOP_SHELL',     'Scallop shell',          'Emblem of pilgrimage to Santiago de Compostela; Saint James.'),
  ('PILGRIM_STAFF',     'Pilgrim''s staff',       'Pilgrimage: James the Greater, Louis IX, Bridget of Sweden.'),
  ('THREE_GOLDEN_BALLS','Three golden balls',     'Saint Nicholas, who provided dowries for three poor girls.'),
  ('MONSTRANCE',        'Monstrance',             'Eucharistic adoration: Clare, Norbert, Peter Julian Eymard.'),
  ('CHALICE',           'Chalice',                'Eucharist; John''s poisoned chalice; priestly ministry.'),
  ('TAU_CROSS',         'Tau cross',              'T-shaped cross of Francis of Assisi; also of Anthony Abbot.'),
  ('LAMB',              'Lamb',                   'Agnes (Agnus = lamb); John Baptist – Agnus Dei.'),
  ('JAR_OF_OINTMENT',   'Jar of ointment',        'Mary Magdalene and Mary of Bethany anointing Christ.'),
  ('EYES',              'Eyes on a dish',         'Saint Lucy, whose eyes were removed during her martyrdom.'),
  ('COINS',             'Coins',                  'Saint Matthew, the tax collector.'),
  ('BROOM',             'Broom',                  'Humble service: Martha of Bethany, Martin de Porres.'),
  ('CARPENTER_SQUARE',  'Carpenter''s square',    'Saint Joseph the carpenter; Thomas, who built a church in India.'),
  ('KNIFE',             'Knife',                  'Saint Bartholomew, martyred by flaying.'),
  ('HALBERD',           'Halberd',                'Instrument of martyrdom of Saint Matthew.'),
  ('SCAPULAR',          'Scapular',               'The Brown Scapular of Our Lady of Mount Carmel.'),
  ('TILMA',             'Tilma',                  'Juan Diego''s cloak bearing the image of Our Lady of Guadalupe.'),
  ('RAYS_OF_MERCY',     'Rays of Divine Mercy',   'Red and white rays in the Divine Mercy image of Faustina.'),
  ('LAMP',              'Lamp',                   'Saint Lucy, bringer of light; also Fatima Marian iconography.'),
  ('SHAMROCK',          'Shamrock',               'Saint Patrick''s symbol for explaining the Trinity.'),
  ('SERPENT',           'Serpent',                'Saint Patrick, who drove the serpents from Ireland.'),
  ('TRUMPET',           'Trumpet',                'Vincent Ferrer as the angel of the Last Judgment.'),
  ('IHS_MONOGRAM',      'IHS monogram',           'Christogram (Iesus Hominum Salvator): Bernardine, Ignatius, Jesuits.'),
  ('CANDLE',            'Candle',                 'Saint Blaise blessing throats with two crossed candles.'),
  ('STAR',              'Star',                   'Thomas Aquinas; star on Dominic''s brow; Bruno''s seven stars.'),
  ('WINGS',             'Angel wings',            'Frances of Rome (visible guardian angel); Vincent Ferrer (angel of Judgment).'),
  ('BREAD',             'Bread',                  'Elizabeth of Hungary, whose alms miraculously became roses.'),
  ('VEIL',              'Veil',					  'Mary, holy women, and consecrated virgins; modesty and virginity.'),
  -- Titles
  ('MARTYR',            'Martyr',                 'One who shed their blood as witness to the Christian faith.'),
  ('VIRGIN',            'Virgin',                 'Consecrated virginity as total offering to Christ.'),
  ('CONFESSOR',         'Confessor',              'One who heroically professed the faith without violent death.'),
  ('DOCTOR_OF_THE_CHURCH','Doctor of the Church', 'Recognized by the Church for eminent learning and sanctity.'),
  ('APOSTLE',           'Apostle',                'One of the Twelve or those who held apostolic mission.'),
  ('EVANGELIST',        'Evangelist',             'Author of one of the four canonical Gospels.'),
  ('POPE',              'Pope',                   'Bishop of Rome, Successor of Saint Peter.'),
  ('BISHOP',            'Bishop',                 'Ordained bishop in the Church.'),
  ('ABBOT',             'Abbot',                  'Father and head of a monastic community.'),
  ('ABBESS',            'Abbess',                 'Mother and head of a female monastic community.'),
  ('PRIEST',            'Priest',                 'Ordained priest in the Church.'),
  ('DEACON',            'Deacon',                 'Ordained deacon in the Church.'),
  ('RELIGIOUS',         'Religious',              'One consecrated to God by religious vows.'),
  ('HERMIT',            'Hermit',                 'One who lives in solitary prayer and penance.'),
  ('PROPHET',           'Prophet',                'One who speaks for God; forerunner or witness.'),
  ('KING',              'King / Prince',          'Canonized sovereign or royal personage.'),
  ('QUEEN',             'Queen',                  'Canonized queen or royal personage.'),
  -- Orders
  ('BENEDICTINE',           'Benedictine',                  'Order of Saint Benedict (O.S.B.), founded by Saint Benedict of Nursia.'),
  ('CISTERCIAN',            'Cistercian',                   'Order of Cistercians (O.Cist.), Benedictine reform founded at Cîteaux.'),
  ('CAMALDOLESE',           'Camaldolese',                  'Camaldolese Congregation (O.S.B.Cam.), eremitic Benedictine reform by Saint Romuald.'),
  ('DOMINICAN',             'Dominican',                    'Order of Friars Preachers (O.P.), founded by Saint Dominic.'),
  ('FRANCISCAN',            'Franciscan',                   'Order of Friars Minor (O.F.M.) and branches, founded by Saint Francis of Assisi.'),
  ('POOR_CLARES',           'Poor Clares',                  'Order of Saint Clare (O.S.C.), founded by Saint Clare of Assisi.'),
  ('JESUIT',                'Jesuit',                       'Society of Jesus (S.J.), founded by Saint Ignatius of Loyola.'),
  ('CARMELITE',             'Carmelite',                    'Order of Carmelites (O.Carm./O.C.D.), including Discalced branch of Teresa of Ávila.'),
  ('AUGUSTINIAN',           'Augustinian',                  'Order of Saint Augustine (O.S.A.), following the Rule of Saint Augustine.'),
  ('PREMONSTRATENSIAN',     'Premonstratensian',            'Order of Prémontré (O.Praem.), founded by Saint Norbert.'),
  ('THEATINE',              'Theatine',                     'Clerics Regular (C.R.), founded by Saint Cajetan and Gian Pietro Carafa.'),
  ('SALESIAN',              'Salesian',                     'Salesians of Don Bosco (S.D.B.), founded by Saint John Bosco.'),
  ('PASSIONIST',            'Passionist',                   'Congregation of the Passion (C.P.), founded by Saint Paul of the Cross.'),
  ('REDEMPTORIST',          'Redemptorist',                 'Congregation of the Most Holy Redeemer (C.SS.R.), founded by Saint Alphonsus Liguori.'),
  ('ORATORIAN',             'Oratorian',                    'Congregation of the Oratory (Cong. Orat.), founded by Saint Philip Neri.'),
  ('VINCENTIAN',            'Vincentian',                   'Congregation of the Mission (C.M.), founded by Saint Vincent de Paul.'),
  ('BASILIAN',              'Basilian',                     'Order of Saint Basil the Great (O.S.B.M.), Eastern Catholic monastic order.'),
  ('CARTHUSIAN',            'Carthusian',                   'Order of Carthusians (O. Cart.), founded by Saint Bruno of Cologne.'),
  ('URSULINE',              'Ursuline',                     'Company of Saint Ursula (O.S.U.), founded by Saint Angela Merici.'),
  ('VISITANDINE',           'Visitandine',                  'Order of the Visitation (V.H.M.), founded by Francis de Sales and Jane de Chantal.'),
  ('PIARIST',               'Piarist',                      'Order of Pious Schools (O.Sch.P.), founded by Saint Joseph Calasanz.'),
  ('CAMILLANS',             'Camillian',                    'Ministers of the Sick (O.M.I.), founded by Saint Camillus de Lellis.'),
  ('HOSPITALLER_OF_ST_JOHN','Hospitaller of Saint John of God','Brothers Hospitallers of Saint John of God (O.H.), founded by Saint John of God.'),
  ('BIRGITTINE',            'Birgittine',                   'Order of the Most Holy Saviour (O.SS.S.), founded by Saint Bridget of Sweden.'),
  ('CLARETIAN',             'Claretian',                    'Missionary Sons of the Immaculate Heart of Mary (C.M.F.), founded by Saint Anthony Mary Claret.'),
  ('MISSIONARY_OF_CHARITY', 'Missionary of Charity',        'Missionaries of Charity (M.C.), founded by Saint Teresa of Calcutta.'),
  ('BARNABITE',             'Barnabite',                    'Clerics Regular of Saint Paul (C.R.S.P.), founded by Saint Anthony Zaccaria.'),
  ('DE_LA_SALLE_BROTHERS',  'Brothers of the Christian Schools','Institute of the Brothers of the Christian Schools (F.S.C.), founded by Saint John Baptist de La Salle.'),
  ('MONTFORTIAN',           'Montfortian',                  'Company of Mary (S.M.M.), founded by Saint Louis Grignion de Montfort.'),
  ('EUDISTS',               'Eudist',                       'Congregation of Jesus and Mary (C.J.M.), founded by Saint John Eudes.'),
  ('MARIST',                'Marist',                       'Society of Mary – Marist Fathers (S.M.), associated with Saint Peter Chanel.'),
  ('SOMASCHI',              'Somascan',                     'Clerics Regular of Somasca (C.R.S.), founded by Saint Jerome Emiliani.'),
  ('CANOSSIAN',             'Canossian',                    'Canossian Daughters of Charity (F.d.C.C.); Saint Josephine Bakhita was Canossian.')
) AS x(code, label, description)
ON a.code = x.code
ON CONFLICT (attribute_id, locale_code) DO UPDATE
  SET label = EXCLUDED.label, description = EXCLUDED.description;


-- =====================================================
-- 3) TRANSLATIONS – Français (fr)
-- =====================================================

INSERT INTO attribute_translations (attribute_id, locale_code, label, description)
SELECT a.id, 'fr', x.label, x.description
FROM attributes a
JOIN (VALUES
  -- Symboles
  ('LILY',              'Lys',                        'Lys blanc, symbole de pureté et de virginité consacrée.'),
  ('SWORD',             'Épée',                       'Symbole du martyre, de l''autorité ou du combat spirituel.'),
  ('BOOK',              'Livre',                      'Évangile, écrits sacrés ou sagesse des Docteurs.'),
  ('PALM',              'Palme',                      'Couronne du martyre ; victoire sur la mort.'),
  ('CROSS',             'Croix',                      'L''instrument de la Passion du Christ ; signe de la foi.'),
  ('SKULL',             'Crâne',                      'Memento mori ; pénitence et méditation sur la mort.'),
  ('WHEEL',             'Roue',                       'Instrument de torture de sainte Catherine d''Alexandrie.'),
  ('KEYS',              'Clés',                       'Clés du Royaume (Pierre) ; clés de la maison (Marthe).'),
  ('GRIDIRON',          'Gril',                       'Instrument du martyre de saint Laurent et saint Vincent.'),
  ('ARROWS',            'Flèches',                    'Instrument du martyre de saint Sébastien.'),
  ('FISH',              'Poisson',                    'Signe des pêcheurs apostoliques ; Antoine prêchant aux poissons.'),
  ('ANCHOR',            'Ancre',                      'Symbole de l''espérance ; saint Clément I noyé avec une ancre.'),
  ('EAGLE',             'Aigle',                      'Animal symbolique de saint Jean l''Évangéliste.'),
  ('LION',              'Lion',                       'Animal symbolique de saint Marc ; Ignace d''Antioche dévoré.'),
  ('OX',                'Bœuf ailé',                  'Animal symbolique de saint Luc l''Évangéliste.'),
  ('DOVE',              'Colombe',                    'Esprit Saint ; visions mystiques de Grégoire, Scolastique, Fabien.'),
  ('FLAMING_HEART',     'Cœur enflammé',              'Amour ardent de Dieu ; Augustin, Catherine de Sienne, Thérèse d''Ávila.'),
  ('CHAINS',            'Chaînes',                    'Captivité, libération ou service envers les captifs.'),
  ('FLAMES',            'Flammes',                    'Martyre par le feu ; visions de feu dans l''expérience mystique.'),
  ('ROSES',             'Roses',                      'Miracle marial ; charité ; Petite Fleur ; Notre-Dame de Guadalupe.'),
  ('SHELL',             'Coquille (baptême)',          'Eau baptismale ; symbolique du pèlerinage.'),
  ('PEN',               'Plume',                      'Attribut des Docteurs, historiens et auteurs sacrés.'),
  ('DRAGON',            'Dragon',                     'Victoire sur le mal ; saint Georges terrassant le dragon.'),
  ('LANCE',             'Lance',                      'Mission apostolique ; instrument du martyre.'),
  ('STIGMATA',          'Stigmates',                  'Les cinq plaies du Christ reçues par François et Padre Pio.'),
  ('AXE',               'Hache',                      'Décapitation ; martyre de Fisher, Josaphat, Chanel.'),
  ('BELL',              'Cloche',                     'Associée à Antoine abbé, gardien des animaux domestiques.'),
  ('PIG',               'Cochon',                     'Antoine abbé, protecteur des animaux de la ferme.'),
  ('CROWN',             'Couronne',                   'Dignité royale ; couronne du martyre ; royauté de Marie.'),
  ('CROWN_OF_THORNS',   'Couronne d''épines',         'Compassion à la Passion du Christ.'),
  ('CHILD_JESUS',       'Enfant Jésus',               'Vision mystique : Antoine de Padoue, Joseph, gardiens de l''Enfant.'),
  ('ORGAN',             'Orgue',                      'Sainte Cécile, patronne de la musique sacrée.'),
  ('ROSARY',            'Chapelet',                   'Prière mariale ; tradition dominicaine ; papes et missionnaires.'),
  ('MITRE',             'Mitre',                      'Dignité épiscopale ou papale.'),
  ('CROSIER',           'Crosse',                     'Bâton pastoral des évêques et des abbés.'),
  ('STONES',            'Pierres',                    'Lapidation ; martyre de saint Étienne premier martyr.'),
  ('SALTIRE',           'Croix en sautoir',           'La croix diagonale sur laquelle fut crucifié saint André.'),
  ('SAW',               'Scie',                       'Instrument du martyre de saint Simon l''Apôtre.'),
  ('SCALLOP_SHELL',     'Coquille Saint-Jacques',     'Emblème du pèlerinage à Saint-Jacques-de-Compostelle.'),
  ('PILGRIM_STAFF',     'Bourdon de pèlerin',         'Pèlerinage : Jacques le Majeur, Louis IX, Brigitte de Suède.'),
  ('THREE_GOLDEN_BALLS','Trois boules d''or',         'Saint Nicolas, qui offrit des dots à trois jeunes filles pauvres.'),
  ('MONSTRANCE',        'Ostensoir',                  'Adoration eucharistique : Claire, Norbert, Pierre-Julien Eymard.'),
  ('CHALICE',           'Calice',                     'Eucharistie ; calice empoisonné de Jean l''Apôtre ; ministère sacerdotal.'),
  ('TAU_CROSS',         'Croix en tau',               'Croix en forme de T : François d''Assise ; Antoine abbé.'),
  ('LAMB',              'Agneau',                     'Agnès (Agnus = agneau) ; Jean-Baptiste – Agnus Dei.'),
  ('JAR_OF_OINTMENT',   'Vase à parfum',              'Marie-Madeleine et Marie de Béthanie oignant le Christ.'),
  ('EYES',              'Yeux sur un plat',           'Sainte Lucie, dont les yeux furent arrachés lors de son martyre.'),
  ('COINS',             'Pièces de monnaie',          'Saint Matthieu, le publicain collecteur d''impôts.'),
  ('BROOM',             'Balai',                      'Service humble : Marthe de Béthanie, Martin de Porres.'),
  ('CARPENTER_SQUARE',  'Équerre de charpentier',     'Joseph charpentier ; Thomas, qui aurait bâti une église aux Indes.'),
  ('KNIFE',             'Couteau',                    'Saint Barthélemy, martyrisé par écorchement.'),
  ('HALBERD',           'Hallebarde',                 'Instrument du martyre de saint Matthieu.'),
  ('SCAPULAR',          'Scapulaire',                 'Le Scapulaire brun de Notre-Dame du Mont-Carmel.'),
  ('TILMA',             'Tilma',                      'Manteau de Juan Diego portant l''image de Notre-Dame de Guadalupe.'),
  ('RAYS_OF_MERCY',     'Rayons de la Miséricorde',   'Rayons rouges et blancs de l''image de la Miséricorde Divine de Faustine.'),
  ('LAMP',              'Lampe',                      'Sainte Lucie, porteuse de lumière dans les ténèbres.'),
  ('SHAMROCK',          'Trèfle',                     'Symbole de saint Patrick pour expliquer la Trinité.'),
  ('SERPENT',           'Serpent',                    'Saint Patrick qui chassa les serpents d''Irlande.'),
  ('TRUMPET',           'Trompette',                  'Vincent Ferrier en ange du Jugement dernier.'),
  ('IHS_MONOGRAM',      'Monogramme IHS',             'Christogramme (Iesus Hominum Salvator) : Bernardin de Sienne ; Jésuites.'),
  ('CANDLE',            'Cierge',                     'Saint Blaise bénissant les gorges avec deux cierges croisés.'),
  ('STAR',              'Étoile',                     'Thomas d''Aquin ; étoile sur le front de Dominique ; sept étoiles de Bruno.'),
  ('WINGS',             'Ailes d''ange',              'Françoise de Rome (ange gardien visible) ; Vincent Ferrier (ange du Jugement).'),
  ('BREAD',             'Pain',                       'Élisabeth de Hongrie, dont les aumônes se changèrent miraculeusement en roses.'),
  ('VEIL',              'Voile',                      'Marie, femmes saintes et vierges consacrées ; modestie et virginité.'),
  -- Titres
  ('MARTYR',            'Martyr',                     'Celui ou celle qui a versé son sang en témoignage de la foi chrétienne.'),
  ('VIRGIN',            'Vierge',                     'Virginité consacrée comme offrande totale au Christ.'),
  ('CONFESSOR',         'Confesseur',                 'Qui a héroïquement professé la foi sans mort violente.'),
  ('DOCTOR_OF_THE_CHURCH','Docteur de l''Église',     'Reconnu par l''Église pour son enseignement éminent et sa sainteté.'),
  ('APOSTLE',           'Apôtre',                     'L''un des Douze ou porteur d''une mission apostolique.'),
  ('EVANGELIST',        'Évangéliste',                'Auteur de l''un des quatre Évangiles canoniques.'),
  ('POPE',              'Pape',                       'Évêque de Rome, successeur de saint Pierre.'),
  ('BISHOP',            'Évêque',                     'Évêque ordonné de l''Église.'),
  ('ABBOT',             'Abbé',                       'Père et supérieur d''une communauté monastique.'),
  ('ABBESS',            'Abbesse',                    'Mère et supérieure d''une communauté monastique féminine.'),
  ('PRIEST',            'Prêtre',                     'Prêtre ordonné de l''Église.'),
  ('DEACON',            'Diacre',                     'Diacre ordonné de l''Église.'),
  ('RELIGIOUS',         'Religieux / Religieuse',     'Consacré(e) à Dieu par des vœux religieux.'),
  ('HERMIT',            'Ermite',                     'Celui ou celle qui vit dans la solitude pour la prière et la pénitence.'),
  ('PROPHET',           'Prophète',                   'Celui qui parle au nom de Dieu ; précurseur ou témoin.'),
  ('KING',              'Roi / Prince',               'Souverain ou prince canonisé.'),
  ('QUEEN',             'Reine',                      'Reine ou princesse canonisée.'),
  -- Ordres
  ('BENEDICTINE',           'Bénédictin(e)',               'Ordre de Saint-Benoît (O.S.B.), fondé par saint Benoît de Nursie.'),
  ('CISTERCIAN',            'Cistercien(ne)',              'Ordre cistercien (O.Cist.), réforme bénédictine fondée à Cîteaux.'),
  ('CAMALDOLESE',           'Camaldule',                  'Congrégation camaldule (O.S.B.Cam.), réforme érémitique de saint Romuald.'),
  ('DOMINICAN',             'Dominicain(e)',               'Ordre des Frères Prêcheurs (O.P.), fondé par saint Dominique.'),
  ('FRANCISCAN',            'Franciscain(e)',              'Ordre des Frères Mineurs (O.F.M.) et branches, fondé par saint François d''Assise.'),
  ('POOR_CLARES',           'Clarisses',                  'Ordre de sainte Claire (O.S.C.), fondé par sainte Claire d''Assise.'),
  ('JESUIT',                'Jésuite',                    'Compagnie de Jésus (S.J.), fondée par saint Ignace de Loyola.'),
  ('CARMELITE',             'Carme(lite)',                 'Ordre du Carmel (O.Carm./O.C.D.), incluant la branche déchaussée de Thérèse d''Ávila.'),
  ('AUGUSTINIAN',           'Augustinien(ne)',             'Ordre de Saint-Augustin (O.S.A.), suivant la Règle de saint Augustin.'),
  ('PREMONSTRATENSIAN',     'Prémontrés',                  'Ordre de Prémontré (O.Praem.), fondé par saint Norbert.'),
  ('THEATINE',              'Théatin(e)',                  'Clercs réguliers (C.R.), fondés par saint Gaétan et Gian Pietro Carafa.'),
  ('SALESIAN',              'Salésien(ne)',                'Salésiens de Don Bosco (S.D.B.), fondés par saint Jean Bosco.'),
  ('PASSIONIST',            'Passioniste',                'Congrégation de la Passion (C.P.), fondée par saint Paul de la Croix.'),
  ('REDEMPTORIST',          'Rédemptoriste',              'Congrégation du Très-Saint-Rédempteur (C.SS.R.), fondée par saint Alphonse de Liguori.'),
  ('ORATORIAN',             'Oratorien(ne)',               'Congrégation de l''Oratoire (Cong. Orat.), fondée par saint Philippe Néri.'),
  ('VINCENTIAN',            'Vincentin(e)',                'Congrégation de la Mission (C.M.), fondée par saint Vincent de Paul.'),
  ('BASILIAN',              'Basiliens',                   'Ordre de Saint-Basile-le-Grand (O.S.B.M.), ordre monastique catholique oriental.'),
  ('CARTHUSIAN',            'Chartreux',                  'Ordre des Chartreux (O. Cart.), fondé par saint Bruno de Cologne.'),
  ('URSULINE',              'Ursuline',                   'Compagnie de sainte Ursule (O.S.U.), fondée par sainte Angèle Merici.'),
  ('VISITANDINE',           'Visitandine',                'Ordre de la Visitation (V.H.M.), fondé par François de Sales et Jeanne de Chantal.'),
  ('PIARIST',               'Piariste',                   'Ordre des Écoles Pies (O.Sch.P.), fondé par saint Joseph Calasanz.'),
  ('CAMILLANS',             'Camillien(ne)',               'Ministres des malades (O.M.I.), fondés par saint Camille de Lellis.'),
  ('HOSPITALLER_OF_ST_JOHN','Hospitalier de saint Jean de Dieu','Frères hospitaliers de saint Jean de Dieu (O.H.), fondés par saint Jean de Dieu.'),
  ('BIRGITTINE',            'Brigittin(e)',                'Ordre du Très-Saint-Sauveur (O.SS.S.), fondé par sainte Brigitte de Suède.'),
  ('CLARETIAN',             'Claretain(e)',                'Fils missionnaires du Cœur Immaculé de Marie (C.M.F.), fondés par saint Antoine-Marie Claret.'),
  ('MISSIONARY_OF_CHARITY', 'Missionnaire de la Charité', 'Missionnaires de la Charité (M.C.), fondées par sainte Mère Teresa de Calcutta.'),
  ('BARNABITE',             'Barnabite',                  'Clercs réguliers de saint Paul (C.R.S.P.), fondés par saint Antoine Zaccaria.'),
  ('DE_LA_SALLE_BROTHERS',  'Frères des Écoles Chrétiennes','Institut des Frères des Écoles Chrétiennes (F.S.C.), fondé par saint Jean-Baptiste de La Salle.'),
  ('MONTFORTIAN',           'Montfortain(e)',              'Compagnie de Marie (S.M.M.), fondée par saint Louis-Marie Grignion de Montfort.'),
  ('EUDISTS',               'Eudiste',                    'Congrégation de Jésus et Marie (C.J.M.), fondée par saint Jean Eudes.'),
  ('MARIST',                'Mariste',                    'Société de Marie – Maristes (S.M.), dont saint Pierre Chanel fut l''un des premiers membres.'),
  ('SOMASCHI',              'Somasque',                   'Clercs réguliers somasques (C.R.S.), fondés par saint Jérôme Émiliani.'),
  ('CANOSSIAN',             'Canosienne',                 'Filles de la Charité Canosiennes (F.d.C.C.) ; sainte Joséphine Bakhita en était membre.')
) AS x(code, label, description)
ON a.code = x.code
ON CONFLICT (attribute_id, locale_code) DO UPDATE
  SET label = EXCLUDED.label, description = EXCLUDED.description;


-- =====================================================
-- 4) TRANSLATIONS – Latin (la)
-- =====================================================

INSERT INTO attribute_translations (attribute_id, locale_code, label, description)
SELECT a.id, 'la', x.label, x.description
FROM attributes a
JOIN (VALUES
  -- Symbola
  ('LILY',              'Lilium',                 'Lilium album, signum puritatis et virginitatis consecratae.'),
  ('SWORD',             'Gladius',                'Signum martyrii, auctoritatis vel certaminis spiritualis.'),
  ('BOOK',              'Liber',                  'Evangelium, scripta sacra, vel sapientia Doctorum.'),
  ('PALM',              'Palma',                  'Corona martyrii; victoria super mortem.'),
  ('CROSS',             'Crux',                   'Instrumentum Passionis Christi; signum fidei.'),
  ('SKULL',             'Calva',                  'Memento mori; paenitentia et meditatio de morte.'),
  ('WHEEL',             'Rota',                   'Instrumentum torturae Sanctae Catharinae Alexandrinae.'),
  ('KEYS',              'Claves',                 'Claves Regni (Petrus); claves domus (Martha).'),
  ('GRIDIRON',          'Craticulum',             'Instrumentum martyrii Sanctorum Laurentii et Vincentii.'),
  ('ARROWS',            'Sagittae',               'Instrumentum martyrii Sancti Sebastiani.'),
  ('FISH',              'Piscis',                 'Signum piscatorum apostolicorum; Antonius praedicans piscibus.'),
  ('ANCHOR',            'Ancora',                 'Symbolum spei; Sanctus Clemens I ancora submersus.'),
  ('EAGLE',             'Aquila',                 'Animal symbolicum Sancti Ioannis Evangelistae.'),
  ('LION',              'Leo',                    'Animal symbolicum Sancti Marci; Ignatius Antiochenus leonibus traditus.'),
  ('OX',                'Bos alatus',             'Animal symbolicum Sancti Lucae Evangelistae.'),
  ('DOVE',              'Columba',                'Spiritus Sanctus; visiones mysticae Gregorii, Scholasticae, Fabiani.'),
  ('FLAMING_HEART',     'Cor ardens',             'Amor ardens erga Deum: Augustinus, Catharina Senensis, Teresia Abulensis.'),
  ('CHAINS',            'Vincula',                'Captivitas, liberatio vel ministerium erga vinctos.'),
  ('FLAMES',            'Flammae',                'Martyrium per ignem; visiones ignis in experientia mystica.'),
  ('ROSES',             'Rosae',                  'Miraculum mariale; caritas; Theresia Parva; Nostra Domina Guadalupensis.'),
  ('SHELL',             'Concha',                 'Aqua baptismalis; symbolum peregrinationis.'),
  ('PEN',               'Calamus',                'Proprium Doctorum, historicorum et scriptorum sacrorum.'),
  ('DRAGON',            'Draco',                  'Victoria super malum; Sanctus Georgius draconem vincens.'),
  ('LANCE',             'Lancea',                 'Missio apostolica; instrumentum martyrii.'),
  ('STIGMATA',          'Stigmata',               'Quinque vulnera Christi a Francisco et Patre Pio recepta.'),
  ('AXE',               'Securis',                'Instrumentum decapitationis: Fisher, Josaphat, Chanel.'),
  ('BELL',              'Campana',                'Proprium Antonii Abbatis, custodis animalium domesticorum.'),
  ('PIG',               'Porcus',                 'Antonius Abbas, protector animalium agrestium.'),
  ('CROWN',             'Corona',                 'Dignitas regalis; corona martyrii; regnum Mariae.'),
  ('CROWN_OF_THORNS',   'Corona spinea',          'Compassio in Passionem Christi.'),
  ('CHILD_JESUS',       'Puer Iesus',             'Visio mystica: Antonius Patavinus, Ioseph, custodes Pueri.'),
  ('ORGAN',             'Organum',                'Sancta Caecilia, patrona musicae sacrae.'),
  ('ROSARY',            'Rosarium',               'Oratio mariana; traditio dominicana; pontifices et missionarii.'),
  ('MITRE',             'Mitra',                  'Dignitas episcopalis vel papalis.'),
  ('CROSIER',           'Baculus pastoralis',     'Baculus pastoralis episcoporum et abbatum.'),
  ('STONES',            'Lapides',                'Lapidatio; martyrium Sancti Stephani Protomartyris.'),
  ('SALTIRE',           'Crux decussata',         'Crux obliqua qua Sanctus Andreas crucifixus est.'),
  ('SAW',               'Serra',                  'Instrumentum martyrii Sancti Simonis Apostoli.'),
  ('SCALLOP_SHELL',     'Concha Iacobi',          'Insigne peregrinationis ad Sanctum Iacobum Compostellanum.'),
  ('PILGRIM_STAFF',     'Baculus peregrini',      'Peregrinatio: Iacobus Maior, Ludovicus IX, Birgitta Suecica.'),
  ('THREE_GOLDEN_BALLS','Tres globi aurei',       'Sanctus Nicolaus, qui tres puellas pauperes dote donavit.'),
  ('MONSTRANCE',        'Ostensorium',            'Adoratio eucharistica: Clara, Norbertus, Petrus Iulianus Eymard.'),
  ('CHALICE',           'Calix',                  'Eucharistia; calix venenatus Ioannis Apostoli; ministerium sacerdotale.'),
  ('TAU_CROSS',         'Crux tau',               'Crux in formam tau: Franciscus Assisiensis; Antonius Abbas.'),
  ('LAMB',              'Agnus',                  'Agnes (Agnus = agnus); Ioannes Baptista – Agnus Dei.'),
  ('JAR_OF_OINTMENT',   'Alabastrum',             'Maria Magdalena et Maria Bethaniae Christum ungentes.'),
  ('EYES',              'Oculi',                  'Sancta Lucia, cuius oculi in martyrio avulsi sunt.'),
  ('COINS',             'Nummi',                  'Sanctus Matthaeus, publicanus.'),
  ('BROOM',             'Scopa',                  'Servitium humile: Martha Bethaniae, Martinus de Porres.'),
  ('CARPENTER_SQUARE',  'Norma fabri',            'Ioseph faber; Thomas, qui ecclesiam in India aedificasse traditur.'),
  ('KNIFE',             'Culter',                 'Sanctus Bartholomaeus, excoriatus.'),
  ('HALBERD',           'Bipennis',               'Instrumentum martyrii Sancti Matthaei.'),
  ('SCAPULAR',          'Scapulare',              'Scapulare brunneum Nostrae Dominae Montis Carmeli.'),
  ('TILMA',             'Tilma',                  'Pallium Ioannis Didaci imaginem Nostrae Dominae Guadalupensis gerens.'),
  ('RAYS_OF_MERCY',     'Radii Misericordiae',    'Radii rubri et albi in imagine Divinae Misericordiae Faustinae.'),
  ('LAMP',              'Lucerna',                'Sancta Lucia, lumen in tenebris ferens.'),
  ('SHAMROCK',          'Trifolium',              'Symbolum Sancti Patricii ad Trinitatem explicandam.'),
  ('SERPENT',           'Serpens',                'Sanctus Patricius, qui serpentes ex Hibernia expulit.'),
  ('TRUMPET',           'Tuba',                   'Vincentius Ferrarius ut angelus Iudicii Universalis.'),
  ('IHS_MONOGRAM',      'Monogramma IHS',         'Chrismaton (Iesus Hominum Salvator): Bernardinus, Ignatius, Societatis Iesu signum.'),
  ('CANDLE',            'Candela',                'Sanctus Blasius, qui fauces duabus candelis benedicit.'),
  ('STAR',              'Stella',                 'Thomas Aquinas; stella in fronte Dominici; septem stellae Brunonis.'),
  ('WINGS',             'Alae angelicae',         'Francisca Romana (angelus visibilis); Vincentius Ferrarius (angelus Iudicii).'),
  ('BREAD',             'Panis',                  'Elisabeth Hungariae, cuius eleemosynae in rosas mirabiliter conversae sunt.'),
  ('VEIL',              'Velum',                  'Maria, sanctae feminae et virgines consecratae; modestia et virginitas.'),
  -- Tituli
  ('MARTYR',            'Martyr',                 'Qui sanguinem pro fide christiana effudit.'),
  ('VIRGIN',            'Virgo',                  'Virginitas consecrata tamquam oblatio totalis Christo.'),
  ('CONFESSOR',         'Confessor',              'Qui fidem heroice professus est sine morte violenta.'),
  ('DOCTOR_OF_THE_CHURCH','Doctor Ecclesiae',     'Ab Ecclesia ob doctrinam eminentem et sanctitatem agnitus.'),
  ('APOSTLE',           'Apostolus',              'Unus ex Duodecim vel missionis apostolicae particeps.'),
  ('EVANGELIST',        'Evangelista',            'Auctor unius ex quattuor Evangeliis canonicis.'),
  ('POPE',              'Papa',                   'Episcopus Romae, Successor Sancti Petri.'),
  ('BISHOP',            'Episcopus',              'Episcopus ordinatus in Ecclesia.'),
  ('ABBOT',             'Abbas',                  'Pater et rector communitatis monasticae.'),
  ('ABBESS',            'Abbatissa',              'Mater et rectrix communitatis monasticae feminarum.'),
  ('PRIEST',            'Presbyter',              'Presbyter ordinatus in Ecclesia.'),
  ('DEACON',            'Diaconus',               'Diaconus ordinatus in Ecclesia.'),
  ('RELIGIOUS',         'Religiosus',             'Deo per vota religiosa consecratus.'),
  ('HERMIT',            'Eremita',                'Qui in solitudine orationi et paenitentiae vacat.'),
  ('PROPHET',           'Propheta',               'Qui Dei nomine loquitur; praecursor vel testis.'),
  ('KING',              'Rex',                    'Rex vel princeps canonizatus.'),
  ('QUEEN',             'Regina',                 'Regina vel principissa canonizata.'),
  -- Ordines
  ('BENEDICTINE',           'Benedictinus',               'Ordo Sancti Benedicti (O.S.B.), a Sancto Benedicto Nursino institutus.'),
  ('CISTERCIAN',            'Cisterciensis',              'Ordo Cisterciensis (O.Cist.), reformatio benedictina Cistercii instituta.'),
  ('CAMALDOLESE',           'Camaldulensis',              'Congregatio Camaldulensis (O.S.B.Cam.), reformatio eremitica a Sancto Romualdo instituta.'),
  ('DOMINICAN',             'Dominicanus',                'Ordo Fratrum Praedicatorum (O.P.), a Sancto Dominico institutus.'),
  ('FRANCISCAN',            'Franciscanus',               'Ordo Fratrum Minorum (O.F.M.) et rami, a Sancto Francisco Assisiensi instituti.'),
  ('POOR_CLARES',           'Ordinis Sanctae Clarae',     'Ordo Sanctae Clarae (O.S.C.), a Sancta Clara Assisiensi institutus.'),
  ('JESUIT',                'Societatis Iesu',            'Societas Iesu (S.J.), a Sancto Ignatio de Loyola instituta.'),
  ('CARMELITE',             'Carmelita',                  'Ordo Carmelitarum (O.Carm./O.C.D.), cum ramo excalceatorum a Sancta Teresia institutis.'),
  ('AUGUSTINIAN',           'Augustinianus',              'Ordo Sancti Augustini (O.S.A.), Regulam Sancti Augustini sequens.'),
  ('PREMONSTRATENSIAN',     'Praemonstratensis',          'Ordo Praemonstratensis (O.Praem.), a Sancto Norberto institutus.'),
  ('THEATINE',              'Theatinus',                  'Clerici Regulares (C.R.), a Sancto Caietano et Gian Pietro Carafa instituti.'),
  ('SALESIAN',              'Salesianus',                 'Societas Sancti Francisci Salesii (S.D.B.), a Sancto Ioanne Bosco instituta.'),
  ('PASSIONIST',            'Passionista',                'Congregatio Passionis (C.P.), a Sancto Paulo a Cruce instituta.'),
  ('REDEMPTORIST',          'Redemptoristae',             'Congregatio Sanctissimi Redemptoris (C.SS.R.), a Sancto Alphonso Liguoriensi instituta.'),
  ('ORATORIAN',             'Oratorii',                   'Congregatio Oratorii (Cong. Orat.), a Sancto Philippo Nerio instituta.'),
  ('VINCENTIAN',            'Vincentianus',               'Congregatio Missionis (C.M.), a Sancto Vincentio a Paulo instituta.'),
  ('BASILIAN',              'Basilianus',                 'Ordo Sancti Basilii Magni (O.S.B.M.), ordo monasticus catholicus orientalis.'),
  ('CARTHUSIAN',            'Carthusiensis',              'Ordo Cartusiensis (O. Cart.), a Sancto Brunone Coloniensi institutus.'),
  ('URSULINE',              'Ursulinensis',               'Societas Sanctae Ursulae (O.S.U.), a Sancta Angela Mericia instituta.'),
  ('VISITANDINE',           'Visitationis',               'Ordo Visitationis Beatae Mariae Virginis, a Francisco Salesio et Ioanna de Chantal institutus.'),
  ('PIARIST',               'Piarum Scholarum',           'Ordo Scholarum Piarum (O.Sch.P.), a Sancto Iosepho Calasantio institutus.'),
  ('CAMILLANS',             'Camillianus',                'Ordo Ministrantium Infirmis (O.M.I.), a Sancto Camillo de Lellis institutus.'),
  ('HOSPITALLER_OF_ST_JOHN','Fratres Hospitalarii',       'Fratres Hospitalarii Sancti Ioannis a Deo (O.H.), a Sancto Ioanne a Deo instituti.'),
  ('BIRGITTINE',            'Brigittinus',                'Ordo Sanctissimi Salvatoris (O.SS.S.), a Sancta Birgitta Suecica institutus.'),
  ('CLARETIAN',             'Claretianus',                'Missionarii Filii Immaculati Cordis Beatae Mariae Virginis (C.M.F.), a Sancto Antonio Maria Claret instituti.'),
  ('MISSIONARY_OF_CHARITY', 'Missionaria Caritatis',      'Missionariae Caritatis (M.C.), a Sancta Teresia Calcuttensi institutae.'),
  ('BARNABITE',             'Barnabita',                  'Clerici Regulares Sancti Pauli (C.R.S.P.), a Sancto Antonio Zaccaria instituti.'),
  ('DE_LA_SALLE_BROTHERS',  'Fratres Scholarum Christianarum','Fratres Scholarum Christianarum (F.S.C.), a Sancto Ioanne Baptista de La Salle instituti.'),
  ('MONTFORTIAN',           'Montfortanus',               'Societas Mariae Montfortana (S.M.M.), a Sancto Ludovico a Montfort instituta.'),
  ('EUDISTS',               'Eudista',                    'Congregatio Iesu et Mariae (C.J.M.), a Sancto Ioanne Eudes instituta.'),
  ('MARIST',                'Marista',                    'Societas Mariae – Patres Maristae (S.M.), quorum primus martyr Sanctus Petrus Chanel fuit.'),
  ('SOMASCHI',              'Somaschensis',               'Clerici Regulares Somaschenses (C.R.S.), a Sancto Hieronymo Aemiliani instituti.'),
  ('CANOSSIAN',             'Canossianus',                'Filiae Caritatis Canossianae (F.d.C.C.); Sancta Iosephina Bakhita inter eas vitam egit.')
) AS x(code, label, description)
ON a.code = x.code
ON CONFLICT (attribute_id, locale_code) DO UPDATE
SET label = EXCLUDED.label, description = EXCLUDED.description;


-- =====================================================
-- 5) SAINT-ATTRIBUTE RELATIONSHIPS
-- Silently skips any pair whose saint or attribute slug
-- does not exist (INNER JOIN + ON CONFLICT DO NOTHING).
-- =====================================================
INSERT INTO saint_attributes (saint_id, attribute_id)
SELECT s.id, a.id
FROM (VALUES

  -- ── JANUARY ─────────────────────────────────────────────────────────────
  -- Solemnity of Mary (Jan 1)
  ('saint-mary', 'LILY'),
  ('saint-mary', 'CROWN'),
  ('saint-mary', 'ROSES'),
  ('saint-mary', 'DOVE'),
  ('saint-mary', 'STAR'),
  ('saint-mary', 'SCAPULAR'),
  ('saint-mary', 'VIRGIN'),
  ('saint-mary', 'VEIL'),
  ('saint-mary', 'CHILD_JESUS'),

  -- Basil the Great & Gregory Nazianzen (Jan 2)
  ('saint-basil-the-great', 'BOOK'),
  ('saint-basil-the-great', 'DOVE'),
  ('saint-basil-the-great', 'MITRE'),
  ('saint-basil-the-great', 'BISHOP'),
  ('saint-basil-the-great', 'DOCTOR_OF_THE_CHURCH'),

  ('saint-gregory-nazianzen', 'BOOK'),
  ('saint-gregory-nazianzen', 'MITRE'),
  ('saint-gregory-nazianzen', 'PEN'),
  ('saint-gregory-nazianzen', 'BISHOP'),
  ('saint-gregory-nazianzen', 'DOCTOR_OF_THE_CHURCH'),

  -- Raymond of Penyafort (Jan 7)
  ('saint-raymond-of-penyafort', 'BOOK'),
  ('saint-raymond-of-penyafort', 'PRIEST'),
  ('saint-raymond-of-penyafort', 'DOMINICAN'),

  -- Hilary of Poitiers (Jan 13)
  ('saint-hilary-of-poitiers', 'BOOK'),
  ('saint-hilary-of-poitiers', 'MITRE'),
  ('saint-hilary-of-poitiers', 'PEN'),
  ('saint-hilary-of-poitiers', 'BISHOP'),
  ('saint-hilary-of-poitiers', 'DOCTOR_OF_THE_CHURCH'),

  -- Anthony Abbot (Jan 17)
  ('saint-anthony-abbot', 'TAU_CROSS'),
  ('saint-anthony-abbot', 'BELL'),
  ('saint-anthony-abbot', 'PIG'),
  ('saint-anthony-abbot', 'FLAMES'),
  ('saint-anthony-abbot', 'CROSIER'),
  ('saint-anthony-abbot', 'ABBOT'),
  ('saint-anthony-abbot', 'HERMIT'),

  -- Fabian (Jan 20)
  ('saint-fabian-pope', 'MITRE'),
  ('saint-fabian-pope', 'PALM'),
  ('saint-fabian-pope', 'DOVE'),
  ('saint-fabian-pope', 'POPE'),
  ('saint-fabian-pope', 'MARTYR'),

  -- Sebastian (Jan 20)
  ('saint-sebastian', 'ARROWS'),
  ('saint-sebastian', 'PALM'),
  ('saint-sebastian', 'MARTYR'),

  -- Agnes (Jan 21)
  ('saint-agnes-of-rome', 'LAMB'),
  ('saint-agnes-of-rome', 'LILY'),
  ('saint-agnes-of-rome', 'PALM'),
  ('saint-agnes-of-rome', 'SWORD'),
  ('saint-agnes-of-rome', 'VIRGIN'),
  ('saint-agnes-of-rome', 'MARTYR'),

  -- Vincent of Saragossa (Jan 22)
  ('saint-vincent-of-saragossa', 'GRIDIRON'),
  ('saint-vincent-of-saragossa', 'PALM'),
  ('saint-vincent-of-saragossa', 'DEACON'),
  ('saint-vincent-of-saragossa', 'MARTYR'),

  -- Francis de Sales (Jan 24)
  ('saint-francis-de-sales', 'BOOK'),
  ('saint-francis-de-sales', 'PEN'),
  ('saint-francis-de-sales', 'FLAMING_HEART'),
  ('saint-francis-de-sales', 'BISHOP'),
  ('saint-francis-de-sales', 'DOCTOR_OF_THE_CHURCH'),

  -- Conversion of Paul (Jan 25)
  ('saint-paul-apostle', 'SWORD'),
  ('saint-paul-apostle', 'BOOK'),
  ('saint-paul-apostle', 'APOSTLE'),

  -- Timothy & Titus (Jan 26)
  ('saint-timothy-of-ephesus', 'BOOK'),
  ('saint-timothy-of-ephesus', 'MITRE'),
  ('saint-timothy-of-ephesus', 'CROSIER'),
  ('saint-timothy-of-ephesus', 'BISHOP'),

  ('saint-titus-of-crete', 'BOOK'),
  ('saint-titus-of-crete', 'MITRE'),
  ('saint-titus-of-crete', 'CROSIER'),
  ('saint-titus-of-crete', 'BISHOP'),

  -- Angela Merici (Jan 27)
  ('saint-angela-merici', 'LILY'),
  ('saint-angela-merici', 'VIRGIN'),
  ('saint-angela-merici', 'URSULINE'),

  -- Thomas Aquinas (Jan 28)
  ('saint-thomas-aquinas', 'LILY'),
  ('saint-thomas-aquinas', 'BOOK'),
  ('saint-thomas-aquinas', 'STAR'),
  ('saint-thomas-aquinas', 'PRIEST'),
  ('saint-thomas-aquinas', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-thomas-aquinas', 'DOMINICAN'),

  -- John Bosco (Jan 31)
  ('saint-john-bosco', 'BOOK'),
  ('saint-john-bosco', 'ROSARY'),
  ('saint-john-bosco', 'PRIEST'),
  ('saint-john-bosco', 'SALESIAN'),

  -- ── FEBRUARY ────────────────────────────────────────────────────────────
  -- Blaise (Feb 3)
  ('saint-blaise', 'MITRE'),
  ('saint-blaise', 'PALM'),
  ('saint-blaise', 'CANDLE'),
  ('saint-blaise', 'BISHOP'),
  ('saint-blaise', 'MARTYR'),

  -- Ansgar (Feb 3)
  ('saint-ansgar', 'BOOK'),
  ('saint-ansgar', 'MITRE'),
  ('saint-ansgar', 'BISHOP'),

  -- Agatha (Feb 5)
  ('saint-agatha', 'PALM'),
  ('saint-agatha', 'LILY'),
  ('saint-agatha', 'VIRGIN'),
  ('saint-agatha', 'MARTYR'),

  -- Paul Miki and Companions (Feb 6)
  ('saint-paul-miki', 'CROSS'),
  ('saint-paul-miki', 'PALM'),
  ('saint-paul-miki', 'MARTYR'),
  ('saint-paul-miki', 'JESUIT'),

  -- Jerome Emiliani (Feb 8)
  ('saint-jerome-emiliani', 'CHAINS'),
  ('saint-jerome-emiliani', 'PRIEST'),
  ('saint-jerome-emiliani', 'SOMASCHI'),

  -- Josephine Bakhita (Feb 8)
  ('saint-josephine-bakhita', 'CHAINS'),
  ('saint-josephine-bakhita', 'CROSS'),
  ('saint-josephine-bakhita', 'LILY'),
  ('saint-josephine-bakhita', 'VIRGIN'),
  ('saint-josephine-bakhita', 'CANOSSIAN'),

  -- Scholastica (Feb 10)
  ('saint-scholastica', 'DOVE'),
  ('saint-scholastica', 'LILY'),
  ('saint-scholastica', 'BOOK'),
  ('saint-scholastica', 'VIRGIN'),
  ('saint-scholastica', 'ABBESS'),
  ('saint-scholastica', 'BENEDICTINE'),

  -- Cyril and Methodius (Feb 14)
  ('saint-cyril', 'BOOK'),
  ('saint-cyril', 'RELIGIOUS'),

  ('saint-methodius', 'BOOK'),
  ('saint-methodius', 'MITRE'),
  ('saint-methodius', 'BISHOP'),

  -- Peter Damian (Feb 21)
  ('saint-peter-damian', 'BOOK'),
  ('saint-peter-damian', 'MITRE'),
  ('saint-peter-damian', 'BISHOP'),
  ('saint-peter-damian', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-peter-damian', 'CAMALDOLESE'),

  -- Polycarp (Feb 23)
  ('saint-polycarp', 'FLAMES'),
  ('saint-polycarp', 'PALM'),
  ('saint-polycarp', 'SWORD'),
  ('saint-polycarp', 'BISHOP'),
  ('saint-polycarp', 'MARTYR'),

  -- Gregory of Narek (Feb 27)
  ('saint-gregory-of-narek', 'BOOK'),
  ('saint-gregory-of-narek', 'PEN'),
  ('saint-gregory-of-narek', 'ABBOT'),
  ('saint-gregory-of-narek', 'DOCTOR_OF_THE_CHURCH'),

  -- ── MARCH ───────────────────────────────────────────────────────────────
  -- Casimir (Mar 4)
  ('saint-casimir', 'LILY'),
  ('saint-casimir', 'CROWN'),
  ('saint-casimir', 'KING'),

  -- Perpetua and Felicity (Mar 7)
  ('saint-perpetua', 'PALM'),
  ('saint-perpetua', 'SWORD'),
  ('saint-perpetua', 'MARTYR'),

  ('saint-felicity', 'PALM'),
  ('saint-felicity', 'MARTYR'),

  -- John of God (Mar 8)
  ('saint-john-of-god', 'FLAMING_HEART'),
  ('saint-john-of-god', 'CROSS'),
  ('saint-john-of-god', 'CROWN_OF_THORNS'),
  ('saint-john-of-god', 'RELIGIOUS'),
  ('saint-john-of-god', 'HOSPITALLER_OF_ST_JOHN'),

  -- Frances of Rome (Mar 9)
  ('saint-frances-of-rome', 'WINGS'),
  ('saint-frances-of-rome', 'CROWN'),
  ('saint-frances-of-rome', 'RELIGIOUS'),

  -- Patrick (Mar 17)
  ('saint-patrick', 'SHAMROCK'),
  ('saint-patrick', 'SERPENT'),
  ('saint-patrick', 'MITRE'),
  ('saint-patrick', 'CROSIER'),
  ('saint-patrick', 'BISHOP'),

  -- Cyril of Jerusalem (Mar 18)
  ('saint-cyril-of-jerusalem', 'BOOK'),
  ('saint-cyril-of-jerusalem', 'MITRE'),
  ('saint-cyril-of-jerusalem', 'BISHOP'),
  ('saint-cyril-of-jerusalem', 'DOCTOR_OF_THE_CHURCH'),

  -- Joseph (Mar 19)
  ('saint-joseph', 'LILY'),
  ('saint-joseph', 'CHILD_JESUS'),
  ('saint-joseph', 'CARPENTER_SQUARE'),

  -- Turibius of Mongrovejo (Mar 23)
  ('saint-turibius-of-mogrovejo', 'MITRE'),
  ('saint-turibius-of-mogrovejo', 'BISHOP'),

  -- ── APRIL ───────────────────────────────────────────────────────────────
  -- Francis of Paola (Apr 2)
  ('saint-francis-of-paola', 'CROSS'),
  ('saint-francis-of-paola', 'HERMIT'),

  -- Isidore of Seville (Apr 4)
  ('saint-isidore', 'BOOK'),
  ('saint-isidore', 'MITRE'),
  ('saint-isidore', 'PEN'),
  ('saint-isidore', 'BISHOP'),
  ('saint-isidore', 'DOCTOR_OF_THE_CHURCH'),

  -- Vincent Ferrer (Apr 5)
  ('saint-vincent-ferrer', 'BOOK'),
  ('saint-vincent-ferrer', 'WINGS'),
  ('saint-vincent-ferrer', 'TRUMPET'),
  ('saint-vincent-ferrer', 'PRIEST'),
  ('saint-vincent-ferrer', 'DOMINICAN'),

  -- John Baptist de la Salle (Apr 7)
  ('saint-john-baptist-de-la-salle', 'BOOK'),
  ('saint-john-baptist-de-la-salle', 'PRIEST'),
  ('saint-john-baptist-de-la-salle', 'DE_LA_SALLE_BROTHERS'),

  -- Stanislaus (Apr 11)
  ('saint-stanislaus', 'MITRE'),
  ('saint-stanislaus', 'PALM'),
  ('saint-stanislaus', 'SWORD'),
  ('saint-stanislaus', 'BISHOP'),
  ('saint-stanislaus', 'MARTYR'),

  -- Martin I (Apr 13)
  ('saint-martin-i', 'MITRE'),
  ('saint-martin-i', 'PALM'),
  ('saint-martin-i', 'POPE'),
  ('saint-martin-i', 'MARTYR'),

  -- Anselm (Apr 21)
  ('saint-anselm', 'BOOK'),
  ('saint-anselm', 'MITRE'),
  ('saint-anselm', 'BISHOP'),
  ('saint-anselm', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-anselm', 'BENEDICTINE'),

  -- George (Apr 23)
  ('saint-george', 'LANCE'),
  ('saint-george', 'DRAGON'),
  ('saint-george', 'SWORD'),
  ('saint-george', 'CROWN'),
  ('saint-george', 'MARTYR'),

  -- Adalbert (Apr 23)
  ('saint-adalbert', 'MITRE'),
  ('saint-adalbert', 'PALM'),
  ('saint-adalbert', 'LANCE'),
  ('saint-adalbert', 'BISHOP'),
  ('saint-adalbert', 'MARTYR'),

  -- Fidelis of Sigmaringen (Apr 24)
  ('saint-fidelis-of-sigmaringen', 'PALM'),
  ('saint-fidelis-of-sigmaringen', 'SWORD'),
  ('saint-fidelis-of-sigmaringen', 'PRIEST'),
  ('saint-fidelis-of-sigmaringen', 'MARTYR'),
  ('saint-fidelis-of-sigmaringen', 'FRANCISCAN'),

  -- Mark (Apr 25)
  ('saint-mark-evangelist', 'LION'),
  ('saint-mark-evangelist', 'BOOK'),
  ('saint-mark-evangelist', 'PALM'),
  ('saint-mark-evangelist', 'EVANGELIST'),
  ('saint-mark-evangelist', 'MARTYR'),

  -- Peter Chanel (Apr 28)
  ('saint-peter-chanel', 'PALM'),
  ('saint-peter-chanel', 'AXE'),
  ('saint-peter-chanel', 'PRIEST'),
  ('saint-peter-chanel', 'MARTYR'),
  ('saint-peter-chanel', 'MARIST'),

  -- Louis Grignion de Montfort (Apr 28)
  ('saint-louis-grignion-de-montfort', 'ROSARY'),
  ('saint-louis-grignion-de-montfort', 'BOOK'),
  ('saint-louis-grignion-de-montfort', 'PRIEST'),
  ('saint-louis-grignion-de-montfort', 'MONTFORTIAN'),

  -- Catherine of Siena (Apr 29)
  ('saint-catherine-of-siena', 'LILY'),
  ('saint-catherine-of-siena', 'CROWN_OF_THORNS'),
  ('saint-catherine-of-siena', 'STIGMATA'),
  ('saint-catherine-of-siena', 'BOOK'),
  ('saint-catherine-of-siena', 'FLAMING_HEART'),
  ('saint-catherine-of-siena', 'VIRGIN'),
  ('saint-catherine-of-siena', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-catherine-of-siena', 'DOMINICAN'),

  -- Pius V (Apr 30)
  ('saint-pius-v', 'MITRE'),
  ('saint-pius-v', 'ROSARY'),
  ('saint-pius-v', 'POPE'),
  ('saint-pius-v', 'DOMINICAN'),

  -- ── MAY ─────────────────────────────────────────────────────────────────
  -- Athanasius (May 2)
  ('saint-athanasius', 'BOOK'),
  ('saint-athanasius', 'MITRE'),
  ('saint-athanasius', 'BISHOP'),
  ('saint-athanasius', 'DOCTOR_OF_THE_CHURCH'),

  -- Philip and James (May 3)
  ('saint-philip-apostle', 'BOOK'),
  ('saint-philip-apostle', 'CROSS'),
  ('saint-philip-apostle', 'LANCE'),
  ('saint-philip-apostle', 'APOSTLE'),

  ('saint-james-the-less-apostle', 'SAW'),
  ('saint-james-the-less-apostle', 'BOOK'),
  ('saint-james-the-less-apostle', 'APOSTLE'),

  -- John of Ávila (May 10)
  ('saint-john-of-avila', 'BOOK'),
  ('saint-john-of-avila', 'PRIEST'),
  ('saint-john-of-avila', 'DOCTOR_OF_THE_CHURCH'),

  -- Nereus and Achilleus (May 12)
  ('saint-nereus', 'PALM'),
  ('saint-nereus', 'SWORD'),
  ('saint-nereus', 'MARTYR'),

  ('saint-achilleus', 'PALM'),
  ('saint-achilleus', 'MARTYR'),

  -- Pancras (May 12)
  ('saint-pancras', 'PALM'),
  ('saint-pancras', 'SWORD'),
  ('saint-pancras', 'MARTYR'),

  -- Matthias (May 14)
  ('saint-matthias-apostle', 'AXE'),
  ('saint-matthias-apostle', 'BOOK'),
  ('saint-matthias-apostle', 'APOSTLE'),

  -- John I (May 18)
  ('saint-john-i', 'MITRE'),
  ('saint-john-i', 'PALM'),
  ('saint-john-i', 'POPE'),
  ('saint-john-i', 'MARTYR'),

  -- Bernardine of Siena (May 20)
  ('saint-bernardine-of-siena', 'IHS_MONOGRAM'),
  ('saint-bernardine-of-siena', 'BOOK'),
  ('saint-bernardine-of-siena', 'PRIEST'),
  ('saint-bernardine-of-siena', 'FRANCISCAN'),

  -- Christopher Magallanes and Companions (May 21)
  ('saint-christopher-magallanes', 'PALM'),
  ('saint-christopher-magallanes', 'PRIEST'),
  ('saint-christopher-magallanes', 'MARTYR'),

  -- Rita of Cascia (May 22)
  ('saint-rita-of-cascia', 'CROWN_OF_THORNS'),
  ('saint-rita-of-cascia', 'ROSES'),
  ('saint-rita-of-cascia', 'RELIGIOUS'),
  ('saint-rita-of-cascia', 'AUGUSTINIAN'),

  -- Bede the Venerable (May 25)
  ('saint-bede-the-venerable', 'BOOK'),
  ('saint-bede-the-venerable', 'PEN'),
  ('saint-bede-the-venerable', 'PRIEST'),
  ('saint-bede-the-venerable', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-bede-the-venerable', 'BENEDICTINE'),

  -- Gregory VII (May 25)
  ('saint-gregory-vii', 'MITRE'),
  ('saint-gregory-vii', 'POPE'),
  ('saint-gregory-vii', 'BENEDICTINE'),

  -- Mary Magdalene de' Pazzi (May 25)
  ('saint-mary-magdalene-de-pazzi', 'LILY'),
  ('saint-mary-magdalene-de-pazzi', 'CROWN_OF_THORNS'),
  ('saint-mary-magdalene-de-pazzi', 'VIRGIN'),
  ('saint-mary-magdalene-de-pazzi', 'CARMELITE'),

  -- Philip Neri (May 26)
  ('saint-philip-neri', 'LILY'),
  ('saint-philip-neri', 'FLAMING_HEART'),
  ('saint-philip-neri', 'PRIEST'),
  ('saint-philip-neri', 'ORATORIAN'),

  -- Augustine of Canterbury (May 27)
  ('saint-augustine-of-canterbury', 'BOOK'),
  ('saint-augustine-of-canterbury', 'MITRE'),
  ('saint-augustine-of-canterbury', 'BISHOP'),
  ('saint-augustine-of-canterbury', 'BENEDICTINE'),

  -- Paul VI (May 29)
  ('saint-paul-vi', 'MITRE'),
  ('saint-paul-vi', 'POPE'),

  -- ── JUNE ────────────────────────────────────────────────────────────────
  -- Justin Martyr (Jun 1)
  ('saint-justin-martyr', 'BOOK'),
  ('saint-justin-martyr', 'PALM'),
  ('saint-justin-martyr', 'MARTYR'),

  -- Marcellinus and Peter the Exorcist (Jun 2)
  ('saint-marcellinus', 'PALM'),
  ('saint-marcellinus', 'PRIEST'),
  ('saint-marcellinus', 'MARTYR'),

  ('saint-peter-exorcist', 'PALM'),
  ('saint-peter-exorcist', 'MARTYR'),

  -- Charles Lwanga and Companions (Jun 3)
  ('saint-charles-lwanga', 'PALM'),
  ('saint-charles-lwanga', 'FLAMES'),
  ('saint-charles-lwanga', 'MARTYR'),

  -- Boniface (Jun 5)
  ('saint-boniface', 'BOOK'),
  ('saint-boniface', 'MITRE'),
  ('saint-boniface', 'PALM'),
  ('saint-boniface', 'SWORD'),
  ('saint-boniface', 'BISHOP'),
  ('saint-boniface', 'MARTYR'),

  -- Norbert (Jun 6)
  ('saint-norbert', 'MITRE'),
  ('saint-norbert', 'MONSTRANCE'),
  ('saint-norbert', 'CROSIER'),
  ('saint-norbert', 'BISHOP'),
  ('saint-norbert', 'PREMONSTRATENSIAN'),

  -- Ephrem (Jun 9)
  ('saint-ephrem', 'BOOK'),
  ('saint-ephrem', 'PEN'),
  ('saint-ephrem', 'DEACON'),
  ('saint-ephrem', 'DOCTOR_OF_THE_CHURCH'),

  -- Barnabas (Jun 11)
  ('saint-barnabas-apostle', 'BOOK'),
  ('saint-barnabas-apostle', 'PALM'),
  ('saint-barnabas-apostle', 'APOSTLE'),

  -- Anthony of Padua (Jun 13)
  ('saint-anthony-of-padua', 'LILY'),
  ('saint-anthony-of-padua', 'CHILD_JESUS'),
  ('saint-anthony-of-padua', 'BOOK'),
  ('saint-anthony-of-padua', 'FISH'),
  ('saint-anthony-of-padua', 'PRIEST'),
  ('saint-anthony-of-padua', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-anthony-of-padua', 'FRANCISCAN'),

  -- Romuald (Jun 19)
  ('saint-romuald', 'CROSIER'),
  ('saint-romuald', 'ABBOT'),
  ('saint-romuald', 'CAMALDOLESE'),

  -- Aloysius Gonzaga (Jun 21)
  ('saint-aloysius-gonzaga', 'LILY'),
  ('saint-aloysius-gonzaga', 'CROSS'),
  ('saint-aloysius-gonzaga', 'SKULL'),
  ('saint-aloysius-gonzaga', 'RELIGIOUS'),
  ('saint-aloysius-gonzaga', 'JESUIT'),

  -- Paulinus of Nola (Jun 22)
  ('saint-paulinus-of-nola', 'BOOK'),
  ('saint-paulinus-of-nola', 'MITRE'),
  ('saint-paulinus-of-nola', 'BISHOP'),

  -- John Fisher (Jun 22)
  ('saint-john-fisher', 'MITRE'),
  ('saint-john-fisher', 'PALM'),
  ('saint-john-fisher', 'AXE'),
  ('saint-john-fisher', 'BISHOP'),
  ('saint-john-fisher', 'MARTYR'),

  -- Thomas More (Jun 22)
  ('saint-thomas-more', 'PALM'),
  ('saint-thomas-more', 'AXE'),
  ('saint-thomas-more', 'MARTYR'),

  -- Nativity of John the Baptist (Jun 24)
  ('saint-john-the-baptist', 'LAMB'),
  ('saint-john-the-baptist', 'SHELL'),
  ('saint-john-the-baptist', 'CROSS'),
  ('saint-john-the-baptist', 'PROPHET'),
  ('saint-john-the-baptist', 'MARTYR'),

  -- Cyril of Alexandria (Jun 27)
  ('saint-cyril-of-alexandria', 'BOOK'),
  ('saint-cyril-of-alexandria', 'MITRE'),
  ('saint-cyril-of-alexandria', 'BISHOP'),
  ('saint-cyril-of-alexandria', 'DOCTOR_OF_THE_CHURCH'),

  -- Irenaeus (Jun 28)
  ('saint-irenaeus', 'BOOK'),
  ('saint-irenaeus', 'MITRE'),
  ('saint-irenaeus', 'PALM'),
  ('saint-irenaeus', 'BISHOP'),
  ('saint-irenaeus', 'MARTYR'),
  ('saint-irenaeus', 'DOCTOR_OF_THE_CHURCH'),

  -- Peter and Paul (Jun 29)
  ('saint-peter-apostle', 'KEYS'),
  ('saint-peter-apostle', 'BOOK'),
  ('saint-peter-apostle', 'FISH'),
  ('saint-peter-apostle', 'CROSS'),
  ('saint-peter-apostle', 'APOSTLE'),

  -- ── JULY ────────────────────────────────────────────────────────────────
  -- Thomas (Jul 3)
  ('saint-thomas-apostle', 'LANCE'),
  ('saint-thomas-apostle', 'CARPENTER_SQUARE'),
  ('saint-thomas-apostle', 'BOOK'),
  ('saint-thomas-apostle', 'APOSTLE'),

  -- Elizabeth of Portugal (Jul 4)
  ('saint-elizabeth-of-portugal', 'CROWN'),
  ('saint-elizabeth-of-portugal', 'ROSES'),
  ('saint-elizabeth-of-portugal', 'LILY'),
  ('saint-elizabeth-of-portugal', 'QUEEN'),

  -- Anthony Zaccaria (Jul 5)
  ('saint-anthony-zaccaria', 'BOOK'),
  ('saint-anthony-zaccaria', 'CROSS'),
  ('saint-anthony-zaccaria', 'PRIEST'),
  ('saint-anthony-zaccaria', 'BARNABITE'),

  -- Maria Goretti (Jul 6)
  ('saint-maria-goretti', 'LILY'),
  ('saint-maria-goretti', 'PALM'),
  ('saint-maria-goretti', 'VIRGIN'),
  ('saint-maria-goretti', 'MARTYR'),

  -- Augustine Zhao Rong and Companions (Jul 9)
  ('saint-augustine-zhao-rong', 'PALM'),
  ('saint-augustine-zhao-rong', 'MARTYR'),

  -- Benedict (Jul 11)
  ('saint-benedict', 'BOOK'),
  ('saint-benedict', 'CROSIER'),
  ('saint-benedict', 'CROSS'),
  ('saint-benedict', 'ABBOT'),
  ('saint-benedict', 'BENEDICTINE'),

  -- Henry (Jul 13)
  ('saint-henry', 'CROWN'),
  ('saint-henry', 'SWORD'),
  ('saint-henry', 'CROSS'),
  ('saint-henry', 'KING'),

  -- Camillus de Lellis (Jul 14)
  ('saint-camillus-de-lellis', 'CROSS'),
  ('saint-camillus-de-lellis', 'CHALICE'),
  ('saint-camillus-de-lellis', 'PRIEST'),
  ('saint-camillus-de-lellis', 'CAMILLANS'),

  -- Bonaventure (Jul 15)
  ('saint-bonaventure', 'BOOK'),
  ('saint-bonaventure', 'MITRE'),
  ('saint-bonaventure', 'BISHOP'),
  ('saint-bonaventure', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-bonaventure', 'FRANCISCAN'),

  -- Apollinaris (Jul 20)
  ('saint-apollinaris', 'MITRE'),
  ('saint-apollinaris', 'PALM'),
  ('saint-apollinaris', 'BISHOP'),
  ('saint-apollinaris', 'MARTYR'),

  -- Lawrence of Brindisi (Jul 21)
  ('saint-lawrence-of-brindisi', 'BOOK'),
  ('saint-lawrence-of-brindisi', 'MITRE'),
  ('saint-lawrence-of-brindisi', 'PRIEST'),
  ('saint-lawrence-of-brindisi', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-lawrence-of-brindisi', 'FRANCISCAN'),

  -- Mary Magdalene (Jul 22)
  ('saint-mary-magdalene', 'JAR_OF_OINTMENT'),
  ('saint-mary-magdalene', 'SKULL'),
  ('saint-mary-magdalene', 'BOOK'),

  -- Bridget of Sweden (Jul 23)
  ('saint-bridget', 'CROWN'),
  ('saint-bridget', 'BOOK'),
  ('saint-bridget', 'PILGRIM_STAFF'),
  ('saint-bridget', 'RELIGIOUS'),
  ('saint-bridget', 'BIRGITTINE'),

  -- Sharbel Makhluf (Jul 24)
  ('saint-sharbel-makhluf', 'CHALICE'),
  ('saint-sharbel-makhluf', 'CROSS'),
  ('saint-sharbel-makhluf', 'PRIEST'),

  -- James the Greater (Jul 25)
  ('saint-james-apostle', 'SCALLOP_SHELL'),
  ('saint-james-apostle', 'PILGRIM_STAFF'),
  ('saint-james-apostle', 'SWORD'),
  ('saint-james-apostle', 'BOOK'),
  ('saint-james-apostle', 'APOSTLE'),

  -- Joachim and Anne (Jul 26)
  ('saint-joachim', 'BOOK'),
  ('saint-joachim', 'LILY'),

  ('saint-anne', 'BOOK'),
  ('saint-anne', 'LILY'),

  -- Martha, Mary and Lazarus (Jul 29)
  ('saint-martha-of-bethany', 'BROOM'),
  ('saint-martha-of-bethany', 'KEYS'),

  ('saint-mary-of-bethany', 'JAR_OF_OINTMENT'),
  ('saint-mary-of-bethany', 'BOOK'),

  ('saint-lazarus-of-bethany', 'CROSS'),

  -- Peter Chrysologus (Jul 30)
  ('saint-peter-chrysologus', 'BOOK'),
  ('saint-peter-chrysologus', 'MITRE'),
  ('saint-peter-chrysologus', 'BISHOP'),
  ('saint-peter-chrysologus', 'DOCTOR_OF_THE_CHURCH'),

  -- Ignatius of Loyola (Jul 31)
  ('saint-ignatius-of-loyola', 'IHS_MONOGRAM'),
  ('saint-ignatius-of-loyola', 'BOOK'),
  ('saint-ignatius-of-loyola', 'CROSS'),
  ('saint-ignatius-of-loyola', 'PRIEST'),
  ('saint-ignatius-of-loyola', 'JESUIT'),

  -- ── AUGUST ──────────────────────────────────────────────────────────────
  -- Alphonsus Liguori (Aug 1)
  ('saint-alphonsus-liguori', 'BOOK'),
  ('saint-alphonsus-liguori', 'MITRE'),
  ('saint-alphonsus-liguori', 'PEN'),
  ('saint-alphonsus-liguori', 'BISHOP'),
  ('saint-alphonsus-liguori', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-alphonsus-liguori', 'REDEMPTORIST'),

  -- Eusebius of Vercelli (Aug 2)
  ('saint-eusebius-of-vercelli', 'BOOK'),
  ('saint-eusebius-of-vercelli', 'MITRE'),
  ('saint-eusebius-of-vercelli', 'BISHOP'),

  -- Peter Julian Eymard (Aug 2)
  ('saint-peter-julian-eymard', 'MONSTRANCE'),
  ('saint-peter-julian-eymard', 'CHALICE'),
  ('saint-peter-julian-eymard', 'PRIEST'),

  -- Jean Vianney / Curé d'Ars (Aug 4)
  ('saint-john-vianney', 'CHALICE'),
  ('saint-john-vianney', 'PRIEST'),

  -- Sixtus II and Companions (Aug 7)
  ('saint-sixtus-ii-and-companions', 'PALM'),
  ('saint-sixtus-ii-and-companions', 'POPE'),
  ('saint-sixtus-ii-and-companions', 'MARTYR'),

  -- Cajetan (Aug 7)
  ('saint-cajetan', 'LILY'),
  ('saint-cajetan', 'PRIEST'),
  ('saint-cajetan', 'THEATINE'),

  -- Dominic (Aug 8)
  ('saint-dominic', 'ROSARY'),
  ('saint-dominic', 'STAR'),
  ('saint-dominic', 'LILY'),
  ('saint-dominic', 'BOOK'),
  ('saint-dominic', 'PRIEST'),
  ('saint-dominic', 'DOMINICAN'),

  -- Teresa Benedicta of the Cross / Edith Stein (Aug 9)
  ('saint-teresa-benedicta-of-the-cross', 'CROSS'),
  ('saint-teresa-benedicta-of-the-cross', 'CROWN_OF_THORNS'),
  ('saint-teresa-benedicta-of-the-cross', 'STAR'),
  ('saint-teresa-benedicta-of-the-cross', 'VIRGIN'),
  ('saint-teresa-benedicta-of-the-cross', 'MARTYR'),
  ('saint-teresa-benedicta-of-the-cross', 'CARMELITE'),

  -- Lawrence (Aug 10)
  ('saint-lawrence', 'GRIDIRON'),
  ('saint-lawrence', 'PALM'),
  ('saint-lawrence', 'BOOK'),
  ('saint-lawrence', 'DEACON'),
  ('saint-lawrence', 'MARTYR'),

  -- Clare (Aug 11)
  ('saint-clare', 'MONSTRANCE'),
  ('saint-clare', 'LILY'),
  ('saint-clare', 'PALM'),
  ('saint-clare', 'VIRGIN'),
  ('saint-clare', 'ABBESS'),
  ('saint-clare', 'POOR_CLARES'),

  -- Jane Frances de Chantal (Aug 12)
  ('saint-jane-frances-de-chantal', 'BOOK'),
  ('saint-jane-frances-de-chantal', 'CROSS'),
  ('saint-jane-frances-de-chantal', 'RELIGIOUS'),
  ('saint-jane-frances-de-chantal', 'VISITANDINE'),

  -- Pontian (Aug 13)
  ('saint-pontian', 'PALM'),
  ('saint-pontian', 'MITRE'),
  ('saint-pontian', 'POPE'),
  ('saint-pontian', 'MARTYR'),

  -- Hippolytus (Aug 13)
  ('saint-hippolytus-of-rome', 'PALM'),
  ('saint-hippolytus-of-rome', 'PRIEST'),
  ('saint-hippolytus-of-rome', 'MARTYR'),

  -- Maximus the Confessor (Aug 13)
  ('saint-maximus-the-confessor', 'BOOK'),
  ('saint-maximus-the-confessor', 'CONFESSOR'),

  -- Maximilian Kolbe (Aug 14)
  ('saint-maximilian-kolbe', 'CROWN'),
  ('saint-maximilian-kolbe', 'PALM'),
  ('saint-maximilian-kolbe', 'ROSARY'),
  ('saint-maximilian-kolbe', 'PRIEST'),
  ('saint-maximilian-kolbe', 'MARTYR'),
  ('saint-maximilian-kolbe', 'FRANCISCAN'),

  -- Stephen of Hungary (Aug 16)
  ('saint-stephen-of-hungary', 'CROWN'),
  ('saint-stephen-of-hungary', 'CROSS'),
  ('saint-stephen-of-hungary', 'KING'),

  -- John Eudes (Aug 19)
  ('saint-john-eudes', 'FLAMING_HEART'),
  ('saint-john-eudes', 'BOOK'),
  ('saint-john-eudes', 'PRIEST'),
  ('saint-john-eudes', 'EUDISTS'),

  -- Bernard of Clairvaux (Aug 20)
  ('saint-bernard', 'BOOK'),
  ('saint-bernard', 'LILY'),
  ('saint-bernard', 'PEN'),
  ('saint-bernard', 'ABBOT'),
  ('saint-bernard', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-bernard', 'CISTERCIAN'),

  -- Pius X (Aug 21)
  ('saint-pius-x', 'MITRE'),
  ('saint-pius-x', 'POPE'),

  -- Rose of Lima (Aug 23)
  ('saint-rose-of-lima', 'ROSES'),
  ('saint-rose-of-lima', 'CROWN_OF_THORNS'),
  ('saint-rose-of-lima', 'ANCHOR'),
  ('saint-rose-of-lima', 'LILY'),
  ('saint-rose-of-lima', 'VIRGIN'),
  ('saint-rose-of-lima', 'DOMINICAN'),

  -- Bartholomew (Aug 24)
  ('saint-bartholomew-apostle', 'KNIFE'),
  ('saint-bartholomew-apostle', 'BOOK'),
  ('saint-bartholomew-apostle', 'PALM'),
  ('saint-bartholomew-apostle', 'APOSTLE'),

  -- Louis IX (Aug 25)
  ('saint-louis', 'CROWN'),
  ('saint-louis', 'SWORD'),
  ('saint-louis', 'LILY'),
  ('saint-louis', 'PILGRIM_STAFF'),
  ('saint-louis', 'KING'),

  -- Joseph Calasanz (Aug 25)
  ('saint-joseph-calasanz', 'BOOK'),
  ('saint-joseph-calasanz', 'LILY'),
  ('saint-joseph-calasanz', 'PRIEST'),
  ('saint-joseph-calasanz', 'PIARIST'),

  -- Monica (Aug 27)
  ('saint-monica', 'BOOK'),

  -- Augustine of Hippo (Aug 28)
  ('saint-augustine-of-hippo', 'BOOK'),
  ('saint-augustine-of-hippo', 'FLAMING_HEART'),
  ('saint-augustine-of-hippo', 'PEN'),
  ('saint-augustine-of-hippo', 'MITRE'),
  ('saint-augustine-of-hippo', 'BISHOP'),
  ('saint-augustine-of-hippo', 'DOCTOR_OF_THE_CHURCH'),

  -- Passion of John the Baptist (Aug 29)
  -- (same saint as John the Baptist, attributes already set above)

  -- ── SEPTEMBER ───────────────────────────────────────────────────────────
  -- Gregory the Great (Sep 3)
  ('saint-gregory-the-great', 'DOVE'),
  ('saint-gregory-the-great', 'BOOK'),
  ('saint-gregory-the-great', 'MITRE'),
  ('saint-gregory-the-great', 'PEN'),
  ('saint-gregory-the-great', 'POPE'),
  ('saint-gregory-the-great', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-gregory-the-great', 'BENEDICTINE'),

  -- Teresa of Calcutta (Sep 5)
  ('saint-teresa-of-calcutta', 'CROSS'),
  ('saint-teresa-of-calcutta', 'VIRGIN'),
  ('saint-teresa-of-calcutta', 'MISSIONARY_OF_CHARITY'),

  -- Peter Claver (Sep 9)
  ('saint-peter-claver', 'CROSS'),
  ('saint-peter-claver', 'CHAINS'),
  ('saint-peter-claver', 'PRIEST'),
  ('saint-peter-claver', 'JESUIT'),

  -- John Chrysostom (Sep 13)
  ('saint-john-chrysostom', 'BOOK'),
  ('saint-john-chrysostom', 'MITRE'),
  ('saint-john-chrysostom', 'PEN'),
  ('saint-john-chrysostom', 'DOVE'),
  ('saint-john-chrysostom', 'BISHOP'),
  ('saint-john-chrysostom', 'DOCTOR_OF_THE_CHURCH'),

  -- Cornelius (Sep 16)
  ('saint-cornelius', 'PALM'),
  ('saint-cornelius', 'MITRE'),
  ('saint-cornelius', 'POPE'),
  ('saint-cornelius', 'MARTYR'),

  -- Cyprian (Sep 16)
  ('saint-cyprian', 'BOOK'),
  ('saint-cyprian', 'PALM'),
  ('saint-cyprian', 'MITRE'),
  ('saint-cyprian', 'BISHOP'),
  ('saint-cyprian', 'MARTYR'),

  -- Robert Bellarmine (Sep 17)
  ('saint-robert-bellarmine', 'BOOK'),
  ('saint-robert-bellarmine', 'MITRE'),
  ('saint-robert-bellarmine', 'BISHOP'),
  ('saint-robert-bellarmine', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-robert-bellarmine', 'JESUIT'),

  -- Hildegard of Bingen (Sep 17)
  ('saint-hildegard-of-bingen', 'BOOK'),
  ('saint-hildegard-of-bingen', 'PEN'),
  ('saint-hildegard-of-bingen', 'FLAMES'),
  ('saint-hildegard-of-bingen', 'VIRGIN'),
  ('saint-hildegard-of-bingen', 'ABBESS'),
  ('saint-hildegard-of-bingen', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-hildegard-of-bingen', 'BENEDICTINE'),

  -- Januarius (Sep 19)
  ('saint-januarius', 'MITRE'),
  ('saint-januarius', 'PALM'),
  ('saint-januarius', 'BISHOP'),
  ('saint-januarius', 'MARTYR'),

  -- Andrew Kim Tae-gon, Paul Chong Ha-sang and Companions (Sep 20)
  ('saint-andrew-kim-tae-gon', 'PALM'),
  ('saint-andrew-kim-tae-gon', 'PRIEST'),
  ('saint-andrew-kim-tae-gon', 'MARTYR'),

  ('saint-paul-chong-ha-sang', 'PALM'),
  ('saint-paul-chong-ha-sang', 'MARTYR'),

  -- Matthew (Sep 21)
  ('saint-matthew', 'BOOK'),
  ('saint-matthew', 'COINS'),
  ('saint-matthew', 'HALBERD'),
  ('saint-matthew', 'APOSTLE'),
  ('saint-matthew', 'EVANGELIST'),

  -- Pius of Pietrelcina / Padre Pio (Sep 23)
  ('saint-pius-of-pietrelcina', 'STIGMATA'),
  ('saint-pius-of-pietrelcina', 'CROSS'),
  ('saint-pius-of-pietrelcina', 'PRIEST'),
  ('saint-pius-of-pietrelcina', 'FRANCISCAN'),

  -- Cosmas and Damian (Sep 26)
  ('saint-cosmas', 'PALM'),
  ('saint-cosmas', 'MARTYR'),

  ('saint-damian', 'PALM'),
  ('saint-damian', 'MARTYR'),

  -- Vincent de Paul (Sep 27)
  ('saint-vincent-de-paul', 'BOOK'),
  ('saint-vincent-de-paul', 'CHAINS'),
  ('saint-vincent-de-paul', 'CHILD_JESUS'),
  ('saint-vincent-de-paul', 'PRIEST'),
  ('saint-vincent-de-paul', 'VINCENTIAN'),

  -- Wenceslaus (Sep 28)
  ('saint-wenceslaus', 'CROWN'),
  ('saint-wenceslaus', 'LANCE'),
  ('saint-wenceslaus', 'SWORD'),
  ('saint-wenceslaus', 'MARTYR'),
  ('saint-wenceslaus', 'KING'),

  -- Lawrence Ruiz and Companions (Sep 28)
  ('saint-lawrence-ruiz', 'PALM'),
  ('saint-lawrence-ruiz', 'MARTYR'),

  -- Jerome (Sep 30)
  ('saint-jerome', 'BOOK'),
  ('saint-jerome', 'SKULL'),
  ('saint-jerome', 'LION'),
  ('saint-jerome', 'PEN'),
  ('saint-jerome', 'PRIEST'),
  ('saint-jerome', 'DOCTOR_OF_THE_CHURCH'),

  -- ── OCTOBER ─────────────────────────────────────────────────────────────
  -- Thérèse of the Child Jesus (Oct 1)
  ('saint-therese-of-the-child-jesus', 'ROSES'),
  ('saint-therese-of-the-child-jesus', 'CROSS'),
  ('saint-therese-of-the-child-jesus', 'LILY'),
  ('saint-therese-of-the-child-jesus', 'VIRGIN'),
  ('saint-therese-of-the-child-jesus', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-therese-of-the-child-jesus', 'CARMELITE'),

  -- Francis of Assisi (Oct 4)
  ('saint-francis-of-assisi', 'STIGMATA'),
  ('saint-francis-of-assisi', 'TAU_CROSS'),
  ('saint-francis-of-assisi', 'DOVE'),
  ('saint-francis-of-assisi', 'SKULL'),
  ('saint-francis-of-assisi', 'CONFESSOR'),
  ('saint-francis-of-assisi', 'FRANCISCAN'),

  -- Faustina Kowalska (Oct 5)
  ('saint-faustina-kowalska', 'RAYS_OF_MERCY'),
  ('saint-faustina-kowalska', 'CROSS'),
  ('saint-faustina-kowalska', 'VIRGIN'),

  -- Bruno (Oct 6)
  ('saint-bruno', 'SKULL'),
  ('saint-bruno', 'CROSS'),
  ('saint-bruno', 'BOOK'),
  ('saint-bruno', 'STAR'),
  ('saint-bruno', 'PRIEST'),
  ('saint-bruno', 'CARTHUSIAN'),

  -- Denis and Companions (Oct 9)
  ('saint-denis', 'MITRE'),
  ('saint-denis', 'PALM'),
  ('saint-denis', 'BISHOP'),
  ('saint-denis', 'MARTYR'),

  -- John Leonardi (Oct 9)
  ('saint-john-leonardi', 'BOOK'),
  ('saint-john-leonardi', 'PRIEST'),

  -- John Henry Newman (Oct 9)
  ('saint-john-henry-newman', 'BOOK'),
  ('saint-john-henry-newman', 'PRIEST'),
  ('saint-john-henry-newman', 'DOCTOR_OF_THE_CHURCH'),

  -- John XXIII (Oct 11)
  ('saint-john-xxiii', 'MITRE'),
  ('saint-john-xxiii', 'POPE'),

  -- Callistus I (Oct 14)
  ('saint-callistus-i', 'PALM'),
  ('saint-callistus-i', 'POPE'),
  ('saint-callistus-i', 'MARTYR'),

  -- Teresa of Jesus / Teresa of Ávila (Oct 15)
  ('saint-teresa-of-jesus', 'BOOK'),
  ('saint-teresa-of-jesus', 'PEN'),
  ('saint-teresa-of-jesus', 'DOVE'),
  ('saint-teresa-of-jesus', 'FLAMING_HEART'),
  ('saint-teresa-of-jesus', 'VIRGIN'),
  ('saint-teresa-of-jesus', 'ABBESS'),
  ('saint-teresa-of-jesus', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-teresa-of-jesus', 'CARMELITE'),

  -- Hedwig (Oct 16)
  ('saint-hedwig', 'CROWN'),
  ('saint-hedwig', 'LILY'),
  ('saint-hedwig', 'RELIGIOUS'),

  -- Margaret Mary Alacoque (Oct 16)
  ('saint-margaret-mary-alacoque', 'FLAMING_HEART'),
  ('saint-margaret-mary-alacoque', 'CROWN_OF_THORNS'),
  ('saint-margaret-mary-alacoque', 'VIRGIN'),
  ('saint-margaret-mary-alacoque', 'VISITANDINE'),

  -- Ignatius of Antioch (Oct 17)
  ('saint-ignatius-of-antioch', 'CHAINS'),
  ('saint-ignatius-of-antioch', 'PALM'),
  ('saint-ignatius-of-antioch', 'LION'),
  ('saint-ignatius-of-antioch', 'BISHOP'),
  ('saint-ignatius-of-antioch', 'MARTYR'),

  -- Luke (Oct 18)
  ('saint-luke', 'OX'),
  ('saint-luke', 'BOOK'),
  ('saint-luke', 'EVANGELIST'),

  -- John de Brébeuf and Isaac Jogues and Companions (Oct 19)
  ('saint-john-de-brebeuf', 'PALM'),
  ('saint-john-de-brebeuf', 'CROSS'),
  ('saint-john-de-brebeuf', 'PRIEST'),
  ('saint-john-de-brebeuf', 'MARTYR'),
  ('saint-john-de-brebeuf', 'JESUIT'),

  -- Paul of the Cross (Oct 19)
  ('saint-paul-of-the-cross', 'CROSS'),
  ('saint-paul-of-the-cross', 'FLAMING_HEART'),
  ('saint-paul-of-the-cross', 'PRIEST'),
  ('saint-paul-of-the-cross', 'PASSIONIST'),

  -- John Paul II (Oct 22)
  ('saint-john-paul-ii', 'MITRE'),
  ('saint-john-paul-ii', 'CROSS'),
  ('saint-john-paul-ii', 'POPE'),

  -- John of Capistrano (Oct 23)
  ('saint-john-of-capistrano', 'BOOK'),
  ('saint-john-of-capistrano', 'CROSS'),
  ('saint-john-of-capistrano', 'PRIEST'),
  ('saint-john-of-capistrano', 'FRANCISCAN'),

  -- Anthony Mary Claret (Oct 24)
  ('saint-anthony-mary-claret', 'BOOK'),
  ('saint-anthony-mary-claret', 'FLAMES'),
  ('saint-anthony-mary-claret', 'BISHOP'),
  ('saint-anthony-mary-claret', 'CLARETIAN'),

  -- Simon and Jude (Oct 28)
  ('saint-simon-apostle', 'SAW'),
  ('saint-simon-apostle', 'BOOK'),
  ('saint-simon-apostle', 'APOSTLE'),

  ('saint-jude-apostle', 'AXE'),
  ('saint-jude-apostle', 'BOOK'),
  ('saint-jude-apostle', 'APOSTLE'),

  -- ── NOVEMBER ────────────────────────────────────────────────────────────
  -- Martin de Porres (Nov 3)
  ('saint-martin-de-porres', 'BROOM'),
  ('saint-martin-de-porres', 'CROSS'),
  ('saint-martin-de-porres', 'ROSARY'),
  ('saint-martin-de-porres', 'RELIGIOUS'),
  ('saint-martin-de-porres', 'DOMINICAN'),

  -- Charles Borromeo (Nov 4)
  ('saint-charles-borromeo', 'BOOK'),
  ('saint-charles-borromeo', 'MITRE'),
  ('saint-charles-borromeo', 'CROSIER'),
  ('saint-charles-borromeo', 'BISHOP'),

  -- Leo the Great (Nov 10)
  ('saint-leo-the-great', 'BOOK'),
  ('saint-leo-the-great', 'MITRE'),
  ('saint-leo-the-great', 'PEN'),
  ('saint-leo-the-great', 'DOVE'),
  ('saint-leo-the-great', 'POPE'),
  ('saint-leo-the-great', 'DOCTOR_OF_THE_CHURCH'),

  -- Martin of Tours (Nov 11)
  ('saint-martin-of-tours', 'SWORD'),
  ('saint-martin-of-tours', 'MITRE'),
  ('saint-martin-of-tours', 'BISHOP'),

  -- Josaphat (Nov 12)
  ('saint-josaphat', 'MITRE'),
  ('saint-josaphat', 'PALM'),
  ('saint-josaphat', 'AXE'),
  ('saint-josaphat', 'BISHOP'),
  ('saint-josaphat', 'MARTYR'),
  ('saint-josaphat', 'BASILIAN'),

  -- Albert the Great (Nov 15)
  ('saint-albert-the-great', 'BOOK'),
  ('saint-albert-the-great', 'MITRE'),
  ('saint-albert-the-great', 'BISHOP'),
  ('saint-albert-the-great', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-albert-the-great', 'DOMINICAN'),

  -- Margaret of Scotland (Nov 16)
  ('saint-margaret-of-scotland', 'CROWN'),
  ('saint-margaret-of-scotland', 'BOOK'),
  ('saint-margaret-of-scotland', 'CROSS'),
  ('saint-margaret-of-scotland', 'QUEEN'),

  -- Gertrude the Great (Nov 16)
  ('saint-gertrude', 'FLAMING_HEART'),
  ('saint-gertrude', 'LILY'),
  ('saint-gertrude', 'CROWN'),
  ('saint-gertrude', 'VIRGIN'),
  ('saint-gertrude', 'BENEDICTINE'),

  -- Elizabeth of Hungary (Nov 17)
  ('saint-elizabeth-of-hungary', 'CROWN'),
  ('saint-elizabeth-of-hungary', 'ROSES'),
  ('saint-elizabeth-of-hungary', 'BREAD'),
  ('saint-elizabeth-of-hungary', 'RELIGIOUS'),
  ('saint-elizabeth-of-hungary', 'QUEEN'),
  ('saint-elizabeth-of-hungary', 'FRANCISCAN'),

  -- Cecilia (Nov 22)
  ('saint-cecilia', 'ORGAN'),
  ('saint-cecilia', 'ROSES'),
  ('saint-cecilia', 'LILY'),
  ('saint-cecilia', 'PALM'),
  ('saint-cecilia', 'VIRGIN'),
  ('saint-cecilia', 'MARTYR'),

  -- Clement I (Nov 23)
  ('saint-clement-i', 'ANCHOR'),
  ('saint-clement-i', 'PALM'),
  ('saint-clement-i', 'POPE'),
  ('saint-clement-i', 'MARTYR'),

  -- Columban (Nov 23)
  ('saint-columban', 'BOOK'),
  ('saint-columban', 'CROSIER'),
  ('saint-columban', 'ABBOT'),

  -- Andrew Dung-Lac and Companions (Nov 24)
  ('saint-andrew-dung-lac', 'PALM'),
  ('saint-andrew-dung-lac', 'PRIEST'),
  ('saint-andrew-dung-lac', 'MARTYR'),

  -- Catherine of Alexandria (Nov 25)
  ('saint-catherine-of-alexandria', 'WHEEL'),
  ('saint-catherine-of-alexandria', 'SWORD'),
  ('saint-catherine-of-alexandria', 'BOOK'),
  ('saint-catherine-of-alexandria', 'PALM'),
  ('saint-catherine-of-alexandria', 'CROWN'),
  ('saint-catherine-of-alexandria', 'VIRGIN'),
  ('saint-catherine-of-alexandria', 'MARTYR'),

  -- Andrew the Apostle (Nov 30)
  ('saint-andrew-apostle', 'SALTIRE'),
  ('saint-andrew-apostle', 'FISH'),
  ('saint-andrew-apostle', 'BOOK'),
  ('saint-andrew-apostle', 'APOSTLE'),

  -- ── DECEMBER ────────────────────────────────────────────────────────────
  -- Francis Xavier (Dec 3)
  ('saint-francis-xavier', 'BOOK'),
  ('saint-francis-xavier', 'CROSS'),
  ('saint-francis-xavier', 'LILY'),
  ('saint-francis-xavier', 'PRIEST'),
  ('saint-francis-xavier', 'JESUIT'),

  -- John Damascene (Dec 4)
  ('saint-john-damascene', 'BOOK'),
  ('saint-john-damascene', 'PEN'),
  ('saint-john-damascene', 'PRIEST'),
  ('saint-john-damascene', 'DOCTOR_OF_THE_CHURCH'),

  -- Nicholas (Dec 6)
  ('saint-nicholas', 'THREE_GOLDEN_BALLS'),
  ('saint-nicholas', 'MITRE'),
  ('saint-nicholas', 'BOOK'),
  ('saint-nicholas', 'ANCHOR'),
  ('saint-nicholas', 'BISHOP'),

  -- Ambrose (Dec 7)
  ('saint-ambrose', 'BOOK'),
  ('saint-ambrose', 'MITRE'),
  ('saint-ambrose', 'DOVE'),
  ('saint-ambrose', 'PEN'),
  ('saint-ambrose', 'BISHOP'),
  ('saint-ambrose', 'DOCTOR_OF_THE_CHURCH'),

  -- Juan Diego (Dec 9)
  ('saint-juan-diego-cuauhtlatoatzin', 'TILMA'),
  ('saint-juan-diego-cuauhtlatoatzin', 'ROSES'),

  -- Damasus I (Dec 11)
  ('saint-damasus-i', 'BOOK'),
  ('saint-damasus-i', 'MITRE'),
  ('saint-damasus-i', 'POPE'),

  -- Lucy (Dec 13)
  ('saint-lucy', 'EYES'),
  ('saint-lucy', 'LILY'),
  ('saint-lucy', 'PALM'),
  ('saint-lucy', 'LAMP'),
  ('saint-lucy', 'VIRGIN'),
  ('saint-lucy', 'MARTYR'),

  -- John of the Cross (Dec 14)
  ('saint-john-of-the-cross', 'BOOK'),
  ('saint-john-of-the-cross', 'CROSS'),
  ('saint-john-of-the-cross', 'PRIEST'),
  ('saint-john-of-the-cross', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-john-of-the-cross', 'CARMELITE'),

  -- Peter Canisius (Dec 21)
  ('saint-peter-canisius', 'BOOK'),
  ('saint-peter-canisius', 'PRIEST'),
  ('saint-peter-canisius', 'DOCTOR_OF_THE_CHURCH'),
  ('saint-peter-canisius', 'JESUIT'),

  -- John of Kanty (Dec 23)
  ('saint-john-of-kanty', 'BOOK'),
  ('saint-john-of-kanty', 'PRIEST'),

  -- Stephen, First Martyr (Dec 26)
  ('saint-stephen-martyr', 'STONES'),
  ('saint-stephen-martyr', 'PALM'),
  ('saint-stephen-martyr', 'BOOK'),
  ('saint-stephen-martyr', 'DEACON'),
  ('saint-stephen-martyr', 'MARTYR'),

  -- John, Apostle and Evangelist (Dec 27)
  ('saint-john', 'EAGLE'),
  ('saint-john', 'BOOK'),
  ('saint-john', 'CHALICE'),
  ('saint-john', 'APOSTLE'),
  ('saint-john', 'EVANGELIST'),

  -- Holy Innocents (Dec 28)
  ('holy-innocents', 'PALM'),
  ('holy-innocents', 'SWORD'),
  ('holy-innocents', 'MARTYR'),

  -- Thomas Becket (Dec 29)
  ('saint-thomas-becket', 'MITRE'),
  ('saint-thomas-becket', 'PALM'),
  ('saint-thomas-becket', 'SWORD'),
  ('saint-thomas-becket', 'BISHOP'),
  ('saint-thomas-becket', 'MARTYR'),

  -- Sylvester I (Dec 31)
  ('saint-sylvester-i', 'MITRE'),
  ('saint-sylvester-i', 'BOOK'),
  ('saint-sylvester-i', 'POPE'),

  -- ── MOVABLE FEASTS (saints not yet assigned above) ───────────────────────
  -- John Paul II (Oct 22) – already done above

  -- ── SAINTS WITHOUT FIXED CALENDAR DATE BUT PRESENT IN DB ────────────────
  -- (saints whose feast is movable or who appear as companions)

  -- Damian (companion of Cosmas, Sep 26)
  -- already inserted above

  -- Paul Chong Ha-sang (companion of Andrew Kim, Sep 20)
  -- already inserted above

  -- Lawrence Ruiz (companion feast, Sep 28)
  -- already inserted above

  -- Augustine Zhao Rong and companions (Jul 9)
  -- already inserted above

  -- ── ADDITIONAL SAINTS IN DB NOT YET COVERED ──────────────────────────────
  -- John of Ávila – already done above (May 10)
  -- Hildegard of Bingen – already done above (Sep 17)
  -- Teresa of Calcutta – already done above (Sep 5)
  -- Paul VI – already done above (May 29)
  -- John Henry Newman – already done above (Oct 9)
  -- Faustina Kowalska – already done above (Oct 5)
  -- John Paul II – already done above (Oct 22)
  -- Gregory of Narek – already done above (Feb 27)

  -- John Eudes – already done above (Aug 19)
  -- John XXIII – already done above (Oct 11)

  -- Peter Julian Eymard – already done above (Aug 2)

  -- Saints present in DB via martyrdom groups (no separate slug needed beyond above)

  -- Placeholder end-of-values sentinel (removed in final SQL)
  ('saint-mary', 'LILY')   -- duplicate, will be ignored by ON CONFLICT

) AS pairs(saint_slug, attr_code)
JOIN saints    s ON s.slug  = pairs.saint_slug
JOIN attributes a ON a.code = pairs.attr_code
ON CONFLICT DO NOTHING;

COMMIT;
