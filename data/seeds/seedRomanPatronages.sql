BEGIN;

-- =====================================================
-- SEED: PATRONAGES & TRANSLATIONS
-- Calendrier romain général
-- =====================================================
-- Run order: after seedRomanSaints.sql
-- Sources: Vatican.va, Catholic Encyclopedia,
--          Acta Apostolicae Sedis (proclamations officielles),
--          Butler's Lives of the Saints
-- Note: patronage_type dans les descriptions :
--   [OFF] = proclamé officiellement par le Saint-Siège
--   [TRD] = patronage traditionnel séculaire reconnu
--   [DEV] = dévotion populaire répandue
-- =====================================================


-- =====================================================
-- 1) PATRONAGES
-- =====================================================

INSERT INTO patronages (code) VALUES

-- --- GÉOGRAPHIE : NATIONS & RÉGIONS ---
('EUROPE'),
('IRELAND'),
('ENGLAND'),
('SCOTLAND'),
('GERMANY'),
('FRANCE'),
('SPAIN'),
('ITALY'),
('HUNGARY'),
('POLAND'),
('CZECH_REPUBLIC'),
('CANADA'),
('INDIA'),
('JAPAN'),
('VIETNAM'),
('KOREA'),
('MEXICO'),
('PERU'),
('ROME'),
('AFRICA_SUBSAHARAN'),

-- --- PROFESSIONS & MÉTIERS ---
('WORKERS'),
('CARPENTERS'),
('ARCHITECTS'),
('TEACHERS'),
('STUDENTS'),
('THEOLOGIANS'),
('PHILOSOPHERS'),
('JOURNALISTS'),
('WRITERS_AUTHORS'),
('MUSICIANS'),
('PAINTERS_ARTISTS'),
('PHYSICIANS'),
('SURGEONS'),
('NURSES_CAREGIVERS'),
('PHARMACISTS'),
('FISHERMEN'),
('SAILORS'),
('SOLDIERS'),
('LAWYERS_POLITICIANS'),
('ACCOUNTANTS'),
('COOKS'),
('LIBRARIANS'),
('MISSIONARIES'),
('SCIENTISTS'),
('ATHLETES'),
('CLERGY'),

-- --- GROUPES & ÉTATS DE VIE ---
('POOR'),
('SICK'),
('ORPHANS'),
('PRISONERS'),
('ENSLAVED_PEOPLE'),
('MOTHERS'),
('FATHERS'),
('FAMILIES'),
('CHILDREN'),
('YOUTH'),
('PILGRIMS'),
('WIDOWS'),

-- --- CAUSES & DOMAINES ---
('LOST_CAUSES'),
('LOST_ITEMS'),
('DESPERATE_CASES'),
('GOOD_DEATH'),
('ECOLOGY_ENVIRONMENT'),
('UNIVERSAL_CHURCH')

ON CONFLICT (code) DO NOTHING;


-- =====================================================
-- 2) TRANSLATIONS – English (en)
-- =====================================================

INSERT INTO patronage_translations (patronage_id, locale_code, label, description)
SELECT p.id, 'en', x.label, x.description
FROM patronages p
JOIN (VALUES
  -- Geography
  ('EUROPE',            'Europe',                   '[OFF] Patron saints of Europe: Benedict (1964), Cyril & Methodius (1980), Bridget, Catherine of Siena, Teresa Benedicta (1999).'),
  ('IRELAND',           'Ireland',                  '[OFF] Saint Patrick, apostle and bishop of Ireland (5th c.).'),
  ('ENGLAND',           'England',                  '[TRD] Saint George, martyr; also Augustine of Canterbury.'),
  ('SCOTLAND',          'Scotland',                 '[TRD] Saint Andrew, apostle; also Margaret of Scotland.'),
  ('GERMANY',           'Germany',                  '[TRD] Saint Boniface, apostle of the Germans; also Peter Canisius.'),
  ('FRANCE',            'France',                   '[TRD] Saint Denis, bishop and martyr; also Martin of Tours.'),
  ('SPAIN',             'Spain',                    '[TRD] Saint James the Greater, apostle (Santiago de Compostela).'),
  ('ITALY',             'Italy',                    '[OFF] Saint Francis of Assisi and Saint Catherine of Siena (1939).'),
  ('HUNGARY',           'Hungary',                  '[TRD] Saint Stephen of Hungary, first Christian king.'),
  ('POLAND',            'Poland',                   '[TRD] Saint Stanislaus of Kraków, bishop and martyr; also Adalbert and Casimir.'),
  ('CZECH_REPUBLIC',    'Czech Republic / Bohemia', '[TRD] Saint Wenceslaus, duke and martyr; also Adalbert.'),
  ('CANADA',            'Canada',                   '[OFF] Saint Joseph, patron of Canada (Pius X, 1624 confirmed).'),
  ('INDIA',             'India',                    '[TRD] Saint Thomas the Apostle, who evangelized India (tradition).'),
  ('JAPAN',             'Japan',                    '[TRD] Saint Francis Xavier, missionary; also Paul Miki and Companions.'),
  ('VIETNAM',           'Vietnam',                  '[OFF] Saint Andrew Dung-Lac and the Vietnamese Martyrs.'),
  ('KOREA',             'Korea',                    '[TRD] Saint Andrew Kim Tae-gon and the Korean Martyrs.'),
  ('MEXICO',            'Mexico',                   '[TRD] Saint Juan Diego Cuauhtlatoatzin and Our Lady of Guadalupe.'),
  ('PERU',              'Peru',                     '[TRD] Saint Rose of Lima, first canonized saint of the Americas; also Turibius of Mongrovejo.'),
  ('ROME',              'Rome',                     '[TRD] Saints Peter and Paul, apostles and martyrs in Rome.'),
  ('AFRICA_SUBSAHARAN', 'Sub-Saharan Africa',        '[TRD] Saint Charles Lwanga and the Uganda Martyrs, patrons of African Catholic youth.'),
  -- Professions
  ('WORKERS',           'Workers',                  '[OFF] Saint Joseph the Worker (feast established by Pius XII, 1955).'),
  ('CARPENTERS',        'Carpenters',               '[TRD] Saint Joseph, carpenter and guardian of the Holy Family.'),
  ('ARCHITECTS',        'Architects',               '[TRD] Saint Thomas the Apostle, who tradition says built a church in India.'),
  ('TEACHERS',          'Teachers',                 '[OFF] Saint John Baptist de La Salle (Leo XIII, 1900); also Angela Merici, Gregory the Great, Francis de Sales.'),
  ('STUDENTS',          'Students',                 '[TRD] Saint Thomas Aquinas, patron of Catholic students and schools; also John Baptist de La Salle.'),
  ('THEOLOGIANS',       'Theologians',              '[TRD] Saint Thomas Aquinas, Doctor Angelicus; also Augustine of Hippo and Paul the Apostle.'),
  ('PHILOSOPHERS',      'Philosophers',             '[TRD] Saint Thomas Aquinas, Doctor Angelicus and universal scholar.'),
  ('JOURNALISTS',       'Journalists',              '[OFF] Saint Francis de Sales, patron of journalists (Pius XI, 1923).'),
  ('WRITERS_AUTHORS',   'Writers and authors',      '[TRD] Saint Francis de Sales; also Paul the Apostle, John the Evangelist.'),
  ('MUSICIANS',         'Musicians',                '[TRD] Saint Cecilia, virgin and martyr, patron of sacred music; also Gregory the Great (Gregorian chant) and Hildegard of Bingen.'),
  ('PAINTERS_ARTISTS',  'Painters and artists',     '[TRD] Saint Luke the Evangelist, who by tradition painted the first icon of Mary.'),
  ('PHYSICIANS',        'Physicians',               '[TRD] Saint Luke the Evangelist (Col 4:14, "the beloved physician"); also Cosmas and Damian.'),
  ('SURGEONS',          'Surgeons',                 '[TRD] Saints Cosmas and Damian, physician-martyrs; also Luke the Evangelist.'),
  ('NURSES_CAREGIVERS', 'Nurses and caregivers',    '[TRD] Saint Camillus de Lellis (Leo XIII); also John of God, Catherine of Siena, Elizabeth of Hungary.'),
  ('PHARMACISTS',       'Pharmacists',              '[TRD] Saints Cosmas and Damian, physician-martyrs who dispensed medicine freely.'),
  ('FISHERMEN',         'Fishermen',                '[TRD] Saint Peter the Apostle, the fisherman; also Andrew the Apostle.'),
  ('SAILORS',           'Sailors and navigators',   '[TRD] Saint Nicholas of Myra; also Clement I (anchor); Francis Xavier (crossed vast seas).'),
  ('SOLDIERS',          'Soldiers',                 '[TRD] Saint George, martyr; also Sebastian, Martin of Tours, Ignatius of Loyola.'),
  ('LAWYERS_POLITICIANS','Lawyers and politicians', '[TRD] Saint Thomas More, lord chancellor and martyr (John Paul II, 2000).'),
  ('ACCOUNTANTS',       'Accountants and bankers',  '[TRD] Saint Matthew, the tax collector turned apostle.'),
  ('COOKS',             'Cooks',                    '[TRD] Saint Lawrence, deacon and martyr; also Martha of Bethany.'),
  ('LIBRARIANS',        'Librarians and archivists','[TRD] Saint Lawrence, entrusted with the church''s treasures; also Jerome, translator of the Bible.'),
  ('MISSIONARIES',      'Missionaries',             '[OFF] Saint Francis Xavier (Benedict XV, 1927); also Paul the Apostle and Ignatius of Loyola.'),
  ('SCIENTISTS',        'Scientists',               '[OFF] Saint Albert the Great, patron of natural scientists (Pius XII, 1941).'),
  ('ATHLETES',          'Athletes',                 '[TRD] Saint Sebastian, the arrow-pierced soldier, invoked by athletes.'),
  ('CLERGY',            'Diocesan clergy / Priests','[OFF] Saint John Vianney, Curé d''Ars, patron of parish priests (Pius XI, 1929).'),
  -- Groups
  ('POOR',              'The poor',                 '[TRD] Saint Lawrence; also Vincent de Paul, Francis of Assisi, Elizabeth of Hungary, Anthony of Padua, Teresa of Calcutta.'),
  ('SICK',              'The sick',                 '[TRD] Saint John of God; also Camillus de Lellis (both declared by Leo XIII, 1886).'),
  ('ORPHANS',           'Orphans',                  '[TRD] Saint Jerome Emiliani, founder of the Somascans who cared for orphans.'),
  ('PRISONERS',         'Prisoners',                '[TRD] Saint Vincent de Paul, who ministered to galley slaves; also Nicholas of Myra, Maximilian Kolbe.'),
  ('ENSLAVED_PEOPLE',   'Enslaved people',          '[TRD] Saint Peter Claver, apostle to enslaved Africans; also Josephine Bakhita.'),
  ('MOTHERS',           'Mothers',                  '[TRD] The Blessed Virgin Mary, model of motherhood; also Monica, mother of Augustine.'),
  ('FATHERS',           'Fathers',                  '[TRD] Saint Joseph, model of fatherly love and faithful guardianship.'),
  ('FAMILIES',          'Families',                 '[OFF] Saint Joseph, patron of the Holy Family; the Holy Family as model.'),
  ('CHILDREN',          'Children',                 '[TRD] Saint Nicholas of Myra, who saved three children; also the Holy Innocents.'),
  ('YOUTH',             'Young people',             '[TRD] Saint John Bosco, founder of the Salesians for abandoned youth; also Aloysius Gonzaga.'),
  ('PILGRIMS',          'Pilgrims',                 '[TRD] Saint James the Greater (Camino de Santiago); also Christopher (Magallanes) and Bridget of Sweden.'),
  ('WIDOWS',            'Widows',                   '[TRD] Saint Rita of Cascia; also Monica, Elizabeth of Hungary, Bridget of Sweden.'),
  -- Causes
  ('LOST_CAUSES',       'Lost and hopeless causes', '[TRD] Saint Jude the Apostle, invoked for desperate and seemingly hopeless situations.'),
  ('LOST_ITEMS',        'Lost items',               '[TRD] Saint Anthony of Padua, invoked since the Middle Ages for finding lost objects.'),
  ('DESPERATE_CASES',   'Desperate cases',          '[TRD] Saint Rita of Cascia, the "saint of impossible cases."'),
  ('GOOD_DEATH',        'A holy death',             '[TRD] Saint Joseph, who died surrounded by Jesus and Mary; patron of a happy death.'),
  ('ECOLOGY_ENVIRONMENT','Ecology and environment', '[OFF] Saint Francis of Assisi, patron of ecology (John Paul II, Canticle of the Sun, 1979).'),
  ('UNIVERSAL_CHURCH',  'The Universal Church',     '[OFF] Saint Joseph, patron of the Universal Church (Pius IX, Quemadmodum Deus, 1870).')
) AS x(code, label, description)
ON p.code = x.code
ON CONFLICT (patronage_id, locale_code) DO UPDATE
  SET label = EXCLUDED.label, description = EXCLUDED.description;


-- =====================================================
-- 3) TRANSLATIONS – Français (fr)
-- =====================================================

INSERT INTO patronage_translations (patronage_id, locale_code, label, description)
SELECT p.id, 'fr', x.label, x.description
FROM patronages p
JOIN (VALUES
  -- Géographie
  ('EUROPE',            'Europe',                     '[OFF] Saints patrons de l''Europe : Benoît (1964), Cyrille & Méthode (1980), Brigitte, Catherine de Sienne, Teresa Bénédicte (1999).'),
  ('IRELAND',           'Irlande',                    '[OFF] Saint Patrick, apôtre et évêque de l''Irlande (Ve s.).'),
  ('ENGLAND',           'Angleterre',                 '[TRD] Saint Georges, martyr ; aussi Augustin de Cantorbéry.'),
  ('SCOTLAND',          'Écosse',                     '[TRD] Saint André, apôtre ; aussi Marguerite d''Écosse.'),
  ('GERMANY',           'Allemagne',                  '[TRD] Saint Boniface, apôtre des Germains ; aussi Pierre Canisius.'),
  ('FRANCE',            'France',                     '[TRD] Saint Denis, évêque et martyr ; aussi Martin de Tours.'),
  ('SPAIN',             'Espagne',                    '[TRD] Saint Jacques le Majeur, apôtre (Saint-Jacques-de-Compostelle).'),
  ('ITALY',             'Italie',                     '[OFF] Saint François d''Assise et sainte Catherine de Sienne (Pie XII, 1939).'),
  ('HUNGARY',           'Hongrie',                    '[TRD] Saint Étienne de Hongrie, premier roi chrétien.'),
  ('POLAND',            'Pologne',                    '[TRD] Saint Stanislas de Cracovie, évêque et martyr ; aussi Adalbert et Casimir.'),
  ('CZECH_REPUBLIC',    'République tchèque / Bohême','[TRD] Saint Venceslas, prince et martyr ; aussi Adalbert.'),
  ('CANADA',            'Canada',                     '[OFF] Saint Joseph, patron du Canada (Pie X, confirmation 1624).'),
  ('INDIA',             'Inde',                       '[TRD] Saint Thomas l''Apôtre, qui évangélisa l''Inde selon la tradition.'),
  ('JAPAN',             'Japon',                      '[TRD] Saint François Xavier, missionnaire ; aussi Paul Miki et ses compagnons.'),
  ('VIETNAM',           'Vietnam',                    '[OFF] Saint André Dũng-Lạc et les martyrs du Vietnam.'),
  ('KOREA',             'Corée',                      '[TRD] Saint André Kim Tae-gŏn et les martyrs coréens.'),
  ('MEXICO',            'Mexique',                    '[TRD] Saint Juan Diego et Notre-Dame de Guadalupe.'),
  ('PERU',              'Pérou',                      '[TRD] Sainte Rose de Lima, première sainte canonisée d''Amérique ; aussi Turibe de Mogrovejo.'),
  ('ROME',              'Rome',                       '[TRD] Saints Pierre et Paul, apôtres martyrisés à Rome.'),
  ('AFRICA_SUBSAHARAN', 'Afrique subsaharienne',      '[TRD] Saint Charles Lwanga et les martyrs de l''Ouganda, patrons de la jeunesse catholique africaine.'),
  -- Professions
  ('WORKERS',           'Travailleurs',               '[OFF] Saint Joseph travailleur (fête instituée par Pie XII, 1955).'),
  ('CARPENTERS',        'Charpentiers',               '[TRD] Saint Joseph, charpentier et gardien de la Sainte Famille.'),
  ('ARCHITECTS',        'Architectes',                '[TRD] Saint Thomas l''Apôtre, qui aurait, selon la tradition, bâti une église en Inde.'),
  ('TEACHERS',          'Enseignants',                '[OFF] Saint Jean-Baptiste de La Salle (Léon XIII, 1900) ; aussi Angèle Merici, Grégoire le Grand, François de Sales.'),
  ('STUDENTS',          'Étudiants',                  '[TRD] Saint Thomas d''Aquin, patron des étudiants et écoles catholiques ; aussi Jean-Baptiste de La Salle.'),
  ('THEOLOGIANS',       'Théologiens',                '[TRD] Saint Thomas d''Aquin, Docteur Angélique ; aussi Augustin d''Hippone et Paul l''Apôtre.'),
  ('PHILOSOPHERS',      'Philosophes',                '[TRD] Saint Thomas d''Aquin, savant universel et Docteur de l''Église.'),
  ('JOURNALISTS',       'Journalistes',               '[OFF] Saint François de Sales, patron des journalistes (Pie XI, 1923).'),
  ('WRITERS_AUTHORS',   'Écrivains et auteurs',       '[TRD] Saint François de Sales ; aussi Paul l''Apôtre et Jean l''Évangéliste.'),
  ('MUSICIANS',         'Musiciens',                  '[TRD] Sainte Cécile, vierge et martyre, patronne de la musique sacrée ; aussi Grégoire le Grand et Hildegarde de Bingen.'),
  ('PAINTERS_ARTISTS',  'Peintres et artistes',       '[TRD] Saint Luc l''Évangéliste, qui aurait peint la première icône de Marie selon la tradition.'),
  ('PHYSICIANS',        'Médecins',                   '[TRD] Saint Luc l''Évangéliste (Col 4,14, « le médecin bien-aimé ») ; aussi Côme et Damien.'),
  ('SURGEONS',          'Chirurgiens',                '[TRD] Saints Côme et Damien, martyrs médecins ; aussi Luc l''Évangéliste.'),
  ('NURSES_CAREGIVERS', 'Infirmiers et soignants',    '[TRD] Saint Camille de Lellis (Léon XIII) ; aussi Jean de Dieu, Catherine de Sienne, Élisabeth de Hongrie.'),
  ('PHARMACISTS',       'Pharmaciens',                '[TRD] Saints Côme et Damien, qui dispensaient gratuitement leurs soins et remèdes.'),
  ('FISHERMEN',         'Pêcheurs',                   '[TRD] Saint Pierre l''Apôtre, le pêcheur ; aussi André l''Apôtre.'),
  ('SAILORS',           'Marins et navigateurs',      '[TRD] Saint Nicolas de Myre ; aussi Clément I (ancre) et François Xavier.'),
  ('SOLDIERS',          'Soldats',                    '[TRD] Saint Georges, martyr ; aussi Sébastien, Martin de Tours, Ignace de Loyola.'),
  ('LAWYERS_POLITICIANS','Avocats et hommes d''État', '[TRD] Saint Thomas More, lord chancelier et martyr (Jean-Paul II, 2000).'),
  ('ACCOUNTANTS',       'Comptables et banquiers',    '[TRD] Saint Matthieu, le publicain devenu apôtre.'),
  ('COOKS',             'Cuisiniers',                 '[TRD] Saint Laurent, diacre et martyr ; aussi Marthe de Béthanie.'),
  ('LIBRARIANS',        'Bibliothécaires et archivistes','[TRD] Saint Laurent, chargé des trésors de l''Église ; aussi Jérôme, traducteur de la Bible.'),
  ('MISSIONARIES',      'Missionnaires',              '[OFF] Saint François Xavier (Benoît XV, 1927) ; aussi Paul l''Apôtre et Ignace de Loyola.'),
  ('SCIENTISTS',        'Scientifiques',              '[OFF] Saint Albert le Grand, patron des scientifiques (Pie XII, 1941).'),
  ('ATHLETES',          'Sportifs et athlètes',       '[TRD] Saint Sébastien, soldat transpercé de flèches, invoqué par les athlètes.'),
  ('CLERGY',            'Clergé diocésain / Curés',   '[OFF] Saint Jean-Marie Vianney, curé d''Ars, patron des curés (Pie XI, 1929).'),
  -- Groupes
  ('POOR',              'Les pauvres',                '[TRD] Saint Laurent ; aussi Vincent de Paul, François d''Assise, Élisabeth de Hongrie, Antoine de Padoue, Mère Teresa.'),
  ('SICK',              'Les malades',                '[TRD] Saint Jean de Dieu ; aussi Camille de Lellis (tous deux par Léon XIII, 1886).'),
  ('ORPHANS',           'Les orphelins',              '[TRD] Saint Jérôme Émiliani, fondateur des Somasques au service des orphelins.'),
  ('PRISONERS',         'Les prisonniers',            '[TRD] Saint Vincent de Paul, qui servit les galériens ; aussi Nicolas de Myre et Maximilien Kolbe.'),
  ('ENSLAVED_PEOPLE',   'Les victimes de l''esclavage','[TRD] Saint Pierre Claver, apôtre des esclaves africains ; aussi Joséphine Bakhita.'),
  ('MOTHERS',           'Les mères',                  '[TRD] La Bienheureuse Vierge Marie, modèle de la maternité ; aussi Monique, mère d''Augustin.'),
  ('FATHERS',           'Les pères',                  '[TRD] Saint Joseph, modèle de la paternité fidèle et protectrice.'),
  ('FAMILIES',          'Les familles',               '[OFF] Saint Joseph, patron de la Sainte Famille ; la Sainte Famille comme modèle.'),
  ('CHILDREN',          'Les enfants',                '[TRD] Saint Nicolas de Myre, qui sauva trois enfants ; aussi les Saints Innocents.'),
  ('YOUTH',             'Les jeunes',                 '[TRD] Saint Jean Bosco, fondateur des Salésiens pour la jeunesse abandonnée ; aussi Aloysius Gonzague.'),
  ('PILGRIMS',          'Les pèlerins',               '[TRD] Saint Jacques le Majeur (Camino de Santiago) ; aussi Christophe Magallanes et Brigitte de Suède.'),
  ('WIDOWS',            'Les veuves',                 '[TRD] Sainte Rita de Cascia ; aussi Monique, Élisabeth de Hongrie et Brigitte de Suède.'),
  -- Causes
  ('LOST_CAUSES',       'Les causes désespérées',     '[TRD] Saint Jude l''Apôtre, invoqué pour les situations désespérées depuis le Moyen Âge.'),
  ('LOST_ITEMS',        'Les objets perdus',          '[TRD] Saint Antoine de Padoue, invoqué depuis le Moyen Âge pour retrouver les objets perdus.'),
  ('DESPERATE_CASES',   'Les cas impossibles',        '[TRD] Sainte Rita de Cascia, la « sainte des causes impossibles ».'),
  ('GOOD_DEATH',        'La bonne mort',              '[TRD] Saint Joseph, mort entouré de Jésus et Marie ; patron d''une mort heureuse.'),
  ('ECOLOGY_ENVIRONMENT','Écologie et environnement', '[OFF] Saint François d''Assise, patron de l''écologie (Jean-Paul II, Cantique des créatures, 1979).'),
  ('UNIVERSAL_CHURCH',  'L''Église universelle',      '[OFF] Saint Joseph, patron de l''Église universelle (Pie IX, Quemadmodum Deus, 1870).')
) AS x(code, label, description)
ON p.code = x.code
ON CONFLICT (patronage_id, locale_code) DO UPDATE
  SET label = EXCLUDED.label, description = EXCLUDED.description;


-- =====================================================
-- 4) TRANSLATIONS – Latin (la)
-- =====================================================

INSERT INTO patronage_translations (patronage_id, locale_code, label, description)
SELECT p.id, 'la', x.label, x.description
FROM patronages p
JOIN (VALUES
  -- Geographica
  ('EUROPE',            'Europa',                   '[OFF] Sancti patroni Europae: Benedictus (1964), Cyrillus et Methodius (1980), Birgitta, Catharina Senensis, Teresia Benedicta (1999).'),
  ('IRELAND',           'Hibernia',                 '[OFF] Sanctus Patricius, apostolus et episcopus Hiberniae.'),
  ('ENGLAND',           'Anglia',                   '[TRD] Sanctus Georgius, martyr; etiam Augustinus Cantuariensis.'),
  ('SCOTLAND',          'Scotia',                   '[TRD] Sanctus Andreas, apostolus; etiam Margarita Scotiae.'),
  ('GERMANY',           'Germania',                 '[TRD] Sanctus Bonifacius, apostolus Germanorum; etiam Petrus Canisius.'),
  ('FRANCE',            'Gallia',                   '[TRD] Sanctus Dionysius, episcopus et martyr; etiam Martinus Turonensis.'),
  ('SPAIN',             'Hispania',                 '[TRD] Sanctus Iacobus Maior, apostolus (Sanctus Iacobus Compostellanus).'),
  ('ITALY',             'Italia',                   '[OFF] Sanctus Franciscus Assisiensis et Sancta Catharina Senensis (Pius XII, 1939).'),
  ('HUNGARY',           'Hungaria',                 '[TRD] Sanctus Stephanus Hungariae rex, primus rex christianus.'),
  ('POLAND',            'Polonia',                  '[TRD] Sanctus Stanislaus Cracoviensis, episcopus et martyr; etiam Adalbertus et Casimirus.'),
  ('CZECH_REPUBLIC',    'Bohemia',                  '[TRD] Sanctus Venceslaus, dux et martyr; etiam Adalbertus.'),
  ('CANADA',            'Canada',                   '[OFF] Sanctus Ioseph, patronus Canadae.'),
  ('INDIA',             'India',                    '[TRD] Sanctus Thomas Apostolus, qui Indiam evangelizasse traditur.'),
  ('JAPAN',             'Iaponia',                  '[TRD] Sanctus Franciscus Xaverius, missionarius; etiam Paulus Miki et socii.'),
  ('VIETNAM',           'Vietnam',                  '[OFF] Sanctus Andreas Dung-Lac et Martyres Vietnamenses.'),
  ('KOREA',             'Korea',                    '[TRD] Sanctus Andreas Kim Tae-gon et Martyres Coreani.'),
  ('MEXICO',            'Mexico',                   '[TRD] Sanctus Ioannes Didacus et Nostra Domina Guadalupensis.'),
  ('PERU',              'Peruvia',                  '[TRD] Sancta Rosa Limana, prima sancta Americarum canonizata; etiam Toribius Mogroveiensis.'),
  ('ROME',              'Roma',                     '[TRD] Sancti Petrus et Paulus, apostoli et martyres Romae.'),
  ('AFRICA_SUBSAHARAN', 'Africa subsahariana',      '[TRD] Sanctus Carolus Lwanga et Martyres Ugandenses, patroni iuventutis catholicae Africae.'),
  -- Professiones
  ('WORKERS',           'Opifices',                 '[OFF] Sanctus Ioseph Opifex (festum a Pio XII anno 1955 institutum).'),
  ('CARPENTERS',        'Fabri lignarii',            '[TRD] Sanctus Ioseph, faber lignarius et custos Sanctae Familiae.'),
  ('ARCHITECTS',        'Architecti',               '[TRD] Sanctus Thomas Apostolus, qui in India ecclesiam aedificasse traditur.'),
  ('TEACHERS',          'Magistri et paedagogi',    '[OFF] Sanctus Ioannes Baptista de La Salle (Leo XIII, 1900); etiam Angela Mericia, Gregorius Magnus, Franciscus Salesius.'),
  ('STUDENTS',          'Discipuli et scholares',   '[TRD] Sanctus Thomas Aquinas, patronus scholarium catholicorum; etiam Ioannes de La Salle.'),
  ('THEOLOGIANS',       'Theologi',                 '[TRD] Sanctus Thomas Aquinas, Doctor Angelicus; etiam Augustinus Hipponensis et Paulus Apostolus.'),
  ('PHILOSOPHERS',      'Philosophi',               '[TRD] Sanctus Thomas Aquinas, Doctor universalis et Angelicus.'),
  ('JOURNALISTS',       'Ephemerides scriptores',   '[OFF] Sanctus Franciscus Salesius, patronus ephemeridum scriptorum (Pius XI, 1923).'),
  ('WRITERS_AUTHORS',   'Scriptores et auctores',   '[TRD] Sanctus Franciscus Salesius; etiam Paulus Apostolus et Ioannes Evangelista.'),
  ('MUSICIANS',         'Musici',                   '[TRD] Sancta Caecilia, virgo et martyr, patrona musicae sacrae; etiam Gregorius Magnus et Hildegardis Bingensis.'),
  ('PAINTERS_ARTISTS',  'Pictores et artifices',    '[TRD] Sanctus Lucas Evangelista, qui primas imagines Mariae pinxisse traditur.'),
  ('PHYSICIANS',        'Medici',                   '[TRD] Sanctus Lucas Evangelista (Col 4,14, «medicus carissimus»); etiam Cosmas et Damianus.'),
  ('SURGEONS',          'Chirurgi',                 '[TRD] Sancti Cosmas et Damianus, medici martyres; etiam Lucas Evangelista.'),
  ('NURSES_CAREGIVERS', 'Infirmarii et curatores',  '[TRD] Sanctus Camillus de Lellis (Leo XIII); etiam Ioannes a Deo, Catharina Senensis, Elisabeth Hungariae.'),
  ('PHARMACISTS',       'Pharmacopoei',             '[TRD] Sancti Cosmas et Damianus, qui remedia sine mercede praebebant.'),
  ('FISHERMEN',         'Piscatores',               '[TRD] Sanctus Petrus Apostolus, piscator; etiam Andreas Apostolus.'),
  ('SAILORS',           'Nautae et navigatores',    '[TRD] Sanctus Nicolaus Myrensis; etiam Clemens I (ancora) et Franciscus Xaverius.'),
  ('SOLDIERS',          'Milites',                  '[TRD] Sanctus Georgius, martyr; etiam Sebastianus, Martinus Turonensis, Ignatius Loyolanus.'),
  ('LAWYERS_POLITICIANS','Iurisconsulti et politici','[TRD] Sanctus Thomas Morus, cancellarius regni et martyr (Ioannes Paulus II, 2000).'),
  ('ACCOUNTANTS',       'Rationarii et argentarii', '[TRD] Sanctus Matthaeus, publicanus factus apostolus.'),
  ('COOKS',             'Coqui',                    '[TRD] Sanctus Laurentius, diaconus et martyr; etiam Martha Bethaniae.'),
  ('LIBRARIANS',        'Bibliothecarii',            '[TRD] Sanctus Laurentius, thesauris Ecclesiae praefectus; etiam Hieronymus, Vulgatum transtulit.'),
  ('MISSIONARIES',      'Missionarii',              '[OFF] Sanctus Franciscus Xaverius (Benedictus XV, 1927); etiam Paulus Apostolus et Ignatius Loyolanus.'),
  ('SCIENTISTS',        'Naturae investigatores',   '[OFF] Sanctus Albertus Magnus, patronus scientiarum naturalium (Pius XII, 1941).'),
  ('ATHLETES',          'Athletae',                 '[TRD] Sanctus Sebastianus, miles sagittis transfixus, ab athletis invocatus.'),
  ('CLERGY',            'Clerici et parochi',        '[OFF] Sanctus Ioannes Maria Vianney, patronus parochorum (Pius XI, 1929).'),
  -- Coetus
  ('POOR',              'Pauperes',                 '[TRD] Sanctus Laurentius; etiam Vincentius a Paulo, Franciscus Assisiensis, Elisabeth Hungariae, Antonius Patavinus, Teresia Calcuttensis.'),
  ('SICK',              'Infirmi',                  '[TRD] Sanctus Ioannes a Deo; etiam Camillus de Lellis (Leo XIII, 1886).'),
  ('ORPHANS',           'Orphani',                  '[TRD] Sanctus Hieronymus Aemiliani, fundator Somaschensium pro orphanis.'),
  ('PRISONERS',         'Vincti et captivi',        '[TRD] Sanctus Vincentius a Paulo, qui triremis damnatis serviit; etiam Nicolaus Myrensis et Maximilianus Kolbe.'),
  ('ENSLAVED_PEOPLE',   'Servi et mancipia',        '[TRD] Sanctus Petrus Claver, apostolus Afrorum in servitutem actorum; etiam Iosephina Bakhita.'),
  ('MOTHERS',           'Matres',                   '[TRD] Beata Virgo Maria, exemplar maternitatis; etiam Monica, mater Augustini.'),
  ('FATHERS',           'Patres familias',           '[TRD] Sanctus Ioseph, exemplar paternitatis fidelis et tutantis.'),
  ('FAMILIES',          'Familiae',                 '[OFF] Sanctus Ioseph, patronus Sanctae Familiae; Sancta Familia ut exemplar.'),
  ('CHILDREN',          'Pueri',                    '[TRD] Sanctus Nicolaus Myrensis, qui tres pueros servavit; etiam Sancti Innocentes.'),
  ('YOUTH',             'Iuvenes',                  '[TRD] Sanctus Ioannes Bosco, fundator Salesianorum pro iuventute derelicta; etiam Aloysius Gonzaga.'),
  ('PILGRIMS',          'Peregrini',                '[TRD] Sanctus Iacobus Maior (Via Sancti Iacobi); etiam Christophorus Magallanes et Birgitta Suecica.'),
  ('WIDOWS',            'Viduae',                   '[TRD] Sancta Rita Cassiensis; etiam Monica, Elisabeth Hungariae et Birgitta Suecica.'),
  -- Causae
  ('LOST_CAUSES',       'Causae desperatae',        '[TRD] Sanctus Iudas Apostolus, pro causis desperatis a Medio Aevo invocatus.'),
  ('LOST_ITEMS',        'Res amissae',              '[TRD] Sanctus Antonius Patavinus, pro rebus amissis a Medio Aevo invocatus.'),
  ('DESPERATE_CASES',   'Causae impossibiles',      '[TRD] Sancta Rita Cassiensis, «sancta causarum impossibilium».'),
  ('GOOD_DEATH',        'Mors bona',                '[TRD] Sanctus Ioseph, qui Iesu et Maria adstantibus obiit; patronus bonae mortis.'),
  ('ECOLOGY_ENVIRONMENT','Oecologia et natura',     '[OFF] Sanctus Franciscus Assisiensis, patronus oecologiae (Ioannes Paulus II, Canticum creaturarum, 1979).'),
  ('UNIVERSAL_CHURCH',  'Ecclesia universalis',     '[OFF] Sanctus Ioseph, patronus Ecclesiae universalis (Pius IX, Quemadmodum Deus, 1870).')
) AS x(code, label, description)
ON p.code = x.code
ON CONFLICT (patronage_id, locale_code) DO UPDATE
  SET label = EXCLUDED.label, description = EXCLUDED.description;

-- ======================================================
-- 5) SAINT-PATRONAGES
-- ======================================================
INSERT INTO saint_patronages (saint_id, patronage_id)
SELECT s.id, p.id
FROM (VALUES

  -- ── MARIE ────────────────────────────────────────────────────────────────
  ('saint-mary',              'MOTHERS'),

  -- ── JOSEPH ───────────────────────────────────────────────────────────────
  ('saint-joseph',            'UNIVERSAL_CHURCH'),
  ('saint-joseph',            'WORKERS'),
  ('saint-joseph',            'CARPENTERS'),
  ('saint-joseph',            'FATHERS'),
  ('saint-joseph',            'FAMILIES'),
  ('saint-joseph',            'GOOD_DEATH'),
  ('saint-joseph',            'CANADA'),

  -- ── APÔTRES ──────────────────────────────────────────────────────────────
  ('saint-peter-apostle',     'FISHERMEN'),
  ('saint-peter-apostle',     'ROME'),

  ('saint-paul-apostle',      'MISSIONARIES'),
  ('saint-paul-apostle',      'THEOLOGIANS'),
  ('saint-paul-apostle',      'ROME'),
  ('saint-paul-apostle',      'WRITERS_AUTHORS'),

  ('saint-andrew-apostle',    'SCOTLAND'),
  ('saint-andrew-apostle',    'FISHERMEN'),

  ('saint-james-apostle',     'SPAIN'),
  ('saint-james-apostle',     'PILGRIMS'),

  ('saint-john',              'THEOLOGIANS'),
  ('saint-john',              'WRITERS_AUTHORS'),

  ('saint-thomas-apostle',    'INDIA'),
  ('saint-thomas-apostle',    'ARCHITECTS'),

  ('saint-matthew',           'ACCOUNTANTS'),

  ('saint-luke',              'PHYSICIANS'),
  ('saint-luke',              'SURGEONS'),
  ('saint-luke',              'PAINTERS_ARTISTS'),

  ('saint-jude-apostle',      'LOST_CAUSES'),

  -- ── JEAN-BAPTISTE ────────────────────────────────────────────────────────
  -- (pas de patronage universel distinct retenu ici)

  -- ── MARTYRS ──────────────────────────────────────────────────────────────
  ('holy-innocents',          'CHILDREN'),

  ('saint-sebastian',         'SOLDIERS'),
  ('saint-sebastian',         'ATHLETES'),

  ('saint-george',            'ENGLAND'),
  ('saint-george',            'SOLDIERS'),

  ('saint-stephen-martyr',    'POOR'),        -- il donna les biens de l'Église aux pauvres avant son martyre

  ('saint-lawrence',          'COOKS'),
  ('saint-lawrence',          'LIBRARIANS'),
  ('saint-lawrence',          'POOR'),

  ('saint-cecilia',           'MUSICIANS'),

  ('saint-clement-i',         'SAILORS'),

  ('saint-thomas-more',       'LAWYERS_POLITICIANS'),

  ('saint-thomas-becket',     'CLERGY'),

  ('saint-maximilian-kolbe',  'JOURNALISTS'),
  ('saint-maximilian-kolbe',  'PRISONERS'),

  ('saint-charles-lwanga',    'AFRICA_SUBSAHARAN'),
  ('saint-charles-lwanga',    'YOUTH'),

  ('saint-paul-miki',         'JAPAN'),

  ('saint-andrew-dung-lac',   'VIETNAM'),

  ('saint-andrew-kim-tae-gon','KOREA'),
  ('saint-paul-chong-ha-sang','KOREA'),

  -- ── PAPES ────────────────────────────────────────────────────────────────
  ('saint-gregory-the-great', 'MUSICIANS'),
  ('saint-gregory-the-great', 'TEACHERS'),

  -- ── ÉVÊQUES ──────────────────────────────────────────────────────────────
  ('saint-nicholas',          'CHILDREN'),
  ('saint-nicholas',          'SAILORS'),
  ('saint-nicholas',          'PRISONERS'),

  ('saint-patrick',           'IRELAND'),

  ('saint-boniface',          'GERMANY'),

  ('saint-denis',             'FRANCE'),

  ('saint-martin-of-tours',   'FRANCE'),
  ('saint-martin-of-tours',   'SOLDIERS'),
  ('saint-martin-of-tours',   'POOR'),

  ('saint-augustine-of-canterbury', 'ENGLAND'),

  ('saint-peter-canisius',    'GERMANY'),

  ('saint-januarius',         'POOR'),   -- patron de Naples dans la tradition populaire, mais surtout invoqué lors des épidémies ; retenons POOR

  ('saint-turibius-of-mogrovejo', 'PERU'),

  -- ── DOCTEURS DE L'ÉGLISE ─────────────────────────────────────────────────
  ('saint-thomas-aquinas',    'STUDENTS'),
  ('saint-thomas-aquinas',    'THEOLOGIANS'),
  ('saint-thomas-aquinas',    'PHILOSOPHERS'),

  ('saint-augustine-of-hippo','THEOLOGIANS'),

  ('saint-jerome',            'LIBRARIANS'),

  ('saint-ambrose',           'MUSICIANS'),   -- chant ambrosien, hymnographie

  ('saint-francis-de-sales',  'JOURNALISTS'),
  ('saint-francis-de-sales',  'WRITERS_AUTHORS'),
  ('saint-francis-de-sales',  'TEACHERS'),

  ('saint-hilary-of-poitiers','THEOLOGIANS'),

  ('saint-isidore',           'STUDENTS'),   -- encyclopédiste, souvent proposé pour les usages numériques/étudiants

  ('saint-albert-the-great',  'SCIENTISTS'),

  ('saint-peter-damian',      'CLERGY'),

  ('saint-hildegard-of-bingen','MUSICIANS'),
  ('saint-hildegard-of-bingen','PHYSICIANS'),   -- elle a écrit des traités de médecine

  ('saint-ephrem',            'MUSICIANS'),    -- « harpe de l'Esprit-Saint », poète et hymnographe

  -- ── FONDATEURS D'ORDRES ──────────────────────────────────────────────────
  ('saint-benedict',          'EUROPE'),
  ('saint-benedict',          'FARMERS'),    -- NB : FARMERS n'est pas dans nos codes → sera ignoré silencieusement

  ('saint-francis-of-assisi', 'ITALY'),
  ('saint-francis-of-assisi', 'ECOLOGY_ENVIRONMENT'),
  ('saint-francis-of-assisi', 'POOR'),

  ('saint-dominic',           'THEOLOGIANS'),

  ('saint-ignatius-of-loyola','SOLDIERS'),
  ('saint-ignatius-of-loyola','MISSIONARIES'),

  ('saint-john-bosco',        'YOUTH'),

  ('saint-philip-neri',       'YOUTH'),   -- il est aussi invoqué pour la jeunesse romaine

  ('saint-vincent-de-paul',   'POOR'),
  ('saint-vincent-de-paul',   'PRISONERS'),

  ('saint-camillus-de-lellis','SICK'),
  ('saint-camillus-de-lellis','NURSES_CAREGIVERS'),

  ('saint-john-of-god',       'SICK'),
  ('saint-john-of-god',       'NURSES_CAREGIVERS'),

  ('saint-angela-merici',     'TEACHERS'),

  ('saint-john-baptist-de-la-salle', 'TEACHERS'),
  ('saint-john-baptist-de-la-salle', 'STUDENTS'),

  ('saint-joseph-calasanz',   'TEACHERS'),
  ('saint-joseph-calasanz',   'STUDENTS'),

  -- ── RELIGIEUX & RELIGIEUSES ──────────────────────────────────────────────
  ('saint-aloysius-gonzaga',  'YOUTH'),

  ('saint-jerome-emiliani',   'ORPHANS'),

  ('saint-peter-claver',      'ENSLAVED_PEOPLE'),

  ('saint-josephine-bakhita', 'ENSLAVED_PEOPLE'),

  ('saint-rita-of-cascia',    'DESPERATE_CASES'),
  ('saint-rita-of-cascia',    'WIDOWS'),

  ('saint-bridget',           'EUROPE'),
  ('saint-bridget',           'PILGRIMS'),
  ('saint-bridget',           'WIDOWS'),

  ('saint-teresa-of-calcutta','POOR'),

  ('saint-elizabeth-of-hungary', 'POOR'),
  ('saint-elizabeth-of-hungary', 'NURSES_CAREGIVERS'),
  ('saint-elizabeth-of-hungary', 'WIDOWS'),

  ('saint-margaret-of-scotland', 'SCOTLAND'),

  -- ── DOCTEURS CARMES ──────────────────────────────────────────────────────
  ('saint-teresa-of-jesus',   'THEOLOGIANS'),  -- première femme Docteure ; patronne de ceux qui cherchent Dieu dans l'intériorité

  -- ── SAINTS GÉOGRAPHIQUES SPÉCIFIQUES ─────────────────────────────────────
  ('saint-stanislaus',        'POLAND'),
  ('saint-adalbert',          'POLAND'),
  ('saint-adalbert',          'CZECH_REPUBLIC'),
  ('saint-casimir',           'POLAND'),

  ('saint-wenceslaus',        'CZECH_REPUBLIC'),

  ('saint-stephen-of-hungary','HUNGARY'),

  ('saint-juan-diego-cuauhtlatoatzin', 'MEXICO'),

  ('saint-rose-of-lima',      'PERU'),
  ('saint-turibius-of-mogrovejo', 'PERU'),

  ('saint-francis-xavier',    'MISSIONARIES'),
  ('saint-francis-xavier',    'JAPAN'),
  ('saint-francis-xavier',    'INDIA'),
  ('saint-francis-xavier',    'SAILORS'),

  -- ── PATRONS DE L'EUROPE (bulle pontificale) ───────────────────────────────
  ('saint-cyril',                         'EUROPE'),
  ('saint-methodius',                     'EUROPE'),
  ('saint-catherine-of-siena',            'EUROPE'),
  ('saint-catherine-of-siena',            'ITALY'),
  ('saint-catherine-of-siena',            'NURSES_CAREGIVERS'),
  ('saint-teresa-benedicta-of-the-cross', 'EUROPE'),

  -- ── ANTOINE DE PADOUE ────────────────────────────────────────────────────
  ('saint-anthony-of-padua',  'LOST_ITEMS'),
  ('saint-anthony-of-padua',  'POOR'),
  ('saint-anthony-of-padua',  'FISHERMEN'),

  -- ── JEAN VIANNEY ─────────────────────────────────────────────────────────
  ('saint-john-vianney',      'CLERGY'),

  -- ── MONICA ───────────────────────────────────────────────────────────────
  ('saint-monica',            'MOTHERS'),
  ('saint-monica',            'WIDOWS'),

  -- ── MARTHE & MARIE DE BÉTHANIE ───────────────────────────────────────────
  ('saint-martha-of-bethany', 'COOKS'),

  -- Placeholder sentinel (duplicate → ignoré par ON CONFLICT)
  ('saint-joseph', 'UNIVERSAL_CHURCH')

) AS pairs(saint_slug, patronage_code)
JOIN saints    s ON s.slug  = pairs.saint_slug
JOIN patronages p ON p.code = pairs.patronage_code
ON CONFLICT DO NOTHING;

COMMIT;
