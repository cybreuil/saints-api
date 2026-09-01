-- =========================================================
-- Roman France Calendar - Feast descriptions (EN/FR/LA)
-- Populates feast_translations.description for country-specific feasts.
-- Run this file after seedRomanFrance.sql.
-- =========================================================

BEGIN;

-- 1) DESCRIPTIONS EN
UPDATE feast_translations ft
SET description = x.description
FROM feasts f
JOIN (VALUES
('saint-genevieve-virgin', $desc$
This celebration honors Saint Geneviève, whose consecrated virginity, prayer, and courage became a lasting sign of Christian hope. Her memory is associated with steadfast trust in God amid fear and danger, and with a holiness lived in the midst of a city and its people.

Geneviève's witness shows that contemplative fidelity and public charity are not opposed. She is remembered as a woman of faith whose intercession, counsel, and care for the poor strengthened the Church and encouraged the faithful to perseverance.

For believers today, this celebration invites confidence in the quiet power of prayer, vigilance, and service. It encourages Christians to stand firm in charity and hope, especially when communities are tempted by anxiety or discouragement.
$desc$),
('saint-remigius-bishop', $desc$
This celebration honors Saint Remigius, bishop and pastor, remembered for his evangelizing zeal and for his role in the Christian formation of a people. His ministry points to the patient work by which the Gospel takes root in persons, families, and nations.

As a bishop, Remigius represents the apostolic task of teaching, baptizing, reconciling, and gathering the Church around Christ. His memory recalls that the conversion of cultures begins with the conversion of hearts and is sustained by sound doctrine, mercy, and pastoral courage.

For the faithful today, this celebration encourages renewed gratitude for baptism and for the pastors who hand on the faith. It invites Christians to bear witness to Christ with clarity, patience, and confidence in the transforming grace of God.
$desc$),
('saint-bernadette-soubirous-virgin', $desc$
This celebration honors Saint Bernadette Soubirous, the humble visionary of Lourdes, whose life became a witness to simplicity, truthfulness, and trust in God's mercy. She received extraordinary graces without seeking attention, and she bore misunderstanding, illness, and obscurity with quiet fidelity.

Bernadette's holiness is inseparable from the message of prayer, penance, and conversion associated with Lourdes. Her poverty and humility reveal how God chooses the lowly to remind the Church that authentic greatness is found in faith, obedience, and purity of heart.

For believers today, this celebration invites a return to humble prayer and sincere conversion. It teaches confidence in Mary's maternal care while directing every devotion toward deeper union with Christ.
$desc$),
('saint-ivo-of-kermartin-priest', $desc$
This celebration honors Saint Ivo of Kermartin, priest and advocate of the poor, remembered for uniting legal learning with evangelical justice. His life shows how professional skill can become a form of charity when placed at the service of truth and the vulnerable.

As a priest, Ivo cared for souls; as a jurist, he defended those who had little voice or protection. His witness reminds the Church that justice is not merely a social ideal but a demand of love rooted in the dignity of every person before God.

For the faithful today, this celebration encourages integrity, fairness, and concrete service to those burdened by poverty or injustice. It invites Christians to make their work a place where mercy and truth meet.
$desc$),
('saint-joan-of-arc-virgin', $desc$
This celebration honors Saint Joan of Arc, virgin, whose brief life bore witness to courage, purity of heart, and fidelity to a vocation received in prayer. Her memory stands as a sign that God can call the young and the humble to tasks beyond human expectation.

Joan's sanctity does not rest merely in national history or heroic achievement, but in her desire to obey God faithfully amid confusion, suffering, and trial. Her perseverance under judgment and her final trust in Jesus reveal a soul anchored in faith.

For believers today, this celebration invites discernment, courage, and fidelity to conscience formed by God. It encourages Christians to seek holiness with simplicity, to endure misunderstanding without hatred, and to place every mission under the lordship of Christ.
$desc$),
('saints-pothinus-blandina-and-companions-martyrs', $desc$
This celebration honors Saints Pothinus, Blandina, and their companions, martyrs whose witness reveals the strength of Christ in the weakness of his servants. Their suffering shows that the Church is built not by worldly power but by fidelity, endurance, and love stronger than death.

In these martyrs, different states of life and conditions are united in one confession of faith. The elderly bishop, the young servant, and their companions together proclaim that baptism gives every Christian the same dignity and the same call to belong wholly to Christ.

For the faithful today, this celebration invites courage in trial and solidarity with persecuted Christians. It teaches that the grace of martyrdom is not human stubbornness, but the victory of Christ living in his witnesses.
$desc$),
('saint-clotilde', $desc$
This celebration honors Saint Clotilde, remembered for faith, perseverance, and the quiet influence of a Christian life within family and public responsibility. Her memory highlights the power of prayer, patience, and example in the evangelization of those entrusted to one's love.

Clotilde's witness belongs to the holiness of the baptized lived in the midst of marriage, grief, and political complexity. She shows that sanctity can take the form of steadfast fidelity, intercession, forgiveness, and hope when circumstances are difficult.

For believers today, this celebration encourages prayer for families, leaders, and nations. It invites Christians to trust that humble fidelity and patient charity can become instruments of grace far beyond what is immediately visible.
$desc$),
('saint-caesarius-of-arles-bishop', $desc$
This celebration honors Saint Caesarius of Arles, bishop, preacher, and teacher of Christian life. His pastoral ministry sought to form the faithful through clear preaching, disciplined charity, and a deep concern that the Gospel shape ordinary conduct.

Caesarius represents the bishop as guardian of doctrine and servant of conversion. His teaching joined Scripture, moral exhortation, care for the poor, and the renewal of ecclesial life, showing that pastoral reform begins with the holiness of both shepherds and people.

For the faithful today, this celebration invites love for the word of God and openness to conversion. It encourages pastors and lay faithful alike to seek a faith that is instructed, practical, merciful, and persevering.
$desc$),
('our-lady-of-la-salette', $desc$
This celebration honors Our Lady of La Salette and the call to conversion associated with that Marian apparition. It contemplates Mary's maternal concern for a people in need of repentance, prayer, reverence for God, and renewed trust in divine mercy.

The message of La Salette belongs within the wider pattern of authentic Marian devotion: Mary does not draw attention to herself apart from Christ, but urges the faithful to return to him with contrite hearts and obedient lives. Her tears are a sign of maternal compassion and a summons to hope.

For believers today, this celebration invites reconciliation, perseverance in prayer, and reverence for the Lord. It encourages Christians to receive Mary's warning and consolation as a path toward deeper fidelity to the Gospel.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
WHERE ft.feast_id = f.id AND ft.locale_code = 'en';

-- 2) DESCRIPTIONS FR
UPDATE feast_translations ft
SET description = x.description
FROM feasts f
JOIN (VALUES
('saint-genevieve-virgin', $desc$
Cette célébration honore sainte Geneviève, dont la virginité consacrée, la prière et le courage sont devenus un signe durable d'espérance chrétienne. Sa mémoire est liée à une confiance ferme en Dieu au milieu de la peur et du danger, ainsi qu'à une sainteté vécue au cœur d'une cité et de son peuple.

Le témoignage de Geneviève montre que la fidélité contemplative et la charité publique ne s'opposent pas. Elle est rappelée comme une femme de foi dont l'intercession, le conseil et le souci des pauvres fortifièrent l'Église et encouragèrent les fidèles à persévérer.

Pour les croyants d'aujourd'hui, cette célébration invite à la confiance dans la force discrète de la prière, de la vigilance et du service. Elle encourage les chrétiens à demeurer fermes dans la charité et l'espérance, surtout lorsque les communautés sont tentées par l'inquiétude ou le découragement.
$desc$),
('saint-remigius-bishop', $desc$
Cette célébration honore saint Rémi, évêque et pasteur, rappelé pour son zèle évangélisateur et pour son rôle dans la formation chrétienne d'un peuple. Son ministère renvoie au travail patient par lequel l'Évangile prend racine dans les personnes, les familles et les nations.

Comme évêque, Rémi manifeste la mission apostolique d'enseigner, de baptiser, de réconcilier et de rassembler l'Église autour du Christ. Sa mémoire rappelle que la conversion des cultures commence par la conversion des cœurs et se soutient par la saine doctrine, la miséricorde et le courage pastoral.

Pour les fidèles aujourd'hui, cette célébration encourage une gratitude renouvelée pour le baptême et pour les pasteurs qui transmettent la foi. Elle invite les chrétiens à témoigner du Christ avec clarté, patience et confiance dans la grâce transformante de Dieu.
$desc$),
('saint-bernadette-soubirous-virgin', $desc$
Cette célébration honore sainte Bernadette Soubirous, l'humble voyante de Lourdes, dont la vie est devenue un témoignage de simplicité, de vérité et de confiance en la miséricorde de Dieu. Elle reçut des grâces extraordinaires sans rechercher l'attention, et porta l'incompréhension, la maladie et l'effacement avec une fidélité paisible.

La sainteté de Bernadette est inséparable du message de prière, de pénitence et de conversion associé à Lourdes. Sa pauvreté et son humilité révèlent comment Dieu choisit les petits pour rappeler à l'Église que la vraie grandeur se trouve dans la foi, l'obéissance et la pureté du cœur.

Pour les croyants d'aujourd'hui, cette célébration invite à revenir à la prière humble et à une conversion sincère. Elle enseigne la confiance dans la sollicitude maternelle de Marie tout en orientant toute dévotion vers une union plus profonde au Christ.
$desc$),
('saint-ivo-of-kermartin-priest', $desc$
Cette célébration honore saint Yves de Kermartin, prêtre et défenseur des pauvres, rappelé pour avoir uni la science du droit à la justice évangélique. Sa vie montre que la compétence professionnelle peut devenir une forme de charité lorsqu'elle est mise au service de la vérité et des plus vulnérables.

Comme prêtre, Yves prit soin des âmes ; comme juriste, il défendit ceux qui avaient peu de voix ou de protection. Son témoignage rappelle à l'Église que la justice n'est pas seulement un idéal social, mais une exigence de l'amour enracinée dans la dignité de toute personne devant Dieu.

Pour les fidèles aujourd'hui, cette célébration encourage l'intégrité, l'équité et le service concret de ceux que la pauvreté ou l'injustice accablent. Elle invite les chrétiens à faire de leur travail un lieu où se rencontrent la miséricorde et la vérité.
$desc$),
('saint-joan-of-arc-virgin', $desc$
Cette célébration honore sainte Jeanne d'Arc, vierge, dont la brève vie témoigna du courage, de la pureté du cœur et de la fidélité à une vocation reçue dans la prière. Sa mémoire demeure le signe que Dieu peut appeler les jeunes et les humbles à des missions qui dépassent les attentes humaines.

La sainteté de Jeanne ne repose pas seulement sur l'histoire nationale ou l'héroïsme, mais sur son désir d'obéir fidèlement à Dieu au milieu de la confusion, de la souffrance et de l'épreuve. Sa persévérance dans le jugement et sa confiance finale en Jésus révèlent une âme enracinée dans la foi.

Pour les croyants d'aujourd'hui, cette célébration invite au discernement, au courage et à la fidélité d'une conscience formée par Dieu. Elle encourage les chrétiens à chercher la sainteté avec simplicité, à supporter l'incompréhension sans haine et à placer toute mission sous la seigneurie du Christ.
$desc$),
('saints-pothinus-blandina-and-companions-martyrs', $desc$
Cette célébration honore saints Pothin, Blandine et leurs compagnons, martyrs dont le témoignage révèle la force du Christ dans la faiblesse de ses serviteurs. Leur souffrance montre que l'Église ne se construit pas par la puissance du monde, mais par la fidélité, l'endurance et l'amour plus fort que la mort.

En ces martyrs, des états de vie et des conditions différentes sont unis dans une même confession de foi. Le vieil évêque, la jeune servante et leurs compagnons proclament ensemble que le baptême donne à tout chrétien la même dignité et le même appel à appartenir entièrement au Christ.

Pour les fidèles aujourd'hui, cette célébration invite au courage dans l'épreuve et à la solidarité avec les chrétiens persécutés. Elle enseigne que la grâce du martyre n'est pas une obstination humaine, mais la victoire du Christ vivant dans ses témoins.
$desc$),
('saint-clotilde', $desc$
Cette célébration honore sainte Clotilde, rappelée pour sa foi, sa persévérance et l'influence discrète d'une vie chrétienne au sein de la famille et des responsabilités publiques. Sa mémoire met en lumière la force de la prière, de la patience et de l'exemple dans l'évangélisation de ceux qui sont confiés à notre amour.

Le témoignage de Clotilde appartient à la sainteté baptismale vécue au milieu du mariage, du deuil et de situations politiques complexes. Elle montre que la sainteté peut prendre la forme d'une fidélité ferme, de l'intercession, du pardon et de l'espérance lorsque les circonstances sont difficiles.

Pour les croyants d'aujourd'hui, cette célébration encourage la prière pour les familles, les responsables et les nations. Elle invite les chrétiens à croire que l'humble fidélité et la charité patiente peuvent devenir des instruments de grâce bien au-delà de ce qui est immédiatement visible.
$desc$),
('saint-caesarius-of-arles-bishop', $desc$
Cette célébration honore saint Césaire d'Arles, évêque, prédicateur et maître de vie chrétienne. Son ministère pastoral voulut former les fidèles par une prédication claire, une charité ordonnée et le souci profond que l'Évangile façonne la conduite ordinaire.

Césaire représente l'évêque comme gardien de la doctrine et serviteur de la conversion. Son enseignement unit l'Écriture, l'exhortation morale, le soin des pauvres et le renouvellement de la vie ecclésiale, montrant que la réforme pastorale commence par la sainteté des pasteurs et du peuple.

Pour les fidèles aujourd'hui, cette célébration invite à aimer la parole de Dieu et à accueillir la conversion. Elle encourage pasteurs et laïcs à rechercher une foi instruite, concrète, miséricordieuse et persévérante.
$desc$),
('our-lady-of-la-salette', $desc$
Cette célébration honore Notre-Dame de la Salette et l'appel à la conversion associé à cette apparition mariale. Elle contemple la sollicitude maternelle de Marie pour un peuple appelé au repentir, à la prière, au respect de Dieu et à une confiance renouvelée dans la miséricorde divine.

Le message de La Salette s'inscrit dans le mouvement d'une authentique dévotion mariale : Marie n'attire pas à elle séparément du Christ, mais presse les fidèles de revenir à lui avec un cœur contrit et une vie obéissante. Ses larmes sont un signe de compassion maternelle et un appel à l'espérance.

Pour les croyants d'aujourd'hui, cette célébration invite à la réconciliation, à la persévérance dans la prière et à la révérence envers le Seigneur. Elle encourage les chrétiens à recevoir l'avertissement et la consolation de Marie comme un chemin de fidélité plus profonde à l'Évangile.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
WHERE ft.feast_id = f.id AND ft.locale_code = 'fr';

-- 3) DESCRIPTIONS LA
UPDATE feast_translations ft
SET description = x.description
FROM feasts f
JOIN (VALUES
('saint-genevieve-virgin', $desc$
Haec celebratio sanctam Genovefam honorat, cuius virginitas consecrata, oratio et fortitudo signum spei christianae permanens facta sunt. Eius memoria cum fiducia firma in Deo inter metum et pericula coniungitur, atque cum sanctitate in medio civitatis et populi eius exercita.

Testimonium Genovefae ostendit fidelitatem contemplativam et caritatem publicam inter se non adversari. Mulier fidei memoratur, cuius intercessio, consilium et cura pauperum Ecclesiam corroboraverunt et fideles ad perseverantiam incitaverunt.

Hodie fideles haec celebratio invitat ut quietae orationis, vigilantiae et servitii virtuti confidant. Christianos hortatur ut in caritate et spe stabiles maneant, praesertim cum communitates anxietate vel defatigatione tentantur.
$desc$),
('saint-remigius-bishop', $desc$
Haec celebratio sanctum Remigium, episcopum et pastorem, honorat, propter studium evangelizandi et formationem christianam populi memoratum. Ministerium eius opus patiens ostendit quo Evangelium in personis, familiis et gentibus radices agit.

Ut episcopus, Remigius missionem apostolicam docendi, baptizandi, reconciliandi et Ecclesiam circa Christum congregandi manifestat. Eius memoria monet conversionem culturarum a conversione cordium incipere atque sana doctrina, misericordia et fortitudine pastorali sustentari.

Fideles hodie haec celebratio ad gratiam baptismi renovandam et ad gratias pro pastoribus fidem tradentibus agendas hortatur. Christianos invitat ut de Christo clare, patienter et cum fiducia in gratia Dei transformante testimonium perhibeant.
$desc$),
('saint-bernadette-soubirous-virgin', $desc$
Haec celebratio sanctam Bernadettam Soubirous honorat, humilem virginem Lapurdensem, cuius vita testimonium simplicitatis, veritatis et fiduciae in misericordia Dei facta est. Gratias extraordinarias accepit non quaerens gloriam, et incomprehensionem, infirmitatem atque obscuritatem tranquilla fidelitate pertulit.

Sanctitas Bernadettae a nuntio orationis, paenitentiae et conversionis cum Lapurdo coniuncto separari non potest. Paupertas et humilitas eius ostendunt quomodo Deus humiles eligat ut Ecclesiae memoret veram magnitudinem in fide, oboedientia et cordis puritate inveniri.

Hodie credentes haec celebratio ad humilem orationem et sinceram conversionem revocat. Fiduciam in materna Mariae cura docet, dum omnem devotionem ad arctiorem cum Christo unionem dirigit.
$desc$),
('saint-ivo-of-kermartin-priest', $desc$
Haec celebratio sanctum Ivonem de Kermartin, presbyterum et pauperum advocatum, honorat, qui scientiam iuris cum iustitia evangelica coniunxit. Eius vita ostendit peritiam professionalem formam caritatis fieri posse, cum veritati et vulnerabilibus serviat.

Ut presbyter, Ivo animarum curam gessit; ut iuris peritus, eos defendit qui parvam vocem aut tutelam habebant. Eius testimonium Ecclesiae memorat iustitiam non solum esse propositum sociale, sed exigentiam amoris in dignitate cuiusque personae coram Deo radicatam.

Fideles hodie haec celebratio ad integritatem, aequitatem et concretum servitium eorum qui paupertate vel iniustitia premuntur hortatur. Christianos invitat ut laborem suum locum efficiant ubi misericordia et veritas conveniunt.
$desc$),
('saint-joan-of-arc-virgin', $desc$
Haec celebratio sanctam Ioannam Arcensem, virginem, honorat, cuius brevis vita fortitudinem, cordis puritatem et fidelitatem vocationi in oratione receptae testificata est. Eius memoria signum manet Deum iuvenes et humiles ad munera ultra spem humanam vocare posse.

Sanctitas Ioannae non in sola historia nationali aut virtute heroica consistit, sed in desiderio Deo fideliter oboediendi inter confusionem, dolorem et probationem. Perseverantia eius sub iudicio et extrema fiducia in Iesu animam fide radicatam revelant.

Fideles hodie haec celebratio ad discretionem, fortitudinem et fidelitatem conscientiae a Deo formatae invitat. Christianos hortatur ut sanctitatem simpliciter quaerant, incomprehensionem sine odio ferant, et omne munus sub Christi dominio ponant.
$desc$),
('saints-pothinus-blandina-and-companions-martyrs', $desc$
Haec celebratio sanctos Pothinum, Blandinam et socios martyres honorat, quorum testimonium virtutem Christi in infirmitate servorum suorum revelat. Passio eorum ostendit Ecclesiam non potentia mundana, sed fidelitate, patientia et amore morte fortiore aedificari.

In his martyribus varii status vitae et condiciones in una confessione fidei coniunguntur. Episcopus senex, ancilla iuvenis et socii una proclamant baptismum eandem dignitatem et eandem vocationem omnibus christianis dare, ut toti Christo pertineant.

Fideles hodie haec celebratio ad fortitudinem in tribulatione et solidarietatem cum christianis persecutis invitat. Docet gratiam martyrii non esse pertinaciam humanam, sed victoriam Christi in testibus suis viventis.
$desc$),
('saint-clotilde', $desc$
Haec celebratio sanctam Chrothildem honorat, propter fidem, perseverantiam et quietam vitae christianae vim in familia et publicis officiis memoratam. Eius memoria virtutem orationis, patientiae et exempli in evangelizatione eorum qui amori nostro committuntur illustrat.

Testimonium Chrothildis ad sanctitatem baptizatorum pertinet, inter matrimonium, luctus et res politicas difficiles vivendam. Ostendit sanctitatem formam firmae fidelitatis, intercessionis, veniae et spei accipere posse, cum condiciones graves sunt.

Hodie credentes haec celebratio ad orationem pro familiis, rectoribus et gentibus incitat. Christianos invitat ut credant humilem fidelitatem et patientem caritatem instrumenta gratiae fieri posse longe ultra id quod statim apparet.
$desc$),
('saint-caesarius-of-arles-bishop', $desc$
Haec celebratio sanctum Caesarium Arelatensem, episcopum, praedicatorem et magistrum vitae christianae, honorat. Ministerium eius pastorale fideles clara praedicatione, ordinata caritate et cura profunda formare studuit, ut Evangelium mores cotidianos effingeret.

Caesarius episcopum demonstrat custodem doctrinae et ministrum conversionis. Doctrina eius Scripturam, exhortationem moralem, curam pauperum et renovationem vitae ecclesialis coniunxit, ostendens reformationem pastoralem a sanctitate pastorum et populi incipere.

Fideles hodie haec celebratio ad amorem verbi Dei et ad conversionem suscipiendam invitat. Pastores laicosque hortatur ut fidem doctam, practicam, misericordem et perseverantem quaerant.
$desc$),
('our-lady-of-la-salette', $desc$
Haec celebratio Beatam Mariam Virginem de La Salette honorat atque vocationem ad conversionem cum illa apparitione mariana coniunctam contemplatur. Maternam Mariae sollicitudinem respicit pro populo ad paenitentiam, orationem, reverentiam Dei et renovatam fiduciam in divina misericordia vocato.

Nuntius de La Salette intra authenticam devotionem marianam intellegitur: Maria non ad se separatim a Christo trahit, sed fideles urget ut ad eum corde contrito et vita oboedienti redeant. Lacrimae eius signum sunt compassionis maternae et vocationis ad spem.

Fideles hodie haec celebratio ad reconciliationem, perseverantiam in oratione et reverentiam erga Dominum invitat. Christianos hortatur ut monitionem et consolationem Mariae tamquam viam ad profundiorem Evangelii fidelitatem accipiant.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
WHERE ft.feast_id = f.id AND ft.locale_code = 'la';

COMMIT;
