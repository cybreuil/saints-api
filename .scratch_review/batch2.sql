INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-francis-of-paola-hermit', 'Saint Francis of Paola, Hermit', 'saint'),
('saint-isidore-bishop-and-doctor-of-the-church', 'Saint Isidore, Bishop and Doctor of the Church', 'saint'),
('saint-vincent-ferrer-priest', 'Saint Vincent Ferrer, Priest', 'saint'),
('saint-john-baptist-de-la-salle-priest', 'Saint John Baptist de la Salle, Priest', 'saint'),
('saint-stanislaus-bishop-and-martyr', 'Saint Stanislaus, Bishop and Martyr', 'saint'),
('saint-martin-i-pope-and-martyr', 'Saint Martin I, Pope and Martyr', 'saint'),
('saint-anselm-bishop-and-doctor-of-the-church', 'Saint Anselm, Bishop and Doctor of the Church', 'saint'),
('saint-george-martyr', 'Saint George, Martyr', 'saint'),
('saint-adalbert-bishop-and-martyr', 'Saint Adalbert, Bishop and Martyr', 'saint'),
('saint-fidelis-of-sigmaringen-priest-and-martyr', 'Saint Fidelis of Sigmaringen, Priest and Martyr', 'saint'),
('saint-mark-evangelist', 'Saint Mark, Evangelist', 'saint'),
('saint-peter-chanel-priest-and-martyr', 'Saint Peter Chanel, Priest and Martyr', 'saint'),
('saint-louis-grignon-de-montfort-priest', 'Saint Louis Grignon de Montfort, Priest', 'saint'),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 'Saint Catherine of Siena, Virgin and Doctor of the Church', 'saint'),
('saint-pius-v-pope', 'Saint Pius V, Pope', 'saint')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-francis-of-paola-hermit', 'Saint Francis of Paola, Hermit', $desc$
Saint Francis of Paola is honored as a hermit and founder whose life of penance, solitude, and charity made visible the Gospel paradox that strength is perfected in humility.

At the heart of this feast lies the mystery of self-emptying discipleship: Francis chose to call his followers Minims, "the least," embracing a spirituality of littleness that mirrors Christ's own kenosis. The liturgy commemorates not merely austere practices but the theological conviction that true greatness before God is found in humility, penance, and unconditional trust in Providence, virtues that make room for grace to act unhindered in the human heart.

Devotion to Francis of Paola grew rapidly after his death in 1507, culminating in his canonization by Pope Leo X in 1519, remarkably swift for the era. His fame as a wonder-worker and peacemaker among princes spread his cult throughout Italy, France, and beyond; sailors and fishermen in particular claimed him as patron, a witness to the enduring appeal of eremitic holiness within a Church increasingly engaged in the world.

For believers today, this memorial offers a quiet but pointed challenge: in a culture of noise, self-promotion, and consumption, Francis proposes the counter-witness of silence, fasting, and radical poverty of spirit. Pastorally, his example invites the faithful to rediscover practices of penance not as burdens but as pathways to freedom, and to trust that hidden lives of prayer bear real fruit for the whole Church.
$desc$),
('saint-isidore-bishop-and-doctor-of-the-church', 'Saint Isidore, Bishop and Doctor of the Church', $desc$
Saint Isidore of Seville is honored as a bishop and Doctor of the Church who gathered the inheritance of Christian and classical learning and placed it at the service of wisdom, pastoral care, and the praise of God.

Theologically, the feast celebrates the harmony of faith and knowledge: Isidore labored to gather, preserve, and order the whole of human learning—grammar, law, medicine, history, theology—under the light of divine truth, convinced that no true knowledge is foreign to the service of God and neighbor. His example proclaims that the intellectual life, rightly ordered, is itself a form of charity and an instrument of evangelization in times of cultural upheaval.

Isidore presided over the Fourth Council of Toledo in 633, shaping the Church's discipline and liturgy in Visigothic Spain, while his encyclopedic Etymologiae became a foundational reference for centuries of Western scholarship. Pope Innocent XIII declared him a Doctor of the Church in 1722.

In an age saturated with information yet often starved of wisdom, Isidore's witness speaks directly to scholars, students, and all who work with knowledge and its transmission, including, by popular devotion, those who labor with modern communications technology. His feast calls the faithful to seek learning always in service of truth, humility, and the building up of the Church.
$desc$),
('saint-vincent-ferrer-priest', 'Saint Vincent Ferrer, Priest', $desc$
Saint Vincent Ferrer is honored as a Dominican preacher whose burning proclamation of repentance and divine mercy stirred whole peoples to renewed conversion.

The feast draws the faithful into the theological heart of Vincent's preaching: the urgency of repentance, the certainty of divine judgment, and the mercy that remains open to all who turn back to God. His itinerant apostolate embodied the conviction that the Gospel must be proclaimed anew to every generation and every people, not as abstract doctrine but as a living summons demanding response here and now.

A Dominican friar of the fourteenth and fifteenth centuries, Vincent preached across Spain, France, Italy, and beyond during the turmoil of the Western Schism, laboring tirelessly, and not without controversy, for the reunification of a divided Church. His reputation for miracles and prophetic preaching led to his canonization in 1455, and he remains an enduring image of the itinerant preacher wholly consecrated to the salvation of souls.

Today Vincent Ferrer stands as a patron of preachers and a model for the new evangelization, reminding pastors and laity alike that authentic proclamation of the Gospel requires both zeal for truth and profound charity, and that reconciliation within the Church remains an urgent, ever-actual task.
$desc$),
('saint-john-baptist-de-la-salle-priest', 'Saint John Baptist de la Salle, Priest', $desc$
Saint John Baptist de La Salle is honored as a priest and founder who recognized in the education of the young, especially the poor, a privileged form of Christian charity and evangelization.

At the theological center of this feast stands the conviction that teaching the young, especially the poor, is itself a sacred ministry, an extension of Christ's own care for "the little ones." La Salle's spirituality fused contemplative union with God and active service, insisting that authentic education forms the whole person—mind, character, and faith together—as a genuine work of salvation history.

A seventeenth-century French priest and canon, La Salle renounced his wealth and status to found the Brothers of the Christian Schools, pioneering free education for poor children and training laymen as dedicated teachers at a time when such formation was rare. Canonized in 1900, he was proclaimed patron of teachers by Pope Pius XII in 1950, cementing his place as a model for Catholic educators worldwide.

His memorial today speaks urgently to the Church's ongoing mission in Catholic education, encouraging teachers, catechists, and school communities to see their vocation not as mere instruction but as participation in Christ's own pedagogy of love, particularly toward children who are poor, neglected, or at the margins.
$desc$),
('saint-stanislaus-bishop-and-martyr', 'Saint Stanislaus, Bishop and Martyr', $desc$
Saint Stanislaus is honored as a bishop and martyr whose pastoral courage joined defense of the flock to fearless witness before injustice.

The theological substance of this feast is the martyrdom of a bishop who would not be silent before injustice: called to guard the moral order entrusted to the Church, Stanislaus confronted royal power when it trampled justice, and paid for that fidelity with his life. His witness proclaims that the shepherd's authority is inseparable from the duty to speak truth to power, whatever the cost.

Bishop of Kraków in eleventh-century Poland, Stanislaus clashed with King Bolesław II over the king's abuses, and was killed, according to tradition, at the king's own hand or command in 1079. His cult grew quickly among the Polish people, and Pope Innocent IV canonized him in 1253; Stanislaus stands as a central figure of Polish national and ecclesial identity.

His memorial continues to inspire bishops and all in positions of moral authority to resist compromise with injustice, and reminds the faithful, especially in Poland and across Central Europe, that fidelity to conscience and to the Gospel may demand the highest price, even as it bears the Church's most fruitful witness.
$desc$),
('saint-martin-i-pope-and-martyr', 'Saint Martin I, Pope and Martyr', $desc$
Saint Martin I is honored as pope and martyr for suffering endured in defense of the true faith concerning the mystery of Christ.

Theologically, the memorial centers on fidelity to orthodox faith in the face of imperial pressure: Martin convened the Lateran Council of 649 to condemn Monothelitism, defending the full humanity of Christ's will against a heresy favored by the Byzantine court. His witness affirms that the successor of Peter bears responsibility for guarding the integrity of the faith even when doing so provokes the wrath of worldly power.

For this defense of orthodoxy, Emperor Constans II had Martin arrested, subjected to a humiliating trial, and exiled to Crimea, where the pope died in 655 from the hardships of his captivity, a genuine martyrdom of persecution and neglect rather than direct execution. His memory endured particularly in the Eastern Churches before becoming firmly rooted in Roman liturgical tradition.

Today Saint Martin I stands as a reminder that fidelity to revealed truth may cost dearly even within the highest offices of the Church, encouraging the faithful, and especially those who exercise teaching authority, to hold fast to sound doctrine with courage, patience, and trust in providence amid political and cultural pressures.
$desc$),
('saint-anselm-bishop-and-doctor-of-the-church', 'Saint Anselm, Bishop and Doctor of the Church', $desc$
Saint Anselm is honored as bishop and Doctor of the Church, a monk and pastor whose theology shows how faith seeks understanding in prayerful contemplation.

The theological heart of this feast is Anselm's programmatic conviction, fides quaerens intellectum, faith seeking understanding: reason, illumined by grace, does not oppose belief but seeks to penetrate it more deeply. His reflections on the necessity of the Incarnation and Redemption in Cur Deus Homo, and his contemplative arguments for God's existence, exemplify a theology born of prayer and directed back toward worship.

A Benedictine monk of Bec who became Archbishop of Canterbury, Anselm suffered exile twice for defending the Church's freedom against royal encroachment during the investiture controversies of his day, uniting rigorous intellect with pastoral courage. Pope Clement XI proclaimed him a Doctor of the Church in 1720, and his legacy shaped scholastic method for centuries afterward.

In an era often marked by the perceived opposition between faith and reason, Anselm's memorial calls believers, scholars, and pastors alike to rediscover theology as a contemplative and rigorous pursuit of the God who is already believed and loved, demonstrating that the deepest thinking and the deepest prayer need never be divided.
$desc$),
('saint-george-martyr', 'Saint George, Martyr', $desc$
Saint George is revered throughout the Christian world as a martyr whose memory has long embodied steadfast courage in confessing Christ.

Theologically, this feast is above all a celebration of martyrdom as the supreme witness of faith: George's confession of Christ unto blood proclaims that no earthly power, however great, can compel the believer to renounce the Lord. The later legend of the dragon, though not historical, crystallizes this same truth symbolically, presenting the martyr as one who, by faith, overcomes the forces of evil on behalf of the helpless.

Little can be verified historically about George beyond his martyrdom, likely in the early fourth century, yet devotion to him spread with extraordinary speed across the Christian East and West, intensified during the Crusades, and made him patron of numerous nations, cities, and orders of chivalry, from England to Georgia to Catalonia; his commemoration is among the oldest in the Roman calendar.

Today Saint George remains a compelling figure for soldiers, scouts, and all who face difficult or dangerous vocations, reminding the faithful that Christian courage is not mere bravado but fidelity to Christ that does not waver even when confronted with the world's fiercest powers.
$desc$),
('saint-adalbert-bishop-and-martyr', 'Saint Adalbert, Bishop and Martyr', $desc$
Saint Adalbert is honored as bishop, missionary, and martyr, a shepherd whose apostolic labors carried the Gospel into lands where the Church was still taking root.

At the theological center of this memorial stands the missionary vocation understood as martyrdom in potential: Adalbert's episcopal ministry, marked by repeated setbacks and eventual violent death while preaching to the Prussians, illustrates that evangelization is never merely a strategy but a share in Christ's own self-gift, offered even when the harvest seems meager or resistant.

Bishop of Prague, Adalbert twice left his see, discouraged by the resistance of his flock, and spent himself in mission to Hungary, Poland, and finally the pagan Prussians, among whom he was killed in 997. His relics, ransomed by Duke Bolesław of Poland, became a focal point for the Church's growth in the region, and his cult spread quickly through Bohemia, Poland, and Hungary.

His memorial continues to inspire missionary perseverance in the face of discouragement, offering a patron for Central Europe and a model for all who labor in difficult mission fields where visible fruit is slow to appear yet whose sacrifice ultimately builds up the Church.
$desc$),
('saint-fidelis-of-sigmaringen-priest-and-martyr', 'Saint Fidelis of Sigmaringen, Priest and Martyr', $desc$
Saint Fidelis of Sigmaringen is honored as a Capuchin priest and martyr whose preaching joined doctrinal clarity, missionary charity, and readiness to die for the faith.

Theologically, this feast centers on martyrdom endured for the integrity and unity of the Catholic faith during an age of bitter religious division: Fidelis's death was not sought for its own sake but arose from his fearless preaching of Catholic doctrine among a hostile population, embodying the conviction that charity toward those in error need not, and must not, dilute fidelity to revealed truth.

A trained lawyer who renounced a promising legal career for Capuchin poverty, Fidelis was sent to preach and catechize among Calvinist populations in Switzerland as part of the Counter-Reformation mission of the Congregation for the Propagation of the Faith, and was killed by a hostile mob in 1622, becoming that Congregation's first martyr; Pope Benedict XIV canonized him in 1746.

His memorial today speaks to missionaries, lawyers, and all engaged in delicate work of dialogue and evangelization amid division, calling the faithful to combine firm doctrinal clarity with genuine charity, confident that fidelity to truth, even when it provokes hostility, remains an act of love.
$desc$),
('saint-mark-evangelist', 'Saint Mark, Evangelist', $desc$
Saint Mark the Evangelist is honored as one of the four Gospel writers and as an apostolic witness who proclaimed Jesus Christ with vivid clarity and missionary urgency.

At the theological heart of this feast lies the Gospel itself: Mark's terse, urgent narrative, opening with the words "the beginning of the Gospel of Jesus Christ, the Son of God," proclaims Christ as the one whose deeds and passion reveal, in real time, the inbreaking of God's kingdom, inviting hearers to immediate faith and discipleship rather than detached reflection.

Traditionally identified as a companion of Peter and Paul and the founder of the Church of Alexandria, Mark's authorship and apostolic authenticity were long recognized by the early Church; his relics, brought to Venice in the ninth century, made him patron of that city, and his cult has remained enduringly widespread since antiquity.

The feast today renews appreciation for the Gospel as living proclamation rather than mere record, encouraging preachers, evangelists, and all the faithful to receive and transmit the Good News with the same urgency and clarity that mark Mark's own Gospel, while honoring his enduring symbol, the lion, as an image of bold and vigilant faith.
$desc$),
('saint-peter-chanel-priest-and-martyr', 'Saint Peter Chanel, Priest and Martyr', $desc$
Saint Peter Chanel is honored as a missionary priest and martyr whose quiet perseverance made him a firstfruits of the Gospel in Oceania.

Theologically, this memorial proclaims the fruitfulness of missionary martyrdom: Peter's death, far from ending his apostolate, became, in the Church's understanding, the very seed from which the faith flourished on the island where he died, embodying the ancient conviction that the blood of martyrs is the seed of Christians even in the newest mission territories.

A Marist missionary priest, Peter Chanel arrived on the Pacific island of Futuna in 1837, laboring for years with little visible fruit and mounting local hostility, until he was killed in 1841, reportedly at the instigation of a chief threatened by the conversion of his own son; within years of his death, the whole island turned to the Catholic faith, and Peter was canonized in 1954.

His memorial today serves as patron and encouragement for missionaries throughout Oceania and beyond, a reminder that apparent failure in mission work can conceal seeds of extraordinary future growth, and that perseverance in charity and preaching, even without immediate results, remains supremely fruitful in God's design.
$desc$),
('saint-louis-grignon-de-montfort-priest', 'Saint Louis Grignon de Montfort, Priest', $desc$
Saint Louis Grignion de Montfort is honored as a priest, missionary, and spiritual master whose Marian teaching sought to form Christians more perfectly in union with Jesus Christ.

At the theological core of this feast stands the doctrine of total consecration to Jesus through Mary: Montfort taught that Mary, as the perfect disciple and mother of the redeemed, forms Christ most surely and swiftly in souls who entrust themselves to her, a teaching that situates Marian devotion firmly within, rather than apart from, Christocentric faith.

An itinerant preacher of missions across western France in the early eighteenth century, Montfort suffered opposition, poverty, and even attempts on his life, yet composed enduring works, most notably True Devotion to Mary, that later influenced major currents of Catholic spirituality; he was canonized in 1947, and his teaching left a visible mark on later papal devotion and doctrine.

His memorial today invites the faithful to rediscover authentic Marian consecration as a path to deeper configuration to Christ, encouraging renewed missionary preaching and popular piety alike, and reminding the Church that devotion to Mary, rightly understood, always leads more fully to her Son.
$desc$),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 'Saint Catherine of Siena, Virgin and Doctor of the Church', $desc$
Saint Catherine of Siena is honored as virgin and Doctor of the Church, a lay Dominican mystic whose love for Christ overflowed in fearless service to the Church and society.

Theologically, the feast centers on the mystical and ecclesial vision at the heart of Catherine's teaching: union with Christ through contemplation of his blood poured out in love, and a corresponding zeal for the unity, reform, and holiness of the Church, expressed in her celebrated Dialogue and her tireless correspondence urging peace, penance, and fidelity to the Vicar of Christ.

A Dominican tertiary and laywoman of fourteenth-century Siena, Catherine became an influential voice in the Church's public life, famously urging Pope Gregory XI to return the papacy from Avignon to Rome; canonized in 1461, she was declared Doctor of the Church in 1970 by Pope Paul VI, and later named patroness of Italy and co-patroness of Europe.

Her memorial today speaks powerfully to the vocation of the laity, especially women, in the Church's mission, and to Europe's own vocation of unity rooted in the Gospel, calling all believers to Catherine's own blend of deep contemplative prayer and fearless public witness for the good of the Church and society.
$desc$),
('saint-pius-v-pope', 'Saint Pius V, Pope', $desc$
Saint Pius V is honored as pope for uniting personal austerity, doctrinal firmness, and pastoral reform in the service of the Church's worship and life.

The theological substance of this feast lies in fidelity to sound doctrine and the integrity of worship: Pius V's reform of the Roman Missal and Breviary, together with the promulgation of the Roman Catechism, expressed the conviction that right belief and right worship are inseparable, and that the Church's unity and holiness depend on the careful transmission of both.

A Dominican friar who became pope in 1566, Pius V pursued vigorous reform of clerical discipline and doctrine, promoted the Rosary as a spiritual weapon, and rallied Christian forces at the naval battle of Lepanto in 1571, an event the Church commemorated with gratitude for what was seen as Mary's intercession; he was canonized in 1712.

His memorial today calls the faithful to appreciate the enduring bond between sound doctrine, careful liturgy, and confident prayer, especially the Rosary, and offers pastors a model of courageous reform undertaken not for its own sake but for the fidelity and holiness of the whole Church.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-francis-of-paola-hermit', 'Saint François de Paule, ermite', $desc$
Saint François de Paule est honoré comme ermite et fondateur, dont la vie de pénitence, de solitude et de charité a rendu visible le paradoxe évangélique selon lequel la force s'accomplit dans l'humilité.

Au cœur de cette fête se trouve le mystère du dépouillement dans le disciple : François choisit d'appeler ses frères les Minimes, « les plus petits », épousant une spiritualité de petitesse qui reflète la propre kénose du Christ. La liturgie ne commémore pas seulement des pratiques austères, mais la conviction théologique que la vraie grandeur devant Dieu se trouve dans l'humilité, la pénitence et la confiance inconditionnelle en la Providence, vertus qui laissent la grâce agir sans entrave dans le cœur humain.

La dévotion à François de Paule grandit rapidement après sa mort en 1507, aboutissant à sa canonisation par le pape Léon X dès 1519, remarquablement rapide pour l'époque. Sa réputation de thaumaturge et de pacificateur entre princes répandit son culte en Italie, en France et au-delà ; marins et pêcheurs en particulier le prirent pour patron, témoignage de l'attrait durable de la sainteté érémitique au sein d'une Église de plus en plus engagée dans le monde.

Pour les croyants d'aujourd'hui, cette mémoire propose un défi discret mais pénétrant : dans une culture du bruit, de l'auto-promotion et de la consommation, François propose le contre-témoignage du silence, du jeûne et de la pauvreté radicale d'esprit. Sur le plan pastoral, son exemple invite les fidèles à redécouvrir les pratiques de pénitence non comme des fardeaux mais comme des chemins de liberté, et à croire que des vies cachées de prière portent un fruit réel pour toute l'Église.
$desc$),
('saint-isidore-bishop-and-doctor-of-the-church', 'Saint Isidore, évêque et docteur de l''Église', $desc$
Saint Isidore de Séville est honoré comme évêque et docteur de l'Église, lui qui recueillit l'héritage du savoir chrétien et classique pour le mettre au service de la sagesse, du soin pastoral et de la louange de Dieu.

Sur le plan théologique, la fête célèbre l'harmonie de la foi et de la connaissance : Isidore s'employa à rassembler, préserver et ordonner tout le savoir humain — grammaire, droit, médecine, histoire, théologie — sous la lumière de la vérité divine, convaincu qu'aucune connaissance véritable n'est étrangère au service de Dieu et du prochain. Son exemple proclame que la vie intellectuelle, bien ordonnée, est elle-même une forme de charité et un instrument d'évangélisation dans les temps de bouleversement culturel.

Isidore présida le quatrième concile de Tolède en 633, façonnant la discipline et la liturgie de l'Église dans l'Espagne wisigothique, tandis que ses Étymologies encyclopédiques devinrent une référence fondatrice pour des siècles d'érudition occidentale. Le pape Innocent XIII le proclama docteur de l'Église en 1722.

À une époque saturée d'informations mais souvent affamée de sagesse, le témoignage d'Isidore parle directement aux savants, aux étudiants et à tous ceux qui travaillent avec la connaissance et sa transmission, y compris, par la dévotion populaire, ceux qui œuvrent avec les technologies modernes de communication. Sa fête appelle les fidèles à rechercher toujours le savoir au service de la vérité, de l'humilité et de l'édification de l'Église.
$desc$),
('saint-vincent-ferrer-priest', 'Saint Vincent Ferrier, prêtre', $desc$
Saint Vincent Ferrier est honoré comme prédicateur dominicain dont l'annonce brûlante de la pénitence et de la miséricorde divine conduisit des peuples entiers à une conversion renouvelée.

La fête introduit les fidèles au cœur théologique de la prédication de Vincent : l'urgence de la pénitence, la certitude du jugement divin et la miséricorde qui demeure ouverte à tous ceux qui reviennent vers Dieu. Son apostolat itinérant incarnait la conviction que l'Évangile doit être proclamé à nouveau à chaque génération et à chaque peuple, non comme une doctrine abstraite mais comme un appel vivant exigeant une réponse ici et maintenant.

Frère dominicain des quatorzième et quinzième siècles, Vincent prêcha à travers l'Espagne, la France, l'Italie et au-delà durant les troubles du Grand Schisme d'Occident, œuvrant sans relâche, non sans controverse, pour la réunification d'une Église divisée. Sa réputation de miracles et de prédication prophétique conduisit à sa canonisation en 1455, et il demeure une image durable du prédicateur itinérant tout entier consacré au salut des âmes.

Aujourd'hui, Vincent Ferrier demeure un patron des prédicateurs et un modèle pour la nouvelle évangélisation, rappelant aux pasteurs comme aux laïcs qu'une proclamation authentique de l'Évangile requiert à la fois zèle pour la vérité et charité profonde, et que la réconciliation au sein de l'Église demeure une tâche urgente et toujours actuelle.
$desc$),
('saint-john-baptist-de-la-salle-priest', 'Saint Jean-Baptiste de La Salle, prêtre', $desc$
Saint Jean-Baptiste de La Salle est honoré comme prêtre et fondateur, lui qui reconnut dans l'éducation des jeunes, surtout des pauvres, une forme privilégiée de charité chrétienne et d'évangélisation.

Au centre théologique de cette fête se tient la conviction que l'enseignement des jeunes, en particulier des pauvres, est lui-même un ministre sacré, un prolongement du soin même du Christ pour « les petits ». La spiritualité de La Salle unissait union contemplative à Dieu et service actif, insistant sur le fait qu'une éducation authentique forme la personne tout entière — intelligence, caractère et foi ensemble — comme une véritable œuvre d'histoire du salut.

Prêtre et chanoine français du dix-septième siècle, La Salle renonça à sa richesse et à son rang pour fonder les Frères des Écoles chrétiennes, initiant l'éducation gratuite des enfants pauvres et formant des laïcs comme enseignants dévoués à une époque où une telle formation était rare. Canonisé en 1900, il fut proclamé patron des enseignants par le pape Pie XII en 1950, consolidant sa place de modèle pour les éducateurs catholiques du monde entier.

Sa mémoire parle aujourd'hui avec urgence à la mission continue de l'Église dans l'éducation catholique, encourageant enseignants, catéchistes et communautés scolaires à voir leur vocation non comme simple instruction mais comme participation à la propre pédagogie d'amour du Christ, particulièrement envers les enfants pauvres, négligés ou en marge.
$desc$),
('saint-stanislaus-bishop-and-martyr', 'Saint Stanislas, évêque et martyr', $desc$
Saint Stanislas est honoré comme évêque et martyr dont le courage pastoral unit la défense du troupeau à un témoignage intrépide face à l'injustice.

La substance théologique de cette fête est le martyre d'un évêque qui ne se tut pas devant l'injustice : appelé à garder l'ordre moral confié à l'Église, Stanislas affronta le pouvoir royal lorsqu'il piétina la justice, et paya cette fidélité de sa vie. Son témoignage proclame que l'autorité du pasteur est inséparable du devoir de dire la vérité au pouvoir, quel qu'en soit le prix.

Évêque de Cracovie dans la Pologne du onzième siècle, Stanislas s'opposa au roi Boleslas II sur ses abus, et fut tué, selon la tradition, de la main même du roi ou sur son ordre, en 1079. Son culte grandit rapidement parmi le peuple polonais, et le pape Innocent IV le canonisa en 1253 ; Stanislas demeure une figure centrale de l'identité nationale et ecclésiale polonaise.

Sa mémoire continue d'inspirer évêques et détenteurs d'autorité morale à résister à tout compromis avec l'injustice, et rappelle aux fidèles, particulièrement en Pologne et à travers l'Europe centrale, que la fidélité à la conscience et à l'Évangile peut exiger le prix le plus élevé, tout en portant le témoignage le plus fécond de l'Église.
$desc$),
('saint-martin-i-pope-and-martyr', 'Saint Martin Ier, pape et martyr', $desc$
Saint Martin Ier est honoré comme pape et martyr pour les souffrances endurées dans la défense de la vraie foi concernant le mystère du Christ.

Théologiquement, la mémoire est centrée sur la fidélité à la foi orthodoxe face à la pression impériale : Martin convoqua le concile du Latran en 649 pour condamner le monothélisme, défendant la pleine humanité de la volonté du Christ contre une hérésie favorisée par la cour byzantine. Son témoignage affirme que le successeur de Pierre porte la responsabilité de garder l'intégrité de la foi, même lorsque cela provoque la colère du pouvoir temporel.

Pour cette défense de l'orthodoxie, l'empereur Constant II fit arrêter Martin, le soumit à un procès humiliant et l'exila en Crimée, où le pape mourut en 655 des épreuves de sa captivité, martyre véritable de persécution et d'abandon plutôt que d'exécution directe. Sa mémoire perdura particulièrement dans les Églises d'Orient avant de s'enraciner fermement dans la tradition liturgique romaine.

Aujourd'hui, saint Martin Ier rappelle que la fidélité à la vérité révélée peut coûter cher jusque dans les plus hautes fonctions de l'Église, encourageant les fidèles, et particulièrement ceux qui exercent une autorité d'enseignement, à tenir fermement la saine doctrine avec courage, patience et confiance en la Providence face aux pressions politiques et culturelles.
$desc$),
('saint-anselm-bishop-and-doctor-of-the-church', 'Saint Anselme, évêque et docteur de l''Église', $desc$
Saint Anselme est honoré comme évêque et docteur de l'Église, moine et pasteur dont la théologie montre comment la foi cherche l'intelligence dans la contemplation priante.

Le cœur théologique de cette fête est la conviction programmatique d'Anselme, fides quaerens intellectum, la foi en quête d'intelligence : la raison, éclairée par la grâce, ne s'oppose pas à la croyance mais cherche à la pénétrer plus profondément. Ses réflexions sur la nécessité de l'Incarnation et de la Rédemption dans Cur Deus Homo, et ses arguments contemplatifs sur l'existence de Dieu, illustrent une théologie née de la prière et tournée à nouveau vers l'adoration.

Moine bénédictin du Bec devenu archevêque de Cantorbéry, Anselme souffrit deux exils pour avoir défendu la liberté de l'Église contre l'empiètement royal durant les querelles des investitures de son temps, unissant intelligence rigoureuse et courage pastoral. Le pape Clément XI le proclama docteur de l'Église en 1720, et son héritage façonna la méthode scolastique pendant des siècles.

En une époque souvent marquée par une opposition perçue entre foi et raison, la mémoire d'Anselme appelle croyants, savants et pasteurs à redécouvrir la théologie comme une recherche à la fois contemplative et rigoureuse du Dieu déjà cru et aimé, montrant que la pensée la plus profonde et la prière la plus profonde n'ont jamais à être séparées.
$desc$),
('saint-george-martyr', 'Saint Georges, martyr', $desc$
Saint Georges est vénéré dans tout le monde chrétien comme martyr, et sa mémoire incarne depuis longtemps la fermeté du courage dans la confession du Christ.

Théologiquement, cette fête est avant tout une célébration du martyre comme témoignage suprême de la foi : la confession du Christ par Georges jusqu'au sang proclame qu'aucun pouvoir terrestre, si grand soit-il, ne peut contraindre le croyant à renier le Seigneur. La légende ultérieure du dragon, bien que non historique, cristallise cette même vérité de manière symbolique, présentant le martyr comme celui qui, par la foi, triomphe des forces du mal en faveur des sans-défense.

On ne peut historiquement vérifier que peu de choses sur Georges en dehors de son martyre, probablement au début du quatrième siècle, et pourtant la dévotion à son égard se répandit avec une rapidité extraordinaire à travers l'Orient et l'Occident chrétiens, s'intensifia durant les croisades, et fit de lui le patron de nombreuses nations, villes et ordres de chevalerie, de l'Angleterre à la Géorgie en passant par la Catalogne ; sa commémoration compte parmi les plus anciennes du calendrier romain.

Saint Georges demeure aujourd'hui une figure marquante pour les soldats, les scouts et tous ceux qui affrontent des vocations difficiles ou dangereuses, rappelant aux fidèles que le courage chrétien n'est pas simple bravade mais fidélité au Christ qui ne vacille pas même face aux puissances les plus féroces du monde.
$desc$),
('saint-adalbert-bishop-and-martyr', 'Saint Adalbert, évêque et martyr', $desc$
Saint Adalbert est honoré comme évêque, missionnaire et martyr, pasteur dont les travaux apostoliques portèrent l'Évangile en des terres où l'Église prenait encore racine.

Au centre théologique de cette mémoire se tient la vocation missionnaire comprise comme martyre en puissance : le ministre épiscopal d'Adalbert, marqué par des revers répétés et une mort violente finale en prêchant aux Prussiens, illustre que l'évangélisation n'est jamais une simple stratégie mais un partage du don de soi même du Christ, offert même lorsque la moisson paraît maigre ou résistante.

Évêque de Prague, Adalbert quitta deux fois son siège, découragé par la résistance de son troupeau, et se dépensa en mission en Hongrie, en Pologne et enfin chez les Prussiens païens, parmi lesquels il fut tué en 997. Ses reliques, rachetées par le duc Boleslas de Pologne, devinrent un point focal de la croissance de l'Église dans la région, et son culte se répandit rapidement en Bohême, en Pologne et en Hongrie.

Sa mémoire continue d'inspirer la persévérance missionnaire face au découragement, offrant un patron pour l'Europe centrale et un modèle pour tous ceux qui travaillent dans des terrains de mission difficiles où le fruit visible tarde à apparaître mais dont le sacrifice édifie finalement l'Église.
$desc$),
('saint-fidelis-of-sigmaringen-priest-and-martyr', 'Saint Fidèle de Sigmaringen, prêtre et martyr', $desc$
Saint Fidèle de Sigmaringen est honoré comme prêtre capucin et martyr dont la prédication unissait clarté doctrinale, charité missionnaire et disponibilité à mourir pour la foi.

Théologiquement, cette fête est centrée sur le martyre enduré pour l'intégrité et l'unité de la foi catholique en un temps de division religieuse amère : la mort de Fidèle ne fut pas recherchée pour elle-même mais naquit de sa prédication intrépide de la doctrine catholique parmi une population hostile, incarnant la conviction que la charité envers ceux qui sont dans l'erreur ne doit ni ne peut diluer la fidélité à la vérité révélée.

Juriste de formation ayant renoncé à une carrière prometteuse pour la pauvreté capucine, Fidèle fut envoyé prêcher et catéchiser parmi des populations calvinistes en Suisse dans le cadre de la mission de contre-réforme de la Congrégation pour la Propagation de la Foi, et fut tué par une foule hostile en 1622, devenant le premier martyr de cette congrégation ; le pape Benoît XIV le canonisa en 1746.

Sa mémoire parle aujourd'hui aux missionnaires, aux juristes et à tous ceux engagés dans un travail délicat de dialogue et d'évangélisation au milieu de la division, appelant les fidèles à joindre une ferme clarté doctrinale à une charité authentique, confiants que la fidélité à la vérité, même lorsqu'elle suscite l'hostilité, demeure un acte d'amour.
$desc$),
('saint-mark-evangelist', 'Saint Marc, évangéliste', $desc$
Saint Marc l'évangéliste est honoré comme l'un des quatre auteurs de l'Évangile et comme témoin apostolique qui annonça Jésus Christ avec une clarté vive et un élan missionnaire.

Au cœur théologique de cette fête se trouve l'Évangile lui-même : le récit bref et pressant de Marc, s'ouvrant par les mots « commencement de l'Évangile de Jésus Christ, Fils de Dieu », proclame le Christ comme celui dont les actes et la passion révèlent, en temps réel, l'irruption du royaume de Dieu, invitant les auditeurs à une foi immédiate et à un discipulat plutôt qu'à une réflexion détachée.

Traditionnellement identifié comme compagnon de Pierre et de Paul et fondateur de l'Église d'Alexandrie, l'auteur et l'authenticité apostolique de Marc furent reconnus depuis longtemps par l'Église ancienne ; ses reliques, apportées à Venise au neuvième siècle, firent de lui le patron de cette cité, et son culte est demeuré largement répandu depuis l'Antiquité.

La fête renouvelle aujourd'hui l'appréciation de l'Évangile comme proclamation vivante plutôt que simple récit, encourageant prédicateurs, évangélisateurs et tous les fidèles à recevoir et transmettre la Bonne Nouvelle avec la même urgence et clarté qui marquent l'Évangile même de Marc, tout en honorant son symbole durable, le lion, comme image d'une foi hardie et vigilante.
$desc$),
('saint-peter-chanel-priest-and-martyr', 'Saint Pierre Chanel, prêtre et martyr', $desc$
Saint Pierre Chanel est honoré comme prêtre missionnaire et martyr, dont la persévérance silencieuse fit de lui l'une des premières semences de l'Évangile en Océanie.

Théologiquement, cette mémoire proclame la fécondité du martyre missionnaire : la mort de Pierre, loin de mettre fin à son apostolat, devint, dans la compréhension de l'Église, la semence même à partir de laquelle la foi s'épanouit sur l'île où il mourut, incarnant l'antique conviction que le sang des martyrs est semence de chrétiens, même sur les plus nouveaux territoires de mission.

Prêtre missionnaire mariste, Pierre Chanel arriva sur l'île pacifique de Futuna en 1837, travaillant des années durant avec peu de fruit visible et une hostilité locale croissante, jusqu'à être tué en 1841, semble-t-il à l'instigation d'un chef menacé par la conversion de son propre fils ; en quelques années après sa mort, l'île entière se tourna vers la foi catholique, et Pierre fut canonisé en 1954.

Sa mémoire sert aujourd'hui de patronage et d'encouragement pour les missionnaires à travers l'Océanie et au-delà, rappelant que l'échec apparent d'une œuvre missionnaire peut cacher les semences d'une croissance future extraordinaire, et que la persévérance dans la charité et la prédication, même sans résultats immédiats, demeure suprêmement féconde dans le dessein de Dieu.
$desc$),
('saint-louis-grignon-de-montfort-priest', 'Saint Louis-Marie Grignion de Montfort, prêtre', $desc$
Saint Louis-Marie Grignion de Montfort est honoré comme prêtre, missionnaire et maître spirituel dont l'enseignement marial voulait former les chrétiens à une union plus parfaite avec Jésus Christ.

Au cœur théologique de cette fête se tient la doctrine de la consecration totale à Jésus par Marie : Montfort enseignait que Marie, disciple parfaite et mère des rachetés, forme le plus sûrement et le plus rapidement le Christ dans les âmes qui se confient à elle, un enseignement qui situe la dévotion mariale fermement au sein de la foi christocentrique, et non à part de celle-ci.

Prédicateur itinérant de missions à travers l'ouest de la France au début du dix-huitième siècle, Montfort souffrit oppositions, pauvreté et même attentats contre sa vie, mais composa des œuvres durables, notamment le Traité de la vraie dévotion à la Sainte Vierge, qui influença plus tard des courants majeurs de la spiritualité catholique ; il fut canonisé en 1947, et son enseignement marqua visiblement la piété et la doctrine pontificales postérieures.

Sa mémoire invite aujourd'hui les fidèles à redécouvrir la consecration mariale authentique comme chemin vers une configuration plus profonde au Christ, encourageant à la fois la prédication missionnaire renouvelée et la piété populaire, et rappelant à l'Église que la dévotion à Marie, bien comprise, conduit toujours plus pleinement à son Fils.
$desc$),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 'Sainte Catherine de Sienne, vierge et docteur de l''Église', $desc$
Sainte Catherine de Sienne est honorée comme vierge et docteur de l'Église, mystique dominicaine laïque dont l'amour du Christ déborda en un service intrépide de l'Église et de la société.

Théologiquement, la fête est centrée sur la vision mystique et ecclésiale au cœur de l'enseignement de Catherine : l'union au Christ par la contemplation de son sang répandu par amour, et un zèle correspondant pour l'unité, la réforme et la sainteté de l'Église, exprimés dans son célèbre Dialogue et dans sa correspondance infatigable exhortant à la paix, à la pénitence et à la fidélité au Vicaire du Christ.

Tertiaire dominicaine et laïque de la Sienne du quatorzième siècle, Catherine devint une voix influente dans la vie publique de l'Église, exhortant fameusement le pape Grégoire XI à ramener la papauté d'Avignon à Rome ; canonisée en 1461, elle fut proclamée docteur de l'Église en 1970 par le pape Paul VI, et fut plus tard nommée patronne de l'Italie et copatronne de l'Europe.

Sa mémoire parle aujourd'hui avec force à la vocation des laïcs, particulièrement des femmes, dans la mission de l'Église, et à la vocation même de l'Europe à l'unité enracinée dans l'Évangile, appelant tous les croyants à l'alliage propre à Catherine d'une prière contemplative profonde et d'un témoignage public intrépide pour le bien de l'Église et de la société.
$desc$),
('saint-pius-v-pope', 'Saint Pie V, pape', $desc$
Saint Pie V est honoré comme pape pour avoir uni austérité personnelle, fermeté doctrinale et réforme pastorale au service du culte et de la vie de l'Église.

La substance théologique de cette fête réside dans la fidélité à la saine doctrine et à l'intégrité du culte : la réforme du Missel romain et du Bréviaire par Pie V, ainsi que la promulgation du Catéchisme romain, exprimèrent la conviction que la juste croyance et le juste culte sont inséparables, et que l'unité et la sainteté de l'Église dépendent de la transmission soigneuse des deux.

Frère dominicain devenu pape en 1566, Pie V poursuivit une réforme vigoureuse de la discipline et de la doctrine cléricales, promut le Rosaire comme arme spirituelle, et rassembla les forces chrétiennes lors de la bataille navale de Lépante en 1571, événement que l'Église commémora avec gratitude pour ce qui fut perçu comme l'intercession de Marie ; il fut canonisé en 1712.

Sa mémoire appelle aujourd'hui les fidèles à apprécier le lien durable entre saine doctrine, liturgie soignée et prière confiante, particulièrement le Rosaire, et offre aux pasteurs un modèle de réforme courageuse entreprise non pour elle-même mais pour la fidélité et la sainteté de toute l'Église.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-francis-of-paola-hermit', 'Sanctus Franciscus de Paula, Eremita', $desc$
Sanctus Franciscus de Paula honoratur ut eremita et conditor, cuius vita paenitentiae, solitudinis et caritatis evangelicum paradoxon manifestavit, quo virtus in humilitate perficitur.

In huius festi corde iacet mysterium discipulatus se ipsum exinaniens: Franciscus suos sequaces Minimos, id est "minimos", appellare voluit, spiritualitatem parvitatis amplectens quae ipsam Christi kenosim reflectit. Liturgia non tantum austeras consuetudines commemorat, sed persuasionem theologicam veram magnitudinem coram Deo in humilitate, paenitentia et fiducia Providentiae absoluta inveniri, virtutes quae gratiae locum praebent in corde humano libere operandi.

Devotio erga Franciscum de Paula post eius obitum anno 1507 celeriter crevit, ita ut a Leone Papa X anno 1519 canonizaretur, celeritate pro illa aetate insigni. Fama thaumaturgi et pacificatoris inter principes eius cultum per Italiam, Galliam aliasque regiones diffudit; nautae praesertim et piscatores eum patronum sibi vindicaverunt, testimonium perennis vigoris sanctitatis eremiticae intra Ecclesiam mundo magis magisque implicatam.

Fidelibus hodiernis haec memoria tacitum sed acutum provocat: in cultura strepitus, sui ipsius ostentationis et consumptionis, Franciscus contrarium testimonium silentii, ieiunii et radicalis paupertatis spiritus proponit. Pastoraliter, eius exemplum fideles invitat ut paenitentiae exercitia non ut onera sed ut vias libertatis redintegrent, et credant vitas occultas orationis fructum verum toti Ecclesiae afferre.
$desc$),
('saint-isidore-bishop-and-doctor-of-the-church', 'Sanctus Isidorus, Episcopus et Ecclesiae Doctor', $desc$
Sanctus Isidorus Hispalensis honoratur ut episcopus et Ecclesiae doctor, qui hereditatem doctrinae christianae et classicae in servitium sapientiae, curae pastoralis et laudis Dei collegit.

Theologice, festum harmoniam fidei et scientiae celebrat: Isidorus totam scientiam humanam — grammaticam, ius, medicinam, historiam, theologiam — sub luce divinae veritatis colligere, servare et ordinare studuit, persuasus nullam veram scientiam a servitio Dei et proximi alienam esse. Eius exemplum proclamat vitam intellectualem, recte ordinatam, ipsam formam esse caritatis atque instrumentum evangelizationis temporibus perturbationis culturalis.

Isidorus quarto Concilio Toletano anno 633 praesedit, disciplinam et liturgiam Ecclesiae in Hispania Visigothica formans, dum eius encyclopaedicae Etymologiae fundamentale documentum per saecula eruditionis occidentalis factae sunt. Innocentius Papa XIII eum Ecclesiae doctorem anno 1722 declaravit.

Aetate informationibus saturata sed saepe sapientia egente, testimonium Isidori directe alloquitur eruditos, discipulos et omnes qui scientiae eiusque transmissioni operam dant, inclusis, populari devotione, iis qui modernis communicationis technologiis student. Festum eius fideles vocat ut scientiam semper in servitio veritatis, humilitatis et aedificationis Ecclesiae quaerant.
$desc$),
('saint-vincent-ferrer-priest', 'Sanctus Vincentius Ferrerius, Presbyter', $desc$
Sanctus Vincentius Ferrerius honoratur ut praedicator Dominicanus, cuius ardens annuntiatio paenitentiae et misericordiae divinae populos integros ad renovatam conversionem commovit.

Festum fideles ad cor theologicum praedicationis Vincentii ducit: urgentiam paenitentiae, certitudinem divini iudicii, et misericordiam quae omnibus ad Deum reversis aperta manet. Eius apostolatus itinerans persuasionem incarnabat Evangelium omni generationi omnique populo denuo proclamandum esse, non ut doctrinam abstractam sed ut vocationem vivam responsionem hic et nunc exigentem.

Frater dominicanus saeculorum quarti decimi et quinti decimi, Vincentius per Hispaniam, Galliam, Italiam aliasque regiones tempore Magni Occidentalis Schismatis praedicavit, indefesse, non sine controversia, pro unione Ecclesiae divisae laborans. Fama miraculorum et praedicationis propheticae ad eius canonizationem anno 1455 duxit, et imago perennis praedicatoris itinerantis saluti animarum penitus dicati manet.

Hodie Vincentius Ferrerius patronus praedicatorum et exemplar novae evangelizationis manet, pastores pariter ac laicos commonens authenticam Evangelii proclamationem et zelum veritatis et profundam caritatem exigere, et reconciliationem intra Ecclesiam munus urgens semperque actuale manere.
$desc$),
('saint-john-baptist-de-la-salle-priest', 'Sanctus Ioannes Baptista de La Salle, Presbyter', $desc$
Sanctus Ioannes Baptista de La Salle honoratur ut presbyter et conditor, qui in educatione iuvenum, praesertim pauperum, praecipuum opus caritatis christianae et evangelizationis agnovit.

In centro theologico huius festi stat persuasio docendi iuvenes, praesertim pauperes, ipsum sacrum ministerium esse, extensionem curae ipsius Christi pro "parvulis". Spiritualitas de La Salle unionem contemplativam cum Deo et servitium activum coniungebat, insistens veram educationem totam personam formare — mentem, mores et fidem simul — ut opus germanum historiae salutis.

Sacerdos et canonicus gallicus saeculi decimi septimi, de La Salle divitiis et dignitate renuntiavit ut Fratres Scholarum Christianarum conderet, gratuitam educationem pueris pauperibus praebens et laicos ut magistros devotos instituens tempore quo talis formatio rara erat. Anno 1900 canonizatus, a Pio Papa XII anno 1950 patronus magistrorum proclamatus est, locum suum ut exemplar educatorum catholicorum toto orbe confirmans.

Memoria eius hodie missioni Ecclesiae in educatione catholica perseveranti urgenter loquitur, magistros, catechistas et communitates scholasticas hortans ut vocationem suam non meram instructionem sed participationem propriae pedagogiae amoris Christi aestiment, praesertim erga pueros pauperes, neglectos vel in marginibus positos.
$desc$),
('saint-stanislaus-bishop-and-martyr', 'Sanctus Stanislaus, Episcopus et Martyr', $desc$
Sanctus Stanislaus honoratur ut episcopus et martyr, cuius fortitudo pastoralis defensionem gregis cum intrepido testimonio coram iniustitia coniunxit.

Substantia theologica huius festi est martyrium episcopi qui coram iniustitia tacere noluit: vocatus ut ordinem moralem Ecclesiae creditum custodiret, Stanislaus potestati regiae, cum iustitiam conculcaret, restitit, et hanc fidelitatem vita persolvit. Eius testimonium proclamat auctoritatem pastoris a munere veritatem potestati dicendi separari non posse, quocumque pretio.

Episcopus Cracoviensis in Polonia saeculi undecimi, Stanislaus cum rege Boleslao Secundo de abusibus eius dissensit, et, ut traditio narrat, manu vel iussu regis ipsius anno 1079 occisus est. Cultus eius inter populum Polonum celeriter crevit, et Innocentius Papa IV eum anno 1253 canonizavit; Stanislaus figura centralis identitatis nationalis et ecclesialis Polonorum manet.

Memoria eius episcopos omnesque auctoritatem moralem exercentes ad resistendum compromissioni cum iniustitia inspirare pergit, et fideles, praesertim in Polonia et per Europam Centralem, commonet fidelitatem conscientiae et Evangelio summum pretium exigere posse, dum fructuosissimum Ecclesiae testimonium affert.
$desc$),
('saint-martin-i-pope-and-martyr', 'Sanctus Martinus Primus, Papa et Martyr', $desc$
Sanctus Martinus I honoratur ut papa et martyr ob passiones toleratas in defensione verae fidei de mysterio Christi.

Theologice, memoria in fidelitate ad fidem orthodoxam coram pressione imperiali sistit: Martinus Concilium Lateranense anno 649 convocavit ut Monothelitismum damnaret, plenam humanitatem voluntatis Christi contra haeresim aulae Byzantinae faventem defendens. Eius testimonium affirmat successorem Petri munus ferre integritatem fidei custodiendi, etiam cum id iram potestatis mundanae provocet.

Ob hanc orthodoxiae defensionem, Constans Imperator Secundus Martinum comprehendi, iudicio ignominioso subici et in Chersonesum Tauricam exsilio mitti fecit, ubi papa anno 655 duritiis captivitatis mortuus est, martyrium verum persecutionis et neglectus potius quam directae executionis. Memoria eius praesertim in Ecclesiis Orientalibus perstitit antequam firmiter in traditione liturgica Romana radicaretur.

Hodie sanctus Martinus Primus commonet fidelitatem veritati revelatae etiam in summis Ecclesiae muneribus care constare posse, fideles hortans, praesertim eos qui auctoritatem docendi exercent, ut sanam doctrinam fortiter, patienter et fiducia in Providentiam inter pressiones politicas et culturales firmiter teneant.
$desc$),
('saint-anselm-bishop-and-doctor-of-the-church', 'Sanctus Anselmus, Episcopus et Ecclesiae Doctor', $desc$
Sanctus Anselmus honoratur ut episcopus et Ecclesiae doctor, monachus atque pastor, cuius theologia ostendit quomodo fides in contemplatione oranti intellectum quaerat.

Cor theologicum huius festi est persuasio programmatica Anselmi, fides quaerens intellectum: ratio, gratia illustrata, fidei non adversatur sed eam profundius penetrare quaerit. Eius meditationes de necessitate Incarnationis et Redemptionis in opere Cur Deus Homo, eiusque argumenta contemplativa de Dei existentia, theologiam exemplificant ex oratione natam et ad cultum iterum directam.

Monachus Benedictinus Becci qui archiepiscopus Cantuariensis factus est, Anselmus bis exsilium passus est ob libertatem Ecclesiae contra regiam intrusionem defendendam durante controversiis investiturarum sui temporis, intellectum rigorosum cum fortitudine pastorali coniungens. Clemens Papa XI eum Ecclesiae doctorem anno 1720 proclamavit, et hereditas eius methodum scholasticam per saecula formavit.

Aetate saepe oppositione inter fidem et rationem notata, memoria Anselmi credentes, eruditos et pastores pariter vocat ut theologiam ut inquisitionem contemplativam simul et rigorosam Dei iam crediti et amati redintegrent, ostendens profundissimam cogitationem et profundissimam orationem numquam separandas esse.
$desc$),
('saint-george-martyr', 'Sanctus Georgius, Martyr', $desc$
Sanctus Georgius per orbem christianum veneratur ut martyr, cuius memoria constantem fortitudinem in Christi confessione iam diu repraesentat.

Theologice, hoc festum imprimis martyrium ut supremum fidei testimonium celebrat: confessio Christi a Georgio usque ad sanguinem proclamat nullam potestatem terrenam, quantumvis magnam, credentem ad Dominum abnegandum cogere posse. Fabula posterior de dracone, licet historica non sit, eandem veritatem symbolice cristallizat, martyrem repraesentans qui, per fidem, vires mali pro auxilio egentibus superat.

Pauca de Georgio historice confirmari possunt praeter eius martyrium, verisimiliter initio saeculi quarti, at devotio erga eum extraordinaria celeritate per Orientem Occidentemque christianum diffusa est, tempore Cruciatarum intensificata, eumque patronum multarum nationum, urbium et ordinum equestrium reddidit, ab Anglia ad Georgiam et Cataloniam; commemoratio eius inter antiquissimas calendarii Romani numeratur.

Sanctus Georgius hodie militibus, exploratoribus omnibusque vocationes difficiles vel periculosas subeuntibus figura vehemens manet, fideles commonens fortitudinem christianam non meram audaciam esse sed fidelitatem Christo quae ne coram ferocissimis quidem mundi potestatibus vacillat.
$desc$),
('saint-adalbert-bishop-and-martyr', 'Sanctus Adalbertus, Episcopus et Martyr', $desc$
Sanctus Adalbertus honoratur ut episcopus, missionarius et martyr, pastor cuius labores apostolici Evangelium ad terras attulerunt ubi Ecclesia adhuc radices agebat.

In centro theologico huius memoriae stat vocatio missionaria ut martyrium in potentia intellecta: ministerium episcopale Adalberti, repetitis reversionibus et tandem morte violenta inter Prussos praedicantis notatum, illustrat evangelizationem numquam meram rationem esse sed participationem ipsius doni sui Christi, oblatam etiam cum messis exigua vel resistens videatur.

Episcopus Pragensis, Adalbertus bis sedem suam reliquit, resistentia gregis sui deiectus, et se in missione ad Hungariam, Poloniam et tandem Prussos paganos impendit, inter quos anno 997 occisus est. Reliquiae eius, a Boleslao Duce Poloniae redemptae, punctum focale incrementi Ecclesiae in regione factae sunt, cultusque eius per Bohemiam, Poloniam et Hungariam celeriter diffusus est.

Memoria eius perseverantiam missionariam coram desperatione inspirare pergit, patronum Europae Centrali et exemplar omnibus in difficilibus missionis agris laborantibus offerens, ubi fructus visibilis tarde apparet, cuius tamen sacrificium tandem Ecclesiam aedificat.
$desc$),
('saint-fidelis-of-sigmaringen-priest-and-martyr', 'Sanctus Fidelis a Sigmaringen, Presbyter et Martyr', $desc$
Sanctus Fidelis a Sigmaringen honoratur ut presbyter Capuccinus et martyr, cuius praedicatio claritatem doctrinalem, caritatem missionariam et promptitudinem pro fide moriendi coniunxit.

Theologice, hoc festum in martyrio pro integritate et unitate fidei catholicae tempore acerbae divisionis religiosae sustento sistit: mors Fidelis non propter se ipsam quaesita est, sed ex eius intrepida praedicatione doctrinae catholicae inter populum hostilem orta, persuasionem incarnans caritatem erga eos qui in errore sunt fidelitatem veritati revelatae nec debere nec posse diluere.

Iurisconsultus doctus qui carrierae iuridicae promissivae pro paupertate Capuccina renuntiavit, Fidelis missus est ut inter populos Calvinianos in Helvetia praedicaret et catechismum doceret, parte missionis Contrareformationis Congregationis de Propaganda Fide, et a turba hostili anno 1622 occisus est, primus martyr illius Congregationis factus; Benedictus Papa XIV eum anno 1746 canonizavit.

Memoria eius hodie missionariis, iurisconsultis omnibusque in delicato opere dialogi et evangelizationis inter divisionem occupatis loquitur, fideles vocans ut firmam claritatem doctrinalem cum germana caritate coniungant, confisi fidelitatem veritati, etiam cum hostilitatem provocet, actum amoris manere.
$desc$),
('saint-mark-evangelist', 'Sanctus Marcus, Evangelista', $desc$
Sanctus Marcus Evangelista honoratur ut unus ex quattuor scriptoribus Evangelii et ut testis apostolicus qui Iesum Christum viva claritate et impetu missionario proclamavit.

In corde theologico huius festi Evangelium ipsum iacet: narratio Marci brevis et urgens, verbis "initium Evangelii Iesu Christi, Filii Dei" incipiens, Christum proclamat eum cuius facta et passio, tempore reali, irruptionem regni Dei revelant, auditores ad fidem immediatam et discipulatum potius quam ad meditationem seiunctam invitans.

Traditione comes Petri et Pauli et conditor Ecclesiae Alexandrinae habitus, auctoritas et authenticitas apostolica Marci ab antiqua Ecclesia diu agnita est; reliquiae eius, saeculo nono Venetias allatae, eum patronum illius urbis fecerunt, et cultus eius ab antiquitate late diffusus permansit.

Festum hodie aestimationem Evangelii ut proclamationis vivae potius quam meri documenti renovat, praedicatores, evangelizatores omnesque fideles hortans ut Bonum Nuntium eadem urgentia et claritate quae Evangelium ipsius Marci notant recipiant et transmittant, symbolum eius perenne, leonem, ut imaginem fidei audacis et vigilantis honorans.
$desc$),
('saint-peter-chanel-priest-and-martyr', 'Sanctus Petrus Chanel, Presbyter et Martyr', $desc$
Sanctus Petrus Chanel honoratur ut presbyter missionarius et martyr, cuius perseverantia tacita eum inter primas Evangelii primitias in Oceania constituit.

Theologice, haec memoria fecunditatem martyrii missionarii proclamat: mors Petri, longe a fine apostolatus eius, in intellectu Ecclesiae ipsum semen facta est ex quo fides in insula ubi mortuus est floruit, antiquam persuasionem incarnans sanguinem martyrum semen esse christianorum, etiam in novissimis territoriis missionis.

Sacerdos missionarius Maristarum, Petrus Chanel ad insulam Pacificam Futunae anno 1837 pervenit, per annos parvo fructu visibili et hostilitate locali crescente laborans, donec anno 1841 occisus est, ut fertur, instigatione principis cuius filius proprius conversione minabatur; intra paucos annos post mortem eius, tota insula ad fidem catholicam conversa est, et Petrus anno 1954 canonizatus est.

Memoria eius hodie patrocinium et incitamentum missionariis per Oceaniam aliasque regiones praebet, commonens defectum apparentem operis missionarii semina extraordinarii incrementi futuri celare posse, et perseverantiam in caritate et praedicatione, etiam sine fructibus immediatis, in consilio Dei summe fecundam manere.
$desc$),
('saint-louis-grignon-de-montfort-priest', 'Sanctus Ludovicus Maria Grignion de Montfort, Presbyter', $desc$
Sanctus Ludovicus Maria Grignion de Montfort honoratur ut presbyter, missionarius et magister spiritualis, cuius doctrina mariana christianos ad perfectiorem cum Iesu Christo unionem formare intendit.

In corde theologico huius festi doctrina totalis consecrationis Iesu per Mariam stat: Montfort docuit Mariam, discipulam perfectam et matrem redemptorum, Christum in animabus quae se ei committunt certissime et celerrime formare, doctrina quae devotionem marianam firmiter intra fidem christocentricam, non extra eam, collocat.

Praedicator itinerans missionum per occidentalem Galliam initio saeculi decimi octavi, Montfort oppositiones, paupertatem et etiam insidias in vitam suam passus est, opera tamen perennia composuit, praesertim Tractatum de Vera Devotione erga Beatam Virginem, quod postea magnos motus spiritualitatis catholicae influxit; anno 1947 canonizatus est, et doctrina eius in pietate atque doctrina pontificia posteriore visibiliter mansit.

Memoria eius hodie fideles invitat ut consecrationem marianam authenticam ut viam ad profundiorem configurationem Christo redintegrent, praedicationem missionariam renovatam et pietatem popularem pariter fovens, et Ecclesiam commonens devotionem erga Mariam, recte intellectam, semper plenius ad Filium eius ducere.
$desc$),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 'Sancta Catharina Senensis, Virgo et Ecclesiae Doctor', $desc$
Sancta Catharina Senensis honoratur ut virgo et Ecclesiae doctor, mystica Dominicana laica cuius amor Christi in intrepidum Ecclesiae societatisque servitium redundavit.

Theologice, festum in visione mystica et ecclesiali in corde doctrinae Catharinae sistit: unio cum Christo per contemplationem sanguinis eius amore effusi, et zelus correspondens pro unitate, reformatione et sanctitate Ecclesiae, expressus in celebri eius Dialogo et in indefessa correspondentia pacem, paenitentiam et fidelitatem Vicario Christi urgente.

Tertiaria Dominicana et laica Senae saeculi decimi quarti, Catharina vox influens in vita publica Ecclesiae facta est, celebriter Gregorium Papam Undecimum hortans ut papatum ab Avenione Romam reduceret; anno 1461 canonizata, Ecclesiae doctor a Paulo Papa Sexto anno 1970 declarata est, et postea patrona Italiae et copatrona Europae nominata.

Memoria eius hodie vocationi laicorum, praesertim mulierum, in missione Ecclesiae valide loquitur, et ipsi vocationi Europae ad unitatem in Evangelio radicatam, omnes credentes ad mixturam propriam Catharinae orationis contemplativae profundae et testimonii publici intrepidi pro bono Ecclesiae et societatis vocans.
$desc$),
('saint-pius-v-pope', 'Sanctus Pius Quintus, Papa', $desc$
Sanctus Pius V honoratur ut papa qui austeritatem personalem, doctrinalem firmitatem et pastoralem reformationem in servitium cultus vitaeque Ecclesiae coniunxit.

Substantia theologica huius festi in fidelitate ad sanam doctrinam et integritatem cultus sistit: reformatio Missalis Romani et Breviarii a Pio Quinto, una cum promulgatione Catechismi Romani, persuasionem expressit rectam credulitatem et rectum cultum separari non posse, et unitatem sanctitatemque Ecclesiae a diligenti utriusque transmissione pendere.

Frater Dominicanus qui papa anno 1566 factus est, Pius Quintus vigorosam reformationem disciplinae et doctrinae clericalis persecutus est, Rosarium ut arma spiritualia promovit, et copias christianas in pugna navali Lepantina anno 1571 congregavit, eventum quem Ecclesia gratia commemoravit ob id quod intercessio Mariae haberetur; anno 1712 canonizatus est.

Memoria eius hodie fideles vocat ut vinculum perenne inter sanam doctrinam, diligentem liturgiam et fidentem orationem, praesertim Rosarium, aestiment, pastoribusque exemplar reformationis fortis offert non propter se ipsam susceptae sed pro fidelitate et sanctitate totius Ecclesiae.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-francis-of-paola-hermit', 4, 2, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-isidore-bishop-and-doctor-of-the-church', 4, 4, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-vincent-ferrer-priest', 4, 5, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-john-baptist-de-la-salle-priest', 4, 7, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-stanislaus-bishop-and-martyr', 4, 11, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-martin-i-pope-and-martyr', 4, 13, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-anselm-bishop-and-doctor-of-the-church', 4, 21, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-george-martyr', 4, 23, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-adalbert-bishop-and-martyr', 4, 23, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-fidelis-of-sigmaringen-priest-and-martyr', 4, 24, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-mark-evangelist', 4, 25, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-peter-chanel-priest-and-martyr', 4, 28, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-louis-grignon-de-montfort-priest', 4, 28, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 4, 29, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-pius-v-pope', 4, 30, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-francis-of-paola-hermit', $desc$
In the Roman General Calendar, this celebration falls on April 2 as an optional memorial with white vestments.
$desc$),
('saint-isidore-bishop-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on April 4 as an optional memorial with white vestments.
$desc$),
('saint-vincent-ferrer-priest', $desc$
In the Roman General Calendar, this celebration falls on April 5 as an optional memorial with white vestments.
$desc$),
('saint-john-baptist-de-la-salle-priest', $desc$
In the Roman General Calendar, this celebration falls on April 7 as an obligatory memorial with white vestments.
$desc$),
('saint-stanislaus-bishop-and-martyr', $desc$
In the Roman General Calendar, this celebration falls on April 11 as an obligatory memorial with red vestments.
$desc$),
('saint-martin-i-pope-and-martyr', $desc$
In the Roman General Calendar, this celebration falls on April 13 as an optional memorial with red vestments.
$desc$),
('saint-anselm-bishop-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on April 21 as an optional memorial with white vestments.
$desc$),
('saint-george-martyr', $desc$
In the Roman General Calendar, this celebration falls on April 23 as an optional memorial with red vestments. It shares this date with Saint Adalbert, Bishop and Martyr as another optional memorial.
$desc$),
('saint-adalbert-bishop-and-martyr', $desc$
In the Roman General Calendar, this celebration falls on April 23 as an optional memorial with red vestments. It shares this date with Saint George, Martyr as another optional memorial.
$desc$),
('saint-fidelis-of-sigmaringen-priest-and-martyr', $desc$
In the Roman General Calendar, this celebration falls on April 24 as an optional memorial with red vestments.
$desc$),
('saint-mark-evangelist', $desc$
In the Roman General Calendar, this celebration falls on April 25 as a feast with white vestments. In Roman usage this date also preserves the traditional association with the Major Rogation.
$desc$),
('saint-peter-chanel-priest-and-martyr', $desc$
In the Roman General Calendar, this celebration falls on April 28 as an optional memorial with red vestments. It shares April 28 with Saint Louis Grignon de Montfort, Priest as another optional memorial.
$desc$),
('saint-louis-grignon-de-montfort-priest', $desc$
In the Roman General Calendar, this celebration falls on April 28 as an optional memorial with white vestments. It shares April 28 with Saint Peter Chanel, Priest and Martyr as another optional memorial.
$desc$),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on April 29 as an obligatory memorial with white vestments.
$desc$),
('saint-pius-v-pope', $desc$
In the Roman General Calendar, this celebration falls on April 30 as an optional memorial with white vestments. In the current Roman General Calendar it is kept on April 30, having been transferred from May 5 in the reform of 1969.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'fr', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-francis-of-paola-hermit', $desc$
Dans le calendrier romain général, cette célébration tombe le 2 avril comme une mémoire facultative avec la couleur liturgique blanche.
$desc$),
('saint-isidore-bishop-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 4 avril comme une mémoire facultative avec la couleur liturgique blanche.
$desc$),
('saint-vincent-ferrer-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 5 avril comme une mémoire facultative avec la couleur liturgique blanche.
$desc$),
('saint-john-baptist-de-la-salle-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 7 avril comme une mémoire obligatoire avec la couleur liturgique blanche.
$desc$),
('saint-stanislaus-bishop-and-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 11 avril comme une mémoire obligatoire avec la couleur liturgique rouge.
$desc$),
('saint-martin-i-pope-and-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 13 avril comme une mémoire facultative avec la couleur liturgique rouge.
$desc$),
('saint-anselm-bishop-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 21 avril comme une mémoire facultative avec la couleur liturgique blanche.
$desc$),
('saint-george-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 23 avril comme une mémoire facultative avec la couleur liturgique rouge. Elle partage cette date avec Saint Adalbert, évêque et martyr comme autre mémoire facultative.
$desc$),
('saint-adalbert-bishop-and-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 23 avril comme une mémoire facultative avec la couleur liturgique rouge. Elle partage cette date avec Saint Georges, martyr comme autre mémoire facultative.
$desc$),
('saint-fidelis-of-sigmaringen-priest-and-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 24 avril comme une mémoire facultative avec la couleur liturgique rouge.
$desc$),
('saint-mark-evangelist', $desc$
Dans le calendrier romain général, cette célébration tombe le 25 avril comme une fête avec la couleur liturgique blanche. Dans l'usage romain, cette date garde aussi le lien traditionnel avec les Grandes Rogations.
$desc$),
('saint-peter-chanel-priest-and-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 28 avril comme une mémoire facultative avec la couleur liturgique rouge. Elle partage le 28 avril avec Saint Louis-Marie Grignion de Montfort, prêtre comme autre mémoire facultative.
$desc$),
('saint-louis-grignon-de-montfort-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 28 avril comme une mémoire facultative avec la couleur liturgique blanche. Elle partage le 28 avril avec Saint Pierre Chanel, prêtre et martyr comme autre mémoire facultative.
$desc$),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 29 avril comme une mémoire obligatoire avec la couleur liturgique blanche.
$desc$),
('saint-pius-v-pope', $desc$
Dans le calendrier romain général, cette célébration tombe le 30 avril comme une mémoire facultative avec la couleur liturgique blanche. Dans le calendrier romain général actuel, elle est célébrée le 30 avril, après avoir été transférée du 5 mai lors de la réforme de 1969.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'la', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-francis-of-paola-hermit', $desc$
In Calendario Romano Generali, haec celebratio die 2 Aprilis ut memoria ad libitum cum colore liturgico albo celebratur.
$desc$),
('saint-isidore-bishop-and-doctor-of-the-church', $desc$
In Calendario Romano Generali, haec celebratio die 4 Aprilis ut memoria ad libitum cum colore liturgico albo celebratur.
$desc$),
('saint-vincent-ferrer-priest', $desc$
In Calendario Romano Generali, haec celebratio die 5 Aprilis ut memoria ad libitum cum colore liturgico albo celebratur.
$desc$),
('saint-john-baptist-de-la-salle-priest', $desc$
In Calendario Romano Generali, haec celebratio die 7 Aprilis ut memoria obligatoria cum colore liturgico albo celebratur.
$desc$),
('saint-stanislaus-bishop-and-martyr', $desc$
In Calendario Romano Generali, haec celebratio die 11 Aprilis ut memoria obligatoria cum colore liturgico rubro celebratur.
$desc$),
('saint-martin-i-pope-and-martyr', $desc$
In Calendario Romano Generali, haec celebratio die 13 Aprilis ut memoria ad libitum cum colore liturgico rubro celebratur.
$desc$),
('saint-anselm-bishop-and-doctor-of-the-church', $desc$
In Calendario Romano Generali, haec celebratio die 21 Aprilis ut memoria ad libitum cum colore liturgico albo celebratur.
$desc$),
('saint-george-martyr', $desc$
In Calendario Romano Generali, haec celebratio die 23 Aprilis ut memoria ad libitum cum colore liturgico rubro celebratur. Eodem die etiam Sanctus Adalbertus, Episcopus et Martyr tamquam alia memoria ad libitum celebratur.
$desc$),
('saint-adalbert-bishop-and-martyr', $desc$
In Calendario Romano Generali, haec celebratio die 23 Aprilis ut memoria ad libitum cum colore liturgico rubro celebratur. Eodem die etiam Sanctus Georgius, Martyr tamquam alia memoria ad libitum celebratur.
$desc$),
('saint-fidelis-of-sigmaringen-priest-and-martyr', $desc$
In Calendario Romano Generali, haec celebratio die 24 Aprilis ut memoria ad libitum cum colore liturgico rubro celebratur.
$desc$),
('saint-mark-evangelist', $desc$
In Calendario Romano Generali, haec celebratio die 25 Aprilis ut festum cum colore liturgico albo celebratur. In usu Romano hic dies etiam traditionale vinculum cum Rogatione Maiore servat.
$desc$),
('saint-peter-chanel-priest-and-martyr', $desc$
In Calendario Romano Generali, haec celebratio die 28 Aprilis ut memoria ad libitum cum colore liturgico rubro celebratur. Eodem die 28 Aprilis etiam Sanctus Ludovicus Maria Grignion de Montfort, Presbyter tamquam alia memoria ad libitum celebratur.
$desc$),
('saint-louis-grignon-de-montfort-priest', $desc$
In Calendario Romano Generali, haec celebratio die 28 Aprilis ut memoria ad libitum cum colore liturgico albo celebratur. Eodem die 28 Aprilis etiam Sanctus Petrus Chanel, Presbyter et Martyr tamquam alia memoria ad libitum celebratur.
$desc$),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', $desc$
In Calendario Romano Generali, haec celebratio die 29 Aprilis ut memoria obligatoria cum colore liturgico albo celebratur.
$desc$),
('saint-pius-v-pope', $desc$
In Calendario Romano Generali, haec celebratio die 30 Aprilis ut memoria ad libitum cum colore liturgico albo celebratur. In hodierno Calendario Romano Generali die 30 Aprilis servatur, cum ex die 5 Maii in instauratione anni 1969 translata sit.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

-- =========================================================
-- Roman General Calendar - May (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-joseph-the-worker', 'Saint Joseph the Worker', 'saint'),
('saint-athanasius-bishop-and-doctor-of-the-church', 'Saint Athanasius, Bishop and Doctor of the Church', 'saint'),
('saints-philip-and-james-apostles', 'Saints Philip and James, Apostles', 'saint'),
('saint-john-of-avila-priest-and-doctor-of-the-church', 'Saint John of Ávila, Priest and Doctor of the Church', 'saint'),
('saints-nereus-and-achilleus-martyrs', 'Saints Nereus and Achilleus, Martyrs', 'saint'),
('saint-pancras-martyr', 'Saint Pancras, Martyr', 'saint'),
('our-lady-of-fatima', 'Our Lady of Fatima', 'marian'),
('saint-matthias-apostle', 'Saint Matthias, Apostle', 'saint'),
('saint-john-i-pope-and-martyr', 'Saint John I, Pope and Martyr', 'saint'),
('saint-bernardine-of-siena-priest', 'Saint Bernardine of Siena, Priest', 'saint'),
('saint-christopher-magallanes-priest-and-companions-martyrs', 'Saint Christopher Magallanes, Priest, and Companions, Martyrs', 'saint'),
('saint-rita-of-cascia-religious', 'Saint Rita of Cascia, Religious', 'saint'),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', 'Saint Bede the Venerable, Priest and Doctor of the Church', 'saint'),
('saint-gregory-vii-pope', 'Saint Gregory VII, Pope', 'saint'),
('saint-mary-magdalene-de-pazzi-virgin', 'Saint Mary Magdalene de'' Pazzi, Virgin', 'saint'),
('saint-philip-neri-priest', 'Saint Philip Neri, Priest', 'saint'),
('saint-augustine-of-canterbury-bishop', 'Saint Augustine of Canterbury, Bishop', 'saint'),
('saint-paul-vi-pope', 'Saint Paul VI, Pope', 'saint'),
('the-visitation-of-the-blessed-virgin-mary', 'The Visitation of the Blessed Virgin Mary', 'marian')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-joseph-the-worker', 'Saint Joseph the Worker', $desc$
Saint Joseph the Worker contemplates the foster-father of the Lord in the dignity of labor, showing how ordinary work can become a place of fidelity, service, and sanctification.

At the heart of this celebration lies the conviction that human work, however humble, is caught up in God's own creative and redemptive action. By laboring at the bench in Nazareth, Joseph sanctified ordinary toil and united it to the mystery of the Incarnation, since the Word himself was known among his neighbors as "the carpenter's son." The feast proclaims that no honest labor is beneath the dignity of a child of God, and that holiness is to be sought in fidelity to daily duty rather than in extraordinary deeds.

Pope Pius XII instituted this feast in 1955, explicitly setting it on 1 May to offer Christian workers a supernatural counterpart to the international observances of that day, which had become associated with secular and sometimes anti-religious ideologies of labor. It remains distinct in theme and emphasis from the celebration of Saint Joseph, Spouse of the Blessed Virgin Mary.

Today the feast invites the faithful to view their professional and domestic labor as a genuine path to sanctity, and to entrust to Joseph's intercession the unemployed, the exploited, and all who labor without recognition. It restores a properly Christian vision of work as vocation and service, tempering both the idolatry of productivity and the despair of meaningless toil.
$desc$),
('saint-athanasius-bishop-and-doctor-of-the-church', 'Saint Athanasius, Bishop and Doctor of the Church', $desc$
Saint Athanasius is honored as a bishop and Doctor of the Church whose defense of the Son's true divinity safeguarded the Church's confession of salvation in Christ.

Athanasius stood as the great champion of the Nicene faith against Arianism, insisting with theological precision that the Son is consubstantial with the Father, truly God from true God. His conviction, expressed above all in his treatise On the Incarnation, was that only if Christ is fully divine can he truly divinize humanity by his death and resurrection; a demoted Christ would leave the promise of salvation unfulfilled.

Exiled five times from his see for his fidelity to Nicaea, Athanasius became proverbial for standing almost alone against the prevailing currents of his age, giving rise to the saying "Athanasius contra mundum." The Church recognized him early as a Doctor, a testimony to how central his witness was judged to be for the integrity of the Christian confession of faith.

His example continues to instruct believers on the cost of doctrinal fidelity and the patience required to uphold truth against fashionable error. In an age often tempted to dilute the mystery of Christ, Athanasius reminds the faithful that theological precision is not pedantry but a service of charity, safeguarding the very possibility of salvation the Church proclaims.
$desc$),
('saints-philip-and-james-apostles', 'Saints Philip and James, Apostles', $desc$
Saints Philip and James are honored together as apostles, witnesses to the risen Lord, and pillars of the Church founded on apostolic testimony.

The liturgy joins these two apostles because their relics rest together in Rome, in the basilica dedicated to the Twelve Apostles, and because both bear witness to the foundational structure of the Church built upon the Twelve. Philip, who asked the Lord to "show us the Father" and received the reply that to see him is to see the Father, and James, traditionally identified with the "brother of the Lord" and first leader of the Jerusalem community, together represent the apostolic office as service of unity and transmission of revealed truth.

The joint commemoration goes back to the sixth-century dedication of the Roman basilica of the Twelve Apostles, where the remains of both were translated and enshrined.

The feast invites the faithful to recognize in Philip and James models of that apostolic desire to see and know God fully. Their witness encourages the Church to persevere in handing on, undiminished, the faith received from the apostles, the foundation on which every subsequent generation of believers is built.
$desc$),
('saint-john-of-avila-priest-and-doctor-of-the-church', 'Saint John of Ávila, Priest and Doctor of the Church', $desc$
Saint John of Ávila is honored as a priest and Doctor of the Church, a preacher and spiritual master whose counsel helped renew clergy and laity alike.

His theological legacy centers on the holiness of the ordained ministry and the formation of priests capable of authentic spiritual direction and preaching. John of Ávila taught that renewal of the Church begins with the interior conversion and doctrinal seriousness of her pastors, a conviction that shaped his writings on priestly life and his celebrated spiritual correspondence, through which he guided many souls, including future saints, toward deeper union with God.

Known as the "Apostle of Andalusia" for his tireless preaching throughout southern Spain in the sixteenth century, he influenced the reforming currents that would later find expression at the Council of Trent, particularly regarding seminaries and clerical formation. The title of Doctor of the Church, conferred in 2012, recognized the enduring value of his teaching on priesthood and holiness.

His memorial today calls the faithful, and priests especially, to examine the quality of pastoral care and spiritual accompaniment offered to God's people. John of Ávila's insistence that doctrine and charity must never be separated remains a timely corrective wherever preaching risks becoming either dry erudition or sentiment without substance.
$desc$),
('saints-nereus-and-achilleus-martyrs', 'Saints Nereus and Achilleus, Martyrs', $desc$
Saints Nereus and Achilleus are honored as early Roman martyrs whose ancient witness reminds the Church that the Gospel was sealed from the beginning with blood.

Their commemoration underscores the martyr's participation in the Paschal mystery: by their death these Christians were configured to the dying and rising of Christ, and the Church has always read martyrdom as the supreme testimony that Christ's victory over death is real and communicable to his disciples.

Ancient tradition, echoed in an epigram composed by Pope Saint Damasus I in the fourth century, associates Nereus and Achilleus with the imperial guard, converted to the faith and martyred for refusing to renounce Christ, and buried in the catacomb of Domitilla on the Via Ardeatina, where a basilica was later raised in their honor. Their names have remained in the Roman liturgical books since antiquity.

Though little of their story survives beyond this ancient veneration, their commemoration reminds contemporary believers that fidelity to Christ has always required, for some, the total gift of life itself, and that the Church treasures every witness, however sparse the record, who sealed the Gospel with blood.
$desc$),
('saint-pancras-martyr', 'Saint Pancras, Martyr', $desc$
Saint Pancras is honored as a youthful martyr whose witness shows that grace can bring heroic fidelity to maturity even in early life.

His memory keeps before the Church the mystery of martyrdom borne by the very young, since ancient tradition holds that Pancras suffered death for the faith while still a boy, not yet fifteen years old. The Church has always seen in such witnesses a particularly striking sign that grace can perfect nature at any age, and that fidelity to Christ, rather than years of experience, is what the Gospel ultimately asks of every disciple.

Buried on the Via Aurelia, where a basilica bearing his name was later built, Pancras became one of the most venerated Roman martyrs in the West, especially in England, where numerous churches were dedicated to him from the earliest centuries of Anglo-Saxon Christianity, a devotion connected to the Roman mission that evangelized that land.

His feast today speaks especially to the young, holding up the possibility of heroic fidelity to Christ regardless of age or worldly standing. It invites the whole Church to remember that the call to total self-gift is addressed to every baptized person, not reserved for a supposed spiritual maturity measured merely in years.
$desc$),
('our-lady-of-fatima', 'Our Lady of Fatima', $desc$
Our Lady of Fatima recalls the maternal solicitude of the Blessed Virgin Mary as received in the devotion associated with the apparitions reported at Fátima in 1917.

Theologically, the memorial situates itself within the Church's broader veneration of Mary as intercessor who directs attention toward her Son and toward conversion of heart. The message associated with Fátima insists on prayer, especially the Rosary, and on penance for sinners, themes entirely continuous with the Gospel call to conversion and with Mary's constant role, recognized by the Church, of leading the faithful to a deeper, more urgent following of Christ.

Devotion to Our Lady of Fátima grew rapidly through the twentieth century, receiving support from successive popes who visited the shrine and linked the message to the Church's prayer for peace, particularly during the turbulence of the World Wars and the Cold War. The Church has continued to exercise careful discernment regarding reported private revelations, which do not add to the deposit of faith but can illumine and encourage its living reception.

Celebrating this memorial today invites the faithful to renew practices of prayer and penance within ordinary Christian life, and to entrust to Mary's intercession the causes of peace and conversion that were at the heart of the reported message, always in continuity with, and subordinate to, the definitive revelation given in Christ.
$desc$),
('saint-matthias-apostle', 'Saint Matthias, Apostle', $desc$
Saint Matthias is honored as the apostle chosen to complete the number of the Twelve after the fall of Judas, a sign that apostolic ministry is received from the Lord.

The Acts of the Apostles recounts how, after the Ascension, the community gathered in prayer and, discerning between two candidates, cast lots to determine whom the Lord had chosen to complete the number of the Twelve after the fall of Judas. The choice of Matthias highlights a central theological point: apostleship is not a human achievement but a divine election, and the integrity of the Twelve as witnesses of the whole of Christ's ministry, from the baptism of John to the Resurrection, was considered essential to the Church's foundation.

Little else is recorded of Matthias in the New Testament, and later traditions about his missionary activity and death vary considerably, none possessing strong historical certainty. Nevertheless, his feast has held a stable place in the Roman calendar since antiquity, valued precisely for what it signifies about the structure of apostolic authority rather than for a developed narrative of his life.

His feast reminds the Church today that ministry within her is always a response to a call that precedes and exceeds personal merit, and that the community's discernment, joined to prayer, remains the proper context in which such vocations are recognized and confirmed.
$desc$),
('saint-john-i-pope-and-martyr', 'Saint John I, Pope and Martyr', $desc$
Saint John I is honored as pope and martyr, a successor of Peter whose suffering under political pressure became a witness to fidelity in office.

His commemoration highlights the particular vocation of the Bishop of Rome to guard the unity and orthodoxy of the faith, sometimes at the cost of his own liberty and life. Sent unwillingly on a diplomatic mission to Constantinople by the Arian king Theodoric, John found himself caught between imperial politics and his duty to the Catholic faith, and his death in captivity has been understood by the tradition as a form of witness rendered for the sake of the Church's fidelity to orthodox teaching.

Historical sources record that John I, elected pope in 523, was compelled to negotiate with the Byzantine emperor on behalf of Arian interests in the West; upon his return, suspected of disloyalty, he was imprisoned at Ravenna, where he died shortly afterward. He was buried in Rome and soon venerated as a martyr, his name entering the ancient liturgical books of the city.

His memorial invites reflection today on the burdens sometimes carried by those who exercise authority in the Church amid conflicting political pressures, and on the fidelity owed to the truth of the Gospel even when it entails suffering rather than worldly success.
$desc$),
('saint-bernardine-of-siena-priest', 'Saint Bernardine of Siena, Priest', $desc$
Saint Bernardine of Siena is honored as a Franciscan preacher whose ardent devotion to the Holy Name of Jesus renewed Christian life in cities and households.

At the heart of his spiritual teaching lies devotion to the Name of Jesus, which Bernardine promoted through the symbol of the monogram "IHS" set within a blazing sun, insisting that in this Name alone is offered the salvation and peace for which human hearts long. This devotion was never merely decorative for him: it expressed the conviction that the whole of Christian life, personal and social, must be ordered to Christ and reformed according to the Gospel he proclaims.

A tireless itinerant preacher across the cities of Italy, Bernardine addressed not only individual conversion but also civic and economic abuses of his day, seeking to reconcile warring factions and to correct unjust practices in commerce. Twice offered episcopal office, he declined it to continue his preaching mission, and his renown as one of the great popular preachers of the late Middle Ages secured him swift canonization and lasting devotion.

His example today encourages preachers and the whole Church to trust in the transforming power of the Name of Jesus, proclaimed with clarity and zeal, and to see authentic evangelization as inseparable from concern for justice and reconciliation within society.
$desc$),
('saint-christopher-magallanes-priest-and-companions-martyrs', 'Saint Christopher Magallanes, Priest, and Companions, Martyrs', $desc$
Saint Christopher Magallanes and his Companions are honored as martyrs whose fidelity to the sacraments during persecution in Mexico manifested the Church's enduring courage.

Their witness proclaims that fidelity to the Eucharist and to priestly ministry can still demand, in the modern era no less than in antiquity, the total gift of one's life. Christopher Magallanes and his companions were killed precisely for continuing to celebrate the sacraments and instruct the faithful in defiance of laws seeking to suppress the public exercise of the Catholic faith, making their deaths a direct configuration to Christ's own self-offering.

These martyrs died between 1915 and 1937, most during the Cristero conflict that followed the anticlerical legislation of the Mexican government, and were canonized together by Pope John Paul II in 2000 as representative of a much larger number who suffered similarly during that period.

Their memory calls believers today to recognize that religious liberty and the right to worship remain, in various parts of the world, causes for which Christians still suffer, and it summons the Church to solidarity with those who currently endure persecution for the sake of the Gospel.
$desc$),
('saint-rita-of-cascia-religious', 'Saint Rita of Cascia, Religious', $desc$
Saint Rita of Cascia is honored as a wife, mother, widow, and religious, a saint whose life teaches the transformation of suffering through union with Christ.

The theological center of her cult lies in the configuration of her suffering to the Passion of Christ, symbolized by the tradition of a wound resembling that of the Crown of Thorns, which she is said to have received while meditating on the Lord's suffering. Her life illustrates how apparently ordinary and painful circumstances, a difficult marriage, the loss of children, endured in union with Christ, can become a genuine path of sanctification rather than an obstacle to it.

After the death of her husband and sons, Rita sought entrance into the Augustinian monastery of Cascia, where she lived a hidden life of prayer and penance for decades. Devotion to her grew steadily after her death, and she came to be invoked especially by those facing situations described as impossible or desperate, a title now inseparable from her name in popular piety.

Her feast today speaks powerfully to those enduring difficult marriages, family losses, or apparently hopeless situations, holding before them the example of a woman who found in Christ's Passion the strength to transform suffering into intercession and hope rather than despair.
$desc$),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', 'Saint Bede the Venerable, Priest and Doctor of the Church', $desc$
Saint Bede the Venerable is honored as a priest and Doctor of the Church, a monk whose scholarship nourished the Church's reading of Scripture and memory of her history.

Bede's theological significance rests chiefly on his work as an exegete who transmitted and synthesized the patristic tradition of biblical commentary for the Latin West, always joining careful textual scholarship to a concern for the spiritual and moral edification of his readers. He understood historical and scientific inquiry, including his celebrated work on the computation of Easter, as wholly compatible with, and indeed placed at the service of, the Church's life of faith and worship.

Spending nearly his entire life within the monastery of Jarrow in Northumbria, Bede produced a vast body of biblical commentary alongside his renowned Ecclesiastical History of the English People, the principal source for the early history of Christianity in England, earning him during his lifetime already the epithet "Venerable" for his learning and holiness.

His example today commends the vocation of Christian scholarship exercised in humility and stability, reminding the Church that patient study of Scripture and careful attention to her own history remain genuine forms of service to the faith, not distractions from the contemplative and pastoral life.
$desc$),
('saint-gregory-vii-pope', 'Saint Gregory VII, Pope', $desc$
Saint Gregory VII is honored as pope for defending the Church's freedom and pursuing reform with costly perseverance.

At the heart of the Gregorian Reform lay the conviction that the Church's holiness and mission require freedom from improper secular control, expressed concretely in opposition to simony, the buying and selling of ecclesiastical office, to clerical incontinence, and to lay investiture, the practice by which secular rulers appointed bishops and abbots. Gregory understood these struggles as inseparable from fidelity to the Gospel itself, believing that a Church entangled in worldly power could not credibly proclaim Christ.

His pontificate, beginning in 1073, brought him into direct conflict with Emperor Henry IV over the right to invest bishops, a struggle that included Henry's dramatic penance at Canossa in 1077 yet ended in continued strife and Gregory's own exile from Rome. He died in Salerno in 1085, reportedly declaring, "I have loved justice and hated iniquity, therefore I die in exile," words that later shaped his reputation as a pope who suffered for reform.

His memory today invites reflection on the enduring need for the Church's institutional life to remain subordinate to her spiritual mission, and on the courage required of those who labor for reform even when it brings personal cost and lasting controversy.
$desc$),
('saint-mary-magdalene-de-pazzi-virgin', 'Saint Mary Magdalene de'' Pazzi, Virgin', $desc$
Saint Mary Magdalene de' Pazzi is honored as a Carmelite virgin and mystic whose interior life bore witness to the consuming love of God.

Her spiritual doctrine centers on the transforming power of divine love, experienced by her in states of ecstasy during which she spoke of the Trinity, the Passion, and the Church with an intensity later recorded by the sisters who attended her. Far from being merely extraordinary phenomena, these experiences were understood by the tradition as manifestations of a soul so thoroughly conformed to Christ that ordinary modes of prayer and speech became, at times, insufficient vessels for what she perceived of God's love.

Entering the Carmelite monastery of Santa Maria degli Angeli in Florence as a young woman, Mary Magdalene de' Pazzi lived a hidden religious life marked by long periods of both mystical consolation and profound spiritual trial, her utterances during ecstasy carefully transcribed by her community and later published, securing her lasting reputation among the great mystics of the Counter-Reformation era.

Her feast today commends to the faithful the value of interior prayer and contemplative silence as authentic paths of holiness, reminding a world often suspicious of mysticism that the deepest human vocation is union with God.
$desc$),
('saint-philip-neri-priest', 'Saint Philip Neri, Priest', $desc$
Saint Philip Neri is honored as a priest and founder whose evangelical joy, spiritual friendship, and pastoral creativity led many to Christ.

Philip's theological legacy is above all a witness that holiness and joy are not opposed but mutually confirming, since union with the Risen Christ liberates rather than diminishes the human person. He insisted on humility, simplicity, and cheerfulness as ordinary paths to sanctity, opposing any spirituality of rigid gloom, and placed frequent confession and reception of the Eucharist at the center of Christian life, together with informal gatherings for prayer, music, and instruction that gave his Oratory its distinctive character.

Active in Rome for six decades in the sixteenth century, Philip became known as the "Apostle of Rome" for his tireless pastoral care of the city's youth, the poor, and pilgrims, and for gathering companions who would formalize his method of life into the Congregation of the Oratory, subsequently approved by the Holy See and spread throughout the world.

His feast today encourages a vision of Christian discipleship marked by cheerful humility rather than anxious severity, and it commends particularly the ministries of confession, spiritual friendship, and the patient accompaniment of the young as ordinary yet powerful means of leading souls to Christ.
$desc$),
('saint-augustine-of-canterbury-bishop', 'Saint Augustine of Canterbury, Bishop', $desc$
Saint Augustine of Canterbury is honored as a missionary bishop who helped plant the Gospel anew among the peoples of England in communion with the See of Peter.

His mission embodies the theological principle that the Gospel must be carried by the Church, in the concrete form of sent missionaries bearing apostolic authority, to peoples who have not yet received it, and that the planting of a local church must remain in living communion with the See of Peter. Augustine's success in establishing a stable ecclesial structure in Kent, rather than merely individual conversions, reflects this concern for continuity and communion.

Sent in 596 by Pope Saint Gregory the Great at the head of some forty monks, Augustine landed in Kent in 597, was welcomed by King Ethelbert, whom he baptized along with many of his subjects, and established his episcopal see at Canterbury, from which Christianity subsequently spread through much of England, earning him the title "Apostle of the English."

His feast today recalls the missionary origin of every local church and encourages the faithful to value ecclesial communion with the wider Church, particularly with the Bishop of Rome, as an essential rather than incidental feature of the Gospel's transmission across cultures and centuries.
$desc$),
('saint-paul-vi-pope', 'Saint Paul VI, Pope', $desc$
Saint Paul VI is honored as pope whose patient governance, missionary vision, and moral courage marked a decisive era in the Church's modern life.

His pontificate is theologically significant above all for its fidelity in receiving and applying the Council's teaching, holding together continuity with tradition and genuine renewal, particularly in the reform of the liturgy, the Church's engagement with the modern world, and her missionary self-understanding as articulated in his exhortation on evangelization. His encyclical on the transmission of life, defending the inseparable connection between the unitive and procreative meanings of the conjugal act, proved especially consequential and, at the time, deeply contested.

Elected in 1963 following the death of Saint John XXIII, Paul VI closed the Council in 1965 and spent the following thirteen years guiding its reception, becoming the first pope in centuries to travel widely outside Italy, including to the United Nations, the Holy Land, and several continents, in journeys undertaken as gestures of the Gospel's universal reach. He was canonized by Pope Francis in 2018.

His memorial today invites reflection on the labor of faithfully translating conciliar teaching into the concrete life of the Church, and on the courage required to uphold unpopular but coherent moral teaching amid intense cultural pressure to abandon it.
$desc$),
('the-visitation-of-the-blessed-virgin-mary', 'The Visitation of the Blessed Virgin Mary', $desc$
The Visitation of the Blessed Virgin Mary celebrates Mary's journey to Elizabeth, when the hidden presence of Christ brought joy, prophecy, and praise.

The Gospel of Luke recounts how Mary, having conceived the Word made flesh, went in haste to Elizabeth, who greeted her as "the mother of my Lord" while the child John leapt in her womb, and how Mary responded with the Magnificat, her hymn proclaiming God's mercy and the reversal he works on behalf of the lowly. The feast celebrates Mary as the first bearer of Christ to another, the model of every believer sent to communicate the joy of his presence, and it affirms, through Elizabeth's greeting, the full humanity and divine identity of the child Mary carries from the moment of conception.

The feast originated in the thirteenth century among the Franciscans and was extended to the universal Church in 1389 by Pope Urban VI, who hoped that increased devotion to Mary would hasten the healing of the Western Schism. Its growth in the liturgy reflects the Church's desire to contemplate Mary's charity together with the mystery of Christ already present in her womb.

The feast today invites believers to imitate Mary's haste in bringing Christ to others, and to recognize, as Elizabeth did, the presence of the Lord already active in the humble and hidden circumstances of ordinary encounters, a fitting close to a month spent contemplating Mary's cooperation in the mystery of the Incarnation.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-joseph-the-worker', 'Saint Joseph, travailleur', $desc$
Saint Joseph travailleur contemple le père nourricier du Seigneur dans la dignité du travail, montrant comment l'ouvrage ordinaire peut devenir un lieu de fidélité, de service et de sanctification.

Au centre de cette célébration se trouve la conviction que le travail humain, si modeste soit-il, est associé à l'action créatrice et rédemptrice de Dieu lui-même. En travaillant à l'établi de Nazareth, Joseph a sanctifié le labeur ordinaire et l'a uni au mystère de l'Incarnation, puisque le Verbe lui-même était connu de ses voisins comme « le fils du charpentier ». La fête proclame qu'aucun travail honnête n'est indigne d'un enfant de Dieu, et que la sainteté se cherche dans la fidélité au devoir quotidien plutôt que dans des actions extraordinaires.

Le pape Pie XII institua cette fête en 1955, la fixant explicitement au 1er mai afin d'offrir aux travailleurs chrétiens un pendant surnaturel aux célébrations internationales de ce jour, alors associées à des idéologies séculières et parfois antireligieuses du travail. Elle demeure distincte par son accent et sa tonalité de la célébration de saint Joseph, époux de la Bienheureuse Vierge Marie.

Aujourd'hui, cette fête invite les fidèles à considérer leur travail professionnel et domestique comme une véritable voie vers la sainteté, et à confier à l'intercession de Joseph les chômeurs, les travailleurs exploités et tous ceux qui peinent sans reconnaissance. Elle restaure une vision proprement chrétienne du travail comme vocation et service, tempérant à la fois l'idolâtrie de la productivité et le désespoir d'un labeur sans signification.
$desc$),
('saint-athanasius-bishop-and-doctor-of-the-church', 'Saint Athanase, évêque et docteur de l''Église', $desc$
Saint Athanase est honoré comme évêque et docteur de l'Église dont la défense de la vraie divinité du Fils a sauvegardé la confession du salut dans le Christ.

Athanase fut le grand champion de la foi de Nicée contre l'arianisme, affirmant avec précision théologique que le Fils est consubstantiel au Père, vrai Dieu de vrai Dieu. Sa conviction, exprimée surtout dans son traité Sur l'Incarnation, était que seul un Christ pleinement divin peut réellement diviniser l'humanité par sa mort et sa résurrection ; un Christ diminué laisserait la promesse du salut inaccomplie. Cette conviction demeure le fondement même de la foi chrétienne dans le pouvoir salvateur du Christ.

Exilé cinq fois de son siège pour sa fidélité à Nicée, Athanase devint proverbial pour s'être tenu presque seul contre les courants dominants de son époque, donnant naissance à l'expression « Athanasius contra mundum ». L'Église le reconnut tôt comme docteur, témoignage de l'importance jugée centrale de son témoignage pour l'intégrité de la confession chrétienne de la foi.

Son exemple continue d'instruire les croyants sur le prix de la fidélité doctrinale et la patience nécessaire pour soutenir la vérité contre l'erreur à la mode. En une époque souvent tentée de diluer le mystère du Christ, Athanase rappelle aux fidèles que la précision théologique n'est pas pédanterie mais service de la charité, sauvegardant la possibilité même du salut que l'Église proclame.
$desc$),
('saints-philip-and-james-apostles', 'Saints Philippe et Jacques, apôtres', $desc$
Les saints Philippe et Jacques sont honorés ensemble comme apôtres, témoins du Ressuscité et colonnes de l'Église fondée sur le témoignage apostolique.

La liturgie unit ces deux apôtres parce que leurs reliques reposent ensemble à Rome, dans la basilique dédiée aux Douze Apôtres, et parce que tous deux témoignent de la structure fondatrice de l'Église bâtie sur les Douze. Philippe, qui demanda au Seigneur de « montrer le Père » et reçut la réponse que le voir, lui, c'est voir le Père, et Jacques, traditionnellement identifié au « frère du Seigneur » et premier chef de la communauté de Jérusalem, représentent ensemble la charge apostolique comme service de l'unité et transmission de la vérité révélée.

Cette commémoration conjointe remonte à la dédicace, au VIe siècle, de la basilique romaine des Douze Apôtres, où les restes des deux apôtres furent translatés et déposés.

La fête invite les fidèles à reconnaître en Philippe et Jacques les modèles de ce désir apostolique de voir et de connaître Dieu pleinement. Leur témoignage encourage l'Église à persévérer dans la transmission intacte de la foi reçue des apôtres, fondement sur lequel se bâtit chaque génération suivante de croyants.
$desc$),
('saint-john-of-avila-priest-and-doctor-of-the-church', 'Saint Jean d''Avila, prêtre et docteur de l''Église', $desc$
Saint Jean d'Ávila est honoré comme prêtre et docteur de l'Église, prédicateur et maître spirituel dont les conseils contribuèrent au renouveau du clergé comme des laïcs.

Son héritage théologique s'articule autour de la sainteté du ministre ordonné et de la formation de prêtres capables d'un authentique accompagnement spirituel et d'une prédication véritable. Jean d'Ávila enseignait que le renouveau de l'Église commence par la conversion intérieure et le sérieux doctrinal de ses pasteurs, conviction qui façonna ses écrits sur la vie sacerdotale et sa célèbre correspondance spirituelle, par laquelle il guida de nombreuses âmes, dont de futurs saints, vers une union plus profonde avec Dieu.

Connu comme « l'Apôtre de l'Andalousie » pour sa prédication inlassable à travers le sud de l'Espagne au XVIe siècle, il influença les courants réformateurs qui trouveraient plus tard expression au concile de Trente, notamment concernant les séminaires et la formation du clergé. Le titre de docteur de l'Église, conféré en 2012, reconnut la valeur durable de son enseignement sur le sacerdoce et la sainteté.

Sa mémoire invite aujourd'hui à examiner la qualité de la sollicitude pastorale et de l'accompagnement spirituel offerts au peuple de Dieu. L'insistance de Jean d'Ávila sur le fait que doctrine et charité ne doivent jamais être séparées demeure un correctif opportun là où la prédication risque de devenir soit une érudition aride, soit un sentiment sans substance.
$desc$),
('saints-nereus-and-achilleus-martyrs', 'Saints Nérée et Achillée, martyrs', $desc$
Les saints Nérée et Achillée sont honorés comme martyrs romains de la première époque, dont l'antique témoignage rappelle à l'Église que l'Évangile fut dès l'origine scellé dans le sang.

Leur commémoration souligne la participation du martyr au mystère pascal : par leur mort, ces chrétiens furent configurés à la mort et à la résurrection du Christ, et l'Église a toujours lu le martyre comme le témoignage suprême que la victoire du Christ sur la mort est réelle et communicable à ses disciples.

Une tradition ancienne, reprise dans une épigramme composée par le pape saint Damase Ier au IVe siècle, associe Nérée et Achillée à la garde impériale, convertis à la foi et martyrisés pour avoir refusé de renier le Christ, puis ensevelis dans la catacombe de Domitille sur la Via Ardeatina, où une basilique fut plus tard élevée en leur honneur. Leurs noms figurent dans les livres liturgiques romains depuis l'Antiquité.

Bien que peu de leur histoire subsiste au-delà de cette vénération ancienne, leur commémoration rappelle aux croyants d'aujourd'hui que la fidélité au Christ a toujours exigé, pour certains, le don total de la vie elle-même, et que l'Église chérit chaque témoin, si maigre que soit le récit conservé, qui a scellé l'Évangile de son sang.
$desc$),
('saint-pancras-martyr', 'Saint Pancrace, martyr', $desc$
Saint Pancrace est honoré comme jeune martyr dont le témoignage montre que la grâce peut mener à une fidélité héroïque dès les premières années de la vie.

Sa mémoire tient présent devant l'Église le mystère du martyre porté par les tout jeunes, puisque la tradition ancienne veut que Pancrace ait subi la mort pour la foi encore enfant, âgé de moins de quinze ans. L'Église a toujours vu dans de tels témoins un signe particulièrement frappant que la grâce peut parfaire la nature à tout âge, et que c'est la fidélité au Christ, plutôt que l'expérience accumulée par les années, que l'Évangile demande finalement à chaque disciple.

Enseveli sur la Via Aurelia, où fut plus tard élevée une basilique portant son nom, Pancrace devint l'un des martyrs romains les plus vénérés en Occident, en particulier en Angleterre, où de nombreuses églises lui furent dédiées dès les premiers siècles du christianisme anglo-saxon, dévotion liée à la mission romaine qui évangélisa cette terre.

Sa fête s'adresse aujourd'hui tout particulièrement aux jeunes, tenant devant eux la possibilité d'une fidélité héroïque au Christ, quels que soient l'âge ou la condition sociale. Elle invite toute l'Église à se souvenir que l'appel au don total de soi s'adresse à tout baptisé, et n'est réservé à aucune prétendue maturité spirituelle mesurée aux seules années.
$desc$),
('our-lady-of-fatima', 'Notre-Dame de Fatima', $desc$
Notre-Dame de Fatima rappelle la sollicitude maternelle de la Bienheureuse Vierge Marie telle qu'elle est reçue dans la dévotion liée aux apparitions rapportées à Fatima en 1917.

Théologiquement, cette mémoire s'inscrit dans la vénération plus large que l'Église porte à Marie comme intercesseur qui oriente l'attention vers son Fils et vers la conversion du cœur. Le message associé à Fatima insiste sur la prière, en particulier le chapelet, et sur la pénitence pour les pécheurs, thèmes en pleine continuité avec l'appel évangélique à la conversion et avec le rôle constant de Marie, reconnu par l'Église, de conduire les fidèles à une suite plus profonde et plus urgente du Christ.

La dévotion à Notre-Dame de Fatima s'est répandue rapidement tout au long du XXe siècle, recevant le soutien de papes successifs qui visitèrent le sanctuaire et lièrent le message à la prière de l'Église pour la paix, en particulier durant les tourments des guerres mondiales et de la guerre froide. L'Église poursuit un discernement prudent concernant les révélations privées rapportées, lesquelles n'ajoutent rien au dépôt de la foi mais peuvent en éclairer et encourager la réception vivante.

Célébrer cette mémoire aujourd'hui invite les fidèles à renouveler les pratiques de prière et de pénitence dans la vie chrétienne ordinaire, et à confier à l'intercession de Marie les causes de la paix et de la conversion qui étaient au cœur du message rapporté, toujours en continuité avec la révélation définitive donnée dans le Christ, et lui demeurant subordonnées.
$desc$),
('saint-matthias-apostle', 'Saint Matthias, apôtre', $desc$
Saint Matthias est honoré comme l'apôtre choisi pour compléter le nombre des Douze après la chute de Judas, signe que le ministère apostolique est reçu du Seigneur.

Les Actes des Apôtres rapportent comment, après l'Ascension, la communauté réunie en prière discerna entre deux candidats et tira au sort afin de déterminer celui que le Seigneur avait choisi pour compléter le nombre des Douze après la chute de Judas. Le choix de Matthias met en lumière un point théologique central : l'apostolat n'est pas une réussite humaine mais une élection divine, et l'intégrité des Douze comme témoins de tout le ministre du Christ, depuis le baptême de Jean jusqu'à la Résurrection, était jugée essentielle au fondement de l'Église.

Le Nouveau Testament rapporte peu d'autres détails sur Matthias, et les traditions ultérieures concernant son activité missionnaire et sa mort varient considérablement, sans certitude historique solide. Néanmoins, sa fête occupe depuis l'Antiquité une place stable dans le calendrier romain, valorisée précisément pour ce qu'elle signifie de la structure de l'autorité apostolique plutôt que pour un récit développé de sa vie.

Sa fête rappelle aujourd'hui à l'Église que le ministre en son sein est toujours une réponse à un appel qui précède et dépasse le mérite personnel, et que le discernement de la communauté, uni à la prière, demeure le cadre propre dans lequel de telles vocations sont reconnues et confirmées.
$desc$),
('saint-john-i-pope-and-martyr', 'Saint Jean Ier, pape et martyr', $desc$
Saint Jean Ier est honoré comme pape et martyr, successeur de Pierre dont les souffrances sous la pression politique devinrent un témoignage de fidélité dans la charge reçue.

Sa commémoration met en lumière la vocation particulière de l'évêque de Rome à garder l'unité et l'orthodoxie de la foi, parfois au prix de sa propre liberté et de sa vie. Envoyé malgré lui en mission diplomatique à Constantinople par le roi arien Théodoric, Jean se trouva pris entre les enjeux politiques impériaux et son devoir envers la foi catholique, et sa mort en captivité a été comprise par la tradition comme une forme de témoignage rendu pour la fidélité de l'Église à l'enseignement orthodoxe.

Les sources historiques rapportent que Jean Ier, élu pape en 523, fut contraint de négocier avec l'empereur byzantin en faveur des intérêts ariens en Occident ; à son retour, suspecté de déloyauté, il fut emprisonné à Ravenne, où il mourut peu après. Il fut enseveli à Rome et vénéré rapidement comme martyr, son nom entrant dans les anciens livres liturgiques de la ville.

Sa mémoire invite aujourd'hui à réfléchir au fardeau parfois porté par ceux qui exercent l'autorité dans l'Église au milieu de pressions politiques contradictoires, et à la fidélité due à la vérité de l'Évangile même lorsqu'elle entraîne la souffrance plutôt que le succès mondain.
$desc$),
('saint-bernardine-of-siena-priest', 'Saint Bernardin de Sienne, prêtre', $desc$
Saint Bernardin de Sienne est honoré comme prédicateur franciscain dont l'ardente dévotion au saint Nom de Jésus renouvela la vie chrétienne dans les cités et les foyers.

Au cœur de son enseignement spirituel se trouve la dévotion au Nom de Jésus, que Bernardin promut par le symbole du monogramme « IHS » inscrit dans un soleil rayonnant, affirmant qu'en ce Nom seul sont offerts le salut et la paix auxquels aspirent les cœurs humains. Cette dévotion n'avait jamais pour lui un caractère simplement décoratif : elle exprimait la conviction que toute la vie chrétienne, personnelle et sociale, doit être ordonnée au Christ et réformée selon l'Évangile qu'il proclame.

Prédicateur itinérant infatigable à travers les villes d'Italie, Bernardin s'attaqua non seulement à la conversion individuelle mais aussi aux abus civiques et économiques de son temps, cherchant à réconcilier les factions rivales et à corriger les pratiques commerciales injustes. Offert par deux fois la charge épiscopale, il la déclina pour poursuivre sa mission de prédication, et sa renommée comme l'un des grands prédicateurs populaires de la fin du Moyen Âge lui valut une canonisation rapide et une dévotion durable.

Son exemple encourage aujourd'hui les prédicateurs et toute l'Église à faire confiance à la puissance transformatrice du Nom de Jésus, proclamé avec clarté et zèle, et à voir l'évangélisation authentique comme inséparable du souci de la justice et de la réconciliation au sein de la société.
$desc$),
('saint-christopher-magallanes-priest-and-companions-martyrs', 'Saint Christophe Magallanès, prêtre, et ses compagnons, martyrs', $desc$
Saint Christophe Magallanès et ses compagnons sont honorés comme martyrs dont la fidélité aux sacrements durant la persécution au Mexique manifesta la persévérance courageuse de l'Église.

Leur témoignage proclame que la fidélité à l'Eucharistie et au ministre sacerdotal peut exiger encore, à l'époque moderne comme dans l'Antiquité, le don total de la vie. Christophe Magallanès et ses compagnons furent tués précisément pour avoir continué à célébrer les sacrements et à instruire les fidèles au mépris des lois cherchant à supprimer l'exercice public de la foi catholique, faisant de leur mort une configuration directe à l'offrande du Christ lui-même.

Ces martyrs moururent entre 1915 et 1937, la plupart durant le conflit cristero qui suivit la législation anticléricale du gouvernement mexicain, et furent canonisés ensemble par le pape Jean-Paul II en 2000, comme représentants d'un nombre bien plus grand de personnes ayant souffert de manière semblable durant cette période.

Leur mémoire appelle aujourd'hui les croyants à reconnaître que la liberté religieuse et le droit de rendre culte demeurent, en diverses régions du monde, des causes pour lesquelles des chrétiens souffrent encore, et elle appelle l'Église à la solidarité avec ceux qui subissent actuellement la persécution pour l'Évangile.
$desc$),
('saint-rita-of-cascia-religious', 'Sainte Rita de Cascia, religieuse', $desc$
Sainte Rita de Cascia est honorée comme épouse, mère, veuve et religieuse, sainte dont la vie enseigne la transformation de la souffrance par l'union au Christ.

Le centre théologique de son culte réside dans la configuration de sa souffrance à la Passion du Christ, symbolisée par la tradition d'une blessure semblable à celle de la couronne d'épines, qu'elle aurait reçue en méditant sur la souffrance du Seigneur. Sa vie montre comment des circonstances apparemment ordinaires et douloureuses, un mariage difficile, la perte de ses enfants, vécues dans l'union au Christ, peuvent devenir un véritable chemin de sanctification plutôt qu'un obstacle à celle-ci.

Après la mort de son époux et de ses fils, Rita chercha à entrer au monastère augustin de Cascia, où elle vécut pendant des décennies une vie cachée de prière et de pénitence. La dévotion à son égard grandit régulièrement après sa mort, et elle fut invoquée particulièrement par ceux qui affrontaient des situations dites impossibles ou désespérées, titre désormais inséparable de son nom dans la piété populaire.

Sa fête parle aujourd'hui avec force à ceux qui traversent des mariages difficiles, des deuils familiaux ou des situations apparemment sans issue, tenant devant eux l'exemple d'une femme qui trouva dans la Passion du Christ la force de transformer la souffrance en intercession et en espérance plutôt qu'en désespoir.
$desc$),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', 'Saint Bède le Vénérable, prêtre et docteur de l''Église', $desc$
Saint Bède le Vénérable est honoré comme prêtre et docteur de l'Église, moine dont l'érudition nourrit la lecture de l'Écriture par l'Église et la mémoire de sa propre histoire.

L'importance théologique de Bède repose surtout sur son œuvre d'exégète, qui transmit et synthétisa pour l'Occident latin la tradition patristique du commentaire biblique, joignant toujours une science textuelle rigoureuse au souci de l'édification spirituelle et morale de ses lecteurs. Il comprenait la recherche historique et scientifique, y compris son célèbre travail sur le calcul de la date de Pâques, comme pleinement compatible avec la vie de foi et de culte de l'Église, et même mise à son service.

Passant presque toute sa vie au monastère de Jarrow en Northumbrie, Bède produisit une vaste œuvre de commentaire biblique ainsi que sa célèbre Histoire ecclésiastique du peuple anglais, source principale de l'histoire ancienne du christianisme en Angleterre, ce qui lui valut de son vivant déjà l'épithète de « Vénérable » pour son savoir et sa sainteté.

Son exemple recommande aujourd'hui la vocation de l'étude chrétienne exercée dans l'humilité et la stabilité, rappelant à l'Église que l'étude patiente de l'Écriture et l'attention rigoureuse à sa propre histoire demeurent de véritables formes de service à la foi, et non des distractions par rapport à la vie contemplative et pastorale.
$desc$),
('saint-gregory-vii-pope', 'Saint Grégoire VII, pape', $desc$
Saint Grégoire VII est honoré comme pape pour avoir défendu la liberté de l'Église et poursuivi la réforme avec une persévérance coûteuse.

Au cœur de la réforme grégorienne se trouve la conviction que la sainteté et la mission de l'Église exigent la liberté à l'égard d'un contrôle séculier indû, exprimée concrètement par l'opposition à la simonie, achat et vente des charges ecclésiastiques, à l'incontinence du clergé, et à l'investiture laïque, pratique par laquelle les souverains séculiers nommaient évêques et abbés. Grégoire comprenait ces luttes comme inséparables de la fidélité à l'Évangile lui-même, estimant qu'une Église prise dans les rets du pouvoir mondain ne pourrait proclamer le Christ de manière crédible.

Son pontificat, débuté en 1073, l'opposa directement à l'empereur Henri IV sur le droit d'investir les évêques, lutte qui comprit la pénitence spectaculaire de Henri à Canossa en 1077, mais qui s'acheva néanmoins par des conflits persistants et l'exil de Grégoire hors de Rome. Il mourut à Salerne en 1085, ayant, dit-on, déclaré : « J'ai aimé la justice et haï l'iniquité, c'est pourquoi je meurs en exil », paroles qui façonnèrent par la suite sa réputation de pape ayant souffert pour la réforme.

Sa mémoire invite aujourd'hui à réfléchir sur la nécessité durable que la vie institutionnelle de l'Église demeure subordonnée à sa mission spirituelle, et sur le courage requis de ceux qui œuvrent à la réforme, même lorsqu'elle entraîne un coût personnel et une controverse persistante.
$desc$),
('saint-mary-magdalene-de-pazzi-virgin', 'Sainte Marie-Madeleine de Pazzi, vierge', $desc$
Sainte Marie-Madeleine de Pazzi est honorée comme vierge carmélite et mystique dont la vie intérieure rendit témoignage à l'amour dévorant de Dieu.

Sa doctrine spirituelle se centre sur la puissance transformatrice de l'amour divin, éprouvée par elle en des états d'extase durant lesquels elle parlait de la Trinité, de la Passion et de l'Église avec une intensité que consignèrent plus tard les sœurs qui l'assistaient. Loin d'être de simples phénomènes extraordinaires, ces expériences furent comprises par la tradition comme les manifestations d'une âme si pleinement conforme au Christ que les modes ordinaires de la prière et de la parole devenaient parfois des vases insuffisants pour ce qu'elle percevait de l'amour de Dieu.

Entrée jeune au monastère carmélite de Santa Maria degli Angeli à Florence, Marie-Madeleine de' Pazzi mena une vie religieuse cachée, marquée par de longues périodes tant de consolations mystiques que de profondes épreuves spirituelles, ses paroles durant l'extase étant soigneusement transcrites par sa communauté puis publiées, ce qui lui assura une réputation durable parmi les grands mystiques de l'époque de la Contre-Réforme.

Sa fête recommande aujourd'hui aux fidèles la valeur de la prière intérieure et du silence contemplatif comme voies authentiques de sainteté, rappelant à un monde souvent méfiant envers le mysticisme que la vocation humaine la plus profonde est l'union à Dieu.
$desc$),
('saint-philip-neri-priest', 'Saint Philippe Néri, prêtre', $desc$
Saint Philippe Néri est honoré comme prêtre et fondateur dont la joie évangélique, l'amitié spirituelle et la créativité pastorale conduisirent beaucoup d'âmes au Christ.

L'héritage théologique de Philippe est avant tout le témoignage que sainteté et joie ne s'opposent pas mais se confirment mutuellement, puisque l'union au Christ ressuscité libère la personne humaine au lieu de la diminuer. Il insistait sur l'humilité, la simplicité et la gaieté comme voies ordinaires vers la sainteté, s'opposant à toute spiritualité de morosité rigide, et plaçait la confession fréquente et la réception de l'Eucharistie au centre de la vie chrétienne, avec des rassemblements informels de prière, de musique et d'instruction qui donnèrent à son Oratoire son caractère distinctif.

Actif à Rome durant six décennies au XVIe siècle, Philippe fut appelé « l'Apôtre de Rome » pour son soin pastoral infatigable des jeunes de la ville, des pauvres et des pèlerins, et pour avoir rassemblé des compagnons qui formaliseraient son mode de vie en la Congrégation de l'Oratoire, approuvée ensuite par le Saint-Siège et répandue à travers le monde.

Sa fête encourage aujourd'hui une vision du disciple chrétien marquée par une humilité joyeuse plutôt que par une sévérité anxieuse, et recommande particulièrement les ministres de la confession, de l'amitié spirituelle et de l'accompagnement patient des jeunes comme des moyens ordinaires mais puissants de conduire les âmes au Christ.
$desc$),
('saint-augustine-of-canterbury-bishop', 'Saint Augustin de Cantorbéry, évêque', $desc$
Saint Augustin de Cantorbéry est honoré comme évêque missionnaire qui contribua à implanter de nouveau l'Évangile parmi les peuples d'Angleterre en communion avec le Siège de Pierre.

Sa mission incarne le principe théologique selon lequel l'Évangile doit être porté par l'Église, sous la forme concrète de missionnaires envoyés porteurs de l'autorité apostolique, aux peuples qui ne l'ont pas encore reçu, et selon lequel l'implantation d'une Église locale doit demeurer en communion vivante avec le Siège de Pierre. Le succès d'Augustin dans l'établissement d'une structure ecclésiale stable dans le Kent, plutôt que de simples conversions individuelles, reflète ce souci de continuité et de communion.

Envoyé en 596 par le pape saint Grégoire le Grand à la tête d'une quarantaine de moines, Augustin débarqua dans le Kent en 597, fut accueilli par le roi Ethelbert, qu'il baptisa avec un grand nombre de ses sujets, et établit son siège épiscopal à Cantorbéry, d'où le christianisme se répandit ensuite dans une grande partie de l'Angleterre, lui valant le titre d'« Apôtre des Anglais ».

Sa fête rappelle aujourd'hui l'origine missionnaire de toute Église locale et encourage les fidèles à valoriser la communion ecclésiale avec l'Église universelle, particulièrement avec l'évêque de Rome, comme un trait essentiel, et non accessoire, de la transmission de l'Évangile à travers les cultures et les siècles.
$desc$),
('saint-paul-vi-pope', 'Saint Paul VI, pape', $desc$
Saint Paul VI est honoré comme pape dont le gouvernement patient, la vision missionnaire et le courage moral marquèrent une époque décisive de la vie moderne de l'Église.

Son pontificat revêt une importance théologique majeure avant tout par sa fidélité à recevoir et à appliquer l'enseignement conciliaire, tenant ensemble continuité avec la tradition et renouveau authentique, en particulier dans la réforme de la liturgie, l'engagement de l'Église avec le monde moderne, et sa conscience missionnaire propre telle qu'exprimée dans son exhortation sur l'évangélisation. Son encyclique sur la transmission de la vie, défendant le lien inséparable entre les significations unitive et procréatrice de l'acte conjugal, se révéla particulièrement lourde de conséquences et, à l'époque, profondément contestée.

Élu en 1963 après la mort de saint Jean XXIII, Paul VI clôtura le Concile en 1965 et consacra les treize années suivantes à guider sa réception, devenant le premier pape en plusieurs siècles à voyager largement hors d'Italie, notamment aux Nations unies, en Terre sainte et sur plusieurs continents, voyages entrepris comme des gestes de la portée universelle de l'Évangile. Il fut canonisé par le pape François en 2018.

Sa mémoire invite aujourd'hui à réfléchir sur le travail consistant à traduire fidèlement l'enseignement conciliaire dans la vie concrète de l'Église, et sur le courage requis pour maintenir un enseignement moral impopulaire mais cohérent face à d'intenses pressions culturelles à l'abandonner.
$desc$),
('the-visitation-of-the-blessed-virgin-mary', 'Visitation de la Bienheureuse Vierge Marie', $desc$
La Visitation de la Bienheureuse Vierge Marie célèbre la visite de Marie à Élisabeth, quand la présence cachée du Christ fit naître joie, prophétie et louange.

L'Évangile de Luc rapporte comment Marie, ayant conçu le Verbe fait chair, se hâta d'aller chez Élisabeth, qui la salua comme « la mère de mon Seigneur » tandis que l'enfant Jean tressaillait dans son sein, et comment Marie répondit par le Magnificat, son cantique proclamant la miséricorde de Dieu et le renversement qu'il opère en faveur des humbles. La fête célèbre Marie comme première porteuse du Christ à autrui, modèle de tout croyant envoyé pour communiquer la joie de sa présence, et elle affirme, à travers la salutation d'Élisabeth, la pleine humanité et l'identité divine de l'enfant que Marie porte dès l'instant de sa conception.

La fête naquit au XIIIe siècle chez les franciscains et fut étendue à l'Église universelle en 1389 par le pape Urbain VI, qui espérait qu'une dévotion accrue envers Marie hâterait la guérison du grand schisme d'Occident. Son développement liturgique manifeste le désir de l'Église de contempler la charité de Marie avec le mystère du Christ déjà présent en son sein.

La fête invite aujourd'hui les croyants à imiter la hâte de Marie à porter le Christ aux autres, et à reconnaître, comme le fit Élisabeth, la présence du Seigneur déjà à l'œuvre dans les circonstances humbles et cachées des rencontres ordinaires, achèvement approprié d'un mois passé à contempler la coopération de Marie au mystère de l'Incarnation.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-joseph-the-worker', 'Sanctus Ioseph Opifex', $desc$
Sanctus Ioseph Opifex Iosephum, Domini nutritium, in dignitate laboris contemplatur, ostendens quomodo opus ordinarium locus fidelitatis, servitii et sanctificationis fieri possit.

In huius celebrationis corde inest persuasio laborem humanum, quantumvis humilem, ipsi Dei operi creatrici et redemptrici consociari. Laborando in officina Nazarethana, Ioseph opus commune sanctificavit illudque mysterio Incarnationis coniunxit, cum ipse Verbum a vicinis suis "filius fabri" cognosceretur. Festum proclamat nullum honestum laborem indignum esse filio Dei, et sanctitatem in fidelitate quotidiano officio potius quam in factis extraordinariis quaerendam esse.

Pius Papa XII hoc festum anno 1955 instituit, illud consulto die prima Maii statuens ut operariis christianis responsum supernaturale celebrationibus internationalibus illius diei offerret, quae ideologiis saecularibus et interdum antireligiosis laboris sociatae erant. A celebratione sancti Ioseph, Sponsi Beatae Mariae Virginis, argumento atque indole distinguitur.

Hodie festum fideles invitat ut laborem suum, sive professionalem sive domesticum, veram sanctitatis viam existiment, et intercessioni Ioseph committant eos qui opere carent, eos qui iniuste exploitantur, et omnes qui sine agnitione laborant. Visionem proprie christianam laboris, ut vocationis et servitii, restituit, temperans tam idolatriam productivitatis quam desperationem laboris sine sensu.
$desc$),
('saint-athanasius-bishop-and-doctor-of-the-church', 'Sanctus Athanasius, Episcopus et Ecclesiae Doctor', $desc$
Sanctus Athanasius honoratur ut episcopus et Ecclesiae doctor, cuius defensio verae divinitatis Filii confessionem Ecclesiae de salute in Christo tutata est.

Athanasius magnus fidei Nicaenae propugnator contra arianismum exstitit, praecisione theologica affirmans Filium Patri consubstantialem esse, verum Deum de vero Deo. Eius persuasio, praesertim in tractatu De Incarnatione expressa, erat solum si Christus plene divinus sit, veraciter humanitatem morte et resurrectione sua deificare posse; Christus deminutus promissionem salutis impletam non relinqueret. Haec persuasio ipsum fundamentum fidei christianae de vi salvifica Christi manet.

Quinquies a sede sua propter fidelitatem Nicaeae exsulatus, Athanasius proverbialis factus est ob id quod fere solus contra fluctus sui temporis dominantes stetit, unde dictum "Athanasius contra mundum" ortum est. Ecclesia eum mature ut Doctorem agnovit, testimonium quam centrale eius testimonium pro integritate confessionis christianae fidei iudicatum sit.

Eius exemplum fideles hodie de pretio fidelitatis doctrinalis et de patientia ad veritatem contra errorem vulgatum sustinendam necessaria instruere pergit. Aetate saepe tentata ut mysterium Christi diluat, Athanasius fideles admonet praecisionem theologicam non esse pedantiam sed caritatis servitium, ipsam salutis possibilitatem quam Ecclesia proclamat custodiens.
$desc$),
('saints-philip-and-james-apostles', 'Sancti Philippus et Iacobus, Apostoli', $desc$
Sancti Philippus et Iacobus simul honorantur ut apostoli, testes Domini resuscitati et columnae Ecclesiae super apostolicum testimonium fundatae.

Liturgia hos duos apostolos coniungit quia reliquiae eorum simul Romae, in basilica Duodecim Apostolis dicata, quiescunt, et quia uterque de structura fundamentali Ecclesiae super Duodecim aedificatae testatur. Philippus, qui Dominum rogavit ut "Patrem ostenderet" responsumque accepit se ipsum videre Patrem videre esse, et Iacobus, traditione "frater Domini" et primus communitatis Hierosolymitanae praeses habitus, simul officium apostolicum tamquam servitium unitatis et transmissionis veritatis revelatae repraesentant.

Commemoratio coniuncta ad dedicationem saeculi sexti basilicae Romanae Duodecim Apostolorum refertur, quo reliquiae utriusque translatae et depositae sunt.

Festum fideles invitat ut in Philippo et Iacobo exempla illius desiderii apostolici Deum plene videndi et cognoscendi agnoscant. Eorum testimonium Ecclesiam hortatur ut in fide ab apostolis accepta integra tradenda perseveret, fundamento cui omnis subsequens generatio credentium superaedificatur.
$desc$),
('saint-john-of-avila-priest-and-doctor-of-the-church', 'Sanctus Ioannes de Avila, Presbyter et Ecclesiae Doctor', $desc$
Sanctus Ioannes de Avila honoratur ut presbyter et Ecclesiae doctor, praedicator atque magister spiritualis, cuius consilia renovationi cleri et laicorum profuerunt.

Eius hereditas theologica circa sanctitatem ministerii ordinati et formationem sacerdotum ad veram directionem spiritualem et praedicationem aptorum versatur. Ioannes de Avila docebat renovationem Ecclesiae a conversione interiore et seriis doctrinalibus pastorum eius incipere, persuasio quae scripta eius de vita sacerdotali et celebrem correspondentiam spiritualem formavit, per quam multas animas, inter quas futuros sanctos, ad altiorem cum Deo unionem duxit.

"Apostolus Andalusiae" appellatus ob praedicationem indefessam per Hispaniam meridionalem saeculo XVI, motus reformatorios influxit qui postea in Concilio Tridentino expressionem invenerunt, praesertim de seminariis et formatione clericali. Titulus Ecclesiae Doctoris, anno 2012 collatus, perennem doctrinae eius de sacerdotio et sanctitate valorem agnovit.

Memoria eius hodie invitat ad examinandam qualitatem curae pastoralis et accompaniamenti spiritualis populo Dei oblati. Insistentia Ioannis de Avila doctrinam et caritatem numquam separandas esse remedium opportunum manet ubicumque praedicatio periculum subit vel eruditionis aridae vel sensus sine substantia.
$desc$),
('saints-nereus-and-achilleus-martyrs', 'Sancti Nereus et Achilleus, Martyres', $desc$
Sancti Nereus et Achilleus honorantur ut martyres Romani primaevae Ecclesiae, quorum antiquum testimonium Ecclesiam monet Evangelium ab initio sanguine obsignatum esse.

Eorum commemoratio participationem martyris in mysterio paschali extollit: per mortem suam hi christiani morti et resurrectioni Christi configurati sunt, et Ecclesia semper martyrium legit ut supremum testimonium victoriam Christi de morte realem esse et discipulis eius communicabilem.

Traditio antiqua, in epigrammate a sancto Damaso Papa I saeculo quarto composito repetita, Nereum et Achilleum cum custodia imperiali consociat, ad fidem conversos et martyrio affectos quia Christum renuntiare recusaverunt, in catacumba Domitillae ad Viam Ardeatinam sepultos, ubi postea basilica in eorum honorem exstructa est. Nomina eorum in libris liturgicis Romanis ab antiquitate permanserunt.

Quamvis pauca de historia eorum praeter hanc venerationem antiquam supersint, eorum commemoratio credentes hodiernos admonet fidelitatem Christo praestitam nonnullis totale vitae donum semper postulasse, et Ecclesiam quemlibet testem, quantumvis exiguum sit narratum, qui Evangelium sanguine obsignavit, pretiosum habere.
$desc$),
('saint-pancras-martyr', 'Sanctus Pancratius, Martyr', $desc$
Sanctus Pancratius honoratur ut iuvenis martyr, cuius testimonium ostendit gratiam etiam in prima aetate ad heroicam fidelitatem perducere posse.

Memoria eius mysterium martyrii ab adulescentibus toleratum ante Ecclesiam servat, cum traditio antiqua teneat Pancratium mortem pro fide passum esse dum puer adhuc erat, nondum quindecim annos natus. Ecclesia semper in talibus testibus signum praecipue insigne vidit gratiam naturam qualibet aetate perficere posse, et fidelitatem Christo, potius quam annorum experientiam, id esse quod Evangelium tandem ab omni discipulo postulat.

Sepultus in Via Aurelia, ubi postea basilica nomen eius ferens exstructa est, Pancratius unus ex martyribus Romanis in Occidente maxime veneratis factus est, praesertim in Anglia, ubi numerosae ecclesiae eius nomini ab antiquissimis saeculis christianitatis Anglosaxonicae dicatae sunt, devotio missioni Romanae quae illam terram evangelizavit consociata.

Festum eius hodie praesertim iuvenibus loquitur, possibilitatem fidelitatis heroicae Christo, aetate vel condicione mundana non obstante, ante eos tenens. Totam Ecclesiam invitat ut meminerit vocationem ad totale sui donum omni baptizato dirigi, nec ulli praesumptae maturitati spirituali annis tantum mensuratae reservari.
$desc$),
('our-lady-of-fatima', 'Beata Maria Virgo Fatimensis', $desc$
Beata Maria Virgo Fatimensis maternām sollicitudinem Beatae Virginis Mariae recollectit, prout in devotione cum apparitionibus anno 1917 Fatimae relatis coniuncta accipitur.

Theologice, memoria haec in latiore veneratione quam Ecclesia Mariae tribuit, ut intercessori qui attentionem ad Filium suum et ad cordis conversionem dirigit, se collocat. Nuntius Fatimae associatus orationem, praesertim Rosarium, et paenitentiam pro peccatoribus insistit, argumenta plene continua cum vocatione evangelica ad conversionem et cum munere Mariae constanti, ab Ecclesia agnito, fideles ad profundiorem et urgentiorem Christi sequelam ducendi.

Devotio erga Beatam Mariam Virginem a Fatima saeculo vicesimo celere crevit, sustentationem a papis successivis accipiens qui sanctuarium visitaverunt et nuntium orationi Ecclesiae pro pace coniunxerunt, praesertim durante turbationibus bellorum mundialium et belli frigidi. Ecclesia prudentem discernimentum de revelationibus privatis relatis exercere pergit, quae depositum fidei non augent sed vivam eius receptionem illuminare et fovere possunt.

Hanc memoriam hodie celebrare fideles invitat ut exercitia orationis et paenitentiae in vita christiana ordinaria renovent, et intercessioni Mariae causas pacis et conversionis, quae in corde nuntii relati erant, committant, semper in continuitate cum revelatione definitiva in Christo data, eique subordinatas.
$desc$),
('saint-matthias-apostle', 'Sanctus Matthias, Apostolus', $desc$
Sanctus Matthias honoratur ut apostolus electus ad numerum Duodecim post lapsum Iudae complendum, signum ministerium apostolicum a Domino recipi.

Actus Apostolorum narrant quomodo, post Ascensionem, communitas in oratione congregata, inter duos candidatos discernens, sortem misit ut determinaret quem Dominus elegisset ad numerum Duodecim post lapsum Iudae complendum. Electio Matthiae punctum theologicum centrale illustrat: apostolatum non esse humanum meritum sed divinam electionem, et integritatem Duodecim, ut testium totius ministerii Christi, a baptismo Ioannis usque ad Resurrectionem, fundamento Ecclesiae essentialem iudicatam esse.

Pauca alia de Matthia in Novo Testamento narrantur, et traditiones posteriores de eius actione missionaria et morte valde variant, nulla certitudine historica firma praedita. Nihilominus festum eius ab antiquitate locum stabilem in calendario Romano tenuit, propter id quod de structura auctoritatis apostolicae significat potius quam propter narrationem vitae eius evolutam aestimatum.

Festum eius hodie Ecclesiam admonet ministerium in se semper responsum esse vocationi quae meritum personale antecedit et excedit, et discernimentum communitatis, orationi coniunctum, contextum proprium manere in quo tales vocationes agnoscuntur et confirmantur.
$desc$),
('saint-john-i-pope-and-martyr', 'Sanctus Ioannes I, Papa et Martyr', $desc$
Sanctus Ioannes I honoratur ut papa et martyr, successor Petri cuius passio sub pressura politica testimonium fidelitatis in munere suscepto facta est.

Commemoratio eius vocationem peculiarem Episcopi Romani, unitatem et orthodoxiam fidei custodiendi, interdum libertatis et vitae suae pretio, illustrat. A rege Ariano Theodorico invitus ad legationem Constantinopolitanam missus, Ioannes se inter politicam imperialem et officium erga fidem catholicam medium invenit, et mors eius in captivitate a traditione intellecta est ut forma testimonii pro fidelitate Ecclesiae doctrinae orthodoxae praestita.

Fontes historici narrant Ioannem I, anno 523 papam electum, coactum fuisse cum imperatore Byzantino pro interesse Arianorum in Occidente agere; reversus, infidelitatis suspectus, Ravennae carceri mancipatus est, ubi paulo post mortuus est. Romae sepultus, mox ut martyr veneratus est, nomine eius in antiquos libros liturgicos urbis ingresso.

Memoria eius hodie ad meditandum invitat de oneribus quae interdum ferunt qui auctoritatem in Ecclesia inter pressiones politicas contrarias exercent, et de fidelitate veritati Evangelii debita etiam cum passionem potius quam successum mundanum affert.
$desc$),
('saint-bernardine-of-siena-priest', 'Sanctus Bernardinus Senensis, Presbyter', $desc$
Sanctus Bernardinus Senensis honoratur ut praedicator Franciscanus cuius ardens devotio erga sanctissimum Nomen Iesu vitam christianam in urbibus et familiis renovavit.

In corde doctrinae spiritualis eius devotio erga Nomen Iesu invenitur, quam Bernardinus per symbolum monogrammatis "IHS" in sole radiante inscripti promovit, affirmans in hoc solo Nomine salutem et pacem offerri quas corda humana desiderant. Haec devotio numquam apud eum mere ornamentalis erat: exprimebat persuasionem totam vitam christianam, personalem et socialem, Christo ordinandam esse et secundum Evangelium ab eo proclamatum reformandam.

Praedicator itinerans indefessus per urbes Italiae, Bernardinus non solum conversionem individualem sed etiam abusus civiles et oeconomicos sui temporis aggressus est, factiones adversas reconciliare et praxes commerciales iniustas corrigere conatus. Bis munus episcopale oblatum recusavit ut missionem praedicationis prosequeretur, et fama eius unius ex magnis praedicatoribus popularibus finis Medii Aevi canonizationem celerem et devotionem perpetuam ei paravit.

Exemplum eius hodie praedicatores totamque Ecclesiam hortatur ut virtuti transformatrici Nominis Iesu, claritate et zelo proclamati, confidant, et evangelizationem authenticam a cura iustitiae et reconciliationis in societate inseparabilem esse videant.
$desc$),
('saint-christopher-magallanes-priest-and-companions-martyrs', 'Sanctus Christophorus Magallanes, Presbyter, et Socii, Martyres', $desc$
Sanctus Christophorus Magallanes eiusque socii honorantur ut martyres quorum fidelitas sacramentis inter persecutionem in Mexico constantem Ecclesiae fortitudinem manifestavit.

Eorum testimonium proclamat fidelitatem Eucharistiae et ministerio sacerdotali etiam aetate moderna, non minus quam in antiquitate, totale vitae donum postulare posse. Christophorus Magallanes et socii eius occisi sunt praecise quia sacramenta celebrare et fideles instruere pergebant, legibus exercitium publicum fidei catholicae supprimere quaerentibus non obstantibus, mortem eorum directam configurationem oblationi Christi ipsius reddentes.

Hi martyres inter annos 1915 et 1937 mortui sunt, plerique durante conflictu Cristero qui legislationem anticlericalem gubernii Mexicani secutus est, et a Ioanne Paulo Papa II anno 2000 simul canonizati sunt ut repraesentativi numeri multo maioris eorum qui similiter illo tempore passi sunt.

Memoria eorum credentes hodie vocat ut agnoscant libertatem religiosam et ius cultum reddendi in variis mundi partibus adhuc causas esse pro quibus christiani patiuntur, et Ecclesiam ad solidarietatem cum iis qui nunc persecutionem propter Evangelium sustinent convocat.
$desc$),
('saint-rita-of-cascia-religious', 'Sancta Rita de Cascia, Religiosa', $desc$
Sancta Rita de Cascia honoratur ut uxor, mater, vidua et religiosa, sancta cuius vita docet dolorem per unionem cum Christo transformari.

Centrum theologicum cultus eius in configuratione passionis suae Passioni Christi invenitur, symbolo traditionis vulneris coronae spineae simile significata, quod meditans de dolore Domini accepisse traditur. Vita eius ostendit quomodo circumstantiae apparenter ordinariae et dolorosae, matrimonium difficile, filiorum amissio, in unione cum Christo toleratae, verum sanctificationis iter fieri possint potius quam obstaculum eius.

Post mortem mariti et filiorum, Rita in monasterium Augustinianum Cascianum admitti quaesivit, ubi per decennia vitam absconditam orationis et paenitentiae egit. Devotio erga eam post mortem constanter crevit, et invocata est praesertim ab iis qui condiciones impossibiles vel desperatas dictas affrontabant, titulus iam a nomine eius in pietate populari inseparabilis.

Festum eius hodie fortiter loquitur iis qui matrimonia difficilia, luctus familiares, vel condiciones apparenter sine exitu patiuntur, exemplum mulieris ante eos tenens quae in Passione Christi vim invenit dolorem in intercessionem et spem potius quam in desperationem transformandi.
$desc$),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', 'Sanctus Beda Venerabilis, Presbyter et Ecclesiae Doctor', $desc$
Sanctus Beda Venerabilis honoratur ut presbyter et Ecclesiae doctor, monachus cuius eruditio lectionem Scripturae et memoriam historiae Ecclesiae aluit.

Momentum theologicum Bedae praesertim in opere eius exegetico consistit, qui traditionem patristicam commentarii biblici Occidenti Latino transmisit et synthetice composuit, scientiam textualem diligentem semper cum cura aedificationis spiritualis et moralis lectorum suorum coniungens. Investigationem historicam et scientificam, inclusa opere celebri de computo Paschatis, plene compatibilem cum vita fidei et cultus Ecclesiae, immo eius servitio destinatam, intellexit.

Fere totam vitam in monasterio Girvensi in Northumbria degens, Beda vastam commentariorum biblicorum molem simul cum celebri Historia Ecclesiastica Gentis Anglorum produxit, fonte principali historiae primaevae christianitatis in Anglia, quod ei iam vivente epithetum "Venerabilis" propter doctrinam et sanctitatem meruit.

Exemplum eius hodie vocationem studii christiani in humilitate et stabilitate exercitam commendat, Ecclesiam admonens studium patiens Scripturae et attentionem diligentem historiae suae veras formas servitii fidei manere, non distractiones a vita contemplativa et pastorali.
$desc$),
('saint-gregory-vii-pope', 'Sanctus Gregorius VII, Papa', $desc$
Sanctus Gregorius VII honoratur ut papa pro libertate Ecclesiae defensa atque reformatione magno pretio prosecuta.

In corde Reformationis Gregorianae persuasio invenitur sanctitatem et missionem Ecclesiae libertate a moderamine saeculari indebito indigere, concrete expressa oppositione simoniae, emptioni et venditioni officiorum ecclesiasticorum, incontinentiae clericali, et investiturae laicali, praxi qua principes saeculares episcopos et abbates constituebant. Gregorius has contentiones a fidelitate ipsi Evangelio inseparabiles intellexit, credens Ecclesiam potestati mundanae implicatam Christum credibiliter proclamare non posse.

Pontificatus eius, anno 1073 inceptus, eum cum Henrico Imperatore IV de iure episcopos investiendi in directam contentionem adduxit, certamen quod paenitentiam spectaculosam Henrici Canusiae anno 1077 comprehendit, sed contentionibus persistentibus et exsilio ipsius Gregorii a Roma tandem finitum est. Salerni anno 1085 mortuus est, verba, ut fertur, proferens: "Dilexi iustitiam et odivi iniquitatem, propterea morior in exsilio," quae postea famam eius papae pro reformatione passi formaverunt.

Memoria eius hodie ad meditandum invitat de necessitate perpetua qua vita institutionalis Ecclesiae missioni eius spirituali subordinata maneat, et de fortitudine requisita ab iis qui pro reformatione laborant, etiam cum pretium personale et controversiam perpetuam affert.
$desc$),
('saint-mary-magdalene-de-pazzi-virgin', 'Sancta Maria Magdalena de Pazzi, Virgo', $desc$
Sancta Maria Magdalena de Pazzi honoratur ut virgo Carmelitana et mystica, cuius vita interior amori Dei consumenti testimonium perhibuit.

Doctrina spiritualis eius circa vim transformatricem amoris divini versatur, ab ea in statibus exstaticis experta, durante quibus de Trinitate, de Passione et de Ecclesia intensitate loquebatur quam postea sorores eam assistentes consignaverunt. Longe a phaenomenis mere extraordinariis, hae experientiae a traditione intellectae sunt ut manifestationes animae tam plene Christo conformatae ut modi ordinarii orationis et loquelae interdum vasa insufficientia fierent pro eo quod de amore Dei percipiebat.

Iuvenis monasterium Carmelitanum Sanctae Mariae Angelorum Florentiae ingressa, Maria Magdalena de Pazzi vitam religiosam absconditam egit, longis temporibus tam consolationum mysticarum quam probationum spiritualium profundarum notatam, verbis eius durante extasi a communitate diligenter transcriptis et postea editis, quod famam eius perpetuam inter magnos mysticos aetatis Contrareformationis firmavit.

Festum eius hodie fidelibus valorem orationis interioris et silentii contemplativi ut vias authenticas sanctitatis commendat, mundum de mysticismo saepe suspiciosum admonens vocationem humanam profundissimam esse unionem cum Deo.
$desc$),
('saint-philip-neri-priest', 'Sanctus Philippus Neri, Presbyter', $desc$
Sanctus Philippus Neri honoratur ut presbyter et conditor, cuius gaudium evangelicum, amicitia spiritualis et sollertia pastoralis multos ad Christum perduxerunt.

Hereditas theologica Philippi imprimis testimonium est sanctitatem et gaudium non opponi sed mutuo confirmari, cum unio cum Christo resurgente personam humanam liberet potius quam minuat. Humilitatem, simplicitatem et hilaritatem ut vias ordinarias ad sanctitatem urgebat, cuilibet spiritualitati tristitiae rigidae adversatus, et confessionem frequentem receptionemque Eucharistiae in centro vitae christianae collocabat, cum conventibus informalibus orationis, musicae et instructionis qui Oratorio eius characterem proprium dederunt.

Romae per sex decennia saeculo sextodecimo actuosus, Philippus "Apostolus Romae" nuncupatus est ob curam pastoralem indefessam iuvenum urbis, pauperum et peregrinorum, et ob socios collectos qui modum vitae eius in Congregationem Oratorii formaliter redigerent, postea a Sancta Sede approbatam et per orbem diffusam.

Festum eius hodie visionem discipulatus christiani humilitate hilari potius quam severitate anxia notatam hortatur, et praesertim ministeria confessionis, amicitiae spiritualis et accompaniamenti patientis iuvenum commendat, ut media ordinaria quidem sed potentia ad animas Christo ducendas.
$desc$),
('saint-augustine-of-canterbury-bishop', 'Sanctus Augustinus Cantuariensis, Episcopus', $desc$
Sanctus Augustinus Cantuariensis honoratur ut episcopus missionarius qui Evangelium inter Angliae populos in communione cum Sede Petri denuo plantare adiuvit.

Missio eius principium theologicum incorporat Evangelium ab Ecclesia, forma concreta missionariorum missorum auctoritatem apostolicam ferentium, ad populos qui id nondum receperunt, ferendum esse, et plantationem Ecclesiae localis in communione viva cum Sede Petri manere debere. Successus Augustini in structura ecclesiali stabili in Cantio constituenda, potius quam in solis conversionibus individualibus, hanc curam continuitatis et communionis reflectit.

Anno 596 a sancto Gregorio Papa Magno missus, quadraginta fere monachis dux, Augustinus anno 597 in Cantio appulit, a rege Ethelberto exceptus, quem cum multis subditis suis baptizavit, et sedem episcopalem Cantuariae constituit, unde christianitas postea per magnam Angliae partem diffusa est, titulum "Apostoli Anglorum" ei conferens.

Festum eius hodie originem missionariam omnis Ecclesiae localis recolit et fideles hortatur ut communionem ecclesialem cum Ecclesia universali, praesertim cum Episcopo Romano, ut notam essentialem, non accidentalem, transmissionis Evangelii per culturas et saecula aestiment.
$desc$),
('saint-paul-vi-pope', 'Sanctus Paulus VI, Papa', $desc$
Sanctus Paulus VI honoratur ut papa cuius patiente gubernatione, visione missionaria et fortitudine morali aetas gravis vitae modernae Ecclesiae signata est.

Pontificatus eius momentum theologicum praesertim ex fidelitate in doctrina conciliari recipienda et applicanda habet, continuitatem cum traditione et renovationem authenticam simul tenens, praesertim in reformatione liturgiae, in Ecclesiae cum mundo moderno colloquio, et in conscientia missionaria propria, ut in exhortatione sua de evangelizatione exposita. Encyclica eius de vita transmittenda, nexum inseparabilem inter significationes unitivam et procreativam actus coniugalis defendens, singularis momenti et suo tempore vehementer controversa exstitit.

Anno 1963 post mortem sancti Ioannis XXIII electus, Paulus VI Concilium anno 1965 clausit et tredecim annos sequentes receptioni eius dirigendae dedicavit, primus papa post saecula multa qui extra Italiam late peregrinatus est, ad Nationes Unitas, Terram Sanctam et plures continentes, itineribus tamquam gestibus amplitudinis universalis Evangelii susceptis. A Francisco Papa anno 2018 canonizatus est.

Memoria eius hodie ad meditandum invitat de labore doctrinam conciliarem in vitam concretam Ecclesiae fideliter transferendi, et de fortitudine requisita ad doctrinam moralem impopularem sed coherentem sustinendam inter pressiones culturales intensas eam relinquendi.
$desc$),
('the-visitation-of-the-blessed-virgin-mary', 'Visitatio Beatae Mariae Virginis', $desc$
Visitatio Beatae Mariae Virginis iter Mariae ad Elisabeth celebrat, cum abscondita Christi praesentia gaudium, prophetiam et laudem excitavit.

Evangelium secundum Lucam narrat quomodo Maria, Verbo carnem facto concepto, festinanter ad Elisabeth perrexit, quae eam ut "matrem Domini mei" salutavit, dum infans Ioannes in utero eius exsultavit, et quomodo Maria Magnificat respondit, hymnum suum misericordiam Dei et eversionem quam pro humilibus operatur proclamans. Festum Mariam celebrat ut primam Christi ad alteram portatricem, exemplar omnis credentis missi ad gaudium praesentiae eius communicandum, et per salutationem Elisabeth plenam humanitatem et identitatem divinam infantis quem Maria ab ipso conceptionis momento portat affirmat.

Festum saeculo tertiodecimo apud Franciscanos ortum est et ad Ecclesiam universalem anno 1389 a Papa Urbano VI extensum, qui speravit devotionem auctam erga Mariam sanationem Magni Schismatis Occidentalis acceleraturam esse. Eius incrementum liturgicum Ecclesiae desiderium exprimit caritatem Mariae una cum mysterio Christi iam in utero praesentis contemplandi.

Festum hodie credentes invitat ut festinationem Mariae Christum aliis ferendi imitentur, et ut, sicut Elisabeth fecit, praesentiam Domini iam in circumstantiis humilibus et absconditis occursuum ordinariorum operantem agnoscant, clausula apta mensis in cooperatione Mariae mysterio Incarnationis contemplanda transacti.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-joseph-the-worker', 5, 1, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-athanasius-bishop-and-doctor-of-the-church', 5, 2, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saints-philip-and-james-apostles', 5, 3, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-john-of-avila-priest-and-doctor-of-the-church', 5, 10, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saints-nereus-and-achilleus-martyrs', 5, 12, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-pancras-martyr', 5, 12, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('our-lady-of-fatima', 5, 13, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-matthias-apostle', 5, 14, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-john-i-pope-and-martyr', 5, 18, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-bernardine-of-siena-priest', 5, 20, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-christopher-magallanes-priest-and-companions-martyrs', 5, 21, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-rita-of-cascia-religious', 5, 22, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', 5, 25, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-gregory-vii-pope', 5, 25, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-mary-magdalene-de-pazzi-virgin', 5, 25, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-philip-neri-priest', 5, 26, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-augustine-of-canterbury-bishop', 5, 27, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-paul-vi-pope', 5, 29, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('the-visitation-of-the-blessed-virgin-mary', 5, 31, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-joseph-the-worker', $desc$
In the Roman General Calendar, this celebration falls on May 1 as an optional memorial with white vestments. Instituted in 1955, it deliberately gives Christian expression to May Day and remains distinct from the March 19 celebration of Saint Joseph.
$desc$),
('saint-athanasius-bishop-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on May 2 as an obligatory memorial with white vestments.
$desc$),
('saints-philip-and-james-apostles', $desc$
In the Roman General Calendar, this celebration falls on May 3 as a feast with white vestments. In the modern Roman calendar it is kept on May 3, after having long been observed on May 1 before Saint Joseph the Worker was introduced.
$desc$),
('saint-john-of-avila-priest-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on May 10 as an optional memorial with white vestments.
$desc$),
('saints-nereus-and-achilleus-martyrs', $desc$
In the Roman General Calendar, this celebration falls on May 12 as an optional memorial with red vestments. It shares May 12 with Saint Pancras, Martyr as another optional memorial of Roman martyrs.
$desc$),
('saint-pancras-martyr', $desc$
In the Roman General Calendar, this celebration falls on May 12 as an optional memorial with red vestments. It shares May 12 with Saints Nereus and Achilleus, Martyrs as another optional memorial of Roman martyrs.
$desc$),
('our-lady-of-fatima', $desc$
In the Roman General Calendar, this celebration falls on May 13 as an optional memorial with white vestments. Added to the universal Roman calendar in 2019, the date recalls the first reported apparition at Fátima in 1917.
$desc$),
('saint-matthias-apostle', $desc$
In the Roman General Calendar, this celebration falls on May 14 as a feast with white vestments. In the present Roman calendar it is kept on May 14 rather than its older late-February position, so that the apostle is celebrated in Eastertide.
$desc$),
('saint-john-i-pope-and-martyr', $desc$
In the Roman General Calendar, this celebration falls on May 18 as an optional memorial with red vestments.
$desc$),
('saint-bernardine-of-siena-priest', $desc$
In the Roman General Calendar, this celebration falls on May 20 as an optional memorial with white vestments.
$desc$),
('saint-christopher-magallanes-priest-and-companions-martyrs', $desc$
In the Roman General Calendar, this celebration falls on May 21 as an optional memorial with red vestments.
$desc$),
('saint-rita-of-cascia-religious', $desc$
In the Roman General Calendar, this celebration falls on May 22 as an optional memorial with white vestments.
$desc$),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on May 25 as an optional memorial with white vestments. On May 25 the calendar also permits the optional memorials of Saint Gregory VII, Pope and Saint Mary Magdalene de' Pazzi, Virgin.
$desc$),
('saint-gregory-vii-pope', $desc$
In the Roman General Calendar, this celebration falls on May 25 as an optional memorial with white vestments. On May 25 the calendar also permits the optional memorials of Saint Bede the Venerable, Priest and Doctor of the Church and Saint Mary Magdalene de' Pazzi, Virgin.
$desc$),
('saint-mary-magdalene-de-pazzi-virgin', $desc$
In the Roman General Calendar, this celebration falls on May 25 as an optional memorial with white vestments. On May 25 the calendar also permits the optional memorials of Saint Bede the Venerable, Priest and Doctor of the Church and Saint Gregory VII, Pope.
$desc$),
('saint-philip-neri-priest', $desc$
In the Roman General Calendar, this celebration falls on May 26 as an obligatory memorial with white vestments.
$desc$),
('saint-augustine-of-canterbury-bishop', $desc$
In the Roman General Calendar, this celebration falls on May 27 as an optional memorial with white vestments.
$desc$),
('saint-paul-vi-pope', $desc$
In the Roman General Calendar, this celebration falls on May 29 as an optional memorial with white vestments.
$desc$),
('the-visitation-of-the-blessed-virgin-mary', $desc$
In the Roman General Calendar, this celebration falls on May 31 as a feast with white vestments. In the modern Roman calendar it is placed on May 31 so that the mystery falls between the Annunciation and the Nativity of Saint John the Baptist; older Roman usage kept it on July 2.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'fr', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-joseph-the-worker', $desc$
Dans le calendrier romain général, cette célébration tombe le 1er mai comme une mémoire facultative avec la couleur liturgique blanche. Instituée en 1955, elle donne délibérément une expression chrétienne au 1er mai et demeure distincte de la célébration de saint Joseph au 19 mars.
$desc$),
('saint-athanasius-bishop-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 2 mai comme une mémoire obligatoire avec la couleur liturgique blanche.
$desc$),
('saints-philip-and-james-apostles', $desc$
Dans le calendrier romain général, cette célébration tombe le 3 mai comme une fête avec la couleur liturgique blanche. Dans le calendrier romain moderne, elle est célébrée le 3 mai, après avoir longtemps été observée le 1er mai avant l'introduction de saint Joseph travailleur.
$desc$),
('saint-john-of-avila-priest-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 10 mai comme une mémoire facultative avec la couleur liturgique blanche.
$desc$),
('saints-nereus-and-achilleus-martyrs', $desc$
Dans le calendrier romain général, cette célébration tombe le 12 mai comme une mémoire facultative avec la couleur liturgique rouge. Elle partage le 12 mai avec Saint Pancrace, martyr comme autre mémoire facultative de martyrs romains.
$desc$),
('saint-pancras-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 12 mai comme une mémoire facultative avec la couleur liturgique rouge. Elle partage le 12 mai avec Saints Nérée et Achillée, martyrs comme autre mémoire facultative de martyrs romains.
$desc$),
('our-lady-of-fatima', $desc$
Dans le calendrier romain général, cette célébration tombe le 13 mai comme une mémoire facultative avec la couleur liturgique blanche. Ajoutée au calendrier romain universel en 2019, la date rappelle la première apparition rapportée à Fatima en 1917.
$desc$),
('saint-matthias-apostle', $desc$
Dans le calendrier romain général, cette célébration tombe le 14 mai comme une fête avec la couleur liturgique blanche. Dans le calendrier romain actuel, elle est célébrée le 14 mai plutôt qu'à son ancienne place de la fin février, afin que l'apôtre soit fêté au temps pascal.
$desc$),
('saint-john-i-pope-and-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 18 mai comme une mémoire facultative avec la couleur liturgique rouge.
$desc$),
('saint-bernardine-of-siena-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 20 mai comme une mémoire facultative avec la couleur liturgique blanche.
$desc$),
('saint-christopher-magallanes-priest-and-companions-martyrs', $desc$
Dans le calendrier romain général, cette célébration tombe le 21 mai comme une mémoire facultative avec la couleur liturgique rouge.
$desc$),
('saint-rita-of-cascia-religious', $desc$
Dans le calendrier romain général, cette célébration tombe le 22 mai comme une mémoire facultative avec la couleur liturgique blanche.
$desc$),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 25 mai comme une mémoire facultative avec la couleur liturgique blanche. Le 25 mai, le calendrier permet aussi les mémoires facultatives de Saint Grégoire VII, pape et de Sainte Marie-Madeleine de Pazzi, vierge.
$desc$),
('saint-gregory-vii-pope', $desc$
Dans le calendrier romain général, cette célébration tombe le 25 mai comme une mémoire facultative avec la couleur liturgique blanche. Le 25 mai, le calendrier permet aussi les mémoires facultatives de Saint Bède le Vénérable, prêtre et docteur de l'Église et de Sainte Marie-Madeleine de Pazzi, vierge.
$desc$),
('saint-mary-magdalene-de-pazzi-virgin', $desc$
Dans le calendrier romain général, cette célébration tombe le 25 mai comme une mémoire facultative avec la couleur liturgique blanche. Le 25 mai, le calendrier permet aussi les mémoires facultatives de Saint Bède le Vénérable, prêtre et docteur de l'Église et de Saint Grégoire VII, pape.
$desc$),
('saint-philip-neri-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 26 mai comme une mémoire obligatoire avec la couleur liturgique blanche.
$desc$),
('saint-augustine-of-canterbury-bishop', $desc$
Dans le calendrier romain général, cette célébration tombe le 27 mai comme une mémoire facultative avec la couleur liturgique blanche.
$desc$),
('saint-paul-vi-pope', $desc$
Dans le calendrier romain général, cette célébration tombe le 29 mai comme une mémoire facultative avec la couleur liturgique blanche.
$desc$),
('the-visitation-of-the-blessed-virgin-mary', $desc$
Dans le calendrier romain général, cette célébration tombe le 31 mai comme une fête avec la couleur liturgique blanche. Dans le calendrier romain moderne, elle est placée au 31 mai afin que ce mystère se situe entre l'Annonciation et la Nativité de saint Jean-Baptiste ; l'usage romain plus ancien la célébrait le 2 juillet.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'la', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-joseph-the-worker', $desc$
In Calendario Romano Generali, haec celebratio die 1 Maii ut memoria ad libitum cum colore liturgico albo celebratur. Anno 1955 instituta, consulto sensum christianum diei primae Maii tribuit atque a celebratione sancti Ioseph diei 19 Martii distinguitur.
$desc$),
('saint-athanasius-bishop-and-doctor-of-the-church', $desc$
In Calendario Romano Generali, haec celebratio die 2 Maii ut memoria obligatoria cum colore liturgico albo celebratur.
$desc$),
('saints-philip-and-james-apostles', $desc$
In Calendario Romano Generali, haec celebratio die 3 Maii ut festum cum colore liturgico albo celebratur. In calendario Romano moderno die 3 Maii celebratur, cum diu die 1 Maii observata esset ante introductionem sancti Ioseph Opificis.
$desc$),
('saint-john-of-avila-priest-and-doctor-of-the-church', $desc$
In Calendario Romano Generali, haec celebratio die 10 Maii ut memoria ad libitum cum colore liturgico albo celebratur.
$desc$),
('saints-nereus-and-achilleus-martyrs', $desc$
In Calendario Romano Generali, haec celebratio die 12 Maii ut memoria ad libitum cum colore liturgico rubro celebratur. Eodem die 12 Maii etiam Sanctus Pancratius, Martyr tamquam alia memoria ad libitum martyrum Romanorum celebratur.
$desc$),
('saint-pancras-martyr', $desc$
In Calendario Romano Generali, haec celebratio die 12 Maii ut memoria ad libitum cum colore liturgico rubro celebratur. Eodem die 12 Maii etiam Sancti Nereus et Achilleus, Martyres tamquam alia memoria ad libitum martyrum Romanorum celebratur.
$desc$),
('our-lady-of-fatima', $desc$
In Calendario Romano Generali, haec celebratio die 13 Maii ut memoria ad libitum cum colore liturgico albo celebratur. In calendarium Romanum universale anno 2019 addita, dies primam apparitionem Fatimae anno 1917 relatam commemorat.
$desc$),
('saint-matthias-apostle', $desc$
In Calendario Romano Generali, haec celebratio die 14 Maii ut festum cum colore liturgico albo celebratur. In praesenti calendario Romano die 14 Maii celebratur potius quam in antiquiore sede exeunte Februario, ut apostolus in tempore paschali colatur.
$desc$),
('saint-john-i-pope-and-martyr', $desc$
In Calendario Romano Generali, haec celebratio die 18 Maii ut memoria ad libitum cum colore liturgico rubro celebratur.
$desc$),
('saint-bernardine-of-siena-priest', $desc$
In Calendario Romano Generali, haec celebratio die 20 Maii ut memoria ad libitum cum colore liturgico albo celebratur.
$desc$),
('saint-christopher-magallanes-priest-and-companions-martyrs', $desc$
In Calendario Romano Generali, haec celebratio die 21 Maii ut memoria ad libitum cum colore liturgico rubro celebratur.
$desc$),
('saint-rita-of-cascia-religious', $desc$
In Calendario Romano Generali, haec celebratio die 22 Maii ut memoria ad libitum cum colore liturgico albo celebratur.
$desc$),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', $desc$
In Calendario Romano Generali, haec celebratio die 25 Maii ut memoria ad libitum cum colore liturgico albo celebratur. Die 25 Maii calendarium etiam memorias ad libitum Sanctus Gregorius VII, Papa et Sancta Maria Magdalena de Pazzi, Virgo permittit.
$desc$),
('saint-gregory-vii-pope', $desc$
In Calendario Romano Generali, haec celebratio die 25 Maii ut memoria ad libitum cum colore liturgico albo celebratur. Die 25 Maii calendarium etiam memorias ad libitum Sanctus Beda Venerabilis, Presbyter et Ecclesiae Doctor et Sancta Maria Magdalena de Pazzi, Virgo permittit.
$desc$),
('saint-mary-magdalene-de-pazzi-virgin', $desc$
In Calendario Romano Generali, haec celebratio die 25 Maii ut memoria ad libitum cum colore liturgico albo celebratur. Die 25 Maii calendarium etiam memorias ad libitum Sanctus Beda Venerabilis, Presbyter et Ecclesiae Doctor et Sanctus Gregorius VII, Papa permittit.
$desc$),
('saint-philip-neri-priest', $desc$
In Calendario Romano Generali, haec celebratio die 26 Maii ut memoria obligatoria cum colore liturgico albo celebratur.
$desc$),
('saint-augustine-of-canterbury-bishop', $desc$
In Calendario Romano Generali, haec celebratio die 27 Maii ut memoria ad libitum cum colore liturgico albo celebratur.
$desc$),
('saint-paul-vi-pope', $desc$
In Calendario Romano Generali, haec celebratio die 29 Maii ut memoria ad libitum cum colore liturgico albo celebratur.
$desc$),
('the-visitation-of-the-blessed-virgin-mary', $desc$
In Calendario Romano Generali, haec celebratio die 31 Maii ut festum cum colore liturgico albo celebratur. In calendario Romano moderno die 31 Maii locatur ut mysterium inter Annuntiationem et Nativitatem sancti Ioannis Baptistae celebretur; antiquior usus Romanus illud die 2 Iulii servabat.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

-- =========================================================
-- Roman General Calendar - June (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-justin-martyr', 'Saint Justin, Martyr', 'saint'),
('saints-marcellinus-and-peter-martyrs', 'Saints Marcellinus and Peter, Martyrs', 'saint'),
('saints-charles-lwanga-and-companions-martyrs', 'Saints Charles Lwanga and Companions, Martyrs', 'saint'),
('saint-boniface-bishop-and-martyr', 'Saint Boniface, Bishop and Martyr', 'saint'),
('saint-norbert-bishop', 'Saint Norbert, Bishop', 'saint'),
('saint-ephrem-deacon-and-doctor-of-the-church', 'Saint Ephrem, Deacon and Doctor of the Church', 'saint'),
('saint-barnabas-apostle', 'Saint Barnabas, Apostle', 'saint'),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', 'Saint Anthony of Padua, Priest and Doctor of the Church', 'saint'),
('saint-romuald-abbot', 'Saint Romuald, Abbot', 'saint'),
('saint-aloysius-gonzaga-religious', 'Saint Aloysius Gonzaga, Religious', 'saint'),
('saint-paulinus-of-nola-bishop', 'Saint Paulinus of Nola, Bishop', 'saint'),
('saints-john-fisher-bishop-and-thomas-more-martyrs', 'Saints John Fisher, Bishop, and Thomas More, Martyrs', 'saint'),
('the-nativity-of-saint-john-the-baptist', 'The Nativity of Saint John the Baptist', 'saint'),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 'Saint Cyril of Alexandria, Bishop and Doctor of the Church', 'saint'),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 'Saint Irenaeus, Bishop, Martyr and Doctor of the Church', 'saint'),
('saints-peter-and-paul-apostles', 'Saints Peter and Paul, Apostles', 'saint'),
('the-first-martyrs-of-holy-roman-church', 'The First Martyrs of Holy Roman Church', 'saint')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-justin-martyr', 'Saint Justin, Martyr', $desc$
Saint Justin, Martyr, is honored as a layman and philosopher who, having sought truth through the schools of pagan philosophy, recognized in Christianity the fulfillment of reason's deepest longing - the "true philosophy." His feast celebrates the harmony of faith and reason, the vocation of the intellectual to place learning at the service of the Gospel, and the ultimate seal of that vocation in martyrdom, by which Justin confirmed with his blood the truths he had defended with his pen.

The commemoration of Justin's death - he was scourged and beheaded in Rome under the prefect Rusticus around A.D. 165 - has ancient roots, and the Acts of his trial are among the oldest authentic martyr-acts preserved from antiquity. 

In an age marked by renewed dialogue between faith, culture, and science, Justin's feast holds particular pastoral weight: it presents a model for engaging contemporary thought without fear, using reason as a bridge rather than a barrier to belief. He is patron of philosophers and apologists, and the Church invokes his witness for all who labor to give a reasoned account of the hope that is in them.
$desc$),
('saints-marcellinus-and-peter-martyrs', 'Saints Marcellinus and Peter, Martyrs', $desc$
Saints Marcellinus and Peter are commemorated as two Roman martyrs of the early fourth century, an exorcist and a priest, put to death during the persecution of Diocletian. Their liturgical significance rests not on biographical detail but on their inclusion among the witnesses whom the Church has held in continuous, official veneration since antiquity - their names appear in the Roman Canon itself, in the list of martyrs recited after the consecration, placing their sacrifice in perpetual union with the Eucharistic offering of the whole Church.

Devotion to these martyrs is attested remarkably early: Pope Damasus I composed an epitaph for their tomb on the Via Labicana, and Constantine erected a basilica over the site at his mother Helena's request, one of the great funerary basilicas of the Constantinian era. Their commemoration endured in Roman memory for centuries, a sign of the enduring esteem the Church of Rome held for its own martyrs.

Pastorally, the memorial invites the faithful to recall the depth of the Church's rootedness in the witness of the martyrs, especially those whose stories are not fully recorded but whose fidelity is nonetheless woven into the very heart of the Eucharistic liturgy. Their feast is a quiet reminder that sanctity often goes unrecorded in detail, yet remains eternally present before the altar.
$desc$),
('saints-charles-lwanga-and-companions-martyrs', 'Saints Charles Lwanga and Companions, Martyrs', $desc$
Saint Charles Lwanga and his Companions are remembered for the courage of these young Christians - pages and catechumens of the royal court of Buganda - who, between 1885 and 1887, chose death rather than betray their faith or submit to demands contrary to Christian morality. Theologically, the feast presents an image of the Church's universality and vitality even in lands newly evangelized, and testifies that the grace of martyrdom, and the heroic virtue it presupposes, is not confined to any single culture or era but flowers wherever the Gospel takes root.

Pope Paul VI canonized the group in 1964, making them the first canonized saints from sub-Saharan Africa. Their canonization marked a significant moment in the Church's recognition of the maturity and fruitfulness of the young African Churches.

Today the feast carries strong pastoral resonance across Africa and beyond, holding up steadfastness in the face of persecution, purity of life, and fidelity to conscience as living witnesses for a Church that is genuinely universal. It is often marked with great solemnity in Uganda, at the shrine of Namugongo, and serves as an encouragement to young people everywhere who face pressure to compromise their faith.
$desc$),
('saint-boniface-bishop-and-martyr', 'Saint Boniface, Bishop and Martyr', $desc$
Saint Boniface, Bishop and Martyr, is honored as the "Apostle of Germany," whose episcopal ministry embodied the union of monastic discipline, ecclesial obedience to Rome, and missionary zeal in the evangelization and organization of the Church among the Germanic peoples. Liturgically, it celebrates the vocation of the missionary bishop who lays the institutional foundations - dioceses, monasteries, and councils - upon which a durable Christian culture can be built, and it honors the crown of martyrdom that sealed his life's work.

An English Benedictine monk who received his mission directly from the papacy, Boniface reorganized the Frankish and German Churches and was killed by pagan raiders at Dokkum, in Frisia, in 754 while awaiting converts for confirmation. His cult spread in the West shortly after his death, a sign of the foundational role attributed to him in the evangelization of Northern Europe.

Boniface's memorial remains especially significant for the Church in Germany and the Netherlands, where he is patron, and offers a model for missionary bishops today: fidelity to the universal Church combined with patient, structural work of evangelization, undertaken without regard for personal safety.
$desc$),
('saint-norbert-bishop', 'Saint Norbert, Bishop', $desc$
Saint Norbert, Bishop, is honored as a bishop and founder whose life bore witness to the reform of clerical and religious life in the twelfth century, particularly the renewal of the common, apostolic life among canons regular. Theologically, the feast highlights the Church's perennial need for the reform of consecrated life according to the Gospel, uniting contemplative prayer with active pastoral care and preaching.

Norbert founded the abbey of Prémontré in 1120, from which the Premonstratensian Order takes its name, and later became Archbishop of Magdeburg, where he worked to restore ecclesiastical discipline and combat heresy. His influence on the reform movements of his era gave his witness lasting significance well beyond the communities directly shaped by his rule.

For religious communities following his rule and for the wider Church, Norbert's memorial is an invitation to consider how structures of common life and prayer can serve, rather than hinder, effective pastoral ministry - a concern as relevant to religious renewal today as it was in the twelfth century.
$desc$),
('saint-ephrem-deacon-and-doctor-of-the-church', 'Saint Ephrem, Deacon and Doctor of the Church', $desc$
Saint Ephrem, Deacon and Doctor of the Church, is honored for the gift of poetic and liturgical theology he gave to the whole Church through the office of deacon rather than priest or bishop, underscoring that the title of Doctor of the Church is tied to depth of teaching, not rank of ordination. Ephrem's hymns, still sung in Syriac liturgical traditions, express with striking beauty the mysteries of the Incarnation, the Eucharist, and Mary's place in salvation history, earning him the title "Harp of the Holy Spirit."

A deacon of Nisibis and later Edessa in the fourth century, Ephrem became renowned throughout the Christian East for his theological hymns composed against heresies of his day and in praise of the sacraments. Pope Benedict XV declared him a Doctor of the Universal Church in 1920, one of the few Doctors from the Syriac tradition, a sign of the universal Church's recognition of a theologian from outside the Latin and Greek mainstream.

Ephrem's feast today invites the Latin Church to draw on the riches of Eastern Christian theology and to recognize sung, poetic theology as a legitimate and powerful vehicle of doctrine - a reminder, especially valuable amid ecumenical dialogue with the Syriac Churches, that authentic teaching authority is not confined to a single liturgical family.
$desc$),
('saint-barnabas-apostle', 'Saint Barnabas, Apostle', $desc$
Though not one of the Twelve, Saint Barnabas, Apostle, is honored with the title "Apostle" because of his direct commissioning by the Holy Spirit for missionary work alongside Paul, recorded in the Acts of the Apostles. The feast celebrates his role as mediator and encourager within the earliest Church - introducing the converted Paul to the suspicious apostles in Jerusalem, and later co-laboring with him on the first missionary journeys that carried the Gospel beyond Judea.

Ancient tradition, including the apocryphal Acts of Barnabas, associates him with Cyprus, where he is venerated as a founder of the local Church, and his commemoration is attested from the early centuries of Christian liturgical practice in both East and West, reflecting his scriptural prominence as a co-worker of Paul and a named apostolic figure of the New Testament.

The feast today honors the ministry of encouragement (Barnabas means "son of encouragement") and reconciliation within the Christian community, and stands as a reminder that apostolic mission often depends on those who build bridges of trust between new converts and the wider Church.
$desc$),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', 'Saint Anthony of Padua, Priest and Doctor of the Church', $desc$
Saint Anthony of Padua, Priest and Doctor of the Church, is honored as a Franciscan friar renowned for the clarity and evangelical fervor of his preaching, and for his profound and accessible exposition of Scripture, which earned him the title Doctor Evangelicus (Evangelical Doctor). Liturgically, it honors the vocation of the preacher who unites deep learning with pastoral simplicity, making the Gospel intelligible and compelling to ordinary believers as much as to scholars.

A former Augustinian canon who joined the Franciscans and became one of Saint Francis's most gifted early followers, Anthony died in 1231 and was canonized within a year, one of the swiftest canonizations in Church history, a sign of the immediate and widespread popular devotion he inspired. Pope Pius XII proclaimed him a Doctor of the Church in 1946, confirming for the universal Church the enduring authority of his preaching and exegesis.

Anthony's memorial retains enormous pastoral vitality today, particularly through popular devotions associated with finding what is lost - both material objects and, more profoundly, lost faith or direction - making him one of the most beloved intercessors in the universal Church's devotional life.
$desc$),
('saint-romuald-abbot', 'Saint Romuald, Abbot', $desc$
Saint Romuald, Abbot, is honored as a monastic reformer whose life sought to recover the rigor and solitude of the ancient desert fathers within a structured cenobitic framework, uniting eremitical withdrawal with communal monastic discipline. Theologically, it celebrates the enduring value of contemplative life and asceticism as a path of radical conversion, and the Church's confidence that such withdrawal from the world serves, rather than abandons, the wider community of believers.

Romuald founded numerous hermitages and monasteries across Italy in the late tenth and early eleventh centuries, most notably the hermitage of Camaldoli, from which the Camaldolese Benedictine congregation takes its name and its distinctive blend of eremitic and cenobitic life. His lasting contribution lies in the distinctive synthesis of eremitic and cenobitic life that continued within the Camaldolese family.

Today Romuald's feast speaks to a Church attentive to the renewal of contemplative vocations and to the human hunger for silence and solitude amid a culture of constant activity and noise, offering his synthesis of solitude and community as a model still practiced in Camaldolese houses worldwide.
$desc$),
('saint-aloysius-gonzaga-religious', 'Saint Aloysius Gonzaga, Religious', $desc$
Saint Aloysius Gonzaga, Religious, is honored as a young religious whose brief life was marked by radical renunciation of worldly rank and privilege for the sake of consecrated life, and by a purity of intention and charity that led him to give himself in service of plague victims. The feast celebrates youthful holiness as a full and serious vocation in itself, not merely a preparatory stage, and holds up self-sacrificing charity, exercised even at the cost of one's own life, as the fruit of authentic consecration.

A member of the Society of Jesus who renounced his inheritance as marquis to embrace religious poverty, Aloysius died in 1591 at the age of twenty-three after contracting an illness while caring for victims of plague in Rome. He was canonized in 1726 and later declared patron of Catholic youth by Pope Pius XI, a patronage that explains his enduring spiritual appeal.

The memorial carries particular pastoral significance for young people and those who accompany them, presenting an example of how the ordinary trials of adolescence - ambition, family expectation, self-mastery - can be transfigured by grace into a path of heroic charity and holiness.
$desc$),
('saint-paulinus-of-nola-bishop', 'Saint Paulinus of Nola, Bishop', $desc$
Saint Paulinus of Nola, Bishop, is honored as a bishop-poet whose conversion from a life of wealth, literary accomplishment, and public office to one of radical evangelical simplicity illustrates the Gospel call to detachment as the condition for authentic discipleship. Liturgically, the memorial highlights the sanctification of culture and the arts placed at the service of faith, since Paulinus continued to write poetry after his conversion, now directed to praise of Christ and the saints rather than worldly ambition.

A Roman aristocrat and celebrated Latin poet, friend and correspondent of Saints Augustine, Jerome, and Martin of Tours, Paulinus renounced his considerable fortune, was ordained a priest, and later became Bishop of Nola in Campania, where he died around 431. His life made him a bridge figure between classical culture and Christian asceticism.

Paulinus's feast today speaks to those who must discern how to place talent, wealth, and social standing at the service of the Gospel rather than personal advancement, offering a historically concrete example of conversion that did not require abandoning gifts, but reordering them entirely toward God.
$desc$),
('saints-john-fisher-bishop-and-thomas-more-martyrs', 'Saints John Fisher, Bishop, and Thomas More, Martyrs', $desc$
Saints John Fisher, Bishop, and Thomas More, Martyrs, are honored as two English martyrs, a bishop and a layman, both put to death for their refusal to acknowledge the king's claim to supremacy over the Church, a refusal grounded in fidelity to the unity of the Church under the Roman See. Theologically, the memorial celebrates the primacy of conscience formed by faith over political power, and unites the witness of ordained and lay vocations in a single act of fidelity unto death.

John Fisher, Bishop of Rochester, and Thomas More, former Lord Chancellor of England, were executed within weeks of each other in 1535 under Henry VIII for their opposition to the Act of Supremacy. Canonized together by Pope Pius XI in 1935, on the fourth centenary of their deaths, they are venerated together as companions in martyrdom drawn from both ecclesial and civic life.

Their feast retains strong contemporary resonance wherever believers face pressure to subordinate conscience and faith to state authority, and Thomas More in particular is widely invoked as patron of statesmen, lawyers, and politicians called to integrity in public life.
$desc$),
('the-nativity-of-saint-john-the-baptist', 'The Nativity of Saint John the Baptist', $desc$
The Nativity of Saint John the Baptist celebrates the birth of the Forerunner, whose coming was announced by the angel Gabriel and welcomed by Elizabeth and Zechariah as a work of divine mercy. John belongs to salvation history in a singular way: sanctified for his mission from the womb, he stands at the meeting point of the Old and New Covenants.

The Gospel of Luke presents his birth as the fruit of God's fidelity and as the immediate preparation for the coming of Christ. John's whole existence points away from himself and toward Jesus: he is the voice crying in the wilderness, the friend of the bridegroom, and the witness who identifies the Lamb of God. In him the Church contemplates repentance, humility, and joyful expectation as the path by which hearts are made ready for the Savior.

From late antiquity this celebration has flourished in both East and West and has inspired strong popular customs, especially midsummer fires and blessings of water. Such devotion reflects the enduring spiritual force of John's witness. He teaches the Church in every age to rejoice in God's visitation, to welcome conversion, and to decrease so that Christ may increase.
$desc$),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 'Saint Cyril of Alexandria, Bishop and Doctor of the Church', $desc$
Saint Cyril of Alexandria, Bishop and Doctor of the Church, is honored as the principal theological architect of the Church's defense of the true union of divine and human natures in Christ, and of Mary's title Theotokos, Mother of God, against the teaching of Nestorius. The memorial celebrates the vindication of orthodox Christology at a pivotal moment in doctrinal history, affirming that the very unity of Christ's person is inseparable from the honor due to his Mother.

As Patriarch of Alexandria in the early fifth century, Cyril presided over the Council of Ephesus in 431, which condemned Nestorianism and formally proclaimed the title Theotokos, a decision of lasting importance for both Christology and Marian doctrine. Declared a Doctor of the Church by Pope Leo XIII in 1882, he remains a foundational authority for later Christological teaching, including Chalcedon.

Cyril's feast remains significant today for ecumenical dialogue with the Oriental Orthodox Churches, for whom he is a towering authority, and it reminds the whole Church that precise theological language about Christ's identity is never a merely academic matter, but touches directly upon the reality of salvation itself.
$desc$),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 'Saint Irenaeus, Bishop, Martyr and Doctor of the Church', $desc$
Saint Irenaeus, Bishop, Martyr, and Doctor of the Church, is honored as the great second-century defender of apostolic tradition against Gnosticism, whose central theological insight - that the Church's unity and truth are guaranteed through unbroken succession from the apostles - remains foundational to Catholic ecclesiology. His title "Doctor of Unity," conferred by Pope Francis in 2022, celebrates his lifelong labor to demonstrate the coherence of the "rule of faith" received from the apostles against those who fragmented it through esoteric speculation.

A disciple of Polycarp, who himself had known the Apostle John, Irenaeus became Bishop of Lyon and authored Against Heresies, one of the most important theological works of the early Church. Long venerated as a martyr, though the historical evidence for the manner of his death is less certain than for some early witnesses, his title of Doctor was formally proclaimed by Pope Francis in the Apostolic Letter Fidei Scriniarium, reflecting renewed appreciation for his ecumenical significance as a bridge between Eastern and Western theological traditions.

Irenaeus's feast today speaks powerfully to a Church engaged in ecumenical dialogue and confronting new forms of doctrinal fragmentation, offering his vision of unity grounded in apostolic tradition as a model for maintaining communion amid diversity.
$desc$),
('saints-peter-and-paul-apostles', 'Saints Peter and Paul, Apostles', $desc$
Saints Peter and Paul are honored together as the two great apostolic witnesses whose ministry and martyrdom are inseparably linked with the Church of Rome. Peter received from Christ a singular pastoral charge within the apostolic college, while Paul was chosen as the tireless herald of the Gospel to the nations. Their joint commemoration confesses that the Church is built at once on visible communion and missionary proclamation.

The New Testament presents Peter as the confessor of Jesus' messiahship, the shepherd strengthened after his denial, and the apostle charged to confirm his brethren. Paul appears as the converted persecutor made a chosen vessel, theologian of grace, founder of communities, and sufferer for the name of Christ. Honored together, they show that differing charisms and temperaments can serve one Gospel and one Church without rivalry.

Their martyrdom at Rome gave lasting form to Christian memory from the earliest centuries, and devotion to their tombs helped shape the city as a center of pilgrimage and ecclesial unity. Their witness continues to summon the faithful to firmness in doctrine, zeal in mission, and the courage to confess Christ unto death.
$desc$),
('the-first-martyrs-of-holy-roman-church', 'The First Martyrs of Holy Roman Church', $desc$
The First Martyrs of the Holy Roman Church are honored as the vast and largely unnamed multitude of Roman Christians put to death under Nero in A.D. 64, the first great wave of persecution suffered by the Church at Rome, distinct from though closely connected to the martyrdoms of Peter and Paul themselves. Theologically, the feast affirms that the Church's foundation in Rome rests not solely on her chief apostles but on the collective sacrifice of an entire community of the faithful.

The persecution is recorded by the Roman historian Tacitus, who describes Nero's use of Christians as scapegoats for the great fire of Rome, subjecting them to horrific public executions; the Church has kept their memory since antiquity, honoring in them the first great multitude of Roman Christians to seal their confession with blood.

The memorial today gives voice to the countless nameless martyrs of every age whose individual stories are lost to history, yet whose collective witness remains foundational to the Church's identity, inviting the faithful to honor sanctity that leaves no other trace than fidelity itself.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-justin-martyr', 'Saint Justin, martyr', $desc$
Cette célébration honore un laïc et philosophe qui, après avoir cherché la vérité à travers les écoles de la philosophie païenne, reconnut dans le christianisme l'accomplissement le plus profond de la raison elle-même — la « vraie philosophie ». Sa fête célèbre l'harmonie de la foi et de la raison, la vocation de l'intellectuel à mettre son savoir au service de l'Évangile, et le sceau ultime de cette vocation dans le martyre, par lequel Justin confirma de son sang les vérités qu'il avait défendues par sa plume.

La commémoration de la mort de Justin — flagellé puis décapité à Rome sous le préfet Rusticus vers 165 — remonte à l'Antiquité chrétienne, et les Actes de son procès comptent parmi les plus anciens actes de martyrs authentiques conservés. 

À une époque marquée par un dialogue renouvelé entre foi, culture et science, la fête de Justin revêt une portée pastorale particulière : elle offre un modèle d'engagement sans crainte avec la pensée contemporaine, faisant de la raison un pont plutôt qu'un obstacle vers la foi. Patron des philosophes et des apologistes, il est invoqué par tous ceux qui s'efforcent de rendre compte avec intelligence de l'espérance qui est en eux.
$desc$),
('saints-marcellinus-and-peter-martyrs', 'Saints Marcellin et Pierre, martyrs', $desc$
Cette fête commémore deux martyrs romains du début du IVe siècle, un exorciste et un prêtre, mis à mort durant la persécution de Dioclétien. Sa portée liturgique ne tient pas au détail biographique mais à leur inscription parmi les témoins que l'Église vénère sans interruption depuis l'Antiquité : leurs noms figurent dans le Canon romain lui-même, dans la liste des martyrs récitée après la consecration, unissant perpétuellement leur sacrifice à l'offrande eucharistique de toute l'Église.

La dévotion à ces martyrs est attestée de manière remarquablement précoce : le pape Damase Ier composa une épitaphe pour leur tombeau sur la via Labicana, et Constantin y fit élever une basilique à la demande de sa mère Hélène, l'une des grandes basiliques funéraires de l'époque constantinienne. Leur commémoration a traversé les siècles dans la mémoire romaine, signe de l'estime durable que l'Église de Rome porte à ses propres martyrs.

Sur le plan pastoral, cette mémoire invite les fidèles à se souvenir de l'enracinement profond de l'Église dans le témoignage des martyrs, en particulier ceux dont l'histoire n'est pas conservée en détail mais dont la fidélité demeure pourtant tissée au cœur même de la liturgie eucharistique. Leur fête rappelle discrètement que la sainteté échappe souvent au récit détaillé, tout en restant éternellement présente devant l'autel.
$desc$),
('saints-charles-lwanga-and-companions-martyrs', 'Saint Charles Lwanga et ses compagnons, martyrs', $desc$
Cette mémoire célèbre le courage de jeunes chrétiens — pages et catéchumènes de la cour royale du Buganda — qui, entre 1885 et 1887, choisirent la mort plutôt que de trahir leur foi ou de se soumettre à des exigences contraires à la morale chrétienne. Sur le plan théologique, la fête offre une image de l'universalité et de la vitalité de l'Église, même en des terres nouvellement évangélisées, et atteste que la grâce du martyre, avec la vertu héroïque qu'elle suppose, ne se limite à aucune culture ni époque particulière mais fleurit partout où l'Évangile prend racine.

Le pape Paul VI canonisa ce groupe en 1964, faisant d'eux les premiers saints canonisés d'Afrique subsaharienne. Leur canonisation marqua un moment significatif dans la reconnaissance par l'Église de la maturité et de la fécondité des jeunes Églises d'Afrique.

Aujourd'hui, cette fête garde une forte résonance pastorale en Afrique et au-delà, mettant en lumière la fermeté devant la persécution, la pureté de vie et la fidélité à la conscience comme témoignages vivants pour une Église véritablement universelle. Elle est souvent célébrée avec une grande solennité en Ouganda, au sanctuaire de Namugongo, et encourage les jeunes du monde entier confrontés à la pression de compromettre leur foi.
$desc$),
('saint-boniface-bishop-and-martyr', 'Saint Boniface, évêque et martyr', $desc$
Cette fête honore l'« apôtre de l'Allemagne », dont le ministre épiscopal incarna l'union de la discipline monastique, de l'obéissance ecclésiale à Rome et du zèle missionnaire dans l'évangélisation et l'organisation de l'Église chez les peuples germaniques. Liturgiquement, elle célèbre la vocation de l'évêque missionnaire qui pose les fondations institutionnelles — diocèses, monastères, conciles — sur lesquelles peut se bâtir une culture chrétienne durable, et elle honore la couronne du martyre qui scella l'œuvre de sa vie.

Moine bénédictin anglais qui reçut sa mission directement de la papauté, Boniface réorganisa les Églises franque et germanique et fut tué par des païens à Dokkum, en Frise, en 754, alors qu'il attendait des convertis pour les confirmer. Son culte se répandit en Occident peu après sa mort, continuité remarquable qui reflète son rôle fondateur dans l'évangélisation de l'Europe du Nord.

La mémoire de Boniface garde une importance particulière pour l'Église en Allemagne et aux Pays-Bas, où il est patron, et offre un modèle pour les évêques missionnaires d'aujourd'hui : fidélité à l'Église universelle unie à un travail patient et structurant d'évangélisation, entrepris sans souci de sa propre sécurité.
$desc$),
('saint-norbert-bishop', 'Saint Norbert, évêque', $desc$
Cette célébration honore un évêque et fondateur dont la vie témoigna de la réforme de la vie cléricale et religieuse au XIIe siècle, en particulier du renouveau de la vie commune et apostolique parmi les chanoines réguliers. Sur le plan théologique, la fête souligne le besoin permanent qu'a l'Église de réformer la vie consacrée selon l'Évangile, en unissant la prière contemplative au soin pastoral actif et à la prédication.

Norbert fonda l'abbaye de Prémontré en 1120, dont l'ordre prémontré tire son nom, puis devint archevêque de Magdebourg, où il œuvra à restaurer la discipline ecclésiastique et à combattre l'hérésie. Son influence sur les mouvements de réforme de son époque donna à son témoignage une portée durable bien au-delà des communautés directement façonnées par sa règle.

Pour les communautés religieuses qui suivent sa règle, comme pour l'Église tout entière, la mémoire de Norbert invite à réfléchir sur la manière dont les structures de vie commune et de prière peuvent servir, plutôt qu'entraver, un ministre pastoral efficace — préoccupation aussi actuelle pour le renouveau de la vie religieuse aujourd'hui qu'elle le fut au XIIe siècle.
$desc$),
('saint-ephrem-deacon-and-doctor-of-the-church', 'Saint Éphrem, diacre et docteur de l''Église', $desc$
Cette fête célèbre le don d'une théologie poétique et liturgique fait à toute l'Église par un diacre plutôt que par un prêtre ou un évêque, soulignant que le titre de docteur de l'Église tient à la profondeur de l'enseignement, non au rang de l'ordination. Les hymnes d'Éphrem, encore chantés dans les traditions liturgiques syriaques, expriment avec une beauté saisissante les mystères de l'Incarnation, de l'Eucharistie et de la place de Marie dans l'histoire du salut, lui valant le titre de « harpe de l'Esprit Saint ».

Diacre de Nisibe puis d'Édesse au IVe siècle, Éphrem devint célèbre dans tout l'Orient chrétien pour ses hymnes théologiques composés contre les hérésies de son temps et en louange des sacrements. Le pape Benoît XV le déclara docteur de l'Église universelle en 1920, l'un des rares docteurs issus de la tradition syriaque, signe de la reconnaissance universelle d'un théologien étranger au monde latin et grec.

La fête d'Éphrem invite aujourd'hui l'Église latine à puiser dans les richesses de la théologie chrétienne orientale et à reconnaître dans la théologie chantée et poétique un véhicule légitime et puissant de la doctrine — rappel particulièrement précieux, dans le dialogue œcuménique avec les Églises syriaques, que l'autorité doctrinale authentique ne se limite pas à une seule famille liturgique.
$desc$),
('saint-barnabas-apostle', 'Saint Barnabé, apôtre', $desc$
Bien qu'il ne fasse pas partie des Douze, Barnabé est honoré du titre d'« apôtre » en raison de sa mission directe reçue de l'Esprit Saint pour le travail missionnaire aux côtés de Paul, rapportée dans les Actes des Apôtres. La fête célèbre son rôle de médiateur et d'encourageur au sein de l'Église naissante — présentant Paul converti aux apôtres méfiants de Jérusalem, puis collaborant avec lui lors des premiers voyages missionnaires qui portèrent l'Évangile au-delà de la Judée.

La tradition ancienne, notamment les Actes apocryphes de Barnabé, le rattache à Chypre, où il est vénéré comme fondateur de l'Église locale, et sa commémoration est attestée dès les premiers siècles de la pratique liturgique chrétienne, en Orient comme en Occident, reflétant son importance scripturaire comme compagnon de Paul et figure apostolique nommée du Nouveau Testament.

La fête honore aujourd'hui le ministre de l'encouragement (Barnabé signifie « fils de l'encouragement ») et de la réconciliation au sein de la communauté chrétienne, et rappelle que la mission apostolique dépend souvent de ceux qui bâtissent des ponts de confiance entre les nouveaux convertis et l'Église tout entière.
$desc$),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', 'Saint Antoine de Padoue, prêtre et docteur de l''Église', $desc$
Cette fête célèbre un frère franciscain réputé pour la clarté et la ferveur évangélique de sa prédication, ainsi que pour son exposition profonde et accessible de l'Écriture, qui lui valut le titre de Docteur évangélique. Sur le plan liturgique, elle honore la vocation du prédicateur qui unit une science profonde à une simplicité pastorale, rendant l'Évangile intelligible et vivant aussi bien pour les fidèles ordinaires que pour les savants.

Ancien chanoine augustinien devenu franciscain et l'un des premiers disciples les plus doués de saint François, Antoine mourut en 1231 et fut canonisé l'année suivante, l'une des canonisations les plus rapides de l'histoire de l'Église, signe de la dévotion populaire immédiate et massive qu'il suscita. Le pape Pie XII le proclama docteur de l'Église en 1946, confirmant pour l'Église universelle l'autorité durable de sa prédication et de son exégèse.

La mémoire d'Antoine garde aujourd'hui une immense vitalité pastorale, en particulier à travers les dévotions populaires liées à la recherche de ce qui est perdu — objets matériels, mais plus profondément foi ou direction perdues — faisant de lui l'un des intercesseurs les plus aimés de la vie dévotionnelle de l'Église universelle.
$desc$),
('saint-romuald-abbot', 'Saint Romuald, abbé', $desc$
Cette fête honore un réformateur monastique dont la vie chercha à retrouver la rigueur et la solitude des anciens Pères du désert dans un cadre cénobitique structuré, unissant le retrait érémitique à la discipline monastique communautaire. Sur le plan théologique, elle célèbre la valeur permanente de la vie contemplative et de l'ascèse comme chemin de conversion radicale, et la confiance de l'Église que ce retrait du monde sert, plutôt qu'il n'abandonne, la communauté plus large des croyants.

Romuald fonda de nombreux ermitages et monastères en Italie à la fin du Xe et au début du XIe siècle, en particulier l'ermitage de Camaldoli, dont la congrégation bénédictine camaldule tire son nom et son mélange caractéristique de vie érémitique et cénobitique. Sa contribution durable tient à la synthèse originale de vie érémitique et cénobitique qui se prolongea dans la famille camaldule.

La fête de Romuald parle aujourd'hui à une Église attentive au renouveau des vocations contemplatives et à la soif humaine de silence et de solitude dans une culture d'activité et de bruit constants, offrant sa synthèse de solitude et de communauté comme un modèle encore vécu dans les maisons camaldules du monde entier.
$desc$),
('saint-aloysius-gonzaga-religious', 'Saint Louis de Gonzague, religieux', $desc$
Cette célébration honore un jeune religieux dont la vie brève fut marquée par un renoncement radical au rang et aux privilèges mondains pour la vie consacrée, et par une pureté d'intention et une charité qui le menèrent à se donner au service des victimes de la peste. La fête célèbre la sainteté de la jeunesse comme une vocation pleine et sérieuse en elle-même, non une simple étape préparatoire, et met en lumière la charité qui se sacrifie, jusqu'au don de sa propre vie, comme le fruit d'une consecration authentique.

Membre de la Compagnie de Jésus qui renonça à son héritage de marquis pour embrasser la pauvreté religieuse, Louis de Gonzague mourut en 1591 à l'âge de vingt-trois ans après avoir contracté une maladie en soignant les victimes de la peste à Rome. Il fut canonisé en 1726 puis déclaré patron de la jeunesse catholique par le pape Pie XI, patronage qui explique la force durable de son attrait spirituel.

Cette mémoire revêt une portée pastorale particulière pour les jeunes et ceux qui les accompagnent, offrant l'exemple de la manière dont les épreuves ordinaires de l'adolescence — ambition, attentes familiales, maîtrise de soi — peuvent être transfigurées par la grâce en un chemin de charité héroïque et de sainteté.
$desc$),
('saint-paulinus-of-nola-bishop', 'Saint Paulin de Nole, évêque', $desc$
La fête célèbre un évêque-poète dont la conversion, d'une vie de richesse, d'accomplissement littéraire et de charge publique vers une simplicité évangélique radicale, illustre l'appel évangélique au détachement comme condition d'un authentique disciplat. Sur le plan liturgique, la mémoire met en lumière la sanctification de la culture et des arts mis au service de la foi, puisque Paulin continua d'écrire de la poésie après sa conversion, désormais tournée vers la louange du Christ et des saints plutôt que vers l'ambition mondaine.

Aristocrate romain et poète latin célèbre, ami et correspondant des saints Augustin, Jérôme et Martin de Tours, Paulin renonça à sa fortune considérable, fut ordonné prêtre, puis devint évêque de Nole en Campanie, où il mourut vers 431. Sa vie fit de lui une figure de pont entre culture classique et ascétisme chrétien.

La fête de Paulin parle aujourd'hui à ceux qui doivent discerner comment mettre talent, richesse et rang social au service de l'Évangile plutôt que de l'avancement personnel, offrant un exemple historiquement concret de conversion qui n'exigea pas d'abandonner les dons reçus, mais de les réorienter entièrement vers Dieu.
$desc$),
('saints-john-fisher-bishop-and-thomas-more-martyrs', 'Saints Jean Fisher, évêque, et Thomas More, martyrs', $desc$
La fête honore deux martyrs anglais, un évêque et un laïc, tous deux mis à mort pour avoir refusé de reconnaître la prétention du roi à la suprématie sur l'Église, refus fondé sur la fidélité à l'unité de l'Église sous le Siège romain. Sur le plan théologique, la mémoire célèbre la primauté de la conscience formée par la foi sur le pouvoir politique, et unit le témoignage des vocations ordonnée et laïque en un seul acte de fidélité jusqu'à la mort.

Jean Fisher, évêque de Rochester, et Thomas More, ancien grand chancelier d'Angleterre, furent exécutés à quelques semaines d'intervalle en 1535 sous Henri VIII pour leur opposition à l'Acte de Suprématie. Canonisés ensemble par le pape Pie XI en 1935, au quatrième centenaire de leur mort, ils sont vénérés ensemble comme compagnons de martyre issus à la fois de la vie ecclésiale et de la vie civique.

Leur fête garde une forte résonance contemporaine partout où les croyants subissent la pression de subordonner conscience et foi à l'autorité de l'État, et Thomas More en particulier est largement invoqué comme patron des hommes d'État, des juristes et des responsables politiques appelés à l'intégrité dans la vie publique.
$desc$),
('the-nativity-of-saint-john-the-baptist', 'Nativité de saint Jean-Baptiste', $desc$
La Nativité de saint Jean-Baptiste célèbre la naissance du Précurseur, dont la venue fut annoncée par l'ange Gabriel et accueillie par Élisabeth et Zacharie comme une œuvre de miséricorde divine. Jean appartient d'une manière unique à l'histoire du salut : consacré à sa mission dès le sein maternel, il se tient au point de jonction entre l'Ancienne et la Nouvelle Alliance.

L'Évangile de saint Luc présente sa naissance comme le fruit de la fidélité de Dieu et comme la préparation immédiate de la venue du Christ. Toute l'existence de Jean est tournée vers Jésus : il est la voix qui crie dans le désert, l'ami de l'Époux et le témoin qui désigne l'Agneau de Dieu. En lui, l'Église contemple la pénitence, l'humilité et l'attente joyeuse comme le chemin par lequel les cœurs se disposent à recevoir le Sauveur.

Dès l'Antiquité, cette célébration a fleuri en Orient comme en Occident et a inspiré de fortes traditions populaires, notamment les feux de la Saint-Jean et les bénédictions des eaux. Une telle dévotion manifeste la force durable de son témoignage. Jean enseigne à l'Église de tout temps à se réjouir de la visite de Dieu, à accueillir la conversion et à diminuer pour que le Christ croisse.
$desc$),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 'Saint Cyrille d''Alexandrie, évêque et docteur de l''Église', $desc$
La fête honore le principal architecte théologique de la défense par l'Église de la véritable union des natures divine et humaine dans le Christ, et du titre de Marie Théotokos, Mère de Dieu, contre l'enseignement de Nestorius. La mémoire célèbre la revendication de la christologie orthodoxe à un moment charnière de l'histoire doctrinale, affirmant que l'unité même de la personne du Christ est inséparable de l'honneur dû à sa Mère.

Patriarche d'Alexandrie au début du Ve siècle, Cyrille présida le concile d'Éphèse en 431, qui condamna le nestorianisme et proclama formellement le titre de Théotokos, décision d'une importance durable tant pour la christologie que pour la doctrine mariale. Déclaré docteur de l'Église par le pape Léon XIII en 1882, il demeure une autorité fondatrice pour l'enseignement christologique ultérieur, y compris Chalcédoine.

La fête de Cyrille demeure aujourd'hui significative pour le dialogue œcuménique avec les Églises orthodoxes orientales, pour lesquelles il est une autorité considérable, et elle rappelle à toute l'Église que le langage théologique précis sur l'identité du Christ n'est jamais une question purement académique, mais touche directement à la réalité même du salut.
$desc$),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 'Saint Irénée, évêque, martyr et docteur de l''Église', $desc$
La fête honore le grand défenseur du IIe siècle de la tradition apostolique contre le gnosticisme, dont l'intuition théologique centrale — que l'unité et la vérité de l'Église sont garanties par une succession ininterrompue depuis les apôtres — demeure fondatrice pour l'ecclésiologie catholique. Son titre de « docteur de l'unité », conféré par le pape François en 2022, célèbre son labeur de toute une vie pour démontrer la cohérence de la « règle de foi » reçue des apôtres contre ceux qui la fragmentaient par des spéculations ésotériques.

Disciple de Polycarpe, qui lui-même avait connu l'apôtre Jean, Irénée devint évêque de Lyon et écrivit Contre les hérésies, l'une des œuvres théologiques les plus importantes de l'Église ancienne. Longtemps vénéré comme martyr, bien que les preuves historiques des circonstances de sa mort soient moins certaines que pour d'autres témoins anciens, son titre de docteur fut formellement proclamé par le pape François dans la lettre apostolique Fidei Scriniarium, reflétant une appréciation renouvelée de sa portée œcuménique comme pont entre les traditions théologiques d'Orient et d'Occident.

La fête d'Irénée parle aujourd'hui avec force à une Église engagée dans le dialogue œcuménique et affrontant de nouvelles formes de fragmentation doctrinale, offrant sa vision de l'unité enracinée dans la tradition apostolique comme modèle pour maintenir la communion dans la diversité.
$desc$),
('saints-peter-and-paul-apostles', 'Saints Pierre et Paul, apôtres', $desc$
Les saints Pierre et Paul sont honorés ensemble comme les deux grands témoins apostoliques dont le ministère et le martyre sont inséparablement liés à l'Église de Rome. Pierre reçut du Christ une charge pastorale singulière au sein du collège apostolique, tandis que Paul fut choisi comme l'infatigable héraut de l'Évangile auprès des nations. Leur commémoration commune confesse que l'Église est édifiée tout à la fois sur la communion visible et sur l'élan missionnaire.

Le Nouveau Testament présente Pierre comme le confesseur de la messianité de Jésus, le pasteur affermi après son reniement et l'apôtre chargé de confirmer ses frères. Paul apparaît comme le persécuteur converti devenu instrument d'élection, théologien de la grâce, fondateur de communautés et souffrant pour le nom du Christ. Honorés ensemble, ils montrent que des charismes et des tempéraments différents peuvent servir sans rivalité un seul Évangile et une seule Église.

Leur martyre à Rome a marqué durablement la mémoire chrétienne dès les premiers siècles, et la dévotion à leurs tombeaux a contribué à façonner la ville comme centre de pèlerinage et d'unité ecclésiale. Leur témoignage continue d'appeler les fidèles à la fermeté doctrinale, au zèle missionnaire et au courage de confesser le Christ jusqu'à la mort.
$desc$),
('the-first-martyrs-of-holy-roman-church', 'Les premiers martyrs de la sainte Église de Rome', $desc$
La mémoire honore l'immense multitude, en grande partie anonyme, de chrétiens romains mis à mort sous Néron en l'an 64, la première grande vague de persécution subie par l'Église à Rome, distincte quoique étroitement liée aux martyres mêmes de Pierre et de Paul. Sur le plan théologique, la fête affirme que le fondement de l'Église à Rome ne repose pas seulement sur ses princes des apôtres, mais sur le sacrifice collectif de toute une communauté de fidèles.

La persécution est rapportée par l'historien romain Tacite, qui décrit l'utilisation par Néron des chrétiens comme boucs émissaires du grand incendie de Rome, les soumettant à des exécutions publiques atroces ; l'Église a gardé leur mémoire depuis l'Antiquité, honorant en eux la première grande multitude de chrétiens romains à sceller sa confession dans le sang.

La mémoire donne aujourd'hui une voix aux innombrables martyrs sans nom de toute époque dont les histoires individuelles sont perdues pour l'histoire, mais dont le témoignage collectif demeure fondateur pour l'identité de l'Église, invitant les fidèles à honorer une sainteté qui ne laisse d'autre trace que la fidélité elle-même.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-justin-martyr', 'Sanctus Iustinus, martyr', $desc$
Haec celebratio virum laicum et philosophum honorat, qui, veritatem per scholas philosophiae paganae quaesitam, in Christianismo tandem invenit id quod ratio ipsa altissime desiderabat: veram philosophiam. Festum eius concordiam fidei et rationis celebrat, vocationem doctorum ut scientiam Evangelio subiciant, atque huius vocationis sigillum ultimum in martyrio, quo Iustinus sanguine confirmavit quae calamo defenderat.

Commemoratio mortis Iustini - qui flagellis caesus et Romae sub praefecto Rustico circa annum CLXV decapitatus est - antiquissimas radices habet, et Acta iudicii eius inter vetustissima martyrum acta authentica numerantur quae ex antiquitate supersunt. 

Aetate nostra, qua dialogus inter fidem, culturam et scientiam renovatur, festum Iustini singularem vim pastoralem habet: exemplar praebet cum cogitatione huius temporis sine timore congrediendi, ratione tamquam ponte, non obstaculo, ad fidem utendo. Patronus philosophorum et apologetarum est, eiusque testimonium Ecclesia invocat pro omnibus qui rationem spei quae in ipsis est reddere student.
$desc$),
('saints-marcellinus-and-peter-martyrs', 'Sancti Marcellinus et Petrus, martyres', $desc$
Hi duo martyres Romani, exorcista et presbyter, fidem usque ad sanguinis effusionem servaverunt, testimonium reddentes Christo in ipsa urbe quae eos ad mortem damnavit. Eorum memoria Ecclesiam docet fidelitatem in persecutione, et unitatem inter clerum minorem maioremque in eodem certamine pro fide confirmat.

Marcellinus et Petrus sub persecutione Diocletiani, saeculo quarto ineunte, martyrium passi sunt; eorum nomina inter antiquissima in traditione Romana leguntur, adeo ut in ipso Canone Romano, inter martyres post consecrationem commemoratos, locum obtineant - signum venerationis quam iam saeculo quinto Ecclesia Romana eis tribuebat. Cultus eorum per saecula in Ecclesia Romana perseveravit, signum perennis aestimationis quam Roma martyribus suis tribuit.

Horum martyrum exemplum fideles hodiernos invitat ad considerandum quomodo humiles ministri Ecclesiae, saepe ignoti mundo, magna constantia fidem confiteri possint. Eorum inclusio in ipso Canone Missae quotidie memoriam eorum praesentem reddit, etiam ubi memoria liturgica non celebratur.
$desc$),
('saints-charles-lwanga-and-companions-martyrs', 'Sancti Carolus Lwanga et Socii, martyres', $desc$
Horum iuvenum martyrum cultus theologiam martyrii in contextu novo illustrat: fidelitas Baptismo data praevaluit etiam contra potestatem regiam et minas mortis atrocissimae. Carolus et socii, pagi aulici regis, castitatem et fidem Christianam servare maluerunt quam voluntati regis Mwanga II obtemperare, sic Evangelium usque ad supremum sacrificium testificantes.

Inter annos MDCCCLXXXV et MDCCCLXXXVII in regno Bugandae, hodierna Uganda, hi iuvenes, alii catechumeni alii iam baptizati, igne combusti vel gladio caesi sunt quia fidem abnegare recusabant. Papa Paulus VI eos anno MCMLXIV canonizavit, primos sanctos Africae subsaharianae hac ratione ab Ecclesia latina declaratos; canonizatio eorum magnum momentum habuit ad maturitatem atque fecunditatem iuvenum Ecclesiarum Africae agnoscendam.

Horum martyrum exemplum praesertim iuvenes hodiernos alloquitur, eos invitans ut fidelitatem castitatis et fidei etiam inter pressuras sociales et culturales tueantur. Eorum cultus signum est Ecclesiae vere catholicae, in omni gente et natione radicatae, sanguine martyrum ubique terrarum fecundatae.
$desc$),
('saint-boniface-bishop-and-martyr', 'Sanctus Bonifatius, episcopus et martyr', $desc$
Theologia huius festi in ipsa missione evangelizandi radicatur: Bonifatius, arborem sacram Donaris - vulgo "Thor" - propria manu succidens, non solum superstitionem paganam publice refutavit, sed etiam Crucem Christi supra idola veterum deorum triumphare ostendit. Eius vita exemplum praebet zeli apostolici qui culturas transformat sine violentia, sed potestate signi et verbi.

Bonifatius, natus in Anglia, dioceses per Germaniam ordinavit, monasteria fundavit, atque relationes inter Ecclesiam Germanicam et Sedem Romanam firmiter statuit; senex iam, ad gentes Frisias evangelizandas rediit, ubi anno DCCLIV apud Dokkum a paganis interfectus est. Vocatur ideo "Apostolus Germaniae." Cultus eius statim post mortem increvit, testimonium praebens quanti momenti eius opus ad evangelizationem Europae septentrionalis haberetur.

Bonifatii exemplum Ecclesiam hodiernam ad novam evangelizationem incitat, praesertim in regionibus ubi fides antiquitus florens nunc languescit vel oblivioni traditur. Fideles invitat ut audaciam missionalem cum patientia pastorali coniungant, sciendo fructus evangelizationis saepe post multa saecula plene maturescere.
$desc$),
('saint-norbert-bishop', 'Sanctus Norbertus, episcopus', $desc$
Norbertus, vita mutata a curiali in praedicatorem paenitentiae, exemplum praebet conversionis radicalis et zeli reformandae vitae clericalis et religiosae. Ordinem Praemonstratensem instituens, canonicos regulares secundum regulam Augustini viventes coniunxit vitae contemplativae cum ministerio pastorali actuoso, ita ut sanctitas personalis et cura animarum simul florerent.

Natus circa annum MLXXX, Norbertus post conversionem subitam praedicator itinerans factus est, Praemonstrati in Gallia anno MCXXI ordinem novum fundavit, et tandem Archiepiscopus Magdeburgensis creatus est, ubi Ecclesiam a laxitate ad disciplinam revocare studuit. Obiit anno MCXXXIV; influxus autem eius in motus reformationis aetatis suae testimonio eius pondus dedit longe ultra communitates quas ipse immediate formavit.

Norbertus fideles hodiernos invitat ad considerandam vim conversionis interioris, quae vitam totam transformare potest, atque ad quaerendam illam unionem inter orationem et actionem apostolicam quae vera reformatio Ecclesiae semper requirit.
$desc$),
('saint-ephrem-deacon-and-doctor-of-the-church', 'Sanctus Ephraem, diaconus et Ecclesiae doctor', $desc$
Ephraem, "Cithara Spiritus Sancti" appellatus, theologiam per hymnos et carmina magis quam per tractatus scholasticos exposuit, ostendens fidem posse pulchritudine verborum et musicae tam profunde quam ratione discursiva communicari. Eius opera Mariologiam, mysteria Incarnationis et Eucharistiae, necnon vitam asceticam, poetico modo illustrant, ita ut theologia et liturgia arte inseparabiliter iungantur.

Natus Nisibi in Mesopotamia circa annum CCCVI, diaconus ecclesiae Syriacae factus, scholam theologicam Edessae rexit, atque innumeros hymnos composuit qui usque hodie in liturgiis Syriacis resonant; obiit anno CCCLXXIII pauperibus in peste laborantibus serviens. Anno MCMXX Benedictus XV eum Doctorem Ecclesiae declaravit, primum inter Syros hoc titulo insignitum, ita theologum extra traditiones latinam atque graecam ad universam Ecclesiam pertinere manifestans.

Ephraem hodiernos invitat ad redintegrandam pulchritudinem in cultu divino et in praedicatione fidei, ostendens quomodo poesis et musica sacra instrumenta efficacissima catechesis et contemplationis esse possint.
$desc$),
('saint-barnabas-apostle', 'Sanctus Barnabas, Apostolus', $desc$
Barnabas, cuius nomen "filius consolationis" interpretatur, imaginem exhibet discipuli qui, generositate et prudentia insignis, alios in fide confirmat et communitatem aedificat. Eius exemplum praesertim illos illuminat qui in Ecclesia munus mediationis et reconciliationis gerunt, sicut ipse Paulum, adhuc suspectum, Hierosolymitanae communitati commendavit.

Levita Cyprius, Ioseph nomine, qui ab Apostolis Barnabas appellatus est, socius Pauli in primo itinere missionali fuit, Antiochiae Ecclesiam auxit, et in Actibus Apostolorum saepe memoratur ob suam liberalitatem et discretionem spiritualem. Traditio eum in Cypro martyrium passum tradit. Ab antiquis temporibus in Oriente et Occidente colitur, agnitione data muneris eius vere apostolici licet extra Duodecim.

Barnabae exemplum fideles hodiernos ad opus consolationis et incorporationis in communitate ecclesiali invitat, praesertim erga illos qui, sicut olim Paulus, primos passus in fide vel in vita ecclesiali difficulter inveniunt.
$desc$),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', 'Sanctus Antonius Patavinus, presbyter et Ecclesiae doctor', $desc$
Antonius, frater Franciscanus, praedicator eximius contra haereses temporis sui - praesertim contra Catharos - exstitit, adeo ut "Malleus Haereticorum" vocaretur; eius eloquentia scientiam theologicam cum ardore apostolico et simplicitate evangelica coniunxit, ostendens praedicationem veram semper ex intima cum Deo unione oriri debere.

Natus Ulixbonae anno MCXCV, frater Minor factus, a Francisco ipso ad theologiam docendam missus est; obiit Patavii anno MCCXXXI, admodum iuvenis. Pius XII eum anno MCMXLVI Doctorem Ecclesiae declaravit, "Doctorem Evangelicum" appellans. Devotio popularis, quae eum patronum rerum amissarum invocat, testimonium perhibet quam profunde eius sanctitas in cor populi Christiani penetraverit; doctoralis quoque dignitas auctoritatem perennem praedicationis eius in tota Ecclesia confirmat.

Antonii exemplum fideles hodiernos ad praedicationem simplicem et efficacem invitat, quae doctrinam soliditate et caritate populari simul praestet, atque ad fiduciam in intercessione sanctorum pro rebus etiam minimis vitae quotidianae.
$desc$),
('saint-romuald-abbot', 'Sanctus Romualdus, abbas', $desc$
Romualdus vitam monasticam ad puritatem primaevam heremiticae disciplinae reducere studuit, coniungens solitudinem contemplativam cum vita communi fratrum, ita ut disciplina rigorosa et caritas fraterna simul in una forma vitae coalescerent. Eius exemplum ostendit quomodo silentium et paenitentia viam ad intimam cum Deo unionem aperiant.

Natus Ravennae circa annum DCCCCLI, post vitam saecularem turbulentam ad monasterium conversus est, plures domus reformavit, et tandem apud Campum Maldulum eremum instituit unde Ordo Camaldulensis nomen traxit. Obiit anno MXXVII. Praecipua eius hereditas est singularis coniunctio vitae eremiticae et coenobiticae, quae in familia Camaldulensi usque ad nostra tempora perseveravit.

Romualdi exemplum hodiernos invitat ad quaerendum in vita quotidiana spatia silentii et orationis, etiam in medio societatis strepitu plenae, sciendo hanc solitudinem non fugam esse sed fontem verae communionis fraternae.
$desc$),
('saint-aloysius-gonzaga-religious', 'Sanctus Aloisius Gonzaga, religiosus', $desc$
Aloisius, hereditate nobili et gloria mundana sponte relictis, vitam religiosam in Societate Iesu elegit, ostendens quomodo gratia divina possit vincere etiam ambitiones et honores saeculares maxime blandientes. Eius mors, dum aegrotos peste laborantes caritative sublevat, caritatem heroicam usque ad supremum sacrificium exemplificat.

Natus anno MDLXVIII in familia principum Mantuanorum, Aloisius adulescens Societati Iesu nomen dedit, contra voluntatem paternam; Romae, dum in nosocomio pestilentibus servit, morbum ipse contraxit et anno MDXCI, vix tricesimum aetatis annum agens, obiit. Devotio erga eum statim inter iuvenes exorta est, et postea patronus praecipuus iuventutis christianae declaratus est, unde intellegitur cur eius exemplum tam diuturnam vim spiritualem retineat.

Aloisii exemplum praesertim iuvenes hodiernos alloquitur, eos invitans ut vocationem propriam supra ambitiones mundanas anteponant, et caritatem erga proximum, etiam cum periculo vitae propriae, sine formidine exerceant.
$desc$),
('saint-paulinus-of-nola-bishop', 'Sanctus Paulinus Nolanus, episcopus', $desc$
Paulinus, vir nobilis et opibus abundans, exemplum praebet renuntiationis evangelicae: divitiis et honoribus saecularibus sponte depositis, vitam episcopalem simplicem et poeticam elegit, ostendens quomodo cultura et eloquentia possint plene Evangelio subici, non extincta sed transformata.

Natus Burdigalae circa annum CCCLIV, senator Romanus et vir litteratus, post uxoris consensum bona sua pauperibus distribuit et presbyter, deinde episcopus Nolanus in Campania factus est; carminibus sacris et epistulis cum Augustino atque Hieronymo amicitiam spiritualem coluit. Obiit anno CDXXXI. Vita eius pontem quendam inter culturam classicam et asceticam christianam efficit.

Paulini exemplum hodiernos, praesertim homines cultos et opibus praeditos, invitat ad considerandam vanitatem divitiarum temporalium prae thesauro incorruptibili amicitiae cum Deo et fratribus in fide.
$desc$),
('saints-john-fisher-bishop-and-thomas-more-martyrs', 'Sancti Ioannes Fisher et Thomas Morus, martyres', $desc$
Hi duo martyres Anglicani, episcopus alter, laicus alter, unitatem Ecclesiae et primatum Petrinum usque ad mortem defenderunt, recusantes Actum Supremationis regiae super Ecclesiam agnoscere. Eorum testimonium ostendit conscientiam rectam potestati civili, etiam summae, subiici non posse ubi fides et unitas Ecclesiae in periculum vocantur.

Ioannes Fisher, Episcopus Roffensis et vir doctrina insignis, atque Thomas Morus, cancellarius regni Angliae et humanista celeberrimus, ambo sub rege Henrico VIII anno MDXXXV capite damnati sunt quia supremationem regiam super Ecclesiam agnoscere noluerunt. Pius XI eos anno MCMXXXV simul canonizavit. Ab Ecclesia simul venerantur ut socii martyrii, unus ex ordine episcoporum et alter ex vita civili eminens, ambo eadem conscientiae fidelitate coronati.

Horum martyrum exemplum hodiernos invitat ad fidelitatem conscientiae rectae etiam ubi potestates civiles fidem premunt, atque ad testimonium reddendum unitati Ecclesiae supra omnem commodum temporalem vel pericula personalia.
$desc$),
('the-nativity-of-saint-john-the-baptist', 'Nativitas Sancti Ioannis Baptistae', $desc$
Nativitas sancti Ioannis Baptistae ortum Praecursoris Domini celebrat, cuius adventus ab angelo Gabriele nuntiatus est et a Elisabeth atque Zacharia tamquam opus divinae misericordiae susceptus. Ioannes singulari modo ad historiam salutis pertinet: ad missionem suam iam in utero destinatus, quasi in confinio Veteris et Novi Testamenti stat.

Evangelium Lucae nativitatem eius tamquam fructum fidelitatis Dei exhibet atque tamquam proximam praeparationem adventus Christi. Tota vita Ioannis ad Iesum ordinatur: vox est clamantis in deserto, amicus sponsi, testisque qui Agnum Dei demonstrat. In eo Ecclesia paenitentiam, humilitatem et laetam exspectationem contemplatur ut viam qua corda ad Salvatorem praeparentur.

Ab antiquis temporibus haec celebratio tam in Oriente quam in Occidente floruit atque consuetudines populares excitavit, praesertim ignes aestivos et aquarum benedictiones. Talis devotio vim permanentem testimonii eius ostendit. Ioannes Ecclesiam omnium temporum docet visitatione Dei gaudere, conversionem suscipere, ac se ipsum minuere ut Christus crescat.
$desc$),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 'Sanctus Cyrillus Alexandrinus, episcopus et Ecclesiae doctor', $desc$
Cyrillus, adversus Nestorium pugnans, veritatem unius personae in Christo, Deo et homine, defendit, atque ex hac veritate consequenter titulum Beatae Virgini Mariae Theotokos, id est Deiparae, vindicavit. Eius theologia ostendit quomodo Mariologia semper ex Christologia proficiscatur, et quomodo defensio veri tituli Mariae ipsam fidem in Incarnationem Verbi tueatur.

Episcopus Alexandrinus a saeculo quinto ineunte, Cyrillus in Concilio Ephesino anno CDXXXI praesedit, ubi Nestorii doctrina damnata est et titulus Theotokos sollemniter confirmatus. Obiit anno CDXLIV. Leo XIII eum anno MDCCCLXXXII Doctorem Ecclesiae declaravit, "Doctorem Incarnationis" appellans. Doctrina eius fundamentalis manet ad posteriores definitiones christologicas intelligendas, etiam Chalcedonensem.

Cyrilli exemplum fideles hodiernos invitat ad firmitatem in confessione plena mysterii Incarnationis, atque ad veram devotionem Marianam quae semper ex vera fide Christologica oriatur, non ab ea seiuncta.
$desc$),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 'Sanctus Irenaeus, episcopus, martyr et Ecclesiae doctor', $desc$
Irenaeus, discipulus Polycarpi qui ipse a Ioanne Apostolo doctrinam acceperat, catenam traditionis apostolicae usque ad ipsos Apostolos viva voce transmisit, atque opere suo Adversus Haereses contra doctrinas gnosticas veritatem unitatis inter Deum Creatorem et Deum Redemptorem, atque integritatem historiae salutis, egregie defendit.

Natus in Asia Minore circa medium saeculum secundum, Irenaeus episcopus Lugdunensis in Gallia factus est, ubi Ecclesiam post persecutionem gubernavit et pacem inter Ecclesias Orientis et Occidentis de quaestione paschali sedulo curavit; mortem eius circa annum CCII antiqua traditio martyrio ascribit, licet documenta certa desint. Longa traditio eum ut martyrem venerata est, et Franciscus Papa anno MMXXII eum etiam "Doctorem Unitatis" appellavit, propter studium quo communionem Ecclesiae inter Orientem et Occidentem fovit.

Irenaei exemplum hodiernos ad quaerendam veram unitatem Ecclesiae, per fidelem traditionis apostolicae transmissionem, invitat, atque ad defensionem integritatis doctrinae contra ideologias quae hodie, sicut olim gnosticismus, fidem simplicem populi Dei subvertere conantur.
$desc$),
('saints-peter-and-paul-apostles', 'Sancti Petrus et Paulus, Apostoli', $desc$
Sancti Petrus et Paulus una honorantur ut duo magni testes apostolici quorum ministerium et martyrium cum Ecclesia Romana inseparabiliter coniunguntur. Petrus a Christo singulare pastorale munus in collegio apostolico accepit; Paulus vero electus est ut indefessus Evangelii praecon ad gentes mitteretur. Eorum communis commemoratio profitetur Ecclesiam simul super visibili communione et impetu missionario aedificari.

Novum Testamentum Petrum exhibet tamquam confessorem messianitatis Iesu, pastorem post negationem confirmatum, atque apostolum fratres suos corroborare iussum. Paulus apparet ut persecutor conversus, vas electionis effectus, doctor gratiae, communitatum conditor et pro nomine Christi patiens. Una honorati ostendunt diversa charismata atque ingenia unum Evangelium unamque Ecclesiam sine aemulatione servire posse.

Eorum martyrium Romae iam a primis saeculis memoriam christianam penitus formavit, et devotio erga sepulcra eorum urbem ipsam in centrum peregrinationis atque unitatis ecclesialis conformavit. Testimonium eorum fideles adhuc vocat ad firmitatem doctrinae, ad zelum missionarium, et ad animum Christum usque ad mortem confitendi.
$desc$),
('the-first-martyrs-of-holy-roman-church', 'Sancti Primi Martyres Sanctae Romanae Ecclesiae', $desc$
Horum martyrum anonymorum cultus ostendit quod sanctitas et fidelitas usque ad mortem non tantum insignibus personis, sed etiam multitudini fidelium simplicium, quorum nomina sola Deo nota sunt, propria est. Eorum memoria omnem persecutionis victimam, etiam ignotam mundo, tamquam testem authenticum Christi agnoscit.

Anno LXIV, post incendium magnum urbis Romae, Nero Christianos, tamquam incendii auctores falso accusatos, atrocissimis suppliciis - crucibus, bestiis, ignibus - necavit, sicut historicus Tacitus in Annalibus suis testatur. Hi martyres, licet distincti a Petro et Paulo qui eodem tempore vel paulo post passi sunt, arctissime cum illis coniunguntur, tamquam prima magna moles sanguinis pro Christo Romae effusi. Ecclesia memoriam eorum ab antiquitate servavit, in eis agnoscens primam magnam multitudinem christianorum Romanorum qui confessionem suam sanguine obsignaverunt.

Horum martyrum anonymorum exemplum hodiernos invitat ad memoriam omnium qui hodie quoque, in variis mundi partibus, fidem suam usque ad sanguinem sine nomine noto testificantur, atque ad gratitudinem erga fundamenta quae martyres primi Ecclesiae Romanae ipsis suis corporibus posuerunt.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-justin-martyr', 6, 1, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saints-marcellinus-and-peter-martyrs', 6, 2, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saints-charles-lwanga-and-companions-martyrs', 6, 3, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-boniface-bishop-and-martyr', 6, 5, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-norbert-bishop', 6, 6, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-ephrem-deacon-and-doctor-of-the-church', 6, 9, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-barnabas-apostle', 6, 11, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', 6, 13, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-romuald-abbot', 6, 19, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-aloysius-gonzaga-religious', 6, 21, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-paulinus-of-nola-bishop', 6, 22, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saints-john-fisher-bishop-and-thomas-more-martyrs', 6, 22, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('the-nativity-of-saint-john-the-baptist', 6, 24, 'SOLEMNITY', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 6, 27, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 6, 28, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saints-peter-and-paul-apostles', 6, 29, 'SOLEMNITY', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('the-first-martyrs-of-holy-roman-church', 6, 30, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-justin-martyr', $desc$
In the Roman General Calendar, this celebration falls on June 1 as an obligatory memorial with red vestments. The modern Roman calendar moved this observance from April 14 to June 1 so that it stands closer to ancient Roman and Eastern usage and outside the crowded Lenten cycle.
$desc$),
('saints-marcellinus-and-peter-martyrs', $desc$
In the Roman General Calendar, this celebration falls on June 2 as an optional memorial with red vestments. It retains the memory of two ancient Roman martyrs whose names are still heard in the Roman Canon.
$desc$),
('saints-charles-lwanga-and-companions-martyrs', $desc$
In the Roman General Calendar, this celebration falls on June 3 as an obligatory memorial with red vestments. Its place in the modern Roman calendar highlights the witness of the Ugandan martyrs and the maturity of the young Churches of Africa.
$desc$),
('saint-boniface-bishop-and-martyr', $desc$
In the Roman General Calendar, this celebration falls on June 5 as an obligatory memorial with red vestments. In the Roman rite this date keeps before the whole Church the missionary bishop whom German-speaking lands especially honor as the Apostle of Germany.
$desc$),
('saint-norbert-bishop', $desc$
In the Roman General Calendar, this celebration falls on June 6 as an optional memorial with white vestments. As an optional memorial, it may be observed wherever this witness speaks with particular force to local devotion or pastoral need.
$desc$),
('saint-ephrem-deacon-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on June 9 as an optional memorial with white vestments. Its optional rank also marks the place given in the Roman rite to a Syriac Doctor whose poetry broadened Latin awareness of Eastern theology.
$desc$),
('saint-barnabas-apostle', $desc$
In the Roman General Calendar, this celebration falls on June 11 as an obligatory memorial with white vestments. As an obligatory memorial, it gives the Roman rite a stable yearly remembrance of this witness.
$desc$),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on June 13 as an obligatory memorial with white vestments. Kept on the day associated with his death, it reflects the exceptional breadth of devotion to Anthony across the Roman rite.
$desc$),
('saint-romuald-abbot', $desc$
In the Roman General Calendar, this celebration falls on June 19 as an optional memorial with white vestments. As an optional memorial, it may be observed wherever this witness speaks with particular force to local devotion or pastoral need.
$desc$),
('saint-aloysius-gonzaga-religious', $desc$
In the Roman General Calendar, this celebration falls on June 21 as an obligatory memorial with white vestments. In many places this day also carries a strong association with prayer for youth and students under his patronage.
$desc$),
('saint-paulinus-of-nola-bishop', $desc$
In the Roman General Calendar, this celebration falls on June 22 as an optional memorial with white vestments. As an optional memorial, it may be observed wherever this witness speaks with particular force to local devotion or pastoral need.
$desc$),
('saints-john-fisher-bishop-and-thomas-more-martyrs', $desc$
In the Roman General Calendar, this celebration falls on June 22 as an optional memorial with red vestments. The modern Roman calendar deliberately joins the bishop and the lay statesman in one observance of conscience, ecclesial communion, and martyrdom.
$desc$),
('the-nativity-of-saint-john-the-baptist', $desc$
In the Roman General Calendar, this celebration falls on June 24 as a solemnity with white vestments. In the Roman rite it is one of the principal fixed solemnities, traditionally accompanied by a vigil and by midsummer popular customs.
$desc$),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on June 27 as an optional memorial with white vestments. Its place in the modern Roman calendar gives special visibility to Cyril as a major witness of orthodox Christology and Marian doctrine.
$desc$),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on June 28 as an obligatory memorial with red vestments. The current Roman books emphasize both his doctrinal stature and his ancient martyrial reputation, now expressly reflected in his title.
$desc$),
('saints-peter-and-paul-apostles', $desc$
In the Roman General Calendar, this celebration falls on June 29 as a solemnity with white vestments. At Rome this solemnity is especially marked by the conferral of the pallium on metropolitan archbishops as a sign of communion with the See of Peter.
$desc$),
('the-first-martyrs-of-holy-roman-church', $desc$
In the Roman General Calendar, this celebration falls on June 30 as an optional memorial with red vestments. Its position immediately after Saints Peter and Paul broadens Roman memory from the chief apostles to the anonymous multitude who died with them or soon after them.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'fr', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-justin-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 1er juin comme une mémoire obligatoire avec la couleur liturgique rouge. Le calendrier romain moderne a déplacé cette célébration du 14 avril au 1er juin afin de la rapprocher de l'usage ancien de Rome et de l'Orient et de la situer hors du cycle quadragésimal.
$desc$),
('saints-marcellinus-and-peter-martyrs', $desc$
Dans le calendrier romain général, cette célébration tombe le 2 juin comme une mémoire facultative avec la couleur liturgique rouge. Elle conserve la mémoire de deux martyrs romains anciens dont les noms demeurent dans le Canon romain.
$desc$),
('saints-charles-lwanga-and-companions-martyrs', $desc$
Dans le calendrier romain général, cette célébration tombe le 3 juin comme une mémoire obligatoire avec la couleur liturgique rouge. Sa place dans le calendrier romain moderne met en relief le témoignage des martyrs de l'Ouganda et la maturité des jeunes Églises d'Afrique.
$desc$),
('saint-boniface-bishop-and-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 5 juin comme une mémoire obligatoire avec la couleur liturgique rouge. Dans le rite romain, cette date garde devant l'Église entière la figure de l'évêque missionnaire que les pays germaniques honorent spécialement comme l'apôtre de l'Allemagne.
$desc$),
('saint-norbert-bishop', $desc$
Dans le calendrier romain général, cette célébration tombe le 6 juin comme une mémoire facultative avec la couleur liturgique blanche. Comme mémoire facultative, elle peut être observée là où ce témoignage répond plus particulièrement à la dévotion ou aux besoins pastoraux locaux.
$desc$),
('saint-ephrem-deacon-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 9 juin comme une mémoire facultative avec la couleur liturgique blanche. Son rang facultatif marque aussi la place faite, dans le rite romain, à un docteur syriaque dont la poésie a élargi la réception occidentale de la théologie orientale.
$desc$),
('saint-barnabas-apostle', $desc$
Dans le calendrier romain général, cette célébration tombe le 11 juin comme une mémoire obligatoire avec la couleur liturgique blanche. Comme mémoire obligatoire, elle donne au rite romain un repère annuel stable pour cette mémoire.
$desc$),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 13 juin comme une mémoire obligatoire avec la couleur liturgique blanche. Célébrée au jour lié à sa mort, elle reflète l'ampleur exceptionnelle de la dévotion envers Antoine dans tout le rite romain.
$desc$),
('saint-romuald-abbot', $desc$
Dans le calendrier romain général, cette célébration tombe le 19 juin comme une mémoire facultative avec la couleur liturgique blanche. Comme mémoire facultative, elle peut être observée là où ce témoignage répond plus particulièrement à la dévotion ou aux besoins pastoraux locaux.
$desc$),
('saint-aloysius-gonzaga-religious', $desc$
Dans le calendrier romain général, cette célébration tombe le 21 juin comme une mémoire obligatoire avec la couleur liturgique blanche. En beaucoup de lieux, cette journée garde aussi un lien fort avec la prière pour les jeunes et les étudiants sous son patronage.
$desc$),
('saint-paulinus-of-nola-bishop', $desc$
Dans le calendrier romain général, cette célébration tombe le 22 juin comme une mémoire facultative avec la couleur liturgique blanche. Comme mémoire facultative, elle peut être observée là où ce témoignage répond plus particulièrement à la dévotion ou aux besoins pastoraux locaux.
$desc$),
('saints-john-fisher-bishop-and-thomas-more-martyrs', $desc$
Dans le calendrier romain général, cette célébration tombe le 22 juin comme une mémoire facultative avec la couleur liturgique rouge. Le calendrier romain moderne unit délibérément l'évêque et l'homme d'État laïc dans une même observance de la conscience, de la communion ecclésiale et du martyre.
$desc$),
('the-nativity-of-saint-john-the-baptist', $desc$
Dans le calendrier romain général, cette célébration tombe le 24 juin comme une solennité avec la couleur liturgique blanche. Dans le rite romain, elle compte parmi les principales solennités fixes et demeure traditionnellement accompagnée d'une vigile et de coutumes populaires estivales.
$desc$),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 27 juin comme une mémoire facultative avec la couleur liturgique blanche. Sa place dans le calendrier romain moderne donne un relief particulier à Cyrille comme grand témoin de la christologie orthodoxe et de la doctrine mariale.
$desc$),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 28 juin comme une mémoire obligatoire avec la couleur liturgique rouge. Les livres romains actuels mettent en valeur à la fois son autorité doctrinale et son antique réputation de martyr, désormais exprimée dans son titre.
$desc$),
('saints-peter-and-paul-apostles', $desc$
Dans le calendrier romain général, cette célébration tombe le 29 juin comme une solennité avec la couleur liturgique blanche. À Rome, cette solennité est particulièrement marquée par la remise du pallium aux archevêques métropolitains en signe de communion avec le Siège de Pierre.
$desc$),
('the-first-martyrs-of-holy-roman-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 30 juin comme une mémoire facultative avec la couleur liturgique rouge. Sa place immédiatement après les saints Pierre et Paul élargit la mémoire romaine des princes des apôtres à la multitude anonyme qui mourut avec eux ou peu après eux.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'la', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-justin-martyr', $desc$
In Calendario Romano Generali haec celebratio die 1 Iunii ut memoria obligatoria vestibus rubris celebratur. Calendarium Romanum hodiernum hanc celebrationem a die 14 Aprilis ad diem 1 Iunii transtulit, ut antiquiori usui Romano atque Orientali propior esset et extra tempus quadragesimale celebraretur.
$desc$),
('saints-marcellinus-and-peter-martyrs', $desc$
In Calendario Romano Generali haec celebratio die 2 Iunii ut memoria ad libitum vestibus rubris celebratur. Sic in usu Romano memoria duorum martyrum antiquorum servatur, quorum nomina adhuc in Canone Romano resonant.
$desc$),
('saints-charles-lwanga-and-companions-martyrs', $desc$
In Calendario Romano Generali haec celebratio die 3 Iunii ut memoria obligatoria vestibus rubris celebratur. Eius locus in calendario Romano moderno testimonium martyrum Ugandensium et maturitatem iuvenum Ecclesiarum Africae illustrat.
$desc$),
('saint-boniface-bishop-and-martyr', $desc$
In Calendario Romano Generali haec celebratio die 5 Iunii ut memoria obligatoria vestibus rubris celebratur. Hoc die ritus Romanus universae Ecclesiae proponit episcopum missionarium quem regiones Germanicae peculiari honore tamquam Apostolum Germaniae venerantur.
$desc$),
('saint-norbert-bishop', $desc$
In Calendario Romano Generali haec celebratio die 6 Iunii ut memoria ad libitum vestibus albis celebratur. Quia memoria ad libitum est, facilius celebratur ubi huius testis cultus aut vis pastoralis peculiarius eminet.
$desc$),
('saint-ephrem-deacon-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 9 Iunii ut memoria ad libitum vestibus albis celebratur. Gradus ad libitum etiam ostendit locum in ritu Romano datum Doctori Syro, cuius poesis Occidenti theologiam Orientalem latius aperuit.
$desc$),
('saint-barnabas-apostle', $desc$
In Calendario Romano Generali haec celebratio die 11 Iunii ut memoria obligatoria vestibus albis celebratur. Quia memoria obligatoria est, ritui Romano stabilem annuam huius memoriae commemorationem praebet.
$desc$),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 13 Iunii ut memoria obligatoria vestibus albis celebratur. Cum die eius transitus celebretur, amplitudinem eximiam devotionis erga Antonium in toto ritu Romano declarat.
$desc$),
('saint-romuald-abbot', $desc$
In Calendario Romano Generali haec celebratio die 19 Iunii ut memoria ad libitum vestibus albis celebratur. Quia memoria ad libitum est, facilius celebratur ubi huius testis cultus aut vis pastoralis peculiarius eminet.
$desc$),
('saint-aloysius-gonzaga-religious', $desc$
In Calendario Romano Generali haec celebratio die 21 Iunii ut memoria obligatoria vestibus albis celebratur. Multis in locis hic dies etiam arcte cum precatione pro iuvenibus atque studentibus sub eius patrocinio coniungitur.
$desc$),
('saint-paulinus-of-nola-bishop', $desc$
In Calendario Romano Generali haec celebratio die 22 Iunii ut memoria ad libitum vestibus albis celebratur. Quia memoria ad libitum est, facilius celebratur ubi huius testis cultus aut vis pastoralis peculiarius eminet.
$desc$),
('saints-john-fisher-bishop-and-thomas-more-martyrs', $desc$
In Calendario Romano Generali haec celebratio die 22 Iunii ut memoria ad libitum vestibus rubris celebratur. Calendarium Romanum modernum consulto episcopum et virum publicum laicum in una observantia conscientiae, communionis ecclesialis et martyrii coniungit.
$desc$),
('the-nativity-of-saint-john-the-baptist', $desc$
In Calendario Romano Generali haec celebratio die 24 Iunii ut sollemnitas vestibus albis celebratur. In ritu Romano inter praecipuas sollemnitates fixas numeratur atque vigilia necnon aestivis consuetudinibus popularibus tradi solet.
$desc$),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 27 Iunii ut memoria ad libitum vestibus albis celebratur. Locus eius in calendario Romano moderno Cyrillum tamquam magnum testem christologiae orthodoxae et doctrinae marialis peculiarius illustrat.
$desc$),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 28 Iunii ut memoria obligatoria vestibus rubris celebratur. Libri Romani hodierni et doctrinalem eius auctoritatem et antiquam famam martyrii in ipso titulo clarius exprimunt.
$desc$),
('saints-peter-and-paul-apostles', $desc$
In Calendario Romano Generali haec celebratio die 29 Iunii ut sollemnitas vestibus albis celebratur. Romae haec sollemnitas praesertim insignitur pallii impositione archiepiscopis metropolitanis, in signum communionis cum Sede Petri.
$desc$),
('the-first-martyrs-of-holy-roman-church', $desc$
In Calendario Romano Generali haec celebratio die 30 Iunii ut memoria ad libitum vestibus rubris celebratur. Statim post sanctos Petrum et Paulum posita, memoria Romana a principibus apostolorum ad anonymam multitudinem cum eis vel paulo post passos dilatatur.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

-- =========================================================
-- Roman General Calendar - July (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
