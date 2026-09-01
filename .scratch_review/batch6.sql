BEGIN;

INSERT INTO feasts (slug, default_name, feast_type) VALUES
('first-sunday-of-advent', 'First Sunday of Advent', 'christological'),
('second-sunday-of-advent', 'Second Sunday of Advent', 'christological'),
('third-sunday-of-advent', 'Third Sunday of Advent', 'christological'),
('fourth-sunday-of-advent', 'Fourth Sunday of Advent', 'christological'),
('december-24-advent-feria', '24 December (Advent Feria)', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('first-sunday-of-advent', 'First Sunday of Advent', $desc$
The First Sunday of Advent begins the Church's season of watchful expectation and opens a new liturgical year with longing rather than possession. Over time the Western observance of Advent took shape through several converging traditions, but its enduring spiritual character has remained clear: the Church waits for the Lord who has come, who comes, and who will come in glory. The feast therefore places Christian life beneath the horizon of promise.

Its theology is one of wakeful hope. The readings summon the faithful to vigilance, repentance, and longing for the Lord who comes in history, sacrament, and final judgment. Advent opens not by turning immediately to Bethlehem's sentiment, but by placing the whole Church beneath the horizon of the Parousia, so that Christmas itself may be received as part of a larger mystery of divine coming.

The feast gives the whole season its first accent. Prophetic promise, eschatological vigilance, and the summons to conversion are joined so that Christmas may be received not as an isolated festival, but as part of the one mystery of God's coming. Advent begins, therefore, with awakened hope and disciplined waiting.

For the faithful today, the First Sunday of Advent is a remedy against spiritual drift. It invites believers to recover the art of waiting, to judge the passing year in the light of eternity, and to begin again with disciplined hope, trusting that the Lord who once came in humility still comes and will come in glory.
$desc$),
('second-sunday-of-advent', 'Second Sunday of Advent', $desc$
The Second Sunday of Advent deepens the season from general watchfulness into concrete preparation for the Lord's coming. John the Baptist stands at the center of its witness as the prophetic voice who calls hearts to repentance and makes ready a people for the Messiah. The feast teaches that hope becomes real when paths are straightened and lives are reformed.

Its theology centers on the making of a way for the Lord. John appears as the last and greatest prophetic voice before Christ's public manifestation, calling hearts to repentance so that divine consolation may be received rather than ignored. Advent hope is shown here not as passive wishing, but as the moral and spiritual straightening of paths for the coming King.

The day holds together consolation and urgency. Isaiah's promises of peace are not severed from the Baptist's austere summons; together they show that divine nearness is both gift and judgment. By contemplating this feast, believers learn that waiting for the Lord involves moral and spiritual reordering, not passive sentiment.

Pastorally, the Second Sunday of Advent calls communities to honest reform. It invites the faithful to attend to those habits, injustices, and inner crookedness that impede grace, and it presents John the Baptist as a model of courageous truthfulness in a culture that prefers distraction to repentance.
$desc$),
('third-sunday-of-advent', 'Third Sunday of Advent', $desc$
The Third Sunday of Advent, long known as Gaudete Sunday, lets joy sound clearly in the midst of waiting. That joy arises not from completion, but from the nearness of the One for whom the Church hopes. The feast teaches that Christian expectation is not gloomy suspense, but a gladness already touched by promised fulfillment.

Its theology is joy rooted in nearness, not in completion. John the Baptist still stands in the liturgy, but now his witness points explicitly to the One already among the people, though not yet fully recognized. Christian joy here is not premature triumphalism; it is the exultation of those who know salvation is at hand and whose hearts are being enlarged to receive it.

John the Baptist still appears as witness, yet his testimony now points with increasing clarity to the Lord already in the midst of his people. Joy and repentance therefore coexist, since salvation is near while hearts still need purification. The feast reveals that holiness does not extinguish joy, but makes it truer and more durable.

For believers today, the Third Sunday of Advent offers a deeply needed Christian understanding of joy. It teaches that joy can coexist with waiting, incompletion, and repentance, and it invites the faithful to cultivate gratitude, gentleness, and hopeful endurance in a world often suspicious of both holiness and happiness.
$desc$),
('fourth-sunday-of-advent', 'Fourth Sunday of Advent', $desc$
The Fourth Sunday of Advent belongs to the Church's immediate preparation for the Nativity and brings the season to its most concentrated form. The liturgy sets before the faithful the events nearest to the birth of Christ, especially the obedience of Mary and Joseph through which the divine promise enters human history. The feast shows that the Incarnation unfolds not in abstraction, but in concrete acts of faith, trust, and consent.

Its theology centers on obedient receptivity. Whether the liturgy hears of Mary's fiat or Joseph's just and trusting response, the day contemplates the way divine promise enters history through faith-filled consent. The Incarnation is shown not as mythic inevitability but as the free, grace-enabled cooperation of those chosen to receive the Messiah.

As Advent nears its fulfillment, the great horizon of prophecy narrows to the hidden places where God prepares his coming. House, family, promise, and womb become the setting of salvation history. The feast therefore teaches the faithful to await Christ not only on the scale of the ages, but in the ordinary circumstances where grace asks for a human yes.

Pastorally, the Fourth Sunday of Advent teaches the faithful how to wait in a personal rather than merely seasonal way. It invites them to imitate the faith of Mary and Joseph, to consent to God's action in ordinary circumstances, and to prepare for Christmas by interior availability rather than by external activity alone.
$desc$),
('december-24-advent-feria', '24 December (Advent Feria)', $desc$
The feria of 24 December marks the final daytime threshold of Advent before the celebration of Christmas begins. It belongs to the sequence of days in which the Church's longing becomes especially concentrated, above all through the great "O" Antiphons that gather up the titles and promises of the expected Messiah. The feast stands at the edge of fulfillment and gives waiting its most refined and prayerful expression.

Its theology is concentrated desire. The promises have converged; the names of the expected Savior are invoked one by one; and the Church stands at the very edge of fulfillment, praying with Israel's accumulated hope. This day is about nearness so complete that silence, recollection, and invocation become themselves forms of theological speech.

This day teaches the spiritual value of not rushing the mystery. Advent's desire is allowed to ripen fully before festal fulfillment arrives, and silence itself becomes eloquent. By lingering here, the faithful learn to receive the Nativity as gift rather than merely as occasion.

For the faithful, this day is a lesson in spiritual restraint and holy eagerness. It invites Christians to honor the last stretch of waiting, to pray with the O Antiphons, to let expectation ripen into adoration, and to enter Christmas not distracted and exhausted, but recollected and ready to receive the Savior.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('first-sunday-of-advent', 'Premier dimanche de l''Avent', $desc$
Le Premier dimanche de l'Avent inaugure la saison de l'attente vigilante et ouvre une nouvelle année liturgique dans le désir plutôt que dans la possession. Avec le temps, l'observance occidentale de l'Avent a pris forme par la convergence de plusieurs traditions, mais son caractère spirituel durable est demeuré clair: l'Église attend le Seigneur qui est venu, qui vient et qui viendra dans la gloire. La fête place ainsi la vie chrétienne sous l'horizon de la promesse.

Sa théologie est celle d'une espérance vigilante. Les lectures appellent les fidèles à la veille, à la conversion et au désir du Seigneur qui vient dans l'histoire, dans les sacrements et au jugement final. L'Avent ne s'ouvre donc pas en se tournant d'abord vers le seul sentiment de Bethléem, mais en plaçant toute l'Église sous l'horizon de la Parousie, afin que Noël lui-même soit reçu comme une partie d'un mystère plus vaste de venue divine.

La fête donne à toute la saison son premier accent. La promesse prophétique, la vigilance eschatologique et l'appel à la conversion y sont unis, afin que Noël soit reçu non comme une fête isolée, mais comme une partie du mystère unique de la venue de Dieu. L'Avent commence donc dans une espérance éveillée et une attente disciplinée.

Pour les fidèles aujourd'hui, le Premier dimanche de l'Avent est un remède contre l'errance spirituelle. Il invite les croyants à retrouver l'art d'attendre, à juger l'année qui s'achève à la lumière de l'éternité et à recommencer avec une espérance disciplinée, dans la confiance que le Seigneur qui est venu dans l'humilité vient encore et viendra dans la gloire.
$desc$),
('second-sunday-of-advent', 'Deuxième dimanche de l''Avent', $desc$
Le Deuxième dimanche de l'Avent approfondit la saison en la faisant passer d'une vigilance générale à une préparation concrète à la venue du Seigneur. Jean Baptiste se tient au centre de son témoignage comme la voix prophétique qui appelle les cœurs au repentir et prépare un peuple pour le Messie. La fête enseigne que l'espérance devient réelle lorsque les chemins sont redressés et les vies réformées.

Sa théologie est centrée sur la préparation d'un chemin pour le Seigneur. Jean apparaît comme la dernière et la plus grande voix prophétique avant la manifestation publique du Christ, appelant les cœurs au repentir afin que la consolation divine soit reçue et non ignorée. L'espérance de l'Avent s'y montre non comme un simple souhait passif, mais comme le redressement moral et spirituel des sentiers pour la venue du Roi.

Le jour tient ensemble la consolation et l'urgence. Les promesses de paix d'Isaïe ne sont pas séparées de l'appel austère du Baptiste; ensemble, elles montrent que la proximité de Dieu est à la fois don et jugement. En contemplant cette fête, les croyants apprennent que l'attente du Seigneur demande un redressement moral et spirituel, et non un simple sentiment passif.

Pastoralement, le Deuxième dimanche de l'Avent appelle les communautés à une réforme sincère. Il invite les fidèles à regarder en face les habitudes, les injustices et les courbures intérieures qui font obstacle à la grâce, et il présente Jean Baptiste comme modèle de vérité courageuse dans une culture qui préfère la distraction au repentir.
$desc$),
('third-sunday-of-advent', 'Troisième dimanche de l''Avent', $desc$
Le Troisième dimanche de l'Avent, appelé depuis longtemps Gaudete, laisse résonner plus clairement la joie au milieu de l'attente. Cette joie naît non de l'accomplissement déjà possédé, mais de la proximité de celui que l'Église espère. La fête enseigne que l'attente chrétienne n'est pas une suspension morose, mais une allégresse déjà touchée par l'accomplissement promis.

Sa théologie est celle de la joie enracinée dans la proximité, non dans l'achèvement déjà accompli. Jean Baptiste demeure encore dans la liturgie, mais son témoignage désigne maintenant plus explicitement Celui qui se tient déjà au milieu du peuple, quoique non encore pleinement reconnu. La joie chrétienne n'est donc pas ici un triomphalisme prématuré; elle est l'exultation de ceux qui savent le salut tout proche et dont le cœur s'élargit pour le recevoir.

Jean Baptiste demeure encore témoin, mais son témoignage désigne désormais avec une clarté croissante le Seigneur déjà présent au milieu de son peuple. Joie et repentir coexistent donc, puisque le salut est proche alors que les cœurs ont encore besoin de purification. La fête révèle que la sainteté n'éteint pas la joie, mais la rend plus vraie et plus durable.

Pour les croyants d'aujourd'hui, le Troisième dimanche de l'Avent offre une compréhension chrétienne profondément nécessaire de la joie. Il enseigne que la joie peut coexister avec l'attente, l'inachèvement et la pénitence, et il invite les fidèles à cultiver gratitude, douceur et persévérance espérante dans un monde souvent soupçonneux à l'égard de la sainteté comme du bonheur.
$desc$),
('fourth-sunday-of-advent', 'Quatrième dimanche de l''Avent', $desc$
Le Quatrième dimanche de l'Avent appartient à la préparation immédiate de la Nativité et conduit la saison à sa forme la plus concentrée. La liturgie place devant les fidèles les événements les plus proches de la naissance du Christ, en particulier l'obéissance de Marie et de Joseph par laquelle la promesse divine entre dans l'histoire humaine. La fête montre que l'Incarnation se déploie non dans l'abstraction, mais dans des actes concrets de foi, de confiance et de consentement.

Sa théologie est centrée sur l'accueil obéissant. Que la liturgie entende le fiat de Marie ou la réponse juste et confiante de Joseph, le jour contemple la manière dont la promesse divine entre dans l'histoire par le consentement rempli de foi. L'Incarnation apparaît non comme une fatalité mythique, mais comme la coopération libre, rendue possible par la grâce, de ceux qui sont choisis pour recevoir le Messie.

À mesure que l'Avent approche de son accomplissement, le grand horizon de la prophétie se resserre vers les lieux cachés où Dieu prépare sa venue. Maison, famille, promesse et sein maternel deviennent le théâtre de l'histoire du salut. La fête apprend ainsi aux fidèles à attendre le Christ non seulement à l'échelle des siècles, mais dans les circonstances ordinaires où la grâce demande un oui humain.

Pastoralement, le Quatrième dimanche de l'Avent enseigne aux fidèles comment attendre d'une manière personnelle et non seulement saisonnière. Il les invite à imiter la foi de Marie et de Joseph, à consentir à l'action de Dieu dans les circonstances ordinaires et à préparer Noël par une disponibilité intérieure plutôt que par la seule agitation extérieure.
$desc$),
('december-24-advent-feria', '24 décembre (Férie de l''Avent)', $desc$
La férie du 24 décembre marque le dernier seuil diurne de l'Avent avant le commencement de la célébration de Noël. Elle appartient à la suite des jours où le désir de l'Église se fait particulièrement concentré, surtout par les grandes antiennes en « O » qui recueillent les titres et les promesses du Messie attendu. La fête se tient au bord même de l'accomplissement et donne à l'attente son expression la plus pure et la plus priante.

Sa théologie est celle du désir concentré. Les promesses ont convergé; les noms du Sauveur attendu sont invoqués l'un après l'autre; et l'Église se tient au bord même de l'accomplissement, priant avec toute l'espérance accumulée d'Israël. Ce jour parle de proximité au point que le silence, le recueillement et l'invocation deviennent eux-mêmes une parole théologique.

Ce jour enseigne la valeur spirituelle de ne pas précipiter le mystère. Le désir de l'Avent est laissé à sa pleine maturation avant l'arrivée de l'accomplissement festif, et le silence lui-même devient éloquent. En demeurant ici, les fidèles apprennent à recevoir la Nativité comme un don et non comme une simple occasion.

Pour les fidèles, ce jour est une leçon de retenue spirituelle et d'impatience sainte. Il invite les chrétiens à honorer la dernière étape de l'attente, à prier avec les antiennes en O, à laisser le désir mûrir en adoration, et à entrer dans Noël non distraits et épuisés, mais recueillis et prêts à recevoir le Sauveur.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('first-sunday-of-advent', 'Dominica I Adventus', $desc$
Dominica I Adventus tempus vigilantis expectationis aperit atque novum annum liturgicum desiderio potius quam possessione incipit. Paulatim observantia Adventus in Occidente ex pluribus traditionibus confluens formata est, sed indoles eius spiritalis constans mansit: Ecclesia Dominum exspectat qui venit, qui venit in sacramentis et qui in gloria venturus est. Festum igitur vitam christianam sub horizonte promissionis collocat.

Theologia huius diei est vigilanter sperare. Lectiones fideles ad custodiam, conversionem et desiderium Domini vocant, qui in historia, in sacramentis et in ultimo iudicio venit. Adventus non statim ad affectum Bethlehemicum se convertendo aperitur, sed totam Ecclesiam sub horizonte Parusiae collocat, ut ipsum Natale pars maioris mysterii divini adventus suscipiatur.

Festum toti tempori primum accentum tribuit. Promissio prophetica, vigilantia eschatologica et vocatio ad conversionem coniunguntur, ut Natalis non tamquam isolata festivitas, sed tamquam pars unius mysterii divini adventus suscipiatur. Adventus igitur spe excitata et disciplinata expectatione incipit.

Fidelibus hodiernis Dominica I Adventus remedium est contra spiritualem vagationem. Credentes invitat ut artem exspectandi recuperent, annum transeuntem sub lumine aeternitatis iudicent, et cum spe disciplinata denuo incipiant, freti Domino qui olim in humilitate venit nunc quoque venire et in gloria venturum esse.
$desc$),
('second-sunday-of-advent', 'Dominica II Adventus', $desc$
Dominica II Adventus tempus a generali vigilantia ad concretam praeparationem ad Domini adventum altius ducit. Ioannes Baptista in medio eius testimonio stat ut vox prophetica quae corda ad paenitentiam vocat et populum Messiae praeparat. Festum docet spem veram fieri cum semitae diriguntur et vita reformatur.

Theologia diei in praeparatione viae Domini consistit. Ioannes apparet ut ultima ac maxima vox prophetica ante publicam Christi manifestationem, corda ad paenitentiam vocans ut consolatio divina recipiatur, non negligatur. Spes Adventus hic ostenditur non ut votum passivum, sed ut rectificatio moralis et spiritualis semitarum pro Rege venturo.

Dies consolationem et urgentiam simul continet. Promissiones Isaiae de pace a severa Baptistae vocatione non separantur; simul enim ostendunt divinam propinquitatem et donum esse et iudicium. Hanc festivitatem contemplantes credentes discunt exspectationem Domini moralem ac spiritualem redirectionem, non passivum sensum, requirere.

Pastoraliter Dominica II Adventus communitates ad sinceram reformationem vocat. Fideles invitat ut habitus, iniustitias et interiorem pravitatem quae gratiae obstacula ponunt agnoscant, atque Ioannem Baptistam exemplar veritatis fortis proponit in cultura quae distrahendi potius quam paenitendi studiosissima est.
$desc$),
('third-sunday-of-advent', 'Dominica III Adventus', $desc$
Dominica III Adventus, quae iamdiu Gaudete appellatur, gaudium clarius in medio expectationis resonare sinit. Hoc gaudium non ex perfectione iam habita, sed ex propinquitate eius quem Ecclesia sperat oritur. Festum docet expectationem christianam non esse maestam suspensionem, sed laetitiam iam promissae plenitudinis tactam.

Theologia huius diei est gaudium in propinquitate radicatum, non in perfectione iam possessa. Ioannes Baptista adhuc in liturgia stat, sed testimonium eius nunc clarius ad eum dirigit qui iam inter populum adest, quamvis nondum plene agnoscatur. Gaudium christianum hic non est immaturus triumphalismus; est exsultatio eorum qui salutem adesse sciunt et quorum corda ad eam suscipiendam dilatantur.

Ioannes Baptista adhuc testis apparet, sed testimonium eius ad Dominum iam inter populum suum praesentem magis magisque perspicue demonstrat. Gaudium igitur et paenitentia simul permanent, quia salus propinqua est dum corda purificatione adhuc egent. Festum ostendit sanctitatem gaudium non extinguere, sed verius et diuturnius efficere.

Credentibus hodiernis Dominica III Adventus valde necessariam christiani gaudii intelligentiam offert. Docet gaudium cum expectatione, imperfecto statu et paenitentia coexistere posse, fidelesque invitat ut gratiam, mansuetudinem et perseverantem spem colant in mundo qui sanctitati pariter ac felicitati saepe diffidit.
$desc$),
('fourth-sunday-of-advent', 'Dominica IV Adventus', $desc$
Dominica IV Adventus ad immediatam Nativitatis praeparationem pertinet atque tempus ad summam contractionem perducit. Liturgia eventus nativitati Christi proximos ante fideles ponit, praesertim oboedientiam Mariae et Ioseph per quam promissio divina in historiam humanam ingreditur. Festum demonstrat Incarnationem non in abstractione, sed in concretis fidei, fiduciae et consensus actibus explicari.

Theologia diei circa oboedientem receptionem versatur. Sive liturgia fiat Mariae sive iustum et fiduciale responsum Ioseph proponat, dies contemplatur quomodo promissio divina per fidelem consensum in historiam ingrediatur. Incarnatio non ut fatalitas mythica, sed ut libera cooperatio gratia possibilis facta eorum qui ad Messiam recipiendum electi sunt ostenditur.

Cum Adventus ad suam impletionem appropinquat, magnus prophetiae horizon ad occulta loca contrahitur ubi Deus adventum suum praeparat. Domus, familia, promissio et uterus scena historiae salutis fiunt. Festum fideles docet Christum exspectare non solum in mensura saeculorum, sed etiam in ordinariis circumstantiis ubi gratia humanum assensum postulat.

Pastoraliter Dominica IV Adventus fideles docet quomodo personaliter, non solum temporaliter, exspectare debeant. Invitat ut fidem Mariae et Ioseph imitentur, actioni Dei in ordinariis circumstantiis consentiant, et ad Natale per interiorem disponibilitatem magis quam per solam externam occupationem se parent.
$desc$),
('december-24-advent-feria', 'Die 24 Decembris (Feria Adventus)', $desc$
Feria diei XXIV Decembris ultimum momentum diurnum Adventus significat ante initium celebrationis Nativitatis. Ad seriem dierum pertinet quibus desiderium Ecclesiae maxime contrahitur, praesertim per magnas antiphonas O quae titulos et promissiones Messiae exspectati colligunt. Festum in ipso limine impletionis stat atque expectationi purissimam et orantem formam tribuit.

Theologia huius diei est desiderium contractum atque intentum. Promissiones convenerunt; nomina Salvatoris exspectati singillatim invocantur; et Ecclesia in ipso impletionis limine consistit, cum tota Israelitica spe accumulata orans. Dies de tanta proximitate loquitur ut ipsum silentium, recollectio et invocatio formae sermonis theologici fiant.

Hic dies spiritalem vim docet mysterium non praecipitandi. Desiderium Adventus ad plenam maturationem perducitur antequam festiva impletio adveniat, et ipsum silentium eloquens efficitur. Hic morantes fideles discunt Nativitatem ut donum, non ut simplicem occasionem, suscipere.

Fidelibus hic dies documentum est spiritualis temperantiae et sancti desiderii. Christianos invitat ut extremam expectationis tractum honorent, cum antiphonis O orent, desiderium in adorationem maturescere sinant, atque Natale non distracti et fessi sed recollecti ac parati ad suscipiendum Salvatorem ingrediantur.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- CELEBRATIONS (movable Sundays: 1st Sunday of Advent + 7, +14, +21)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'movable', x.movable_base, x.movable_offset_days, x.observance_type, FALSE, 'Roman General Calendar'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('first-sunday-of-advent', 'FIRST_ADVENT_SUNDAY', 0, 'SUNDAY_ADVENT_LENT_EASTER', 'PURPLE', 'normal'),
('second-sunday-of-advent', 'FIRST_ADVENT_SUNDAY', 7, 'SUNDAY_ADVENT_LENT_EASTER', 'PURPLE', 'normal'),
('third-sunday-of-advent', 'FIRST_ADVENT_SUNDAY', 14, 'SUNDAY_ADVENT_LENT_EASTER', 'ROSE', 'normal'),
('fourth-sunday-of-advent', 'FIRST_ADVENT_SUNDAY', 21, 'SUNDAY_ADVENT_LENT_EASTER', 'PURPLE', 'normal')
) AS x(slug, movable_base, movable_offset_days, rank_code, color_code, observance_type)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- CELEBRATION (Dec 24 as fixed Advent feria marker, daytime before Christmas Vigil)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', 12, 24, 'normal', FALSE, 'Roman General Calendar'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA_PRIVILEGED'
LEFT JOIN liturgical_colors lc ON lc.code = 'PURPLE'
WHERE f.slug = 'december-24-advent-feria'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('first-sunday-of-advent', $desc$
In the Roman General Calendar this celebration is the movable first Advent Sunday and marks the beginning of the liturgical year. It is kept in purple and establishes the season's eschatological tone.
$desc$),
('second-sunday-of-advent', $desc$
In the Roman General Calendar this Sunday falls seven days after the First Sunday of Advent and is celebrated in purple. The liturgy prominently features John the Baptist and the prophetic preparation of the Lord's way.
$desc$),
('third-sunday-of-advent', $desc$
In the Roman General Calendar this Sunday falls fourteen days after the First Sunday of Advent and is marked with rose vestments as Gaudete Sunday. Its celebration allows a perceptible brightening of tone while remaining fully within Advent.
$desc$),
('fourth-sunday-of-advent', $desc$
In the Roman General Calendar this Sunday falls twenty-one days after the First Sunday of Advent and is kept in purple. It provides the final Sunday preparation immediately before the Christmas liturgies.
$desc$),
('december-24-advent-feria', $desc$
In the Roman General Calendar this record marks the daytime feria of 24 December before the Christmas Vigil begins. It is kept as a privileged Advent feria in purple and preserves the last hours of waiting, especially in continuity with the O Antiphons and the proper texts of 17-24 December.
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
('first-sunday-of-advent', $desc$
Dans le Calendrier romain général, cette célébration est le premier dimanche mobile de l'Avent et marque l'ouverture de l'année liturgique. Elle est gardée en violet et donne à la saison sa tonalité eschatologique.
$desc$),
('second-sunday-of-advent', $desc$
Dans le Calendrier romain général, ce dimanche tombe sept jours après le Premier dimanche de l'Avent et se célèbre en violet. La liturgie y met fortement en valeur Jean Baptiste et la préparation prophétique du chemin du Seigneur.
$desc$),
('third-sunday-of-advent', $desc$
Dans le Calendrier romain général, ce dimanche tombe quatorze jours après le Premier dimanche de l'Avent et est marqué par le rose comme dimanche de Gaudete. La célébration y permet un éclaircissement perceptible du ton tout en demeurant pleinement dans l'Avent.
$desc$),
('fourth-sunday-of-advent', $desc$
Dans le Calendrier romain général, ce dimanche tombe vingt-et-un jours après le Premier dimanche de l'Avent et est gardé en violet. Il constitue la dernière préparation dominicale immédiatement avant les liturgies de Noël.
$desc$),
('december-24-advent-feria', $desc$
Dans le Calendrier romain général, cet enregistrement marque la férie diurne du 24 décembre avant le commencement de la Vigile de Noël. Elle est gardée comme féria privilégiée de l'Avent en violet et préserve les dernières heures d'attente, spécialement en continuité avec les antiennes en O et les textes propres du 17 au 24 décembre.
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
('first-sunday-of-advent', $desc$
In Calendario Romano Generali haec celebratio est prima dominica Adventus mobilis atque initium anni liturgici significat. Violaceo servatur et tempori accentum eschatologicum tribuit.
$desc$),
('second-sunday-of-advent', $desc$
In Calendario Romano Generali haec dominica septem diebus post Dominicam I Adventus occurrit et violacea celebratur. Liturgia Ioannem Baptistam et propheticam viae Domini praeparationem praecipue extollit.
$desc$),
('third-sunday-of-advent', $desc$
In Calendario Romano Generali haec dominica quattuordecim diebus post Dominicam I Adventus occurrit et rosaceo insignitur ut Dominica Gaudete. Celebratio sonum clarius laetum admittit, manens tamen plene intra Adventum.
$desc$),
('fourth-sunday-of-advent', $desc$
In Calendario Romano Generali haec dominica viginti uno die post Dominicam I Adventus occurrit et violacea servatur. Ultimam dominicalem praeparationem immediate ante liturgias Nativitatis praebet.
$desc$),
('december-24-advent-feria', $desc$
In Calendario Romano Generali hic titulus feriam diurnam diei XXIV Decembris notat antequam Vigilia Nativitatis incipiat. Ut feria Adventus privilegiata violacea servatur atque ultimas expectationis horas, praesertim cum antiphonis O et textibus propriis dierum XVII-XXIV Decembris, custodit.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;


-- =========================================================
-- CENTRAL MOVABLE TEMPORAL BLOCK
-- (Ascension, Pentecost, Trinity, Corpus Christi,
--  Sacred Heart, Immaculate Heart, Christ the King)
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('the-ascension-of-the-lord', 'The Ascension of the Lord', 'christological'),
('pentecost-sunday', 'Pentecost Sunday', 'christological'),
('blessed-virgin-mary-mother-of-the-church', 'Blessed Virgin Mary, Mother of the Church', 'marian'),
('the-most-holy-trinity', 'The Most Holy Trinity', 'christological'),
('the-most-holy-body-and-blood-of-christ', 'The Most Holy Body and Blood of Christ', 'christological'),
('the-most-sacred-heart-of-jesus', 'The Most Sacred Heart of Jesus', 'christological'),
('the-immaculate-heart-of-the-blessed-virgin-mary', 'The Immaculate Heart of the Blessed Virgin Mary', 'marian'),
('our-lord-jesus-christ-king-of-the-universe', 'Our Lord Jesus Christ, King of the Universe', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('the-ascension-of-the-lord', 'The Ascension of the Lord', $desc$
The Ascension of the Lord emerged very early as a distinct feast within the Easter mystery, even though the earliest Christian centuries often contemplated resurrection, exaltation, and the gift of the Spirit together. By the fourth century the observance was firmly attested in East and West, shaped above all by Acts 1 and by the Church's confession that the risen Christ is enthroned in glory. The feast proclaims not absence, but exaltation.

Theologically, the Ascension is not Christ's departure into absence but his enthronement in glorified humanity at the Father's right hand. It reveals that the one who descended has carried human nature into the divine life, where he intercedes as priest, reigns as Lord, and prepares a place for his members. The feast therefore safeguards both the realism of the Incarnation and the cosmic scope of redemption.

The mystery celebrated here binds heaven and earth together. Christ departs from the sight of the disciples, yet precisely by ascending he becomes the source of their mission and hope. The feast therefore teaches that the glorified Lord remains present to his Church and that human destiny is already opened in him.

For the faithful today, the Ascension teaches how to live between visibility and faith. It invites Christians to seek the things that are above without abandoning earthly responsibility, to understand mission as participation in the reign of the exalted Christ, and to find hope in the truth that human life is already represented in heaven.
$desc$),
('pentecost-sunday', 'Pentecost Sunday', $desc$
Pentecost Sunday, rooted in the Jewish feast of Weeks, has from the apostolic age been understood as the outpouring of the Holy Spirit promised by the risen Christ. Christian tradition linked it inseparably to the completion of Easter, for the paschal mystery reaches its manifest fruit when the Spirit is given to the Church. The feast celebrates both fulfillment and beginning: the completion of the Fifty Days and the public birth of the apostolic mission.

Its theology is the birth of the Church in manifest power. The Spirit descends not merely as consolation, but as the divine gift who unites believers to Christ, reverses Babel by creating communion among peoples, and sends the apostolic Church outward in intelligible proclamation. Pentecost reveals that redemption is not complete until the risen Lord's life becomes interiorly active in his people through the Holy Spirit.

The signs of wind, fire, speech, and gathered peoples reveal the scope of the mystery. Babel is answered by communion, fear by bold proclamation, and dispersion by a people drawn together in one Spirit. Pentecost teaches that the Church lives not by memory alone, but by the indwelling power of the Holy Spirit who sanctifies, unites, and sends.

Pastorally, Pentecost Sunday remains indispensable for communities tempted either to reduce faith to institution or to sever spirituality from the Church. It calls the faithful to invoke the Spirit for holiness, courage, discernment, and reconciliation, and it reminds them that every genuine renewal in the Church must be both charismatic and ecclesial.
$desc$),
('blessed-virgin-mary-mother-of-the-church', 'Blessed Virgin Mary, Mother of the Church', $desc$
The title Mother of the Church is ancient in theological substance, for it expresses Mary's inseparable relationship to Christ and to all who live in him. Patristic reflection, conciliar teaching, and longstanding devotion have recognized that she who bore the Head also exercises a maternal role toward his members. The feast honors not an isolated privilege, but Mary's place within the mystery of the Church itself.

Its theology rests on Mary's inseparable relation to the mystery of Christ and the Church. She is Mother of the Head and therefore, by grace, Mother of the members; at the Cross she receives the beloved disciple, and in the upper room she perseveres in prayer with the apostolic community awaiting the Spirit. The memorial therefore contemplates not a private Marian privilege alone, but Mary's maternal presence within the Church's very birth and life.

Mary's motherhood appears especially at the Cross and in the upper room. She receives the beloved disciple, perseveres in prayer with the apostolic community, and stands as figure and mother of the Church as it is born from Christ's Pasch and vivified by the Spirit. The feast therefore invites the faithful to contemplate Marian devotion in a deeply ecclesial way.

For the faithful, this day offers a deeply ecclesial Marian devotion. It invites Christians to see Mary not as a figure distant from ordinary discipleship, but as mother, model, and intercessor for the Church's unity, holiness, and missionary fruitfulness, especially in times when the faithful need consolation, steadfastness, and deeper communion.
$desc$),
('the-most-holy-trinity', 'The Most Holy Trinity', $desc$
The Solemnity of the Most Holy Trinity arose from the Church's desire to give explicit praise to the mystery already confessed in every baptism, doxology, and act of worship. Unlike feasts focused on a single event, it directs contemplation toward the eternal life of God himself as Father, Son, and Holy Spirit. The feast stands as a summit of Christian doctrine and prayer.

Its theology reaches the summit of Christian doctrine. The Trinity is not a mathematical puzzle but the revealed life of God himself: the Father eternally begetting the Son, the Son eternally receiving all from the Father, and the Holy Spirit proceeding as the bond of divine love. The feast teaches that salvation history has a Trinitarian source and goal, and that grace draws believers into communion with the living God rather than into a merely moral system.

This mystery is not an abstract puzzle, but the source and goal of salvation. The Father sends the Son, the Son reveals the Father, and the Holy Spirit draws believers into communion with the living God. The feast teaches that Christian life is participation in Trinitarian love rather than adherence to a merely moral system.

For the faithful today, Trinity Sunday invites adoration, intellectual humility, and renewed confidence in the coherence of Christian revelation. It reminds believers that prayer, sacrament, mission, and charity all originate in and return to the Triune God, and it encourages them to let the sign of the Cross, so often made, become a conscious confession of the God in whose name they live.
$desc$),
('the-most-holy-body-and-blood-of-christ', 'The Most Holy Body and Blood of Christ', $desc$
The Solemnity of the Most Holy Body and Blood of Christ, historically Corpus Christi, arose in the thirteenth century through the influence of Saint Juliana of Liège and the eucharistic devotion of the medieval West. It developed as a distinct act of praise for the sacramental presence already adored and received throughout the Church's life. The feast gives concentrated expression to faith in the Eucharistic mystery.

Its theology is a concentrated confession of the Real Presence and of the sacrificial banquet of the new covenant. The Church honors not a symbol detached from the Paschal Mystery, but the living Body given up and the Blood poured out for the life of the world. Corpus Christi therefore guards eucharistic faith against reductionism and insists that adoration, communion, and sacrifice belong together.

The mystery honored here is not a symbol detached from Christ's saving work, but the living Body given up and the Blood poured out for the life of the world. Adoration, sacrifice, and communion therefore belong together. By celebrating this feast, the Church confesses that the risen Lord remains truly present and continues to gather his people into one body.

For the faithful, this day is both doctrinal and pastoral nourishment. It calls believers to deeper reverence at Mass, more intelligent participation in eucharistic worship, and renewed awareness that Christ's eucharistic presence binds the Church into one body and sends her outward to become what she receives.
$desc$),
('the-most-sacred-heart-of-jesus', 'The Most Sacred Heart of Jesus', $desc$
The Solemnity of the Most Sacred Heart of Jesus developed from biblical and patristic meditation on the pierced side of Christ and on the love revealed in his humanity. Later devotion, given special shape through the witness of Saint Margaret Mary Alacoque and those who promoted reparation and trust, helped the feast take lasting liturgical form. It contemplates divine charity made visible and accessible in the Heart of the Incarnate Word.

Its theology contemplates in the Heart of Christ the personal center of the Incarnate Word's human love and the visible sign of the divine charity that saves the world. The pierced Heart gathers together Incarnation, Passion, Eucharist, reparation, and mercy: it is the Heart that loved unto the end and still invites sinners into communion. The feast insists that divine love is not abstract benevolence but a love embodied, wounded, and victorious.

The Heart of Christ signifies both the depth of his human love and the inexhaustible mercy of God. Incarnation, Passion, Eucharist, reparation, and consolation converge here, for the pierced Heart is the Heart that loved to the end. The feast invites believers to meet in Christ not an impersonal principle, but a living and wounded love that saves.

For the faithful today, the Sacred Heart remains a powerful antidote to cynicism, fear, and impersonal religion. It invites acts of trust, reparation, and consecration, but above all it calls Christians to be conformed to the charity of Christ himself, learning mercy, fidelity, and sacrificial love from the Heart opened for the life of the world.
$desc$),
('the-immaculate-heart-of-the-blessed-virgin-mary', 'The Immaculate Heart of the Blessed Virgin Mary', $desc$
Devotion to the Immaculate Heart of Mary grew from the Gospel image of the Mother of the Lord who keeps all things in her heart and ponders them before God. Over time the Church came to honor in a particular way the interior holiness, faith, compassion, and receptivity that mark Mary's response to grace. The feast contemplates a human heart perfectly ordered to God and fully conformed to Christ.

Its theology is wholly Christocentric and ecclesial. Mary's heart is honored not as a rival center of devotion, but as the perfectly receptive, faith-filled heart conformed to her Son - the heart that believed, suffered, interceded, and pondered the mysteries of salvation. The memorial shows what grace can accomplish in a human creature fully open to God's word.

Mary's heart is honored not as a rival center of devotion, but as the clearest created image of faithful discipleship. She believes, suffers, intercedes, and receives the word without reserve. The feast therefore offers the faithful a school of contemplation, purity of intention, and compassionate union with the saving work of her Son.

For the faithful, the Immaculate Heart offers a school of interior discipleship. It encourages pondering of God's word, purity of intention, compassionate solidarity with the suffering, and filial entrustment to the Mother who teaches the Church how to receive Christ without reserve.
$desc$),
('our-lord-jesus-christ-king-of-the-universe', 'Our Lord Jesus Christ, King of the Universe', $desc$
The Solemnity of Our Lord Jesus Christ, King of the Universe proclaims the universal sovereignty of the crucified and risen Lord over history, creation, and every human heart. Instituted in the twentieth century in response to the practical denial of Christ's lordship, it gave liturgical voice to a truth already deeply rooted in Scripture and tradition. The feast confesses that no realm of life lies outside the claim of the Son of God.

Its theology proclaims the universal sovereignty of the crucified and risen Lord. Christ reigns not by coercion but by truth, holiness, grace, justice, love, and peace; his kingdom is already present in mystery and yet awaits consummation when all things are subjected to him. The feast therefore resists both political reductionism and privatized religion by declaring that all history, all authority, and all human destiny find their meaning in Christ.

Christ reigns not by coercion but by truth, holiness, grace, justice, love, and peace. His kingdom is already present in mystery and yet awaits its consummation when all things are subjected to him. The feast therefore resists both political idolatry and privatized religion by declaring that human destiny and the meaning of history are found in Christ alone.

For the faithful today, Christ the King remains a searching examination of loyalty. It asks where Christians have allowed political ideologies, private ambition, or cultural fashions to usurp the place that belongs to Christ alone, and it invites them to renew their allegiance to his kingdom through worship, moral integrity, service of the poor, and hope for the final renewal of all things.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('the-ascension-of-the-lord', 'Ascension du Seigneur', $desc$
L'Ascension du Seigneur est apparue très tôt comme une fête distincte à l'intérieur du mystère pascal, même si les premiers siècles chrétiens contemplaient souvent ensemble la résurrection, l'exaltation et le don de l'Esprit. Dès le IVe siècle, l'observance est fermement attestée en Orient comme en Occident, surtout à partir d'Actes 1 et de la confession ecclésiale du Christ ressuscité intronisé dans la gloire. La fête proclame non l'absence, mais l'exaltation.

Théologiquement, l'Ascension n'est pas le départ du Christ vers une absence, mais l'intronisation de son humanité glorifiée à la droite du Père. Elle révèle que celui qui est descendu a porté la nature humaine dans la vie divine, où il intercède comme prêtre, règne comme Seigneur et prépare une place pour ses membres. La fête sauvegarde ainsi à la fois le réalisme de l'Incarnation et la portée cosmique de la rédemption.

Le mystère célébré ici relie le ciel et la terre. Le Christ se retire au regard des disciples, mais c'est précisément en montant qu'il devient la source de leur mission et de leur espérance. La fête enseigne donc que le Seigneur glorifié demeure présent à son Église et qu'en lui la destinée humaine est déjà ouverte.

Pour les fidèles aujourd'hui, l'Ascension enseigne comment vivre entre visibilité et foi. Elle invite les chrétiens à rechercher les réalités d'en haut sans abandonner les responsabilités terrestres, à comprendre la mission comme participation au règne du Christ exalté et à trouver l'espérance dans la vérité que la vie humaine est déjà représentée au ciel.
$desc$),
('pentecost-sunday', 'Dimanche de la Pentecôte', $desc$
Le Dimanche de la Pentecôte, enraciné dans la fête juive des Semaines, a été compris dès l'époque apostolique comme l'effusion de l'Esprit Saint promise par le Christ ressuscité. La tradition chrétienne l'a liée inséparablement à l'achèvement de Pâques, puisque le mystère pascal porte son fruit manifeste lorsque l'Esprit est donné à l'Église. La fête célèbre à la fois un accomplissement et un commencement: l'achèvement des cinquante jours et la naissance publique de la mission apostolique.

Sa théologie est celle de la naissance de l'Église dans une puissance manifeste. L'Esprit descend non comme simple consolation, mais comme don divin qui unit les croyants au Christ, inverse Babel en créant la communion entre les peuples et envoie l'Église apostolique au dehors dans une proclamation intelligible. La Pentecôte révèle que la rédemption n'est pas achevée tant que la vie du Ressuscité n'est pas devenue intérieurement agissante dans son peuple par l'Esprit Saint.

Les signes du vent, du feu, de la parole et des peuples rassemblés révèlent l'ampleur du mystère. Babel reçoit ici sa réponse dans la communion, la peur cède à l'audace de la proclamation, et la dispersion à un peuple réuni dans l'unique Esprit. La Pentecôte enseigne que l'Église ne vit pas de la seule mémoire, mais de la puissance intérieure de l'Esprit Saint qui sanctifie, unit et envoie.

Pastoralement, le Dimanche de la Pentecôte demeure indispensable pour des communautés tentées soit de réduire la foi à l'institution, soit de séparer la spiritualité de l'Église. Il appelle les fidèles à invoquer l'Esprit pour la sainteté, le courage, le discernement et la réconciliation, et il leur rappelle que tout renouveau authentique dans l'Église doit être à la fois charismatique et ecclésial.
$desc$),
('blessed-virgin-mary-mother-of-the-church', 'Bienheureuse Vierge Marie, Mère de l''Église', $desc$
Le titre de Mère de l'Église est ancien dans sa substance théologique, car il exprime le lien inséparable de Marie avec le Christ et avec tous ceux qui vivent en lui. La réflexion patristique, l'enseignement conciliaire et une longue dévotion ont reconnu que celle qui a porté la Tête exerce aussi une maternité envers ses membres. La fête honore donc non un privilège isolé, mais la place de Marie dans le mystère même de l'Église.

Sa théologie repose sur le lien inséparable de Marie avec le mystère du Christ et de l'Église. Elle est Mère de la Tête et donc, par grâce, mère des membres; au pied de la Croix elle reçoit le disciple bien-aimé, et au Cénacle elle persévère dans la prière avec la communauté apostolique en attente de l'Esprit. La mémoire contemple donc non pas un privilège marial privé, mais la présence maternelle de Marie dans la naissance et la vie mêmes de l'Église.

La maternité de Marie apparaît avec une intensité particulière au pied de la Croix et au cénacle. Elle reçoit le disciple bien-aimé, persévère dans la prière avec la communauté apostolique et demeure figure et mère de l'Église née de la Pâque du Christ et vivifiée par l'Esprit. La fête invite ainsi les fidèles à contempler la dévotion mariale d'une manière profondément ecclésiale.

Pour les fidèles, ce jour offre une dévotion mariale profondément ecclésiale. Il invite les chrétiens à voir Marie non comme une figure éloignée du discipulat ordinaire, mais comme mère, modèle et intercesseur pour l'unité, la sainteté et la fécondité missionnaire de l'Église, spécialement dans les temps où les fidèles ont besoin de consolation, de fermeté et d'une communion plus profonde.
$desc$),
('the-most-holy-trinity', 'La Très Sainte Trinité', $desc$
La Solennité de la Très Sainte Trinité est née du désir de l'Église d'offrir une louange explicite au mystère déjà confessé dans tout baptême, toute doxologie et tout acte de culte. À la différence des fêtes centrées sur un événement unique, elle dirige la contemplation vers la vie éternelle de Dieu lui-même comme Père, Fils et Saint-Esprit. La fête se tient ainsi comme un sommet de la doctrine et de la prière chrétiennes.

Sa théologie atteint le sommet de la doctrine chrétienne. La Trinité n'est pas une énigme mathématique, mais la vie révélée de Dieu lui-même: le Père engendrant éternellement le Fils, le Fils recevant éternellement tout du Père et l'Esprit Saint procédant comme lien d'amour divin. La fête enseigne que l'histoire du salut a une source et une fin trinitaires, et que la grâce attire les croyants dans la communion avec le Dieu vivant plutôt que dans un simple système moral.

Ce mystère n'est pas une énigme abstraite, mais la source et le terme du salut. Le Père envoie le Fils, le Fils révèle le Père et l'Esprit Saint introduit les croyants dans la communion avec le Dieu vivant. La fête enseigne que la vie chrétienne est participation à l'amour trinitaire et non adhésion à un simple système moral.

Pour les fidèles aujourd'hui, le dimanche de la Trinité invite à l'adoration, à l'humilité intellectuelle et à une confiance renouvelée dans la cohérence de la révélation chrétienne. Il rappelle que la prière, le sacrement, la mission et la charité ont tous leur origine et leur terme dans le Dieu Trine, et il encourage les croyants à faire du signe de la croix, si souvent tracé, une confession consciente du Dieu au nom duquel ils vivent.
$desc$),
('the-most-holy-body-and-blood-of-christ', 'Le Très Saint Corps et Sang du Christ', $desc$
La Solennité du Très Saint Corps et Sang du Christ, historiquement Corpus Christi, est née au XIIIe siècle sous l'influence de sainte Julienne de Liège et de la dévotion eucharistique de l'Occident médiéval. Elle s'est développée comme un acte distinct de louange envers la présence sacramentelle déjà adorée et reçue dans toute la vie de l'Église. La fête donne une expression particulièrement concentrée à la foi au mystère eucharistique.

Sa théologie est une confession concentrée de la présence réelle et du banquet sacrificiel de l'alliance nouvelle. L'Église honore non pas un symbole détaché du Mystère pascal, mais le Corps vivant livré et le Sang répandu pour la vie du monde. Corpus Christi protège ainsi la foi eucharistique contre toute réduction et affirme que l'adoration, la communion et le sacrifice vont ensemble.

Le mystère honoré ici n'est pas un symbole séparé de l'œuvre salvifique du Christ, mais le Corps vivant livré et le Sang versé pour la vie du monde. L'adoration, le sacrifice et la communion vont donc ensemble. En célébrant cette fête, l'Église confesse que le Seigneur ressuscité demeure vraiment présent et continue de rassembler son peuple en un seul corps.

Pour les fidèles, ce jour est à la fois doctrine et nourriture pastorale. Il appelle à une révérence plus profonde à la messe, à une participation plus intelligente au culte eucharistique et à une conscience renouvelée que la présence eucharistique du Christ unifie l'Église en un seul corps et l'envoie au dehors pour devenir ce qu'elle reçoit.
$desc$),
('the-most-sacred-heart-of-jesus', 'Le Sacré-Cœur de Jésus', $desc$
La Solennité du Sacré-Cœur de Jésus s'est développée à partir de la méditation biblique et patristique du côté transpercé du Christ et de l'amour révélé dans son humanité. Une dévotion ultérieure, particulièrement marquée par le témoignage de sainte Marguerite-Marie Alacoque et de ceux qui ont promu la confiance et la réparation, a aidé la fête à prendre une forme liturgique durable. Elle contemple la charité divine rendue visible et accessible dans le Cœur du Verbe incarné.

Sa théologie contemple dans le Cœur du Christ le centre personnel de l'amour humain du Verbe incarné et le signe visible de la charité divine qui sauve le monde. Le Cœur transpercé rassemble Incarnation, Passion, Eucharistie, réparation et miséricorde: c'est le Cœur qui a aimé jusqu'à l'extrême et qui invite encore les pécheurs à la communion. La fête affirme que l'amour divin n'est pas une bienveillance abstraite, mais un amour incarné, blessé et victorieux.

Le Cœur du Christ signifie à la fois la profondeur de son amour humain et l'inépuisable miséricorde de Dieu. Incarnation, Passion, Eucharistie, réparation et consolation y convergent, car le Cœur transpercé est le Cœur qui a aimé jusqu'à l'extrême. La fête invite les croyants à rencontrer dans le Christ non un principe impersonnel, mais un amour vivant, blessé et sauveur.

Pour les fidèles aujourd'hui, le Sacré-Cœur demeure un puissant antidote au cynisme, à la peur et à la religion impersonnelle. Il invite aux actes de confiance, de réparation et de consécration, mais surtout il appelle les chrétiens à être configurés à la charité du Christ lui-même, apprenant du Cœur ouvert pour la vie du monde la miséricorde, la fidélité et l'amour sacrificiel.
$desc$),
('the-immaculate-heart-of-the-blessed-virgin-mary', 'Le Cœur Immaculé de la Bienheureuse Vierge Marie', $desc$
La dévotion au Cœur Immaculé de Marie est née de l'image évangélique de la Mère du Seigneur qui garde toutes choses dans son cœur et les médite devant Dieu. Peu à peu, l'Église a honoré d'une manière particulière la sainteté intérieure, la foi, la compassion et la disponibilité qui caractérisent la réponse de Marie à la grâce. La fête contemple un cœur humain parfaitement ordonné à Dieu et pleinement configuré au Christ.

Sa théologie est entièrement christocentrique et ecclésiale. Le cœur de Marie est honoré non comme un centre rival de dévotion, mais comme le cœur parfaitement réceptif, croyant et configuré à son Fils - le cœur qui a cru, souffert, intercédé et médité les mystères du salut. La mémoire montre ce que la grâce peut accomplir dans une créature humaine totalement ouverte à la parole de Dieu.

Le cœur de Marie est honoré non comme un centre rival de dévotion, mais comme l'image créée la plus transparente du vrai discipulat. Elle croit, souffre, intercède et reçoit la parole sans réserve. La fête offre ainsi aux fidèles une école de contemplation, de pureté d'intention et d'union compatissante à l'œuvre salvifique de son Fils.

Pour les fidèles, le Cœur Immaculé offre une école de discipulat intérieur. Il encourage la méditation de la parole de Dieu, la pureté d'intention, la solidarité compatissante avec les souffrants et l'abandon filial à la Mère qui apprend à l'Église à recevoir le Christ sans réserve.
$desc$),
('our-lord-jesus-christ-king-of-the-universe', 'Notre Seigneur Jésus-Christ, Roi de l''Univers', $desc$
La Solennité de Notre Seigneur Jésus-Christ, Roi de l'Univers proclame la souveraineté universelle du Seigneur crucifié et ressuscité sur l'histoire, la création et tout cœur humain. Instituée au XXe siècle en réponse au déni pratique de la seigneurie du Christ, elle a donné une voix liturgique à une vérité déjà profondément enracinée dans l'Écriture et la tradition. La fête confesse qu'aucun domaine de la vie n'échappe au droit du Fils de Dieu.

Sa théologie proclame la souveraineté universelle du Seigneur crucifié et ressuscité. Le Christ règne non par contrainte mais par la vérité, la sainteté, la grâce, la justice, l'amour et la paix; son royaume est déjà présent dans le mystère, tout en attendant sa consommation lorsque tout lui sera soumis. La fête résiste donc à la fois au réductionnisme politique et à une religion privatisée en déclarant que toute l'histoire, toute autorité et toute destinée humaine trouvent leur sens dans le Christ.

Le Christ règne non par la contrainte, mais par la vérité, la sainteté, la grâce, la justice, l'amour et la paix. Son royaume est déjà présent dans le mystère et attend encore sa consommation lorsque tout lui sera soumis. La fête résiste donc à l'idolâtrie politique autant qu'à une religion privatisée, en déclarant que la destinée humaine et le sens de l'histoire se trouvent dans le Christ seul.

Pour les fidèles aujourd'hui, le Christ Roi demeure un examen aigu de la loyauté. Il demande où les chrétiens ont laissé des idéologies politiques, l'ambition privée ou les modes culturelles usurper la place qui revient au Christ seul, et il les invite à renouveler leur allégeance à son Royaume par le culte, l'intégrité morale, le service des pauvres et l'espérance du renouvellement final de toutes choses.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('the-ascension-of-the-lord', 'Ascensio Domini', $desc$
Ascensio Domini valde mature ut distincta festivitas intra mysterium paschale emersit, quamquam primi christiani saeculi resurrectionem, exaltationem et Spiritus donum saepe simul contemplabantur. Iam saeculo quarto observantia firmiter in Oriente et Occidente testata est, praesertim ex Actibus Apostolorum formata atque ex confessione Ecclesiae quod Christus resuscitatus in gloria regnat. Festum non absentiam, sed exaltationem proclamat.

Theologice Ascensio non est Christi discessus in absentiam, sed enthronizatio glorificatae humanitatis eius ad dexteram Patris. Revelat eum qui descendit naturam humanam in ipsam vitam divinam intulisse, ubi ut sacerdos intercedit, ut Dominus regnat et locum membris suis praeparat. Festum igitur simul realismum Incarnationis et cosmicam redemptionis amplitudinem custodit.

Mysterium hic celebratum caelum et terram coniungit. Christus a conspectu discipulorum subducitur, sed ipso ascendendo missionis et spei eorum fons efficitur. Festum igitur docet Dominum glorificatum Ecclesiae suae praesentem manere et humanam sortem iam in ipso apertam esse.

Fidelibus hodiernis Ascensio docet quomodo inter visibilitatem et fidem vivant. Christianos invitat ut quae sursum sunt quaerant sine terrena responsabilitate deserenda, missionem tamquam participationem regni Christi exaltati intellegant, et spem inveniant in veritate vitam humanam iam in caelis repraesentari.
$desc$),
('pentecost-sunday', 'Dominica Pentecostes', $desc$
Dominica Pentecostes, quae in festo Hebdomadarum Iudaico radicatur, iam ab aetate apostolica ut effusio Spiritus Sancti a Christo resuscitato promissi intellecta est. Traditio christiana eam inseparabiliter ad complementum Paschae rettulit, quia mysterium paschale manifestum suum fructum attingit cum Spiritus Ecclesiae donatur. Festum simul complementum et initium celebrat: impletionem quinquaginta dierum atque publicam missionis apostolicae nativitatem.

Theologia eius est manifesta nativitas Ecclesiae in virtute. Spiritus descendit non quasi simplex consolatio, sed ut divinum donum quod credentes Christo unit, Babel renit in communionem populorum convertendo, atque Ecclesiam apostolicam in intellegibilem proclamationem foras mittit. Pentecostes revelat redemptionem non esse completam donec vita Resuscitati per Spiritum Sanctum interius in populo eius operetur.

Signa venti, ignis, sermonis et populorum congregatorum amplitudinem mysterii revelant. Babel hic per communionem respondetur, timor per audacem proclamationem vincitur, et dispersio in populum uno Spiritu collectum convertitur. Pentecostes docet Ecclesiam non sola memoria, sed inhabitatione Spiritus Sancti sanctificantis, unientis atque mittentis vivere.

Pastoraliter Dominica Pentecostes indispensabilis manet communitatibus quae vel fidem ad institutionem redigere vel spiritualitatem ab Ecclesia secernere tentantur. Fideles vocat ut Spiritum pro sanctitate, fortitudine, discretione et reconciliatione invocent, eosque monet omnem veram renovationem in Ecclesia simul charismaticam et ecclesialem esse debere.
$desc$),
('blessed-virgin-mary-mother-of-the-church', 'Beata Maria Virgo, Mater Ecclesiae', $desc$
Titulus Mater Ecclesiae antiquus est quantum ad substantiam theologicam, quia inseparabilem Mariae relationem ad Christum et ad omnes qui in ipso vivunt exprimit. Patrum reflexio, doctrina concilii et diuturna devotio agnoverunt eam quae Caput peperit etiam erga membra quandam maternitatem exercere. Festum igitur non de privilegio separato, sed de loco Mariae in ipso Ecclesiae mysterio honorando agit.

Theologia eius in inseparabili Mariae relatione ad mysterium Christi et Ecclesiae nititur. Mater Capitis est et ideo, per gratiam, mater membrorum; ad Crucem discipulum dilectum accipit, et in cenaculo cum communitate apostolica Spiritum exspectante in oratione perseverat. Memoria igitur non de solo quodam privato privilegio Mariano, sed de ipsa maternali Mariae praesentia in ortu et vita Ecclesiae contemplatur.

Maternitas Mariae praesertim ad Crucem et in cenaculo elucet. Discipulum dilectum accipit, cum communitate apostolica in oratione perseverat, et velut figura ac mater Ecclesiae, quae ex Paschate Christi nascitur et per Spiritum vivificatur, stat. Festum itaque fideles invitat ut devotionem Marianam penitus ecclesiali modo contemplentur.

Fidelibus hic dies devotionem Marianam penitus ecclesialem offert. Christianos invitat ut Mariam non tamquam figuram a communi discipulatu remotam, sed tamquam matrem, exemplar et intercessricem pro unitate, sanctitate et fructu missionario Ecclesiae videant, praesertim temporibus quibus fidelibus consolatio, constantia et profundior communio opus sunt.
$desc$),
('the-most-holy-trinity', 'Sanctissima Trinitas', $desc$
Sollemnitas Sanctissimae Trinitatis ex Ecclesiae desiderio orta est mysterium explicite laudandi quod in omni baptismo, doxologia et actu cultus iam confitetur. Dissimilis festis quae in unum eventum intendunt, contemplationem ad ipsam aeternam Dei vitam ut Patris et Filii et Spiritus Sancti dirigit. Festum culmen doctrinae atque orationis christianae tenet.

Theologia huius diei culmen doctrinae christianae attingit. Trinitas non est quaestio mathematica, sed ipsa revelata Dei vita: Pater aeternaliter Filium generans, Filius aeternaliter a Patre omnia recipiens, et Spiritus Sanctus ut vinculum amoris divini procedens. Festum docet historiam salutis originem et finem trinitarios habere, atque gratiam credentes in communionem Dei viventis, non in nudum systema morale, attrahere.

Hoc mysterium non est abstracta quaestio, sed origo et finis salutis. Pater Filium mittit, Filius Patrem revelat, et Spiritus Sanctus credentes in communionem Dei viventis introducit. Festum docet vitam christianam participationem amoris trinitarii esse, non nudam adhaesionem systemati morali.

Fidelibus hodiernis Dominica Trinitatis adorationem, intellectualem humilitatem et renovatam fiduciam in cohaerentia revelationis christianae invitat. Meminit orationem, sacramentum, missionem et caritatem omnes ex Deo Trino oriri atque ad eum redire, eosque hortatur ut signum Crucis, tam frequenter factum, in consciam confessionem Dei, in cuius nomine vivunt, convertant.
$desc$),
('the-most-holy-body-and-blood-of-christ', 'Sanctissimi Corporis et Sanguinis Christi', $desc$
Sollemnitas Sanctissimi Corporis et Sanguinis Christi, historice Corpus Christi appellata, saeculo tertio decimo orta est sub influxu sanctae Iulianae Leodiensis et devotionis eucharisticae occidentis medii aevi. Evoluta est ut distinctus laudis actus erga praesentiam sacramentalem iam per totam Ecclesiae vitam adoratam et receptam. Festum fidem in mysterium eucharisticum singulariter contractam exprimit.

Theologia eius est compacta confessio praesentiae realis et convivii sacrificialis novi foederis. Ecclesia non symbolum a Mysterio Paschali avulsum honorat, sed ipsum Corpus vivum traditum et Sanguinem effusum pro vita mundi. Corpus Christi igitur fidem eucharisticam contra omnem reductionem custodit atque instat adorationem, communionem et sacrificium inter se coniungi.

Mysterium hic honoratum non est symbolum ab opere salutari Christi separatum, sed ipsum Corpus vivum traditum et Sanguis effusus pro vita mundi. Adoratio, sacrificium et communio ideo inter se cohaerent. Hoc festum celebrando Ecclesia confitetur Dominum resuscitatum vere praesentem manere atque populum suum in unum corpus colligere.

Fidelibus hic dies simul doctrina et nutrimentum pastorale est. Invitat ad altiorem reverentiam in Missa, ad intelligentiorem participationem in cultu eucharistico, et ad renovatam conscientiam praesentiam eucharisticam Christi Ecclesiam in unum corpus colligere atque eam mittere ut id efficiatur quod accipit.
$desc$),
('the-most-sacred-heart-of-jesus', 'Sacratissimum Cor Iesu', $desc$
Sollemnitas Sacratissimi Cordis Iesu ex biblica et patristica meditatione lateris Christi perforati et amoris in humanitate eius revelati orta est. Devotio posterior, praesertim per testimonium sanctae Margaritae Mariae Alacoque et eorum qui fiduciam ac reparationem promoverunt, festum ad stabilem liturgicam formam adiuvit. Caritatem divinam in Corde Verbi incarnati visibilem et accessibilem contemplatur.

Theologia huius diei in Corde Christi contemplatur centrum personale amoris humani Verbi Incarnati et visibile signum caritatis divinae mundum salvantis. Cor perforatum colligit Incarnationem, Passionem, Eucharistiam, reparationem et misericordiam: est Cor quod usque in finem dilexit et peccatores adhuc ad communionem invitat. Festum contendit amorem divinum non esse abstractam benevolentiam, sed amorem incarnatum, vulneratum et victorem.

Cor Christi simul profunditatem amoris humani eius et inexhaustam Dei misericordiam significat. Incarnatio, Passio, Eucharistia, reparatio et consolatio hic conveniunt, quia Cor perforatum est Cor quod usque in finem dilexit. Festum credentes invitat ut in Christo non impersonalem notionem, sed amorem viventem, vulneratum et salvantem inveniant.

Fidelibus hodiernis Sacratissimum Cor potens antidotum manet contra cynismum, timorem et impersonalem religionem. Invitat ad actus fiduciae, reparationis et consecrationis, sed ante omnia christianos vocat ut ipsi caritati Christi configurentur, misericordiam, fidelitatem et amorem sacrificantem a Corde pro vita mundi aperto discentes.
$desc$),
('the-immaculate-heart-of-the-blessed-virgin-mary', 'Cor Immaculatum Beatae Mariae Virginis', $desc$
Devotio ad Immaculatum Cor Mariae ex evangelica imagine Matris Domini omnia in corde suo servantis et coram Deo meditantis crevit. Ecclesia paulatim peculiari modo sanctitatem interiorem, fidem, compassionem atque receptivitatem quae responsionem Mariae ad gratiam notant honoravit. Festum cor humanum perfecte ad Deum ordinatum et Christo plene conforme contemplatur.

Theologia eius tota christocentrica atque ecclesialis est. Cor Mariae honoratur non ut centrum devotionis aemulum, sed ut cor perfecte receptivum, fide plenum et Filio suo conformissimum - cor quod credidit, passa est, intercessit et mysteria salutis meditata est. Memoria ostendit quid gratia in creatura humana verbo Dei penitus aperta efficere possit.

Cor Mariae honoratur non ut centrum devotionis aemulum, sed ut perspicacissima imago discipulatus fidelis. Credit, compatitur, intercedit et verbum sine reservatione suscipit. Festum ideo fidelibus scholam contemplationis, puritatis intentionis et compassionis cum opere salutari Filii sui coniunctae praebet.

Fidelibus Cor Immaculatum scholam interioris discipulatus offert. Fovet meditationem verbi Dei, puritatem intentionis, compatientem cum laborantibus solidarietatem atque filialem commendationem Matri quae Ecclesiam docet quomodo Christum sine reservatione suscipiat.
$desc$),
('our-lord-jesus-christ-king-of-the-universe', 'Domini Nostri Iesu Christi Universorum Regis', $desc$
Sollemnitas Domini Nostri Iesu Christi Universorum Regis universalem crucifixi et resuscitati Domini dominationem super historiam, creationem et omne cor humanum proclamat. Saeculo vicesimo instituta est ut negationi practicae Christi dominatus responderet, veritati iam alte in Scriptura et traditione radicatae vocem liturgicam praebens. Festum confitetur nullum vitae ambitum extra ius Filii Dei consistere.

Theologia eius universalem crucifixi et resuscitati Domini dominationem proclamat. Christus non vi cogendi, sed veritate, sanctitate, gratia, iustitia, amore et pace regnat; regnum eius iam in mysterio adest et tamen consummationem exspectat cum omnia ei subiicientur. Festum ideo et politicam reductionem et religionem privatam respuit, declarans omnem historiam, omnem auctoritatem et omnem humanam sortem sensum suum in Christo invenire.

Christus non vi coercitionis, sed veritate, sanctitate, gratia, iustitia, amore et pace regnat. Regnum eius iam in mysterio adest et tamen consummationem exspectat cum omnia ei subiicientur. Festum igitur et politicam idololatriam et privatam religionem respuit, declarans humanam sortem atque historiae sensum in solo Christo inveniri.

Fidelibus hodiernis Christus Rex perscrutans examinationem fidelitatis manet. Quaerit ubi christiani ideologias politicas, ambitionem privatam vel mores culturales locum Christo soli debitum occupare permiserint, eosque invitat ut suam erga Regnum eius fidelitatem per cultum, moralem integritatem, servitium pauperum et spem finalis omnium rerum renovationis renovent.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- CELEBRATIONS (movable)
-- Ascension: Easter +39
-- Pentecost: Easter +49
-- Mother of the Church: Pentecost +1 (Monday)
-- Trinity: Pentecost +7 (Sunday)
-- Corpus Christi: Trinity +4 (Thursday)
-- Sacred Heart: Second Sunday after Pentecost +5 (Friday)
-- Immaculate Heart: Second Sunday after Pentecost +6 (Saturday)
-- Christ the King: last Sunday of Ordinary Time = Sunday before 1st Advent Sunday
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'movable', x.movable_base, x.movable_offset_days, 'normal', FALSE, 'Roman General Calendar'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('the-ascension-of-the-lord', 'EASTER_SUNDAY', 39, 'SOLEMNITY', 'WHITE'),
('pentecost-sunday', 'EASTER_SUNDAY', 49, 'SOLEMNITY', 'RED'),
('blessed-virgin-mary-mother-of-the-church', 'PENTECOST', 1, 'MEM_OBL', 'WHITE'),
('the-most-holy-trinity', 'PENTECOST', 7, 'SOLEMNITY_LORD', 'WHITE'),
('the-most-holy-body-and-blood-of-christ', 'TRINITY_SUNDAY', 4, 'SOLEMNITY_LORD', 'WHITE'),
('the-most-sacred-heart-of-jesus', 'SECOND_SUNDAY_AFTER_PENTECOST', 5, 'SOLEMNITY_LORD', 'WHITE'),
('the-immaculate-heart-of-the-blessed-virgin-mary', 'SECOND_SUNDAY_AFTER_PENTECOST', 6, 'MEM_OBL', 'WHITE'),
('our-lord-jesus-christ-king-of-the-universe', 'FIRST_ADVENT_SUNDAY', -7, 'SOLEMNITY_LORD', 'WHITE')
) AS x(slug, movable_base, movable_offset_days, rank_code, color_code)
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
('the-ascension-of-the-lord', $desc$
In the Roman General Calendar this celebration is recorded on Easter plus thirty-nine days, that is, the traditional Thursday of the fortieth day. It is kept as a solemnity in white; where pastoral transfer is authorized in some places, a different local celebration may exist, but this Roman General entry preserves the Thursday form.
$desc$),
('pentecost-sunday', $desc$
In the Roman General Calendar Pentecost falls on Easter plus forty-nine days as the culminating Sunday of the Fifty Days. It is celebrated in red as a solemnity and closes the paschal season in its fullest festal form.
$desc$),
('blessed-virgin-mary-mother-of-the-church', $desc$
In the Roman General Calendar this observance falls on the Monday after Pentecost and is kept as an obligatory memorial in white. Added to the General Roman Calendar in 2018, it gives stable liturgical expression to the title Mater Ecclesiae immediately after Pentecost.
$desc$),
('the-most-holy-trinity', $desc$
In the Roman General Calendar this solemnity falls on the Sunday after Pentecost and is celebrated in white as a solemnity of the Lord. It stands at the threshold of resumed Ordinary Time as a contemplative confession of the Triune God.
$desc$),
('the-most-holy-body-and-blood-of-christ', $desc$
In the Roman General Calendar this solemnity is placed on the Thursday after Trinity Sunday and is celebrated in white as a solemnity of the Lord. Many places observe a transferred Sunday celebration, but this entry preserves the traditional Thursday form of Corpus Christi.
$desc$),
('the-most-sacred-heart-of-jesus', $desc$
In the Roman General Calendar this solemnity falls on the Friday after the second Sunday after Pentecost and is celebrated in white as a solemnity of the Lord. Its placement links it closely to Corpus Christi and the paschal gift made sacramentally present.
$desc$),
('the-immaculate-heart-of-the-blessed-virgin-mary', $desc$
In the Roman General Calendar this observance falls on the Saturday after the Sacred Heart and is kept in white as an obligatory memorial. Its placement immediately after the Sacred Heart highlights the Christological orientation of Marian devotion in the modern Roman calendar.
$desc$),
('our-lord-jesus-christ-king-of-the-universe', $desc$
In the Roman General Calendar this solemnity falls on the Sunday before the First Sunday of Advent and concludes the liturgical year. It is celebrated in white as a solemnity of the Lord and gives the end of Ordinary Time a strongly eschatological character.
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
('the-ascension-of-the-lord', $desc$
Dans le Calendrier romain général, cette célébration est inscrite à trente-neuf jours après Pâques, c'est-à-dire au jeudi traditionnel du quarantième jour. Elle est gardée comme solennité en blanc; là où un transfert pastoral est autorisé, une autre célébration locale peut exister, mais cette entrée romaine générale conserve la forme du jeudi.
$desc$),
('pentecost-sunday', $desc$
Dans le Calendrier romain général, la Pentecôte tombe quarante-neuf jours après Pâques comme dimanche culminant des cinquante jours. Elle est célébrée en rouge comme solennité et clôt le temps pascal dans sa plus pleine forme festive.
$desc$),
('blessed-virgin-mary-mother-of-the-church', $desc$
Dans le Calendrier romain général, cette observance tombe le lundi après la Pentecôte et est gardée comme mémoire obligatoire en blanc. Ajoutée au Calendrier romain général en 2018, elle donne une expression liturgique stable au titre de Mater Ecclesiae immédiatement après la Pentecôte.
$desc$),
('the-most-holy-trinity', $desc$
Dans le Calendrier romain général, cette solennité tombe le dimanche après la Pentecôte et se célèbre en blanc comme solennité du Seigneur. Elle se tient au seuil de la reprise du temps ordinaire comme confession contemplative du Dieu Trine.
$desc$),
('the-most-holy-body-and-blood-of-christ', $desc$
Dans le Calendrier romain général, cette solennité est placée au jeudi après la Trinité et se célèbre en blanc comme solennité du Seigneur. De nombreux lieux en connaissent une célébration transférée au dimanche, mais cette entrée conserve la forme traditionnelle du jeudi pour Corpus Christi.
$desc$),
('the-most-sacred-heart-of-jesus', $desc$
Dans le Calendrier romain général, cette solennité tombe le vendredi après le deuxième dimanche après la Pentecôte et se célèbre en blanc comme solennité du Seigneur. Sa place la relie étroitement à Corpus Christi et au don pascal rendu présent sacramentellement.
$desc$),
('the-immaculate-heart-of-the-blessed-virgin-mary', $desc$
Dans le Calendrier romain général, cette observance tombe le samedi après le Sacré-Cœur et est gardée en blanc comme mémoire obligatoire. Sa place immédiatement après le Sacré-Cœur souligne l'orientation christologique de la dévotion mariale dans le calendrier romain moderne.
$desc$),
('our-lord-jesus-christ-king-of-the-universe', $desc$
Dans le Calendrier romain général, cette solennité tombe le dimanche précédant le Premier dimanche de l'Avent et achève l'année liturgique. Elle est célébrée en blanc comme solennité du Seigneur et donne à la fin du temps ordinaire un caractère fortement eschatologique.
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
('the-ascension-of-the-lord', $desc$
In Calendario Romano Generali haec celebratio triginta novem diebus post Pascha describitur, id est feria quinta traditionali diei quadragesimi. Ut sollemnitas albo servatur; ubi translatio pastoralis alicubi permittitur, alia celebratio localis exsistere potest, sed haec Romani Generalis descriptio formam feriae quintae retinet.
$desc$),
('pentecost-sunday', $desc$
In Calendario Romano Generali Pentecostes quadraginta novem diebus post Pascha occurrit ut dominica culminans quinquaginta dierum. Rubro ut sollemnitas celebratur et tempus paschale plenissima festivitate concludit.
$desc$),
('blessed-virgin-mary-mother-of-the-church', $desc$
In Calendario Romano Generali haec observantia feria secunda post Pentecosten occurrit et ut memoria obligatoria albo servatur. Anno MMXVIII Calendario Romano Generali addita, stabilem formam liturgicam titulo Mater Ecclesiae statim post Pentecosten tribuit.
$desc$),
('the-most-holy-trinity', $desc$
In Calendario Romano Generali haec sollemnitas in dominica post Pentecosten occurrit et albo ut sollemnitas Domini celebratur. In limine resumpti Temporis per Annum stat ut contemplativa Dei Trini confessio.
$desc$),
('the-most-holy-body-and-blood-of-christ', $desc$
In Calendario Romano Generali haec sollemnitas feria quinta post Dominicam Trinitatis collocatur et albo ut sollemnitas Domini celebratur. Multis in locis dominica translata celebratio adest, sed haec descriptio traditionalem feriae quintae formam Corporis Christi servat.
$desc$),
('the-most-sacred-heart-of-jesus', $desc$
In Calendario Romano Generali haec sollemnitas feria sexta post alteram dominicam post Pentecosten occurrit et albo ut sollemnitas Domini celebratur. Locus eius artissime cum Corpore Christi et dono paschali sacramentaliter praesenti coniungitur.
$desc$),
('the-immaculate-heart-of-the-blessed-virgin-mary', $desc$
In Calendario Romano Generali haec observantia sabbato post Sacratissimum Cor occurrit et albo ut memoria obligatoria servatur. Locus statim post Sacratissimum Cor positus christologicam directionem devotionis Marianae in calendario Romano moderno illustrat.
$desc$),
('our-lord-jesus-christ-king-of-the-universe', $desc$
In Calendario Romano Generali haec sollemnitas in dominica ante Dominicam I Adventus occurrit et annum liturgicum concludit. Albo ut sollemnitas Domini celebratur atque fini Temporis per Annum indolem valde eschatologicam tribuit.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

COMMIT;
