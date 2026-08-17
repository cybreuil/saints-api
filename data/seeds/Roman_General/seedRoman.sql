-- =========================================================
-- Roman General Calendar - (EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

BEGIN;

-- 1) FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('solemnity-of-mary-the-holy-mother-of-god', 'Solemnity of Mary, the Holy Mother of God', 'marian'),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'Saints Basil the Great and Gregory Nazianzen, Bishops and Doctors of the Church', 'saint'),
('the-most-holy-name-of-jesus', 'The Most Holy Name of Jesus', 'christological'),
('the-epiphany-of-the-lord', 'The Epiphany of the Lord', 'christological'),
('saint-raymond-of-penyafort-priest', 'Saint Raymond of Penyafort, Priest', 'saint'),
('saint-hilary-bishop-and-doctor-of-the-church', 'Saint Hilary, Bishop and Doctor of the Church', 'saint'),
('saint-anthony-abbot', 'Saint Anthony, Abbot', 'saint'),
('saint-fabian-pope-and-martyr', 'Saint Fabian, Pope and Martyr', 'saint'),
('saint-sebastian-martyr', 'Saint Sebastian, Martyr', 'saint'),
('saint-agnes-virgin-and-martyr', 'Saint Agnes, Virgin and Martyr', 'saint'),
('saint-vincent-deacon-and-martyr', 'Saint Vincent, Deacon and Martyr', 'saint'),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'Saint Francis de Sales, Bishop and Doctor of the Church', 'saint'),
('the-conversion-of-saint-paul-the-apostle', 'The Conversion of Saint Paul the Apostle', 'saint'),
('saints-timothy-and-titus-bishops', 'Saints Timothy and Titus, Bishops', 'saint'),
('saint-angela-merici-virgin', 'Saint Angela Merici, Virgin', 'saint'),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'Saint Thomas Aquinas, Priest and Doctor of the Church', 'saint'),
('saint-john-bosco-priest', 'Saint John Bosco, Priest', 'saint'),
('the-baptism-of-the-lord', 'The Baptism of the Lord', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- 2) TRANSLATIONS EN
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('solemnity-of-mary-the-holy-mother-of-god', 'Solemnity of Mary, the Holy Mother of God', $desc$
Celebrated on January 1st, the octave day of Christmas, this Solemnity ranks among the highest days of the liturgical calendar and is observed in many countries as a Holy Day of Obligation. White vestments are worn, signifying joy and the glory of the Incarnation. Falling on the first day of the civil year, it closes the octave of Christmas while keeping the Church's gaze fixed on the mystery of the Word made flesh.

The solemnity proclaims Mary's unique dignity as Theotokos, Mother of God, a title solemnly defined by the Council of Ephesus in 431 against the Nestorian denial that Mary bore in her womb the eternal Son of God according to his divine nature as well as his human nature. Because Jesus Christ is one Person, true God and true man, the one whom Mary bore is truly God; hence she is rightly called Mother of God, not merely mother of his humanity. The feast thus safeguards the truth of the Incarnation itself, for any diminishment of Mary's motherhood of God ultimately diminishes the unity of Christ's person.

A feast on January 1st is attested in Rome from at least the sixth century, originally commemorating the Circumcision of the Lord on the eighth day after his birth, in accordance with Jewish law, alongside veneration of Mary's motherhood. Various local traditions and calendars, including the Byzantine East, kept differing emphases on this day. In the post-conciliar reform of the calendar in 1969, Pope Paul VI restored the octave day of Christmas to its ancient and primary Marian character as the Solemnity of Mary, Mother of God, while the Circumcision, though no longer the title of the day, remains implicit in the Gospel reading. Since 1968, the day has also been kept as the World Day of Peace.

Beginning the calendar year under Mary's maternal protection reminds the faithful that all human time unfolds within the mystery of the Incarnation and finds its meaning in Christ. The feast invites believers to entrust the year ahead to Mary's intercession, to imitate her contemplative pondering of the Word in her heart, and to seek, through her mediation, the peace that only her Son can give to a world so often torn by division.
$desc$),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'Saints Basil the Great and Gregory Nazianzen, Bishops and Doctors of the Church', $desc$
Kept on January 2nd as an obligatory memorial, this feast falls within the Christmas season, in the days after the Octave, and is marked by white vestments, since these saints are honored as bishops and doctors rather than under the aspect of martyrdom. It gathers two great fourth-century Cappadocian bishops under a single commemoration, a rare instance in the calendar of two non-martyred saints sharing one day of such rank.

The memorial honors Basil and Gregory as Doctors of the Church, teachers whose writings shaped Trinitarian theology, monastic life, and Christian rhetoric. Their common feast celebrates above all the doctrine of the Holy Trinity as defended against Arianism, and the model of episcopal ministry joined to deep friendship, asceticism, and pastoral charity. The Church presents them together as an image of how sanctity and sound doctrine grow through genuine spiritual friendship placed at the service of the Gospel.

Devotion to Basil and Gregory developed early in the East, where each held (and still holds) a separate feast day in the Byzantine calendar (January 1st and January 25th respectively), besides their common commemoration on January 30th with John Chrysostom as the "Three Holy Hierarchs." In the West, Basil was commemorated on June 14th and Gregory on May 9th prior to the reform. The 1969 revision of the Roman Calendar united them on January 2nd, the date closest to Basil's death (January 1, 379), as a single obligatory memorial, deliberately echoing the Eastern practice of honoring these two friends together.

Their joint memorial invites the faithful, especially at the start of the year, to reflect on the fruitfulness of friendship lived in Christ, on the necessity of sound doctrine for a mature faith, and on the courage required to teach and defend the truth about God in every age. Basil and Gregory stand as patrons of theological study joined to prayer, reminding the Church that right belief and holiness of life are never separated.
$desc$),
('the-most-holy-name-of-jesus', 'The Most Holy Name of Jesus', $desc$
Observed on January 3rd as an optional memorial within the Christmas season, this celebration uses white vestments and falls among the ferial days that lead from the Octave of Christmas toward the Epiphany. Where it is not celebrated on this date, the same devotion is often recalled liturgically on the Sunday between January 2nd and 5th, or folded into the Christmas cycle's general spirit of adoration of the newborn Christ.

The memorial venerates the Holy Name of Jesus itself, the name given by the angel before his conception, meaning "the Lord saves." It celebrates the biblical and theological truth, proclaimed by Saint Paul, that "at the name of Jesus every knee should bend," recognizing in this name the whole mystery of the Incarnation and redemption condensed into a single word which the Church invokes with faith, adoration, and confident love.

Devotion to the Holy Name has ancient roots, promoted especially by Saint Bernardine of Siena in the fifteenth century and given liturgical form through the centuries in various local calendars, notably in the Franciscan tradition and later throughout the universal Church. Suppressed as a separate feast in the reform following the Second Vatican Council because its content overlaps with other celebrations, it was nonetheless restored to the General Roman Calendar in 2002 as an optional memorial on January 3rd, in recognition of its enduring value for popular piety.

The feast invites believers to rediscover the power and sweetness of invoking the name of Jesus in personal prayer, echoing the ancient practice of the Jesus Prayer and the many popular devotions built around this Name. It reminds the faithful that no other name under heaven has been given by which we must be saved, encouraging simple, confident invocation of Jesus in daily life, in trial, and at the hour of death.
$desc$),
('the-epiphany-of-the-lord', 'The Epiphany of the Lord', $desc$
Celebrated on January 6th (or, in many countries, on the Sunday falling between January 2nd and 8th), the Epiphany ranks as a Solemnity of the Lord and one of the most ancient and important feasts of the entire liturgical year, vested in white or gold, and traditionally considered, alongside Easter and Pentecost, among the three great "manifestations" of Christ celebrated by the ancient Church.

The word "Epiphany" means manifestation, and the feast celebrates the revelation of Christ to the nations, symbolized by the Magi who came from the East to adore the newborn King. Theologically, it proclaims the universal scope of salvation: the Gentiles, represented by the Magi, are called to share with Israel in the same promise in Christ Jesus. In the Western tradition the feast long gathered together three manifestations of the Lord's divinity — the adoration of the Magi, Christ's baptism in the Jordan, and the miracle at Cana — although the Roman Calendar today keeps these as three distinct celebrations while retaining echoes of all three in the Epiphany's liturgical texts.

The feast of the Epiphany originated in the Christian East, likely in Egypt, in the late third or early fourth century, initially uniting the celebration of Christ's birth, baptism, and first miracle in a single feast on January 6th; it later spread to the West, where, following the establishment of Christmas on December 25th, Epiphany came to focus more specifically on the visit of the Magi. Rome adopted the feast by the mid-fourth century. Through the Middle Ages it acquired rich local customs, from the blessing of chalk and homes to the Epiphany proclamation of the date of Easter, many of which endure today, while the 1969 reform preserved its Solemnity while clarifying its distinct identity from the Baptism of the Lord and Cana, now situated in Ordinary Time and other Sundays respectively.

The Epiphany calls every believer to recognize in the Christ Child the light of the nations and to respond, like the Magi, with the journey of faith, the offering of one's gifts, and adoration. It reminds the Church of her missionary vocation to make Christ known to every people and culture, and it invites the faithful to renew their own "epiphany," allowing the light of Christ to be manifested ever more clearly in their daily lives.
$desc$),
('saint-raymond-of-penyafort-priest', 'Saint Raymond of Penyafort, Priest', $desc$
Kept on January 7th as an optional memorial, this celebration falls in the days after Epiphany, using white vestments proper to a confessor and doctor of canon law, within the final stretch of the Christmas season before the Baptism of the Lord.

The memorial honors the ministry of reconciliation and the service of justice within the Church, embodied in a priest renowned as a confessor, canonist, and organizer of the Church's penitential and legal life. Liturgically, the day highlights the virtues of mercy joined to truth, of pastoral charity exercised through the patient work of governance, law, and the sacrament of Penance, showing that holiness can flourish in the humble labor of ordering the Church's discipline for the good of souls.

Devotion to this saint developed after his death in the thirteenth century, and he was canonized in 1601; his feast entered the General Roman Calendar with the rank appropriate to a confessor not a bishop, initially assigned to January 23rd. In the reform of 1969 his memorial was transferred to January 7th, closer to the actual date of his death (January 6th, 1275), and reduced to an optional memorial in keeping with the streamlined post-conciliar calendar, which reserved obligatory rank chiefly for saints of more universal significance.

This memorial invites the faithful, particularly those engaged in canon law, confession, and Church administration, to see such work as a genuine path to holiness. It reminds the Church that structures of justice and mercy, patiently built up, serve the salvation of souls and are not opposed to, but rather serve, the deeper mystery of grace celebrated throughout the Christmas season.
$desc$),
('saint-hilary-bishop-and-doctor-of-the-church', 'Saint Hilary, Bishop and Doctor of the Church', $desc$
Celebrated on January 13th as an optional memorial in Ordinary Time (or occasionally still within the Christmas season depending on the calendar of a given year), this feast is marked by white vestments proper to a bishop and doctor of the Church.

The memorial celebrates the ministry of a bishop-theologian who defended the full divinity of Christ against Arianism, earning him the title "Athanasius of the West." Liturgically, the day highlights the doctrine of the Trinity and the true divinity and humanity of Christ, themes fittingly recalled near the Christmas and Epiphany seasons which celebrate the mystery of the Incarnation, and holds up the courage of a bishop who suffered exile rather than compromise revealed truth.

Hilary's cult developed soon after his death in the fourth century, and his feast was kept in the West on various dates through the medieval and Tridentine calendars, generally January 13th or 14th. He was declared a Doctor of the Church in 1851. The 1969 reform retained January 13th, close to the anniversary of his death, and set his rank as an optional memorial, consistent with the treatment given to other early Doctors whose feasts do not carry obligatory rank in the universal calendar.

This memorial invites the faithful to appreciate anew the doctrine of the Trinity as the very heart of the Christian faith and not a merely abstract question, and to draw courage from Hilary's example of steadfastness in truth amid controversy and personal cost. It reminds the Church that sound teaching, defended with charity and firmness, remains essential nourishment for the People of God in every age.
$desc$),
('saint-anthony-abbot', 'Saint Anthony, Abbot', $desc$
Observed on January 17th as an obligatory memorial in Ordinary Time, this feast is celebrated with white vestments proper to a confessor and founder, and holds a firm place in the calendar as one of the earliest and most venerable non-martyr saints' days observed by the universal Church.

The memorial celebrates the birth of Christian monasticism itself and the radical following of Christ through renunciation, solitude, and spiritual combat in the desert. It commemorates a life given entirely to seeking God through asceticism and prayer, a life the Church presents as a permanent witness that the Gospel counsels of poverty, chastity, and obedience to the will of God can be lived to heroic degree, giving rise to a whole tradition of monastic and eremitical life that continues to this day.

Veneration of this father of monks began immediately after his death in the fourth century, spread rapidly through the biography written by Saint Athanasius, and became one of the most widespread cults of the early Church, entering the Roman Martyrology and calendar at an early date, traditionally on January 17th, a date preserved without alteration through every subsequent revision of the calendar, including that of 1969, which retained him among the small number of ancient non-martyr saints granted obligatory rank.

This memorial invites the faithful to rediscover the value of silence, discipline, and interior combat against temptation in the spiritual life, even amid the busyness of ordinary existence. It holds up monastic life and the eremitical vocation as still-vital gifts to the whole Church, reminding all the baptized that the desert experience of purification and encounter with God remains, in some analogous form, necessary for authentic Christian growth.
$desc$),
('saint-fabian-pope-and-martyr', 'Saint Fabian, Pope and Martyr', $desc$
Kept on January 20th as an optional memorial, shared on the calendar with Saint Sebastian, this feast uses red vestments, the color of martyrdom, situating a pope-martyr's day within the season of Ordinary Time in January.

The memorial celebrates the shepherd's fidelity unto death, the union of the Petrine ministry with the supreme witness of blood, proclaiming that the office of governing the Church can itself become the very occasion of martyrdom. It highlights the third-century Roman Church's endurance under persecution and its unbroken succession of leadership even in the face of mortal danger.

Devotion to this early pope-martyr is attested from antiquity, his memory preserved in the ancient Roman liturgical calendars (the Depositio Martyrum) and the Roman Martyrology, with January 20th marking the anniversary of his burial. The date and rank have been preserved with remarkable stability through every reform of the calendar, including that of 1969, which retained him as an optional memorial reflecting his place among the venerable early Roman martyrs, sharing his day with Saint Sebastian without merging the two commemorations into a single feast.

This memorial invites the faithful to consider that fidelity to Christ may demand supreme sacrifice even from those entrusted with authority in the Church, and it encourages confidence in the Church's endurance through every age of trial, sustained from her earliest centuries by pastors ready to lay down their lives for the flock.
$desc$),
('saint-sebastian-martyr', 'Saint Sebastian, Martyr', $desc$
Also kept on January 20th as an optional memorial, alongside Saint Fabian, this feast likewise employs red vestments proper to martyrs, marking one of the most beloved martyr commemorations of the Roman calendar within the season of Ordinary Time.

The memorial celebrates the courage of a Christian soldier who bore witness to Christ within the very structures of Roman civil and military power, choosing fidelity to the Gospel over worldly advancement and enduring suffering for the faith. It presents martyrdom as the supreme configuration to Christ crucified and risen, and holds up the patron of soldiers, archers, and those who suffer illness as an intercessor for strength amid adversity.

Devotion to this martyr flourished very early in Rome, where a basilica was built over his tomb on the Via Appia, one of the seven pilgrim churches of the city; his commemoration is attested in the earliest Roman liturgical calendars on January 20th. Sebastian's cult grew enormously in the Middle Ages, especially as a protector against plague, and his feast has retained its traditional date and its rank as memorial through every calendar reform, including that of 1969, which confirmed January 20th, shared with Fabian, as an optional memorial.

This memorial invites the faithful to invoke Sebastian's intercession in illness and adversity, and to draw from his example the courage to live an authentic Christian witness even within professions or environments that seem to oppose the faith, trusting that grace can transform any state of life into an occasion for heroic fidelity.
$desc$),
('saint-agnes-virgin-and-martyr', 'Saint Agnes, Virgin and Martyr', $desc$
Celebrated on January 21st as an obligatory memorial in Ordinary Time, this feast is vested in red, the color of martyrdom, and ranks among the most ancient and venerated martyr commemorations of the Roman Church, mentioned already in the earliest Roman Canon of the Mass.

The memorial celebrates the union of consecrated virginity and martyrdom, proclaiming that total consecration to Christ and the supreme gift of one's life for him are two expressions of the same total self-gift of the bride to the Bridegroom. It honors the witness of a young martyr whose youth itself underscores that grace, not human strength, is the true source of heroic fidelity, and it recalls that purity of heart and fidelity unto death both flow from the same love of Christ above all things.

Devotion to this martyr goes back to the fourth century at the latest and quickly became one of the most widespread cults of the Roman Church, attested by Pope Damasus, by Saint Ambrose, and by her inclusion among the saints named in the Roman Canon (Eucharistic Prayer I). Her feast, kept from antiquity on January 21st, with a secondary commemoration on January 28th ("Saint Agnes' Second Feast," octave day) in earlier calendars, was preserved as an obligatory memorial in the 1969 reform, which nonetheless suppressed the secondary octave commemoration, retaining only the primary date.

This memorial invites the faithful, particularly the young, to see in Agnes a model of integrity, purity, and fearless witness to Christ, and it reminds consecrated virgins throughout the Church of their ancient patroness. Her example continues to inspire the traditional blessing of lambs on her feast, from whose wool the pallia of archbishops are woven, a fitting symbol of the shepherd's bond with Christ, the Lamb of God, whom Agnes followed even unto death.
$desc$),
('saint-vincent-deacon-and-martyr', 'Saint Vincent, Deacon and Martyr', $desc$
Kept on January 22nd as an optional memorial in Ordinary Time, this feast uses red vestments proper to martyrs, honoring one of the most celebrated deacon-martyrs of the early Church within the calendar's series of January martyr commemorations.

The memorial celebrates the diaconal ministry united to martyrdom, proclaiming that service at the altar and to the poor can flower into the supreme service of laying down one's life for Christ. It highlights the constancy of faith under torment, presenting the deacon-martyr as a model of fortitude whose sufferings, according to ancient tradition, became themselves a form of eloquent preaching that strengthened the faith of onlookers.

Devotion to this Spanish martyr spread rapidly after his death in the early fourth century, celebrated by Saint Augustine and Prudentius among others in glowing sermons and poetry, and his cult became one of the most widespread in both Spain and Rome. His feast, kept from antiquity on January 22nd, has retained this date and its rank as an optional memorial through the successive reforms of the Roman Calendar, including that of 1969.

This memorial invites the faithful, particularly deacons and those engaged in charitable and liturgical service, to see in Vincent a model of fidelity that unites humble ministry with heroic witness. It reminds the Church that no act of service, however ordinary, is separate from the total gift of self to Christ that every disciple is ultimately called to make.
$desc$),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'Saint Francis de Sales, Bishop and Doctor of the Church', $desc$
Celebrated on January 24th as an obligatory memorial in Ordinary Time, this feast is vested in white, proper to a bishop and doctor of the Church, and falls just before the Conversion of Saint Paul, within the winter cycle of Ordinary Time.

The memorial celebrates the doctrine of universal holiness and the gentle, patient pastoral method associated with this saint's teaching, proclaiming that all the faithful, whatever their state in life, are called to the fullness of charity and devotion. It highlights sound catechesis, spiritual direction, and gentleness joined to firmness in truth as authentic instruments of evangelization and pastoral renewal, especially in times of religious controversy.

Devotion to this bishop grew rapidly after his death in 1622; he was canonized in 1665 and declared a Doctor of the Church in 1877, in recognition of the enduring influence of his spiritual writings. His feast, initially kept on January 29th, the date of his burial, was moved to January 24th in the calendar reform of 1969 to avoid conflict with the Sundays after Epiphany and to situate the memorial nearer to the anniversary of his death, while retaining obligatory rank in recognition of his status as Doctor of the Church.

This memorial invites the faithful, and especially those engaged in communication, writing, and journalism, of whom Francis de Sales is patron, to recognize sound teaching and gentle persuasion as authentic paths of evangelization in a world of controversy and noise. It reminds the whole Church that the "little way" of ordinary fidelity, patiently and gently lived, is itself a genuine and accessible road to sanctity for every state of life.
$desc$),
('the-conversion-of-saint-paul-the-apostle', 'The Conversion of Saint Paul the Apostle', $desc$
Celebrated on January 25th with the rank of Feast, this celebration is vested in white and traditionally marks the close of the Week of Prayer for Christian Unity (January 18–25), giving the octave-like observance a fitting apostolic conclusion.

The feast celebrates not the person of Paul in general, but specifically the event of his conversion on the road to Damascus, the sovereign action of grace that transformed a persecutor of the Church into her greatest missionary. Theologically, it proclaims the power of Christ's call to overturn any human resistance, the primacy of grace over merit in the economy of salvation, and the universal scope of the apostolic mission that flows from an encounter with the Risen Christ.

A feast of Paul's conversion is attested in the West from at least the sixth century, gaining widespread observance during the Middle Ages, especially in Gaul and Rome, and it has remained on January 25th, associated by tradition with the date of his conversion, through every subsequent calendar reform, its rank as Feast (rather than Solemnity or simple memorial) preserved in the 1969 revision in recognition of its unique importance, yet remaining distinct from Paul's principal feast with Peter on June 29th.

This feast invites every believer to recognize that conversion remains always possible, however entrenched one's opposition to grace may seem, and it holds up Paul's transformation as an image of the radical newness Christ offers to every sinner. Especially through its association with the Week of Prayer for Christian Unity, it calls the whole Church to seek, in the same grace that converted Paul, the unity for which Christ himself prayed.
$desc$),
('saints-timothy-and-titus-bishops', 'Saints Timothy and Titus, Bishops', $desc$
Celebrated on January 26th as an obligatory memorial in Ordinary Time, this feast is vested in white, proper to bishops, and follows immediately upon the Conversion of Saint Paul, forming a natural sequel that turns from the apostle's own conversion to the fruit of his apostolic labors in the disciples he formed.

The memorial celebrates the apostolic succession and pastoral ministry handed on by Paul to his closest collaborators, whom he ordained bishops and entrusted with the care of the churches at Ephesus and Crete respectively. It highlights the bond between apostleship and the episcopate, the transmission of sound doctrine safeguarded by faithful pastors, and the pastoral virtues of prudence, courage, and fidelity to which Paul exhorts his disciples in the letters addressed to them, which bear their names in the New Testament canon.

Devotion to these two disciples of Paul has ancient roots, with Timothy long commemorated in the West on January 24th and Titus on a variety of dates depending on region, until the 1969 reform united them in a single obligatory memorial on January 26th, deliberately placed immediately after the feast of Paul's conversion so as to present, in close succession, the apostle and the fruit of his apostolic formation.

This memorial invites bishops, priests, and all engaged in pastoral ministry to recognize in Timothy and Titus models of fidelity to sound doctrine, courage in governance, and pastoral charity received from and exercised in communion with the wider Church. It reminds the faithful that the mission of the Gospel is never a solitary undertaking, but is always handed on from one generation to the next through bonds of formation, trust, and ecclesial communion.
$desc$),
('saint-angela-merici-virgin', 'Saint Angela Merici, Virgin', $desc$
Kept on January 27th as an optional memorial in Ordinary Time, this feast uses white vestments proper to a consecrated virgin and founder, falling within the sequence of January saints devoted to teaching, formation, and consecrated life.

The memorial celebrates the vocation of consecrated virginity lived, innovatively, without cloister, entirely dedicated to the Christian formation of young women within ordinary society. It highlights the dignity of the lay apostolate and of the education of the young in the faith, proclaiming that holiness and apostolic fruitfulness are not bound to any single canonical form of consecrated life but can flourish through creative fidelity to the Holy Spirit's promptings in response to the needs of a given age.

Devotion to this foundress developed after her death in 1540; she was canonized in 1807, and her feast entered the General Roman Calendar on January 31st before the reform, later moved to January 27th, closer to the anniversary of her death, in the 1969 revision, which assigned her the rank of optional memorial consistent with the treatment of other founders of the modern era.

This memorial invites the faithful, and especially those engaged in the Christian education of children and young people, to recognize catechesis and formation in virtue as authentic works of the apostolate, and it holds up consecrated life lived amid the world, rather than apart from it, as a legitimate and fruitful path of holiness that anticipates developments the Church would only later formally recognize in the vocation of secular institutes.
$desc$),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'Saint Thomas Aquinas, Priest and Doctor of the Church', $desc$
Celebrated on January 28th as an obligatory memorial in Ordinary Time, this feast is vested in white, proper to a priest and doctor of the Church, and holds a place of particular honor as the memorial of the Church's preeminent theologian and "Common Doctor."

The memorial celebrates the harmony of faith and reason achieved in this saint's theological synthesis, proclaiming that grace does not destroy but perfects nature, and that rigorous philosophical and theological inquiry serves, rather than threatens, the truths of revelation. It highlights the vocation of the theologian as a genuine service to the Church, and holds up contemplative study, undertaken in humility and prayer, as itself a path of holiness.

Devotion to this friar developed rapidly after his death in 1274; he was canonized in 1323 and declared a Doctor of the Church in 1567, given the special title "Angelic Doctor," and later proclaimed patron of Catholic schools and universities by Pope Leo XIII in 1880, in recognition of the enduring authority of his theological and philosophical synthesis, particularly the Summa Theologiae. His feast, originally kept on March 7th, the anniversary of his death, was moved to January 28th, the date of the translation of his relics, in the 1969 reform, since March 7th regularly falls within Lent.

This memorial invites theologians, students, and teachers to embrace intellectual rigor as an act of love for the truth who is Christ himself, and it reminds the whole Church that the pursuit of wisdom, far from being opposed to holiness, is one of its authentic and fruitful expressions. Aquinas remains, for the whole Church, a model of how the mind, purified and elevated by grace, can serve the deepest needs of faith and pastoral life.
$desc$),
('saint-john-bosco-priest', 'Saint John Bosco, Priest', $desc$
Celebrated on January 31st as an obligatory memorial in Ordinary Time, this feast is vested in white, proper to a priest and founder, and closes out the month of January with a celebration devoted to the pastoral care and Christian education of youth.

The memorial celebrates the vocation of the Christian educator, proclaiming that the formation of the young in faith, reason, and virtue is itself a genuine and urgent form of the Church's mission. It highlights the "preventive system" of education grounded in reason, religion, and loving-kindness rather than fear, presenting pastoral charity exercised toward the young, especially the poor and abandoned, as a privileged expression of the Gospel and an image of the Good Shepherd's own tenderness.

Devotion to this priest and founder developed rapidly after his death in 1888; he was canonized in 1934, and his feast entered the General Roman Calendar shortly thereafter, retained on January 31st, the date of his death, through the 1969 reform, which preserved his obligatory rank in recognition of the vast and enduring influence of the educational and religious family he founded.

This memorial invites the whole Church, and especially parents, teachers, and catechists, to see in the care of children and young people one of the most urgent fields of the New Evangelization. It reminds the faithful that holiness can be forged amid the daily, often unglamorous labor of educating the young, and it holds up joy, reason, and religion, lived together, as an enduring pedagogy for forming saints of every generation.
$desc$),
('the-baptism-of-the-lord', 'The Baptism of the Lord', $desc$
Celebrated on the Sunday following January 6th (or, where the Epiphany is transferred, on the Monday after it), the Baptism of the Lord holds the rank of Feast of the Lord and marks the definitive close of the Christmas season, opening the following day onto the season of Ordinary Time; the day is vested in white.

The feast celebrates Christ's baptism in the Jordan by John, the moment in which the Father's voice proclaims Jesus as his beloved Son and the Holy Spirit descends upon him, revealing the Trinity and inaugurating Christ's public ministry. Theologically, it proclaims that Jesus, though sinless, entered the waters in solidarity with sinful humanity, sanctifying the waters and prefiguring the sacrament of Baptism by which believers are made adopted children of God, sharers in the Spirit given at the Jordan.

A feast commemorating Christ's baptism has ancient roots in the East, originally united with the Epiphany celebration of January 6th, forming one of the three manifestations of the Lord (with the Magi and Cana) recalled in that feast; in the West it gradually acquired greater autonomy, becoming a discrete commemoration attached to the Epiphany octave by the Middle Ages. The 1969 reform of the calendar established the Baptism of the Lord as an independent Feast on the Sunday after January 6th, deliberately marking it as the definitive threshold between the Christmas season and Ordinary Time.

The feast invites the faithful to renew the grace and promises of their own baptism, recognizing in Christ's descent into the Jordan the pattern of their own incorporation into his death and resurrection. It calls each believer to hear anew, in his or her own heart, the Father's words spoken over Jesus, "You are my beloved," and to embrace the mission that flows from a life given over entirely to the Spirit at the very outset of the season of ordinary Christian discipleship.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- 3) TRANSLATIONS FR
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('solemnity-of-mary-the-holy-mother-of-god', 'Sainte Marie, Mère de Dieu', $desc$
Célébrée le 1er janvier, jour octave de Noël, cette solennité compte parmi les jours les plus élevés du calendrier liturgique et demeure, dans de nombreux pays, une fête d'obligation. Les ornements blancs, signes de joie et de gloire, y sont de rigueur. Ouvrant l'année civile, elle referme l'octave de Noël tout en maintenant le regard de l'Église fixé sur le mystère du Verbe fait chair.

Cette solennité proclame la dignité unique de Marie, Theotokos, Mère de Dieu, titre solennellement défini par le concile d'Éphèse en 431 contre la négation nestorienne selon laquelle Marie n'aurait porté en son sein que l'humanité du Christ. Puisque Jésus-Christ est une seule Personne, vrai Dieu et vrai homme, celui que Marie a porté est véritablement Dieu ; elle est donc à juste titre appelée Mère de Dieu, et non seulement mère de son humanité. La fête protège ainsi la vérité même de l'Incarnation, car diminuer la maternité divine de Marie reviendrait à diminuer l'unité de la personne du Christ.

Une fête au 1er janvier est attestée à Rome dès le VIe siècle au moins, commémorant à l'origine la Circoncision du Seigneur le huitième jour après sa naissance, selon la loi juive, en même temps que la maternité de Marie. Diverses traditions locales, dont l'Orient byzantin, ont conservé des accents différents pour ce jour. Dans la réforme du calendrier de 1969, le pape Paul VI a restauré le jour octave de Noël dans son caractère marial ancien et premier, en instituant la Solennité de Marie, Mère de Dieu, tandis que la Circoncision, sans donner son nom au jour, demeure implicite dans la lecture évangélique. Depuis 1968, ce jour est également observé comme Journée mondiale de la paix.

Commencer l'année sous la protection maternelle de Marie rappelle aux fidèles que tout le temps humain se déroule dans le mystère de l'Incarnation et trouve son sens dans le Christ. La fête invite les croyants à confier l'année qui s'ouvre à l'intercession de Marie, à imiter sa méditation contemplative de la Parole en son cœur, et à chercher, par sa médiation, la paix que seul son Fils peut donner à un monde si souvent déchiré par les divisions.
$desc$),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'Saints Basile le Grand et Grégoire de Nazianze', $desc$
Célébrée le 2 janvier comme mémoire obligatoire, cette fête tombe dans le temps de Noël, dans les jours qui suivent l'Octave, avec des ornements blancs, puisque ces saints sont honorés comme évêques et docteurs et non sous l'aspect du martyre. Elle réunit en une seule commémoration deux grands évêques cappadociens du IVe siècle, cas assez rare dans le calendrier de deux saints non martyrs partageant un même jour de ce rang.

La mémoire honore Basile et Grégoire comme docteurs de l'Église, maîtres dont les écrits ont façonné la théologie trinitaire, la vie monastique et la rhétorique chrétienne. Leur fête commune célèbre avant tout la doctrine de la Sainte Trinité, défendue contre l'arianisme, et le modèle d'un ministre épiscopal uni à une amitié profonde, à l'ascèse et à la charité pastorale. L'Église les présente ensemble comme une image de la façon dont la sainteté et la saine doctrine grandissent par une véritable amitié spirituelle mise au service de l'Évangile.

La dévotion à Basile et Grégoire s'est développée tôt en Orient, où chacun possède (et possède encore) une fête distincte dans le calendrier byzantin (respectivement les 1er et 25 janvier), outre leur commémoration commune le 30 janvier avec Jean Chrysostome comme « Trois Saints Hiérarques ». En Occident, avant la réforme, Basile était commémoré le 14 juin et Grégoire le 9 mai. La révision de 1969 du calendrier romain les a réunis au 2 janvier, date la plus proche de la mort de Basile (1er janvier 379), en une seule mémoire obligatoire, faisant délibérément écho à la pratique orientale d'honorer ensemble ces deux amis.

Leur mémoire commune invite les fidèles, en particulier au début de l'année, à méditer sur la fécondité de l'amitié vécue dans le Christ, sur la nécessité d'une saine doctrine pour une foi mûre, et sur le courage requis pour enseigner et défendre la vérité sur Dieu en toute époque. Basile et Grégoire demeurent patrons de l'étude théologique unie à la prière, rappelant à l'Église que la droite foi et la sainteté de vie ne sont jamais séparées.
$desc$),
('the-most-holy-name-of-jesus', 'Très Saint Nom de Jésus', $desc$
Célébrée le 3 janvier comme mémoire facultative dans le temps de Noël, cette fête utilise les ornements blancs et se situe parmi les jours fériaux qui mènent de l'Octave de Noël vers l'Épiphanie. Là où elle n'est pas célébrée à cette date, la même dévotion trouve souvent son expression liturgique lors du dimanche entre le 2 et le 5 janvier, ou s'intègre à l'esprit général du cycle de Noël, tout entier tourné vers l'adoration de l'Enfant nouveau-né.

La mémoire vénère le Saint Nom de Jésus lui-même, nom donné par l'ange avant sa conception, et qui signifie « le Seigneur sauve ». Elle célèbre la vérité biblique et théologique, proclamée par saint Paul, selon laquelle « au nom de Jésus, tout genou fléchisse », reconnaissant dans ce nom tout le mystère de l'Incarnation et de la rédemption condensé en un seul mot que l'Église invoque avec foi, adoration et confiance filiale.

La dévotion au Saint Nom plonge ses racines dans l'Antiquité, promue notamment par saint Bernardin de Sienne au XVe siècle, et reçut une forme liturgique au fil des siècles dans divers calendriers locaux, notamment dans la tradition franciscaine, avant de se répandre dans toute l'Église. Supprimée comme fête distincte lors de la réforme consécutive au Concile Vatican II, son contenu se retrouvant intégré dans d'autres célébrations, elle fut néanmoins restaurée au calendrier romain général en 2002 comme mémoire facultative au 3 janvier, en reconnaissance de sa valeur durable pour la piété populaire.

La fête invite les croyants à redécouvrir la puissance et la douceur d'invoquer le nom de Jésus dans la prière personnelle, faisant écho à l'antique pratique de la prière de Jésus et aux nombreuses dévotions populaires construites autour de ce Nom. Elle rappelle aux fidèles qu'aucun autre nom sous le ciel n'a été donné par lequel nous devons être sauvés, encourageant l'invocation simple et confiante de Jésus dans la vie quotidienne, dans l'épreuve et à l'heure de la mort.
$desc$),
('the-epiphany-of-the-lord', 'Épiphanie du Seigneur', $desc$
Célébrée le 6 janvier (ou, dans de nombreux pays, le dimanche compris entre le 2 et le 8 janvier), l'Épiphanie a rang de Solennité du Seigneur et compte parmi les fêtes les plus anciennes et les plus importantes de toute l'année liturgique, avec ornements blancs ou dorés ; elle est traditionnellement considérée, avec Pâques et la Pentecôte, comme l'une des trois grandes « manifestations » du Christ célébrées par l'Église ancienne.

Le mot « Épiphanie » signifie manifestation, et la fête célèbre la révélation du Christ aux nations, symbolisée par les mages venus d'Orient adorer le Roi nouveau-né. Théologiquement, elle proclame la portée universelle du salut : les nations païennes, représentées par les mages, sont appelées à partager avec Israël la même promesse dans le Christ Jésus. Dans la tradition occidentale, la fête a longtemps réuni trois manifestations de la divinité du Seigneur — l'adoration des mages, le baptême du Christ dans le Jourdain et le miracle de Cana — bien que le calendrier romain actuel les distingue en trois célébrations séparées, tout en conservant des échos des trois dans les textes liturgiques de l'Épiphanie.

La fête de l'Épiphanie trouve son origine dans l'Orient chrétien, probablement en Égypte, à la fin du IIIe siècle ou au début du IVe, réunissant d'abord en une seule fête, le 6 janvier, la naissance, le baptême et le premier miracle du Christ ; elle se répandit ensuite en Occident où, après l'établissement de Noël au 25 décembre, l'Épiphanie se concentra davantage sur la visite des mages. Rome adopta la fête dès le milieu du IVe siècle. Au Moyen Âge, elle s'enrichit de coutumes locales, de la bénédiction de la craie et des maisons à l'annonce de la date de Pâques, dont beaucoup subsistent aujourd'hui ; la réforme de 1969 a maintenu son rang de Solennité tout en clarifiant son identité propre par rapport au Baptême du Seigneur et aux Noces de Cana, désormais situés respectivement en temps ordinaire et lors d'autres dimanches.

L'Épiphanie appelle chaque croyant à reconnaître dans l'Enfant-Christ la lumière des nations et à répondre, comme les mages, par la marche de la foi, l'offrande de ses dons et l'adoration. Elle rappelle à l'Église sa vocation missionnaire à faire connaître le Christ à tout peuple et à toute culture, et invite les fidèles à renouveler leur propre « épiphanie », laissant la lumière du Christ se manifester toujours plus clairement dans leur vie quotidienne.
$desc$),
('saint-raymond-of-penyafort-priest', 'Saint Raymond de Penyafort, prêtre', $desc$
Célébrée le 7 janvier comme mémoire facultative, cette fête tombe dans les jours qui suivent l'Épiphanie, avec ornements blancs propres à un confesseur et docteur du droit canonique, dans la dernière partie du temps de Noël avant le Baptême du Seigneur.

La mémoire honore le ministre de la réconciliation et le service de la justice au sein de l'Église, incarnés par un prêtre renommé comme confesseur, canoniste et organisateur de la vie pénitentielle et juridique de l'Église. Liturgiquement, ce jour met en valeur les vertus de la miséricorde unie à la vérité, de la charité pastorale exercée à travers le travail patient du gouvernement, du droit et du sacrement de Pénitence, montrant que la sainteté peut fleurir dans le labeur humble d'ordonner la discipline de l'Église pour le bien des âmes.

La dévotion à ce saint se développa après sa mort au XIIIe siècle ; il fut canonisé en 1601, et sa fête entra au calendrier romain général avec le rang propre à un confesseur non évêque, d'abord fixée au 23 janvier. Lors de la réforme de 1969, sa mémoire fut transférée au 7 janvier, plus proche de la date réelle de sa mort (6 janvier 1275), et ramenée au rang de mémoire facultative, conformément à l'allégement du calendrier postconciliaire, qui réservait le rang obligatoire surtout aux saints d'une portée plus universelle.

Cette mémoire invite les fidèles, en particulier ceux qui œuvrent dans le droit canonique, la confession et l'administration ecclésiale, à voir dans un tel travail un véritable chemin de sainteté. Elle rappelle à l'Église que les structures de justice et de miséricorde, patiemment édifiées, servent le salut des âmes et ne s'opposent pas au mystère plus profond de la grâce célébré tout au long du temps de Noël, mais le servent au contraire.
$desc$),
('saint-hilary-bishop-and-doctor-of-the-church', 'Saint Hilaire, évêque et docteur de l''Église', $desc$
Célébrée le 13 janvier comme mémoire facultative en temps ordinaire (ou parfois encore dans le temps de Noël selon le calendrier de l'année), cette fête est marquée par les ornements blancs propres à un évêque et docteur de l'Église.

La mémoire célèbre le ministre d'un évêque théologien qui défendit la pleine divinité du Christ contre l'arianisme, ce qui lui valut le titre d'« Athanase de l'Occident ». Liturgiquement, ce jour met en lumière la doctrine de la Trinité ainsi que la véritable divinité et humanité du Christ, thèmes opportunément rappelés à proximité des temps de Noël et de l'Épiphanie qui célèbrent le mystère de l'Incarnation, et honore le courage d'un évêque qui préféra l'exil plutôt que de compromettre la vérité révélée.

Le culte d'Hilaire se développa peu après sa mort au IVe siècle, et sa fête fut célébrée en Occident à diverses dates selon les calendriers médiévaux puis tridentin, généralement le 13 ou le 14 janvier. Il fut proclamé docteur de l'Église en 1851. La réforme de 1969 conserva le 13 janvier, proche de l'anniversaire de sa mort, et fixa son rang à mémoire facultative, conformément au traitement réservé à d'autres docteurs des premiers siècles dont les fêtes ne portent pas un rang obligatoire dans le calendrier universel.

Cette mémoire invite les fidèles à redécouvrir la doctrine de la Trinité comme le cœur même de la foi chrétienne, et non comme une simple question abstraite, et à puiser courage dans l'exemple d'Hilaire, ferme dans la vérité au milieu de la controverse et au prix d'un coût personnel. Elle rappelle à l'Église qu'un enseignement sain, défendu avec charité et fermeté, demeure une nourriture essentielle pour le peuple de Dieu en toute époque.
$desc$),
('saint-anthony-abbot', 'Saint Antoine, abbé', $desc$
Célébrée le 17 janvier comme mémoire obligatoire en temps ordinaire, cette fête revêt les ornements blancs propres à un confesseur et fondateur, et occupe une place ferme dans le calendrier comme l'une des plus anciennes et des plus vénérables fêtes de saints non martyrs observées par l'Église universelle.

La mémoire célèbre la naissance même du monachisme chrétien et la suite radicale du Christ par le renoncement, la solitude et le combat spirituel dans le désert. Elle commémore une vie entièrement donnée à la recherche de Dieu par l'ascèse et la prière, vie que l'Église présente comme un témoignage permanent que les conseils évangéliques de pauvreté, de chasteté et d'obéissance à la volonté de Dieu peuvent être vécus à un degré héroïque, donnant naissance à toute une tradition de vie monastique et érémitique qui se poursuit encore aujourd'hui.

La vénération de ce père des moines commença aussitôt après sa mort au IVe siècle, se répandit rapidement grâce à la biographie écrite par saint Athanase, et devint l'un des cultes les plus répandus de l'Église ancienne, entrant tôt dans le martyrologe romain et le calendrier, traditionnellement au 17 janvier, date conservée sans changement à travers toutes les révisions ultérieures du calendrier, y compris celle de 1969, qui le maintint parmi le petit nombre de saints anciens non martyrs bénéficiant du rang obligatoire.

Cette mémoire invite les fidèles à redécouvrir la valeur du silence, de la discipline et du combat intérieur contre la tentation dans la vie spirituelle, même au milieu des occupations de l'existence ordinaire. Elle présente la vie monastique et la vocation érémitique comme des dons toujours vivants pour toute l'Église, rappelant à tous les baptisés que l'expérience du désert, de purification et de rencontre avec Dieu, demeure, sous une forme analogue, nécessaire à une authentique croissance chrétienne.
$desc$),
('saint-fabian-pope-and-martyr', 'Saint Fabien, pape et martyr', $desc$
Célébrée le 20 janvier comme mémoire facultative, partagée au calendrier avec saint Sébastien, cette fête revêt les ornements rouges, couleur du martyre, situant la fête d'un pape martyr dans le temps ordinaire de janvier.

La mémoire célèbre la fidélité du pasteur jusqu'à la mort, l'union du ministre pétrinien au témoignage suprême du sang, proclamant que la charge de gouverner l'Église peut elle-même devenir l'occasion du martyre. Elle met en lumière l'endurance de l'Église romaine du IIIe siècle sous la persécution et la continuité ininterrompue de sa direction, même face au danger mortel.

La dévotion à ce pape martyr des premiers siècles est attestée dès l'Antiquité, sa mémoire conservée dans les anciens calendriers liturgiques romains (la Depositio Martyrum) et dans le martyrologe romain, le 20 janvier marquant l'anniversaire de sa sépulture. La date et le rang ont été conservés avec une remarquable stabilité à travers toutes les réformes du calendrier, y compris celle de 1969, qui le maintint comme mémoire facultative, reflétant sa place parmi les vénérables martyrs romains des premiers temps, partageant son jour avec saint Sébastien sans fusionner les deux commémorations en une seule fête.

Cette mémoire invite les fidèles à considérer que la fidélité au Christ peut exiger le sacrifice suprême même de ceux à qui est confiée l'autorité dans l'Église, et encourage la confiance en la persévérance de l'Église à travers toutes les époques d'épreuve, soutenue dès ses premiers siècles par des pasteurs prêts à donner leur vie pour le troupeau.
$desc$),
('saint-sebastian-martyr', 'Saint Sébastien, martyr', $desc$
Également célébrée le 20 janvier comme mémoire facultative, aux côtés de saint Fabien, cette fête revêt de même les ornements rouges propres aux martyrs, marquant l'une des commémorations de martyrs les plus aimées du calendrier romain dans le temps ordinaire.

La mémoire célèbre le courage d'un soldat chrétien qui rendit témoignage au Christ au sein même des structures du pouvoir civil et militaire romain, choisissant la fidélité à l'Évangile plutôt que l'avancement mondain, et endurant la souffrance pour la foi. Elle présente le martyre comme la configuration suprême au Christ crucifié et ressuscité, et honore le patron des soldats, des archers et des malades comme intercesseur pour la force au milieu de l'adversité.

La dévotion à ce martyr fleurit très tôt à Rome, où une basilique fut bâtie sur son tombeau, sur la Via Appia, l'une des sept églises de pèlerinage de la ville ; sa commémoration est attestée dans les plus anciens calendriers liturgiques romains au 20 janvier. Le culte de Sébastien grandit considérablement au Moyen Âge, notamment comme protecteur contre la peste, et sa fête a conservé sa date traditionnelle et son rang de mémoire à travers toutes les réformes du calendrier, y compris celle de 1969, qui confirma le 20 janvier, partagé avec Fabien, comme mémoire facultative.

Cette mémoire invite les fidèles à invoquer l'intercession de Sébastien dans la maladie et l'adversité, et à puiser dans son exemple le courage de vivre un témoignage chrétien authentique même dans des professions ou des milieux qui semblent s'opposer à la foi, faisant confiance à la grâce pour transformer tout état de vie en occasion de fidélité héroïque.
$desc$),
('saint-agnes-virgin-and-martyr', 'Sainte Agnès, vierge et martyre', $desc$
Célébrée le 21 janvier comme mémoire obligatoire en temps ordinaire, cette fête revêt les ornements rouges, couleur du martyre, et compte parmi les commémorations de martyrs les plus anciennes et les plus vénérées de l'Église romaine, mentionnée déjà dans le plus ancien Canon romain de la messe.

La mémoire célèbre l'union de la virginité consacrée et du martyre, proclamant que la consecration totale au Christ et le don suprême de sa vie pour lui sont deux expressions d'un même don total de l'épouse à l'Époux. Elle honore le témoignage d'une jeune martyre dont la jeunesse même souligne que la grâce, et non la force humaine, est la véritable source de la fidélité héroïque, et rappelle que la pureté du cœur et la fidélité jusqu'à la mort procèdent d'un même amour du Christ par-dessus toute chose.

La dévotion à cette martyre remonte au moins au IVe siècle et devint rapidement l'un des cultes les plus répandus de l'Église romaine, attesté par le pape Damase, par saint Ambroise, et par son inclusion parmi les saints nommés dans le Canon romain (première prière eucharistique). Sa fête, célébrée depuis l'Antiquité le 21 janvier, avec une commémoration secondaire le 28 janvier (« seconde fête de sainte Agnès », jour octave) dans les calendriers antérieurs, fut conservée comme mémoire obligatoire lors de la réforme de 1969, laquelle supprima néanmoins la commémoration octave secondaire, ne retenant que la date principale.

Cette mémoire invite les fidèles, particulièrement les jeunes, à voir en Agnès un modèle d'intégrité, de pureté et de témoignage sans crainte du Christ, et rappelle aux vierges consacrées de toute l'Église leur ancienne patronne. Son exemple continue d'inspirer la bénédiction traditionnelle des agneaux en sa fête, dont la laine sert à tisser les pallia des archevêques, symbole approprié du lien du pasteur avec le Christ, Agneau de Dieu, que sainte Agnès suivit jusqu'à la mort.
$desc$),
('saint-vincent-deacon-and-martyr', 'Saint Vincent, diacre et martyr', $desc$
Célébrée le 22 janvier comme mémoire facultative en temps ordinaire, cette fête revêt les ornements rouges propres aux martyrs, honorant l'un des diacres martyrs les plus célèbres de l'Église ancienne dans la série des commémorations de martyrs de janvier.

La mémoire célèbre le ministre diaconal uni au martyre, proclamant que le service de l'autel et des pauvres peut s'épanouir dans le service suprême du don de sa vie pour le Christ. Elle met en lumière la constance de la foi dans le tourment, présentant le diacre martyr comme un modèle de force d'âme dont les souffrances, selon la tradition ancienne, devinrent elles-mêmes une forme de prédication éloquente qui affermit la foi des témoins.

La dévotion à ce martyr espagnol se répandit rapidement après sa mort au début du IVe siècle, célébré par saint Augustin et Prudence, entre autres, dans des sermons et poèmes enflammés, et son culte devint l'un des plus répandus tant en Espagne qu'à Rome. Sa fête, célébrée depuis l'Antiquité le 22 janvier, a conservé cette date et son rang de mémoire facultative à travers les réformes successives du calendrier romain, y compris celle de 1969.

Cette mémoire invite les fidèles, en particulier les diacres et ceux qui exercent un service caritatif et liturgique, à voir en Vincent un modèle de fidélité unissant humble ministre et témoignage héroïque. Elle rappelle à l'Église qu'aucun acte de service, si ordinaire soit-il, n'est séparé du don total de soi au Christ auquel tout disciple est finalement appelé.
$desc$),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'Saint François de Sales, évêque et docteur de l''Église', $desc$
Célébrée le 24 janvier comme mémoire obligatoire en temps ordinaire, cette fête revêt les ornements blancs propres à un évêque et docteur de l'Église, et tombe juste avant la Conversion de saint Paul, dans le cycle hivernal du temps ordinaire.

La mémoire célèbre la doctrine de la sainteté universelle et la méthode pastorale douce et patiente associée à l'enseignement de ce saint, proclamant que tous les fidèles, quel que soit leur état de vie, sont appelés à la plénitude de la charité et de la dévotion. Elle met en lumière la saine catéchèse, la direction spirituelle, et la douceur unie à la fermeté dans la vérité comme instruments authentiques d'évangélisation et de renouveau pastoral, particulièrement en des temps de controverse religieuse.

La dévotion à cet évêque se développa rapidement après sa mort en 1622 ; il fut canonisé en 1665 et proclamé docteur de l'Église en 1877, en reconnaissance de l'influence durable de ses écrits spirituels. Sa fête, d'abord célébrée le 29 janvier, date de sa sépulture, fut déplacée au 24 janvier lors de la réforme du calendrier de 1969, pour éviter le conflit avec les dimanches après l'Épiphanie et pour situer la mémoire plus près de l'anniversaire de sa mort, tout en conservant le rang obligatoire en reconnaissance de son statut de docteur de l'Église.

Cette mémoire invite les fidèles, et en particulier ceux qui œuvrent dans la communication, l'écriture et le journalisme, dont saint François de Sales est le patron, à reconnaître dans le sain enseignement et la douce persuasion des chemins authentiques d'évangélisation dans un monde de controverse et de bruit. Elle rappelle à toute l'Église que la « petite voie » de la fidélité ordinaire, vécue avec patience et douceur, est elle-même un chemin véritable et accessible de sainteté pour tout état de vie.
$desc$),
('the-conversion-of-saint-paul-the-apostle', 'Conversion de saint Paul, apôtre', $desc$
Célébrée le 25 janvier avec le rang de Fête, cette célébration revêt les ornements blancs et marque traditionnellement la clôture de la Semaine de prière pour l'unité des chrétiens (18-25 janvier), donnant à cette observance de type octave une conclusion apostolique appropriée.

La fête ne célèbre pas la personne de Paul en général, mais spécifiquement l'événement de sa conversion sur le chemin de Damas, l'action souveraine de la grâce qui transforma un persécuteur de l'Église en son plus grand missionnaire. Théologiquement, elle proclame la puissance de l'appel du Christ à renverser toute résistance humaine, la primauté de la grâce sur le mérite dans l'économie du salut, et la portée universelle de la mission apostolique qui découle d'une rencontre avec le Christ ressuscité.

Une fête de la conversion de Paul est attestée en Occident dès le VIe siècle au moins, gagnant une large observance au Moyen Âge, particulièrement en Gaule et à Rome, et elle est demeurée au 25 janvier, associé par la tradition à la date de sa conversion, à travers toutes les réformes ultérieures du calendrier, son rang de Fête (plutôt que Solennité ou simple mémoire) étant conservé dans la révision de 1969 en reconnaissance de son importance unique, tout en restant distincte de la fête principale de Paul avec Pierre, le 29 juin.

Cette fête invite chaque croyant à reconnaître que la conversion demeure toujours possible, aussi enracinée que puisse paraître son opposition à la grâce, et présente la transformation de Paul comme une image de la nouveauté radicale que le Christ offre à tout pécheur. Particulièrement par son association avec la Semaine de prière pour l'unité des chrétiens, elle appelle toute l'Église à chercher, dans la même grâce qui convertit Paul, l'unité pour laquelle le Christ lui-même a prié.
$desc$),
('saints-timothy-and-titus-bishops', 'Saints Timothée et Tite, évêques', $desc$
Célébrée le 26 janvier comme mémoire obligatoire en temps ordinaire, cette fête revêt les ornements blancs propres aux évêques, et suit immédiatement la Conversion de saint Paul, formant une suite naturelle qui passe de la conversion de l'apôtre lui-même au fruit de ses travaux apostoliques dans les disciples qu'il forma.

La mémoire célèbre la succession apostolique et le ministre pastoral transmis par Paul à ses plus proches collaborateurs, qu'il ordonna évêques et chargéa du soin des Églises d'Éphèse et de Crète respectivement. Elle met en lumière le lien entre l'apostolat et l'épiscopat, la transmission de la saine doctrine sauvegardée par des pasteurs fidèles, et les vertus pastorales de prudence, de courage et de fidélité auxquelles Paul exhorte ses disciples dans les lettres qui leur sont adressées et qui portent leur nom dans le canon du Nouveau Testament.

La dévotion à ces deux disciples de Paul plonge ses racines dans l'Antiquité, Timothée étant depuis longtemps commémoré en Occident le 24 janvier et Tite à des dates variables selon les régions, jusqu'à ce que la réforme de 1969 les réunisse en une seule mémoire obligatoire au 26 janvier, délibérément placée aussitôt après la fête de la conversion de Paul afin de présenter, en succession immédiate, l'apôtre et le fruit de sa formation apostolique.

Cette mémoire invite les évêques, les prêtres et tous ceux qui exercent un ministre pastoral à reconnaître en Timothée et Tite des modèles de fidélité à la saine doctrine, de courage dans le gouvernement, et de charité pastorale reçue de et exercée en communion avec l'Église entière. Elle rappelle aux fidèles que la mission de l'Évangile n'est jamais une entreprise solitaire, mais se transmet toujours d'une génération à l'autre par des liens de formation, de confiance et de communion ecclésiale.
$desc$),
('saint-angela-merici-virgin', 'Sainte Angèle Merici, vierge', $desc$
Célébrée le 27 janvier comme mémoire facultative en temps ordinaire, cette fête revient les ornements blancs propres à une vierge consacrée et fondatrice, s'inscrivant dans la séquence des saints de janvier consacrés à l'enseignement, à la formation et à la vie consacrée.

La mémoire célèbre la vocation de la virginité consacrée vécue, de façon novatrice, sans clôture, entièrement dédiée à la formation chrétienne des jeunes filles au sein de la société ordinaire. Elle met en lumière la dignité de l'apostolat laïc et de l'éducation des jeunes dans la foi, proclamant que la sainteté et la fécondité apostolique ne sont liées à aucune forme canonique unique de vie consacrée, mais peuvent fleurir par une fidélité créative aux inspirations de l'Esprit Saint en réponse aux besoins d'une époque donnée.

La dévotion à cette fondatrice se développa après sa mort en 1540 ; elle fut canonisée en 1807, et sa fête entra au calendrier romain général le 31 janvier avant la réforme, puis fut déplacée au 27 janvier, plus proche de l'anniversaire de sa mort, lors de la révision de 1969, qui lui attribua le rang de mémoire facultative, conformément au traitement réservé aux autres fondateurs de l'époque moderne.

Cette mémoire invite les fidèles, et particulièrement ceux qui se consacrent à l'éducation chrétienne des enfants et des jeunes, à reconnaître dans la catéchèse et la formation à la vertu de véritables œuvres de l'apostolat, et présente la vie consacrée vécue au milieu du monde, plutôt qu'à l'écart de celui-ci, comme un chemin légitime et fécond de sainteté, anticipant des développements que l'Église ne reconnaîtrait formellement que plus tard dans la vocation des instituts séculiers.
$desc$),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'Saint Thomas d''Aquin, prêtre et docteur de l''Église', $desc$
Célébrée le 28 janvier comme mémoire obligatoire en temps ordinaire, cette fête revêt les ornements blancs propres à un prêtre et docteur de l'Église, et occupe une place d'honneur particulière comme mémoire du théologien par excellence de l'Église, le « Docteur commun ».

La mémoire célèbre l'harmonie entre la foi et la raison réalisée dans la synthèse théologique de ce saint, proclamant que la grâce ne détruit pas mais perfectionne la nature, et que la recherche philosophique et théologique rigoureuse sert, plutôt qu'elle ne menace, les vérités de la révélation. Elle met en lumière la vocation du théologien comme un authentique service de l'Église, et présente l'étude contemplative, entreprise dans l'humilité et la prière, comme un chemin de sainteté à part entière.

La dévotion à ce frère se développa rapidement après sa mort en 1274 ; il fut canonisé en 1323 et proclamé docteur de l'Église en 1567, recevant le titre spécial de « Docteur angelique », puis proclamé patron des écoles et universités catholiques par le pape Léon XIII en 1880, en reconnaissance de l'autorité durable de sa synthèse théologique et philosophique, en particulier de la Somme théologique. Sa fête, célébrée à l'origine le 7 mars, anniversaire de sa mort, fut déplacée au 28 janvier, date de la translation de ses reliques, lors de la réforme de 1969, le 7 mars tombant régulièrement pendant le Carême.

Cette mémoire invite théologiens, étudiants et enseignants à embrasser la rigueur intellectuelle comme un acte d'amour pour la vérité qu'est le Christ lui-même, et rappelle à toute l'Église que la recherche de la sagesse, loin de s'opposer à la sainteté, en est l'une des expressions authentiques et fécondes. Thomas d'Aquin demeure, pour toute l'Église, un modèle de la manière dont l'intelligence, purifiée et élevée par la grâce, peut servir les besoins les plus profonds de la foi et de la vie pastorale.
$desc$),
('saint-john-bosco-priest', 'Saint Jean Bosco, prêtre', $desc$
Célébrée le 31 janvier comme mémoire obligatoire en temps ordinaire, cette fête revêt les ornements blancs propres à un prêtre et fondateur, et clôt le mois de janvier par une célébration consacrée au soin pastoral et à l'éducation chrétienne de la jeunesse.

La mémoire célèbre la vocation de l'éducateur chrétien, proclamant que la formation des jeunes dans la foi, la raison et la vertu constitue en elle-même une forme authentique et urgente de la mission de l'Église. Elle met en lumière le « système préventif » d'éducation fondé sur la raison, la religion et la bonté plutôt que sur la crainte, présentant la charité pastorale exercée envers les jeunes, particulièrement les pauvres et les abandonnés, comme une expression privilégiée de l'Évangile et une image de la tendresse même du Bon Pasteur.

La dévotion à ce prêtre et fondateur se développa rapidement après sa mort en 1888 ; il fut canonisé en 1934, et sa fête entra peu après au calendrier romain général, maintenue au 31 janvier, date de sa mort, lors de la réforme de 1969, qui conserva son rang obligatoire en reconnaissance de l'influence vaste et durable de la famille éducative et religieuse qu'il fonda.

Cette mémoire invite toute l'Église, et particulièrement les parents, les enseignants et les catéchistes, à voir dans le soin des enfants et des jeunes l'un des champs les plus urgents de la nouvelle évangélisation. Elle rappelle aux fidèles que la sainteté peut se forger au milieu du travail quotidien, souvent sans éclat, de l'éducation des jeunes, et présente la joie, la raison et la religion, vécues ensemble, comme une pédagogie durable pour former des saints à chaque génération.
$desc$),
('the-baptism-of-the-lord', 'Baptême du Seigneur', $desc$
Célébrée le dimanche suivant le 6 janvier (ou, lorsque l'Épiphanie est transférée, le lundi suivant celle-ci), le Baptême du Seigneur a rang de Fête du Seigneur et marque la clôture définitive du temps de Noël, ouvrant dès le lendemain sur le temps ordinaire ; le jour est revêtu des ornements blancs.

La fête célèbre le baptême du Christ dans le Jourdain par Jean, moment où la voix du Père proclame Jésus comme son Fils bien-aimé et où l'Esprit Saint descend sur lui, révélant la Trinité et inaugurant le ministre public du Christ. Théologiquement, elle proclame que Jésus, bien que sans péché, entra dans les eaux en solidarité avec l'humanité pécheresse, sanctifiant les eaux et préfigurant le sacrement du Baptême par lequel les croyants deviennent enfants adoptifs de Dieu, participants de l'Esprit donné au Jourdain.

Une fête commémorant le baptême du Christ possède des racines anciennes en Orient, originellement unie à la célébration de l'Épiphanie du 6 janvier, formant l'une des trois manifestations du Seigneur (avec les mages et Cana) rappelées dans cette fête ; en Occident, elle acquit progressivement une plus grande autonomie, devenant une commémoration distincte rattachée à l'octave de l'Épiphanie dès le Moyen Âge. La réforme du calendrier de 1969 établit le Baptême du Seigneur comme Fête indépendante le dimanche après le 6 janvier, la marquant délibérément comme le seuil définitif entre le temps de Noël et le temps ordinaire.

La fête invite les fidèles à renouveler la grâce et les promesses de leur propre baptême, reconnaissant dans la descente du Christ dans le Jourdain le modèle de leur propre incorporation dans sa mort et sa résurrection. Elle appelle chaque croyant à entendre de nouveau, dans son propre cœur, les paroles du Père prononcées sur Jésus, « Tu es mon fils bien-aimé », et à embrasser la mission qui découle d'une vie entièrement livrée à l'Esprit, dès le tout début du temps du disciple chrétien ordinaire.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- 4) TRANSLATIONS LA
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('solemnity-of-mary-the-holy-mother-of-god', 'Sancta Dei Genetrix Maria', $desc$
Die prima Ianuarii, octava Nativitatis Domini, haec Sollemnitas inter praecipuos dies calendarii liturgici numeratur et in multis regionibus adhuc dies festus de praecepto habetur. Vestes albae adhibentur, gaudii ac gloriae signum. Cum initium anni civilis coincidat, hic dies octavam Nativitatis claudit, mysterio Verbi incarnati oculos Ecclesiae semper intentos servans.

Haec sollemnitas eminentem Mariae dignitatem celebrat, quae Theotokos, id est Dei Genetrix, appellatur, titulo sollemniter a Concilio Ephesino anno 431 definito contra Nestorianam sententiam, quae negabat Mariam in utero suo Filium Dei aeternum secundum humanitatem simul et divinitatem portasse. Cum enim Iesus Christus una Persona sit, verus Deus et verus homo, ille quem Maria genuit vere Deus est; unde recte Mater Dei, non tantum humanitatis eius mater, nominatur. Ita festum ipsam veritatem Incarnationis tuetur, quoniam quaelibet diminutio maternitatis divinae Mariae unitatem personae Christi ipsam minuit.

Festum die prima Ianuarii Romae saltem a saeculo sexto testatum est, originaliter Circumcisionem Domini die octavo post nativitatem, iuxta legem Iudaicam, simul cum veneratione maternitatis Mariae commemorans. Variae traditiones locales, etiam apud Orientem Byzantinum, diversas huius diei rationes servaverunt. In reformatione calendarii anno 1969 facta, Paulus PP. VI diem octavum Nativitatis ad antiquum ac primarium characterem Marianum restituit, Sollemnitatem Mariae Matris Dei instituens, dum Circumcisio, quamvis nomen diei non amplius det, in lectione evangelica implicite manet. Ab anno 1968 hic dies etiam Dies Mundialis Pacis celebratur.

Annum sub materna Mariae tutela incohare fideles admonet omne tempus humanum in mysterio Incarnationis volvi suumque sensum in Christo invenire. Festum credentes invitat ut annum incipientem Mariae intercessioni committant, eius contemplativam Verbi in corde meditationem imitentur, et per eius mediationem pacem quaerant quam solus Filius eius mundo saepe divisionibus lacerato dare potest.
$desc$),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'Sancti Basilius Magnus et Gregorius Nazianzenus', $desc$
Die secunda Ianuarii, ut memoria ad libitum obligatoria, haec festivitas intra tempus Nativitatis, post dies Octavae, celebratur, vestibus albis adhibitis, quoniam hi sancti ut episcopi et doctores, non sub aspectu martyrii, honorantur. Duos magnos episcopos Cappadoces saeculi quarti una commemoratione coniungit, casus in calendario rarus quo duo sancti non martyres unum diem tanti gradus communicant.

Memoria Basilium et Gregorium ut Ecclesiae Doctores honorat, magistros quorum scripta theologiam Trinitatis, vitam monasticam et eloquentiam Christianam informaverunt. Communis eorum festivitas praesertim doctrinam Sanctissimae Trinitatis, contra Arianismum defensam, celebrat, atque exemplar ministerii episcopalis arctae amicitiae, asceseos et caritatis pastoralis coniuncti. Ecclesia eos simul proponit ut imaginem quomodo sanctitas et sana doctrina per veram amicitiam spiritualem Evangelio inservientem crescant.

Cultus Basilii et Gregorii apud Orientem mature increvit, ubi uterque proprium diem festum in calendario Byzantino habet et adhuc habet (primo et vicesimo quinto Ianuarii respective), praeter communem commemorationem die trigesima Ianuarii cum Ioanne Chrysostomo, sub titulo "Trium Sanctorum Hierarcharum". In Occidente, ante reformationem, Basilius die decima quarta Iunii, Gregorius die nona Maii commemorabantur. Recognitio Calendarii Romani anno 1969 facta eos die secunda Ianuarii, morti Basilii proxima (die prima Ianuarii anno 379), in unam memoriam obligatoriam coniunxit, morem Orientalem hos duos amicos simul honorandi consulto referens.

Communis eorum memoria fideles invitat, praesertim anni initio, ut de fecunditate amicitiae in Christo vissae, de necessitate sanae doctrinae ad fidem maturam, deque fortitudine ad veritatem de Deo omni tempore docendam ac defendendam meditentur. Basilius et Gregorius patroni manent studii theologici orationi coniuncti, Ecclesiam commonentes rectam fidem et sanctitatem vitae numquam disiungi.
$desc$),
('the-most-holy-name-of-jesus', 'Sanctissimi Nominis Iesu', $desc$
Die tertia Ianuarii, ut memoria ad libitum intra tempus Nativitatis, haec celebratio vestibus albis peragitur, inter dies feriales qui ab Octava Nativitatis ad Epiphaniam ducunt. Ubi hac die non celebratur, eadem devotio saepe liturgice recolitur dominica inter diem secundam et quintam Ianuarii, vel generali spiritu adorationis Christi nuper nati totius temporis Nativitatis includitur.

Memoria ipsum Sanctissimum Nomen Iesu veneratur, nomen ab angelo ante conceptionem datum, quod significat "Dominus salvat". Celebrat veritatem biblicam ac theologicam, a Sancto Paulo proclamatam, secundum quam "in nomine Iesu omne genu flectatur", in hoc nomine totum mysterium Incarnationis et redemptionis uno verbo comprehensum agnoscens, quod Ecclesia fide, adoratione et fiducia filiali invocat.

Devotio erga Sanctissimum Nomen antiquas radices habet, praesertim a Sancto Bernardino Senensi saeculo quinto decimo provecta, ac per saecula formam liturgicam in variis calendariis localibus recepit, praesertim in traditione Franciscana, antequam per universam Ecclesiam diffunderetur. Ut festum distinctum in reformatione post Concilium Vaticanum II suppressa, quoniam eius contentum in aliis celebrationibus iam includebatur, anno tamen 2002 in Calendarium Romanum Generale restituta est, ut memoria ad libitum die tertia Ianuarii, ob perpetuum eius valorem pro pietate populari agnitum.

Festum credentes invitat ut vim et suavitatem invocandi nomen Iesu in oratione personali redintegrent, antiquam consuetudinem "orationis Iesu" multasque devotiones populares circa hoc Nomen aedificatas referens. Fideles commonet nullum aliud nomen sub caelo datum esse in quo oporteat nos salvos fieri, simplicem ac fiducialem invocationem Iesu in vita cotidiana, in tribulatione et in hora mortis fovens.
$desc$),
('the-epiphany-of-the-lord', 'Epiphania Domini', $desc$
Die sexta Ianuarii celebrata (vel, in multis regionibus, dominica inter diem secundam et octavam Ianuarii), Epiphania gradum Sollemnitatis Domini obtinet et inter antiquissimas ac praecipuas totius anni liturgici festivitates numeratur, vestibus albis vel aureis ornata; traditione antiqua, cum Pascha et Pentecoste, inter tres magnas Christi "manifestationes" ab Ecclesia primaeva celebratas habetur.

Vocabulum "Epiphania" manifestationem significat, et festum revelationem Christi gentibus celebrat, per Magos ab Oriente venientes ad Regem recens natum adorandum significatam. Theologice, universalem salutis amplitudinem proclamat: gentes, per Magos repraesentatae, vocantur ut cum Israel eandem promissionem in Christo Iesu participent. In traditione Occidentali festum diu tres Domini divinitatis manifestationes coniunxit — adorationem Magorum, baptismum Christi in Iordane, et miraculum apud Cana — quamvis Calendarium Romanum hodiernum has tres celebrationes distinctas servet, echis tamen omnium trium in textibus liturgicis Epiphaniae retentis.

Festum Epiphaniae in Oriente Christiano ortum est, probabiliter in Aegypto, exeunte saeculo tertio vel ineunte quarto, initio nativitatem, baptismum et primum miraculum Christi in unum festum die sexta Ianuarii coniungens; deinde in Occidentem diffusum est, ubi Roma festum iam medio saeculo quarto recepit. Per medium aevum ritus locales dives accepit, a benedictione cretae et domuum usque ad Epiphaniae proclamationem de die Paschatis, quorum multi hodie perseverant; reformatio anni 1969 gradum Sollemnitatis servavit, simul identitatem propriam ab Baptismo Domini et a Cana distinguens, quae nunc respective in Tempore per Annum et aliis dominicis collocantur.

Epiphania omnem credentem invitat ut in Infante Christo lumen gentium agnoscat et, sicut Magi, itinere fidei, oblatione donorum et adoratione respondeat. Ecclesiam de sua vocatione missionali commonet, Christum omni populo et culturae notum faciendi, fidelesque invitat ut propriam "epiphaniam" renovent, lucem Christi in vita cotidiana semper clarius manifestari sinentes.
$desc$),
('saint-raymond-of-penyafort-priest', 'Sanctus Raymundus de Peniafort, Presbyter', $desc$
Die septima Ianuarii, ut memoria ad libitum, haec celebratio post dies Epiphaniae peragitur, vestibus albis propriis confessoris ac doctoris iuris canonici adhibitis, in ultima parte temporis Nativitatis ante Baptismum Domini.

Memoria ministerium reconciliationis servitiumque iustitiae in Ecclesia honorat, in sacerdote celebri ut confessore, canonista et vitae paenitentialis ac iuridicae Ecclesiae ordinatore incarnata. Liturgice, hic dies virtutes misericordiae veritati coniunctae extollit, caritatemque pastoralem per patiens opus regiminis, iuris et sacramenti Paenitentiae exercitam, ostendens sanctitatem in humili labore disciplinae Ecclesiae ad animarum bonum ordinandae florere posse.

Cultus huius sancti post eius mortem saeculo tertio decimo increvit; anno 1601 canonizatus est, et festum eius in Calendarium Romanum Generale gradu confessoris non episcopi intravit, primum die vicesima tertia Ianuarii assignatum. In reformatione anni 1969 memoria eius ad diem septimam Ianuarii translata est, morti eius (die sexta Ianuarii anno 1275) propiorem, et ad gradum memoriae ad libitum reducta, iuxta calendarium postconciliare simplificatum, quod gradum obligatorium potissimum sanctis significationis universalioris reservabat.

Haec memoria fideles invitat, praesertim eos qui in iure canonico, in confessione et in administratione ecclesiastica operantur, ut tale opus verum sanctitatis iter esse agnoscant. Ecclesiam commonet structuras iustitiae et misericordiae, patienter aedificatas, animarum saluti inservire nec altiori gratiae mysterio toto tempore Nativitatis celebrato opponi, sed potius illi servire.
$desc$),
('saint-hilary-bishop-and-doctor-of-the-church', 'Sanctus Hilarius, Episcopus et Ecclesiae Doctor', $desc$
Die decima tertia Ianuarii, ut memoria ad libitum in Tempore per Annum (vel interdum adhuc intra tempus Nativitatis, prout anni cuiusque calendarium fert), haec festivitas vestibus albis episcopo et doctori Ecclesiae propriis celebratur.

Memoria ministerium episcopi theologi celebrat, qui plenam Christi divinitatem contra Arianismum defendit, unde "Athanasius Occidentis" appellatus est. Liturgice, hic dies doctrinam Trinitatis veramque Christi divinitatem et humanitatem extollit, themata apte prope tempora Nativitatis et Epiphaniae, quae mysterium Incarnationis celebrant, recordata, ac fortitudinem episcopi commemorat qui exilium potius quam veritatem revelatam minuere sustinuit.

Cultus Hilarii mox post eius mortem saeculo quarto increvit, eiusque festum in Occidente variis diebus iuxta calendaria medii aevi ac deinde Tridentinum celebratum est, plerumque die decima tertia vel decima quarta Ianuarii. Anno 1851 Doctor Ecclesiae declaratus est. Reformatio anni 1969 diem decimam tertiam Ianuarii, morti eius propinquam, servavit, gradumque memoriae ad libitum statuit, congruenter tractationi aliis primorum saeculorum doctoribus datae, quorum festa gradum obligatorium in calendario universali non habent.

Haec memoria fideles invitat ut doctrinam Trinitatis, ipsum cor fidei Christianae, non tantum ut quaestionem abstractam, denuo agnoscant, et ex Hilarii exemplo, in veritate inter controversias ac detrimenta personalia constantis, fortitudinem hauriant. Ecclesiam commonet doctrinam sanam, caritate ac firmitate defensam, alimentum essentiale populo Dei omni tempore manere.
$desc$),
('saint-anthony-abbot', 'Sanctus Antonius, Abbas', $desc$
Die decima septima Ianuarii, ut memoria obligatoria in Tempore per Annum celebrata, haec festivitas vestibus albis confessori et fundatori propriis ornatur, et firmum locum in calendario tenet, ut una ex antiquissimis ac venerabilissimis sanctorum non martyrum festivitatibus ab Ecclesia universali servatis.

Memoria ipsam originem monachatus Christiani celebrat radicalemque Christi sequelam per renuntiationem, solitudinem et pugnam spiritualem in deserto. Vitam commemorat Deo quaerendo per ascesim et orationem totam devotam, quam Ecclesia proponit ut testimonium perpetuum consilia evangelica paupertatis, castitatis et oboedientiae voluntati Dei heroico gradu vivi posse, unde tota traditio vitae monasticae et eremiticae orta est, quae hodie usque perdurat.

Veneratio huius patris monachorum statim post eius mortem saeculo quarto incohata est, celeriter per vitam a Sancto Athanasio scriptam diffusa, atque unus ex latissime diffusis cultibus antiquae Ecclesiae facta est, mature in Martyrologium Romanum et calendarium intrans, traditione die decima septima Ianuarii, quae per omnes subsequentes calendarii recognitiones sine mutatione servata est, etiam in ea anni 1969, quae eum inter paucos sanctos antiquos non martyres gradu obligatorio donatos retinuit.

Haec memoria fideles invitat ut valorem silentii, disciplinae et pugnae interioris contra tentationem in vita spirituali redintegrent, etiam inter occupationes vitae cotidianae. Vitam monasticam vocationemque eremiticam ut dona adhuc viva toti Ecclesiae proponit, omnes baptizatos commonens experientiam deserti, purificationis et occursus cum Deo, forma quadam analoga, ad authenticum incrementum Christianum necessariam manere.
$desc$),
('saint-fabian-pope-and-martyr', 'Sanctus Fabianus, Papa et Martyr', $desc$
Die vicesima Ianuarii, ut memoria ad libitum, cum Sancto Sebastiano in calendario communicata, celebrata, haec festivitas vestibus rubris, martyrii colore, ornatur, diem papae martyris intra Tempus per Annum mensis Ianuarii collocans.

Memoria fidelitatem pastoris usque ad mortem celebrat, ministerii Petrini cum supremo sanguinis testimonio unionem, proclamans munus Ecclesiam regendi ipsum posse fieri occasionem martyrii. Perseverantiam Ecclesiae Romanae saeculi tertii sub persecutione eiusque ininterruptam successionem regiminis, etiam periculo mortis imminente, extollit.

Cultus huius antiqui papae martyris ab antiquitate testatus est, eius memoria in antiquis calendariis liturgicis Romanis (Depositione Martyrum) et in Martyrologio Romano servata, die vicesima Ianuarii anniversarium sepulturae eius signante. Dies et gradus mira stabilitate per omnes calendarii reformationes servati sunt, etiam per eam anni 1969, quae eum ut memoriam ad libitum retinuit, locum eius inter venerabiles antiquos martyres Romanos reflectens, diem cum Sancto Sebastiano communicans absque duabus commemorationibus in unum festum fusis.

Haec memoria fideles invitat ut considerent fidelitatem erga Christum etiam ab illis quibus auctoritas in Ecclesia commissa est supremum sacrificium exigere posse, fiduciamque in perseverantia Ecclesiae per omne tempus tribulationis fovet, quae a primis saeculis pastoribus vitam pro grege dare paratis sustentata est.
$desc$),
('saint-sebastian-martyr', 'Sanctus Sebastianus, Martyr', $desc$
Etiam die vicesima Ianuarii, ut memoria ad libitum, iuxta Sanctum Fabianum celebrata, haec festivitas pariter vestibus rubris martyribus propriis utitur, unam ex dilectissimis martyrum commemorationibus calendarii Romani intra Tempus per Annum signans.

Memoria fortitudinem militis Christiani celebrat, qui in ipsis structuris potestatis civilis et militaris Romanae Christo testimonium reddidit, fidelitatem Evangelio prae mundano profectu eligens, et pro fide passionem sustinens. Martyrium ut supremam configurationem Christo crucifixo et resuscitato praesentat, patronumque militum, sagittariorum et aegrotantium ut intercessorem pro robore inter adversa proponit.

Cultus huius martyris Romae maturissime floruit, ubi basilica supra eius sepulcrum in Via Appia aedificata est, una ex septem ecclesiis peregrinationis urbis; eius commemoratio in antiquissimis calendariis liturgicis Romanis die vicesima Ianuarii testatur. Cultus Sebastiani medio aevo valde increvit, praesertim ut protectoris contra pestem, eiusque festum diem traditionalem gradumque memoriae per omnes calendarii reformationes servavit, etiam per eam anni 1969, quae diem vicesimam Ianuarii, cum Fabiano communem, ut memoriam ad libitum confirmavit.

Haec memoria fideles invitat ut intercessionem Sebastiani in morbo et adversitate invocent, et ex eius exemplo fortitudinem hauriant ad authenticum testimonium Christianum etiam in professionibus vel ambitibus fidei adversis vivendum, fidentes gratiam quemlibet vitae statum in occasionem fidelitatis heroicae transformare posse.
$desc$),
('saint-agnes-virgin-and-martyr', 'Sancta Agnes, Virgo et Martyr', $desc$
Die vicesima prima Ianuarii, ut memoria obligatoria in Tempore per Annum celebrata, haec festivitas vestibus rubris, martyrii colore, ornatur, atque inter antiquissimas ac venerabilissimas martyrum commemorationes Ecclesiae Romanae numeratur, iam in antiquissimo Canone Romano Missae commemorata.

Memoria unionem virginitatis consecratae et martyrii celebrat, proclamans consecrationem totalem Christo et supremum vitae donum pro eo duas esse eiusdem totius sponsae erga Sponsum donationis expressiones. Testimonium iuvenis martyris honorat, cuius ipsa iuventus ostendit gratiam, non humanam fortitudinem, veram esse fidelitatis heroicae originem, ac commemorat cordis puritatem et fidelitatem usque ad mortem ex eodem amore Christi super omnia fluere.

Cultus huius martyris saltem a saeculo quarto ortum ducit celeriterque unus ex latissime diffusis cultibus Ecclesiae Romanae factus est, a Papa Damaso, a Sancto Ambrosio testatus, atque per eius inclusionem inter sanctos in Canone Romano (Prece Eucharistica Prima) nominatos. Festum eius, ab antiquitate die vicesima prima Ianuarii celebratum, cum secundaria commemoratione die vicesima octava Ianuarii ("secundo festo Sanctae Agnetis", die octava) in prioribus calendariis, ut memoria obligatoria in reformatione anni 1969 servatum est, quae tamen secundariam commemorationem octavae sustulit, solam diem principalem retinens.

Haec memoria fideles, praesertim iuvenes, invitat ut in Agnete exemplar integritatis, puritatis et intrepidi testimonii Christi agnoscant, virginesque consecratas totius Ecclesiae de antiqua earum patrona commonet. Eius exemplum adhuc traditionalem benedictionem agnorum in eius festo inspirat, quorum lana pallia archiepiscoporum texuntur, aptum symbolum vinculi pastoris cum Christo, Agno Dei, quem Agnes usque ad mortem secuta est.
$desc$),
('saint-vincent-deacon-and-martyr', 'Sanctus Vincentius, Diaconus et Martyr', $desc$
Die vicesima secunda Ianuarii, ut memoria ad libitum in Tempore per Annum celebrata, haec festivitas vestibus rubris martyribus propriis utitur, unum ex celeberrimis diaconis martyribus antiquae Ecclesiae in serie commemorationum martyrum mensis Ianuarii honorans.

Memoria ministerium diaconale martyrio coniunctum celebrat, proclamans servitium altaris et pauperum in supremum servitium vitae pro Christo dandae florere posse. Constantiam fidei in tormentis extollit, diaconum martyrem ut exemplar fortitudinis praesentans, cuius passiones, secundum antiquam traditionem, ipsae forma quaedam praedicationis eloquentis factae sunt, quae fidem spectantium confirmavit.

Cultus huius martyris Hispani celeriter post eius mortem ineunte saeculo quarto diffusus est, a Sancto Augustino et Prudentio, inter alios, sermonibus et carminibus ardentibus celebratus, eiusque cultus unus ex latissime diffusis tam in Hispania quam Romae factus est. Festum eius, ab antiquitate die vicesima secunda Ianuarii celebratum, hanc diem gradumque memoriae ad libitum per successivas Calendarii Romani reformationes, etiam eam anni 1969, servavit.

Haec memoria fideles, praesertim diaconos et eos qui in servitio caritativo et liturgico versantur, invitat ut in Vincentio exemplar fidelitatis agnoscant, humile ministerium testimonio heroico coniungens. Ecclesiam commonet nullum servitii actum, quamvis ordinarium, a totali sui ipsius Christo donatione seiungi, ad quam omnis discipulus tandem vocatur.
$desc$),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'Sanctus Franciscus Salesius, Episcopus et Ecclesiae Doctor', $desc$
Die vicesima quarta Ianuarii, ut memoria obligatoria in Tempore per Annum celebrata, haec festivitas vestibus albis episcopo et doctori Ecclesiae propriis ornatur, et paulo ante Conversionem Sancti Pauli, intra cyclum hibernum Temporis per Annum, occurrit.

Memoria doctrinam universalis sanctitatis methodumque pastoralem mitem ac patientem, huius sancti doctrinae propriam, celebrat, proclamans omnes fideles, quocumque vitae statu, ad plenitudinem caritatis et devotionis vocari. Sanam catechesim, directionem spiritualem, et mansuetudinem firmitati in veritate coniunctam ut instrumenta authentica evangelizationis et renovationis pastoralis extollit, praesertim temporibus controversiae religiosae.

Cultus huius episcopi celeriter post eius mortem anno 1622 increvit; anno 1665 canonizatus est et anno 1877 Doctor Ecclesiae declaratus, ob perpetuum influxum scriptorum eius spiritualium agnitum. Festum eius, primum die vicesima nona Ianuarii, die sepulturae eius, celebratum, in reformatione calendarii anno 1969 ad diem vicesimam quartam Ianuarii translatum est, ut conflictus cum dominicis post Epiphaniam vitaretur et memoria propius anniversario mortis eius collocaretur, gradu obligatorio propter statum Doctoris Ecclesiae servato.

Haec memoria fideles, praesertim eos qui in communicatione, scriptione et in re nuntiativa versantur, quorum Franciscus Salesius patronus est, invitat ut sanam doctrinam ac mitem persuasionem tamquam vias authenticas evangelizationis in mundo controversiae ac strepitu agnoscant. Toti Ecclesiae commonet "parvam viam" fidelitatis ordinariae, patienter ac mansuete vissae, ipsam esse iter verum et omnibus accessibile ad sanctitatem, cuilibet vitae statui aptum.
$desc$),
('the-conversion-of-saint-paul-the-apostle', 'Conversio Sancti Pauli Apostoli', $desc$
Die vicesima quinta Ianuarii, gradu Festi, celebrata, haec celebratio vestibus albis ornatur et traditione Hebdomadam Orationis pro Unitate Christianorum (18-25 Ianuarii) claudit, huic observantiae octavae similis conclusionem apostolicam aptam tribuens.

Festum non personam Pauli generatim, sed specifice eventum conversionis eius in via Damasci celebrat, actionem gratiae supremam quae persecutorem Ecclesiae in maximum eius missionarium transformavit. Theologice, proclamat vim vocationis Christi omnem resistentiam humanam evertendi, primatum gratiae super meritum in oeconomia salutis, et universalem missionis apostolicae amplitudinem, quae ex occursu cum Christo Resuscitato fluit.

Festum conversionis Pauli in Occidente saltem a saeculo sexto testatur, medio aevo latam observantiam adeptum, praesertim in Gallia et Romae, et die vicesima quinta Ianuarii, traditione diei conversionis eius associatum, per omnes subsequentes calendarii reformationes mansit, gradu Festi (non Sollemnitatis nec simplicis memoriae) in recognitione anni 1969 servato, ob singularem eius momentum agnitum, ita tamen ut a principali festo Pauli cum Petro, die vicesima nona Iunii, distinctum maneat.

Hoc festum omnem credentem invitat ut agnoscat conversionem semper possibilem manere, quantumvis obstinata videatur resistentia gratiae, transformationemque Pauli ut imaginem radicalis novitatis quam Christus omni peccatori offert proponit. Praesertim per associationem cum Hebdomada Orationis pro Unitate Christianorum, totam Ecclesiam vocat ut in eadem gratia quae Paulum convertit unitatem quaerat, pro qua ipse Christus oravit.
$desc$),
('saints-timothy-and-titus-bishops', 'Sancti Timotheus et Titus, Episcopi', $desc$
Die vicesima sexta Ianuarii, ut memoria obligatoria in Tempore per Annum celebrata, haec festivitas vestibus albis episcopis propriis ornatur, et statim post Conversionem Sancti Pauli sequitur, sequelam naturalem efformans quae a conversione ipsius apostoli ad fructum laborum eius apostolicorum in discipulis ab eo formatis vertitur.

Memoria successionem apostolicam ministeriumque pastorale a Paulo suis proximis cooperatoribus traditum celebrat, quos episcopos ordinavit curaeque Ecclesiarum Ephesi et Cretae respective commisit. Vinculum inter apostolatum et episcopatum, traditionem sanae doctrinae a fidelibus pastoribus custoditam, et virtutes pastorales prudentiae, fortitudinis ac fidelitatis extollit, ad quas Paulus discipulos suos in epistulis eis inscriptis hortatur, quae eorum nomina in canone Novi Testamenti gestant.

Cultus horum duorum discipulorum Pauli antiquas radices habet, Timotheo diu in Occidente die vicesima quarta Ianuarii commemorato et Tito variis diebus secundum regiones, donec reformatio anni 1969 eos in unam memoriam obligatoriam die vicesima sexta Ianuarii coniunxit, consulto statim post festum conversionis Pauli collocatam, ut apostolum et fructum formationis eius apostolicae continua successione praesentaret.

Haec memoria episcopos, sacerdotes omnesque in ministerio pastorali versantes invitat ut in Timotheo et Tito exemplaria fidelitatis sanae doctrinae, fortitudinis in regimine, et caritatis pastoralis a tota Ecclesia acceptae et in communione cum ea exercitae agnoscant. Fideles commonet missionem Evangelii numquam opus solitarium esse, sed semper ab una generatione ad alteram per vincula formationis, fiduciae et communionis ecclesialis tradi.
$desc$),
('saint-angela-merici-virgin', 'Sancta Angela Merici, Virgo', $desc$
Die vicesima septima Ianuarii, ut memoria ad libitum in Tempore per Annum celebrata, haec festivitas vestibus albis virgini consecratae et fundatrici propriis ornatur, in serie sanctorum mensis Ianuarii doctrinae, formationi et vitae consecratae deditorum collocata.

Memoria vocationem virginitatis consecratae, novo modo sine clausura, formationi Christianae puellarum in societate ordinaria totam dedicatam, celebrat. Dignitatem apostolatus laicalis et educationis iuvenum in fide extollit, proclamans sanctitatem fecunditatemque apostolicam nulli unicae formae canonicae vitae consecratae alligari, sed per fidelitatem creativam inspirationibus Spiritus Sancti, necessitatibus cuiusdam temporis respondentem, florere posse.

Cultus huius fundatricis post eius mortem anno 1540 increvit; anno 1807 canonizata est, eiusque festum in Calendarium Romanum Generale die trigesima prima Ianuarii ante reformationem intravit, postea ad diem vicesimam septimam Ianuarii, morti eius propiorem, in recognitione anni 1969 translatum, quae ei gradum memoriae ad libitum, congruenter tractationi aliorum fundatorum aetatis modernae, tribuit.

Haec memoria fideles, praesertim eos qui educationi Christianae puerorum et iuvenum se dedicant, invitat ut catechesim formationemque in virtute vera opera apostolatus agnoscant, vitamque consecratam in medio mundo, potius quam ab eo seiunctam, vissam ut iter legitimum ac fecundum sanctitatis proponit, praevertens progressus quos Ecclesia demum formaliter in vocatione institutorum saecularium agnosceret.
$desc$),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'Sanctus Thomas de Aquino, Presbyter et Ecclesiae Doctor', $desc$
Die vicesima octava Ianuarii, ut memoria obligatoria in Tempore per Annum celebrata, haec festivitas vestibus albis sacerdoti et doctori Ecclesiae propriis ornatur, et locum peculiaris honoris tenet, ut memoria eximii Ecclesiae theologi ac "Doctoris Communis".

Memoria harmoniam inter fidem et rationem in synthesi theologica huius sancti effectam celebrat, proclamans gratiam naturam non destruere sed perficere, et investigationem philosophicam ac theologicam rigorosam veritatibus revelationis inservire potius quam eas minari. Vocationem theologi ut authenticum Ecclesiae servitium extollit, et studium contemplativum, in humilitate et oratione susceptum, ut ipsum iter sanctitatis proponit.

Cultus huius fratris celeriter post eius mortem anno 1274 increvit; anno 1323 canonizatus est et anno 1567 Doctor Ecclesiae declaratus, titulo peculiari "Doctoris Angelici" donatus, ac postea patronus scholarum et universitatum Catholicarum a Leone PP. XIII anno 1880 proclamatus, ob perpetuam auctoritatem synthesis eius theologicae ac philosophicae, praesertim Summae Theologiae, agnitam. Festum eius, primum die septima Martii, anniversario mortis eius, celebratum, ad diem vicesimam octavam Ianuarii, diem translationis reliquiarum eius, in reformatione anni 1969 translatum est, quoniam dies septima Martii plerumque intra Quadragesimam cadit.

Haec memoria theologos, discipulos et magistros invitat ut rigorem intellectualem tamquam actum amoris erga veritatem, quae Christus ipse est, amplectantur, totamque Ecclesiam commonet sapientiae quaesitionem, longe a sanctitate abhorrere, unam ex eius authenticis ac fecundis expressionibus esse. Thomas Aquinas toti Ecclesiae exemplar manet quomodo mens, gratia purificata et elevata, altissimis fidei ac vitae pastoralis necessitatibus servire possit.
$desc$),
('saint-john-bosco-priest', 'Sanctus Ioannes Bosco, Presbyter', $desc$
Die trigesima prima Ianuarii, ut memoria obligatoria in Tempore per Annum celebrata, haec festivitas vestibus albis sacerdoti et fundatori propriis ornatur, mensemque Ianuarii celebratione curae pastorali et educationi Christianae iuventutis dedicata claudit.

Memoria vocationem educatoris Christiani celebrat, proclamans formationem iuvenum in fide, ratione et virtute ipsam formam authenticam et urgentem missionis Ecclesiae esse. "Systema praeventivum" educationis, ratione, religione et benignitate potius quam timore fundatum, extollit, caritatem pastoralem erga iuvenes, praesertim pauperes et derelictos, exercitam ut expressionem praecipuam Evangelii et imaginem ipsius mansuetudinis Boni Pastoris praesentans.

Cultus huius sacerdotis et fundatoris celeriter post eius mortem anno 1888 increvit; anno 1934 canonizatus est, eiusque festum paulo post in Calendarium Romanum Generale intravit, die trigesima prima Ianuarii, die mortis eius, per reformationem anni 1969 servata, quae gradum obligatorium eius, ob amplum ac perpetuum influxum familiae educativae ac religiosae ab eo fundatae agnitum, retinuit.

Haec memoria totam Ecclesiam, praesertim parentes, magistros et catechistas, invitat ut in cura puerorum et iuvenum unum ex urgentioribus Novae Evangelizationis campis agnoscant. Fideles commonet sanctitatem in medio labore cotidiano, saepe sine splendore, educationis iuvenum confici posse, gaudiumque, rationem et religionem, simul vissa, ut pedagogiam perpetuam ad sanctos omnis generationis formandos proponit.
$desc$),
('the-baptism-of-the-lord', 'Baptisma Domini', $desc$
Dominica post diem sextam Ianuarii celebratum (vel, ubi Epiphania transfertur, feria secunda post eam), Baptismus Domini gradum Festi Domini obtinet et definitivam temporis Nativitatis clausuram signat, sequenti die ad Tempus per Annum aperiens; dies vestibus albis ornatur.

Festum baptismum Christi in Iordane a Ioanne celebrat, momentum quo vox Patris Iesum ut Filium suum dilectum proclamat et Spiritus Sanctus super eum descendit, Trinitatem revelans et publicum Christi ministerium inaugurans. Theologice proclamat Iesum, quamvis sine peccato, in aquas solidaritatis causa cum humanitate peccatrice descendisse, aquas sanctificantem ac sacramentum Baptismi praefigurantem, quo credentes filii adoptivi Dei fiunt, Spiritus in Iordane dati participes.

Festum baptismum Christi commemorans antiquas radices in Oriente habet, initio cum celebratione Epiphaniae die sexta Ianuarii unitum, unam ex tribus Domini manifestationibus (cum Magis et Cana) in illo festo recordatis efformans; in Occidente gradatim maiorem autonomiam adeptum est, fiens commemoratio distincta octavae Epiphaniae medio aevo adnexa. Reformatio calendarii anni 1969 Baptismum Domini ut Festum independens dominica post diem sextam Ianuarii constituit, consulto illud ut limen definitivum inter tempus Nativitatis et Tempus per Annum signans.

Festum fideles invitat ut gratiam ac promissiones proprii baptismi renovent, in descensu Christi in Iordanem formam propriae incorporationis in eius mortem et resurrectionem agnoscentes. Omnem credentem vocat ut verba Patris super Iesum dicta, "Tu es Filius meus dilectus", in corde proprio denuo audiat, missionemque amplectatur quae ex vita Spiritui omnino tradita, in ipso initio temporis discipulatus Christiani ordinarii, fluit.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- 5) CELEBRATIONS (fixed)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
-- Christmas octave
('solemnity-of-mary-the-holy-mother-of-god', 1, 1, 'SOLEMNITY', 'WHITE', 'octave', FALSE, 'Wikipedia'),
-- Christmas octave ended
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 1, 2, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('the-most-holy-name-of-jesus', 1, 3, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('the-epiphany-of-the-lord', 1, 6, 'SOLEMNITY_LORD', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-raymond-of-penyafort-priest', 1, 7, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-hilary-bishop-and-doctor-of-the-church', 1, 13, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-anthony-abbot', 1, 17, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-fabian-pope-and-martyr', 1, 20, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-sebastian-martyr', 1, 20, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-agnes-virgin-and-martyr', 1, 21, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-vincent-deacon-and-martyr', 1, 22, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 1, 24, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('the-conversion-of-saint-paul-the-apostle', 1, 25, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saints-timothy-and-titus-bishops', 1, 26, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-angela-merici-virgin', 1, 27, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 1, 28, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-john-bosco-priest', 1, 31, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- January movable rule:
-- Sunday after 6 January: The Baptism of the Lord
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'movable', 'BAPTISM_OF_THE_LORD', 0, 'normal', FALSE, 'Wikipedia movable'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST_LORD'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'the-baptism-of-the-lord'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;


-- =========================================================
-- Roman General Calendar - February (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('the-presentation-of-the-lord', 'The Presentation of the Lord', 'christological'),
('saint-blaise-bishop-and-martyr', 'Saint Blaise, Bishop and Martyr', 'saint'),
('saint-ansgar-bishop', 'Saint Ansgar, Bishop', 'saint'),
('saint-agatha-virgin-and-martyr', 'Saint Agatha, Virgin and Martyr', 'saint'),
('saints-paul-miki-and-companions-martyrs', 'Saints Paul Miki and Companions, Martyrs', 'saint'),
('saint-jerome-emiliani-priest', 'Saint Jerome Emiliani, Priest', 'saint'),
('saint-josephine-bakhita-virgin', 'Saint Josephine Bakhita, Virgin', 'saint'),
('saint-scholastica-virgin', 'Saint Scholastica, Virgin', 'saint'),
('our-lady-of-lourdes', 'Our Lady of Lourdes', 'marian'),
('saints-cyril-monk-and-methodius-bishop', 'Saints Cyril, Monk, and Methodius, Bishop', 'saint'),
('the-seven-holy-founders-of-the-servite-order', 'The Seven Holy Founders of the Servite Order', 'saint'),
('saint-peter-damian-bishop-and-doctor-of-the-church', 'Saint Peter Damian, Bishop and Doctor of the Church', 'saint'),
('the-chair-of-saint-peter-the-apostle', 'The Chair of Saint Peter the Apostle', 'saint'),
('saint-polycarp-bishop-and-martyr', 'Saint Polycarp, Bishop and Martyr', 'saint'),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 'Saint Gregory of Narek, Abbot and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('the-presentation-of-the-lord', 'The Presentation of the Lord', $desc$
Celebrated on February 2, forty days after Christmas, the Presentation of the Lord is kept as a **Feast of the Lord** in the General Roman Calendar, closing the Christmas-Epiphany cycle before the season of Ordinary Time resumes. White vestments are worn, and the day is popularly known as Candlemas because of the blessing and procession of candles that precede the Mass, a rite that gives visible form to the feast's central image of Christ as light.

Theologically, the feast commemorates the fulfillment of the Mosaic law by which Mary and Joseph brought the infant Jesus to the Temple forty days after his birth, both to present their firstborn son to the Lord and for Mary's ritual purification. In this act the Gospel of Luke shows the meeting of the Old and New Covenants: the aged Simeon, guided by the Spirit, recognizes in the child the promised **light of revelation to the Gentiles and the glory of Israel**, while the prophetess Anna proclaims him to all awaiting Jerusalem's redemption. The feast thus unites themes of incarnation, epiphany, and the offering that anticipates the Paschal sacrifice.

The observance is attested in Jerusalem as early as the late fourth century, described by the pilgrim Egeria as a solemn fortieth-day feast after Epiphany. Once Christmas was fixed to December 25 in the West, the feast settled on February 2 and was introduced at Rome under Pope Sergius I (687–701), who added the candlelight procession. For centuries it was known in the West as the Purification of the Blessed Virgin Mary; the post-conciliar reform of the calendar restored its ancient, Christ-centered title, **Presentation of the Lord**, to emphasize that the feast belongs primarily to the mystery of Christ rather than to Marian devotion alone.

Since 1997 the day has also served as the World Day for Consecrated Life, inviting religious and the whole Church to reflect on total self-offering to God in imitation of Christ's own presentation. The candlelight procession remains a vivid catechesis on Christ as light amid darkness, inviting the faithful to renew, at the turning point between Christmas and Lent, their own commitment to walk as children of that light in ordinary life.
$desc$),
('saint-blaise-bishop-and-martyr', 'Saint Blaise, Bishop and Martyr', $desc$
Kept on February 3 as an **optional memorial** in the General Roman Calendar, the feast of Saint Blaise honors a bishop-martyr of the early Church whose cult, though modest in the universal calendar, remains vigorous in local custom through the traditional blessing of throats. No fixed liturgical color obligation beyond the usual options for an optional memorial applies, and the day may yield to Lenten weekday observance when it falls near Ash Wednesday.

The memorial celebrates above all the witness of episcopal fidelity unto death during a time of persecution, and, through the associated blessing, the Church's confidence that the intercession of the martyrs extends to the ordinary bodily needs of the faithful. The crossed candles used in the blessing of throats symbolize both the light of faith carried by the martyr-bishop and the Church's maternal care for the physical well-being of her children, understood as inseparable from their spiritual health.

Devotion to Blaise, a bishop of Sebaste in Armenia martyred in the early fourth century, spread rapidly from the Christian East into the medieval West, where he came to be counted among the Fourteen Holy Helpers, saints especially invoked against particular afflictions. The rite of blessing throats with crossed candles, attested from the Middle Ages onward, became so widely beloved that it preserved his memory in popular devotion even as many other early martyrs' cults receded from common practice.

Today the memorial offers a simple but enduring point of contact between liturgical worship and everyday human vulnerability, reminding the faithful that the Church's intercessory life reaches into concrete bodily concerns. It also testifies to the continuity between ancient martyrdom and living popular piety, showing how a local, almost domestic custom can keep alive the memory of fidelity to Christ across many centuries.
$desc$),
('saint-ansgar-bishop', 'Saint Ansgar, Bishop', $desc$
Also assigned to February 3 as an **optional memorial**, the feast of Saint Ansgar commemorates a ninth-century bishop remembered in the liturgy chiefly as a herald of the Gospel to the peoples of Northern Europe. Where both optional memorials of the day are observed regionally, calendars may choose between Blaise and Ansgar according to local pastoral custom; the Roman Missal provides proper texts emphasizing the missionary and pastoral office of a bishop rather than any particular miracle or relic.

The feast's theological center is the call to proclaim Christ among peoples who have not yet received him, and the patient perseverance required of the Church's missionary task even amid setbacks and slow, uncertain fruit. The prayers of the day highlight episcopal charity extended beyond the borders of a single see, reflecting the universal missionary mandate given by Christ to his Church and exercised through the ministry of bishops sent to found new Christian communities.

Ansgar, a Benedictine monk who became archbishop of Hamburg-Bremen, was entrusted by the papacy with evangelizing Scandinavia in the ninth century, earning the traditional title "Apostle of the North." His memorial entered later Western calendars as devotion to missionary bishops of the early medieval Church was consolidated, and it has remained a fixed, if optional, observance in the modern Roman Calendar as a witness to the age of Northern European evangelization.

Pastorally, the memorial invites the Church today to renew missionary courage in the face of discouragement, since Ansgar's own labors bore visible fruit only long after his death. It stands as an encouragement to sustained, patient evangelization, especially in regions where the Gospel has receded from public life and must be proclaimed anew.
$desc$),
('saint-agatha-virgin-and-martyr', 'Saint Agatha, Virgin and Martyr', $desc$
Observed on February 5 as an **obligatory memorial**, the feast of Saint Agatha holds a place of particular honor in the Roman calendar: her name is one of the seven holy women listed in the Roman Canon (Eucharistic Prayer I), a sign of the antiquity and depth of her veneration in the Church of Rome. Red vestments mark the day, proper to the commemoration of a martyr.

The feast celebrates the integrity of consecrated virginity held fast even to the shedding of blood, and the paradox at the heart of Christian martyrdom by which apparent defeat and bodily violation become, in Christ, a definitive victory of faith and bodily dignity. Agatha's witness is read by the Church as a sign that fidelity to Christ can withstand every assault on the human person, including attacks aimed at the body itself.

Her cult is attested remarkably early, with churches and inscriptions honoring her from at least the fifth century, only shortly after the Sicilian persecution in which she is believed to have died in the mid-third century. Her inclusion among the women of the Roman Canon reflects the strength of her veneration in Rome by late antiquity, and her memorial survived every subsequent revision of the calendar as one of the relatively small number of early virgin-martyrs retained as obligatory.

Today the memorial continues to hold up consecrated virginity and steadfastness under suffering as a living witness for the whole Church, and it remains especially treasured in Sicily, where Agatha is honored as principal patroness, showing how a universal liturgical feast can also sustain a vibrant local and cultural devotion.
$desc$),
('saints-paul-miki-and-companions-martyrs', 'Saints Paul Miki and Companions, Martyrs', $desc$
Celebrated on February 6 as an **obligatory memorial**, this feast commemorates the twenty-six Christians—priests, religious, and laypeople, adults and boys—crucified together at Nagasaki in 1597. Red vestments are worn, marking the collective martyrdom that the day honors as a single liturgical unit rather than as separate individual feasts.

Theologically the memorial celebrates the universality of the call to martyrdom and the flowering of the Gospel far beyond its Mediterranean and European origins, showing the Church's catholicity made visible in the blood of Japanese converts alongside missionaries from Europe. Their shared death on a single cross-lined hill is read liturgically as an image of ecclesial communion transcending nationality, age, and state of life, all bound together in one act of fidelity to Christ.

These martyrs were canonized in 1862 by Pope Pius IX, among the first canonizations recognizing the fruits of the Gospel in the Far East, and their memorial entered the universal calendar as a landmark commemoration of the young Church in Japan under persecution. Their feast day, fixed to the actual date of their execution, situates the observance firmly within the modern history of global mission rather than within the ancient Roman martyrology alone.

Pastorally, the memorial speaks powerfully to a Church increasingly conscious of her worldwide, multicultural character, offering assurance that fidelity unto death is not confined to any one culture or era. It remains a touchstone for Christians facing persecution today, and a reminder that the Gospel's expansion into new lands has always been watered by the witness of martyrs.
$desc$),
('saint-jerome-emiliani-priest', 'Saint Jerome Emiliani, Priest', $desc$
Assigned to February 8 as an **optional memorial**, the feast of Saint Jerome Emiliani commemorates a sixteenth-century priest remembered liturgically for his dedication to the care of the abandoned and the poor. The Roman Missal's proper prayers for the day emphasize charitable service to the young and the vulnerable as an expression of priestly ministry rooted in the Gospel.

The feast's theological heart is the corporal and spiritual works of mercy exercised toward orphans and abandoned children, understood not as mere philanthropy but as a direct continuation of Christ's own tenderness toward the "little ones." It affirms the dignity owed to every abandoned child as bearer of the image of God, and holds up consecrated charity organized into stable institutions as a legitimate and enduring form of following Christ.

Jerome Emiliani founded the Company of the Servants of the Poor, later the Clerics Regular of Somasca, in response to the devastation left by war and plague in northern Italy, and his memorial was extended to the universal calendar as his patronage of orphans and abandoned youth—formally proclaimed by Pope Pius XI in 1928—became widely recognized. His observance frequently falls alongside that of Saint Josephine Bakhita on the same day, joining two witnesses to charity toward the most vulnerable.

Today the memorial encourages the Church's continuing commitment to the protection and education of abandoned children, a mission carried on by religious congregations and lay associations that trace their charism to his example. It remains a pointed reminder that institutional charity, properly ordered, is itself a form of evangelical witness.
$desc$),
('saint-josephine-bakhita-virgin', 'Saint Josephine Bakhita, Virgin', $desc$
Kept on February 8 as an **optional memorial**, the feast of Saint Josephine Bakhita commemorates a consecrated religious of the Canossian Daughters of Charity, canonized in 2000, whose memory the liturgy holds up chiefly as a witness to the dignity of the human person and to consecrated life freely embraced after profound suffering.

Theologically the feast celebrates the transforming power of grace, by which a life marked by cruelty and enslavement is taken up into perfect freedom in Christ through baptism and religious consecration. The Church reads in her memorial an affirmation that no degradation inflicted on the body can touch the inviolable dignity bestowed by God, and that consecrated virginity is itself a sign of definitive liberation for union with Christ.

Bakhita's canonization by Pope John Paul II made her the first canonized saint associated with modern Sudan, and her memorial's placement on the universal calendar reflects the Church's contemporary attentiveness to the wounds of slavery and trafficking. Since 2015, Pope Francis has linked February 8 to the International Day of Prayer and Awareness against Human Trafficking, formally joining her liturgical memorial to this pastoral initiative.

The feast today carries urgent contemporary resonance, as the Church continues to confront the persistence of slavery and human trafficking in new forms. Bakhita's memorial invites the faithful to pray for victims of trafficking and to support the Church's concrete efforts toward their liberation and reintegration, making this optional memorial one of unusually direct pastoral relevance.
$desc$),
('saint-scholastica-virgin', 'Saint Scholastica, Virgin', $desc$
Observed on February 10 as an **obligatory memorial**, the feast of Saint Scholastica honors a consecrated virgin of the sixth century venerated as a foundress of women's monastic life in the Benedictine tradition. White vestments are worn, proper to the memorial of a virgin who is not a martyr.

The feast celebrates the vocation of consecrated virginity lived within a stable community under a rule of prayer and common life, and it affirms the equal dignity of women's monasticism alongside the male monastic tradition from which it took its origin. The liturgy for the day highlights the primacy of charity and of prayerful communion with God over external observance alone, themes traditionally associated with her memory in monastic spirituality.

Scholastica gathered a community of women religious near Monte Cassino under a form of life inspired by the Rule later associated with her brother, and her cult developed within Benedictine monasticism from an early date, spreading throughout the Western Church as that monastic family expanded. Her memorial has remained fixed and obligatory through successive calendar reforms, a sign of her stable and long-recognized place among the founders of religious life in the West.

Pastorally, the feast continues to hold up contemplative and communal religious life as a vital and fruitful vocation within the Church, particularly for women. It reminds the faithful that the deepest strength of consecrated life lies not in institutional structure alone but in the priority of charity and union with God that the memorial's traditional themes so consistently emphasize.
$desc$),
('our-lady-of-lourdes', 'Our Lady of Lourdes', $desc$
Celebrated on February 11 as an **optional memorial** in the General Roman Calendar, this feast commemorates the series of apparitions of the Blessed Virgin Mary at the grotto of Massabielle in 1858, an event the Church has recognized as worthy of belief while never obliging the faithful to accept it as a matter of faith. White vestments are used, as for other Marian observances.

Theologically, the feast draws attention to Mary's continuing maternal presence within the pilgrim Church, calling the faithful to prayer, penance, and conversion, themes central to the recognized messages associated with the apparitions. The memorial situates devotion to Lourdes within the wider theology of Marian intercession, by which Mary's motherly care extends concretely into the ordinary sufferings, illnesses, and hopes of the faithful, without displacing the unique mediation of Christ.

After ecclesiastical approval of the apparitions in 1862, devotion to Our Lady of Lourdes spread rapidly, and the feast, initially kept locally within the diocese of Tarbes, was extended to the universal calendar by Pope Saint Pius X in 1907. Lourdes subsequently became one of the principal Marian pilgrimage sites of the modern Church, closely associated with prayer for healing of the sick.

In 1992 Pope John Paul II instituted the World Day of the Sick to coincide with this memorial, giving the feast a strongly pastoral orientation toward the suffering and infirm. The day now serves the universal Church as an occasion to pray for the sick, to honor those who care for them, and to renew hope in Mary's maternal intercession amid bodily and spiritual affliction.
$desc$),
('saints-cyril-monk-and-methodius-bishop', 'Saints Cyril, Monk, and Methodius, Bishop', $desc$
Kept on February 14 as an **obligatory memorial**, this feast honors two ninth-century brothers venerated as apostles to the Slavic peoples and, since 1980, as co-patrons of Europe alongside Saint Benedict. Their shared feast, uniting a monk and a bishop under a single liturgical date, reflects their inseparable common mission and is celebrated with the rank proper to patrons of the continent.

The feast celebrates the Church's capacity to proclaim the one Gospel within the language and culture of each people, since Cyril and Methodius devised an alphabet and translated the Scriptures and liturgy into the Slavonic tongue so that new believers might hear and pray in their own speech. Their memorial affirms the principle, later confirmed in the liturgical reforms of the twentieth century, that the incarnate Word must become intelligible within every culture without dissolving the unity of the one faith.

Sent from Byzantium to evangelize Great Moravia, the brothers labored under considerable political and ecclesiastical tension between East and West, yet won recognition from Rome for their vernacular liturgy. Their feast was moved in the post-conciliar calendar reform to February 14, the date of Cyril's death, joining what had been separate commemorations, and Pope John Paul II's 1980 apostolic letter and 1985 encyclical *Slavorum Apostoli* cemented their place as patrons of a Europe drawing on both its Eastern and Western Christian roots.

Today the memorial speaks directly to the unity of Europe and to the Church's ongoing task of inculturation, reminding the faithful that fidelity to Christ can be expressed in every tongue and tradition. It remains a summons to overcome historic divisions between Eastern and Western Christianity through the shared witness of two brothers who served both.
$desc$),
('the-seven-holy-founders-of-the-servite-order', 'The Seven Holy Founders of the Servite Order', $desc$
Assigned to February 17 as an **optional memorial**, this feast commemorates, as a single group, seven laymen who together founded the Order of the Servants of Mary in the thirteenth century. The shared feast day underscores that their holiness is celebrated corporately, as founders of one religious family rather than as seven separate individual saints.

The feast's theological center is contemplative devotion to the sorrows of the Blessed Virgin Mary at the foot of the Cross, a devotion the seven founders embraced as the animating charism of their new community. Their memorial affirms that communal withdrawal from worldly life in service of Marian and Christological contemplation constitutes a genuine and fruitful path of holiness, and that such a call can be shared corporately by a group united in a single purpose.

The seven, Florentine laymen of means who renounced their possessions to live in common prayer and penance, founded what became the Servite Order in 1233; they were canonized together by Pope Leo XIII in 1888, a rare instance of collective canonization reflected in their shared feast. Their memorial entered the universal calendar as devotion to the Servite charism and to the Mother of Sorrows spread through the order's growth in the following centuries.

Pastorally the feast continues to nourish devotion to Our Lady of Sorrows and models a form of holiness rooted in fraternal communion and shared renunciation. It offers the Church today an example of collective vocation, in which sanctity is pursued not in isolation but within a community bound together by a single Marian charism.
$desc$),
('saint-peter-damian-bishop-and-doctor-of-the-church', 'Saint Peter Damian, Bishop and Doctor of the Church', $desc$
Kept on February 21 as an **optional memorial**, the feast of Saint Peter Damian honors an eleventh-century monk-bishop recognized as a Doctor of the Church for his contribution to the reform of clerical life and to the Church's moral and spiritual doctrine of his age. White vestments are used, as customary for a Doctor of the Church who was not a martyr.

The feast celebrates the vigor of ecclesial reform undertaken from within a life of monastic discipline, holding up Peter Damian's insistence on clerical integrity, against simony and against laxity in clerical discipline, as a model of the Church's perennial need for self-purification in fidelity to the Gospel. His memorial affirms that sound doctrine and rigorous personal asceticism together serve the health of the whole ecclesial body.

A Camaldolese monk who became cardinal bishop of Ostia and a leading voice of the eleventh-century reform movement, Peter Damian left an extensive body of writing that shaped the Church's approach to clerical reform under several popes. He was declared a Doctor of the Church in 1828 by Pope Leo XII, and his memorial has remained a fixed, if optional, observance since, honoring his lasting theological and disciplinary influence.

Today the memorial invites reflection on the Church's continual need for reform undertaken in humility and truth, and on the complementary relationship between contemplative monastic life and active engagement in ecclesial governance. Peter Damian stands as a reminder that theological learning finds its fullest fruit when placed at the service of the Church's holiness.
$desc$),
('the-chair-of-saint-peter-the-apostle', 'The Chair of Saint Peter the Apostle', $desc$
Celebrated on February 22 as a **Feast**, this day holds a distinctive place in the Roman calendar: rather than commemorating an event in the Apostle's life or his martyrdom, it honors the teaching authority and pastoral office he received from Christ, symbolized by the bishop's chair, or cathedra. White vestments are worn, and the feast outranks the weekday and most memorials that might otherwise fall on this date.

Theologically the feast celebrates the permanence of the Petrine ministry within the Church, the office of unity and authoritative teaching that Christ entrusted to Peter and that continues in his successors. The image of the chair signifies not primarily a physical object but the stability and continuity of apostolic doctrine, handed on faithfully from age to age as a guarantee of the Church's unity in truth.

The observance is attested from at least the fourth century, appearing in the ancient Roman Depositio Martyrum as the "Natale Petri de Cathedra," originally marking the anniversary of Peter's establishment of a see. The physical chair long venerated in Saint Peter's Basilica was enshrined within Bernini's monumental Cathedra Petri in the seventeenth century, giving visible and artistic form to the feast's ancient theological meaning.

Pastorally the feast today invites the faithful to reflect on the unity of the Church gathered around the successor of Peter, and on the gift of stable, authoritative teaching amid the confusions of every age. It remains a fitting occasion for prayer for the pope and for the Church's fidelity to the apostolic faith entrusted to Peter and his successors.
$desc$),
('saint-polycarp-bishop-and-martyr', 'Saint Polycarp, Bishop and Martyr', $desc$
Observed on February 23 as an **obligatory memorial**, the feast of Saint Polycarp honors a second-century bishop whose martyrdom is recorded in one of the earliest surviving accounts of Christian witness outside the New Testament. Red vestments are worn, proper to the commemoration of a martyr.

The feast celebrates fidelity to the apostolic faith received directly from the first generation of disciples, and the courage of a bishop who, at an advanced age, refused to deny Christ even under threat of death. His memorial highlights the continuity between apostolic teaching and episcopal witness, since Polycarp's faith and authority were understood by the early Church as flowing directly from those who had known the Apostles themselves.

Bishop of Smyrna and, according to ancient tradition, a disciple of the Apostle John, Polycarp was burned and then put to the sword during a local persecution in the second century; the contemporary account of his death, the *Martyrdom of Polycarp*, became a foundational text for the Church's later theology of martyrdom. His memorial has remained a stable feature of the Roman calendar since antiquity, one of the earliest post-apostolic martyrs to receive continuous liturgical veneration.

Today the memorial reminds the faithful of the direct chain of witness linking the contemporary Church to the apostolic age, and of the courage demanded of pastors called to defend the faith publicly. Polycarp's steadfastness continues to inspire Christians facing pressure to compromise their faith under threat of social or physical harm.
$desc$),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 'Saint Gregory of Narek, Abbot and Doctor of the Church', $desc$
Assigned to February 27 as an **optional memorial**, the feast of Saint Gregory of Narek honors a tenth-century Armenian monk and mystical writer who, in 2015, became the first monk of the Armenian Apostolic tradition to be declared a Doctor of the Church. White vestments are used, and his relatively recent inclusion in the Roman Calendar in 2018 reflects the Church's growing appreciation for spiritual riches beyond the Latin tradition.

The feast celebrates the depths of mystical prayer and the confident cry of the sinner before the mercy of God, themes at the heart of Gregory's celebrated *Book of Lamentations*, a work of profound penitential and contemplative theology treasured across Armenian Christianity and increasingly known in the wider Church. His memorial affirms that authentic Christian mysticism, rooted in humble confession of sin and hope in divine mercy, transcends confessional boundaries within the shared inheritance of the ancient Christian East.

A monk of the monastery of Narek in historic Armenia, Gregory composed theological, biblical, and liturgical works alongside his poetic masterpiece, and his proclamation as a Doctor of the Church by Pope Francis in 2015 marked a notable ecumenical gesture, honoring a saint venerated by the Armenian Apostolic Church, which is not in full communion with Rome. His subsequent addition to the universal Roman Calendar gave this recognition a stable place in the Latin Church's yearly worship.

Pastorally the memorial invites the faithful to draw on Gregory's prayerful language of contrition and trust in mercy, and it stands as a sign of the Church's esteem for the spiritual patrimony of Eastern Christianity. It encourages the ongoing pursuit of unity among the ancient Christian traditions through shared veneration of holiness wherever it is found.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('the-presentation-of-the-lord', 'La Présentation du Seigneur', $desc$
Célébrée le 2 février, quarante jours après Noël, la Présentation du Seigneur est inscrite au calendrier romain général comme **Fête du Seigneur**, clôturant le cycle de Noël et de l'Épiphanie avant la reprise du Temps ordinaire. On revêt les ornements blancs, et le jour est populairement appelé la Chandeleur en raison de la bénédiction et de la procession des cierges qui précèdent la messe, rite qui donne une forme visible à l'image centrale de la fête : le Christ lumière.

Sur le plan théologique, la fête commémore l'accomplissement de la loi mosaïque selon laquelle Marie et Joseph présentèrent l'enfant Jésus au Temple quarante jours après sa naissance, à la fois pour offrir leur premier-né au Seigneur et pour la purification rituelle de Marie. L'évangile de Luc y montre la rencontre de l'Ancienne et de la Nouvelle Alliance : le vieillard Siméon, conduit par l'Esprit, reconnaît dans l'enfant la **lumière pour éclairer les nations et la gloire d'Israël**, tandis que la prophétesse Anne l'annonce à tous ceux qui attendaient la délivrance de Jérusalem. La fête unit ainsi les thèmes de l'incarnation, de la manifestation et de l'offrande qui anticipe le sacrifice pascal.

Cette célébration est attestée à Jérusalem dès la fin du IVe siècle, décrite par la pèlerine Égérie comme une solennité du quarantième jour après l'Épiphanie. Une fois Noël fixé au 25 décembre en Occident, la fête se stabilisa au 2 février et fut introduite à Rome sous le pape Serge Ier (687-701), qui y ajouta la procession aux flambeaux. Longtemps connue en Occident sous le nom de Purification de la Bienheureuse Vierge Marie, elle retrouva, dans la réforme postconciliaire du calendrier, son ancien titre christocentrique de **Présentation du Seigneur**, afin de souligner qu'elle appartient d'abord au mystère du Christ plutôt qu'à la seule dévotion mariale.

Depuis 1997, ce jour est aussi la Journée mondiale de la vie consacrée, invitant les religieux et toute l'Église à méditer le don total de soi à Dieu à l'image de la présentation du Christ lui-même. La procession aux cierges demeure une catéchèse vivante sur le Christ lumière au milieu des ténèbres, invitant les fidèles à renouveler, à ce tournant entre Noël et le Carême, leur propre engagement à marcher comme des enfants de lumière dans la vie ordinaire.
$desc$),
('saint-blaise-bishop-and-martyr', 'Saint Blaise, évêque et martyr', $desc$
Célébrée le 3 février comme **mémoire facultative** dans le calendrier romain général, la fête de saint Blaise honore un évêque martyr de l'Église primitive dont le culte, modeste dans le calendrier universel, demeure vivace dans la coutume locale à travers la traditionnelle bénédiction des gorges. Aucune couleur liturgique obligatoire particulière ne s'impose au-delà des options habituelles d'une mémoire facultative, et ce jour peut céder devant l'observance des féries de Carême lorsqu'il tombe près du Mercredi des Cendres.

La mémoire célèbre avant tout le témoignage de la fidélité épiscopale jusqu'à la mort au temps de la persécution, et, par la bénédiction qui lui est associée, la confiance de l'Église en ce que l'intercession des martyrs s'étend jusqu'aux besoins corporels ordinaires des fidèles. Les cierges croisés utilisés pour la bénédiction des gorges symbolisent à la fois la lumière de la foi portée par l'évêque-martyr et la sollicitude maternelle de l'Église pour le bien-être physique de ses enfants, inséparable de leur santé spirituelle.

La dévotion à Blaise, évêque de Sébaste en Arménie martyrisé au début du IVe siècle, se répandit rapidement de l'Orient chrétien vers l'Occident médiéval, où il fut compté parmi les Quatorze Saints Auxiliaires, invoqués spécialement contre certains maux. Le rite de bénédiction des gorges avec des cierges croisés, attesté dès le Moyen Âge, devint si populaire qu'il maintint sa mémoire dans la dévotion populaire alors que bien d'autres cultes de martyrs anciens s'effaçaient de la pratique commune.

Aujourd'hui, cette mémoire offre un point de contact simple mais durable entre le culte liturgique et la vulnérabilité humaine quotidienne, rappelant aux fidèles que la vie d'intercession de l'Église touche jusqu'aux préoccupations corporelles concrètes. Elle témoigne aussi de la continuité entre le martyre ancien et la piété populaire vivante, montrant comment une coutume locale, presque domestique, peut garder vivante à travers les siècles la mémoire de la fidélité au Christ.
$desc$),
('saint-ansgar-bishop', 'Saint Anschaire, évêque', $desc$
Fixée également au 3 février comme **mémoire facultative**, la fête de saint Anschaire commémore un évêque du IXe siècle dont la liturgie retient surtout la figure d'un héraut de l'Évangile auprès des peuples de l'Europe du Nord. Là où les deux mémoires facultatives du jour sont observées, les calendriers locaux peuvent choisir entre Blaise et Anschaire selon la coutume pastorale régionale ; le Missel romain propose des textes propres mettant en valeur la charge missionnaire et pastorale d'un évêque plutôt qu'un miracle ou une relique particulière.

Le centre théologique de la fête est l'appel à annoncer le Christ parmi des peuples qui ne l'ont pas encore reçu, ainsi que la persévérance patiente exigée par la tâche missionnaire de l'Église, même au milieu des échecs et d'un fruit lent et incertain. Les prières du jour soulignent une charité épiscopale étendue au-delà des frontières d'un seul diocèse, reflet du mandat missionnaire universel confié par le Christ à son Église et exercé par le ministre d'évêques envoyés fonder de nouvelles communautés chrétiennes.

Moine bénédictin devenu archevêque de Hambourg-Brême, Anschaire reçut de la papauté la mission d'évangéliser la Scandinavie au IXe siècle, ce qui lui valut le titre traditionnel d'« Apôtre du Nord ». Sa mémoire entra dans les calendriers occidentaux ultérieurs à mesure que se consolidait la dévotion aux évêques missionnaires du haut Moyen Âge, et elle demeure une observance fixe, quoique facultative, dans le calendrier romain actuel, témoignant de l'époque de l'évangélisation de l'Europe du Nord.

Sur le plan pastoral, cette mémoire invite l'Église d'aujourd'hui à renouveler le courage missionnaire face au découragement, puisque les labeurs mêmes d'Anschaire ne portèrent des fruits visibles que longtemps après sa mort. Elle demeure un encouragement à une évangélisation patiente et persévérante, en particulier dans les régions où l'Évangile s'est effacé de la vie publique et doit être annoncé à nouveau.
$desc$),
('saint-agatha-virgin-and-martyr', 'Sainte Agathe, vierge et martyre', $desc$
Célébrée le 5 février comme **mémoire obligatoire**, la fête de sainte Agathe occupe une place particulièrement honorée dans le calendrier romain : son nom figure parmi les sept saintes femmes mentionnées dans le Canon romain (première prière eucharistique), signe de l'ancienneté et de la profondeur de sa vénération dans l'Église de Rome. Les ornements rouges marquent ce jour, propres à la commémoration d'une martyre.

La fête célèbre l'intégrité de la virginité consacrée maintenue jusqu'à l'effusion du sang, et le paradoxe au cœur du martyre chrétien par lequel une défaite et une atteinte corporelle apparentes deviennent, dans le Christ, une victoire définitive de la foi et de la dignité du corps. Le témoignage d'Agathe est lu par l'Église comme le signe que la fidélité au Christ peut résister à toute atteinte portée à la personne humaine, y compris aux attaques visant le corps lui-même.

Son culte est attesté remarquablement tôt, avec des églises et des inscriptions l'honorant dès le Ve siècle au moins, peu après la persécution sicilienne au cours de laquelle elle serait morte au milieu du IIIe siècle. Son inclusion parmi les femmes du Canon romain reflète la force de sa vénération à Rome dès l'Antiquité tardive, et sa mémoire a survecu à toutes les révisions ultérieures du calendrier, comptant parmi le nombre restreint de vierges-martyres des premiers siècles maintenues comme mémoire obligatoire.

Aujourd'hui, cette mémoire continue de proposer la virginité consacrée et la constance dans la souffrance comme un témoignage vivant pour toute l'Église, et elle demeure particulièrement chère en Sicile, où Agathe est honorée comme patronne principale, montrant comment une fête liturgique universelle peut aussi nourrir une dévotion locale et culturelle vivante.
$desc$),
('saints-paul-miki-and-companions-martyrs', 'Saints Paul Miki et ses compagnons, martyrs', $desc$
Célébrée le 6 février comme **mémoire obligatoire**, cette fête commémore les vingt-six chrétiens — prêtres, religieux et laïcs, adultes et adolescents — crucifiés ensemble à Nagasaki en 1597. Les ornements rouges sont revêtus, marquant ce martyre collectif que le jour honore comme une unité liturgique unique plutôt que comme des fêtes individuelles séparées.

Sur le plan théologique, la mémoire célèbre l'universalité de l'appel au martyre et l'épanouissement de l'Évangile bien au-delà de ses origines méditerranéennes et européennes, montrant la catholicité de l'Église rendue visible dans le sang des convertis japonais unis à des missionnaires venus d'Europe. Leur mort commune sur une même colline hérissée de croix est lue liturgiquement comme une image de la communion ecclésiale transcendant nationalité, âge et état de vie, tous réunis dans un même acte de fidélité au Christ.

Ces martyrs furent canonisés en 1862 par le pape Pie IX, parmi les premières canonisations reconnaissant les fruits de l'Évangile en Extrême-Orient, et leur mémoire entra au calendrier universel comme commémoration marquante de la jeune Église du Japon sous la persécution. Leur fête, fixée à la date même de leur exécution, situe cette célébration fermement dans l'histoire moderne de la mission universelle plutôt que dans le seul martyrologe romain ancien.

Sur le plan pastoral, cette mémoire parle avec force à une Église toujours plus consciente de son caractère mondial et multiculturel, offrant l'assurance que la fidélité jusqu'à la mort n'est confinée à aucune culture ni époque particulière. Elle demeure une référence pour les chrétiens confrontés à la persécution aujourd'hui, et un rappel que l'expansion de l'Évangile vers de nouvelles terres a toujours été arrosée par le témoignage des martyrs.
$desc$),
('saint-jerome-emiliani-priest', 'Saint Jérôme Emilien, prêtre', $desc$
Fixée au 8 février comme **mémoire facultative**, la fête de saint Jérôme Emilien commémore un prêtre du XVIe siècle que la liturgie retient pour son dévouement envers les enfants abandonnés et les pauvres. Les prières propres du Missel romain pour ce jour mettent en valeur le service charitable des jeunes et des plus vulnérables comme expression d'un ministre sacerdotal enraciné dans l'Évangile.

Le cœur théologique de la fête est l'exercice des œuvres de miséricorde corporelles et spirituelles envers les orphelins et les enfants abandonnés, compris non comme une simple philanthropie mais comme un prolongement direct de la tendresse même du Christ envers les « petits ». Elle affirme la dignité due à tout enfant abandonné en tant que porteur de l'image de Dieu, et propose la charité consacrée organisée en institutions stables comme une forme légitime et durable de suite du Christ.

Jérôme Emilien fonda la Compagnie des Serviteurs des Pauvres, devenue par la suite les Clercs réguliers de Somasque, en réponse aux ravages laissés par la guerre et la peste dans le nord de l'Italie ; sa mémoire fut étendue au calendrier universel à mesure que se répandait la reconnaissance de son patronage des orphelins et des jeunes abandonnés, proclamé formellement par le pape Pie XI en 1928. Son observance coïncide souvent avec celle de sainte Joséphine Bakhita, le même jour, réunissant deux témoins de la charité envers les plus vulnérables.

Aujourd'hui, cette mémoire encourage l'engagement continu de l'Église pour la protection et l'éducation des enfants abandonnés, mission poursuivie par des congrégations religieuses et des associations laïques qui rattachent leur charisme à son exemple. Elle rappelle avec force que la charité institutionnelle, bien ordonnée, est elle-même une forme de témoignage évangélique.
$desc$),
('saint-josephine-bakhita-virgin', 'Sainte Joséphine Bakhita, vierge', $desc$
Célébrée le 8 février comme **mémoire facultative**, la fête de sainte Joséphine Bakhita commémore une religieuse consacrée des Filles de la Charité canossiennes, canonisée en 2000, dont la liturgie retient la mémoire avant tout comme témoignage de la dignité de la personne humaine et de la vie consacrée librement embrassée après une souffrance profonde.

Sur le plan théologique, la fête célèbre la force transformante de la grâce, par laquelle une vie marquée par la cruauté et l'esclavage est portée à la liberté parfaite dans le Christ par le baptême et la consecration religieuse. L'Église lit dans cette mémoire l'affirmation qu'aucune dégradation infligée au corps ne peut atteindre la dignité inviolable donnée par Dieu, et que la virginité consacrée est elle-même un signe de libération définitive pour l'union au Christ.

La canonisation de Bakhita par le pape Jean-Paul II a fait d'elle la première sainte canonisée associée au Soudan moderne, et l'inscription de sa mémoire au calendrier universel reflète l'attention contemporaine de l'Église envers les blessures de l'esclavage et de la traite des êtres humains. Depuis 2015, le pape François a lié le 8 février à la Journée internationale de prière et de sensibilisation contre la traite des êtres humains, joignant formellement sa mémoire liturgique à cette initiative pastorale.

La fête revêt aujourd'hui une résonance contemporaine urgente, alors que l'Église continue d'affronter la persistance de l'esclavage et de la traite sous des formes nouvelles. La mémoire de Bakhita invite les fidèles à prier pour les victimes de la traite et à soutenir les efforts concrets de l'Église pour leur libération et leur réinsertion, faisant de cette mémoire facultative une observance d'une pertinence pastorale particulièrement directe.
$desc$),
('saint-scholastica-virgin', 'Sainte Scholastique, vierge', $desc$
Célébrée le 10 février comme **mémoire obligatoire**, la fête de sainte Scholastique honore une vierge consacrée du VIe siècle vénérée comme fondatrice de la vie monastique féminine dans la tradition bénédictine. Les ornements blancs sont revêtus, propres à la mémoire d'une vierge qui n'est pas martyre.

La fête célèbre la vocation de la virginité consacrée vécue au sein d'une communauté stable, sous une règle de prière et de vie commune, et elle affirme l'égale dignité du monachisme féminin aux côtés de la tradition monastique masculine dont il tire son origine. La liturgie du jour souligne la primauté de la charité et de la communion priante avec Dieu sur la seule observance extérieure, thèmes traditionnellement associés à sa mémoire dans la spiritualité monastique.

Scholastique rassembla une communauté de moniales près du Mont-Cassin, selon une forme de vie inspirée de la Règle plus tard associée à son frère, et son culte se développa très tôt au sein du monachisme bénédictin, se répandant dans toute l'Église d'Occident à mesure que cette famille monastique s'étendait. Sa mémoire est demeurée fixe et obligatoire à travers les réformes successives du calendrier, signe de sa place stable et anciennement reconnue parmi les fondateurs de la vie religieuse en Occident.

Sur le plan pastoral, la fête continue de proposer la vie religieuse contemplative et communautaire comme une vocation vivante et féconde au sein de l'Église, particulièrement pour les femmes. Elle rappelle aux fidèles que la force la plus profonde de la vie consacrée réside non dans la seule structure institutionnelle, mais dans la primauté de la charité et de l'union à Dieu que les thèmes traditionnels de cette mémoire soulignent constamment.
$desc$),
('our-lady-of-lourdes', 'Notre-Dame de Lourdes', $desc$
Célébrée le 11 février comme **mémoire facultative** dans le calendrier romain général, cette fête commémore la série d'apparitions de la Vierge Marie à la grotte de Massabielle en 1858, événement que l'Église a reconnu comme digne de foi sans jamais imposer aux fidèles d'y adhérer comme article de foi. Les ornements blancs sont utilisés, comme pour les autres célébrations mariales.

Sur le plan théologique, la fête attire l'attention sur la présence maternelle continue de Marie au sein de l'Église pèlerine, appelant les fidèles à la prière, à la pénitence et à la conversion, thèmes centraux des messages reconnus liés aux apparitions. La mémoire situe la dévotion à Lourdes dans la théologie plus large de l'intercession mariale, par laquelle la sollicitude maternelle de Marie s'étend concrètement aux souffrances, aux maladies et aux espérances ordinaires des fidèles, sans jamais se substituer à l'unique médiation du Christ.

Après l'approbation ecclésiastique des apparitions en 1862, la dévotion à Notre-Dame de Lourdes se répandit rapidement, et la fête, d'abord observée localement dans le diocèse de Tarbes, fut étendue au calendrier universel par le pape saint Pie X en 1907. Lourdes devint par la suite l'un des principaux lieux de pèlerinage marial de l'Église moderne, étroitement associé à la prière pour la guérison des malades.

En 1992, le pape Jean-Paul II institua la Journée mondiale du malade pour coïncider avec cette mémoire, donnant à la fête une orientation pastorale fortement tournée vers les souffrants et les infirmes. Ce jour offre aujourd'hui à l'Église universelle l'occasion de prier pour les malades, d'honorer ceux qui les soignent, et de renouveler l'espérance en l'intercession maternelle de Marie au milieu de l'épreuve corporelle et spirituelle.
$desc$),
('saints-cyril-monk-and-methodius-bishop', 'Saints Cyrille, moine, et Méthode, évêque', $desc$
Célébrée le 14 février comme **mémoire obligatoire**, cette fête honore deux frères du IXe siècle vénérés comme apôtres des peuples slaves et, depuis 1980, comme copatrons de l'Europe aux côtés de saint Benoît. Leur fête commune, unissant un moine et un évêque sous une même date liturgique, reflète leur mission commune et indissociable, et se célèbre avec le rang propre aux patrons du continent.

La fête célèbre la capacité de l'Église à annoncer le seul et même Évangile dans la langue et la culture de chaque peuple, puisque Cyrille et Méthode conçurent un alphabet et traduisirent les Écritures et la liturgie en langue slave, afin que les nouveaux croyants puissent entendre et prier dans leur propre langue. Leur mémoire affirme le principe, confirmé plus tard par les réformes liturgiques du XXe siècle, selon lequel le Verbe incarné doit devenir intelligible au sein de chaque culture sans dissoudre l'unité de la foi unique.

Envoyés de Byzance pour évangéliser la Grande-Moravie, les deux frères œuvrèrent au milieu de tensions politiques et ecclésiales considérables entre Orient et Occident, mais obtinrent de Rome la reconnaissance de leur liturgie en langue vernaculaire. Leur fête fut déplacée, lors de la réforme postconciliaire du calendrier, au 14 février, date de la mort de Cyrille, réunissant ce qui avait été des commémorations séparées ; la lettre apostolique de 1980 et l'encyclique *Slavorum Apostoli* de 1985 du pape Jean-Paul II consolidèrent leur place de patrons d'une Europe puisant à ses racines chrétiennes orientales comme occidentales.

Aujourd'hui, cette mémoire parle directement de l'unité de l'Europe et de la tâche permanente d'inculturation de l'Église, rappelant aux fidèles que la fidélité au Christ peut s'exprimer dans toute langue et toute tradition. Elle demeure un appel à surmonter les divisions historiques entre christianisme d'Orient et d'Occident par le témoignage partagé de deux frères qui servirent l'un et l'autre.
$desc$),
('the-seven-holy-founders-of-the-servite-order', 'Les Sept saints fondateurs de l''Ordre des Servites', $desc$
Fixée au 17 février comme **mémoire facultative**, cette fête commémore comme un groupe unique sept laïcs qui fondèrent ensemble l'Ordre des Servites de Marie au XIIIe siècle. Cette fête commune souligne que leur sainteté est célébrée collectivement, en tant que fondateurs d'une seule famille religieuse, plutôt que comme sept saints individuels distincts.

Le cœur théologique de la fête est la dévotion contemplative aux douleurs de la Vierge Marie au pied de la Croix, dévotion que les sept fondateurs firent leur comme charisme fondateur de leur nouvelle communauté. Leur mémoire affirme que le retrait communautaire de la vie du monde, au service de la contemplation mariale et christologique, constitue un chemin authentique et fécond de sainteté, et qu'un tel appel peut être partagé collectivement par un groupe uni dans un même dessein.

Ces sept laïcs florentins aisés, qui renoncèrent à leurs biens pour vivre en commun dans la prière et la pénitence, fondèrent ce qui devint l'Ordre des Servites en 1233 ; ils furent canonisés ensemble par le pape Léon XIII en 1888, cas rare de canonisation collective que reflète leur fête commune. Leur mémoire entra au calendrier universel à mesure que se répandait, au fil des siècles suivants, la dévotion au charisme servite et à la Mère des douleurs.

Sur le plan pastoral, la fête continue de nourrir la dévotion à Notre-Dame des Sept Douleurs et propose un modèle de sainteté enraciné dans la communion fraternelle et le renoncement partagé. Elle offre à l'Église d'aujourd'hui l'exemple d'une vocation collective, où la sainteté se poursuit non dans l'isolement mais au sein d'une communauté unie par un même charisme marial.
$desc$),
('saint-peter-damian-bishop-and-doctor-of-the-church', 'Saint Pierre Damien, évêque et docteur de l''Église', $desc$
Célébrée le 21 février comme **mémoire facultative**, la fête de saint Pierre Damien honore un moine-évêque du XIe siècle reconnu docteur de l'Église pour sa contribution à la réforme de la vie cléricale et à la doctrine morale et spirituelle de son époque. Les ornements blancs sont utilisés, comme il est d'usage pour un docteur de l'Église qui ne fut pas martyr.

La fête célèbre la vigueur de la réforme ecclésiale entreprise depuis l'intérieur d'une vie de discipline monastique, proposant l'insistance de Pierre Damien sur l'intégrité cléricale, contre la simonie et le relâchement de la discipline du clergé, comme modèle du besoin perpétuel de l'Église de se purifier elle-même dans la fidélité à l'Évangile. Sa mémoire affirme que la saine doctrine et l'ascèse personnelle rigoureuse servent ensemble la santé de tout le corps ecclésial.

Moine camaldule devenu cardinal-évêque d'Ostie et voix majeure du mouvement réformateur du XIe siècle, Pierre Damien laissa une œuvre écrite abondante qui façonna l'approche de l'Église en matière de réforme cléricale sous plusieurs papes. Il fut déclaré docteur de l'Église en 1828 par le pape Léon XII, et sa mémoire est demeurée depuis lors une observance fixe, quoique facultative, honorant son influence théologique et disciplinaire durable.

Aujourd'hui, cette mémoire invite à réfléchir sur le besoin constant de réforme de l'Église, entreprise dans l'humilité et la vérité, et sur la relation complémentaire entre la vie monastique contemplative et l'engagement actif dans le gouvernement ecclésial. Pierre Damien rappelle que la science théologique porte son fruit le plus plein lorsqu'elle est mise au service de la sainteté de l'Église.
$desc$),
('the-chair-of-saint-peter-the-apostle', 'La Chaire de saint Pierre, Apôtre', $desc$
Célébrée le 22 février comme **Fête**, cette journée occupe une place singulière dans le calendrier romain : plutôt que de commémorer un événement de la vie de l'Apôtre ou son martyre, elle honore l'autorité d'enseignement et la charge pastorale qu'il reçut du Christ, symbolisées par le siège épiscopal, ou cathèdre. Les ornements blancs sont revêtus, et cette fête l'emporte sur la férie et sur la plupart des mémoires qui pourraient autrement tomber à cette date.

Sur le plan théologique, la fête célèbre la permanence du ministre pétrinien au sein de l'Église, la charge d'unité et d'enseignement autorisé que le Christ confia à Pierre et qui se poursuit dans ses successeurs. L'image de la chaire signifie non pas d'abord un objet matériel, mais la stabilité et la continuité de la doctrine apostolique, transmise fidèlement d'âge en âge comme garantie de l'unité de l'Église dans la vérité.

Cette observance est attestée dès le IVe siècle au moins, apparaissant dans l'ancienne Depositio Martyrum romaine sous le nom de « Natale Petri de Cathedra », marquant à l'origine l'anniversaire de l'établissement par Pierre d'un siège épiscopal. La chaire matérielle longtemps vénérée dans la basilique Saint-Pierre fut enchssée au XVIIe siècle dans le monument monumental de la Cathedra Petri du Bernin, donnant une forme visible et artistique au sens théologique ancien de la fête.

Sur le plan pastoral, la fête invite aujourd'hui les fidèles à méditer l'unité de l'Église rassemblée autour du successeur de Pierre, et le don d'un enseignement stable et autorisé au milieu des confusions de chaque époque. Elle demeure une occasion propice à la prière pour le pape et pour la fidélité de l'Église à la foi apostolique confiée à Pierre et à ses successeurs.
$desc$),
('saint-polycarp-bishop-and-martyr', 'Saint Polycarpe, évêque et martyr', $desc$
Célébrée le 23 février comme **mémoire obligatoire**, la fête de saint Polycarpe honore un évêque du IIe siècle dont le martyre est rapporté dans l'un des plus anciens récits conservés de témoignage chrétien en dehors du Nouveau Testament. Les ornements rouges sont revêtus, propres à la commémoration d'un martyr.

La fête célèbre la fidélité à la foi apostolique reçue directement de la première génération des disciples, ainsi que le courage d'un évêque qui, à un âge avancé, refusa de renier le Christ même sous la menace de mort. Sa mémoire souligne la continuité entre l'enseignement apostolique et le témoignage épiscopal, puisque la foi et l'autorité de Polycarpe furent comprises par l'Église ancienne comme découlant directement de ceux qui avaient connu les Apôtres eux-mêmes.

Évêque de Smyrne et, selon la tradition ancienne, disciple de l'apôtre Jean, Polycarpe fut brûlé puis achevé par le glaive lors d'une persécution locale au IIe siècle ; le récit contemporain de sa mort, le *Martyre de Polycarpe*, devint un texte fondateur pour la théologie ultérieure du martyre dans l'Église. Sa mémoire est demeurée un élément stable du calendrier romain depuis l'Antiquité, l'un des tout premiers martyrs postapostoliques à recevoir une vénération liturgique continue.

Aujourd'hui, cette mémoire rappelle aux fidèles la chaîne directe de témoignage reliant l'Église contemporaine à l'âge apostolique, ainsi que le courage exigé des pasteurs appelés à défendre publiquement la foi. La fermeté de Polycarpe continue d'inspirer les chrétiens confrontés à la pression de compromettre leur foi sous la menace d'un préjudice social ou physique.
$desc$),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 'Saint Grégoire de Narek, abbé et docteur de l''Église', $desc$
Fixée au 27 février comme **mémoire facultative**, la fête de saint Grégoire de Narek honore un moine et écrivain mystique arménien du Xe siècle qui, en 2015, devint le premier moine de la tradition arménienne apostolique déclaré docteur de l'Église. Les ornements blancs sont utilisés, et son inclusion relativement récente dans le calendrier romain en 2018 reflète l'estime croissante de l'Église pour les richesses spirituelles qui débordent la seule tradition latine.

La fête célèbre les profondeurs de la prière mystique et le cri confiant du pécheur devant la miséricorde de Dieu, thèmes au cœur du célèbre *Livre des Lamentations* de Grégoire, œuvre d'une théologie pénitentielle et contemplative profonde, chère à tout le christianisme arménien et de plus en plus connue dans l'ensemble de l'Église. Sa mémoire affirme qu'un mysticisme chrétien authentique, enraciné dans l'humble confession du péché et l'espérance en la miséricorde divine, transcende les frontières confessionnelles au sein de l'héritage commun de l'antique Orient chrétien.

Moine du monastère de Narek dans l'Arménie historique, Grégoire composa des œuvres théologiques, bibliques et liturgiques aux côtés de son chef-d'œuvre poétique, et sa proclamation comme docteur de l'Église par le pape François en 2015 constitua un geste œcuménique notable, honorant un saint vénéré par l'Église apostolique arménienne, qui n'est pas en pleine communion avec Rome. Son inscription ultérieure au calendrier romain universel donna à cette reconnaissance une place stable dans le culte annuel de l'Église latine.

Sur le plan pastoral, cette mémoire invite les fidèles à puiser dans le langage priant de Grégoire, fait de contrition et de confiance en la miséricorde, et elle constitue un signe de l'estime de l'Église pour le patrimoine spirituel du christianisme oriental. Elle encourage la recherche persévérante de l'unité entre les anciennes traditions chrétiennes par la vénération partagée de la sainteté, où qu'elle se trouve.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('the-presentation-of-the-lord', 'Praesentatio Domini', $desc$
Die secunda mensis Februarii, quadraginta diebus post Nativitatem, in Calendario Romano Generali celebratur **Festum Domini** quod Praesentatio Domini nuncupatur, cyclum Nativitatis et Epiphaniae claudens antequam Tempus per Annum resumatur. Vestes albae adhibentur, et dies vulgo Candelaria dicitur propter benedictionem et processionem candelarum quae Missam praecedunt, ritus qui imaginem centralem festi, Christum lucem, visibilem reddit.

Theologice festum recolit legem Mosaicam impletam, qua Maria et Ioseph infantem Iesum in Templum quadraginta diebus post nativitatem eius attulerunt, ut primogenitum Domino offerrent et Maria ritu purificationis subiret. Evangelium secundum Lucam hic occursum Veteris et Novi Testamenti ostendit: senex Simeon, Spiritu ductus, in infante agnoscit **lumen ad revelationem gentium et gloriam Israel**, dum Anna prophetissa eum omnibus redemptionem Ierusalem exspectantibus annuntiat. Festum ita themata incarnationis, manifestationis, et oblationis quae sacrificium paschale anticipat, coniungit.

Haec celebratio Hierosolymis iam saeculo quarto exeunte testatur, ut peregrina Egeria narrat, sollemnitas quadragesimi diei post Epiphaniam. Postquam Nativitas in Occidente die vicesima quinta Decembris statuta est, festum ad diem secundam Februarii stabilitum est et Romae sub Sergio Papa Primo (687-701) introductum, qui processionem cereorum addidit. Diu in Occidente Purificatio Beatae Mariae Virginis dicta, in reformatione postconciliari calendarii titulum antiquum et Christocentricum **Praesentatio Domini** recuperavit, ut clarius appareret festum ad mysterium Christi potius quam ad solam devotionem Marianam pertinere.

Ab anno 1997 hic dies etiam Dies Mundialis Vitae Consecratae est, religiosos totamque Ecclesiam invitans ad meditandam totalem sui ipsius oblationem Deo ad exemplum ipsius Christi praesentati. Processio cereorum catechesis viva de Christo luce inter tenebras manet, fideles invitans ut, hoc in discrimine inter Nativitatem et Quadragesimam, propriam voluntatem ambulandi ut filii lucis in vita cotidiana renovent.
$desc$),
('saint-blaise-bishop-and-martyr', 'Sancti Blasii, Episcopi et Martyris', $desc$
Die tertia Februarii, ut **memoria ad libitum** in Calendario Romano Generali celebratur festum Sancti Blasii, episcopi et martyris Ecclesiae primaevae, cuius cultus, in calendario universali modestus, in consuetudine locali per traditionalem benedictionem faucium vigens manet. Nulla color liturgicus proprius praeter optiones solitas memoriae ad libitum imponitur, et hic dies feriae quadragesimali cedere potest si prope Feriam Quartam Cinerum occurrat.

Memoria imprimis celebrat testimonium fidelitatis episcopalis usque ad mortem tempore persecutionis, et, per benedictionem huic festo adiunctam, fiduciam Ecclesiae qua intercessio martyrum ad necessitates corporales fidelium ordinarias extenditur. Candelae in crucem dispositae, quibus fauces benedicuntur, simul lucem fidei ab episcopo martyre gestatam et sollicitudinem maternam Ecclesiae pro salute corporali filiorum suorum, a salute spirituali inseparabili, significant.

Devotio erga Blasium, episcopum Sebastenum in Armenia, initio saeculi quarti martyrio coronatum, celeriter ab Oriente christiano in Occidentem medii aevi diffusa est, ubi inter Quattuordecim Auxiliatores Sanctos numeratus est, qui contra determinatas afflictiones speciatim invocantur. Ritus benedicendi fauces candelis in crucem positis, a medio aevo attestatus, tam late dilectus factus est ut eius memoriam in pietate populari servaverit, dum multi alii cultus martyrum antiquorum ex usu communi recesserunt.

Hodie haec memoria simplicem sed perennem contactum inter cultum liturgicum et humanam vulnerabilitatem cotidianam praebet, fideles admonens vitam intercessoriam Ecclesiae ad res corporales concretas pertingere. Testatur etiam continuitatem inter martyrium antiquum et pietatem popularem vivam, ostendens quomodo consuetudo localis, prope domestica, memoriam fidelitatis erga Christum per multa saecula servare possit.
$desc$),
('saint-ansgar-bishop', 'Sancti Ansgarii, Episcopi', $desc$
Eodem die tertio Februarii, ut **memoria ad libitum**, celebratur festum Sancti Ansgarii, episcopi saeculi noni, quem liturgia praesertim ut praeconem Evangelii apud populos Europae Septentrionalis recolit. Ubi utraque memoria ad libitum huius diei localiter observatur, calendaria inter Blasium et Ansgarium secundum consuetudinem pastoralem regionalem eligere possunt; Missale Romanum textus proprios praebet, qui officium missionale et pastorale episcopi potius quam miraculum vel reliquiam peculiarem extollunt.

Centrum theologicum festi est vocatio ad Christum annuntiandum inter populos qui eum nondum receperunt, et perseverantia patiens quam opus missionale Ecclesiae exigit etiam inter impedimenta et fructum tardum atque incertum. Orationes diei caritatem episcopalem extra fines unius dioecesis extensam illustrant, mandatum missionale universale a Christo Ecclesiae suae datum reflectentes, quod per ministerium episcoporum ad novas communitates christianas fundandas missorum exercetur.

Ansgarius, monachus Benedictinus qui archiepiscopus Hamburgensis-Bremensis factus est, a Sede Apostolica munus evangelizandi Scandinaviam saeculo nono accepit, unde titulum traditionalem "Apostoli Septentrionis" meruit. Eius memoria in calendaria occidentalia posteriora intravit dum devotio erga episcopos missionarios alti medii aevi consolidabatur, et in calendario Romano hodierno observantia fixa, quamvis ad libitum, permanet, testimonium aetatis evangelizationis Europae Septentrionalis.

Pastoraliter haec memoria Ecclesiam hodiernam invitat ad audaciam missionalem coram desperatione renovandam, cum labores ipsius Ansgarii fructus visibiles tantum post mortem eius diu attulerint. Manet incitamentum ad evangelizationem sedulam et patientem, praesertim in regionibus ubi Evangelium e vita publica recessit et denuo annuntiandum est.
$desc$),
('saint-agatha-virgin-and-martyr', 'Sanctae Agathae, Virginis et Martyris', $desc$
Die quinta Februarii, ut **memoria obligatoria**, celebratur festum Sanctae Agathae, quae locum peculiari honore in calendario Romano tenet: nomen eius inter septem sanctas mulieres in Canone Romano (Prece Eucharistica Prima) recensetur, signum antiquitatis et profunditatis venerationis eius in Ecclesia Romana. Vestes rubrae hunc diem signant, martyris commemorationi propriae.

Festum celebrat integritatem virginitatis consecratae usque ad sanguinis effusionem servatam, et paradoxum in corde martyrii christiani positum, quo clades et violatio corporis apparentes in Christo victoria definitiva fidei et dignitatis corporis fiunt. Testimonium Agathae ab Ecclesia legitur ut signum fidelitatem erga Christum omni impetui in personam humanam, etiam illis qui ipsum corpus petunt, resistere posse.

Cultus eius mirum in modum praecoci tempore attestatur, ecclesiis et inscriptionibus eam saltem a saeculo quinto honorantibus, paulo post persecutionem Siculam in qua medio saeculo tertio mortua creditur. Inclusio eius inter mulieres Canonis Romani firmitatem venerationis eius Romae iam antiquitate serotina reflectit, et memoria eius omnes reformationes calendarii posteriores superavit, inter paucas virgines martyres primorum saeculorum quae obligatoriae mansere.

Hodie memoria virginitatem consecratam et constantiam in dolore ut testimonium vivum toti Ecclesiae proponere pergit, et in Sicilia praesertim cara manet, ubi Agatha ut patrona praecipua honoratur, ostendens quomodo festum liturgicum universale devotionem localem et culturalem vividam etiam alere possit.
$desc$),
('saints-paul-miki-and-companions-martyrs', 'Sanctorum Pauli Miki et Sociorum, Martyrum', $desc$
Die sexta Februarii, ut **memoria obligatoria**, hoc festum viginti sex christianos — sacerdotes, religiosos et laicos, adultos et pueros — commemorat, qui simul Nagasakii anno 1597 cruci affixi sunt. Vestes rubrae induuntur, martyrium collectivum significantes, quod dies ut unam unitatem liturgicam potius quam ut festa singularia separata honorat.

Theologice memoria universalitatem vocationis ad martyrium et florem Evangelii longe ultra origines Mediterraneas et Europaeas celebrat, catholicitatem Ecclesiae in sanguine conversorum Iaponensium una cum missionariis ex Europa visibilem factam ostendens. Mors eorum communis in uno colle crucibus disposito liturgice legitur ut imago communionis ecclesialis, nationalitatem, aetatem et statum vitae transcendentis, omnes in uno actu fidelitatis erga Christum coniunctos.

Hi martyres anno 1862 a Pio Papa Nono canonizati sunt, inter primas canonizationes quae fructus Evangelii in Extremo Oriente agnoverunt, et memoria eorum in calendarium universale intravit ut commemoratio insignis Ecclesiae iuvenis in Iaponia sub persecutione. Festum eorum, diei ipsi executionis fixum, hanc observantiam firmiter in historia moderna missionis universalis potius quam in martyrologio Romano antiquo tantum situat.

Pastoraliter memoria valide loquitur Ecclesiae, quae magis magisque suae naturae mundialis et multiculturalis conscia fit, certitudinem praebens fidelitatem usque ad mortem nulli culturae vel aetati particulari circumscribi. Manet exemplar christianis hodie persecutionem patientibus, et memoria expansionem Evangelii in novas terras semper testimonio martyrum irrigatam fuisse.
$desc$),
('saint-jerome-emiliani-priest', 'Sancti Hieronymi Aemiliani, Presbyteri', $desc$
Die octava Februarii, ut **memoria ad libitum**, celebratur festum Sancti Hieronymi Aemiliani, presbyteri saeculi sexti decimi, quem liturgia propter dedicationem eius erga derelictos et pauperes recolit. Orationes propriae Missalis Romani huius diei servitium caritativum iuvenum et debiliorum ut expressionem ministerii sacerdotalis in Evangelio radicati extollunt.

Cor theologicum festi sunt opera misericordiae corporalia et spiritualia erga orphanos et pueros derelictos exercita, non ut mera philanthropia sed ut continuatio directa ipsius teneritudinis Christi erga "parvulos" intellecta. Affirmat dignitatem omni puero derelicto debitam, utpote imaginem Dei gerenti, et caritatem consecratam in institutiones stabiles ordinatam ut formam legitimam et perennem Christum sequendi proponit.

Hieronymus Aemilianus Societatem Servorum Pauperum fundavit, quae postea Clerici Regulares Somaschenses facti sunt, ad vastationes belli et pestis in Italia septentrionali relictas respondens, et memoria eius ad calendarium universale extensa est dum patrocinium eius orphanorum et iuvenum derelictorum, a Pio Papa Undecimo anno 1928 formaliter proclamatum, late agnoscebatur. Observantia eius saepe cum Sanctae Iosephinae Bakhita eodem die concurrit, duo testes caritatis erga infirmiores coniungens.

Hodie memoria studium Ecclesiae perseverans pro custodia et educatione puerorum derelictorum fovet, missionem a congregationibus religiosis et consociationibus laicis exemplo eius originem trahentibus continuatam. Manet monitum acutum caritatem institutionalem, recte ordinatam, ipsam formam testimonii evangelici esse.
$desc$),
('saint-josephine-bakhita-virgin', 'Sanctae Iosephinae Bakhita, Virginis', $desc$
Die octava Februarii, ut **memoria ad libitum**, celebratur festum Sanctae Iosephinae Bakhita, religiosae consecratae Filiarum Caritatis Canossianarum, anno 2000 canonizatae, cuius memoriam liturgia praecipue ut testimonium dignitatis personae humanae et vitae consecratae libere post gravem dolorem susceptae recolit.

Theologice festum vim gratiae transformantem celebrat, qua vita crudelitate et servitute signata in libertatem perfectam in Christo per baptismum et consecrationem religiosam assumitur. Ecclesia in memoria eius affirmationem legit nullam degradationem corpori illatam dignitatem inviolabilem a Deo datam attingere posse, et virginitatem consecratam ipsam signum esse liberationis definitivae ad unionem cum Christo.

Canonizatio Bakhita a Ioanne Paulo Papa Secundo eam primam sanctam canonizatam Sudaniae modernae associatam fecit, et locus memoriae eius in calendario universali attentionem hodiernam Ecclesiae erga vulnera servitutis et mercaturae hominum reflectit. Ab anno 2015 Franciscus Papa diem octavum Februarii cum Die Internationali Orationis et Conscientiae contra Mercaturam Hominum coniunxit, memoriam eius liturgicam huic consilio pastorali formaliter adiungens.

Festum hodie resonantiam contemporaneam urgentem fert, dum Ecclesia perseverantiam servitutis et mercaturae hominum in formis novis affrontare pergit. Memoria Bakhita fideles invitat ut pro victimis mercaturae orent et conatus concretos Ecclesiae pro eorum liberatione et reintegratione sustineant, hanc memoriam ad libitum pertinentiam pastoralem singulariter directam habentem reddens.
$desc$),
('saint-scholastica-virgin', 'Sanctae Scholasticae, Virginis', $desc$
Die decima Februarii, ut **memoria obligatoria**, celebratur festum Sanctae Scholasticae, virginis consecratae saeculi sexti, quae ut conditrix vitae monasticae feminarum in traditione Benedictina veneratur. Vestes albae induuntur, memoriae virginis quae martyr non fuit propriae.

Festum vocationem virginitatis consecratae intra communitatem stabilem sub regula orationis et vitae communis vitam celebrat, et aequalem dignitatem monachatus feminini iuxta traditionem monasticam masculinam, ex qua originem duxit, affirmat. Liturgia diei primatum caritatis et communionis orantis cum Deo super solam observantiam externam illustrat, themata memoriae eius in spiritualitate monastica traditione associata.

Scholastica communitatem sanctimonialium prope Montem Casinum, secundum formam vitae ex Regula postea fratri suo associata inspiratam, congregavit, et cultus eius intra monachatum Benedictinum ab initio antiquo increvit, per totam Ecclesiam Occidentalem diffusus dum haec familia monastica extendebatur. Memoria eius per reformationes calendarii successivas fixa et obligatoria mansit, signum loci eius stabilis et diu agniti inter conditores vitae religiosae in Occidente.

Pastoraliter festum vitam religiosam contemplativam et communitariam ut vocationem vividam et fructuosam intra Ecclesiam, praesertim pro feminis, proponere pergit. Fideles admonet vim profundissimam vitae consecratae non in sola structura institutionali sed in primatu caritatis et unionis cum Deo, quae themata traditionalia huius memoriae constanter illustrant, sitam esse.
$desc$),
('our-lady-of-lourdes', 'Beatae Mariae Virginis de Lourdes', $desc$
Die undecima Februarii, ut **memoria ad libitum** in Calendario Romano Generali, hoc festum seriem apparitionum Beatae Mariae Virginis apud speluncam Massabielle anno 1858 factarum commemorat, eventum quem Ecclesia fide dignum agnovit, numquam tamen fidelibus tamquam rem fidei credendam imponens. Vestes albae, ut in aliis celebrationibus Marianis, adhibentur.

Theologice festum praesentiam maternam Mariae in Ecclesia peregrinante perseverantem attentioni proponit, fideles ad orationem, paenitentiam et conversionem vocans, themata centralia nuntiorum apparitionibus associatorum agnitorum. Memoria devotionem erga Lourdes intra theologiam latiorem intercessionis Marianae collocat, qua sollicitudo materna Mariae ad dolores, morbos et spes ordinarias fidelium concrete extenditur, sine ulla unicae mediationis Christi diminutione.

Post approbationem ecclesiasticam apparitionum anno 1862, devotio erga Beatam Mariam Virginem de Lourdes celeriter diffusa est, et festum, primum localiter in dioecesi Tarbiensi observatum, a Pio Papa Decimo Sancto anno 1907 ad calendarium universale extensum est. Lourdes postea unus ex praecipuis locis peregrinationis Marianae Ecclesiae modernae factus est, cum oratione pro sanatione infirmorum arcte coniunctus.

Anno 1992 Ioannes Paulus Papa Secundus Diem Mundialem Infirmi huic memoriae coniunctum instituit, festo directionem pastoralem valde erga dolentes et infirmos versam dans. Hic dies hodie Ecclesiae universali occasionem praebet orandi pro infirmis, honorandi eos qui eis serviunt, et spem in intercessione materna Mariae inter afflictionem corporalem et spiritualem renovandi.
$desc$),
('saints-cyril-monk-and-methodius-bishop', 'Sanctorum Cyrilli, Monachi, et Methodii, Episcopi', $desc$
Die decima quarta Februarii, ut **memoria obligatoria**, hoc festum duos fratres saeculi noni honorat, qui ut apostoli populorum Slavicorum, et ab anno 1980 ut patroni secundarii Europae una cum Sancto Benedicto, venerantur. Festum eorum commune, monachum et episcopum sub una die liturgica coniungens, missionem communem et inseparabilem eorum reflectit, et gradu patronis continentis proprio celebratur.

Festum facultatem Ecclesiae unum idemque Evangelium in lingua et cultura uniuscuiusque populi annuntiandi celebrat, cum Cyrillus et Methodius alphabetum excogitaverint et Scripturas ac liturgiam in linguam Slavicam transtulerint, ut novi credentes in propria lingua audire et orare possent. Memoria eorum principium affirmat, postea reformationibus liturgicis saeculi vicesimi confirmatum, Verbum incarnatum intra omnem culturam intelligibile fieri debere sine unitate unius fidei dissolvenda.

Fratres, a Byzantio ad Moraviam Magnam evangelizandam missi, inter tensiones politicas et ecclesiasticas notabiles inter Orientem et Occidentem laboraverunt, agnitionem tamen a Roma pro liturgia sua vernacula obtinuerunt. Festum eorum in reformatione calendarii postconciliari ad diem decimum quartum Februarii, diem mortis Cyrilli, translatum est, commemorationes antea separatas coniungens, et Litterae Apostolicae anni 1980 et encyclica *Slavorum Apostoli* anni 1985 Ioannis Pauli Papae Secundi locum eorum ut patronorum Europae, ex radicibus christianis Orientalibus et Occidentalibus simul haurientis, confirmaverunt.

Hodie memoria de unitate Europae et de opere inculturationis Ecclesiae perpetuo directe loquitur, fideles admonens fidelitatem erga Christum omni lingua et traditione exprimi posse. Manet vocatio ad divisiones historicas inter christianismum Orientalem et Occidentalem testimonio communi duorum fratrum, qui utrique servierunt, superandas.
$desc$),
('the-seven-holy-founders-of-the-servite-order', 'Septem Sanctorum Fundatorum Ordinis Servorum Mariae', $desc$
Die decima septima Februarii, ut **memoria ad libitum**, hoc festum, tamquam unum coetum, septem viros laicos commemorat qui simul Ordinem Servorum Mariae saeculo tertio decimo fundaverunt. Dies festus communis significat sanctitatem eorum collective celebrari, ut fundatorum unius familiae religiosae potius quam ut septem sanctorum singularium distinctorum.

Centrum theologicum festi est devotio contemplativa erga dolores Beatae Mariae Virginis ad pedem Crucis, quam septem fundatores ut charisma animans novae communitatis suae amplexi sunt. Memoria eorum affirmat secessum communitarium a vita saeculari in servitium contemplationis Marianae et Christologicae viam authenticam et fructuosam sanctitatis constituere, et talem vocationem a coetu uno proposito unito collective participari posse.

Septem illi, viri Florentini opibus praediti qui possessionibus renuntiaverunt ut in oratione et paenitentia communi viverent, id quod Ordo Servitarum factus est anno 1233 fundaverunt; simul a Leone Papa Tertio Decimo anno 1888 canonizati sunt, casus rarus canonizationis collectivae quem festum eorum commune reflectit. Memoria eorum in calendarium universale intravit dum devotio erga charisma Servitarum et Matrem Dolorosam per saecula sequentia, ordine crescente, diffundebatur.

Pastoraliter festum devotionem erga Beatam Mariam Virginem Dolorosam alere pergit et formam sanctitatis in communione fraterna et renuntiatione communi radicatam proponit. Ecclesiae hodiernae exemplum vocationis collectivae praebet, in qua sanctitas non in solitudine sed intra communitatem uno charismate Mariano unitam persequitur.
$desc$),
('saint-peter-damian-bishop-and-doctor-of-the-church', 'Sancti Petri Damiani, Episcopi et Ecclesiae Doctoris', $desc$
Die vicesima prima Februarii, ut **memoria ad libitum**, celebratur festum Sancti Petri Damiani, monachi et episcopi saeculi undecimi, qui Doctor Ecclesiae agnitus est ob contributionem eius ad reformationem vitae clericalis et ad doctrinam moralem et spiritualem aetatis suae. Vestes albae adhibentur, ut solet pro Doctore Ecclesiae qui martyr non fuit.

Festum vigorem reformationis ecclesialis intra vitam disciplinae monasticae susceptae celebrat, insistentiam Petri Damiani in integritate clericali, contra simoniam et laxitatem disciplinae clericalis, ut exemplar perpetuae necessitatis Ecclesiae se ipsam in fidelitate Evangelio purificandi proponens. Memoria eius affirmat doctrinam sanam et asceticismum personalem rigorosum simul sanitati totius corporis ecclesialis servire.

Monachus Camaldulensis qui cardinalis episcopus Ostiensis et vox praecipua motus reformatorii saeculi undecimi factus est, Petrus Damianus opus scriptum amplum reliquit, quod modum Ecclesiae reformationem clericalem sub pluribus pontificibus tractandi formavit. Doctor Ecclesiae anno 1828 a Leone Papa Duodecimo declaratus est, et memoria eius observantia fixa, quamvis ad libitum, ex tunc mansit, influxum eius theologicum et disciplinarem perennem honorans.

Hodie memoria ad meditandam necessitatem perpetuam reformationis Ecclesiae, in humilitate et veritate susceptae, et relationem complementarem inter vitam monasticam contemplativam et actuosam participationem in gubernatione ecclesiali invitat. Petrus Damianus monet doctrinam theologicam fructum suum plenissimum invenire cum sanctitati Ecclesiae inservit.
$desc$),
('the-chair-of-saint-peter-the-apostle', 'Cathedrae Sancti Petri Apostoli', $desc$
Die vicesima secunda Februarii, ut **Festum**, hic dies locum singularem in calendario Romano tenet: non enim eventum vitae Apostoli vel martyrium eius commemorat, sed auctoritatem docendi et officium pastorale quod a Christo accepit, cathedra episcopali significata, honorat. Vestes albae induuntur, et hoc festum feriam et plerasque memorias, quae alioquin hac die occurrere possent, praecellit.

Theologice festum perpetuitatem ministerii Petrini intra Ecclesiam celebrat, officium unitatis et doctrinae authenticae quod Christus Petro concredidit et quod in successoribus eius perseverat. Imago cathedrae non rem materialem primo significat, sed stabilitatem et continuitatem doctrinae apostolicae, fideliter ab aetate in aetatem traditae, tamquam pignus unitatis Ecclesiae in veritate.

Haec observantia saltem a saeculo quarto attestatur, in antiqua Depositione Martyrum Romana sub nomine "Natale Petri de Cathedra" apparens, quae originaliter anniversarium sedis a Petro constitutae signabat. Cathedra materialis, diu in Basilica Sancti Petri venerata, saeculo decimo septimo intra monumentum ingens Berninianum Cathedrae Petri inclusa est, sensui theologico antiquo festi formam visibilem et artisticam dans.

Pastoraliter festum hodie fideles invitat ad meditandam unitatem Ecclesiae circa successorem Petri congregatae, et donum doctrinae stabilis et authenticae inter confusiones cuiusque aetatis. Manet occasio apta orandi pro Summo Pontifice et pro fidelitate Ecclesiae fidei apostolicae, Petro eiusque successoribus concreditae.
$desc$),
('saint-polycarp-bishop-and-martyr', 'Sancti Polycarpi, Episcopi et Martyris', $desc$
Die vicesima tertia Februarii, ut **memoria obligatoria**, celebratur festum Sancti Polycarpi, episcopi saeculi secundi, cuius martyrium in uno ex antiquissimis narrationibus testimonii christiani extra Novum Testamentum superstitibus refertur. Vestes rubrae induuntur, martyris commemorationi propriae.

Festum fidelitatem fidei apostolicae a prima generatione discipulorum directe acceptae celebrat, et fortitudinem episcopi qui, aetate provecta, Christum negare noluit etiam sub mortis periculo. Memoria eius continuitatem inter doctrinam apostolicam et testimonium episcopale illustrat, cum fides et auctoritas Polycarpi ab Ecclesia primaeva ex illis directe fluere intellegerentur qui ipsos Apostolos noverant.

Episcopus Smyrnensis et, secundum traditionem antiquam, discipulus Ioannis Apostoli, Polycarpus igne et deinde gladio persecutione locali saeculo secundo interfectus est; narratio contemporanea mortis eius, *Martyrium Polycarpi*, textus fundamentalis theologiae Ecclesiae posterioris de martyrio factus est. Memoria eius elementum stabile calendarii Romani ab antiquitate mansit, unus ex primis martyribus postapostolicis qui venerationem liturgicam continuam receperunt.

Hodie memoria fideles admonet catenae directae testimonii, quae Ecclesiam contemporaneam cum aetate apostolica coniungit, et fortitudinis a pastoribus exactae, qui fidem publice defendere vocantur. Constantia Polycarpi christianos hodie sub pressione fidem suam sub minis damni socialis vel physici prodendi inspirare pergit.
$desc$),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 'Sancti Gregorii Narekensis, Abbatis et Ecclesiae Doctoris', $desc$
Die vicesima septima Februarii, ut **memoria ad libitum**, celebratur festum Sancti Gregorii Narekensis, monachi et scriptoris mystici Armeni saeculi decimi, qui anno 2015 primus monachus traditionis Armenae Apostolicae Doctor Ecclesiae declaratus est. Vestes albae adhibentur, et inclusio eius relative recens in Calendario Romano anno 2018 aestimationem crescentem Ecclesiae erga divitias spirituales quae traditionem Latinam excedunt reflectit.

Festum profunditates orationis mysticae et clamorem confidentem peccatoris coram misericordia Dei celebrat, themata in corde celebris *Libri Lamentationum* Gregorii posita, operis theologiae paenitentialis et contemplativae profundae, toti christianitati Armenae cari et in Ecclesia latiore magis magisque cogniti. Memoria eius affirmat mysticismum christianum authenticum, in humili confessione peccati et spe in misericordia divina radicatum, fines confessionales transcendere intra hereditatem communem antiqui Orientis christiani.

Monachus monasterii Narekensis in Armenia historica, Gregorius opera theologica, biblica et liturgica iuxta opus poeticum praecipuum composuit, et proclamatio eius ut Doctoris Ecclesiae a Francisco Papa anno 2015 gestum oecumenicum notabile signavit, sanctum ab Ecclesia Armena Apostolica, quae in plena communione cum Roma non est, veneratum honorans. Additio eius posterior ad Calendarium Romanum universale huic agnitioni locum stabilem in cultu annuo Ecclesiae Latinae dedit.

Pastoraliter memoria fideles invitat ut ex lingua orante Gregorii, contritione et fiducia in misericordia plena, hauriant, et signum est aestimationis Ecclesiae erga patrimonium spirituale christianitatis Orientalis. Studium perseverans unitatis inter antiquas traditiones christianas fovet per venerationem communem sanctitatis, ubicumque invenitur.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('the-presentation-of-the-lord', 2, 2, 'FEAST_LORD', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-blaise-bishop-and-martyr', 2, 3, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-ansgar-bishop', 2, 3, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-agatha-virgin-and-martyr', 2, 5, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saints-paul-miki-and-companions-martyrs', 2, 6, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-jerome-emiliani-priest', 2, 8, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-josephine-bakhita-virgin', 2, 8, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-scholastica-virgin', 2, 10, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('our-lady-of-lourdes', 2, 11, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saints-cyril-monk-and-methodius-bishop', 2, 14, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('the-seven-holy-founders-of-the-servite-order', 2, 17, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-peter-damian-bishop-and-doctor-of-the-church', 2, 21, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('the-chair-of-saint-peter-the-apostle', 2, 22, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-polycarp-bishop-and-martyr', 2, 23, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 2, 27, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - March (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- With movable handling for:
--   - Saint Joseph (March 19)
-- 		if overlaps Holy Week --> Saturday before Palm Sunday
--   - Annunciation (March 25) if overlaps Holy Week / Easter Octave
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-casimir', 'Saint Casimir', 'saint'),
('saints-perpetua-and-felicity-martyrs', 'Saints Perpetua and Felicity, Martyrs', 'saint'),
('saint-john-of-god-religious', 'Saint John of God, Religious', 'saint'),
('saint-frances-of-rome-religious', 'Saint Frances of Rome, Religious', 'saint'),
('saint-patrick-bishop', 'Saint Patrick, Bishop', 'saint'),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 'Saint Cyril of Jerusalem, Bishop and Doctor of the Church', 'saint'),
('saint-joseph-spouse-of-the-blessed-virgin-mary', 'Saint Joseph, Spouse of the Blessed Virgin Mary', 'saint'),
('saint-turibius-of-mongrovejo-bishop', 'Saint Turibius of Mongrovejo, Bishop', 'saint'),
('the-annunciation-of-the-lord', 'The Annunciation of the Lord', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-casimir', 'Saint Casimir', $desc$
The memorial of Saint Casimir is kept on March 4th in the General Roman Calendar as an optional memorial. Because this date almost always falls within the season of Lent, its liturgical observance is tempered by the penitential character of the season: when a Lenten weekday coincides with this memorial, the Mass may be that of the saint or, more commonly, the Lenten feria is observed with the saint commemorated only by the proper collect. This modest liturgical rank reflects the discretion proper to Lent, which subordinates even the honor given to the saints to the Church's more urgent call to conversion.

At the heart of this celebration lies the witness of a young prince who placed fidelity to Christ above the privileges of royal blood. Saint Casimir's chastity and detachment from worldly ambition manifest the Gospel truth that true kingship consists not in domination but in humble service ordered to God. His devotion to the Blessed Virgin Mary, expressed in constant prayer, illustrates how filial trust in her intercession orders the whole of a Christian life, however brief, toward eternal realities rather than transient honors.

Devotion to Casimir arose quickly after his death in 1484, and his cult was formally confirmed with canonization proceedings early in the sixteenth century, culminating in papal recognition in 1602. His feast entered the calendars of Poland and Lithuania, whose patron he became, before its inclusion in the universal Roman Calendar allowed the whole Church to commemorate a rare example of youthful sanctity untouched by the compromises of political power.

For the contemporary Church, Casimir remains a sign that holiness is not reserved to circumstances of ease or to advanced age: even amid the pressures of public responsibility, a young person can live purity, prayer, and charity with heroic constancy. His example speaks particularly to young people and to those exercising authority, reminding them that every vocation, however exalted in the eyes of the world, finds its truth only in humble submission to Christ the King.
$desc$),
('saints-perpetua-and-felicity-martyrs', 'Saints Perpetua and Felicity, Martyrs', $desc$
The joint memorial of Saints Perpetua and Felicity, martyrs, is celebrated on March 7 in the General Roman Calendar. Ranked as an obligatory memorial, it nonetheless falls, almost every year, within Lent, so that Lenten discipline tempers its external solemnity: on a Lenten weekday the Mass remains that of the season, enriched by the saints' proper collect, while if March 7 coincides with a Sunday of Lent the memorial yields entirely to the Sunday. This ancient feast is thus woven each year into the Church's journey toward Easter, uniting the memory of the early martyrs to the catechumenal and penitential character of the season.

The heart of this celebration is the mystery of martyrdom as the supreme configuration to Christ crucified. Perpetua, a young noblewoman and nursing mother, and Felicity, her slave companion who gave birth in prison shortly before their execution, together bear witness that in Christ social distinctions of birth and freedom are transcended by a common dignity as children of God. Their fidelity, stronger than the bonds of natural family and maternal instinct, proclaims that no love, however legitimate, outweighs the confession of Christ before the world.

Their martyrdom at Carthage in the year 203, during persecution under Septimius Severus, is documented in one of the earliest and most vivid Christian texts to survive antiquity, the Passio Sanctarum Perpetuae et Felicitatis, parts of which are attributed to Perpetua's own hand. Their names were inserted into the Roman Canon itself, a mark of the exceptional veneration accorded them by the ancient Roman Church, and their feast has been observed continuously since the earliest centuries, making it one of the most venerable dates in the whole sanctoral cycle.

Today this memorial speaks powerfully to a Church attentive to the suffering of Christians persecuted for their faith throughout the world, and it honors in a particular way the courage of women who, amid the most intimate bonds of motherhood, did not waver in confessing Christ. Perpetua and Felicity invite every believer to examine what price they are prepared to pay for fidelity to the Gospel, and they offer comfort to all who suffer for the faith that their witness, like the martyrs', is never in vain.
$desc$),
('saint-john-of-god-religious', 'Saint John of God, Religious', $desc$
The optional memorial of Saint John of God is observed on March 8 in the General Roman Calendar. Situated within Lent in most years, its celebration is ordinarily subsumed into the Lenten weekday, with the possibility of a commemorative collect in his honor, since optional memorials cede in rank to the penitential ferias of this season. Even in this modest liturgical position, the Church does not fail to hold up, during the very weeks of conversion, a saint whose life became a continuous work of mercy toward the sick and the poor.

This celebration draws its meaning from the Gospel identification of Christ with the sick and suffering: "I was ill and you cared for me" (Matthew 25:36). Saint John of God's radical dedication to the abandoned sick of Granada embodies the conviction that charity toward the suffering body is never separate from love of God, but is one of its most concrete and demanding expressions. His life illustrates how conversion from a disordered past can be transformed, by grace, into a total gift of self in service of the least.

Born in Portugal and converted to a life of penance and charity in Granada in the 1530s, John gathered companions who would become the Order of the Brothers Hospitallers, later formally recognized by the Church. He was canonized in 1690, and in 1886 Pope Leo XIII proclaimed him, together with Saint Camillus de Lellis, patron of hospitals, the sick, and nurses, cementing his place in the Church's care for the healing arts as a properly spiritual mission.

In an age marked by concern for the dignity of the sick, the elderly, and the dying, Saint John of God's memorial invites healthcare workers, chaplains, and all who care for the suffering to recognize in their daily labor a genuine participation in Christ's own compassion. His example encourages hospitals and works of mercy to remain places where efficient care is never separated from tenderness and faith.
$desc$),
('saint-frances-of-rome-religious', 'Saint Frances of Rome, Religious', $desc$
Saint Frances of Rome is commemorated on March 9 by an optional memorial in the General Roman Calendar. As this date regularly occurs during Lent, her celebration ordinarily gives way to the Lenten weekday, retaining at most a proper collect in her honor. Her feast thus stands quietly within the Lenten journey as a reminder that sanctity flowers as readily amid domestic duties as within the walls of a monastery.

The theological center of this memorial is the possibility of profound holiness lived within the ordinary structures of marriage, motherhood, and household responsibility. Frances united a demanding family life with sustained contemplative prayer and untiring service to the poor of Rome, showing that the call to sanctity addressed to every baptized person does not require flight from the world but rather its transfiguration through charity, humility, and constant recourse to grace.

Living in Rome during the turbulent early fifteenth century, Frances combined her duties as wife and mother with the foundation of a community of oblate women dedicated to prayer and charitable works, from which the Oblates of Mary trace their origin. Widely venerated in Rome after her death in 1440, she was canonized in 1608, and her memory has remained closely tied to the city's own religious life ever since.

For contemporary families and lay faithful seeking to integrate prayer with the demands of work and household, Frances of Rome remains an accessible and encouraging model, showing that no state of life is an obstacle to union with God. Her enduring popular association with protection on journeys further reminds the faithful that Christian holiness accompanies ordinary life in all its practical dimensions, not merely its most solemn moments.
$desc$),
('saint-patrick-bishop', 'Saint Patrick, Bishop', $desc$
The optional memorial of Saint Patrick, bishop, falls on March 17 in the General Roman Calendar, though in Ireland and in dioceses of Irish heritage it is kept as a solemnity or feast of higher rank. Occurring during Lent, its universal celebration is ordinarily tempered by the Lenten weekday, while in places where it holds greater rank the joy of the feast can, according to the norms, interrupt Lenten discipline for the day.

The heart of this celebration is the mystery of a missionary bishop who returned, in obedience to a divine call, to the very land of his captivity in order to bring it the Gospel he had once been unable to embrace freely. Patrick's ministry illustrates how personal suffering, accepted in faith, can become the very seedbed of an entire people's evangelization, and his traditional catechesis on the Trinity through simple images shows the pastoral genius required to render the deepest mysteries accessible to a whole nation.

Patrick's own Confessio, one of the rare firsthand testimonies to survive from the early evangelization of the British Isles, recounts his enslavement, his call to return to Ireland as bishop, and the hardships of his mission in the fifth century. Over the following centuries his cult became inseparable from Irish Christian identity, spreading wherever the Irish diaspora carried its faith, until his feast found a lasting place in the calendar of the universal Church.

Saint Patrick's memorial today speaks to the whole missionary dimension of the Church, encouraging those who evangelize amid hostile or indifferent cultures, and reminding communities shaped by the Irish tradition, now scattered across the world, of the courage and simplicity of faith at their origin. His example remains a summons to bring the Gospel to the very places that once caused us to suffer.
$desc$),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 'Saint Cyril of Jerusalem, Bishop and Doctor of the Church', $desc$
The optional memorial of Saint Cyril of Jerusalem, bishop and Doctor of the Church, is observed on March 18. Falling within Lent, its celebration ordinarily yields to the Lenten weekday, yet its position in these very weeks resonates deeply with the saint's own ministry, since his most celebrated teaching was addressed to catechumens preparing for baptism at Easter.

At the theological center of this memorial stands Cyril's vocation as catechist and guide of the newly baptized into the mysteries of Christian worship. His Catechetical Lectures, delivered to candidates for baptism and to the newly baptized in Jerusalem, unfold with remarkable clarity the meaning of the Creed and the sacraments of initiation, offering a model of mystagogy in which doctrine and liturgical experience illuminate one another inseparably. His steadfastness amid the doctrinal turmoil of the Arian controversy further shows how sound catechesis serves as a bulwark for the true faith of the People of God.

Bishop of Jerusalem during much of the fourth century, Cyril endured repeated exile on account of the theological conflicts of his era, yet continued to guide his flock and to transmit the apostolic faith with fidelity. His writings, preserved and studied through the centuries, led Pope Leo XIII to proclaim him a Doctor of the Church in 1883, recognizing the enduring value of his catechetical teaching for the whole Church.

In an era newly attentive to the catechumenate and to the formation of adults preparing for baptism, Saint Cyril's memorial offers the whole Church a model of patient, doctrinally rich, and liturgically rooted catechesis. His teaching continues to accompany the Lenten journey of catechumens toward the font of new life at Easter, making his witness perennially timely.
$desc$),
('saint-joseph-spouse-of-the-blessed-virgin-mary', 'Saint Joseph, Spouse of the Blessed Virgin Mary', $desc$
The Solemnity of Saint Joseph, Spouse of the Blessed Virgin Mary, is kept on March 19, a date that functions as an almost fixed point in the calendar rather than an absolutely immovable one. Should March 19 fall during Holy Week, the solemnity is anticipated to the Saturday before Palm Sunday; should it fall within the Octave of Easter, it is likewise transferred, so that in every case its joyful character is preserved uncompromised by the specific liturgies of the Lord's Passion and Resurrection. As one of the highest-ranking celebrations of the year, this solemnity suspends the penitential note of Lent for a day, clothing the altar in white in the midst of violet.

The theological heart of this solemnity is the unique vocation of Joseph as the just man chosen by God to be the virginal spouse of Mary and the guardian of the Incarnate Word. Though his voice is never recorded in the Gospels, his obedience to the angel's word and his silent fidelity in protecting, providing for, and forming Jesus reveal a fatherhood exercised entirely in the service of another's mission. In Joseph the Church contemplates a sanctity built not on visible deeds or words but on constant, humble readiness to do the will of God, a model the Church proposes as patron for herself as a whole.

Devotion to Saint Joseph developed gradually through the Middle Ages, gaining particular momentum through the writings of medieval and early modern spiritual authors, until Blessed Pius IX declared him Patron of the Universal Church in 1870, a decree that gave decisive impetus to his liturgical honor. His feast, already ancient, was progressively elevated in rank, becoming a solemnity in the reformed calendar and thereby taking its place among the small number of celebrations capable of superseding the Sundays and ferias of Lent.

For the Church today, Saint Joseph remains an especially accessible model for fathers, workers, and all who exercise responsibility quietly and without recognition, as well as a particular patron of the dying, on account of his presumed death in the company of Jesus and Mary. His solemnity invites families to rediscover the sanctity possible within ordinary domestic life, and it proposes silence, obedience, and humble service as paths to holiness no less authentic than the most visible forms of Christian witness.
$desc$),
('saint-turibius-of-mongrovejo-bishop', 'Saint Turibius of Mongrovejo, Bishop', $desc$
The optional memorial of Saint Turibius of Mongrovejo, bishop, is celebrated on March 23 in the General Roman Calendar. Falling within Lent, it ordinarily gives way to the Lenten weekday, with the possibility of a proper collect commemorating this tireless pastor and evangelizer of Spanish America.

This celebration centers on the pastoral charity of a bishop who understood his office as a summons to go continually to his people rather than await them, traversing immense and difficult territories to preach, catechize, confirm, and defend the dignity of the indigenous peoples entrusted to his care. His episcopal ministry embodies the Gospel image of the shepherd who knows his sheep individually, refusing to separate the proclamation of the faith from concern for justice and human dignity.

Appointed archbishop of Lima in the late sixteenth century despite not yet being ordained a priest, Turibius undertook exhausting pastoral visitations across the vast territory of his diocese, convened the Third Council of Lima, which shaped the evangelization of the Americas for centuries, and labored tirelessly for the formation of native clergy. He was canonized in 1726, and has long been honored as patron of the Latin American episcopate.

Saint Turibius's memorial speaks today to bishops and pastors called to proximity with their people, especially the poor and marginalized, and to the ongoing work of evangelization and justice in Latin America. His example continues to inspire a model of episcopal governance rooted in personal presence, catechetical rigor, and unwavering defense of human dignity.
$desc$),
('the-annunciation-of-the-lord', 'The Annunciation of the Lord', $desc$
The Solemnity of the Annunciation of the Lord is celebrated on March 25, a date that, like that of Saint Joseph, functions as an almost fixed rather than strictly immovable point in the calendar. Falling nine months before Christmas, it commemorates the very moment of the Incarnation; when March 25 occurs during Holy Week or within the Octave of Easter, however, the solemnity is transferred to the Monday following the Second Sunday of Easter, Divine Mercy Sunday, so that the joyful mystery of the Word made flesh is never overshadowed or eclipsed by the liturgies of the Lord's Passion, Death, and Resurrection.

At the theological center of this solemnity lies the mystery of the Incarnation itself: the eternal Word takes flesh in the womb of the Virgin Mary at the very moment of her free and total consent, "let it be done to me according to your word." This instant marks the beginning of the hypostatic union of divine and human natures in the single person of Christ, and Mary's fiat stands as the perfect model of faith that cooperates freely with the initiative of grace, making her, in this very moment, both Mother of God and the first believer of the New Covenant.

Already celebrated in both East and West by the sixth and seventh centuries, this feast was fixed nine months before Christmas in keeping with an ancient patristic tradition that associated March 25 with the world's creation and with the date of Christ's own Passion, uniting in a single symbolic day the beginning and the culmination of the history of salvation. Its observance in Rome was firmly established under Pope Sergius I in the seventh century, and it has remained one of the Church's principal Marian and Christological solemnities ever since.

Today the Annunciation continues to nourish the Church's devotion through the daily praying of the Angelus, and it stands as a privileged occasion for reflecting on the dignity of human life from the very moment of conception, since it is precisely at conception that the Church locates the mystery of the Incarnation being celebrated. Mary's unreserved yes remains, for every believer, the pattern of faith's response to the unexpected and often demanding call of God.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-casimir', 'Saint Casimir', $desc$
La mémoire facultative de saint Casimir est inscrite au 4 mars dans le calendrier romain général. Comme cette date tombe presque toujours durant le Carême, sa célébration est tempérée par le caractère pénitentiel de ce temps liturgique : lorsque ce jour coïncide avec une férie du Carême, la messe reste ordinairement celle du jour, le saint n'étant commémoré que par sa collecte propre. Ce rang modeste manifeste la discrétion propre au Carême, qui subordonne l'honneur rendu aux saints à l'appel plus pressant que l'Église adresse alors à la conversion.

Le cœur de cette célébration est le témoignage d'un jeune prince qui plaça la fidélité au Christ au-dessus des privilèges de sa naissance royale. La chasteté de saint Casimir et son détachement de l'ambition du monde manifestent cette vérité évangélique selon laquelle la véritable royauté ne consiste pas à dominer mais à servir humblement, dans l'ordre voulu par Dieu. Sa dévotion à la Vierge Marie, nourrie d'une prière constante, montre comment la confiance filiale en son intercession oriente toute une vie chrétienne, si brève soit-elle, vers les réalités éternelles plutôt que vers les honneurs passagers.

La dévotion à saint Casimir se développa rapidement après sa mort en 1484, et son culte fut confirmé par un procès de canonisation au début du XVIe siècle, aboutissant à sa reconnaissance officielle en 1602. Sa fête entra d'abord dans les calendriers de la Pologne et de la Lituanie, dont il devint le saint patron, avant d'être inscrite au calendrier romain universel, permettant à toute l'Église de commémorer un exemple rare de sainteté juvénile préservée des compromissions du pouvoir politique.

Pour l'Église d'aujourd'hui, saint Casimir demeure un signe que la sainteté n'est réservée ni aux circonstances faciles ni à un âge avancé : même sous le poids d'une charge publique, un jeune homme peut vivre la pureté, la prière et la charité avec une constance héroïque. Son exemple s'adresse en particulier aux jeunes et à ceux qui exercent l'autorité, leur rappelant que toute vocation, si élevée soit-elle aux yeux du monde, ne trouve sa vérité que dans la soumission humble au Christ Roi.
$desc$),
('saints-perpetua-and-felicity-martyrs', 'Saintes Perpétue et Félicité, martyres', $desc$
La mémoire commune des saintes Perpétue et Félicité, martyres, est célébrée le 7 mars dans le calendrier romain général. Bien que classée mémoire obligatoire, elle tombe presque chaque année durant le Carême, si bien que la discipline de ce temps en tempère la solennité extérieure : lors d'une férie du Carême, la messe demeure celle du temps, enrichie de la collecte propre des saintes, tandis que si le 7 mars coïncide avec un dimanche de Carême, la mémoire s'efface entièrement devant le dimanche. Cette fête très ancienne s'inscrit ainsi chaque année dans la marche de l'Église vers Pâques, unissant la mémoire des premiers martyrs au caractère à la fois pénitentiel et baptismal de ce temps.

Le cœur de cette célébration est le mystère du martyre comme configuration suprême au Christ crucifié. Perpétue, jeune femme de noble condition et mère allaitante, et Félicité, sa compagne d'esclavage qui accoucha en prison peu avant leur exécution, témoignent ensemble qu'en Christ les distinctions sociales de naissance et de condition s'effacent devant une commune dignité d'enfants de Dieu. Leur fidélité, plus forte que les liens naturels de la famille et l'instinct maternel, proclame qu'aucun amour, même légitime, ne saurait l'emporter sur la confession du Christ devant le monde.

Leur martyre à Carthage, en l'an 203, sous la persécution de Septime Sévère, est rapporté par l'un des plus anciens et des plus vivants témoignages chrétiens parvenus de l'Antiquité, la Passion des saintes Perpétue et Félicité, dont une partie est attribuée à la main même de Perpétue. Leurs noms furent insérés dans le Canon romain, marque de la vénération exceptionnelle que leur portait l'antique Église de Rome, et leur fête n'a cessé d'être célébrée depuis les premiers siècles, ce qui en fait l'une des dates les plus vénérables de tout le sanctoral.

Cette mémoire parle aujourd'hui avec force à une Église attentive à la souffrance des chrétiens persécutés pour leur foi à travers le monde, et elle honore d'une manière particulière le courage des femmes qui, au cœur même des liens les plus intimes de la maternité, n'ont pas fléchi dans la confession du Christ. Perpétue et Félicité invitent chaque croyant à s'interroger sur le prix qu'il est prêt à payer pour sa fidélité à l'Évangile, et elles offrent à tous ceux qui souffrent pour la foi la consolation que leur témoignage, comme celui des martyrs, n'est jamais vain.
$desc$),
('saint-john-of-god-religious', 'Saint Jean de Dieu, religieux', $desc$
La mémoire facultative de saint Jean de Dieu est célébrée le 8 mars dans le calendrier romain général. Tombant la plupart du temps durant le Carême, sa célébration est ordinairement absorbée par la férie du Carême, avec la possibilité d'une collecte commémorative en son honneur, les mémoires facultatives cédant le pas aux féries pénitentielles de ce temps. Même dans cette position liturgique modeste, l'Église ne manque pas de proposer, au cœur même des semaines de conversion, un saint dont la vie devint une œuvre continuelle de miséricorde envers les malades et les pauvres.

Cette célébration puise son sens dans l'identification évangélique du Christ aux malades et aux souffrants : « J'étais malade et vous m'avez visité » (Matthieu 25, 36). Le dévouement radical de saint Jean de Dieu envers les malades abandonnés de Grenade incarne la conviction que la charité envers le corps souffrant ne se sépare jamais de l'amour de Dieu, mais en est l'une des expressions les plus concrètes et les plus exigeantes. Sa vie montre comment la conversion d'un passé désordonné peut se transformer, par la grâce, en un don total de soi au service des plus petits.

Né au Portugal et converti à une vie de pénitence et de charité à Grenade dans les années 1530, Jean rassembla des compagnons qui formeraient l'Ordre des Frères hospitaliers, plus tard reconnu officiellement par l'Église. Il fut canonisé en 1690, et en 1886 le pape Léon XIII le proclama, avec saint Camille de Lellis, patron des hôpitaux, des malades et des infirmiers, consacrant ainsi sa place dans le soin de l'Église pour l'art de guérir compris comme une mission proprement spirituelle.

À une époque marquée par le souci de la dignité des malades, des personnes âgées et des mourants, la mémoire de saint Jean de Dieu invite le personnel soignant, les aumôniers et tous ceux qui prennent soin des souffrants à reconnaître dans leur labeur quotidien une véritable participation à la compassion même du Christ. Son exemple encourage les hôpitaux et les œuvres de miséricorde à demeurer des lieux où l'efficacité des soins ne se sépare jamais de la tendresse et de la foi.
$desc$),
('saint-frances-of-rome-religious', 'Sainte Françoise de Rome, religieuse', $desc$
Sainte Françoise de Rome est commémorée le 9 mars par une mémoire facultative dans le calendrier romain général. Cette date tombant régulièrement durant le Carême, sa célébration cède ordinairement la place à la férie du Carême, ne conservant, tout au plus, qu'une collecte propre en son honneur. Sa fête s'inscrit ainsi discrètement dans le chemin du Carême, pour rappeler que la sainteté fleurit aussi bien au cœur des devoirs domestiques qu'entre les murs d'un monastère.

Le centre théologique de cette mémoire est la possibilité d'une sainteté profonde vécue dans les structures ordinaires du mariage, de la maternité et des responsabilités familiales. Françoise unit une vie de famille exigeante à une prière contemplative soutenue et à un service inlassable des pauvres de Rome, montrant que l'appel à la sainteté adressé à tout baptisé n'exige pas de fuir le monde, mais d'en opérer la transfiguration par la charité, l'humilité et le recours constant à la grâce.

Vivant à Rome durant les troubles du début du XVe siècle, Françoise conjugua ses devoirs d'épouse et de mère avec la fondation d'une communauté de femmes oblates vouées à la prière et aux œuvres de charité, à l'origine des Oblates de Marie. Vénérée à Rome dès sa mort en 1440, elle fut canonisée en 1608, et sa mémoire est restée intimement liée à la vie religieuse de la ville.

Pour les familles et les fidèles laïcs d'aujourd'hui qui cherchent à unir la prière aux exigences du travail et du foyer, sainte Françoise de Rome demeure un modèle accessible et encourageant, montrant qu'aucun état de vie n'est un obstacle à l'union avec Dieu. Sa popularité, longtemps associée à la protection des voyageurs, rappelle encore aux fidèles que la sainteté chrétienne accompagne la vie ordinaire dans toutes ses dimensions concrètes, et non seulement ses moments les plus solennels.
$desc$),
('saint-patrick-bishop', 'Saint Patrick, évêque', $desc$
La mémoire facultative de saint Patrick, évêque, tombe le 17 mars dans le calendrier romain général, bien qu'en Irlande et dans les diocèses de tradition irlandaise elle soit célébrée comme une solennité ou une fête de rang supérieur. Survenant durant le Carême, sa célébration universelle est ordinairement tempérée par la férie du Carême, tandis que là où elle revêt un rang plus élevé, la joie de la fête peut, selon les normes en vigueur, suspendre pour ce jour la discipline pénitentielle.

Le cœur de cette célébration est le mystère d'un évêque missionnaire qui retourna, par obéissance à un appel divin, vers la terre même de sa captivité pour lui apporter l'Évangile qu'il n'avait pu jadis y recevoir librement. Le ministre de Patrick montre comment la souffrance personnelle, accueillie dans la foi, peut devenir le terreau même de l'évangélisation de tout un peuple, et sa catéchèse traditionnelle sur la Trinité au moyen d'images simples révèle le génie pastoral requis pour rendre accessibles à toute une nation les mystères les plus profonds.

La Confession de Patrick lui-même, l'un des rares témoignages directs parvenus des premiers temps de l'évangélisation des îles britanniques, rapporte son esclavage, son appel à retourner en Irlande comme évêque, et les épreuves de sa mission au Ve siècle. Au fil des siècles suivants, son culte devint inséparable de l'identité chrétienne irlandaise, se répandant partout où la diaspora irlandaise porta sa foi, jusqu'à trouver une place durable dans le calendrier de l'Église universelle.

La mémoire de saint Patrick parle aujourd'hui à toute la dimension missionnaire de l'Église, encourageant ceux qui évangélisent au sein de cultures hostiles ou indifférentes, et rappelant aux communautés façonnées par la tradition irlandaise, désormais dispersées à travers le monde, le courage et la simplicité de la foi qui les ont fait naître. Son exemple demeure un appel à porter l'Évangile jusque dans les lieux mêmes qui furent autrefois causes de souffrance.
$desc$),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 'Saint Cyrille de Jérusalem, évêque et docteur de l''Église', $desc$
La mémoire facultative de saint Cyrille de Jérusalem, évêque et docteur de l'Église, est célébrée le 18 mars. Tombant durant le Carême, sa célébration cède ordinairement le pas à la férie du Carême, mais sa place au cœur de ces semaines mêmes résonne profondément avec le ministre propre du saint, puisque son enseignement le plus célèbre s'adressait aux catéchumènes se préparant au baptême pascal.

Au centre théologique de cette mémoire se trouve la vocation de Cyrille comme catéchète, guidant les nouveaux baptisés dans les mystères du culte chrétien. Ses Catéchèses, adressées aux candidats au baptême et aux nouveaux baptisés de Jérusalem, déploient avec une remarquable clarté le sens du Symbole de la foi et des sacrements de l'initiation, offrant un modèle de mystagogie où doctrine et expérience liturgique s'éclairent mutuellement de façon inséparable. Sa fermeté au milieu des troubles doctrinaux de la crise arienne montre en outre comment une catéchèse solide sert de rempart à la vraie foi du peuple de Dieu.

Évêque de Jérusalem pendant une grande partie du IVe siècle, Cyrille subit des exils répétés à cause des conflits théologiques de son temps, mais continua de guider son troupeau et de transmettre fidèlement la foi apostolique. Ses écrits, conservés et étudiés à travers les siècles, conduisirent le pape Léon XIII à le proclamer docteur de l'Église en 1883, reconnaissant la valeur durable de son enseignement catéchétique pour toute l'Église.

À une époque nouvellement attentive au catéchuménat et à la formation des adultes se préparant au baptême, la mémoire de saint Cyrille offre à toute l'Église un modèle de catéchèse patiente, riche en doctrine et enracinée dans la liturgie. Son enseignement continue d'accompagner le chemin des catéchumènes durant le Carême, vers la source de la vie nouvelle à Pâques, rendant son témoignage toujours actuel.
$desc$),
('saint-joseph-spouse-of-the-blessed-virgin-mary', 'Saint Joseph, époux de la Bienheureuse Vierge Marie', $desc$
La solennité de saint Joseph, Époux de la Bienheureuse Vierge Marie, est célébrée le 19 mars, date qui fonctionne comme un point presque fixe du calendrier plutôt qu'absolument immobile. Si le 19 mars tombe durant la Semaine sainte, la solennité est anticipée au samedi précédant le dimanche des Rameaux ; si elle tombe durant l'octave de Pâques, elle est également reportée, de sorte que son caractère joyeux demeure en tout cas préservé, sans empiéter sur les liturgies propres de la Passion et de la Résurrection du Seigneur. Comptant parmi les célébrations de plus haut rang de l'année, cette solennité suspend pour un jour la note pénitentielle du Carême, revêtant l'autel de blanc au milieu du violet.

Le cœur théologique de cette solennité est la vocation unique de Joseph, homme juste choisi par Dieu pour être l'époux virginal de Marie et le gardien du Verbe incarné. Bien que sa voix ne soit jamais rapportée dans les Évangiles, son obéissance à la parole de l'ange et sa fidélité silencieuse à protéger, nourrir et former Jésus révèlent une paternité tout entière exercée au service de la mission d'un autre. En Joseph, l'Église contemple une sainteté bâtie non sur des actes ou des paroles éclatantes, mais sur une disposition constante et humble à accomplir la volonté de Dieu, un modèle que l'Église propose comme son propre patron.

La dévotion à saint Joseph se développa progressivement au cours du Moyen Âge, prenant un essor particulier grâce aux écrits des auteurs spirituels médiévaux et modernes, jusqu'à ce que le bienheureux Pie IX le déclare Patron de l'Église universelle en 1870, décret qui donna une impulsion décisive à son honneur liturgique. Sa fête, déjà ancienne, fut progressivement élevée en rang, devenant une solennité dans le calendrier réformé, prenant ainsi place parmi le petit nombre de célébrations capables de l'emporter sur les dimanches et les féries du Carême.

Pour l'Église d'aujourd'hui, saint Joseph demeure un modèle particulièrement accessible pour les pères, les travailleurs et tous ceux qui exercent une responsabilité dans le silence et sans reconnaissance, ainsi qu'un patron particulier des mourants, en raison de sa mort présumée en présence de Jésus et de Marie. Sa solennité invite les familles à redécouvrir la sainteté possible au sein de la vie domestique ordinaire, et elle propose le silence, l'obéissance et le service humble comme des chemins de sainteté non moins authentiques que les formes les plus visibles du témoignage chrétien.
$desc$),
('saint-turibius-of-mongrovejo-bishop', 'Saint Turibe de Mogrovejo, évêque', $desc$
La mémoire facultative de saint Turibe de Mogrovejo, évêque, est célébrée le 23 mars dans le calendrier romain général. Tombant durant le Carême, elle cède ordinairement le pas à la férie du Carême, avec la possibilité d'une collecte propre commémorant ce pasteur infatigable et évangélisateur de l'Amérique espagnole.

Cette célébration est centrée sur la charité pastorale d'un évêque qui comprit sa charge comme un appel à aller sans cesse vers son peuple plutôt qu'à l'attendre, parcourant des territoires immenses et difficiles pour prêcher, catéchiser, confirmer et défendre la dignité des peuples indigènes confiés à ses soins. Son ministre épiscopal incarne l'image évangélique du pasteur qui connaît chacune de ses brebis, refusant de séparer l'annonce de la foi du souci de la justice et de la dignité humaine.

Nommé archevêque de Lima à la fin du XVIe siècle alors qu'il n'était pas encore ordonné prêtre, Turibe entreprit d'épuisantes visites pastorales à travers le vaste territoire de son diocèse, convoqua le troisième concile de Lima, qui façonna l'évangélisation des Amériques pour des siècles, et travailla sans relâche à la formation du clergé indigène. Il fut canonisé en 1726, et est depuis longtemps honoré comme patron de l'épiscopat latino-américain.

La mémoire de saint Turibe parle aujourd'hui aux évêques et aux pasteurs appelés à la proximité avec leur peuple, en particulier les pauvres et les marginaux, ainsi qu'à l'œuvre continue d'évangélisation et de justice en Amérique latine. Son exemple continue d'inspirer un modèle de gouvernement épiscopal enraciné dans la présence personnelle, la rigueur catéchétique et la défense inébranlable de la dignité humaine.
$desc$),
('the-annunciation-of-the-lord', 'Annonciation du Seigneur', $desc$
La solennité de l'Annonciation du Seigneur est célébrée le 25 mars, date qui, comme celle de saint Joseph, fonctionne comme un point presque fixe plutôt que strictement immobile du calendrier. Tombant neuf mois avant Noël, elle commémore l'instant même de l'Incarnation ; cependant, lorsque le 25 mars survient durant la Semaine sainte ou l'octave de Pâques, la solennité est reportée au lundi suivant le deuxième dimanche de Pâques, dimanche de la Divine Miséricorde, afin que le mystère joyeux du Verbe fait chair ne soit jamais éclipsé par les liturgies de la Passion, de la Mort et de la Résurrection du Seigneur.

Au centre théologique de cette solennité se trouve le mystère de l'Incarnation elle-même : le Verbe éternel prend chair dans le sein de la Vierge Marie au moment même de son consentement libre et total, « qu'il me soit fait selon ta parole ». Cet instant marque le commencement de l'union hypostatique des natures divine et humaine dans l'unique personne du Christ, et le fiat de Marie demeure le modèle parfait d'une foi qui coopère librement à l'initiative de la grâce, la faisant, en cet instant même, à la fois Mère de Dieu et première croyante de la Nouvelle Alliance.

Déjà célébrée en Orient comme en Occident dès les VIe et VIIe siècles, cette fête fut fixée neuf mois avant Noël conformément à une antique tradition patristique qui associait le 25 mars à la création du monde et à la date même de la Passion du Christ, unissant en un seul jour symbolique le commencement et l'accomplissement de l'histoire du salut. Son observance à Rome fut fermement établie sous le pape saint Serge Ier au VIIe siècle, et elle est demeurée depuis l'une des principales solennités mariales et christologiques de l'Église.

Aujourd'hui, l'Annonciation continue de nourrir la dévotion de l'Église par la récitation quotidienne de l'Angélus, et elle demeure une occasion privilégiée de réfléchir à la dignité de la vie humaine dès l'instant même de la conception, puisque c'est précisément à la conception que l'Église situe le mystère de l'Incarnation célébré ce jour-là. Le oui sans réserve de Marie demeure, pour tout croyant, le modèle de la réponse de la foi à l'appel imprévu et souvent exigeant de Dieu.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-casimir', 'Sanctus Casimirus', $desc$
Memoria ad libitum sancti Casimiri die quarto mensis Martii in Calendario Romano Generali celebratur. Cum haec dies fere semper intra tempus Quadragesimae incidat, eius celebratio indole paenitentiali huius temporis temperatur: si dies ferialis Quadragesimae cum hac memoria concurrat, Missa plerumque de feria dicitur, sancto tantum per collectam propriam commemorato. Hic modestus gradus liturgicus illam discretionem manifestat quae Quadragesimae propria est, quae etiam honorem sanctis exhibitum urgentiori Ecclesiae ad conversionem vocationi subordinat.

In corde huius celebrationis testimonium iuvenis principis invenitur, qui fidelitatem Christo debitam privilegiis regalis sanguinis anteposuit. Castitas sancti Casimiri eiusque a mundanis ambitionibus alienatio veritatem evangelicam manifestant, secundum quam vera regalitas non in dominatione sed in humili servitio Deo ordinato consistit. Eius erga Beatam Virginem Mariam devotio, assidua oratione expressa, ostendit quomodo fiducia filialis in eius intercessionem totam vitam christianam, quantumvis brevem, ad res aeternas potius quam ad honores transeuntes ordinet.

Devotio erga Casimirum post eius mortem anno 1484 celeriter increvit, eiusque cultus processu canonizationis ineunte saeculo sexto decimo confirmatus est, donec anno 1602 pontificia agnitione culminaret. Eius festum in calendaria Poloniae et Lithuaniae, quarum patronus factus est, primum inductum est, priusquam in Calendarium Romanum universale reciperetur, ut tota Ecclesia rarum exemplum sanctitatis iuvenilis, a potestatis politicae compromissionibus intactum, commemorare posset.

Pro Ecclesia hodierna, Casimirus signum manet sanctitatem neque facilibus rerum condicionibus neque provectae aetati esse reservatam: etiam inter publicae responsabilitatis pondera, adulescens castitatem, orationem et caritatem heroica constantia vivere potest. Eius exemplum praesertim iuvenibus et iis qui auctoritatem exercent loquitur, eos commonens omnem vocationem, quantumvis in oculis mundi sublimem, veritatem suam non nisi in humili subiectione Christo Regi invenire.
$desc$),
('saints-perpetua-and-felicity-martyrs', 'Sanctae Perpetua et Felicitas, Martyres', $desc$
Memoria coniuncta sanctarum Perpetuae et Felicitatis, martyrum, die septimo mensis Martii in Calendario Romano Generali celebratur. Quamvis memoria obligatoria censeatur, fere quotannis intra Quadragesimam incidit, ita ut disciplina huius temporis externam eius sollemnitatem temperet: si dies ferialis Quadragesimae occurrat, Missa de tempore manet, collecta propria sanctarum ditata; si vero septimus dies Martii cum dominica Quadragesimae concurrat, memoria dominicae penitus cedit. Hoc antiquissimum festum ita quotannis in Ecclesiae itinere ad Pascha contexitur, memoriam primorum martyrum cum indole simul paenitentiali et catechumenali huius temporis coniungens.

Cor huius celebrationis est mysterium martyrii tamquam summa configuratio Christo crucifixo. Perpetua, nobili genere nata et infantem lactans, et Felicitas, eius conserva quae paulo ante supplicium in carcere peperit, simul testantur in Christo discrimina socialia nativitatis et condicionis communi dignitate filiorum Dei superari. Earum fidelitas, vinculis naturalibus familiae et instinctu materno fortior, proclamat nullum amorem, quantumvis legitimum, confessioni Christi coram mundo praeponendum esse.

Earum martyrium Carthagine, anno 203, sub persecutione Septimii Severi, uno ex antiquissimis ac vivacissimis textibus christianis ab antiquitate servatis, Passione Sanctarum Perpetuae et Felicitatis, memoratur, cuius pars ipsius Perpetuae manu scripta esse traditur. Earum nomina in ipsum Canonem Romanum inserta sunt, signum eximiae venerationis quam antiqua Ecclesia Romana eis tribuebat, earumque festum ab antiquissimis saeculis continenter observatum est, ita ut inter venerabilissimas totius sanctoralis dies numeretur.

Haec memoria hodie Ecclesiae, quae passionibus christianorum ubique terrarum ob fidem persecutionem patientium attenta est, valide loquitur, et modo peculiari fortitudinem mulierum honorat quae, in ipsis intimis maternitatis vinculis, in confessione Christi non vacillaverunt. Perpetua et Felicitas omnem credentem invitant ut consideret quod pretium pro fidelitate Evangelio solvere paratus sit, et omnibus qui pro fide patiuntur solacium offerunt testimonium suum, sicut martyrum, numquam vanum esse.
$desc$),
('saint-john-of-god-religious', 'Sanctus Ioannes a Deo, Religiosus', $desc$
Memoria ad libitum sancti Ioannis a Deo die octavo mensis Martii in Calendario Romano Generali celebratur. Plerumque intra Quadragesimam incidens, eius celebratio ordinarie feriae Quadragesimae subicitur, data facultate collectae commemorativae in eius honorem, cum memoriae ad libitum feriis paenitentialibus huius temporis gradu cedant. Etiam in hac modesta positione liturgica, Ecclesia non omittit, ipsis conversionis hebdomadibus, sanctum proponere cuius vita continuum opus misericordiae erga aegrotos et pauperes facta est.

Haec celebratio sensum suum ex evangelica identificatione Christi cum aegrotis et dolentibus haurit: "Infirmus fui, et visitastis me" (Matthaeus 25, 36). Radicalis dedicatio sancti Ioannis a Deo erga aegrotos derelictos Granatae incarnat persuasionem caritatem erga corpus dolens numquam ab amore Dei separari, sed unam eius expressionum concretissimarum ac maxime exigentium esse. Eius vita ostendit quomodo conversio a vita inordinata, gratia mediante, in totale sui ipsius donum in servitium minimorum transformari possit.

In Lusitania natus et ad vitam paenitentiae ac caritatis Granatae conversus circa annum 1530, Ioannes socios collegit qui Ordinem Fratrum Hospitalariorum, postea ab Ecclesia formaliter agnitum, constituturi erant. Anno 1690 canonizatus est, et anno 1886 Leo Papa XIII eum, una cum sancto Camillo de Lellis, patronum hospitalium, aegrotorum et infirmariorum proclamavit, eius locum in cura Ecclesiae pro arte medendi, tamquam missionem proprie spiritualem intellecta, confirmans.

Aetate hac dignitati aegrotorum, senum et morientium sollicita, memoria sancti Ioannis a Deo administratores valetudinis, cappellanos et omnes qui dolentibus curam impendunt invitat ut in labore cotidiano veram participationem ipsius compassionis Christi agnoscant. Eius exemplum hospitalia et opera misericordiae hortatur ut loca maneant ubi efficax cura a teneritudine et fide numquam separatur.
$desc$),
('saint-frances-of-rome-religious', 'Sancta Francisca Romana, Religiosa', $desc$
Sancta Francisca Romana die nono mensis Martii memoria ad libitum in Calendario Romano Generali commemoratur. Cum haec dies regulariter intra Quadragesimam occurrat, eius celebratio ordinarie feriae Quadragesimae cedit, ad summum collecta propria in eius honorem retenta. Eius festum ita quiete in itinere Quadragesimali collocatur, ut memoret sanctitatem tam inter domestica officia quam intra monasterii parietes florere posse.

Centrum theologicum huius memoriae est possibilitas profundae sanctitatis in ordinariis structuris matrimonii, maternitatis et curae domesticae ductae. Francisca vitam familiarem exigentem cum oratione contemplativa assidua et infatigabili servitio pauperum Romae coniunxit, ostendens vocationem ad sanctitatem omni baptizato propositam non fugam a mundo sed eius per caritatem, humilitatem et assiduum ad gratiam recursum transfigurationem exigere.

Romae tempore turbulento primae partis saeculi quinti decimi vivens, Francisca officia uxoris et matris cum fundatione communitatis mulierum oblatarum orationi et operibus caritatis dedicatarum coniunxit, unde Oblatae Mariae originem ducunt. Post mortem anno 1440 Romae late culta, anno 1608 canonizata est, eiusque memoria arte cum ipsius urbis vita religiosa deinceps connexa mansit.

Pro familiis et fidelibus laicis huius temporis, qui orationem cum laboris et domus necessitatibus coniungere quaerunt, Francisca Romana exemplar manet facile et animans, ostendens nullum vitae statum unioni cum Deo obstare. Eius popularitas, protectioni itinerantium diu associata, fideles insuper commonet sanctitatem christianam vitam ordinariam in omnibus eius practicis dimensionibus, non solum in momentis sollemnioribus, comitari.
$desc$),
('saint-patrick-bishop', 'Sanctus Patricius, Episcopus', $desc$
Memoria ad libitum sancti Patricii episcopi die decimo septimo mensis Martii in Calendario Romano Generali occurrit, quamvis in Hibernia et in dioecesibus traditionis hibernicae tamquam sollemnitas vel festum superioris gradus celebretur. Intra Quadragesimam incidens, eius celebratio universalis ordinarie feria Quadragesimae temperatur, dum in locis ubi maiorem gradum obtinet, laetitia festi, secundum normas vigentes, disciplinam Quadragesimalem pro illa die suspendere potest.

Cor huius celebrationis est mysterium episcopi missionarii qui, divinae vocationi obediens, ad ipsam terram captivitatis suae rediit ut ei Evangelium afferret quod olim libere accipere non potuerat. Ministerium Patricii ostendit quomodo dolor personalis, in fide susceptus, ipsum seminarium evangelizationis totius populi fieri possit, et eius traditionalis catechesis de Trinitate per simplices imagines genium pastoralem revelat necessarium ut altissima mysteria toti nationi accessibilia redderentur.

Ipsius Patricii Confessio, unum ex raris testimoniis primae manus quae ex prima evangelizatione insularum Britannicarum servata sunt, eius servitutem, vocationem ad Hiberniam tamquam episcopum redeundi, et labores missionis suae saeculo quinto narrat. Sequentibus saeculis eius cultus ab identitate christiana hibernica inseparabilis factus est, ubique diffusus quo diaspora hibernica fidem suam tulit, donec eius festum stabilem locum in calendario Ecclesiae universalis inveniret.

Memoria sancti Patricii hodie toti dimensioni missionariae Ecclesiae loquitur, eos animans qui in culturis hostilibus vel indifferentibus evangelizant, et communitates ex traditione hibernica ortas, per totum orbem iam dispersas, fortitudinis et simplicitatis fidei suae originis commonens. Eius exemplum permanet vocatio ad Evangelium afferendum in ipsa loca quae olim doloris causa fuerunt.
$desc$),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 'Sanctus Cyrillus Hierosolymitanus, Episcopus et Ecclesiae Doctor', $desc$
Memoria ad libitum sancti Cyrilli Hierosolymitani, episcopi et Ecclesiae doctoris, die decimo octavo mensis Martii celebratur. Intra Quadragesimam incidens, eius celebratio ordinarie feriae Quadragesimae cedit, sed eius positio in ipsis his hebdomadibus alte cum proprio sancti ministerio consonat, cum eius celeberrima doctrina catechumenis ad baptismum paschale se praeparantibus destinata esset.

In centro theologico huius memoriae vocatio Cyrilli tamquam catechistae et ductoris neophytorum in mysteria cultus christiani invenitur. Eius Catecheses, candidatis ad baptismum et neobaptizatis Hierosolymis traditae, sensum Symboli fidei et sacramentorum initiationis mira claritate explicant, exemplar mystagogiae praebentes in quo doctrina et experientia liturgica se mutuo inseparabiliter illuminant. Eius constantia inter turbationes doctrinales controversiae arianae insuper ostendit quomodo sana catechesis verae fidei Populi Dei propugnaculum praestet.

Episcopus Hierosolymorum magna parte saeculi quarti, Cyrillus repetitos exilia propter conflictus theologicos sui temporis pertulit, gregem tamen suum ducere et fidem apostolicam fideliter tradere perrexit. Eius scripta, per saecula servata et studiosa consideratione digna habita, Leonem Papam XIII adduxerunt ut eum anno 1883 Ecclesiae doctorem proclamaret, valorem perpetuum eius doctrinae catecheticae toti Ecclesiae agnoscens.

Aetate hac catechumenatui et institutioni adultorum ad baptismum se praeparantium noviter attenta, memoria sancti Cyrilli toti Ecclesiae exemplar catechesis patientis, doctrina divitis et liturgice radicatae offert. Eius doctrina iter Quadragesimale catechumenorum versus fontem novae vitae Paschae adhuc comitatur, testimonium eius perpetuo actuosum reddens.
$desc$),
('saint-joseph-spouse-of-the-blessed-virgin-mary', 'Sanctus Ioseph, Sponsus Beatae Mariae Virginis', $desc$
Sollemnitas sancti Ioseph, Sponsi Beatae Mariae Virginis, die decimo nono mensis Martii celebratur, dies quae tamquam punctum calendarii fere fixum potius quam omnino immobile se gerit. Si dies decimus nonus Martii intra Hebdomadam Sanctam inciderit, sollemnitas ad diem Sabbati ante Dominicam in Palmis anticipatur; si vero intra Octavam Paschae ceciderit, similiter transfertur, ita ut eius indoles laetitiae in omni casu illibata servetur, liturgiis propriis Passionis et Resurrectionis Domini non obstantibus. Inter celebrationes summi gradus anni numerata, haec sollemnitas notam paenitentialem Quadragesimae per unum diem suspendit, altare colore albo inter violaceum vestiens.

Cor theologicum huius sollemnitatis est singularis vocatio Ioseph, viri iusti a Deo electi ut sponsus virginalis Mariae et custos Verbi Incarnati esset. Quamvis eius vox in Evangeliis numquam referatur, eius oboedientia verbo angeli et fidelitas silens in Iesu protegendo, sustentando et formando paternitatem plene in servitium alienae missionis exercitam revelant. In Ioseph Ecclesia sanctitatem contemplatur non in factis vel verbis conspicuis sed in constanti humilique promptitudine voluntatem Dei faciendi aedificatam, exemplar quod Ecclesia sibi ipsi tamquam patronum proponit.

Devotio erga sanctum Ioseph per Medium Aevum paulatim increvit, praesertim per scripta auctorum spiritualium medii aevi et primae aetatis modernae impulsum accipiens, donec beatus Pius IX eum anno 1870 Patronum Ecclesiae Universalis declaravit, decreto quod decisivum impulsum honori eius liturgico dedit. Eius festum, iam antiquum, gradatim gradu evectum est, sollemnitas in calendario reformato factum, ita locum inter paucas celebrationes obtinens quae dominicis et feriis Quadragesimae praeponi possunt.

Pro Ecclesia hodierna, Ioseph exemplar peculiariter accessibile manet patribus, operariis et omnibus qui responsabilitatem silenter et sine agnitione exercent, necnon peculiaris patronus morientium, propter mortem eius praesumptam in praesentia Iesu et Mariae. Eius sollemnitas familias invitat ut sanctitatem in vita domestica ordinaria possibilem redinveniant, et silentium, oboedientiam humileque servitium tamquam vias sanctitatis proponit non minus authenticas quam formae visibilissimae testimonii christiani.
$desc$),
('saint-turibius-of-mongrovejo-bishop', 'Sanctus Turibius de Mongrovejo, Episcopus', $desc$
Memoria ad libitum sancti Turibii de Mongrovejo, episcopi, die vicesimo tertio mensis Martii in Calendario Romano Generali celebratur. Intra Quadragesimam incidens, ordinarie feriae Quadragesimae cedit, data facultate collectae propriae huius pastoris infatigabilis et evangelizatoris Americae Hispanicae commemorandi.

Haec celebratio in caritate pastorali episcopi centratur, qui officium suum tamquam vocationem intellexit ad populum suum assidue adeundum potius quam exspectandum, immensa et difficilia territoria peragrans ut praedicaret, catechesim traderet, confirmaret, et dignitatem populorum indigenarum suae curae commissorum defenderet. Eius ministerium episcopale imaginem evangelicam pastoris incarnat qui oves suas singillatim novit, annuntiationem fidei a cura iustitiae et dignitatis humanae separare recusans.

Archiepiscopus Limanus exeunte saeculo sexto decimo constitutus, cum nondum sacerdos ordinatus esset, Turibius fatigantes visitationes pastorales per vastum dioecesis suae territorium suscepit, Concilium Limense Tertium convocavit, quod evangelizationem Americarum per saecula formavit, et in institutione cleri indigenae indefesse laboravit. Anno 1726 canonizatus est, et diu tamquam patronus episcopatus Americae Latinae honoratus est.

Memoria sancti Turibii hodie episcopis et pastoribus loquitur qui ad propinquitatem cum populo suo, praesertim pauperibus et marginatis, vocantur, necnon operi continuo evangelizationis et iustitiae in America Latina. Eius exemplum exemplar gubernationis episcopalis in praesentia personali, rigore catechetico et inconcussa dignitatis humanae defensione radicatum inspirare pergit.
$desc$),
('the-annunciation-of-the-lord', 'Annuntiatio Domini', $desc$
Sollemnitas Annuntiationis Domini die vicesimo quinto mensis Martii celebratur, dies quae, sicut illa sancti Ioseph, tamquam punctum calendarii fere fixum potius quam stricte immobile se gerit. Novem mensibus ante Nativitatem occurrens, ipsum momentum Incarnationis commemorat; cum autem dies vicesimus quintus Martii intra Hebdomadam Sanctam vel intra Octavam Paschae inciderit, sollemnitas ad feriam secundam post Dominicam secundam Paschae, Dominicam Divinae Misericordiae, transfertur, ita ut laetum mysterium Verbi facti carnis liturgiis Passionis, Mortis et Resurrectionis Domini numquam obumbretur neque eclipsim patiatur.

In centro theologico huius sollemnitatis ipsum mysterium Incarnationis invenitur: Verbum aeternum carnem in utero Virginis Mariae sumit ipso momento liberi ac totalis eius consensus, "fiat mihi secundum verbum tuum." Hoc momentum initium unionis hypostaticae naturarum divinae et humanae in unica persona Christi signat, et fiat Marianum perfectum exemplar fidei manet quae initiativae gratiae libere cooperatur, eam hoc ipso momento Matrem Dei simul et primam credentem Novi Foederis constituens.

Iam saeculis sexto et septimo tam in Oriente quam in Occidente celebrata, haec festivitas novem mensibus ante Nativitatem fixa est secundum antiquam traditionem patristicam quae diem vicesimum quintum Martii cum mundi creatione et cum ipsa die Passionis Christi associabat, initium et consummationem historiae salutis in unico die symbolico coniungens. Eius observatio Romae sub Sergio Papa Primo saeculo septimo firmiter constituta est, et deinceps una ex praecipuis Ecclesiae sollemnitatibus marianis et christologicis mansit.

Hodie Annuntiatio devotionem Ecclesiae per cotidianam Angeli Domini recitationem alere pergit, et occasio praecipua manet ad dignitatem vitae humanae ab ipso conceptionis momento meditandam, cum praecise in conceptione Ecclesia mysterium Incarnationis illo die celebratum collocet. Fiat Mariae sine reservatione manet, omni credenti, exemplar responsionis fidei ad vocationem Dei inexspectatam et saepe exigentem.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- Celebrations (fixed; transfer rules for Joseph/Annunciation handled by API engine)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-casimir', 3, 4, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saints-perpetua-and-felicity-martyrs', 3, 7, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-john-of-god-religious', 3, 8, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-frances-of-rome-religious', 3, 9, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-patrick-bishop', 3, 17, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 3, 18, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-turibius-of-mongrovejo-bishop', 3, 23, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- Saint Joseph Movable Rule (almost fixed - 19 March - but with movable handling for Holy Week)
-- &
-- Annunciation Movable Rule (almost fixed - 25 March - but with movable handling for Holy Week / Easter Octave)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'movable', x.movable_base, x.movable_offset_days, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-joseph-spouse-of-the-blessed-virgin-mary', 'SAINT_JOSEPH', 0, 'SOLEMNITY', 'normal', FALSE, 'Wikipedia'),
('the-annunciation-of-the-lord', 'ANNUNCIATION', 0, 'SOLEMNITY', 'normal', FALSE, 'Wikipedia')
) AS x(slug, movable_base, movable_offset_days, rank_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - April (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
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
On April 2, the Roman calendar keeps the optional memorial of Saint Francis of Paola, hermit, a celebration that most often falls within Lent or close to Eastertide, coloring it with the season's call to conversion and radical dependence on God. As an optional memorial, it invites rather than obliges the Church to pause and consider a life given wholly to solitude, fasting, and prayer, offering a counterpoint to the busyness of ordinary time.

At the heart of this feast lies the mystery of self-emptying discipleship: Francis chose to call his followers Minims, "the least," embracing a spirituality of littleness that mirrors Christ's own kenosis. The liturgy commemorates not merely austere practices but the theological conviction that true greatness before God is found in humility, penance, and unconditional trust in Providence, virtues that make room for grace to act unhindered in the human heart.

Devotion to Francis of Paola grew rapidly after his death in 1507, culminating in his canonization by Pope Leo X in 1519, remarkably swift for the era. His fame as a wonder-worker and peacemaker among princes spread his cult throughout Italy, France, and beyond; sailors and fishermen in particular claimed him as patron, and his feast entered the general Roman calendar as a witness to the enduring appeal of eremitic holiness within a Church increasingly engaged in the world.

For believers today, this memorial offers a quiet but pointed challenge: in a culture of noise, self-promotion, and consumption, Francis proposes the counter-witness of silence, fasting, and radical poverty of spirit. Pastorally, his example invites the faithful to rediscover practices of penance not as burdens but as pathways to freedom, and to trust that hidden lives of prayer bear real fruit for the whole Church.
$desc$),
('saint-isidore-bishop-and-doctor-of-the-church', 'Saint Isidore, Bishop and Doctor of the Church', $desc$
The optional memorial of Saint Isidore, Bishop of Seville and Doctor of the Church, occurs on April 4, generally within the Easter season, a placement that quietly links his witness to learning with the Church's springtime of renewed faith. Though optional, the memorial gives the universal Church occasion to honor one of the last great Fathers of the West, a bridge figure between patristic antiquity and medieval Christendom.

Theologically, the feast celebrates the harmony of faith and knowledge: Isidore labored to gather, preserve, and order the whole of human learning—grammar, law, medicine, history, theology—under the light of divine truth, convinced that no true knowledge is foreign to the service of God and neighbor. His example proclaims that the intellectual life, rightly ordered, is itself a form of charity and an instrument of evangelization in times of cultural upheaval.

Isidore presided over the Fourth Council of Toledo in 633, shaping the Church's discipline and liturgy in Visigothic Spain, while his encyclopedic Etymologiae became a foundational reference for centuries of Western scholarship. Pope Innocent XIII declared him a Doctor of the Church in 1722, formally recognizing a teaching authority that had already shaped monastic and cathedral schools throughout the Middle Ages.

In an age saturated with information yet often starved of wisdom, Isidore's witness speaks directly to scholars, students, and all who work with knowledge and its transmission, including, by popular devotion, those who labor with modern communications technology. His feast calls the faithful to seek learning always in service of truth, humility, and the building up of the Church.
$desc$),
('saint-vincent-ferrer-priest', 'Saint Vincent Ferrer, Priest', $desc$
Falling on April 5, usually within the Easter season, the optional memorial of Saint Vincent Ferrer sets a Dominican preacher's fire for souls against the backdrop of the Church's yearly celebration of the Resurrection, a fitting context for a saint whose entire ministry proclaimed conversion in light of Christ's victory and coming judgment.

The feast draws the faithful into the theological heart of Vincent's preaching: the urgency of repentance, the certainty of divine judgment, and the mercy that remains open to all who turn back to God. His itinerant apostolate embodied the conviction that the Gospel must be proclaimed anew to every generation and every people, not as abstract doctrine but as a living summons demanding response here and now.

A Dominican friar of the fourteenth and fifteenth centuries, Vincent preached across Spain, France, Italy, and beyond during the turmoil of the Western Schism, laboring tirelessly, and not without controversy, for the reunification of a divided Church. His reputation for miracles and prophetic preaching led to his canonization in 1455, and his memorial entered the Roman calendar as an enduring image of the itinerant preacher wholly consecrated to the salvation of souls.

Today Vincent Ferrer stands as a patron of preachers and a model for the new evangelization, reminding pastors and laity alike that authentic proclamation of the Gospel requires both zeal for truth and profound charity, and that reconciliation within the Church remains an urgent, ever-actual task.
$desc$),
('saint-john-baptist-de-la-salle-priest', 'Saint John Baptist de la Salle, Priest', $desc$
The obligatory memorial of Saint John Baptist de la Salle is celebrated on April 7, ordinarily within the joyful weeks of Eastertide, situating this founder of Christian education within the Church's celebration of new life and hope for the young. Its obligatory rank underscores the Church's continued esteem for a ministry that shaped generations of Catholic schooling.

At the theological center of this feast stands the conviction that teaching the young, especially the poor, is itself a sacred ministry, an extension of Christ's own care for "the little ones." La Salle's spirituality fused contemplative union with God and active service, insisting that authentic education forms the whole person—mind, character, and faith together—as a genuine work of salvation history.

A seventeenth-century French priest and canon, La Salle renounced his wealth and status to found the Brothers of the Christian Schools, pioneering free education for poor children and training laymen as dedicated teachers at a time when such formation was rare. Canonized in 1900, he was proclaimed patron of teachers by Pope Pius XII in 1950, cementing his place as a model for Catholic educators worldwide.

His memorial today speaks urgently to the Church's ongoing mission in Catholic education, encouraging teachers, catechists, and school communities to see their vocation not as mere instruction but as participation in Christ's own pedagogy of love, particularly toward children who are poor, neglected, or at the margins.
$desc$),
('saint-stanislaus-bishop-and-martyr', 'Saint Stanislaus, Bishop and Martyr', $desc$
On April 11, within the Easter season, the Church keeps the obligatory memorial of Saint Stanislaus, Bishop of Kraków and martyr, a feast whose date and rank affirm the enduring significance of episcopal courage even amid the joy of the Resurrection. His obligatory memorial situates a story of conflict and death squarely within the Church's celebration of Christ's triumph over death.

The theological substance of this feast is the martyrdom of a bishop who would not be silent before injustice: called to guard the moral order entrusted to the Church, Stanislaus confronted royal power when it trampled justice, and paid for that fidelity with his life. His witness proclaims that the shepherd's authority is inseparable from the duty to speak truth to power, whatever the cost.

Bishop of Kraków in eleventh-century Poland, Stanislaus clashed with King Bolesław II over the king's abuses, and was killed, according to tradition, at the king's own hand or command in 1079. His cult grew quickly among the Polish people, and Pope Innocent IV canonized him in 1253, establishing Stanislaus as a central figure of Polish national and ecclesial identity.

His memorial continues to inspire bishops and all in positions of moral authority to resist compromise with injustice, and reminds the faithful, especially in Poland and across Central Europe, that fidelity to conscience and to the Gospel may demand the highest price, even as it bears the Church's most fruitful witness.
$desc$),
('saint-martin-i-pope-and-martyr', 'Saint Martin I, Pope and Martyr', $desc$
The optional memorial of Saint Martin I, Pope and Martyr, falls on April 13, generally within the Easter season, honoring the last bishop of Rome to be venerated as a martyr, a distinction that gives this feast particular weight within the long line of papal commemorations scattered through the calendar.

Theologically, the memorial centers on fidelity to orthodox faith in the face of imperial pressure: Martin convened the Lateran Council of 649 to condemn Monothelitism, defending the full humanity of Christ's will against a heresy favored by the Byzantine court. His witness affirms that the successor of Peter bears responsibility for guarding the integrity of the faith even when doing so provokes the wrath of worldly power.

For this defense of orthodoxy, Emperor Constans II had Martin arrested, subjected to a humiliating trial, and exiled to Crimea, where the pope died in 655 from the hardships of his captivity, a genuine martyrdom of persecution and neglect rather than direct execution. His memory endured particularly in the Eastern Churches before entering firmly into Roman liturgical commemoration.

Today Saint Martin I stands as a reminder that fidelity to revealed truth may cost dearly even within the highest offices of the Church, encouraging the faithful, and especially those who exercise teaching authority, to hold fast to sound doctrine with courage, patience, and trust in providence amid political and cultural pressures.
$desc$),
('saint-anselm-bishop-and-doctor-of-the-church', 'Saint Anselm, Bishop and Doctor of the Church', $desc$
Celebrated on April 21, typically within the Easter season, the optional memorial of Saint Anselm, Archbishop of Canterbury and Doctor of the Church, honors one of the great architects of medieval theology, a fitting companion to the Church's Paschal reflection on the reasonableness and depth of the mystery of redemption.

The theological heart of this feast is Anselm's programmatic conviction, fides quaerens intellectum, faith seeking understanding: reason, illumined by grace, does not oppose belief but seeks to penetrate it more deeply. His reflections on the necessity of the Incarnation and Redemption in Cur Deus Homo, and his contemplative arguments for God's existence, exemplify a theology born of prayer and directed back toward worship.

A Benedictine monk of Bec who became Archbishop of Canterbury, Anselm suffered exile twice for defending the Church's freedom against royal encroachment during the investiture controversies of his day, uniting rigorous intellect with pastoral courage. Pope Clement XI proclaimed him a Doctor of the Church in 1720, recognizing a legacy that shaped scholastic method for centuries afterward.

In an era often marked by the perceived opposition between faith and reason, Anselm's memorial calls believers, scholars, and pastors alike to rediscover theology as a contemplative and rigorous pursuit of the God who is already believed and loved, demonstrating that the deepest thinking and the deepest prayer need never be divided.
$desc$),
('saint-george-martyr', 'Saint George, Martyr', $desc$
The optional memorial of Saint George, Martyr, observed on April 23 during the Easter season, celebrates one of the most venerable and widely spread cults of the early Church, a soldier-martyr whose ancient feast has crossed cultures and centuries to remain a vivid image of Christian courage.

Theologically, this feast is above all a celebration of martyrdom as the supreme witness of faith: George's confession of Christ unto blood proclaims that no earthly power, however great, can compel the believer to renounce the Lord. The later legend of the dragon, though not historical, crystallizes this same truth symbolically, presenting the martyr as one who, by faith, overcomes the forces of evil on behalf of the helpless.

Little can be verified historically about George beyond his martyrdom, likely in the early fourth century, yet devotion to him spread with extraordinary speed across the Christian East and West, intensified during the Crusades, and made him patron of numerous nations, cities, and orders of chivalry, from England to Georgia to Catalonia.

Today Saint George remains a compelling figure for soldiers, scouts, and all who face difficult or dangerous vocations, reminding the faithful that Christian courage is not mere bravado but fidelity to Christ that does not waver even when confronted with the world's fiercest powers.
$desc$),
('saint-adalbert-bishop-and-martyr', 'Saint Adalbert, Bishop and Martyr', $desc$
Sharing April 23 with Saint George within the Easter season, the optional memorial of Saint Adalbert, Bishop and Martyr, commemorates a tireless missionary bishop of Central Europe whose feast highlights the Church's expansion among the Slavic and Baltic peoples in the tenth century.

At the theological center of this memorial stands the missionary vocation understood as martyrdom in potential: Adalbert's episcopal ministry, marked by repeated setbacks and eventual violent death while preaching to the Prussians, illustrates that evangelization is never merely a strategy but a share in Christ's own self-gift, offered even when the harvest seems meager or resistant.

Bishop of Prague, Adalbert twice left his see, discouraged by the resistance of his flock, and spent himself in mission to Hungary, Poland, and finally the pagan Prussians, among whom he was killed in 997. His relics, ransomed by Duke Bolesław of Poland, became a focal point for the Church's growth in the region, and his cult spread quickly through Bohemia, Poland, and Hungary.

His memorial continues to inspire missionary perseverance in the face of discouragement, offering a patron for Central Europe and a model for all who labor in difficult mission fields where visible fruit is slow to appear yet whose sacrifice ultimately builds up the Church.
$desc$),
('saint-fidelis-of-sigmaringen-priest-and-martyr', 'Saint Fidelis of Sigmaringen, Priest and Martyr', $desc$
The optional memorial of Saint Fidelis of Sigmaringen, Priest and Martyr, kept on April 24 within the Easter season, honors a Capuchin friar whose death during the confessional conflicts following the Reformation testifies to the Church's costly commitment to unity in truth.

Theologically, this feast centers on martyrdom endured for the integrity and unity of the Catholic faith during an age of bitter religious division: Fidelis's death was not sought for its own sake but arose from his fearless preaching of Catholic doctrine among a hostile population, embodying the conviction that charity toward those in error need not, and must not, dilute fidelity to revealed truth.

A trained lawyer who renounced a promising legal career for Capuchin poverty, Fidelis was sent to preach and catechize among Calvinist populations in Switzerland as part of the Counter-Reformation mission of the Congregation for the Propagation of the Faith, and was killed by a hostile mob in 1622, becoming that Congregation's first martyr; Pope Benedict XIV canonized him in 1746.

His memorial today speaks to missionaries, lawyers, and all engaged in delicate work of dialogue and evangelization amid division, calling the faithful to combine firm doctrinal clarity with genuine charity, confident that fidelity to truth, even when it provokes hostility, remains an act of love.
$desc$),
('saint-mark-evangelist', 'Saint Mark, Evangelist', $desc$
Kept on April 25 with the rank of Feast, a dignity higher than the memorials surrounding it, the celebration of Saint Mark the Evangelist stands out within the Easter season as a major commemoration honoring one of the four inspired authors of the Gospel, occasionally requiring adjustment when it coincides with the Easter Octave.

At the theological heart of this feast lies the Gospel itself: Mark's terse, urgent narrative, opening with the words "the beginning of the Gospel of Jesus Christ, the Son of God," proclaims Christ as the one whose deeds and passion reveal, in real time, the inbreaking of God's kingdom, inviting hearers to immediate faith and discipleship rather than detached reflection.

Traditionally identified as a companion of Peter and Paul and the founder of the Church of Alexandria, Mark's authorship and apostolic authenticity were long recognized by the early Church; his relics, brought to Venice in the ninth century, made him patron of that city, and the feast's date coincides with the ancient Roman observance of the Major Rogation, subsequently Christianized into a day of prayer for the harvest.

The feast today renews appreciation for the Gospel as living proclamation rather than mere record, encouraging preachers, evangelists, and all the faithful to receive and transmit the Good News with the same urgency and clarity that mark Mark's own Gospel, while honoring his enduring symbol, the lion, as an image of bold and vigilant faith.
$desc$),
('saint-peter-chanel-priest-and-martyr', 'Saint Peter Chanel, Priest and Martyr', $desc$
On April 28, within the Easter season, the Church honors the optional memorial of Saint Peter Chanel, Priest and Martyr, the first martyr of Oceania, whose feast brings the Church's universal missionary vocation vividly into the liturgical year.

Theologically, this memorial proclaims the fruitfulness of missionary martyrdom: Peter's death, far from ending his apostolate, became, in the Church's understanding, the very seed from which the faith flourished on the island where he died, embodying the ancient conviction that the blood of martyrs is the seed of Christians even in the newest mission territories.

A Marist missionary priest, Peter Chanel arrived on the Pacific island of Futuna in 1837, laboring for years with little visible fruit and mounting local hostility, until he was killed in 1841, reportedly at the instigation of a chief threatened by the conversion of his own son; within years of his death, the whole island turned to the Catholic faith, and Peter was canonized in 1954.

His memorial today serves as patron and encouragement for missionaries throughout Oceania and beyond, a reminder that apparent failure in mission work can conceal seeds of extraordinary future growth, and that perseverance in charity and preaching, even without immediate results, remains supremely fruitful in God's design.
$desc$),
('saint-louis-grignon-de-montfort-priest', 'Saint Louis Grignon de Montfort, Priest', $desc$
Sharing April 28 within the Easter season, the optional memorial of Saint Louis Grignion de Montfort, Priest, honors a tireless missionary and spiritual writer whose Marian doctrine has shaped Catholic devotion for centuries, placing him alongside Peter Chanel as another herald of the Gospel's expanding reach.

At the theological core of this feast stands the doctrine of total consecration to Jesus through Mary: Montfort taught that Mary, as the perfect disciple and mother of the redeemed, forms Christ most surely and swiftly in souls who entrust themselves to her, a teaching that situates Marian devotion firmly within, rather than apart from, Christocentric faith.

An itinerant preacher of missions across western France in the early eighteenth century, Montfort suffered opposition, poverty, and even attempts on his life, yet composed enduring works, most notably True Devotion to Mary, that later influenced major currents of Catholic spirituality; he was canonized in 1947, and his Marian doctrine left a visible mark on later papal teaching.

His memorial today invites the faithful to rediscover authentic Marian consecration as a path to deeper configuration to Christ, encouraging renewed missionary preaching and popular piety alike, and reminding the Church that devotion to Mary, rightly understood, always leads more fully to her Son.
$desc$),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 'Saint Catherine of Siena, Virgin and Doctor of the Church', $desc$
The obligatory memorial of Saint Catherine of Siena, Virgin and Doctor of the Church, celebrated on April 29 within the Easter season, honors a co-patroness of Europe and patroness of Italy, a rank reflecting her singular importance among the Church's mystics and teachers, and one of only a handful of women granted the title of Doctor.

Theologically, the feast centers on the mystical and ecclesial vision at the heart of Catherine's teaching: union with Christ through contemplation of his blood poured out in love, and a corresponding zeal for the unity, reform, and holiness of the Church, expressed in her celebrated Dialogue and her tireless correspondence urging peace, penance, and fidelity to the Vicar of Christ.

A Dominican tertiary and laywoman of fourteenth-century Siena, Catherine became an influential voice in the Church's public life, famously urging Pope Gregory XI to return the papacy from Avignon to Rome; canonized in 1461, she was declared Doctor of the Church in 1970 by Pope Paul VI, and later named patroness of Italy and co-patroness of Europe.

Her memorial today speaks powerfully to the vocation of the laity, especially women, in the Church's mission, and to Europe's own vocation of unity rooted in the Gospel, calling all believers to Catherine's own blend of deep contemplative prayer and fearless public witness for the good of the Church and society.
$desc$),
('saint-pius-v-pope', 'Saint Pius V, Pope', $desc$
Closing the month on April 30, within the Easter season, the optional memorial of Saint Pius V, Pope, honors the Dominican pontiff who guided the Church through the demanding work of implementing the Council of Trent, a fitting note on which to end a month rich in memorials of reformers, martyrs, and teachers.

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
Le 2 avril, le calendrier romain célèbre la mémoire facultative de saint François de Paule, ermite, une fête qui tombe le plus souvent pendant le Carême ou à proximité de Pâques, ce qui la teinte de l'appel du temps liturgique à la conversion et à la dépendance radicale envers Dieu. En tant que mémoire facultative, elle invite plutôt qu'elle n'oblige l'Église à s'arrêter sur une vie tout entière donnée à la solitude, au jeûne et à la prière, offrant un contrepoint à l'agitation du temps ordinaire.

Au cœur de cette fête se trouve le mystère du dépouillement dans le disciple : François choisit d'appeler ses frères les Minimes, « les plus petits », épousant une spiritualité de petitesse qui reflète la propre kénose du Christ. La liturgie ne commémore pas seulement des pratiques austères, mais la conviction théologique que la vraie grandeur devant Dieu se trouve dans l'humilité, la pénitence et la confiance inconditionnelle en la Providence, vertus qui laissent la grâce agir sans entrave dans le cœur humain.

La dévotion à François de Paule grandit rapidement après sa mort en 1507, aboutissant à sa canonisation par le pape Léon X dès 1519, remarquablement rapide pour l'époque. Sa réputation de thaumaturge et de pacificateur entre princes répandit son culte en Italie, en France et au-delà ; marins et pêcheurs en particulier le prirent pour patron, et sa fête entra au calendrier romain général comme témoignage de l'attrait durable de la sainteté érémitique au sein d'une Église de plus en plus engagée dans le monde.

Pour les croyants d'aujourd'hui, cette mémoire propose un défi discret mais pénétrant : dans une culture du bruit, de l'auto-promotion et de la consommation, François propose le contre-témoignage du silence, du jeûne et de la pauvreté radicale d'esprit. Sur le plan pastoral, son exemple invite les fidèles à redécouvrir les pratiques de pénitence non comme des fardeaux mais comme des chemins de liberté, et à croire que des vies cachées de prière portent un fruit réel pour toute l'Église.
$desc$),
('saint-isidore-bishop-and-doctor-of-the-church', 'Saint Isidore, évêque et docteur de l''Église', $desc$
La mémoire facultative de saint Isidore, évêque de Séville et docteur de l'Église, se célèbre le 4 avril, généralement pendant le temps pascal, un placement qui relie discrètement son témoignage de savant au printemps de foi renouvelée que vit l'Église. Bien que facultative, cette mémoire donne à l'Église universelle l'occasion d'honorer l'un des derniers grands Pères de l'Occident, figure de pont entre l'Antiquité patristique et la chrétienté médiévale.

Sur le plan théologique, la fête célèbre l'harmonie de la foi et de la connaissance : Isidore s'employa à rassembler, préserver et ordonner tout le savoir humain — grammaire, droit, médecine, histoire, théologie — sous la lumière de la vérité divine, convaincu qu'aucune connaissance véritable n'est étrangère au service de Dieu et du prochain. Son exemple proclame que la vie intellectuelle, bien ordonnée, est elle-même une forme de charité et un instrument d'évangélisation dans les temps de bouleversement culturel.

Isidore présida le quatrième concile de Tolède en 633, façonnant la discipline et la liturgie de l'Église dans l'Espagne wisigothique, tandis que ses Étymologies encyclopédiques devinrent une référence fondatrice pour des siècles d'érudition occidentale. Le pape Innocent XIII le proclama docteur de l'Église en 1722, reconnaissant formellement une autorité doctrinale qui avait déjà façonné les écoles monastiques et cathédrales tout au long du Moyen Âge.

À une époque saturée d'informations mais souvent affamée de sagesse, le témoignage d'Isidore parle directement aux savants, aux étudiants et à tous ceux qui travaillent avec la connaissance et sa transmission, y compris, par la dévotion populaire, ceux qui œuvrent avec les technologies modernes de communication. Sa fête appelle les fidèles à rechercher toujours le savoir au service de la vérité, de l'humilité et de l'édification de l'Église.
$desc$),
('saint-vincent-ferrer-priest', 'Saint Vincent Ferrier, prêtre', $desc$
Tombant le 5 avril, habituellement pendant le temps pascal, la mémoire facultative de saint Vincent Ferrier place le feu d'un prédicateur dominicain pour les âmes sur fond de la célébration annuelle de la Résurrection par l'Église, contexte tout indiqué pour un saint dont le ministre entier proclamait la conversion à la lumière de la victoire du Christ et du jugement à venir.

La fête introduit les fidèles au cœur théologique de la prédication de Vincent : l'urgence de la pénitence, la certitude du jugement divin et la miséricorde qui demeure ouverte à tous ceux qui reviennent vers Dieu. Son apostolat itinérant incarnait la conviction que l'Évangile doit être proclamé à nouveau à chaque génération et à chaque peuple, non comme une doctrine abstraite mais comme un appel vivant exigeant une réponse ici et maintenant.

Frère dominicain des quatorzième et quinzième siècles, Vincent prêcha à travers l'Espagne, la France, l'Italie et au-delà durant les troubles du Grand Schisme d'Occident, œuvrant sans relâche, non sans controverse, pour la réunification d'une Église divisée. Sa réputation de miracles et de prédication prophétique conduisit à sa canonisation en 1455, et sa mémoire entra au calendrier romain comme image durable du prédicateur itinérant tout entier consacré au salut des âmes.

Aujourd'hui, Vincent Ferrier demeure un patron des prédicateurs et un modèle pour la nouvelle évangélisation, rappelant aux pasteurs comme aux laïcs qu'une proclamation authentique de l'Évangile requiert à la fois zèle pour la vérité et charité profonde, et que la réconciliation au sein de l'Église demeure une tâche urgente et toujours actuelle.
$desc$),
('saint-john-baptist-de-la-salle-priest', 'Saint Jean-Baptiste de La Salle, prêtre', $desc$
La mémoire obligatoire de saint Jean-Baptiste de La Salle se célèbre le 7 avril, ordinairement dans les semaines joyeuses du temps pascal, situant ce fondateur de l'éducation chrétienne au cœur de la célébration par l'Église de la vie nouvelle et de l'espérance pour les jeunes. Son rang obligatoire souligne l'estime constante de l'Église pour un ministre qui a façonné des générations d'enseignement catholique.

Au centre théologique de cette fête se tient la conviction que l'enseignement des jeunes, en particulier des pauvres, est lui-même un ministre sacré, un prolongement du soin même du Christ pour « les petits ». La spiritualité de La Salle unissait union contemplative à Dieu et service actif, insistant sur le fait qu'une éducation authentique forme la personne tout entière — intelligence, caractère et foi ensemble — comme une véritable œuvre d'histoire du salut.

Prêtre et chanoine français du dix-septième siècle, La Salle renonça à sa richesse et à son rang pour fonder les Frères des Écoles chrétiennes, initiant l'éducation gratuite des enfants pauvres et formant des laïcs comme enseignants dévoués à une époque où une telle formation était rare. Canonisé en 1900, il fut proclamé patron des enseignants par le pape Pie XII en 1950, consolidant sa place de modèle pour les éducateurs catholiques du monde entier.

Sa mémoire parle aujourd'hui avec urgence à la mission continue de l'Église dans l'éducation catholique, encourageant enseignants, catéchistes et communautés scolaires à voir leur vocation non comme simple instruction mais comme participation à la propre pédagogie d'amour du Christ, particulièrement envers les enfants pauvres, négligés ou en marge.
$desc$),
('saint-stanislaus-bishop-and-martyr', 'Saint Stanislas, évêque et martyr', $desc$
Le 11 avril, en plein temps pascal, l'Église célèbre la mémoire obligatoire de saint Stanislas, évêque de Cracovie et martyr, une fête dont la date et le rang affirment l'importance durable du courage épiscopal jusque dans la joie de la Résurrection. Sa mémoire obligatoire situe une histoire de conflit et de mort en plein cœur de la célébration par l'Église du triomphe du Christ sur la mort.

La substance théologique de cette fête est le martyre d'un évêque qui ne se tut pas devant l'injustice : appelé à garder l'ordre moral confié à l'Église, Stanislas affronta le pouvoir royal lorsqu'il piétina la justice, et paya cette fidélité de sa vie. Son témoignage proclame que l'autorité du pasteur est inséparable du devoir de dire la vérité au pouvoir, quel qu'en soit le prix.

Évêque de Cracovie dans la Pologne du onzième siècle, Stanislas s'opposa au roi Boleslas II sur ses abus, et fut tué, selon la tradition, de la main même du roi ou sur son ordre, en 1079. Son culte grandit rapidement parmi le peuple polonais, et le pape Innocent IV le canonisa en 1253, faisant de Stanislas une figure centrale de l'identité nationale et ecclésiale polonaise.

Sa mémoire continue d'inspirer évêques et détenteurs d'autorité morale à résister à tout compromis avec l'injustice, et rappelle aux fidèles, particulièrement en Pologne et à travers l'Europe centrale, que la fidélité à la conscience et à l'Évangile peut exiger le prix le plus élevé, tout en portant le témoignage le plus fécond de l'Église.
$desc$),
('saint-martin-i-pope-and-martyr', 'Saint Martin Ier, pape et martyr', $desc$
La mémoire facultative de saint Martin Ier, pape et martyr, tombe le 13 avril, généralement pendant le temps pascal, honorant le dernier évêque de Rome vénéré comme martyr, distinction qui confère à cette fête un poids particulier parmi la longue suite de commémorations papales dispersées dans le calendrier.

Théologiquement, la mémoire est centrée sur la fidélité à la foi orthodoxe face à la pression impériale : Martin convoqua le concile du Latran en 649 pour condamner le monothélisme, défendant la pleine humanité de la volonté du Christ contre une hérésie favorisée par la cour byzantine. Son témoignage affirme que le successeur de Pierre porte la responsabilité de garder l'intégrité de la foi, même lorsque cela provoque la colère du pouvoir temporel.

Pour cette défense de l'orthodoxie, l'empereur Constant II fit arrêter Martin, le soumit à un procès humiliant et l'exila en Crimée, où le pape mourut en 655 des épreuves de sa captivité, martyre véritable de persécution et d'abandon plutôt que d'exécution directe. Sa mémoire perdura particulièrement dans les Églises d'Orient avant de s'inscrire fermement dans la commémoration liturgique romaine.

Aujourd'hui, saint Martin Ier rappelle que la fidélité à la vérité révélée peut coûter cher jusque dans les plus hautes fonctions de l'Église, encourageant les fidèles, et particulièrement ceux qui exercent une autorité d'enseignement, à tenir fermement la saine doctrine avec courage, patience et confiance en la Providence face aux pressions politiques et culturelles.
$desc$),
('saint-anselm-bishop-and-doctor-of-the-church', 'Saint Anselme, évêque et docteur de l''Église', $desc$
Célébrée le 21 avril, habituellement pendant le temps pascal, la mémoire facultative de saint Anselme, archevêque de Cantorbéry et docteur de l'Église, honore l'un des grands architectes de la théologie médiévale, compagnon tout indiqué de la réflexion pascale de l'Église sur le caractère raisonnable et profond du mystère de la rédemption.

Le cœur théologique de cette fête est la conviction programmatique d'Anselme, fides quaerens intellectum, la foi en quête d'intelligence : la raison, éclairée par la grâce, ne s'oppose pas à la croyance mais cherche à la pénétrer plus profondément. Ses réflexions sur la nécessité de l'Incarnation et de la Rédemption dans Cur Deus Homo, et ses arguments contemplatifs sur l'existence de Dieu, illustrent une théologie née de la prière et tournée à nouveau vers l'adoration.

Moine bénédictin du Bec devenu archevêque de Cantorbéry, Anselme souffrit deux exils pour avoir défendu la liberté de l'Église contre l'empiètement royal durant les querelles des investitures de son temps, unissant intelligence rigoureuse et courage pastoral. Le pape Clément XI le proclama docteur de l'Église en 1720, reconnaissant un héritage qui façonna la méthode scolastique pendant des siècles.

En une époque souvent marquée par une opposition perçue entre foi et raison, la mémoire d'Anselme appelle croyants, savants et pasteurs à redécouvrir la théologie comme une recherche à la fois contemplative et rigoureuse du Dieu déjà cru et aimé, montrant que la pensée la plus profonde et la prière la plus profonde n'ont jamais à être séparées.
$desc$),
('saint-george-martyr', 'Saint Georges, martyr', $desc$
La mémoire facultative de saint Georges, martyr, célébrée le 23 avril pendant le temps pascal, honore l'un des cultes les plus vénérables et les plus répandus de l'Église ancienne, un soldat-martyr dont l'antique fête a traversé cultures et siècles pour demeurer une image vivante du courage chrétien.

Théologiquement, cette fête est avant tout une célébration du martyre comme témoignage suprême de la foi : la confession du Christ par Georges jusqu'au sang proclame qu'aucun pouvoir terrestre, si grand soit-il, ne peut contraindre le croyant à renier le Seigneur. La légende ultérieure du dragon, bien que non historique, cristallise cette même vérité de manière symbolique, présentant le martyr comme celui qui, par la foi, triomphe des forces du mal en faveur des sans-défense.

On ne peut historiquement vérifier que peu de choses sur Georges en dehors de son martyre, probablement au début du quatrième siècle, et pourtant la dévotion à son égard se répandit avec une rapidité extraordinaire à travers l'Orient et l'Occident chrétiens, s'intensifia durant les croisades, et fit de lui le patron de nombreuses nations, villes et ordres de chevalerie, de l'Angleterre à la Géorgie en passant par la Catalogne.

Saint Georges demeure aujourd'hui une figure marquante pour les soldats, les scouts et tous ceux qui affrontent des vocations difficiles ou dangereuses, rappelant aux fidèles que le courage chrétien n'est pas simple bravade mais fidélité au Christ qui ne vacille pas même face aux puissances les plus féroces du monde.
$desc$),
('saint-adalbert-bishop-and-martyr', 'Saint Adalbert, évêque et martyr', $desc$
Partageant le 23 avril avec saint Georges pendant le temps pascal, la mémoire facultative de saint Adalbert, évêque et martyr, commémore un infatigable évêque missionnaire d'Europe centrale dont la fête met en lumière l'expansion de l'Église parmi les peuples slaves et baltes au dixième siècle.

Au centre théologique de cette mémoire se tient la vocation missionnaire comprise comme martyre en puissance : le ministre épiscopal d'Adalbert, marqué par des revers répétés et une mort violente finale en prêchant aux Prussiens, illustre que l'évangélisation n'est jamais une simple stratégie mais un partage du don de soi même du Christ, offert même lorsque la moisson paraît maigre ou résistante.

Évêque de Prague, Adalbert quitta deux fois son siège, découragé par la résistance de son troupeau, et se dépensa en mission en Hongrie, en Pologne et enfin chez les Prussiens païens, parmi lesquels il fut tué en 997. Ses reliques, rachetées par le duc Boleslas de Pologne, devinrent un point focal de la croissance de l'Église dans la région, et son culte se répandit rapidement en Bohême, en Pologne et en Hongrie.

Sa mémoire continue d'inspirer la persévérance missionnaire face au découragement, offrant un patron pour l'Europe centrale et un modèle pour tous ceux qui travaillent dans des terrains de mission difficiles où le fruit visible tarde à apparaître mais dont le sacrifice édifie finalement l'Église.
$desc$),
('saint-fidelis-of-sigmaringen-priest-and-martyr', 'Saint Fidèle de Sigmaringen, prêtre et martyr', $desc$
La mémoire facultative de saint Fidèle de Sigmaringen, prêtre et martyr, célébrée le 24 avril pendant le temps pascal, honore un frère capucin dont la mort durant les conflits confessionnels de l'après-Réforme témoigne de l'attachement coûteux de l'Église à l'unité dans la vérité.

Théologiquement, cette fête est centrée sur le martyre enduré pour l'intégrité et l'unité de la foi catholique en un temps de division religieuse amère : la mort de Fidèle ne fut pas recherchée pour elle-même mais naquit de sa prédication intrépide de la doctrine catholique parmi une population hostile, incarnant la conviction que la charité envers ceux qui sont dans l'erreur ne doit ni ne peut diluer la fidélité à la vérité révélée.

Juriste de formation ayant renoncé à une carrière prometteuse pour la pauvreté capucine, Fidèle fut envoyé prêcher et catéchiser parmi des populations calvinistes en Suisse dans le cadre de la mission de contre-réforme de la Congrégation pour la Propagation de la Foi, et fut tué par une foule hostile en 1622, devenant le premier martyr de cette congrégation ; le pape Benoît XIV le canonisa en 1746.

Sa mémoire parle aujourd'hui aux missionnaires, aux juristes et à tous ceux engagés dans un travail délicat de dialogue et d'évangélisation au milieu de la division, appelant les fidèles à joindre une ferme clarté doctrinale à une charité authentique, confiants que la fidélité à la vérité, même lorsqu'elle suscite l'hostilité, demeure un acte d'amour.
$desc$),
('saint-mark-evangelist', 'Saint Marc, évangéliste', $desc$
Célébrée le 25 avril avec le rang de Fête, dignité supérieure aux mémoires qui l'entourent, la célébration de saint Marc, évangéliste, se distingue au sein du temps pascal comme une commémoration majeure honorant l'un des quatre auteurs inspirés de l'Évangile, nécessitant parfois un ajustement lorsqu'elle coïncide avec l'octave de Pâques.

Au cœur théologique de cette fête se trouve l'Évangile lui-même : le récit bref et pressant de Marc, s'ouvrant par les mots « commencement de l'Évangile de Jésus Christ, Fils de Dieu », proclame le Christ comme celui dont les actes et la passion révèlent, en temps réel, l'irruption du royaume de Dieu, invitant les auditeurs à une foi immédiate et à un discipulat plutôt qu'à une réflexion détachée.

Traditionnellement identifié comme compagnon de Pierre et de Paul et fondateur de l'Église d'Alexandrie, l'auteur et l'authenticité apostolique de Marc furent reconnus depuis longtemps par l'Église ancienne ; ses reliques, apportées à Venise au neuvième siècle, firent de lui le patron de cette cité, et la date de sa fête coïncide avec l'ancienne observance romaine des Grandes Rogations, ensuite christianisée en journée de prière pour les moissons.

La fête renouvelle aujourd'hui l'appréciation de l'Évangile comme proclamation vivante plutôt que simple récit, encourageant prédicateurs, évangélisateurs et tous les fidèles à recevoir et transmettre la Bonne Nouvelle avec la même urgence et clarté qui marquent l'Évangile même de Marc, tout en honorant son symbole durable, le lion, comme image d'une foi hardie et vigilante.
$desc$),
('saint-peter-chanel-priest-and-martyr', 'Saint Pierre Chanel, prêtre et martyr', $desc$
Le 28 avril, pendant le temps pascal, l'Église honore la mémoire facultative de saint Pierre Chanel, prêtre et martyr, premier martyr d'Océanie, dont la fête inscrit vivement la vocation missionnaire universelle de l'Église dans l'année liturgique.

Théologiquement, cette mémoire proclame la fécondité du martyre missionnaire : la mort de Pierre, loin de mettre fin à son apostolat, devint, dans la compréhension de l'Église, la semence même à partir de laquelle la foi s'épanouit sur l'île où il mourut, incarnant l'antique conviction que le sang des martyrs est semence de chrétiens, même sur les plus nouveaux territoires de mission.

Prêtre missionnaire mariste, Pierre Chanel arriva sur l'île pacifique de Futuna en 1837, travaillant des années durant avec peu de fruit visible et une hostilité locale croissante, jusqu'à être tué en 1841, semble-t-il à l'instigation d'un chef menacé par la conversion de son propre fils ; en quelques années après sa mort, l'île entière se tourna vers la foi catholique, et Pierre fut canonisé en 1954.

Sa mémoire sert aujourd'hui de patronage et d'encouragement pour les missionnaires à travers l'Océanie et au-delà, rappelant que l'échec apparent d'une œuvre missionnaire peut cacher les semences d'une croissance future extraordinaire, et que la persévérance dans la charité et la prédication, même sans résultats immédiats, demeure suprêmement féconde dans le dessein de Dieu.
$desc$),
('saint-louis-grignon-de-montfort-priest', 'Saint Louis-Marie Grignion de Montfort, prêtre', $desc$
Partageant le 28 avril pendant le temps pascal, la mémoire facultative de saint Louis-Marie Grignion de Montfort, prêtre, honore un missionnaire infatigable et écrivain spirituel dont la doctrine mariale a façonné la dévotion catholique pendant des siècles, le plaçant aux côtés de Pierre Chanel comme un autre héraut de l'expansion de l'Évangile.

Au cœur théologique de cette fête se tient la doctrine de la consecration totale à Jésus par Marie : Montfort enseignait que Marie, disciple parfaite et mère des rachetés, forme le plus sûrement et le plus rapidement le Christ dans les âmes qui se confient à elle, un enseignement qui situe la dévotion mariale fermement au sein de la foi christocentrique, et non à part de celle-ci.

Prédicateur itinérant de missions à travers l'ouest de la France au début du dix-huitième siècle, Montfort souffrit oppositions, pauvreté et même attentats contre sa vie, mais composa des œuvres durables, notamment le Traité de la vraie dévotion à la Sainte Vierge, qui influença plus tard des courants majeurs de la spiritualité catholique ; il fut canonisé en 1947, et sa doctrine mariale laissa une marque visible sur l'enseignement pontifical postérieur.

Sa mémoire invite aujourd'hui les fidèles à redécouvrir la consecration mariale authentique comme chemin vers une configuration plus profonde au Christ, encourageant à la fois la prédication missionnaire renouvelée et la piété populaire, et rappelant à l'Église que la dévotion à Marie, bien comprise, conduit toujours plus pleinement à son Fils.
$desc$),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 'Sainte Catherine de Sienne, vierge et docteur de l''Église', $desc$
La mémoire obligatoire de sainte Catherine de Sienne, vierge et docteur de l'Église, célébrée le 29 avril pendant le temps pascal, honore une copatronne de l'Europe et patronne de l'Italie, rang qui reflète son importance singulière parmi les mystiques et maîtres de l'Église, et l'une des rares femmes à avoir reçu le titre de docteur.

Théologiquement, la fête est centrée sur la vision mystique et ecclésiale au cœur de l'enseignement de Catherine : l'union au Christ par la contemplation de son sang répandu par amour, et un zèle correspondant pour l'unité, la réforme et la sainteté de l'Église, exprimés dans son célèbre Dialogue et dans sa correspondance infatigable exhortant à la paix, à la pénitence et à la fidélité au Vicaire du Christ.

Tertiaire dominicaine et laïque de la Sienne du quatorzième siècle, Catherine devint une voix influente dans la vie publique de l'Église, exhortant fameusement le pape Grégoire XI à ramener la papauté d'Avignon à Rome ; canonisée en 1461, elle fut proclamée docteur de l'Église en 1970 par le pape Paul VI, et fut plus tard nommée patronne de l'Italie et copatronne de l'Europe.

Sa mémoire parle aujourd'hui avec force à la vocation des laïcs, particulièrement des femmes, dans la mission de l'Église, et à la vocation même de l'Europe à l'unité enracinée dans l'Évangile, appelant tous les croyants à l'alliage propre à Catherine d'une prière contemplative profonde et d'un témoignage public intrépide pour le bien de l'Église et de la société.
$desc$),
('saint-pius-v-pope', 'Saint Pie V, pape', $desc$
Clôturant le mois le 30 avril, pendant le temps pascal, la mémoire facultative de saint Pie V, pape, honore le pontife dominicain qui conduisit l'Église à travers l'œuvre exigeante de mise en œuvre du concile de Trente, note appropriée pour clore un mois riche en mémoires de réformateurs, de martyrs et de docteurs.

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
Die secunda aprilis, calendarium Romanum memoriam ad libitum sancti Francisci de Paula, eremitae, celebrat, quae saepissime tempore Quadragesimae vel prope Pascha occurrit, ita ut vocatione huius temporis ad conversionem et ad radicalem in Deum fiduciam tingatur. Quippe memoria ad libitum, potius invitat quam obligat Ecclesiam ut consideret vitam solitudini, ieiunio et orationi penitus dicatam, oblata quadam antithesi occupationum temporis per annum.

In huius festi corde iacet mysterium discipulatus se ipsum exinaniens: Franciscus suos sequaces Minimos, id est "minimos", appellare voluit, spiritualitatem parvitatis amplectens quae ipsam Christi kenosim reflectit. Liturgia non tantum austeras consuetudines commemorat, sed persuasionem theologicam veram magnitudinem coram Deo in humilitate, paenitentia et fiducia Providentiae absoluta inveniri, virtutes quae gratiae locum praebent in corde humano libere operandi.

Devotio erga Franciscum de Paula post eius obitum anno 1507 celeriter crevit, ita ut a Leone Papa X anno 1519 canonizaretur, celeritate pro illa aetate insigni. Fama thaumaturgi et pacificatoris inter principes eius cultum per Italiam, Galliam aliasque regiones diffudit; nautae praesertim et piscatores eum patronum sibi vindicaverunt, et festum eius in calendarium romanum generale intravit ut testimonium perennis vigoris sanctitatis eremiticae intra Ecclesiam mundo magis magisque implicatam.

Fidelibus hodiernis haec memoria tacitum sed acutum provocat: in cultura strepitus, sui ipsius ostentationis et consumptionis, Franciscus contrarium testimonium silentii, ieiunii et radicalis paupertatis spiritus proponit. Pastoraliter, eius exemplum fideles invitat ut paenitentiae exercitia non ut onera sed ut vias libertatis redintegrent, et credant vitas occultas orationis fructum verum toti Ecclesiae afferre.
$desc$),
('saint-isidore-bishop-and-doctor-of-the-church', 'Sanctus Isidorus, Episcopus et Ecclesiae Doctor', $desc$
Memoria ad libitum sancti Isidori, episcopi Hispalensis et Ecclesiae doctoris, die quarta aprilis occurrit, plerumque tempore paschali, quae collocatio silenter eius testimonium doctrinae cum verno Ecclesiae fidei renovatae coniungit. Quamvis ad libitum, memoria Ecclesiae universae occasionem praebet honorandi unum ex ultimis magnis Patribus Occidentis, figuram pontis inter antiquitatem patristicam et medium aevum christianum.

Theologice, festum harmoniam fidei et scientiae celebrat: Isidorus totam scientiam humanam — grammaticam, ius, medicinam, historiam, theologiam — sub luce divinae veritatis colligere, servare et ordinare studuit, persuasus nullam veram scientiam a servitio Dei et proximi alienam esse. Eius exemplum proclamat vitam intellectualem, recte ordinatam, ipsam formam esse caritatis atque instrumentum evangelizationis temporibus perturbationis culturalis.

Isidorus quarto Concilio Toletano anno 633 praesedit, disciplinam et liturgiam Ecclesiae in Hispania Visigothica formans, dum eius encyclopaedicae Etymologiae fundamentale documentum per saecula eruditionis occidentalis factae sunt. Innocentius Papa XIII eum Ecclesiae doctorem anno 1722 declaravit, auctoritatem doctrinalem formaliter agnoscens quae iam scholas monasticas et cathedrales per medium aevum formaverat.

Aetate informationibus saturata sed saepe sapientia egente, testimonium Isidori directe alloquitur eruditos, discipulos et omnes qui scientiae eiusque transmissioni operam dant, inclusis, populari devotione, iis qui modernis communicationis technologiis student. Festum eius fideles vocat ut scientiam semper in servitio veritatis, humilitatis et aedificationis Ecclesiae quaerant.
$desc$),
('saint-vincent-ferrer-priest', 'Sanctus Vincentius Ferrerius, Presbyter', $desc$
Die quinta aprilis, plerumque tempore paschali occurrens, memoria ad libitum sancti Vincentii Ferrerii ignem praedicatoris dominicani pro animabus in sinu celebrationis annuae Resurrectionis ab Ecclesia collocat, contextus aptus sancto cuius totum ministerium conversionem in luce victoriae Christi et iudicii venturi proclamabat.

Festum fideles ad cor theologicum praedicationis Vincentii ducit: urgentiam paenitentiae, certitudinem divini iudicii, et misericordiam quae omnibus ad Deum reversis aperta manet. Eius apostolatus itinerans persuasionem incarnabat Evangelium omni generationi omnique populo denuo proclamandum esse, non ut doctrinam abstractam sed ut vocationem vivam responsionem hic et nunc exigentem.

Frater dominicanus saeculorum quarti decimi et quinti decimi, Vincentius per Hispaniam, Galliam, Italiam aliasque regiones tempore Magni Occidentalis Schismatis praedicavit, indefesse, non sine controversia, pro unione Ecclesiae divisae laborans. Fama miraculorum et praedicationis propheticae ad eius canonizationem anno 1455 duxit, et memoria eius in calendarium romanum intravit ut perennis imago praedicatoris itinerantis saluti animarum penitus dicati.

Hodie Vincentius Ferrerius patronus praedicatorum et exemplar novae evangelizationis manet, pastores pariter ac laicos commonens authenticam Evangelii proclamationem et zelum veritatis et profundam caritatem exigere, et reconciliationem intra Ecclesiam munus urgens semperque actuale manere.
$desc$),
('saint-john-baptist-de-la-salle-priest', 'Sanctus Ioannes Baptista de La Salle, Presbyter', $desc$
Memoria obligatoria sancti Ioannis Baptistae de La Salle die septima aprilis celebratur, ordinarie intra hebdomadas laetas temporis paschalis, hunc educationis christianae conditorem in celebratione Ecclesiae de vita nova et spe iuvenum collocans. Gradus eius obligatorius perpetuam Ecclesiae aestimationem ministerii ostendit quod generationes catecheseos catholicae formavit.

In centro theologico huius festi stat persuasio docendi iuvenes, praesertim pauperes, ipsum sacrum ministerium esse, extensionem curae ipsius Christi pro "parvulis". Spiritualitas de La Salle unionem contemplativam cum Deo et servitium activum coniungebat, insistens veram educationem totam personam formare — mentem, mores et fidem simul — ut opus germanum historiae salutis.

Sacerdos et canonicus gallicus saeculi decimi septimi, de La Salle divitiis et dignitate renuntiavit ut Fratres Scholarum Christianarum conderet, gratuitam educationem pueris pauperibus praebens et laicos ut magistros devotos instituens tempore quo talis formatio rara erat. Anno 1900 canonizatus, a Pio Papa XII anno 1950 patronus magistrorum proclamatus est, locum suum ut exemplar educatorum catholicorum toto orbe confirmans.

Memoria eius hodie missioni Ecclesiae in educatione catholica perseveranti urgenter loquitur, magistros, catechistas et communitates scholasticas hortans ut vocationem suam non meram instructionem sed participationem propriae pedagogiae amoris Christi aestiment, praesertim erga pueros pauperes, neglectos vel in marginibus positos.
$desc$),
('saint-stanislaus-bishop-and-martyr', 'Sanctus Stanislaus, Episcopus et Martyr', $desc$
Die undecima aprilis, tempore paschali, Ecclesia memoriam obligatoriam sancti Stanislai, episcopi Cracoviensis et martyris, celebrat, festum cuius dies et gradus perennem momentum fortitudinis episcopalis etiam inter gaudia Resurrectionis affirmant. Memoria eius obligatoria historiam contentionis et mortis plane in celebratione Ecclesiae de triumpho Christi super mortem collocat.

Substantia theologica huius festi est martyrium episcopi qui coram iniustitia tacere noluit: vocatus ut ordinem moralem Ecclesiae creditum custodiret, Stanislaus potestati regiae, cum iustitiam conculcaret, restitit, et hanc fidelitatem vita persolvit. Eius testimonium proclamat auctoritatem pastoris a munere veritatem potestati dicendi separari non posse, quocumque pretio.

Episcopus Cracoviensis in Polonia saeculi undecimi, Stanislaus cum rege Boleslao Secundo de abusibus eius dissensit, et, ut traditio narrat, manu vel iussu regis ipsius anno 1079 occisus est. Cultus eius inter populum Polonum celeriter crevit, et Innocentius Papa IV eum anno 1253 canonizavit, Stanislaum figuram centralem identitatis nationalis et ecclesialis Polonorum constituens.

Memoria eius episcopos omnesque auctoritatem moralem exercentes ad resistendum compromissioni cum iniustitia inspirare pergit, et fideles, praesertim in Polonia et per Europam Centralem, commonet fidelitatem conscientiae et Evangelio summum pretium exigere posse, dum fructuosissimum Ecclesiae testimonium affert.
$desc$),
('saint-martin-i-pope-and-martyr', 'Sanctus Martinus Primus, Papa et Martyr', $desc$
Memoria ad libitum sancti Martini Primi, papae et martyris, die tertia decima aprilis occurrit, plerumque tempore paschali, honorans ultimum episcopum Romanum qui ut martyr veneratur, distinctio quae huic festo pondus peculiare confert inter longam seriem commemorationum papalium per calendarium dispersarum.

Theologice, memoria in fidelitate ad fidem orthodoxam coram pressione imperiali sistit: Martinus Concilium Lateranense anno 649 convocavit ut Monothelitismum damnaret, plenam humanitatem voluntatis Christi contra haeresim aulae Byzantinae faventem defendens. Eius testimonium affirmat successorem Petri munus ferre integritatem fidei custodiendi, etiam cum id iram potestatis mundanae provocet.

Ob hanc orthodoxiae defensionem, Constans Imperator Secundus Martinum comprehendi, iudicio ignominioso subici et in Chersonesum Tauricam exsilio mitti fecit, ubi papa anno 655 duritiis captivitatis mortuus est, martyrium verum persecutionis et neglectus potius quam directae executionis. Memoria eius praesertim in Ecclesiis Orientalibus perstitit antequam firmiter in commemorationem liturgicam Romanam intraret.

Hodie sanctus Martinus Primus commonet fidelitatem veritati revelatae etiam in summis Ecclesiae muneribus care constare posse, fideles hortans, praesertim eos qui auctoritatem docendi exercent, ut sanam doctrinam fortiter, patienter et fiducia in Providentiam inter pressiones politicas et culturales firmiter teneant.
$desc$),
('saint-anselm-bishop-and-doctor-of-the-church', 'Sanctus Anselmus, Episcopus et Ecclesiae Doctor', $desc$
Die vicesima prima aprilis, plerumque tempore paschali, memoria ad libitum sancti Anselmi, archiepiscopi Cantuariensis et Ecclesiae doctoris, celebratur, honorans unum ex magnis architectis theologiae medii aevi, comitem aptum meditationi paschali Ecclesiae de rationabilitate et profunditate mysterii redemptionis.

Cor theologicum huius festi est persuasio programmatica Anselmi, fides quaerens intellectum: ratio, gratia illustrata, fidei non adversatur sed eam profundius penetrare quaerit. Eius meditationes de necessitate Incarnationis et Redemptionis in opere Cur Deus Homo, eiusque argumenta contemplativa de Dei existentia, theologiam exemplificant ex oratione natam et ad cultum iterum directam.

Monachus Benedictinus Becci qui archiepiscopus Cantuariensis factus est, Anselmus bis exsilium passus est ob libertatem Ecclesiae contra regiam intrusionem defendendam durante controversiis investiturarum sui temporis, intellectum rigorosum cum fortitudine pastorali coniungens. Clemens Papa XI eum Ecclesiae doctorem anno 1720 proclamavit, hereditatem agnoscens quae methodum scholasticam per saecula postea formavit.

Aetate saepe oppositione inter fidem et rationem notata, memoria Anselmi credentes, eruditos et pastores pariter vocat ut theologiam ut inquisitionem contemplativam simul et rigorosam Dei iam crediti et amati redintegrent, ostendens profundissimam cogitationem et profundissimam orationem numquam separandas esse.
$desc$),
('saint-george-martyr', 'Sanctus Georgius, Martyr', $desc$
Memoria ad libitum sancti Georgii, martyris, die vicesima tertia aprilis tempore paschali celebrata, unum ex venerabilissimis et latissime diffusis cultibus antiquae Ecclesiae honorat, militem-martyrem cuius antiquum festum culturas et saecula transgressum est ut imago vivida fortitudinis christianae maneat.

Theologice, hoc festum imprimis martyrium ut supremum fidei testimonium celebrat: confessio Christi a Georgio usque ad sanguinem proclamat nullam potestatem terrenam, quantumvis magnam, credentem ad Dominum abnegandum cogere posse. Fabula posterior de dracone, licet historica non sit, eandem veritatem symbolice cristallizat, martyrem repraesentans qui, per fidem, vires mali pro auxilio egentibus superat.

Pauca de Georgio historice confirmari possunt praeter eius martyrium, verisimiliter initio saeculi quarti, at devotio erga eum extraordinaria celeritate per Orientem Occidentemque christianum diffusa est, tempore Cruciatarum intensificata, eumque patronum multarum nationum, urbium et ordinum equestrium reddidit, ab Anglia ad Georgiam et Cataloniam.

Sanctus Georgius hodie militibus, exploratoribus omnibusque vocationes difficiles vel periculosas subeuntibus figura vehemens manet, fideles commonens fortitudinem christianam non meram audaciam esse sed fidelitatem Christo quae ne coram ferocissimis quidem mundi potestatibus vacillat.
$desc$),
('saint-adalbert-bishop-and-martyr', 'Sanctus Adalbertus, Episcopus et Martyr', $desc$
Diem vicesimam tertiam aprilis cum sancto Georgio tempore paschali communicans, memoria ad libitum sancti Adalberti, episcopi et martyris, indefessum episcopum missionarium Europae Centralis commemorat, cuius festum expansionem Ecclesiae inter populos Slavicos et Baltos saeculo decimo illustrat.

In centro theologico huius memoriae stat vocatio missionaria ut martyrium in potentia intellecta: ministerium episcopale Adalberti, repetitis reversionibus et tandem morte violenta inter Prussos praedicantis notatum, illustrat evangelizationem numquam meram rationem esse sed participationem ipsius doni sui Christi, oblatam etiam cum messis exigua vel resistens videatur.

Episcopus Pragensis, Adalbertus bis sedem suam reliquit, resistentia gregis sui deiectus, et se in missione ad Hungariam, Poloniam et tandem Prussos paganos impendit, inter quos anno 997 occisus est. Reliquiae eius, a Boleslao Duce Poloniae redemptae, punctum focale incrementi Ecclesiae in regione factae sunt, cultusque eius per Bohemiam, Poloniam et Hungariam celeriter diffusus est.

Memoria eius perseverantiam missionariam coram desperatione inspirare pergit, patronum Europae Centrali et exemplar omnibus in difficilibus missionis agris laborantibus offerens, ubi fructus visibilis tarde apparet, cuius tamen sacrificium tandem Ecclesiam aedificat.
$desc$),
('saint-fidelis-of-sigmaringen-priest-and-martyr', 'Sanctus Fidelis a Sigmaringen, Presbyter et Martyr', $desc$
Memoria ad libitum sancti Fidelis a Sigmaringen, presbyteri et martyris, die vicesima quarta aprilis tempore paschali servata, fratrem Capuccinum honorat cuius mors durante certaminibus confessionalibus post Reformationem constituta Ecclesiae adhaesionem pretiosam ad unitatem in veritate testatur.

Theologice, hoc festum in martyrio pro integritate et unitate fidei catholicae tempore acerbae divisionis religiosae sustento sistit: mors Fidelis non propter se ipsam quaesita est, sed ex eius intrepida praedicatione doctrinae catholicae inter populum hostilem orta, persuasionem incarnans caritatem erga eos qui in errore sunt fidelitatem veritati revelatae nec debere nec posse diluere.

Iurisconsultus doctus qui carrierae iuridicae promissivae pro paupertate Capuccina renuntiavit, Fidelis missus est ut inter populos Calvinianos in Helvetia praedicaret et catechismum doceret, parte missionis Contrareformationis Congregationis de Propaganda Fide, et a turba hostili anno 1622 occisus est, primus martyr illius Congregationis factus; Benedictus Papa XIV eum anno 1746 canonizavit.

Memoria eius hodie missionariis, iurisconsultis omnibusque in delicato opere dialogi et evangelizationis inter divisionem occupatis loquitur, fideles vocans ut firmam claritatem doctrinalem cum germana caritate coniungant, confisi fidelitatem veritati, etiam cum hostilitatem provocet, actum amoris manere.
$desc$),
('saint-mark-evangelist', 'Sanctus Marcus, Evangelista', $desc$
Die vicesima quinta aprilis gradu Festi celebrata, dignitate superiore memoriis eam circumdantibus, celebratio sancti Marci, evangelistae, intra tempus paschale eminet ut commemoratio maior unum ex quattuor auctoribus inspiratis Evangelii honorans, interdum ordinationem exigens cum octavam paschalem coincidat.

In corde theologico huius festi Evangelium ipsum iacet: narratio Marci brevis et urgens, verbis "initium Evangelii Iesu Christi, Filii Dei" incipiens, Christum proclamat eum cuius facta et passio, tempore reali, irruptionem regni Dei revelant, auditores ad fidem immediatam et discipulatum potius quam ad meditationem seiunctam invitans.

Traditione comes Petri et Pauli et conditor Ecclesiae Alexandrinae habitus, auctoritas et authenticitas apostolica Marci ab antiqua Ecclesia diu agnita est; reliquiae eius, saeculo nono Venetias allatae, eum patronum illius urbis fecerunt, et dies festi cum antiqua observatione Romana Rogationum Maiorum coincidit, postea in diem orationis pro messibus christianizata.

Festum hodie aestimationem Evangelii ut proclamationis vivae potius quam meri documenti renovat, praedicatores, evangelizatores omnesque fideles hortans ut Bonum Nuntium eadem urgentia et claritate quae Evangelium ipsius Marci notant recipiant et transmittant, symbolum eius perenne, leonem, ut imaginem fidei audacis et vigilantis honorans.
$desc$),
('saint-peter-chanel-priest-and-martyr', 'Sanctus Petrus Chanel, Presbyter et Martyr', $desc$
Die vicesima octava aprilis, tempore paschali, Ecclesia memoriam ad libitum sancti Petri Chanel, presbyteri et martyris, primi martyris Oceaniae, honorat, cuius festum vocationem missionariam universalem Ecclesiae vivide in annum liturgicum inscribit.

Theologice, haec memoria fecunditatem martyrii missionarii proclamat: mors Petri, longe a fine apostolatus eius, in intellectu Ecclesiae ipsum semen facta est ex quo fides in insula ubi mortuus est floruit, antiquam persuasionem incarnans sanguinem martyrum semen esse christianorum, etiam in novissimis territoriis missionis.

Sacerdos missionarius Maristarum, Petrus Chanel ad insulam Pacificam Futunae anno 1837 pervenit, per annos parvo fructu visibili et hostilitate locali crescente laborans, donec anno 1841 occisus est, ut fertur, instigatione principis cuius filius proprius conversione minabatur; intra paucos annos post mortem eius, tota insula ad fidem catholicam conversa est, et Petrus anno 1954 canonizatus est.

Memoria eius hodie patrocinium et incitamentum missionariis per Oceaniam aliasque regiones praebet, commonens defectum apparentem operis missionarii semina extraordinarii incrementi futuri celare posse, et perseverantiam in caritate et praedicatione, etiam sine fructibus immediatis, in consilio Dei summe fecundam manere.
$desc$),
('saint-louis-grignon-de-montfort-priest', 'Sanctus Ludovicus Maria Grignion de Montfort, Presbyter', $desc$
Diem vicesimam octavam aprilis tempore paschali communicans, memoria ad libitum sancti Ludovici Mariae Grignion de Montfort, presbyteri, missionarium indefessum et scriptorem spiritualem honorat cuius doctrina mariana devotionem catholicam per saecula formavit, eum iuxta Petrum Chanel ut alterum praeconem expansionis Evangelii collocans.

In corde theologico huius festi doctrina totalis consecrationis Iesu per Mariam stat: Montfort docuit Mariam, discipulam perfectam et matrem redemptorum, Christum in animabus quae se ei committunt certissime et celerrime formare, doctrina quae devotionem marianam firmiter intra fidem christocentricam, non extra eam, collocat.

Praedicator itinerans missionum per occidentalem Galliam initio saeculi decimi octavi, Montfort oppositiones, paupertatem et etiam insidias in vitam suam passus est, opera tamen perennia composuit, praesertim Tractatum de Vera Devotione erga Beatam Virginem, quod postea magnos motus spiritualitatis catholicae influxit; anno 1947 canonizatus est, doctrinaque eius mariana signum visibile in doctrina pontificia posteriore reliquit.

Memoria eius hodie fideles invitat ut consecrationem marianam authenticam ut viam ad profundiorem configurationem Christo redintegrent, praedicationem missionariam renovatam et pietatem popularem pariter fovens, et Ecclesiam commonens devotionem erga Mariam, recte intellectam, semper plenius ad Filium eius ducere.
$desc$),
('saint-catherine-of-siena-virgin-and-doctor-of-the-church', 'Sancta Catharina Senensis, Virgo et Ecclesiae Doctor', $desc$
Memoria obligatoria sanctae Catharinae Senensis, virginis et Ecclesiae doctoris, die vicesima nona aprilis tempore paschali celebrata, copatronam Europae et patronam Italiae honorat, gradus qui singularem eius momentum inter mysticos et doctores Ecclesiae reflectit, unamque ex paucissimis mulieribus titulo doctoris donatis.

Theologice, festum in visione mystica et ecclesiali in corde doctrinae Catharinae sistit: unio cum Christo per contemplationem sanguinis eius amore effusi, et zelus correspondens pro unitate, reformatione et sanctitate Ecclesiae, expressus in celebri eius Dialogo et in indefessa correspondentia pacem, paenitentiam et fidelitatem Vicario Christi urgente.

Tertiaria Dominicana et laica Senae saeculi decimi quarti, Catharina vox influens in vita publica Ecclesiae facta est, celebriter Gregorium Papam Undecimum hortans ut papatum ab Avenione Romam reduceret; anno 1461 canonizata, Ecclesiae doctor a Paulo Papa Sexto anno 1970 declarata est, et postea patrona Italiae et copatrona Europae nominata.

Memoria eius hodie vocationi laicorum, praesertim mulierum, in missione Ecclesiae valide loquitur, et ipsi vocationi Europae ad unitatem in Evangelio radicatam, omnes credentes ad mixturam propriam Catharinae orationis contemplativae profundae et testimonii publici intrepidi pro bono Ecclesiae et societatis vocans.
$desc$),
('saint-pius-v-pope', 'Sanctus Pius Quintus, Papa', $desc$
Mensem die trigesima aprilis tempore paschali claudens, memoria ad libitum sancti Pii Quinti, papae, pontificem Dominicanum honorat qui Ecclesiam per opus exigens applicationis Concilii Tridentini duxit, nota apta qua mensis memoriis reformatorum, martyrum et doctorum dives concludatur.

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
The optional memorial of Saint Joseph the Worker is kept on 1 May, ordinarily falling within the Fifth Week of Easter. Because it is optional, it may replace the Easter feria at the priest's discretion, allowing the Church, in the very heart of the Paschal season, to pause and contemplate the hidden, laborious life of the foster-father of the Lord. Its date was deliberately chosen to coincide with a day already invested with civil meaning throughout the modern world.

At the heart of this celebration lies the conviction that human work, however humble, is caught up in God's own creative and redemptive action. By laboring at the bench in Nazareth, Joseph sanctified ordinary toil and united it to the mystery of the Incarnation, since the Word himself was known among his neighbors as "the carpenter's son." The feast proclaims that no honest labor is beneath the dignity of a child of God, and that holiness is to be sought in fidelity to daily duty rather than in extraordinary deeds.

Pope Pius XII instituted this memorial in 1955, explicitly setting it on 1 May to offer Christian workers a supernatural counterpart to the international observances of that day, which had become associated with secular and sometimes anti-religious ideologies of labor. The 1969 calendar reform retained it as an optional memorial, distinct from the solemnity of Saint Joseph, Spouse of the Blessed Virgin Mary, kept on 19 March.

Today the feast invites the faithful to view their professional and domestic labor as a genuine path to sanctity, and to entrust to Joseph's intercession the unemployed, the exploited, and all who labor without recognition. It restores a properly Christian vision of work as vocation and service, tempering both the idolatry of productivity and the despair of meaningless toil.
$desc$),
('saint-athanasius-bishop-and-doctor-of-the-church', 'Saint Athanasius, Bishop and Doctor of the Church', $desc$
The obligatory memorial of Saint Athanasius of Alexandria is celebrated on 2 May, within the Paschal season, and honors a bishop and Doctor of the Church whose entire ministry was bound to the mystery being celebrated at this time of year: the divinity of the Risen Christ. His feast carries the rank of a memorial that must be observed, reflecting the Church's abiding gratitude for his defense of the apostolic faith.

Athanasius stood as the great champion of the Nicene faith against Arianism, insisting with theological precision that the Son is consubstantial with the Father, truly God from true God. His conviction, expressed above all in his treatise On the Incarnation, was that only if Christ is fully divine can he truly divinize humanity by his death and resurrection; a demoted Christ would leave the promise of salvation unfulfilled. The celebration of his memory during Eastertide underscores this very link between the Lord's divinity and the reality of our redemption.

Exiled five times from his see for his fidelity to Nicaea, Athanasius became proverbial for standing almost alone against the prevailing currents of his age, giving rise to the saying "Athanasius contra mundum." The Church recognized him early as a Doctor, and his memorial has held a stable place in the calendar since antiquity, a testimony to how central his witness was judged to be for the integrity of the Christian confession of faith.

His example continues to instruct believers on the cost of doctrinal fidelity and the patience required to uphold truth against fashionable error. In an age often tempted to dilute the mystery of Christ, Athanasius reminds the faithful that theological precision is not pedantry but a service of charity, safeguarding the very possibility of salvation that the Church proclaims at Easter.
$desc$),
('saints-philip-and-james-apostles', 'Saints Philip and James, Apostles', $desc$
The Feast of Saints Philip and James is celebrated on 3 May, a date chosen after the 1969 reform to avoid coincidence with the newly instituted memorial of Saint Joseph the Worker on 1 May, the day on which this feast had anciently been kept in Rome. As a feast, it ranks above an ordinary memorial, honoring two members of the apostolic college during the very season that commemorates the Resurrection they were sent to proclaim.

The liturgy joins these two apostles because their relics rest together in Rome, in the basilica dedicated to the Twelve Apostles, and because both bear witness to the foundational structure of the Church built upon the Twelve. Philip, who asked the Lord to "show us the Father" and received the reply that to see him is to see the Father, and James, traditionally identified with the "brother of the Lord" and first leader of the Jerusalem community, together represent the apostolic office as service of unity and transmission of revealed truth.

The joint commemoration goes back to the sixth-century dedication of the Roman basilica of the Twelve Apostles, where the remains of both were translated and enshrined. Kept for centuries on 1 May, the feast was moved to its current date in the reformed calendar so that the ancient civil and Josephine associations of May Day would not obscure the apostolic character of the celebration.

The feast invites the faithful to recognize in Philip and James models of that apostolic desire to see and know God fully, a longing Christ satisfies definitively in his Paschal victory. Their witness encourages the Church to persevere in handing on, undiminished, the faith received from the apostles, the foundation on which every subsequent generation of believers is built.
$desc$),
('saint-john-of-avila-priest-and-doctor-of-the-church', 'Saint John of Ávila, Priest and Doctor of the Church', $desc$
The optional memorial of Saint John of Ávila, priest and Doctor of the Church, is kept on 10 May, within the Easter season. Declared a Doctor of the Church by Pope Benedict XVI in 2012, he holds a place among the small number of priests, rather than bishops, granted this title, and his memorial allows the universal calendar to honor a distinctively pastoral and reforming voice of the Spanish Golden Age.

His theological legacy centers on the holiness of the ordained ministry and the formation of priests capable of authentic spiritual direction and preaching. John of Ávila taught that renewal of the Church begins with the interior conversion and doctrinal seriousness of her pastors, a conviction that shaped his writings on priestly life and his celebrated spiritual correspondence, through which he guided many souls, including future saints, toward deeper union with God.

Known as the "Apostle of Andalusia" for his tireless preaching throughout southern Spain in the sixteenth century, he influenced the reforming currents that would later find expression at the Council of Trent, particularly regarding seminaries and clerical formation. His inclusion in the general calendar reflects the universal Church's recognition, centuries later, of the enduring value of his teaching on priesthood and holiness.

His memorial today calls the faithful, and priests especially, to examine the quality of pastoral care and spiritual accompaniment offered to God's people. John of Ávila's insistence that doctrine and charity must never be separated remains a timely corrective wherever preaching risks becoming either dry erudition or sentiment without substance.
$desc$),
('saints-nereus-and-achilleus-martyrs', 'Saints Nereus and Achilleus, Martyrs', $desc$
The optional memorial of Saints Nereus and Achilleus is observed on 12 May, within the Easter season, honoring two Roman martyrs of the early Church whose cult is among the most ancient attested in the city of Rome. As an optional memorial, its celebration depends on pastoral judgment, yet it preserves the memory of witnesses whose fidelity unto death predates almost all surviving Christian literature about them.

Their commemoration underscores the martyr's participation in the Paschal mystery: by their death these Christians were configured to the dying and rising of Christ, and the Church has always read martyrdom as the supreme testimony that Christ's victory over death is real and communicable to his disciples. Celebrating such witnesses during Eastertide makes this theological connection especially vivid.

Ancient tradition, echoed in an epigram composed by Pope Saint Damasus I in the fourth century, associates Nereus and Achilleus with the imperial guard, converted to the faith and martyred for refusing to renounce Christ, and buried in the catacomb of Domitilla on the Via Ardeatina, where a basilica was later raised in their honor. Their names have remained in the Roman liturgical books since antiquity.

Though little of their story survives beyond this ancient veneration, their commemoration reminds contemporary believers that fidelity to Christ has always required, for some, the total gift of life itself, and that the Church treasures every witness, however sparse the record, who sealed the Gospel with blood.
$desc$),
('saint-pancras-martyr', 'Saint Pancras, Martyr', $desc$
Saint Pancras is commemorated on 12 May, sharing the day with Saints Nereus and Achilleus in the optional memorials of the Easter season. This proximity in the calendar reflects the common Roman origin of these early martyrs, whose feasts were fixed in the liturgical books of the city long before the modern reforms and have been retained as optional celebrations open to local devotion.

His memory keeps before the Church the mystery of martyrdom borne by the very young, since ancient tradition holds that Pancras suffered death for the faith while still a boy, not yet fifteen years old. The Church has always seen in such witnesses a particularly striking sign that grace can perfect nature at any age, and that fidelity to Christ, rather than years of experience, is what the Gospel ultimately asks of every disciple.

Buried on the Via Aurelia, where a basilica bearing his name was later built, Pancras became one of the most venerated Roman martyrs in the West, especially in England, where numerous churches were dedicated to him from the earliest centuries of Anglo-Saxon Christianity, a devotion connected to the Roman mission that evangelized that land.

His feast today speaks especially to the young, holding up the possibility of heroic fidelity to Christ regardless of age or worldly standing. It invites the whole Church to remember that the call to total self-gift is addressed to every baptized person, not reserved for a supposed spiritual maturity measured merely in years.
$desc$),
('our-lady-of-fatima', 'Our Lady of Fatima', $desc$
The optional memorial of Our Lady of Fatima falls on 13 May, within the Easter season, and was inscribed in the General Roman Calendar by Pope Francis in 2019, extending to the universal Church a devotion long observed locally and in many national calendars. Its date recalls the first of a series of apparitions reported in 1917 near Fátima, Portugal.

Theologically, the memorial situates itself within the Church's broader veneration of Mary as intercessor who directs attention toward her Son and toward conversion of heart. The message associated with Fátima insists on prayer, especially the Rosary, and on penance for sinners, themes entirely continuous with the Gospel call to conversion and with Mary's constant role, recognized by the Church, of leading the faithful to a deeper, more urgent following of Christ.

Devotion to Our Lady of Fátima grew rapidly through the twentieth century, receiving support from successive popes who visited the shrine and linked the message to the Church's prayer for peace, particularly during the turbulence of the World Wars and the Cold War. Its inclusion in the universal calendar reflects both its wide diffusion and the Church's careful, ongoing discernment regarding reported private revelations, which do not add to the deposit of faith but can illumine and encourage its living reception.

Celebrating this memorial today invites the faithful to renew practices of prayer and penance within ordinary Christian life, and to entrust to Mary's intercession the causes of peace and conversion that were at the heart of the reported message, always in continuity with, and subordinate to, the definitive revelation given in Christ.
$desc$),
('saint-matthias-apostle', 'Saint Matthias, Apostle', $desc$
The Feast of Saint Matthias is kept on 14 May, a date established by the 1969 calendar reform to move his celebration out of the Lenten season it had previously occupied and into the joy of Eastertide. As a feast, it ranks above an ordinary memorial, honoring a full member of the apostolic college during the very time that celebrates the Resurrection to which he was called to bear witness.

The Acts of the Apostles recounts how, after the Ascension, the community gathered in prayer and, discerning between two candidates, cast lots to determine whom the Lord had chosen to complete the number of the Twelve after the fall of Judas. The choice of Matthias highlights a central theological point: apostleship is not a human achievement but a divine election, and the integrity of the Twelve as witnesses of the whole of Christ's ministry, from the baptism of John to the Resurrection, was considered essential to the Church's foundation.

Little else is recorded of Matthias in the New Testament, and later traditions about his missionary activity and death vary considerably, none possessing strong historical certainty. Nevertheless, his feast has held a stable place in the Roman calendar since antiquity, valued precisely for what it signifies about the structure of apostolic authority rather than for a developed narrative of his life.

His feast reminds the Church today that ministry within her is always a response to a call that precedes and exceeds personal merit, and that the community's discernment, joined to prayer, remains the proper context in which such vocations are recognized and confirmed.
$desc$),
('saint-john-i-pope-and-martyr', 'Saint John I, Pope and Martyr', $desc$
The optional memorial of Saint John I, pope and martyr, is observed on 18 May, within the Easter season, commemorating a sixth-century successor of Peter whose pontificate ended in imprisonment and death. His inclusion among the optional memorials allows the Church to honor a pope whose sufferings, though occasioned by political circumstance, have long been read in the light of Christian martyrdom.

His commemoration highlights the particular vocation of the Bishop of Rome to guard the unity and orthodoxy of the faith, sometimes at the cost of his own liberty and life. Sent unwillingly on a diplomatic mission to Constantinople by the Arian king Theodoric, John found himself caught between imperial politics and his duty to the Catholic faith, and his death in captivity has been understood by the tradition as a form of witness rendered for the sake of the Church's fidelity to orthodox teaching.

Historical sources record that John I, elected pope in 523, was compelled to negotiate with the Byzantine emperor on behalf of Arian interests in the West; upon his return, suspected of disloyalty, he was imprisoned at Ravenna, where he died shortly afterward. He was buried in Rome and soon venerated as a martyr, his name entering the ancient liturgical books of the city.

His memorial invites reflection today on the burdens sometimes carried by those who exercise authority in the Church amid conflicting political pressures, and on the fidelity owed to the truth of the Gospel even when it entails suffering rather than worldly success.
$desc$),
('saint-bernardine-of-siena-priest', 'Saint Bernardine of Siena, Priest', $desc$
The optional memorial of Saint Bernardine of Siena is kept on 20 May, within the Easter season, honoring a fifteenth-century Franciscan priest renowned above all for his preaching and for having spread a particular devotion to the Holy Name of Jesus throughout Italy. His memorial, while not obligatory, has long enjoyed wide observance, especially among Franciscan communities.

At the heart of his spiritual teaching lies devotion to the Name of Jesus, which Bernardine promoted through the symbol of the monogram "IHS" set within a blazing sun, insisting that in this Name alone is offered the salvation and peace for which human hearts long. This devotion was never merely decorative for him: it expressed the conviction that the whole of Christian life, personal and social, must be ordered to Christ and reformed according to the Gospel he proclaims.

A tireless itinerant preacher across the cities of Italy, Bernardine addressed not only individual conversion but also civic and economic abuses of his day, seeking to reconcile warring factions and to correct unjust practices in commerce. Twice offered episcopal office, he declined it to continue his preaching mission, and his renown as one of the great popular preachers of the late Middle Ages secured him swift canonization and lasting devotion.

His example today encourages preachers and the whole Church to trust in the transforming power of the Name of Jesus, proclaimed with clarity and zeal, and to see authentic evangelization as inseparable from concern for justice and reconciliation within society.
$desc$),
('saint-christopher-magallanes-priest-and-companions-martyrs', 'Saint Christopher Magallanes, Priest, and Companions, Martyrs', $desc$
The optional memorial of Saint Christopher Magallanes, priest, and his companion martyrs is kept on 21 May, within the Easter season, commemorating twenty-five priests and three laymen put to death in Mexico during the anti-Catholic persecution of the early twentieth century. Their joint celebration situates recent martyrdom within the same Paschal light that illumines the ancient martyrs remembered elsewhere in this month.

Their witness proclaims that fidelity to the Eucharist and to priestly ministry can still demand, in the modern era no less than in antiquity, the total gift of one's life. Christopher Magallanes and his companions were killed precisely for continuing to celebrate the sacraments and instruct the faithful in defiance of laws seeking to suppress the public exercise of the Catholic faith, making their deaths a direct configuration to Christ's own self-offering.

These martyrs died between 1915 and 1937, most during the Cristero conflict that followed the anticlerical legislation of the Mexican government, and were canonized together by Pope John Paul II in 2000 as representative of a much larger number who suffered similarly during that period. Their inclusion in the general calendar extended to the universal Church a devotion previously concentrated in Mexico.

Their memory calls believers today to recognize that religious liberty and the right to worship remain, in various parts of the world, causes for which Christians still suffer, and it summons the Church to solidarity with those who currently endure persecution for the sake of the Gospel.
$desc$),
('saint-rita-of-cascia-religious', 'Saint Rita of Cascia, Religious', $desc$
The optional memorial of Saint Rita of Cascia is observed on 22 May, within the Easter season, honoring an Augustinian religious of fifteenth-century Umbria whose life passed through the states of wife, mother, widow, and consecrated religious before her death. Her memorial, though optional, enjoys widespread popular devotion, particularly among those facing situations judged humanly desperate.

The theological center of her cult lies in the configuration of her suffering to the Passion of Christ, symbolized by the tradition of a wound resembling that of the Crown of Thorns, which she is said to have received while meditating on the Lord's suffering. Her life illustrates how apparently ordinary and painful circumstances, a difficult marriage, the loss of children, endured in union with Christ, can become a genuine path of sanctification rather than an obstacle to it.

After the death of her husband and sons, Rita sought entrance into the Augustinian monastery of Cascia, where she lived a hidden life of prayer and penance for decades. Devotion to her grew steadily after her death, and she came to be invoked especially by those facing situations described as impossible or desperate, a title now inseparable from her name in popular piety.

Her feast today speaks powerfully to those enduring difficult marriages, family losses, or apparently hopeless situations, holding before them the example of a woman who found in Christ's Passion the strength to transform suffering into intercession and hope rather than despair.
$desc$),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', 'Saint Bede the Venerable, Priest and Doctor of the Church', $desc$
The optional memorial of Saint Bede the Venerable is kept on 25 May, within the Easter season, honoring the only Englishman ever declared a Doctor of the Church, a title granted him by Pope Leo XIII in 1899. His memorial, one of three optional celebrations proper to this date in the calendar, commends a monk whose scholarship served the Church's understanding of Scripture and her own history.

Bede's theological significance rests chiefly on his work as an exegete who transmitted and synthesized the patristic tradition of biblical commentary for the Latin West, always joining careful textual scholarship to a concern for the spiritual and moral edification of his readers. He understood historical and scientific inquiry, including his celebrated work on the computation of Easter, as wholly compatible with, and indeed placed at the service of, the Church's life of faith and worship.

Spending nearly his entire life within the monastery of Jarrow in Northumbria, Bede produced a vast body of biblical commentary alongside his renowned Ecclesiastical History of the English People, the principal source for the early history of Christianity in England, earning him during his lifetime already the epithet "Venerable" for his learning and holiness.

His example today commends the vocation of Christian scholarship exercised in humility and stability, reminding the Church that patient study of Scripture and careful attention to her own history remain genuine forms of service to the faith, not distractions from the contemplative and pastoral life.
$desc$),
('saint-gregory-vii-pope', 'Saint Gregory VII, Pope', $desc$
The optional memorial of Saint Gregory VII is kept on 25 May, within the Easter season, one of three optional celebrations assigned to this date, honoring an eleventh-century pope remembered chiefly for the sweeping reform of Church discipline and life that bears his name. His memorial recalls a pontificate marked by conflict undertaken for the sake of the Church's spiritual freedom.

At the heart of the Gregorian Reform lay the conviction that the Church's holiness and mission require freedom from improper secular control, expressed concretely in opposition to simony, the buying and selling of ecclesiastical office, to clerical incontinence, and to lay investiture, the practice by which secular rulers appointed bishops and abbots. Gregory understood these struggles as inseparable from fidelity to the Gospel itself, believing that a Church entangled in worldly power could not credibly proclaim Christ.

His pontificate, beginning in 1073, brought him into direct conflict with Emperor Henry IV over the right to invest bishops, a struggle that included Henry's dramatic penance at Canossa in 1077 yet ended in continued strife and Gregory's own exile from Rome. He died in Salerno in 1085, reportedly declaring, "I have loved justice and hated iniquity, therefore I die in exile," words that later shaped his reputation as a pope who suffered for reform.

His memory today invites reflection on the enduring need for the Church's institutional life to remain subordinate to her spiritual mission, and on the courage required of those who labor for reform even when it brings personal cost and lasting controversy.
$desc$),
('saint-mary-magdalene-de-pazzi-virgin', 'Saint Mary Magdalene de'' Pazzi, Virgin', $desc$
The optional memorial of Saint Mary Magdalene de' Pazzi is kept on 25 May, within the Easter season, one of three optional celebrations proper to this date, honoring a sixteenth-century Florentine Carmelite renowned for the depth of her mystical experience of union with God. Her memorial invites the Church to contemplate, in the joy of Eastertide, a life given wholly to interior communion with Christ.

Her spiritual doctrine centers on the transforming power of divine love, experienced by her in states of ecstasy during which she spoke of the Trinity, the Passion, and the Church with an intensity later recorded by the sisters who attended her. Far from being merely extraordinary phenomena, these experiences were understood by the tradition as manifestations of a soul so thoroughly conformed to Christ that ordinary modes of prayer and speech became, at times, insufficient vessels for what she perceived of God's love.

Entering the Carmelite monastery of Santa Maria degli Angeli in Florence as a young woman, Mary Magdalene de' Pazzi lived a hidden religious life marked by long periods of both mystical consolation and profound spiritual trial, her utterances during ecstasy carefully transcribed by her community and later published, securing her lasting reputation among the great mystics of the Counter-Reformation era.

Her feast today commends to the faithful the value of interior prayer and contemplative silence as authentic paths of holiness, reminding a world often suspicious of mysticism that the deepest human vocation is union with God, a union the Church already begins to taste in every celebration of the Paschal mystery.
$desc$),
('saint-philip-neri-priest', 'Saint Philip Neri, Priest', $desc$
The obligatory memorial of Saint Philip Neri is kept on 26 May, within the Easter season, honoring the founder of the Congregation of the Oratory, whose feast holds a rank requiring observance throughout the Roman Rite. Its placement in the joyful weeks after Easter fittingly accompanies a saint whose spirituality was itself marked by an unusual and evangelical joy.

Philip's theological legacy is above all a witness that holiness and joy are not opposed but mutually confirming, since union with the Risen Christ liberates rather than diminishes the human person. He insisted on humility, simplicity, and cheerfulness as ordinary paths to sanctity, opposing any spirituality of rigid gloom, and placed frequent confession and reception of the Eucharist at the center of Christian life, together with informal gatherings for prayer, music, and instruction that gave his Oratory its distinctive character.

Active in Rome for six decades in the sixteenth century, Philip became known as the "Apostle of Rome" for his tireless pastoral care of the city's youth, the poor, and pilgrims, and for gathering companions who would formalize his method of life into the Congregation of the Oratory, subsequently approved by the Holy See and spread throughout the world.

His feast today encourages a vision of Christian discipleship marked by cheerful humility rather than anxious severity, and it commends particularly the ministries of confession, spiritual friendship, and the patient accompaniment of the young as ordinary yet powerful means of leading souls to Christ.
$desc$),
('saint-augustine-of-canterbury-bishop', 'Saint Augustine of Canterbury, Bishop', $desc$
The optional memorial of Saint Augustine of Canterbury is kept on 27 May, within the Easter season, honoring the Benedictine monk sent from Rome to evangelize Anglo-Saxon England and who became the first Archbishop of Canterbury. His memorial situates the founding of English Christianity within the same season that celebrates the Church's mission to proclaim the Resurrection to every nation.

His mission embodies the theological principle that the Gospel must be carried by the Church, in the concrete form of sent missionaries bearing apostolic authority, to peoples who have not yet received it, and that the planting of a local church must remain in living communion with the See of Peter. Augustine's success in establishing a stable ecclesial structure in Kent, rather than merely individual conversions, reflects this concern for continuity and communion.

Sent in 596 by Pope Saint Gregory the Great at the head of some forty monks, Augustine landed in Kent in 597, was welcomed by King Ethelbert, whom he baptized along with many of his subjects, and established his episcopal see at Canterbury, from which Christianity subsequently spread through much of England, earning him the title "Apostle of the English."

His feast today recalls the missionary origin of every local church and encourages the faithful to value ecclesial communion with the wider Church, particularly with the Bishop of Rome, as an essential rather than incidental feature of the Gospel's transmission across cultures and centuries.
$desc$),
('saint-paul-vi-pope', 'Saint Paul VI, Pope', $desc$
The optional memorial of Saint Paul VI is kept on 29 May, within the Easter season, honoring the pope who guided the Church through the concluding sessions of the Second Vatican Council and the demanding years of its early implementation. His memorial situates his witness within the season that celebrates the ongoing renewal the Council itself sought to serve.

His pontificate is theologically significant above all for its fidelity in receiving and applying the Council's teaching, holding together continuity with tradition and genuine renewal, particularly in the reform of the liturgy, the Church's engagement with the modern world, and her missionary self-understanding as articulated in his exhortation on evangelization. His encyclical on the transmission of life, defending the inseparable connection between the unitive and procreative meanings of the conjugal act, proved especially consequential and, at the time, deeply contested.

Elected in 1963 following the death of Saint John XXIII, Paul VI closed the Council in 1965 and spent the following thirteen years guiding its reception, becoming the first pope in centuries to travel widely outside Italy, including to the United Nations, the Holy Land, and several continents, in journeys undertaken as gestures of the Gospel's universal reach. He was canonized by Pope Francis in 2018.

His memorial today invites reflection on the labor of faithfully translating conciliar teaching into the concrete life of the Church, and on the courage required to uphold unpopular but coherent moral teaching amid intense cultural pressure to abandon it.
$desc$),
('the-visitation-of-the-blessed-virgin-mary', 'The Visitation of the Blessed Virgin Mary', $desc$
The Feast of the Visitation of the Blessed Virgin Mary is celebrated on 31 May, closing the month of May with a feast-rank celebration that recalls Mary's journey to her kinswoman Elizabeth. Its position at the very end of May, immediately before the Church resumes Ordinary Time or, in some years, enters more directly into early June's calendar, situates the mystery of the Visitation as a fitting culmination of the month traditionally devoted to Mary.

The Gospel of Luke recounts how Mary, having conceived the Word made flesh, went in haste to Elizabeth, who greeted her as "the mother of my Lord" while the child John leapt in her womb, and how Mary responded with the Magnificat, her hymn proclaiming God's mercy and the reversal he works on behalf of the lowly. The feast celebrates Mary as the first bearer of Christ to another, the model of every believer sent to communicate the joy of his presence, and it affirms, through Elizabeth's greeting, the full humanity and divine identity of the child Mary carries from the moment of conception.

The feast originated in the thirteenth century among the Franciscans and was extended to the universal Church in 1389 by Pope Urban VI, who hoped that increased devotion to Mary would hasten the healing of the Western Schism; kept for centuries on 2 July, it was moved in the 1969 calendar reform to 31 May so as to fall, with proper chronological sense, between the Annunciation on 25 March and the Nativity of Saint John the Baptist on 24 June.

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
La mémoire facultative de saint Joseph artisan est célébrée le 1er mai, tombant ordinairement dans la cinquième semaine de Pâques. Étant facultative, elle peut remplacer la férie pascale au jugement du célébrant, permettant à l'Église, au cœur même du temps pascal, de contempler la vie cachée et laborieuse du père nourricier du Seigneur. Sa date fut choisie délibérément pour coïncider avec un jour déjà investi, dans le monde moderne, d'une signification civile particulière.

Au centre de cette célébration se trouve la conviction que le travail humain, si modeste soit-il, est associé à l'action créatrice et rédemptrice de Dieu lui-même. En travaillant à l'établi de Nazareth, Joseph a sanctifié le labeur ordinaire et l'a uni au mystère de l'Incarnation, puisque le Verbe lui-même était connu de ses voisins comme « le fils du charpentier ». La fête proclame qu'aucun travail honnête n'est indigne d'un enfant de Dieu, et que la sainteté se cherche dans la fidélité au devoir quotidien plutôt que dans des actions extraordinaires.

Le pape Pie XII institua cette mémoire en 1955, la fixant explicitement au 1er mai afin d'offrir aux travailleurs chrétiens un pendant surnaturel aux célébrations internationales de ce jour, alors associées à des idéologies séculières et parfois antireligieuses du travail. La réforme du calendrier de 1969 la maintint comme mémoire facultative, distincte de la solennité de saint Joseph, époux de la Bienheureuse Vierge Marie, célébrée le 19 mars.

Aujourd'hui, cette fête invite les fidèles à considérer leur travail professionnel et domestique comme une véritable voie vers la sainteté, et à confier à l'intercession de Joseph les chômeurs, les travailleurs exploités et tous ceux qui peinent sans reconnaissance. Elle restaure une vision proprement chrétienne du travail comme vocation et service, tempérant à la fois l'idolâtrie de la productivité et le désespoir d'un labeur sans signification.
$desc$),
('saint-athanasius-bishop-and-doctor-of-the-church', 'Saint Athanase, évêque et docteur de l''Église', $desc$
La mémoire obligatoire de saint Athanase d'Alexandrie est célébrée le 2 mai, en plein temps pascal, honorant un évêque et docteur de l'Église dont tout le ministre fut lié au mystère célébré en cette saison liturgique : la divinité du Christ ressuscité. Sa fête porte le rang de mémoire à observer, reflet de la gratitude durable de l'Église pour sa défense de la foi apostolique.

Athanase fut le grand champion de la foi de Nicée contre l'arianisme, affirmant avec précision théologique que le Fils est consubstantiel au Père, vrai Dieu de vrai Dieu. Sa conviction, exprimée surtout dans son traité Sur l'Incarnation, était que seul un Christ pleinement divin peut réellement diviniser l'humanité par sa mort et sa résurrection ; un Christ diminué laisserait la promesse du salut inaccomplie. Célébrer sa mémoire en temps pascal souligne précisément ce lien entre la divinité du Seigneur et la réalité de notre rédemption.

Exilé cinq fois de son siège pour sa fidélité à Nicée, Athanase devint proverbial pour s'être tenu presque seul contre les courants dominants de son époque, donnant naissance à l'expression « Athanasius contra mundum ». L'Église le reconnut tôt comme docteur, et sa mémoire occupe depuis l'Antiquité une place stable dans le calendrier, témoignage de l'importance jugée centrale de son témoignage pour l'intégrité de la confession chrétienne de la foi.

Son exemple continue d'instruire les croyants sur le prix de la fidélité doctrinale et la patience nécessaire pour soutenir la vérité contre l'erreur à la mode. En une époque souvent tentée de diluer le mystère du Christ, Athanase rappelle aux fidèles que la précision théologique n'est pas pédanterie mais service de la charité, sauvegardant la possibilité même du salut que l'Église proclame à Pâques.
$desc$),
('saints-philip-and-james-apostles', 'Saints Philippe et Jacques, apôtres', $desc$
La fête des saints Philippe et Jacques est célébrée le 3 mai, date retenue après la réforme de 1969 pour éviter la coïncidence avec la mémoire nouvellement instituée de saint Joseph artisan le 1er mai, jour où cette fête était anciennement célébrée à Rome. En tant que fête, elle prime sur une mémoire ordinaire, honorant deux membres du collège apostolique en cette saison même qui commémore la Résurrection qu'ils furent envoyés proclamer.

La liturgie unit ces deux apôtres parce que leurs reliques reposent ensemble à Rome, dans la basilique dédiée aux Douze Apôtres, et parce que tous deux témoignent de la structure fondatrice de l'Église bâtie sur les Douze. Philippe, qui demanda au Seigneur de « montrer le Père » et reçut la réponse que le voir, lui, c'est voir le Père, et Jacques, traditionnellement identifié au « frère du Seigneur » et premier chef de la communauté de Jérusalem, représentent ensemble la charge apostolique comme service de l'unité et transmission de la vérité révélée.

Cette commémoration conjointe remonte à la dédicace, au VIe siècle, de la basilique romaine des Douze Apôtres, où les restes des deux apôtres furent translatés et déposés. Célébrée pendant des siècles le 1er mai, la fête fut déplacée à sa date actuelle dans le calendrier réformé afin que les anciennes associations civiles et joséphines du 1er mai n'obscurcissent pas le caractère apostolique de la célébration.

La fête invite les fidèles à reconnaître en Philippe et Jacques les modèles de ce désir apostolique de voir et de connaître Dieu pleinement, désir que le Christ comble définitivement dans sa victoire pascale. Leur témoignage encourage l'Église à persévérer dans la transmission intacte de la foi reçue des apôtres, fondement sur lequel se bâtit chaque génération suivante de croyants.
$desc$),
('saint-john-of-avila-priest-and-doctor-of-the-church', 'Saint Jean d''Avila, prêtre et docteur de l''Église', $desc$
La mémoire facultative de saint Jean d'Ávila, prêtre et docteur de l'Église, est célébrée le 10 mai, en temps pascal. Déclaré docteur de l'Église par le pape Benoît XVI en 2012, il compte parmi le petit nombre de prêtres, plutôt qu'évêques, ayant reçu ce titre, et sa mémoire permet au calendrier universel d'honorer une voix pastorale et réformatrice particulièrement marquante du Siècle d'or espagnol.

Son héritage théologique s'articule autour de la sainteté du ministre ordonné et de la formation de prêtres capables d'un authentique accompagnement spirituel et d'une prédication véritable. Jean d'Ávila enseignait que le renouveau de l'Église commence par la conversion intérieure et le sérieux doctrinal de ses pasteurs, conviction qui façonna ses écrits sur la vie sacerdotale et sa célèbre correspondance spirituelle, par laquelle il guida de nombreuses âmes, dont de futurs saints, vers une union plus profonde avec Dieu.

Connu comme « l'Apôtre de l'Andalousie » pour sa prédication inlassable à travers le sud de l'Espagne au XVIe siècle, il influença les courants réformateurs qui trouveraient plus tard expression au concile de Trente, notamment concernant les séminaires et la formation du clergé. Son inscription au calendrier général reflète la reconnaissance, par l'Église universelle, plusieurs siècles plus tard, de la valeur durable de son enseignement sur le sacerdoce et la sainteté.

Sa mémoire invite aujourd'hui à examiner la qualité de la sollicitude pastorale et de l'accompagnement spirituel offerts au peuple de Dieu. L'insistance de Jean d'Ávila sur le fait que doctrine et charité ne doivent jamais être séparées demeure un correctif opportun là où la prédication risque de devenir soit une érudition aride, soit un sentiment sans substance.
$desc$),
('saints-nereus-and-achilleus-martyrs', 'Saints Nérée et Achillée, martyrs', $desc$
La mémoire facultative des saints Nérée et Achillée est observée le 12 mai, en temps pascal, honorant deux martyrs romains de l'Église primitive dont le culte compte parmi les plus anciens attestés dans la ville de Rome. Mémoire facultative, sa célébration dépend du jugement pastoral, mais elle conserve le souvenir de témoins dont la fidélité jusqu'à la mort précède presque toute la littérature chrétienne conservée à leur sujet.

Leur commémoration souligne la participation du martyr au mystère pascal : par leur mort, ces chrétiens furent configurés à la mort et à la résurrection du Christ, et l'Église a toujours lu le martyre comme le témoignage suprême que la victoire du Christ sur la mort est réelle et communicable à ses disciples. Célébrer de tels témoins en temps pascal rend ce lien théologique particulièrement vivant.

Une tradition ancienne, reprise dans une épigramme composée par le pape saint Damase Ier au IVe siècle, associe Nérée et Achillée à la garde impériale, convertis à la foi et martyrisés pour avoir refusé de renier le Christ, puis ensevelis dans la catacombe de Domitille sur la Via Ardeatina, où une basilique fut plus tard élevée en leur honneur. Leurs noms figurent dans les livres liturgiques romains depuis l'Antiquité.

Bien que peu de leur histoire subsiste au-delà de cette vénération ancienne, leur commémoration rappelle aux croyants d'aujourd'hui que la fidélité au Christ a toujours exigé, pour certains, le don total de la vie elle-même, et que l'Église chérit chaque témoin, si maigre que soit le récit conservé, qui a scellé l'Évangile de son sang.
$desc$),
('saint-pancras-martyr', 'Saint Pancrace, martyr', $desc$
Saint Pancrace est commémoré le 12 mai, partageant le jour avec les saints Nérée et Achillée parmi les mémoires facultatives du temps pascal. Cette proximité dans le calendrier reflète l'origine romaine commune de ces martyrs de l'Église primitive, dont les fêtes furent fixées dans les livres liturgiques de la ville bien avant les réformes modernes et qui furent conservées comme célébrations facultatives, ouvertes à la dévotion locale.

Sa mémoire tient présent devant l'Église le mystère du martyre porté par les tout jeunes, puisque la tradition ancienne veut que Pancrace ait subi la mort pour la foi encore enfant, âgé de moins de quinze ans. L'Église a toujours vu dans de tels témoins un signe particulièrement frappant que la grâce peut parfaire la nature à tout âge, et que c'est la fidélité au Christ, plutôt que l'expérience accumulée par les années, que l'Évangile demande finalement à chaque disciple.

Enseveli sur la Via Aurelia, où fut plus tard élevée une basilique portant son nom, Pancrace devint l'un des martyrs romains les plus vénérés en Occident, en particulier en Angleterre, où de nombreuses églises lui furent dédiées dès les premiers siècles du christianisme anglo-saxon, dévotion liée à la mission romaine qui évangélisa cette terre.

Sa fête s'adresse aujourd'hui tout particulièrement aux jeunes, tenant devant eux la possibilité d'une fidélité héroïque au Christ, quels que soient l'âge ou la condition sociale. Elle invite toute l'Église à se souvenir que l'appel au don total de soi s'adresse à tout baptisé, et n'est réservé à aucune prétendue maturité spirituelle mesurée aux seules années.
$desc$),
('our-lady-of-fatima', 'Notre-Dame de Fatima', $desc$
La mémoire facultative de Notre-Dame de Fatima tombe le 13 mai, en temps pascal, et fut inscrite au calendrier romain général par le pape François en 2019, étendant à l'Église universelle une dévotion depuis longtemps observée localement et dans de nombreux calendriers nationaux. Sa date rappelle la première d'une série d'apparitions rapportées en 1917 près de Fatima, au Portugal.

Théologiquement, cette mémoire s'inscrit dans la vénération plus large que l'Église porte à Marie comme intercesseur qui oriente l'attention vers son Fils et vers la conversion du cœur. Le message associé à Fatima insiste sur la prière, en particulier le chapelet, et sur la pénitence pour les pécheurs, thèmes en pleine continuité avec l'appel évangélique à la conversion et avec le rôle constant de Marie, reconnu par l'Église, de conduire les fidèles à une suite plus profonde et plus urgente du Christ.

La dévotion à Notre-Dame de Fatima s'est répandue rapidement tout au long du XXe siècle, recevant le soutien de papes successifs qui visitèrent le sanctuaire et lièrent le message à la prière de l'Église pour la paix, en particulier durant les tourments des guerres mondiales et de la guerre froide. Son inclusion au calendrier universel reflète à la fois sa large diffusion et le discernement prudent et continu de l'Église concernant les révélations privées rapportées, lesquelles n'ajoutent rien au dépôt de la foi mais peuvent en éclairer et encourager la réception vivante.

Célébrer cette mémoire aujourd'hui invite les fidèles à renouveler les pratiques de prière et de pénitence dans la vie chrétienne ordinaire, et à confier à l'intercession de Marie les causes de la paix et de la conversion qui étaient au cœur du message rapporté, toujours en continuité avec la révélation définitive donnée dans le Christ, et lui demeurant subordonnées.
$desc$),
('saint-matthias-apostle', 'Saint Matthias, apôtre', $desc$
La fête de saint Matthias est célébrée le 14 mai, date établie par la réforme du calendrier de 1969 afin de déplacer sa célébration hors du temps du Carême qu'elle occupait auparavant, vers la joie du temps pascal. En tant que fête, elle prime sur une mémoire ordinaire, honorant un membre à part entière du collège apostolique en cette saison même qui célèbre la Résurrection dont il fut appelé à témoigner.

Les Actes des Apôtres rapportent comment, après l'Ascension, la communauté réunie en prière discerna entre deux candidats et tira au sort afin de déterminer celui que le Seigneur avait choisi pour compléter le nombre des Douze après la chute de Judas. Le choix de Matthias met en lumière un point théologique central : l'apostolat n'est pas une réussite humaine mais une élection divine, et l'intégrité des Douze comme témoins de tout le ministre du Christ, depuis le baptême de Jean jusqu'à la Résurrection, était jugée essentielle au fondement de l'Église.

Le Nouveau Testament rapporte peu d'autres détails sur Matthias, et les traditions ultérieures concernant son activité missionnaire et sa mort varient considérablement, sans certitude historique solide. Néanmoins, sa fête occupe depuis l'Antiquité une place stable dans le calendrier romain, valorisée précisément pour ce qu'elle signifie de la structure de l'autorité apostolique plutôt que pour un récit développé de sa vie.

Sa fête rappelle aujourd'hui à l'Église que le ministre en son sein est toujours une réponse à un appel qui précède et dépasse le mérite personnel, et que le discernement de la communauté, uni à la prière, demeure le cadre propre dans lequel de telles vocations sont reconnues et confirmées.
$desc$),
('saint-john-i-pope-and-martyr', 'Saint Jean Ier, pape et martyr', $desc$
La mémoire facultative de saint Jean Ier, pape et martyr, est observée le 18 mai, en temps pascal, commémorant un successeur de Pierre du VIe siècle dont le pontificat s'acheva par l'emprisonnement et la mort. Son inscription parmi les mémoires facultatives permet à l'Église d'honorer un pape dont les souffrances, bien que causées par les circonstances politiques, ont longtemps été lues à la lumière du martyre chrétien.

Sa commémoration met en lumière la vocation particulière de l'évêque de Rome à garder l'unité et l'orthodoxie de la foi, parfois au prix de sa propre liberté et de sa vie. Envoyé malgré lui en mission diplomatique à Constantinople par le roi arien Théodoric, Jean se trouva pris entre les enjeux politiques impériaux et son devoir envers la foi catholique, et sa mort en captivité a été comprise par la tradition comme une forme de témoignage rendu pour la fidélité de l'Église à l'enseignement orthodoxe.

Les sources historiques rapportent que Jean Ier, élu pape en 523, fut contraint de négocier avec l'empereur byzantin en faveur des intérêts ariens en Occident ; à son retour, suspecté de déloyauté, il fut emprisonné à Ravenne, où il mourut peu après. Il fut enseveli à Rome et vénéré rapidement comme martyr, son nom entrant dans les anciens livres liturgiques de la ville.

Sa mémoire invite aujourd'hui à réfléchir au fardeau parfois porté par ceux qui exercent l'autorité dans l'Église au milieu de pressions politiques contradictoires, et à la fidélité due à la vérité de l'Évangile même lorsqu'elle entraîne la souffrance plutôt que le succès mondain.
$desc$),
('saint-bernardine-of-siena-priest', 'Saint Bernardin de Sienne, prêtre', $desc$
La mémoire facultative de saint Bernardin de Sienne est célébrée le 20 mai, en temps pascal, honorant un prêtre franciscain du XVe siècle réputé surtout pour sa prédication et pour avoir répandu à travers l'Italie une dévotion particulière au saint Nom de Jésus. Sa mémoire, bien que non obligatoire, a longtemps joui d'une observance très répandue, notamment dans les communautés franciscaines.

Au cœur de son enseignement spirituel se trouve la dévotion au Nom de Jésus, que Bernardin promut par le symbole du monogramme « IHS » inscrit dans un soleil rayonnant, affirmant qu'en ce Nom seul sont offerts le salut et la paix auxquels aspirent les cœurs humains. Cette dévotion n'avait jamais pour lui un caractère simplement décoratif : elle exprimait la conviction que toute la vie chrétienne, personnelle et sociale, doit être ordonnée au Christ et réformée selon l'Évangile qu'il proclame.

Prédicateur itinérant infatigable à travers les villes d'Italie, Bernardin s'attaqua non seulement à la conversion individuelle mais aussi aux abus civiques et économiques de son temps, cherchant à réconcilier les factions rivales et à corriger les pratiques commerciales injustes. Offert par deux fois la charge épiscopale, il la déclina pour poursuivre sa mission de prédication, et sa renommée comme l'un des grands prédicateurs populaires de la fin du Moyen Âge lui valut une canonisation rapide et une dévotion durable.

Son exemple encourage aujourd'hui les prédicateurs et toute l'Église à faire confiance à la puissance transformatrice du Nom de Jésus, proclamé avec clarté et zèle, et à voir l'évangélisation authentique comme inséparable du souci de la justice et de la réconciliation au sein de la société.
$desc$),
('saint-christopher-magallanes-priest-and-companions-martyrs', 'Saint Christophe Magallanès, prêtre, et ses compagnons, martyrs', $desc$
La mémoire facultative de saint Christophe Magallanès, prêtre, et de ses compagnons martyrs, est célébrée le 21 mai, en temps pascal, commémorant vingt-cinq prêtres et trois laïcs mis à mort au Mexique durant la persécution anticatholique du début du XXe siècle. Leur célébration conjointe situe un martyre récent dans la même lumière pascale qui éclaire les martyrs anciens commémorés ailleurs en ce mois.

Leur témoignage proclame que la fidélité à l'Eucharistie et au ministre sacerdotal peut exiger encore, à l'époque moderne comme dans l'Antiquité, le don total de la vie. Christophe Magallanès et ses compagnons furent tués précisément pour avoir continué à célébrer les sacrements et à instruire les fidèles au mépris des lois cherchant à supprimer l'exercice public de la foi catholique, faisant de leur mort une configuration directe à l'offrande du Christ lui-même.

Ces martyrs moururent entre 1915 et 1937, la plupart durant le conflit cristero qui suivit la législation anticléricale du gouvernement mexicain, et furent canonisés ensemble par le pape Jean-Paul II en 2000, représentant un nombre bien plus grand de personnes ayant souffert de manière semblable durant cette période. Leur inscription au calendrier général a étendu à l'Église universelle une dévotion jusque-là concentrée au Mexique.

Leur mémoire appelle aujourd'hui les croyants à reconnaître que la liberté religieuse et le droit de rendre culte demeurent, en diverses régions du monde, des causes pour lesquelles des chrétiens souffrent encore, et elle appelle l'Église à la solidarité avec ceux qui subissent actuellement la persécution pour l'Évangile.
$desc$),
('saint-rita-of-cascia-religious', 'Sainte Rita de Cascia, religieuse', $desc$
La mémoire facultative de sainte Rita de Cascia est observée le 22 mai, en temps pascal, honorant une religieuse augustine de l'Ombrie du XVe siècle dont la vie traversa les états d'épouse, de mère, de veuve puis de religieuse consacrée. Sa mémoire, bien que facultative, jouit d'une dévotion populaire très répandue, en particulier auprès de ceux qui affrontent des situations jugées humainement désespérées.

Le centre théologique de son culte réside dans la configuration de sa souffrance à la Passion du Christ, symbolisée par la tradition d'une blessure semblable à celle de la couronne d'épines, qu'elle aurait reçue en méditant sur la souffrance du Seigneur. Sa vie montre comment des circonstances apparemment ordinaires et douloureuses, un mariage difficile, la perte de ses enfants, vécues dans l'union au Christ, peuvent devenir un véritable chemin de sanctification plutôt qu'un obstacle à celle-ci.

Après la mort de son époux et de ses fils, Rita chercha à entrer au monastère augustin de Cascia, où elle vécut pendant des décennies une vie cachée de prière et de pénitence. La dévotion à son égard grandit régulièrement après sa mort, et elle fut invoquée particulièrement par ceux qui affrontaient des situations dites impossibles ou désespérées, titre désormais inséparable de son nom dans la piété populaire.

Sa fête parle aujourd'hui avec force à ceux qui traversent des mariages difficiles, des deuils familiaux ou des situations apparemment sans issue, tenant devant eux l'exemple d'une femme qui trouva dans la Passion du Christ la force de transformer la souffrance en intercession et en espérance plutôt qu'en désespoir.
$desc$),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', 'Saint Bède le Vénérable, prêtre et docteur de l''Église', $desc$
La mémoire facultative de saint Bède le Vénérable est célébrée le 25 mai, en temps pascal, honorant le seul Anglais jamais déclaré docteur de l'Église, titre que lui décerna le pape Léon XIII en 1899. Sa mémoire, l'une des trois célébrations facultatives propres à cette date dans le calendrier, recommande un moine dont l'érudition servit la compréhension de l'Écriture par l'Église et sa propre histoire.

L'importance théologique de Bède repose surtout sur son œuvre d'exégète, qui transmit et synthétisa pour l'Occident latin la tradition patristique du commentaire biblique, joignant toujours une science textuelle rigoureuse au souci de l'édification spirituelle et morale de ses lecteurs. Il comprenait la recherche historique et scientifique, y compris son célèbre travail sur le calcul de la date de Pâques, comme pleinement compatible avec la vie de foi et de culte de l'Église, et même mise à son service.

Passant presque toute sa vie au monastère de Jarrow en Northumbrie, Bède produisit une vaste œuvre de commentaire biblique ainsi que sa célèbre Histoire ecclésiastique du peuple anglais, source principale de l'histoire ancienne du christianisme en Angleterre, ce qui lui valut de son vivant déjà l'épithète de « Vénérable » pour son savoir et sa sainteté.

Son exemple recommande aujourd'hui la vocation de l'étude chrétienne exercée dans l'humilité et la stabilité, rappelant à l'Église que l'étude patiente de l'Écriture et l'attention rigoureuse à sa propre histoire demeurent de véritables formes de service à la foi, et non des distractions par rapport à la vie contemplative et pastorale.
$desc$),
('saint-gregory-vii-pope', 'Saint Grégoire VII, pape', $desc$
La mémoire facultative de saint Grégoire VII est célébrée le 25 mai, en temps pascal, l'une des trois célébrations facultatives assignées à cette date, honorant un pape du XIe siècle dont on se souvient surtout pour la vaste réforme de la discipline et de la vie de l'Église qui porte son nom. Sa mémoire rappelle un pontificat marqué par des conflits assumés pour la liberté spirituelle de l'Église.

Au cœur de la réforme grégorienne se trouve la conviction que la sainteté et la mission de l'Église exigent la liberté à l'égard d'un contrôle séculier indû, exprimée concrètement par l'opposition à la simonie, achat et vente des charges ecclésiastiques, à l'incontinence du clergé, et à l'investiture laïque, pratique par laquelle les souverains séculiers nommaient évêques et abbés. Grégoire comprenait ces luttes comme inséparables de la fidélité à l'Évangile lui-même, estimant qu'une Église prise dans les rets du pouvoir mondain ne pourrait proclamer le Christ de manière crédible.

Son pontificat, débuté en 1073, l'opposa directement à l'empereur Henri IV sur le droit d'investir les évêques, lutte qui comprit la pénitence spectaculaire de Henri à Canossa en 1077, mais qui s'acheva néanmoins par des conflits persistants et l'exil de Grégoire hors de Rome. Il mourut à Salerne en 1085, ayant, dit-on, déclaré : « J'ai aimé la justice et haï l'iniquité, c'est pourquoi je meurs en exil », paroles qui façonnèrent par la suite sa réputation de pape ayant souffert pour la réforme.

Sa mémoire invite aujourd'hui à réfléchir sur la nécessité durable que la vie institutionnelle de l'Église demeure subordonnée à sa mission spirituelle, et sur le courage requis de ceux qui œuvrent à la réforme, même lorsqu'elle entraîne un coût personnel et une controverse persistante.
$desc$),
('saint-mary-magdalene-de-pazzi-virgin', 'Sainte Marie-Madeleine de Pazzi, vierge', $desc$
La mémoire facultative de sainte Marie-Madeleine de' Pazzi est célébrée le 25 mai, en temps pascal, l'une des trois célébrations facultatives propres à cette date, honorant une carmélite florentine du XVIe siècle réputée pour la profondeur de son expérience mystique d'union à Dieu. Sa mémoire invite l'Église à contempler, dans la joie du temps pascal, une vie donnée tout entière à la communion intérieure avec le Christ.

Sa doctrine spirituelle se centre sur la puissance transformatrice de l'amour divin, éprouvée par elle en des états d'extase durant lesquels elle parlait de la Trinité, de la Passion et de l'Église avec une intensité que consignèrent plus tard les sœurs qui l'assistaient. Loin d'être de simples phénomènes extraordinaires, ces expériences furent comprises par la tradition comme les manifestations d'une âme si pleinement conforme au Christ que les modes ordinaires de la prière et de la parole devenaient parfois des vases insuffisants pour ce qu'elle percevait de l'amour de Dieu.

Entrée jeune au monastère carmélite de Santa Maria degli Angeli à Florence, Marie-Madeleine de' Pazzi mena une vie religieuse cachée, marquée par de longues périodes tant de consolations mystiques que de profondes épreuves spirituelles, ses paroles durant l'extase étant soigneusement transcrites par sa communauté puis publiées, ce qui lui assura une réputation durable parmi les grands mystiques de l'époque de la Contre-Réforme.

Sa fête recommande aujourd'hui aux fidèles la valeur de la prière intérieure et du silence contemplatif comme voies authentiques de sainteté, rappelant à un monde souvent méfiant envers le mysticisme que la vocation humaine la plus profonde est l'union à Dieu, union que l'Église commence déjà à goûter dans chaque célébration du mystère pascal.
$desc$),
('saint-philip-neri-priest', 'Saint Philippe Néri, prêtre', $desc$
La mémoire obligatoire de saint Philippe Néri est célébrée le 26 mai, en temps pascal, honorant le fondateur de la Congrégation de l'Oratoire, dont la fête porte un rang exigeant l'observance dans tout le rite romain. Sa place dans les semaines joyeuses qui suivent Pâques accompagne à propos un saint dont la spiritualité fut elle-même marquée par une joie inhabituelle et évangélique.

L'héritage théologique de Philippe est avant tout le témoignage que sainteté et joie ne s'opposent pas mais se confirment mutuellement, puisque l'union au Christ ressuscité libère la personne humaine au lieu de la diminuer. Il insistait sur l'humilité, la simplicité et la gaieté comme voies ordinaires vers la sainteté, s'opposant à toute spiritualité de morosité rigide, et plaçait la confession fréquente et la réception de l'Eucharistie au centre de la vie chrétienne, avec des rassemblements informels de prière, de musique et d'instruction qui donnèrent à son Oratoire son caractère distinctif.

Actif à Rome durant six décennies au XVIe siècle, Philippe fut appelé « l'Apôtre de Rome » pour son soin pastoral infatigable des jeunes de la ville, des pauvres et des pèlerins, et pour avoir rassemblé des compagnons qui formaliseraient son mode de vie en la Congrégation de l'Oratoire, approuvée ensuite par le Saint-Siège et répandue à travers le monde.

Sa fête encourage aujourd'hui une vision du disciple chrétien marquée par une humilité joyeuse plutôt que par une sévérité anxieuse, et recommande particulièrement les ministres de la confession, de l'amitié spirituelle et de l'accompagnement patient des jeunes comme des moyens ordinaires mais puissants de conduire les âmes au Christ.
$desc$),
('saint-augustine-of-canterbury-bishop', 'Saint Augustin de Cantorbéry, évêque', $desc$
La mémoire facultative de saint Augustin de Cantorbéry est célébrée le 27 mai, en temps pascal, honorant le moine bénédictin envoyé de Rome pour évangéliser l'Angleterre anglo-saxonne et devenu le premier archevêque de Cantorbéry. Sa mémoire situe la fondation du christianisme anglais dans la saison même qui célèbre la mission de l'Église d'annoncer la Résurrection à toute nation.

Sa mission incarne le principe théologique selon lequel l'Évangile doit être porté par l'Église, sous la forme concrète de missionnaires envoyés porteurs de l'autorité apostolique, aux peuples qui ne l'ont pas encore reçu, et selon lequel l'implantation d'une Église locale doit demeurer en communion vivante avec le Siège de Pierre. Le succès d'Augustin dans l'établissement d'une structure ecclésiale stable dans le Kent, plutôt que de simples conversions individuelles, reflète ce souci de continuité et de communion.

Envoyé en 596 par le pape saint Grégoire le Grand à la tête d'une quarantaine de moines, Augustin débarqua dans le Kent en 597, fut accueilli par le roi Ethelbert, qu'il baptisa avec un grand nombre de ses sujets, et établit son siège épiscopal à Cantorbéry, d'où le christianisme se répandit ensuite dans une grande partie de l'Angleterre, lui valant le titre d'« Apôtre des Anglais ».

Sa fête rappelle aujourd'hui l'origine missionnaire de toute Église locale et encourage les fidèles à valoriser la communion ecclésiale avec l'Église universelle, particulièrement avec l'évêque de Rome, comme un trait essentiel, et non accessoire, de la transmission de l'Évangile à travers les cultures et les siècles.
$desc$),
('saint-paul-vi-pope', 'Saint Paul VI, pape', $desc$
La mémoire facultative de saint Paul VI est célébrée le 29 mai, en temps pascal, honorant le pape qui conduisit l'Église à travers les sessions finales du deuxième concile du Vatican et les années exigeantes de sa mise en œuvre initiale. Sa mémoire situe son témoignage dans la saison même qui célèbre le renouveau continu que le Concile lui-même cherchait à servir.

Son pontificat revêt une importance théologique majeure avant tout par sa fidélité à recevoir et à appliquer l'enseignement conciliaire, tenant ensemble continuité avec la tradition et renouveau authentique, en particulier dans la réforme de la liturgie, l'engagement de l'Église avec le monde moderne, et sa conscience missionnaire propre telle qu'exprimée dans son exhortation sur l'évangélisation. Son encyclique sur la transmission de la vie, défendant le lien inséparable entre les significations unitive et procréatrice de l'acte conjugal, se révéla particulièrement lourde de conséquences et, à l'époque, profondément contestée.

Élu en 1963 après la mort de saint Jean XXIII, Paul VI clôtura le Concile en 1965 et consacra les treize années suivantes à guider sa réception, devenant le premier pape en plusieurs siècles à voyager largement hors d'Italie, notamment aux Nations unies, en Terre sainte et sur plusieurs continents, voyages entrepris comme des gestes de la portée universelle de l'Évangile. Il fut canonisé par le pape François en 2018.

Sa mémoire invite aujourd'hui à réfléchir sur le travail consistant à traduire fidèlement l'enseignement conciliaire dans la vie concrète de l'Église, et sur le courage requis pour maintenir un enseignement moral impopulaire mais cohérent face à d'intenses pressions culturelles à l'abandonner.
$desc$),
('the-visitation-of-the-blessed-virgin-mary', 'Visitation de la Bienheureuse Vierge Marie', $desc$
La fête de la Visitation de la Bienheureuse Vierge Marie est célébrée le 31 mai, achevant le mois de mai par une célébration de rang de fête qui rappelle le voyage de Marie chez sa parente Élisabeth. Sa place tout à la fin du mois de mai, immédiatement avant que l'Église ne reprenne le temps ordinaire ou, selon les années, n'entre plus directement dans le calendrier du début juin, situe le mystère de la Visitation comme un aboutissement approprié du mois traditionnellement consacré à Marie.

L'Évangile de Luc rapporte comment Marie, ayant conçu le Verbe fait chair, se hâta d'aller chez Élisabeth, qui la salua comme « la mère de mon Seigneur » tandis que l'enfant Jean tressaillait dans son sein, et comment Marie répondit par le Magnificat, son cantique proclamant la miséricorde de Dieu et le renversement qu'il opère en faveur des humbles. La fête célèbre Marie comme première porteuse du Christ à autrui, modèle de tout croyant envoyé pour communiquer la joie de sa présence, et elle affirme, à travers la salutation d'Élisabeth, la pleine humanité et l'identité divine de l'enfant que Marie porte dès l'instant de sa conception.

La fête naquit au XIIIe siècle chez les franciscains et fut étendue à l'Église universelle en 1389 par le pape Urbain VI, qui espérait qu'une dévotion accrue envers Marie hâterait la guérison du grand schisme d'Occident ; célébrée pendant des siècles le 2 juillet, elle fut déplacée lors de la réforme du calendrier de 1969 au 31 mai afin de tomber, avec une cohérence chronologique appropriée, entre l'Annonciation du 25 mars et la Nativité de saint Jean-Baptiste du 24 juin.

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
Memoria ad libitum sancti Ioseph Opificis die prima mensis Maii celebratur, quae plerumque in hebdomada quinta Paschali cadit. Cum ad libitum sit, feriam paschalem, iudicio sacerdotis, substituere potest, ut Ecclesia, in ipso cordis tempore paschalis, vitam absconditam et laboriosam nutritii Domini contemplari possit. Dies eius de industria electus est ut cum die iam in mundo moderno significatione civili praedito coincideret.

In huius celebrationis corde inest persuasio laborem humanum, quantumvis humilem, ipsi Dei operi creatrici et redemptrici consociari. Laborando in officina Nazarethana, Ioseph opus commune sanctificavit illudque mysterio Incarnationis coniunxit, cum ipse Verbum a vicinis suis "filius fabri" cognosceretur. Festum proclamat nullum honestum laborem indignum esse filio Dei, et sanctitatem in fidelitate quotidiano officio potius quam in factis extraordinariis quaerendam esse.

Pius Papa XII hanc memoriam anno 1955 instituit, eam ad diem primam Maii ex professo statuens ut operariis christianis responsum supernaturale offerret celebrationibus internationalibus illius diei, quae ideologiis saecularibus et interdum antireligiosis laboris associatae erant. Reformatio calendarii anni 1969 eam ut memoriam ad libitum servavit, distinctam a sollemnitate sancti Ioseph, Sponsi Beatae Mariae Virginis, die 19 Martii celebrata.

Hodie festum fideles invitat ut laborem suum, sive professionalem sive domesticum, veram sanctitatis viam existiment, et intercessioni Ioseph committant eos qui opere carent, eos qui iniuste exploitantur, et omnes qui sine agnitione laborant. Visionem proprie christianam laboris, ut vocationis et servitii, restituit, temperans tam idolatriam productivitatis quam desperationem laboris sine sensu.
$desc$),
('saint-athanasius-bishop-and-doctor-of-the-church', 'Sanctus Athanasius, Episcopus et Ecclesiae Doctor', $desc$
Memoria obligatoria sancti Athanasii Alexandrini die 2 Maii, intra tempus paschale, celebratur, honorans episcopum et Ecclesiae Doctorem cuius totum ministerium mysterio hoc tempore anni liturgici celebrato coniunctum fuit: divinitati Christi resurgentis. Festum eius gradum memoriae observandae tenet, gratitudinem Ecclesiae perpetuam pro defensione fidei apostolicae reflectens.

Athanasius magnus fidei Nicaenae propugnator contra arianismum exstitit, praecisione theologica affirmans Filium Patri consubstantialem esse, verum Deum de vero Deo. Eius persuasio, praesertim in tractatu De Incarnatione expressa, erat solum si Christus plene divinus sit, veraciter humanitatem morte et resurrectione sua deificare posse; Christus deminutus promissionem salutis impletam non relinqueret. Memoriam eius tempore paschali celebrare hunc ipsum nexum inter divinitatem Domini et veritatem redemptionis nostrae extollit.

Quinquies a sede sua propter fidelitatem Nicaeae exsulatus, Athanasius proverbialis factus est ob id quod fere solus contra fluctus sui temporis dominantes stetit, unde dictum "Athanasius contra mundum" ortum est. Ecclesia eum mature ut Doctorem agnovit, et memoria eius ab antiquitate locum stabilem in calendario tenuit, testimonium quam centrale eius testimonium pro integritate confessionis christianae fidei iudicatum sit.

Eius exemplum fideles hodie de pretio fidelitatis doctrinalis et de patientia ad veritatem contra errorem vulgatum sustinendam necessaria instruere pergit. Aetate saepe tentata ut mysterium Christi diluat, Athanasius fideles admonet praecisionem theologicam non esse pedantiam sed caritatis servitium, ipsam salutis possibilitatem quam Ecclesia in Pascha proclamat custodiens.
$desc$),
('saints-philip-and-james-apostles', 'Sancti Philippus et Iacobus, Apostoli', $desc$
Festum sanctorum Philippi et Iacobi die 3 Maii celebratur, dies post reformationem anni 1969 electus ut coincidentia cum memoria nuper instituta sancti Ioseph Opificis die 1 Maii, quo die hoc festum antiquitus Romae celebrabatur, vitaretur. Ut festum, memoriae ordinariae praestat, duo membra collegii apostolici honorans in ipso tempore quod Resurrectionem, quam nuntiare missi sunt, commemorat.

Liturgia hos duos apostolos coniungit quia reliquiae eorum simul Romae, in basilica Duodecim Apostolis dicata, quiescunt, et quia uterque de structura fundamentali Ecclesiae super Duodecim aedificatae testatur. Philippus, qui Dominum rogavit ut "Patrem ostenderet" responsumque accepit se ipsum videre Patrem videre esse, et Iacobus, traditione "frater Domini" et primus communitatis Hierosolymitanae praeses habitus, simul officium apostolicum tamquam servitium unitatis et transmissionis veritatis revelatae repraesentant.

Commemoratio coniuncta ad dedicationem saeculi sexti basilicae Romanae Duodecim Apostolorum refertur, quo reliquiae utriusque translatae et depositae sunt. Per saecula die 1 Maii celebratum, festum ad diem praesentem in calendario reformato translatum est ne antiquae associationes civiles et Iosephinae diei primae Maii characterem apostolicum celebrationis obscurarent.

Festum fideles invitat ut in Philippo et Iacobo exempla illius desiderii apostolici Deum plene videndi et cognoscendi agnoscant, desiderium quod Christus in victoria sua paschali definitive implet. Eorum testimonium Ecclesiam hortatur ut in fide ab apostolis accepta integra tradenda perseveret, fundamento cui omnis subsequens generatio credentium superaedificatur.
$desc$),
('saint-john-of-avila-priest-and-doctor-of-the-church', 'Sanctus Ioannes de Avila, Presbyter et Ecclesiae Doctor', $desc$
Memoria ad libitum sancti Ioannis de Avila, presbyteri et Ecclesiae Doctoris, die 10 Maii, intra tempus paschale, celebratur. A Benedicto Papa XVI anno 2012 Ecclesiae Doctor declaratus, inter paucos presbyteros, potius quam episcopos, hoc titulo ornatos numeratur, et memoria eius calendario universali permittit vocem pastoralem et reformatricem Saeculi Aurei Hispanici singulariter honorare.

Eius hereditas theologica circa sanctitatem ministerii ordinati et formationem sacerdotum ad veram directionem spiritualem et praedicationem aptorum versatur. Ioannes de Avila docebat renovationem Ecclesiae a conversione interiore et seriis doctrinalibus pastorum eius incipere, persuasio quae scripta eius de vita sacerdotali et celebrem correspondentiam spiritualem formavit, per quam multas animas, inter quas futuros sanctos, ad altiorem cum Deo unionem duxit.

"Apostolus Andalusiae" appellatus ob praedicationem indefessam per Hispaniam meridionalem saeculo XVI, motus reformatorios influxit qui postea in Concilio Tridentino expressionem invenerunt, praesertim de seminariis et formatione clericali. Eius inscriptio in calendario generali reflectit agnitionem, ab Ecclesia universali post saecula factam, valoris perennis doctrinae eius de sacerdotio et sanctitate.

Memoria eius hodie invitat ad examinandam qualitatem curae pastoralis et accompaniamenti spiritualis populo Dei oblati. Insistentia Ioannis de Avila doctrinam et caritatem numquam separandas esse remedium opportunum manet ubicumque praedicatio periculum subit vel eruditionis aridae vel sensus sine substantia.
$desc$),
('saints-nereus-and-achilleus-martyrs', 'Sancti Nereus et Achilleus, Martyres', $desc$
Memoria ad libitum sanctorum Nerei et Achillei die 12 Maii, intra tempus paschale, observatur, honorans duos martyres Romanos Ecclesiae primaevae quorum cultus inter antiquissimos in urbe Roma attestatos numeratur. Cum memoria ad libitum sit, eius celebratio iudicio pastorali committitur, sed memoriam testium servat quorum fidelitas usque ad mortem paene omnem litteraturam christianam de eis conservatam antecedit.

Eorum commemoratio participationem martyris in mysterio paschali extollit: per mortem suam hi christiani morti et resurrectioni Christi configurati sunt, et Ecclesia semper martyrium legit ut supremum testimonium victoriam Christi de morte realem esse et discipulis eius communicabilem. Tales testes tempore paschali celebrare hunc nexum theologicum praecipue vividum reddit.

Traditio antiqua, in epigrammate a sancto Damaso Papa I saeculo quarto composito repetita, Nereum et Achilleum cum custodia imperiali consociat, ad fidem conversos et martyrio affectos quia Christum renuntiare recusaverunt, in catacumba Domitillae ad Viam Ardeatinam sepultos, ubi postea basilica in eorum honorem exstructa est. Nomina eorum in libris liturgicis Romanis ab antiquitate permanserunt.

Quamvis pauca de historia eorum praeter hanc venerationem antiquam supersint, eorum commemoratio credentes hodiernos admonet fidelitatem Christo praestitam nonnullis totale vitae donum semper postulasse, et Ecclesiam quemlibet testem, quantumvis exiguum sit narratum, qui Evangelium sanguine obsignavit, pretiosum habere.
$desc$),
('saint-pancras-martyr', 'Sanctus Pancratius, Martyr', $desc$
Sanctus Pancratius die 12 Maii commemoratur, diem cum sanctis Nereo et Achilleo inter memorias ad libitum temporis paschalis communicans. Haec in calendario propinquitas communem originem Romanam horum martyrum primaevorum reflectit, quorum festa in libris liturgicis urbis multo ante reformationes recentiores fixa sunt et ut celebrationes ad libitum, devotioni locali apertae, servata.

Memoria eius mysterium martyrii ab adulescentibus toleratum ante Ecclesiam servat, cum traditio antiqua teneat Pancratium mortem pro fide passum esse dum puer adhuc erat, nondum quindecim annos natus. Ecclesia semper in talibus testibus signum praecipue insigne vidit gratiam naturam qualibet aetate perficere posse, et fidelitatem Christo, potius quam annorum experientiam, id esse quod Evangelium tandem ab omni discipulo postulat.

Sepultus in Via Aurelia, ubi postea basilica nomen eius ferens exstructa est, Pancratius unus ex martyribus Romanis in Occidente maxime veneratis factus est, praesertim in Anglia, ubi numerosae ecclesiae eius nomini ab antiquissimis saeculis christianitatis Anglosaxonicae dicatae sunt, devotio missioni Romanae quae illam terram evangelizavit consociata.

Festum eius hodie praesertim iuvenibus loquitur, possibilitatem fidelitatis heroicae Christo, aetate vel condicione mundana non obstante, ante eos tenens. Totam Ecclesiam invitat ut meminerit vocationem ad totale sui donum omni baptizato dirigi, nec ulli praesumptae maturitati spirituali annis tantum mensuratae reservari.
$desc$),
('our-lady-of-fatima', 'Beata Maria Virgo Fatimensis', $desc$
Memoria ad libitum Beatae Mariae Virginis a Fatima die 13 Maii cadit, intra tempus paschale, et a Francisco Papa anno 2019 in Calendarium Romanum Generale inscripta est, devotionem diu localiter et in multis calendariis nationalibus observatam ad Ecclesiam universalem extendens. Dies eius primam ex serie apparitionum anno 1917 prope Fatimam, in Lusitania, relatarum recolit.

Theologice, memoria haec in latiore veneratione quam Ecclesia Mariae tribuit, ut intercessori qui attentionem ad Filium suum et ad cordis conversionem dirigit, se collocat. Nuntius Fatimae associatus orationem, praesertim Rosarium, et paenitentiam pro peccatoribus insistit, argumenta plene continua cum vocatione evangelica ad conversionem et cum munere Mariae constanti, ab Ecclesia agnito, fideles ad profundiorem et urgentiorem Christi sequelam ducendi.

Devotio erga Beatam Mariam Virginem a Fatima saeculo vicesimo celere crevit, sustentationem a papis successivis accipiens qui sanctuarium visitaverunt et nuntium orationi Ecclesiae pro pace coniunxerunt, praesertim durante turbationibus bellorum mundialium et belli frigidi. Eius inclusio in calendario universali tam latam diffusionem quam prudens et continuum Ecclesiae discernimentum de revelationibus privatis relatis reflectit, quae depositum fidei non augent sed vivam eius receptionem illuminare et fovere possunt.

Hanc memoriam hodie celebrare fideles invitat ut exercitia orationis et paenitentiae in vita christiana ordinaria renovent, et intercessioni Mariae causas pacis et conversionis, quae in corde nuntii relati erant, committant, semper in continuitate cum revelatione definitiva in Christo data, eique subordinatas.
$desc$),
('saint-matthias-apostle', 'Sanctus Matthias, Apostolus', $desc$
Festum sancti Matthiae die 14 Maii celebratur, dies a reformatione calendarii anni 1969 statutus ut eius celebratio e tempore Quadragesimae, quod antea occupabat, in gaudium temporis paschalis transferretur. Ut festum, memoriae ordinariae praestat, plenum collegii apostolici membrum honorans in ipso tempore quod Resurrectionem, cuius testis vocatus est, celebrat.

Actus Apostolorum narrant quomodo, post Ascensionem, communitas in oratione congregata, inter duos candidatos discernens, sortem misit ut determinaret quem Dominus elegisset ad numerum Duodecim post lapsum Iudae complendum. Electio Matthiae punctum theologicum centrale illustrat: apostolatum non esse humanum meritum sed divinam electionem, et integritatem Duodecim, ut testium totius ministerii Christi, a baptismo Ioannis usque ad Resurrectionem, fundamento Ecclesiae essentialem iudicatam esse.

Pauca alia de Matthia in Novo Testamento narrantur, et traditiones posteriores de eius actione missionaria et morte valde variant, nulla certitudine historica firma praedita. Nihilominus festum eius ab antiquitate locum stabilem in calendario Romano tenuit, propter id quod de structura auctoritatis apostolicae significat potius quam propter narrationem vitae eius evolutam aestimatum.

Festum eius hodie Ecclesiam admonet ministerium in se semper responsum esse vocationi quae meritum personale antecedit et excedit, et discernimentum communitatis, orationi coniunctum, contextum proprium manere in quo tales vocationes agnoscuntur et confirmantur.
$desc$),
('saint-john-i-pope-and-martyr', 'Sanctus Ioannes I, Papa et Martyr', $desc$
Memoria ad libitum sancti Ioannis I, papae et martyris, die 18 Maii, intra tempus paschale, observatur, commemorans successorem Petri saeculi sexti cuius pontificatus carcere et morte finitus est. Eius inscriptio inter memorias ad libitum Ecclesiae permittit papam honorare cuius passiones, quamvis circumstantiis politicis occasionatae, diu ad lucem martyrii christiani lectae sunt.

Commemoratio eius vocationem peculiarem Episcopi Romani, unitatem et orthodoxiam fidei custodiendi, interdum libertatis et vitae suae pretio, illustrat. A rege Ariano Theodorico invitus ad legationem Constantinopolitanam missus, Ioannes se inter politicam imperialem et officium erga fidem catholicam medium invenit, et mors eius in captivitate a traditione intellecta est ut forma testimonii pro fidelitate Ecclesiae doctrinae orthodoxae praestita.

Fontes historici narrant Ioannem I, anno 523 papam electum, coactum fuisse cum imperatore Byzantino pro interesse Arianorum in Occidente agere; reversus, infidelitatis suspectus, Ravennae carceri mancipatus est, ubi paulo post mortuus est. Romae sepultus, mox ut martyr veneratus est, nomine eius in antiquos libros liturgicos urbis ingresso.

Memoria eius hodie ad meditandum invitat de oneribus quae interdum ferunt qui auctoritatem in Ecclesia inter pressiones politicas contrarias exercent, et de fidelitate veritati Evangelii debita etiam cum passionem potius quam successum mundanum affert.
$desc$),
('saint-bernardine-of-siena-priest', 'Sanctus Bernardinus Senensis, Presbyter', $desc$
Memoria ad libitum sancti Bernardini Senensis die 20 Maii, intra tempus paschale, celebratur, honorans presbyterum Franciscanum saeculi quintidecimi praedicatione praesertim celebrem, qui devotionem peculiarem Sancto Nomini Iesu per Italiam propagavit. Memoria eius, quamvis non obligatoria, latam observantiam diu habuit, praesertim apud communitates Franciscanas.

In corde doctrinae spiritualis eius devotio erga Nomen Iesu invenitur, quam Bernardinus per symbolum monogrammatis "IHS" in sole radiante inscripti promovit, affirmans in hoc solo Nomine salutem et pacem offerri quas corda humana desiderant. Haec devotio numquam apud eum mere ornamentalis erat: exprimebat persuasionem totam vitam christianam, personalem et socialem, Christo ordinandam esse et secundum Evangelium ab eo proclamatum reformandam.

Praedicator itinerans indefessus per urbes Italiae, Bernardinus non solum conversionem individualem sed etiam abusus civiles et oeconomicos sui temporis aggressus est, factiones adversas reconciliare et praxes commerciales iniustas corrigere conatus. Bis munus episcopale oblatum recusavit ut missionem praedicationis prosequeretur, et fama eius unius ex magnis praedicatoribus popularibus finis Medii Aevi canonizationem celerem et devotionem perpetuam ei paravit.

Exemplum eius hodie praedicatores totamque Ecclesiam hortatur ut virtuti transformatrici Nominis Iesu, claritate et zelo proclamati, confidant, et evangelizationem authenticam a cura iustitiae et reconciliationis in societate inseparabilem esse videant.
$desc$),
('saint-christopher-magallanes-priest-and-companions-martyrs', 'Sanctus Christophorus Magallanes, Presbyter, et Socii, Martyres', $desc$
Memoria ad libitum sancti Christophori Magallanes, presbyteri, et sociorum martyrum, die 21 Maii, intra tempus paschale, celebratur, commemorans viginti quinque presbyteros et tres laicos in Mexico durante persecutione anticatholica primi saeculi vicesimi morte affectos. Eorum celebratio coniuncta martyrium recens in eadem luce paschali collocat quae martyres antiquos alibi hoc mense commemoratos illuminat.

Eorum testimonium proclamat fidelitatem Eucharistiae et ministerio sacerdotali etiam aetate moderna, non minus quam in antiquitate, totale vitae donum postulare posse. Christophorus Magallanes et socii eius occisi sunt praecise quia sacramenta celebrare et fideles instruere pergebant, legibus exercitium publicum fidei catholicae supprimere quaerentibus non obstantibus, mortem eorum directam configurationem oblationi Christi ipsius reddentes.

Hi martyres inter annos 1915 et 1937 mortui sunt, plerique durante conflictu "Cristero" qui legislationem anticlericalem gubernii Mexicani secutus est, et a Ioanne Paulo Papa II anno 2000 simul canonizati sunt, tamquam repraesentativi numeri multo maioris eorum qui similiter illo tempore passi sunt. Eorum inscriptio in calendario generali devotionem antea in Mexico concentratam ad Ecclesiam universalem extendit.

Memoria eorum credentes hodie vocat ut agnoscant libertatem religiosam et ius cultum reddendi in variis mundi partibus adhuc causas esse pro quibus christiani patiuntur, et Ecclesiam ad solidarietatem cum iis qui nunc persecutionem propter Evangelium sustinent convocat.
$desc$),
('saint-rita-of-cascia-religious', 'Sancta Rita de Cascia, Religiosa', $desc$
Memoria ad libitum sanctae Ritae de Cascia die 22 Maii, intra tempus paschale, observatur, honorans religiosam Augustinianam Umbriae saeculi quintidecimi cuius vita per status uxoris, matris, viduae et religiosae consecratae transiit. Memoria eius, quamvis ad libitum, devotionem popularem late diffusam habet, praesertim apud eos qui condiciones humaniter desperatas iudicatas patiuntur.

Centrum theologicum cultus eius in configuratione passionis suae Passioni Christi invenitur, symbolo traditionis vulneris coronae spineae simile significata, quod meditans de dolore Domini accepisse traditur. Vita eius ostendit quomodo circumstantiae apparenter ordinariae et dolorosae, matrimonium difficile, filiorum amissio, in unione cum Christo toleratae, verum sanctificationis iter fieri possint potius quam obstaculum eius.

Post mortem mariti et filiorum, Rita in monasterium Augustinianum Cascianum admitti quaesivit, ubi per decennia vitam absconditam orationis et paenitentiae egit. Devotio erga eam post mortem constanter crevit, et invocata est praesertim ab iis qui condiciones impossibiles vel desperatas dictas affrontabant, titulus iam a nomine eius in pietate populari inseparabilis.

Festum eius hodie fortiter loquitur iis qui matrimonia difficilia, luctus familiares, vel condiciones apparenter sine exitu patiuntur, exemplum mulieris ante eos tenens quae in Passione Christi vim invenit dolorem in intercessionem et spem potius quam in desperationem transformandi.
$desc$),
('saint-bede-the-venerable-priest-and-doctor-of-the-church', 'Sanctus Beda Venerabilis, Presbyter et Ecclesiae Doctor', $desc$
Memoria ad libitum sancti Bedae Venerabilis die 25 Maii, intra tempus paschale, celebratur, honorans unicum Anglum umquam Ecclesiae Doctorem declaratum, titulo ei a Leone Papa XIII anno 1899 concesso. Memoria eius, una ex tribus celebrationibus ad libitum huic diei propriis in calendario, monachum commendat cuius eruditio intelligentiae Scripturae et historiae Ecclesiae suae inservivit.

Momentum theologicum Bedae praesertim in opere eius exegetico consistit, qui traditionem patristicam commentarii biblici Occidenti Latino transmisit et synthetice composuit, scientiam textualem diligentem semper cum cura aedificationis spiritualis et moralis lectorum suorum coniungens. Investigationem historicam et scientificam, inclusa opere celebri de computo Paschatis, plene compatibilem cum vita fidei et cultus Ecclesiae, immo eius servitio destinatam, intellexit.

Fere totam vitam in monasterio Girvensi in Northumbria degens, Beda vastam commentariorum biblicorum molem simul cum celebri Historia Ecclesiastica Gentis Anglorum produxit, fonte principali historiae primaevae christianitatis in Anglia, quod ei iam vivente epithetum "Venerabilis" propter doctrinam et sanctitatem meruit.

Exemplum eius hodie vocationem studii christiani in humilitate et stabilitate exercitam commendat, Ecclesiam admonens studium patiens Scripturae et attentionem diligentem historiae suae veras formas servitii fidei manere, non distractiones a vita contemplativa et pastorali.
$desc$),
('saint-gregory-vii-pope', 'Sanctus Gregorius VII, Papa', $desc$
Memoria ad libitum sancti Gregorii VII die 25 Maii, intra tempus paschale, celebratur, una ex tribus celebrationibus ad libitum huic diei assignatis, honorans papam saeculi undecimi praesertim ob amplam reformationem disciplinae et vitae Ecclesiae, quae nomen eius fert, memoratum. Memoria eius pontificatum recolit contentionibus pro libertate spirituali Ecclesiae susceptis notatum.

In corde Reformationis Gregorianae persuasio invenitur sanctitatem et missionem Ecclesiae libertate a moderamine saeculari indebito indigere, concrete expressa oppositione simoniae, emptioni et venditioni officiorum ecclesiasticorum, incontinentiae clericali, et investiturae laicali, praxi qua principes saeculares episcopos et abbates constituebant. Gregorius has contentiones a fidelitate ipsi Evangelio inseparabiles intellexit, credens Ecclesiam potestati mundanae implicatam Christum credibiliter proclamare non posse.

Pontificatus eius, anno 1073 inceptus, eum cum Henrico Imperatore IV de iure episcopos investiendi in directam contentionem adduxit, certamen quod paenitentiam spectaculosam Henrici Canusiae anno 1077 comprehendit, sed contentionibus persistentibus et exsilio ipsius Gregorii a Roma tandem finitum est. Salerni anno 1085 mortuus est, verba, ut fertur, proferens: "Dilexi iustitiam et odivi iniquitatem, propterea morior in exsilio," quae postea famam eius papae pro reformatione passi formaverunt.

Memoria eius hodie ad meditandum invitat de necessitate perpetua qua vita institutionalis Ecclesiae missioni eius spirituali subordinata maneat, et de fortitudine requisita ab iis qui pro reformatione laborant, etiam cum pretium personale et controversiam perpetuam affert.
$desc$),
('saint-mary-magdalene-de-pazzi-virgin', 'Sancta Maria Magdalena de Pazzi, Virgo', $desc$
Memoria ad libitum sanctae Mariae Magdalenae de Pazzi die 25 Maii, intra tempus paschale, celebratur, una ex tribus celebrationibus ad libitum huic diei propriis, honorans Carmelitanam Florentinam saeculi sextidecimi ob profunditatem experientiae mysticae unionis cum Deo celebrem. Memoria eius Ecclesiam invitat ut, in gaudio temporis paschalis, vitam totam communioni interiori cum Christo datam contempletur.

Doctrina spiritualis eius circa vim transformatricem amoris divini versatur, ab ea in statibus exstaticis experta, durante quibus de Trinitate, de Passione et de Ecclesia intensitate loquebatur quam postea sorores eam assistentes consignaverunt. Longe a phaenomenis mere extraordinariis, hae experientiae a traditione intellectae sunt ut manifestationes animae tam plene Christo conformatae ut modi ordinarii orationis et loquelae interdum vasa insufficientia fierent pro eo quod de amore Dei percipiebat.

Iuvenis monasterium Carmelitanum Sanctae Mariae Angelorum Florentiae ingressa, Maria Magdalena de Pazzi vitam religiosam absconditam egit, longis temporibus tam consolationum mysticarum quam probationum spiritualium profundarum notatam, verbis eius durante extasi a communitate diligenter transcriptis et postea editis, quod famam eius perpetuam inter magnos mysticos aetatis Contrareformationis firmavit.

Festum eius hodie fidelibus valorem orationis interioris et silentii contemplativi ut vias authenticas sanctitatis commendat, mundum de mysticismo saepe suspiciosum admonens vocationem humanam profundissimam esse unionem cum Deo, unionem quam Ecclesia iam in omni celebratione mysterii paschalis gustare incipit.
$desc$),
('saint-philip-neri-priest', 'Sanctus Philippus Neri, Presbyter', $desc$
Memoria obligatoria sancti Philippi Neri die 26 Maii, intra tempus paschale, celebratur, honorans fundatorem Congregationis Oratorii, cuius festum gradum tenet observantiam per totum Ritum Romanum requirentem. Locus eius in hebdomadis laetis post Pascha aptissime sanctum comitatur cuius spiritualitas ipsa gaudio insolito et evangelico notata erat.

Hereditas theologica Philippi imprimis testimonium est sanctitatem et gaudium non opponi sed mutuo confirmari, cum unio cum Christo resurgente personam humanam liberet potius quam minuat. Humilitatem, simplicitatem et hilaritatem ut vias ordinarias ad sanctitatem urgebat, cuilibet spiritualitati tristitiae rigidae adversatus, et confessionem frequentem receptionemque Eucharistiae in centro vitae christianae collocabat, cum conventibus informalibus orationis, musicae et instructionis qui Oratorio eius characterem proprium dederunt.

Romae per sex decennia saeculo sextodecimo actuosus, Philippus "Apostolus Romae" nuncupatus est ob curam pastoralem indefessam iuvenum urbis, pauperum et peregrinorum, et ob socios collectos qui modum vitae eius in Congregationem Oratorii formaliter redigerent, postea a Sancta Sede approbatam et per orbem diffusam.

Festum eius hodie visionem discipulatus christiani humilitate hilari potius quam severitate anxia notatam hortatur, et praesertim ministeria confessionis, amicitiae spiritualis et accompaniamenti patientis iuvenum commendat, ut media ordinaria quidem sed potentia ad animas Christo ducendas.
$desc$),
('saint-augustine-of-canterbury-bishop', 'Sanctus Augustinus Cantuariensis, Episcopus', $desc$
Memoria ad libitum sancti Augustini Cantuariensis die 27 Maii, intra tempus paschale, celebratur, honorans monachum Benedictinum Roma missum ad Angliam Anglosaxonicam evangelizandam, qui primus Archiepiscopus Cantuariensis factus est. Memoria eius fundationem christianitatis Anglicae in eodem tempore collocat quod missionem Ecclesiae, Resurrectionem omni genti nuntiandi, celebrat.

Missio eius principium theologicum incorporat Evangelium ab Ecclesia, forma concreta missionariorum missorum auctoritatem apostolicam ferentium, ad populos qui id nondum receperunt, ferendum esse, et plantationem Ecclesiae localis in communione viva cum Sede Petri manere debere. Successus Augustini in structura ecclesiali stabili in Cantio constituenda, potius quam in solis conversionibus individualibus, hanc curam continuitatis et communionis reflectit.

Anno 596 a sancto Gregorio Papa Magno missus, quadraginta fere monachis dux, Augustinus anno 597 in Cantio appulit, a rege Ethelberto exceptus, quem cum multis subditis suis baptizavit, et sedem episcopalem Cantuariae constituit, unde christianitas postea per magnam Angliae partem diffusa est, titulum "Apostoli Anglorum" ei conferens.

Festum eius hodie originem missionariam omnis Ecclesiae localis recolit et fideles hortatur ut communionem ecclesialem cum Ecclesia universali, praesertim cum Episcopo Romano, ut notam essentialem, non accidentalem, transmissionis Evangelii per culturas et saecula aestiment.
$desc$),
('saint-paul-vi-pope', 'Sanctus Paulus VI, Papa', $desc$
Memoria ad libitum sancti Pauli VI die 29 Maii, intra tempus paschale, celebratur, honorans papam qui Ecclesiam per sessiones finales Concilii Vaticani Secundi et per annos exigentes primae eius applicationis duxit. Memoria eius testimonium suum in tempore collocat quod renovationem continuam, cui ipsum Concilium servire quaerebat, celebrat.

Pontificatus eius momentum theologicum praesertim ex fidelitate in doctrina conciliari recipienda et applicanda habet, continuitatem cum traditione et renovationem authenticam simul tenens, praesertim in reformatione liturgiae, in Ecclesiae cum mundo moderno colloquio, et in conscientia missionaria propria, ut in exhortatione sua de evangelizatione exposita. Encyclica eius de vita transmittenda, nexum inseparabilem inter significationes unitivam et procreativam actus coniugalis defendens, singularis momenti et suo tempore vehementer controversa exstitit.

Anno 1963 post mortem sancti Ioannis XXIII electus, Paulus VI Concilium anno 1965 clausit et tredecim annos sequentes receptioni eius dirigendae dedicavit, primus papa post saecula multa qui extra Italiam late peregrinatus est, ad Nationes Unitas, Terram Sanctam et plures continentes, itineribus tamquam gestibus amplitudinis universalis Evangelii susceptis. A Francisco Papa anno 2018 canonizatus est.

Memoria eius hodie ad meditandum invitat de labore doctrinam conciliarem in vitam concretam Ecclesiae fideliter transferendi, et de fortitudine requisita ad doctrinam moralem impopularem sed coherentem sustinendam inter pressiones culturales intensas eam relinquendi.
$desc$),
('the-visitation-of-the-blessed-virgin-mary', 'Visitatio Beatae Mariae Virginis', $desc$
Festum Visitationis Beatae Mariae Virginis die 31 Maii celebratur, mensem Maium celebratione gradus festi claudens, quae iter Mariae ad cognatam suam Elisabeth recolit. Locus eius in ipso fine mensis Maii, statim antequam Ecclesia Tempus per Annum resumat vel, secundum annos, calendarium primorum dierum Iunii directius ingrediatur, mysterium Visitationis tamquam culmen aptum mensis Mariae traditionaliter dicati collocat.

Evangelium secundum Lucam narrat quomodo Maria, Verbo carnem facto concepto, festinanter ad Elisabeth perrexit, quae eam ut "matrem Domini mei" salutavit, dum infans Ioannes in utero eius exsultavit, et quomodo Maria Magnificat respondit, hymnum suum misericordiam Dei et eversionem quam pro humilibus operatur proclamans. Festum Mariam celebrat ut primam Christi ad alteram portatricem, exemplar omnis credentis missi ad gaudium praesentiae eius communicandum, et per salutationem Elisabeth plenam humanitatem et identitatem divinam infantis quem Maria ab ipso conceptionis momento portat affirmat.

Festum saeculo tertiodecimo apud Franciscanos ortum est et ad Ecclesiam universalem anno 1389 a Papa Urbano VI extensum, qui speravit devotionem auctam erga Mariam sanationem Magni Schismatis Occidentalis acceleraturam esse; per saecula die 2 Iulii celebratum, reformatione calendarii anni 1969 ad diem 31 Maii translatum est ut sensu chronologico apto, inter Annuntiationem 25 Martii et Nativitatem sancti Ioannis Baptistae 24 Iunii, caderet.

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
Celebrated on June 1, the Memorial of Saint Justin, Martyr is inscribed in the General Roman Calendar as an obligatory memorial, falling within Ordinary Time shortly after Pentecost. The liturgical color is red, marking his death as a martyr. As a memorial rather than a feast or solemnity, it does not displace the Sunday liturgy but shapes the daily Mass and Office when it falls on a weekday.

The celebration honors a layman and philosopher who, having sought truth through the schools of pagan philosophy, recognized in Christianity the fulfillment of reason's deepest longing - the "true philosophy." His feast celebrates the harmony of faith and reason, the vocation of the intellectual to place learning at the service of the Gospel, and the ultimate seal of that vocation in martyrdom, by which Justin confirmed with his blood the truths he had defended with his pen.

The commemoration of Justin's death - he was scourged and beheaded in Rome under the prefect Rusticus around A.D. 165 - has ancient roots, and the Acts of his trial are among the oldest authentic martyr-acts preserved from antiquity. Before the reform of the calendar following the Second Vatican Council, his memorial was kept on April 14; the 1969 revision moved it to June 1, closer to the ancient tradition, also followed in the East, associating him with early summer, allowing the feast to stand more freely apart from the density of the Lenten-Easter cycle.

In an age marked by renewed dialogue between faith, culture, and science, Justin's feast holds particular pastoral weight: it presents a model for engaging contemporary thought without fear, using reason as a bridge rather than a barrier to belief. He is patron of philosophers and apologists, and the Church invokes his witness for all who labor to give a reasoned account of the hope that is in them.
$desc$),
('saints-marcellinus-and-peter-martyrs', 'Saints Marcellinus and Peter, Martyrs', $desc$
Kept on June 2 as an optional memorial, the celebration of Saints Marcellinus and Peter falls in early June within Ordinary Time and is vested in red, the color proper to martyrs. Being optional, it may be observed at the discretion of the celebrant or community, or supplanted by the memorial or feria of the day.

The feast commemorates two Roman martyrs of the early fourth century, an exorcist and a priest, put to death during the persecution of Diocletian. Their liturgical significance rests not on biographical detail but on their inclusion among the witnesses whom the Church has held in continuous, official veneration since antiquity - their names appear in the Roman Canon itself, in the list of martyrs recited after the consecration, placing their sacrifice in perpetual union with the Eucharistic offering of the whole Church.

Devotion to these martyrs is attested remarkably early: Pope Damasus I composed an epitaph for their tomb on the Via Labicana, and Constantine erected a basilica over the site at his mother Helena's request, one of the great funerary basilicas of the Constantinian era. Their commemoration has remained on the Roman calendar in every subsequent revision, a sign of the enduring esteem the Church of Rome held for its own martyrs even amid centuries of calendar reform.

Pastorally, the memorial invites the faithful to recall the depth of the Church's rootedness in the witness of the martyrs, especially those whose stories are not fully recorded but whose fidelity is nonetheless woven into the very heart of the Eucharistic liturgy. Their feast is a quiet reminder that sanctity often goes unrecorded in detail, yet remains eternally present before the altar.
$desc$),
('saints-charles-lwanga-and-companions-martyrs', 'Saints Charles Lwanga and Companions, Martyrs', $desc$
Observed on June 3 as an obligatory memorial, the feast of Saint Charles Lwanga and his Companions falls in Ordinary Time and is celebrated in red vestments, signifying their martyrdom. Its obligatory rank within the General Roman Calendar reflects the universal significance the Church has attached to this relatively recent group of martyrs.

The memorial celebrates the courage of young Christians - pages and catechumens of the royal court of Buganda - who, between 1885 and 1887, chose death rather than betray their faith or submit to demands contrary to Christian morality. Theologically, the feast presents an image of the Church's universality and vitality even in lands newly evangelized, and testifies that the grace of martyrdom, and the heroic virtue it presupposes, is not confined to any single culture or era but flowers wherever the Gospel takes root.

Pope Paul VI canonized the group in 1964, during the Second Vatican Council, and their memorial entered the General Roman Calendar in the subsequent reform, making them the first canonized saints from sub-Saharan Africa. Their canonization and calendar inclusion marked a significant moment in the Church's recognition of the maturity and fruitfulness of the young African Churches.

Today the feast carries strong pastoral resonance across Africa and beyond, holding up steadfastness in the face of persecution, purity of life, and fidelity to conscience as living witnesses for a Church that is genuinely universal. It is often marked with great solemnity in Uganda, at the shrine of Namugongo, and serves as an encouragement to young people everywhere who face pressure to compromise their faith.
$desc$),
('saint-boniface-bishop-and-martyr', 'Saint Boniface, Bishop and Martyr', $desc$
The Memorial of Saint Boniface, Bishop and Martyr is celebrated on June 5 as an obligatory memorial, situated in Ordinary Time and marked by red vestments in recognition of his martyrdom. Its obligatory status underscores his lasting importance in the Latin Church's missionary history.

The feast honors the "Apostle of Germany," whose episcopal ministry embodied the union of monastic discipline, ecclesial obedience to Rome, and missionary zeal in the evangelization and organization of the Church among the Germanic peoples. Liturgically, it celebrates the vocation of the missionary bishop who lays the institutional foundations - dioceses, monasteries, and councils - upon which a durable Christian culture can be built, and it honors the crown of martyrdom that sealed his life's work.

An English Benedictine monk who received his mission directly from the papacy, Boniface reorganized the Frankish and German Churches and was killed by pagan raiders at Dokkum, in Frisia, in 754 while awaiting converts for confirmation. His feast has been kept in the West since shortly after his death and has remained a fixture of the Roman calendar through every major reform, a rare continuity that reflects his foundational role in the evangelization of Northern Europe.

Boniface's memorial remains especially significant for the Church in Germany and the Netherlands, where he is patron, and offers a model for missionary bishops today: fidelity to the universal Church combined with patient, structural work of evangelization, undertaken without regard for personal safety.
$desc$),
('saint-norbert-bishop', 'Saint Norbert, Bishop', $desc$
Falling on June 6, the optional memorial of Saint Norbert, Bishop, occurs in Ordinary Time; being optional, its observance depends on local custom or particular calendars, notably those of the Premonstratensian (Norbertine) order, for whom the day holds greater solemnity.

The celebration honors a bishop and founder whose life bore witness to the reform of clerical and religious life in the twelfth century, particularly the renewal of the common, apostolic life among canons regular. Theologically, the feast highlights the Church's perennial need for the reform of consecrated life according to the Gospel, uniting contemplative prayer with active pastoral care and preaching.

Norbert founded the abbey of Prémontré in 1120, from which the Premonstratensian Order takes its name, and later became Archbishop of Magdeburg, where he worked to restore ecclesiastical discipline and combat heresy. His feast entered the general calendar in recognition of his broader influence on the reform movements of his era, and it remains attached to the region of his episcopal labors in Germany.

For religious communities following his rule and for the wider Church, Norbert's memorial is an invitation to consider how structures of common life and prayer can serve, rather than hinder, effective pastoral ministry - a concern as relevant to religious renewal today as it was in the twelfth century.
$desc$),
('saint-ephrem-deacon-and-doctor-of-the-church', 'Saint Ephrem, Deacon and Doctor of the Church', $desc$
Celebrated on June 9 as an optional memorial, the feast of Saint Ephrem, Deacon and Doctor of the Church, falls within Ordinary Time. As an optional memorial it yields to the day's proper Mass texts where a community chooses not to observe it, though many Eastern-influenced communities give it particular attention.

The feast celebrates the gift of poetic and liturgical theology to the whole Church through a deacon rather than a priest or bishop, underscoring that the office of Doctor of the Church is tied to depth of teaching, not rank of ordination. Ephrem's hymns, still sung in Syriac liturgical traditions, express with striking beauty the mysteries of the Incarnation, the Eucharist, and Mary's place in salvation history, earning him the title "Harp of the Holy Spirit."

A deacon of Nisibis and later Edessa in the fourth century, Ephrem became renowned throughout the Christian East for his theological hymns composed against heresies of his day and in praise of the sacraments. Pope Benedict XV declared him a Doctor of the Universal Church in 1920, one of the few Doctors from the Syriac tradition, and his memorial was fixed on the Roman calendar to reflect this universal recognition of a theologian from outside the Latin and Greek mainstream.

Ephrem's feast today invites the Latin Church to draw on the riches of Eastern Christian theology and to recognize sung, poetic theology as a legitimate and powerful vehicle of doctrine - a reminder, especially valuable amid ecumenical dialogue with the Syriac Churches, that authentic teaching authority is not confined to a single liturgical family.
$desc$),
('saint-barnabas-apostle', 'Saint Barnabas, Apostle', $desc$
The obligatory memorial of Saint Barnabas, Apostle, is kept on June 11 in Ordinary Time, celebrated in red vestments in accordance with the tradition of honoring apostles with the color of the blood-witness they gave, even where, as with Barnabas, the manner of death is less definitively attested by Scripture itself.

Though not one of the Twelve, Barnabas is honored with the title "Apostle" because of his direct commissioning by the Holy Spirit for missionary work alongside Paul, recorded in the Acts of the Apostles. The feast celebrates his role as mediator and encourager within the earliest Church - introducing the converted Paul to the suspicious apostles in Jerusalem, and later co-laboring with him on the first missionary journeys that carried the Gospel beyond Judea.

Ancient tradition, including the apocryphal Acts of Barnabas, associates him with Cyprus, where he is venerated as a founder of the local Church, and his commemoration is attested from the early centuries of Christian liturgical practice in both East and West. His memorial has remained fixed in the Roman calendar through every major revision, reflecting his scriptural prominence as a co-worker of Paul and a named apostolic figure of the New Testament.

The feast today honors the ministry of encouragement (Barnabas means "son of encouragement") and reconciliation within the Christian community, and stands as a reminder that apostolic mission often depends on those who build bridges of trust between new converts and the wider Church.
$desc$),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', 'Saint Anthony of Padua, Priest and Doctor of the Church', $desc$
Observed as an obligatory memorial on June 13, the feast of Saint Anthony of Padua, Priest and Doctor of the Church, falls in Ordinary Time and is one of the most widely and popularly celebrated memorials of the year in many countries, often marked with special devotions such as blessings of bread or lilies.

The feast celebrates a Franciscan friar renowned for the clarity and evangelical fervor of his preaching, and for his profound and accessible exposition of Scripture, which earned him the title Doctor Evangelicus (Evangelical Doctor). Liturgically, it honors the vocation of the preacher who unites deep learning with pastoral simplicity, making the Gospel intelligible and compelling to ordinary believers as much as to scholars.

A former Augustinian canon who joined the Franciscans and became one of Saint Francis's most gifted early followers, Anthony died in 1231 and was canonized within a year, one of the swiftest canonizations in Church history, a sign of the immediate and widespread popular devotion he inspired. Pope Pius XII proclaimed him a Doctor of the Church in 1946, and his feast has remained fixed on June 13, the date of his death, throughout every calendar reform.

Anthony's memorial retains enormous pastoral vitality today, particularly through popular devotions associated with finding what is lost - both material objects and, more profoundly, lost faith or direction - making him one of the most beloved intercessors in the universal Church's devotional life.
$desc$),
('saint-romuald-abbot', 'Saint Romuald, Abbot', $desc$
The optional memorial of Saint Romuald, Abbot, is celebrated on June 19 within Ordinary Time; as an optional observance, its celebration is left to local or community discretion, though it holds particular importance for monastic communities in the Camaldolese tradition.

The feast honors a monastic reformer whose life sought to recover the rigor and solitude of the ancient desert fathers within a structured cenobitic framework, uniting eremitical withdrawal with communal monastic discipline. Theologically, it celebrates the enduring value of contemplative life and asceticism as a path of radical conversion, and the Church's confidence that such withdrawal from the world serves, rather than abandons, the wider community of believers.

Romuald founded numerous hermitages and monasteries across Italy in the late tenth and early eleventh centuries, most notably the hermitage of Camaldoli, from which the Camaldolese Benedictine congregation takes its name and its distinctive blend of eremitic and cenobitic life. His memorial entered the general calendar in recognition of this lasting contribution to the diversity of monastic forms within the Benedictine family.

Today Romuald's feast speaks to a Church attentive to the renewal of contemplative vocations and to the human hunger for silence and solitude amid a culture of constant activity and noise, offering his synthesis of solitude and community as a model still practiced in Camaldolese houses worldwide.
$desc$),
('saint-aloysius-gonzaga-religious', 'Saint Aloysius Gonzaga, Religious', $desc$
Kept as an obligatory memorial on June 21, the feast of Saint Aloysius Gonzaga, Religious, falls within Ordinary Time, often close to the end of the school year in many countries, a timing that resonates with his patronage of youth and students.

The celebration honors a young religious whose brief life was marked by radical renunciation of worldly rank and privilege for the sake of consecrated life, and by a purity of intention and charity that led him to give himself in service of plague victims. The feast celebrates youthful holiness as a full and serious vocation in itself, not merely a preparatory stage, and holds up self-sacrificing charity, exercised even at the cost of one's own life, as the fruit of authentic consecration.

A member of the Society of Jesus who renounced his inheritance as marquis to embrace religious poverty, Aloysius died in 1591 at the age of twenty-three after contracting an illness while caring for victims of plague in Rome. He was canonized in 1726 and later declared patron of Catholic youth by Pope Pius XI, with his feast retained as obligatory in the General Roman Calendar in recognition of this enduring patronage.

The memorial carries particular pastoral significance for young people and those who accompany them, presenting an example of how the ordinary trials of adolescence - ambition, family expectation, self-mastery - can be transfigured by grace into a path of heroic charity and holiness.
$desc$),
('saint-paulinus-of-nola-bishop', 'Saint Paulinus of Nola, Bishop', $desc$
The optional memorial of Saint Paulinus of Nola, Bishop, falls on June 22, shared on the General Roman Calendar with the optional memorial of Saints John Fisher and Thomas More; where both are optional, the celebrant or community may choose between them, or observe the day's Ordinary Time ferial texts.

The feast celebrates a bishop-poet whose conversion from a life of wealth, literary accomplishment, and public office to one of radical evangelical simplicity illustrates the Gospel call to detachment as the condition for authentic discipleship. Liturgically, the memorial highlights the sanctification of culture and the arts placed at the service of faith, since Paulinus continued to write poetry after his conversion, now directed to praise of Christ and the saints rather than worldly ambition.

A Roman aristocrat and celebrated Latin poet, friend and correspondent of Saints Augustine, Jerome, and Martin of Tours, Paulinus renounced his considerable fortune, was ordained a priest, and later became Bishop of Nola in Campania, where he died around 431. His memorial has long been kept in the region of Nola and entered the wider Roman calendar in recognition of his broader significance as a bridge figure between classical culture and Christian asceticism.

Paulinus's feast today speaks to those who must discern how to place talent, wealth, and social standing at the service of the Gospel rather than personal advancement, offering a historically concrete example of conversion that did not require abandoning gifts, but reordering them entirely toward God.
$desc$),
('saints-john-fisher-bishop-and-thomas-more-martyrs', 'Saints John Fisher, Bishop, and Thomas More, Martyrs', $desc$
Celebrated as an optional memorial on June 22, the feast of Saints John Fisher, Bishop, and Thomas More, Martyrs, is vested in red, the color of martyrdom, and shares its date with the optional memorial of Saint Paulinus of Nola on the General Roman Calendar.

The feast honors two English martyrs, a bishop and a layman, both put to death for their refusal to acknowledge the king's claim to supremacy over the Church, a refusal grounded in fidelity to the unity of the Church under the Roman See. Theologically, the memorial celebrates the primacy of conscience formed by faith over political power, and unites the witness of ordained and lay vocations in a single act of fidelity unto death.

John Fisher, Bishop of Rochester, and Thomas More, former Lord Chancellor of England, were executed within weeks of each other in 1535 under Henry VIII for their opposition to the Act of Supremacy. Canonized together by Pope Pius XI in 1935, on the fourth centenary of their deaths, their joint memorial was later added to the General Roman Calendar, uniting a bishop and a statesman as companions in martyrdom.

Their feast retains strong contemporary resonance wherever believers face pressure to subordinate conscience and faith to state authority, and Thomas More in particular is widely invoked as patron of statesmen, lawyers, and politicians called to integrity in public life.
$desc$),
('the-nativity-of-saint-john-the-baptist', 'The Nativity of Saint John the Baptist', $desc$
Celebrated on June 24 as a Solemnity, the Nativity of Saint John the Baptist ranks among the highest grade of liturgical celebration, one of only three birth-nativities kept in the Roman calendar (alongside those of Christ and of Mary), and it is vested in white, the color of joy and festivity.

The solemnity celebrates the birth of the last and greatest of the prophets, whose own conception and birth were marked by divine intervention and whose mission was entirely oriented toward preparing the way for Christ. Its placement six months before Christmas reflects the Gospel of Luke's own chronology and carries deep theological symbolism, tied since antiquity to the words of John himself, "he must increase, but I must decrease" - historically linked to the turning of the sun toward shorter days after the summer solstice, just as Christmas is linked to the sun's return after the winter solstice.

The feast is of ancient origin, attested in both East and West by the fourth century, and it was traditionally kept with the same solemnity as major feasts of the temporale, including a vigil with its own Mass, reflecting the unique honor accorded to the Forerunner among the saints. Through successive calendar reforms it has retained its rank as a solemnity, one of the few celebrations of a saint - properly speaking, a feast of a mystery of salvation history rather than merely a saint's day - to hold this highest liturgical grade.

The solemnity continues to draw immense popular devotion, particularly in cultures where Saint John's Eve (Midsummer) traditions of bonfires and water blessings persist, and it offers the Church an annual occasion to reflect on the vocation of the forerunner: to point beyond oneself to Christ, decreasing so that he may increase.
$desc$),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 'Saint Cyril of Alexandria, Bishop and Doctor of the Church', $desc$
The optional memorial of Saint Cyril of Alexandria, Bishop and Doctor of the Church, is celebrated on June 27 within Ordinary Time, its observance left to local discretion in keeping with its rank.

The feast honors the principal theological architect of the Church's defense of the true union of divine and human natures in Christ, and of Mary's title Theotokos, Mother of God, against the teaching of Nestorius. The memorial celebrates the vindication of orthodox Christology at a pivotal moment in doctrinal history, affirming that the very unity of Christ's person is inseparable from the honor due to his Mother.

As Patriarch of Alexandria in the early fifth century, Cyril presided over the Council of Ephesus in 431, which condemned Nestorianism and formally proclaimed the title Theotokos, a decision of lasting importance for both Christology and Marian doctrine. Declared a Doctor of the Church by Pope Leo XIII in 1882, his memorial entered the Roman calendar in recognition of this foundational theological contribution, still cited in later Christological definitions, including Chalcedon.

Cyril's feast remains significant today for ecumenical dialogue with the Oriental Orthodox Churches, for whom he is a towering authority, and it reminds the whole Church that precise theological language about Christ's identity is never a merely academic matter, but touches directly upon the reality of salvation itself.
$desc$),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 'Saint Irenaeus, Bishop, Martyr and Doctor of the Church', $desc$
Observed on June 28 as an obligatory memorial, the feast of Saint Irenaeus, Bishop, Martyr, and Doctor of the Church, falls on the vigil of the Solemnity of Saints Peter and Paul, a proximity that situates his witness to apostolic tradition immediately before the Church's principal celebration of her apostolic foundations. The memorial is celebrated in red, reflecting his traditional veneration as a martyr.

The feast honors the great second-century defender of apostolic tradition against Gnosticism, whose central theological insight - that the Church's unity and truth are guaranteed through unbroken succession from the apostles - remains foundational to Catholic ecclesiology. His title "Doctor of Unity," conferred by Pope Francis in 2022, celebrates his lifelong labor to demonstrate the coherence of the "rule of faith" received from the apostles against those who fragmented it through esoteric speculation.

A disciple of Polycarp, who himself had known the Apostle John, Irenaeus became Bishop of Lyon and authored Against Heresies, one of the most important theological works of the early Church. Long venerated as a martyr, though the historical evidence for the manner of his death is less certain than for some early witnesses, his title of Doctor was formally proclaimed by Pope Francis in the Apostolic Letter Fidei Scriniarium, reflecting renewed appreciation for his ecumenical significance as a bridge between Eastern and Western theological traditions.

Irenaeus's feast today speaks powerfully to a Church engaged in ecumenical dialogue and confronting new forms of doctrinal fragmentation, offering his vision of unity grounded in apostolic tradition as a model for maintaining communion amid diversity.
$desc$),
('saints-peter-and-paul-apostles', 'Saints Peter and Paul, Apostles', $desc$
Celebrated on June 29 as a Solemnity, the feast of Saints Peter and Paul ranks among the most ancient and important celebrations of the Roman calendar, observed with red vestments in honor of the apostles' martyrdom, and traditionally with a vigil Mass on the preceding evening.

The solemnity celebrates the twin foundations of the Church of Rome - Peter, given the keys of the kingdom and entrusted with the ministry of confirming his brethren in faith, and Paul, apostle to the Gentiles and preeminent missionary theologian - honoring them jointly as complementary pillars of one apostolic Church, rather than in competition with one another. It affirms the unity of the Church's mission to both the circumcised and the nations, and the Petrine ministry's grounding in the shared witness of both apostles' martyrdom at Rome.

The joint feast is attested from the earliest centuries of Roman Christianity, with the Depositio Martyrum of A.D. 354 recording their joint commemoration, and it developed alongside the growth of their respective basilicas over their traditional tomb sites. It has remained one of the fixed points of the liturgical year through every reform, retaining its rank as a Solemnity of the very highest order, on a par with Christmas and Easter in solemnity though not in the liturgical season it governs.

The feast continues to carry immense ecclesial significance as the day on which new metropolitan archbishops traditionally receive the pallium from the Pope in Rome, symbolizing their communion with the See of Peter, and it remains a privileged occasion each year for the whole Church to reflect on the complementary gifts of authority and mission that sustain her unity.
$desc$),
('the-first-martyrs-of-holy-roman-church', 'The First Martyrs of Holy Roman Church', $desc$
Kept on June 30 as an optional memorial, the feast of the First Martyrs of the Holy Roman Church falls the day after the Solemnity of Saints Peter and Paul, forming a kind of octave-like extension of that solemnity's commemoration of Roman martyrdom, and is celebrated in red.

The memorial honors the vast and largely unnamed multitude of Roman Christians put to death under Nero in A.D. 64, the first great wave of persecution suffered by the Church at Rome, distinct from though closely connected to the martyrdoms of Peter and Paul themselves. Theologically, the feast affirms that the Church's foundation in Rome rests not solely on her chief apostles but on the collective sacrifice of an entire community of the faithful.

The persecution is recorded by the Roman historian Tacitus, who describes Nero's use of Christians as scapegoats for the great fire of Rome, subjecting them to horrific public executions; the Church has kept their memory since antiquity, though the feast in its present form and date was placed on the calendar to complement, in the days immediately following, the solemnity of the two chief apostles.

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
Célébrée le 1er juin, la mémoire obligatoire de saint Justin, martyr, s'inscrit dans le Temps ordinaire, peu après la Pentecôte, et se pare de la couleur rouge propre aux martyrs. En tant que mémoire, elle ne supplante pas la liturgie dominicale mais colore la messe et l'office lorsqu'elle tombe en semaine.

Cette célébration honore un laïc et philosophe qui, après avoir cherché la vérité à travers les écoles de la philosophie païenne, reconnut dans le christianisme l'accomplissement le plus profond de la raison elle-même — la « vraie philosophie ». Sa fête célèbre l'harmonie de la foi et de la raison, la vocation de l'intellectuel à mettre son savoir au service de l'Évangile, et le sceau ultime de cette vocation dans le martyre, par lequel Justin confirma de son sang les vérités qu'il avait défendues par sa plume.

La commémoration de la mort de Justin — flagellé puis décapité à Rome sous le préfet Rusticus vers 165 — remonte à l'Antiquité chrétienne, et les Actes de son procès comptent parmi les plus anciens actes de martyrs authentiques conservés. Avant la réforme du calendrier consécutive au concile Vatican II, sa mémoire était fixée au 14 avril ; la révision de 1969 la déplaça au 1er juin, plus proche de la tradition ancienne — également suivie en Orient — qui le rattache au début de l'été, permettant à la fête de se dégager de la densité du cycle pascal.

À une époque marquée par un dialogue renouvelé entre foi, culture et science, la fête de Justin revêt une portée pastorale particulière : elle offre un modèle d'engagement sans crainte avec la pensée contemporaine, faisant de la raison un pont plutôt qu'un obstacle vers la foi. Patron des philosophes et des apologistes, il est invoqué par tous ceux qui s'efforcent de rendre compte avec intelligence de l'espérance qui est en eux.
$desc$),
('saints-marcellinus-and-peter-martyrs', 'Saints Marcellin et Pierre, martyrs', $desc$
Célébrée le 2 juin en mémoire facultative, la fête des saints Marcellin et Pierre se situe au début du Temps ordinaire et se revêt du rouge propre aux martyrs. Étant facultative, son observance est laissée à la discrétion du célébrant ou de la communauté, et peut céder la place à la férie du jour.

Cette fête commémore deux martyrs romains du début du IVe siècle, un exorciste et un prêtre, mis à mort durant la persécution de Dioclétien. Sa portée liturgique ne tient pas au détail biographique mais à leur inscription parmi les témoins que l'Église vénère sans interruption depuis l'Antiquité : leurs noms figurent dans le Canon romain lui-même, dans la liste des martyrs récitée après la consecration, unissant perpétuellement leur sacrifice à l'offrande eucharistique de toute l'Église.

La dévotion à ces martyrs est attestée de manière remarquablement précoce : le pape Damase Ier composa une épitaphe pour leur tombeau sur la via Labicana, et Constantin y fit élever une basilique à la demande de sa mère Hélène, l'une des grandes basiliques funéraires de l'époque constantinienne. Leur commémoration est demeurée au calendrier romain à travers toutes les révisions ultérieures, signe de l'estime durable que l'Église de Rome porte à ses propres martyrs, même au fil des siècles de réformes calendaires.

Sur le plan pastoral, cette mémoire invite les fidèles à se souvenir de l'enracinement profond de l'Église dans le témoignage des martyrs, en particulier ceux dont l'histoire n'est pas conservée en détail mais dont la fidélité demeure pourtant tissée au cœur même de la liturgie eucharistique. Leur fête rappelle discrètement que la sainteté échappe souvent au récit détaillé, tout en restant éternellement présente devant l'autel.
$desc$),
('saints-charles-lwanga-and-companions-martyrs', 'Saint Charles Lwanga et ses compagnons, martyrs', $desc$
Célébrée le 3 juin en mémoire obligatoire, la fête de saint Charles Lwanga et de ses compagnons se situe dans le Temps ordinaire et se célèbre en rouge, signe de leur martyre. Son rang obligatoire dans le calendrier romain général reflète la portée universelle que l'Église attache à ce groupe de martyrs relativement récent.

Cette mémoire célèbre le courage de jeunes chrétiens — pages et catéchumènes de la cour royale du Buganda — qui, entre 1885 et 1887, choisirent la mort plutôt que de trahir leur foi ou de se soumettre à des exigences contraires à la morale chrétienne. Sur le plan théologique, la fête offre une image de l'universalité et de la vitalité de l'Église, même en des terres nouvellement évangélisées, et atteste que la grâce du martyre, avec la vertu héroïque qu'elle suppose, ne se limite à aucune culture ni époque particulière mais fleurit partout où l'Évangile prend racine.

Le pape Paul VI canonisa ce groupe en 1964, durant le concile Vatican II, et leur mémoire entra au calendrier romain général lors de la réforme qui suivit, faisant d'eux les premiers saints canonisés d'Afrique subsaharienne. Leur canonisation et leur inscription au calendrier marquèrent un moment significatif dans la reconnaissance par l'Église de la maturité et de la fécondité des jeunes Églises d'Afrique.

Aujourd'hui, cette fête garde une forte résonance pastorale en Afrique et au-delà, mettant en lumière la fermeté devant la persécution, la pureté de vie et la fidélité à la conscience comme témoignages vivants pour une Église véritablement universelle. Elle est souvent célébrée avec une grande solennité en Ouganda, au sanctuaire de Namugongo, et encourage les jeunes du monde entier confrontés à la pression de compromettre leur foi.
$desc$),
('saint-boniface-bishop-and-martyr', 'Saint Boniface, évêque et martyr', $desc$
La mémoire obligatoire de saint Boniface, évêque et martyr, est célébrée le 5 juin, dans le Temps ordinaire, revêtue de rouge en reconnaissance de son martyre. Son rang obligatoire souligne l'importance durable de ce saint dans l'histoire missionnaire de l'Église latine.

Cette fête honore l'« apôtre de l'Allemagne », dont le ministre épiscopal incarna l'union de la discipline monastique, de l'obéissance ecclésiale à Rome et du zèle missionnaire dans l'évangélisation et l'organisation de l'Église chez les peuples germaniques. Liturgiquement, elle célèbre la vocation de l'évêque missionnaire qui pose les fondations institutionnelles — diocèses, monastères, conciles — sur lesquelles peut se bâtir une culture chrétienne durable, et elle honore la couronne du martyre qui scella l'œuvre de sa vie.

Moine bénédictin anglais qui reçut sa mission directement de la papauté, Boniface réorganisa les Églises franque et germanique et fut tué par des païens à Dokkum, en Frise, en 754, alors qu'il attendait des convertis pour les confirmer. Sa fête est célébrée en Occident depuis peu après sa mort et demeure un point fixe du calendrier romain à travers toutes les grandes réformes, continuité rare qui reflète son rôle fondateur dans l'évangélisation de l'Europe du Nord.

La mémoire de Boniface garde une importance particulière pour l'Église en Allemagne et aux Pays-Bas, où il est patron, et offre un modèle pour les évêques missionnaires d'aujourd'hui : fidélité à l'Église universelle unie à un travail patient et structurant d'évangélisation, entrepris sans souci de sa propre sécurité.
$desc$),
('saint-norbert-bishop', 'Saint Norbert, évêque', $desc$
Célébrée le 6 juin, la mémoire facultative de saint Norbert, évêque, tombe dans le Temps ordinaire ; étant facultative, son observance dépend des usages locaux ou des calendriers particuliers, notamment celui de l'ordre prémontré (norbertin), pour lequel ce jour revêt une solennité plus grande.

Cette célébration honore un évêque et fondateur dont la vie témoigna de la réforme de la vie cléricale et religieuse au XIIe siècle, en particulier du renouveau de la vie commune et apostolique parmi les chanoines réguliers. Sur le plan théologique, la fête souligne le besoin permanent qu'a l'Église de réformer la vie consacrée selon l'Évangile, en unissant la prière contemplative au soin pastoral actif et à la prédication.

Norbert fonda l'abbaye de Prémontré en 1120, dont l'ordre prémontré tire son nom, puis devint archevêque de Magdebourg, où il œuvra à restaurer la discipline ecclésiastique et à combattre l'hérésie. Sa fête entra au calendrier général en reconnaissance de son influence plus large sur les mouvements de réforme de son époque, et elle demeure liée à la région de son labeur épiscopal en Allemagne.

Pour les communautés religieuses qui suivent sa règle, comme pour l'Église tout entière, la mémoire de Norbert invite à réfléchir sur la manière dont les structures de vie commune et de prière peuvent servir, plutôt qu'entraver, un ministre pastoral efficace — préoccupation aussi actuelle pour le renouveau de la vie religieuse aujourd'hui qu'elle le fut au XIIe siècle.
$desc$),
('saint-ephrem-deacon-and-doctor-of-the-church', 'Saint Éphrem, diacre et docteur de l''Église', $desc$
Célébrée le 9 juin en mémoire facultative, la fête de saint Éphrem, diacre et docteur de l'Église, se situe dans le Temps ordinaire. En tant que mémoire facultative, elle cède la place aux textes propres du jour lorsqu'une communauté choisit de ne pas la célébrer, bien que de nombreuses communautés marquées par la tradition orientale lui accordent une attention particulière.

Cette fête célèbre le don d'une théologie poétique et liturgique fait à toute l'Église par un diacre plutôt que par un prêtre ou un évêque, soulignant que le titre de docteur de l'Église tient à la profondeur de l'enseignement, non au rang de l'ordination. Les hymnes d'Éphrem, encore chantés dans les traditions liturgiques syriaques, expriment avec une beauté saisissante les mystères de l'Incarnation, de l'Eucharistie et de la place de Marie dans l'histoire du salut, lui valant le titre de « harpe de l'Esprit Saint ».

Diacre de Nisibe puis d'Édesse au IVe siècle, Éphrem devint célèbre dans tout l'Orient chrétien pour ses hymnes théologiques composés contre les hérésies de son temps et en louange des sacrements. Le pape Benoît XV le déclara docteur de l'Église universelle en 1920, l'un des rares docteurs issus de la tradition syriaque, et sa mémoire fut fixée au calendrier romain pour refléter cette reconnaissance universelle d'un théologien étranger au monde latin et grec.

La fête d'Éphrem invite aujourd'hui l'Église latine à puiser dans les richesses de la théologie chrétienne orientale et à reconnaître dans la théologie chantée et poétique un véhicule légitime et puissant de la doctrine — rappel particulièrement précieux, dans le dialogue œcuménique avec les Églises syriaques, que l'autorité doctrinale authentique ne se limite pas à une seule famille liturgique.
$desc$),
('saint-barnabas-apostle', 'Saint Barnabé, apôtre', $desc$
La mémoire obligatoire de saint Barnabé, apôtre, est célébrée le 11 juin dans le Temps ordinaire, en vêtements rouges, selon la tradition qui honore les apôtres de la couleur du témoignage du sang, même lorsque, comme pour Barnabé, les circonstances de la mort ne sont pas expressement attestées par l'Écriture.

Bien qu'il ne fasse pas partie des Douze, Barnabé est honoré du titre d'« apôtre » en raison de sa mission directe reçue de l'Esprit Saint pour le travail missionnaire aux côtés de Paul, rapportée dans les Actes des Apôtres. La fête célèbre son rôle de médiateur et d'encourageur au sein de l'Église naissante — présentant Paul converti aux apôtres méfiants de Jérusalem, puis collaborant avec lui lors des premiers voyages missionnaires qui portèrent l'Évangile au-delà de la Judée.

La tradition ancienne, notamment les Actes apocryphes de Barnabé, le rattache à Chypre, où il est vénéré comme fondateur de l'Église locale, et sa commémoration est attestée dès les premiers siècles de la pratique liturgique chrétienne, en Orient comme en Occident. Sa mémoire est demeurée fixe au calendrier romain à travers toutes les grandes révisions, reflétant son importance scripturaire comme compagnon de Paul et figure apostolique nommée du Nouveau Testament.

La fête honore aujourd'hui le ministre de l'encouragement (Barnabé signifie « fils de l'encouragement ») et de la réconciliation au sein de la communauté chrétienne, et rappelle que la mission apostolique dépend souvent de ceux qui bâtissent des ponts de confiance entre les nouveaux convertis et l'Église tout entière.
$desc$),
('saint-anthony-of-padua-priest-and-doctor-of-the-church', 'Saint Antoine de Padoue, prêtre et docteur de l''Église', $desc$
Célébrée en mémoire obligatoire le 13 juin, la fête de saint Antoine de Padoue, prêtre et docteur de l'Église, tombe dans le Temps ordinaire et compte parmi les mémoires les plus largement célébrées de l'année dans de nombreux pays, souvent marquée par des dévotions particulières telles que la bénédiction du pain ou des lys.

Cette fête célèbre un frère franciscain réputé pour la clarté et la ferveur évangélique de sa prédication, ainsi que pour son exposition profonde et accessible de l'Écriture, qui lui valut le titre de Docteur évangélique. Sur le plan liturgique, elle honore la vocation du prédicateur qui unit une science profonde à une simplicité pastorale, rendant l'Évangile intelligible et vivant aussi bien pour les fidèles ordinaires que pour les savants.

Ancien chanoine augustinien devenu franciscain et l'un des premiers disciples les plus doués de saint François, Antoine mourut en 1231 et fut canonisé l'année suivante, l'une des canonisations les plus rapides de l'histoire de l'Église, signe de la dévotion populaire immédiate et massive qu'il suscita. Le pape Pie XII le proclama docteur de l'Église en 1946, et sa fête est demeurée fixée au 13 juin, jour de sa mort, à travers toutes les réformes du calendrier.

La mémoire d'Antoine garde aujourd'hui une immense vitalité pastorale, en particulier à travers les dévotions populaires liées à la recherche de ce qui est perdu — objets matériels, mais plus profondément foi ou direction perdues — faisant de lui l'un des intercesseurs les plus aimés de la vie dévotionnelle de l'Église universelle.
$desc$),
('saint-romuald-abbot', 'Saint Romuald, abbé', $desc$
La mémoire facultative de saint Romuald, abbé, est célébrée le 19 juin dans le Temps ordinaire ; observance facultative, elle est laissée à la discrétion locale ou communautaire, bien qu'elle revête une importance particulière pour les communautés monastiques de tradition camaldule.

Cette fête honore un réformateur monastique dont la vie chercha à retrouver la rigueur et la solitude des anciens Pères du désert dans un cadre cénobitique structuré, unissant le retrait érémitique à la discipline monastique communautaire. Sur le plan théologique, elle célèbre la valeur permanente de la vie contemplative et de l'ascèse comme chemin de conversion radicale, et la confiance de l'Église que ce retrait du monde sert, plutôt qu'il n'abandonne, la communauté plus large des croyants.

Romuald fonda de nombreux ermitages et monastères en Italie à la fin du Xe et au début du XIe siècle, en particulier l'ermitage de Camaldoli, dont la congrégation bénédictine camaldule tire son nom et son mélange caractéristique de vie érémitique et cénobitique. Sa mémoire entra au calendrier général en reconnaissance de cette contribution durable à la diversité des formes monastiques au sein de la famille bénédictine.

La fête de Romuald parle aujourd'hui à une Église attentive au renouveau des vocations contemplatives et à la soif humaine de silence et de solitude dans une culture d'activité et de bruit constants, offrant sa synthèse de solitude et de communauté comme un modèle encore vécu dans les maisons camaldules du monde entier.
$desc$),
('saint-aloysius-gonzaga-religious', 'Saint Louis de Gonzague, religieux', $desc$
Célébrée en mémoire obligatoire le 21 juin, la fête de saint Louis de Gonzague, religieux, tombe dans le Temps ordinaire, souvent proche de la fin de l'année scolaire dans de nombreux pays, une proximité qui résonne avec son patronage de la jeunesse et des étudiants.

Cette célébration honore un jeune religieux dont la vie brève fut marquée par un renoncement radical au rang et aux privilèges mondains pour la vie consacrée, et par une pureté d'intention et une charité qui le menèrent à se donner au service des victimes de la peste. La fête célèbre la sainteté de la jeunesse comme une vocation pleine et sérieuse en elle-même, non une simple étape préparatoire, et met en lumière la charité qui se sacrifie, jusqu'au don de sa propre vie, comme le fruit d'une consecration authentique.

Membre de la Compagnie de Jésus qui renonça à son héritage de marquis pour embrasser la pauvreté religieuse, Louis de Gonzague mourut en 1591 à l'âge de vingt-trois ans après avoir contracté une maladie en soignant les victimes de la peste à Rome. Il fut canonisé en 1726 puis déclaré patron de la jeunesse catholique par le pape Pie XI, sa fête étant maintenue comme obligatoire au calendrier romain général en reconnaissance de ce patronage durable.

Cette mémoire revêt une portée pastorale particulière pour les jeunes et ceux qui les accompagnent, offrant l'exemple de la manière dont les épreuves ordinaires de l'adolescence — ambition, attentes familiales, maîtrise de soi — peuvent être transfigurées par la grâce en un chemin de charité héroïque et de sainteté.
$desc$),
('saint-paulinus-of-nola-bishop', 'Saint Paulin de Nole, évêque', $desc$
La mémoire facultative de saint Paulin de Nole, évêque, tombe le 22 juin, partagée dans le calendrier romain général avec la mémoire facultative des saints Jean Fisher et Thomas More ; là où les deux sont facultatives, le célébrant ou la communauté peut choisir entre elles, ou observer les textes fériaux du temps ordinaire de ce jour.

La fête célèbre un évêque-poète dont la conversion, d'une vie de richesse, d'accomplissement littéraire et de charge publique vers une simplicité évangélique radicale, illustre l'appel évangélique au détachement comme condition d'un authentique disciplat. Sur le plan liturgique, la mémoire met en lumière la sanctification de la culture et des arts mis au service de la foi, puisque Paulin continua d'écrire de la poésie après sa conversion, désormais tournée vers la louange du Christ et des saints plutôt que vers l'ambition mondaine.

Aristocrate romain et poète latin célèbre, ami et correspondant des saints Augustin, Jérôme et Martin de Tours, Paulin renonça à sa fortune considérable, fut ordonné prêtre, puis devint évêque de Nole en Campanie, où il mourut vers 431. Sa mémoire fut longtemps célébrée dans la région de Nole et entra dans le calendrier romain plus large en reconnaissance de sa signification plus vaste comme figure de pont entre culture classique et ascétisme chrétien.

La fête de Paulin parle aujourd'hui à ceux qui doivent discerner comment mettre talent, richesse et rang social au service de l'Évangile plutôt que de l'avancement personnel, offrant un exemple historiquement concret de conversion qui n'exigea pas d'abandonner les dons reçus, mais de les réorienter entièrement vers Dieu.
$desc$),
('saints-john-fisher-bishop-and-thomas-more-martyrs', 'Saints Jean Fisher, évêque, et Thomas More, martyrs', $desc$
Célébrée en mémoire facultative le 22 juin, la fête des saints Jean Fisher, évêque, et Thomas More, martyrs, se revêt de rouge, couleur du martyre, et partage sa date avec la mémoire facultative de saint Paulin de Nole dans le calendrier romain général.

La fête honore deux martyrs anglais, un évêque et un laïc, tous deux mis à mort pour avoir refusé de reconnaître la prétention du roi à la suprématie sur l'Église, refus fondé sur la fidélité à l'unité de l'Église sous le Siège romain. Sur le plan théologique, la mémoire célèbre la primauté de la conscience formée par la foi sur le pouvoir politique, et unit le témoignage des vocations ordonnée et laïque en un seul acte de fidélité jusqu'à la mort.

Jean Fisher, évêque de Rochester, et Thomas More, ancien grand chancelier d'Angleterre, furent exécutés à quelques semaines d'intervalle en 1535 sous Henri VIII pour leur opposition à l'Acte de Suprématie. Canonisés ensemble par le pape Pie XI en 1935, au quatrième centenaire de leur mort, leur mémoire conjointe fut ensuite ajoutée au calendrier romain général, unissant un évêque et un homme d'État comme compagnons de martyre.

Leur fête garde une forte résonance contemporaine partout où les croyants subissent la pression de subordonner conscience et foi à l'autorité de l'État, et Thomas More en particulier est largement invoqué comme patron des hommes d'État, des juristes et des responsables politiques appelés à l'intégrité dans la vie publique.
$desc$),
('the-nativity-of-saint-john-the-baptist', 'Nativité de saint Jean-Baptiste', $desc$
Célébrée le 24 juin en Solennité, la Nativité de saint Jean-Baptiste compte parmi les plus hauts degrés de la célébration liturgique, l'une des trois seules naissances conservées dans le calendrier romain (avec celles du Christ et de Marie), et elle se revêt de blanc, couleur de la joie et de la fête.

La solennité célèbre la naissance du dernier et du plus grand des prophètes, dont la propre conception et naissance furent marquées par une intervention divine et dont la mission fut entièrement orientée vers la préparation du chemin du Christ. Son placement six mois avant Noël reflète la propre chronologie de l'Évangile de Luc et porte un symbolisme théologique profond, lié depuis l'Antiquité aux paroles de Jean lui-même, « il faut qu'il croisse et que moi je diminue » — historiquement lié au tournant du soleil vers des jours plus courts après le solstice d'été, tout comme Noël est lié au retour du soleil après le solstice d'hiver.

La fête est d'origine ancienne, attestée en Orient comme en Occident dès le IVe siècle, et elle était traditionnellement célébrée avec la même solennité que les grandes fêtes du temporal, avec une vigile dotée de sa propre messe, reflétant l'honneur unique accordé au Précurseur parmi les saints. À travers les réformes successives du calendrier, elle a conservé son rang de solennité, l'une des rares célébrations d'un saint — à proprement parler, une fête d'un mystère de l'histoire du salut plutôt qu'une simple fête de saint — à tenir ce plus haut degré liturgique.

La solennité continue d'attirer une immense dévotion populaire, particulièrement dans les cultures où subsistent les traditions de la Saint-Jean d'été (feux et bénédictions des eaux), et elle offre à l'Église une occasion annuelle de réfléchir sur la vocation du précurseur : désigner au-delà de soi-même le Christ, diminuant afin qu'il croisse.
$desc$),
('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 'Saint Cyrille d''Alexandrie, évêque et docteur de l''Église', $desc$
La mémoire facultative de saint Cyrille d'Alexandrie, évêque et docteur de l'Église, est célébrée le 27 juin dans le Temps ordinaire, son observance étant laissée à la discrétion locale conformément à son rang.

La fête honore le principal architecte théologique de la défense par l'Église de la véritable union des natures divine et humaine dans le Christ, et du titre de Marie Théotokos, Mère de Dieu, contre l'enseignement de Nestorius. La mémoire célèbre la revendication de la christologie orthodoxe à un moment charnière de l'histoire doctrinale, affirmant que l'unité même de la personne du Christ est inséparable de l'honneur dû à sa Mère.

Patriarche d'Alexandrie au début du Ve siècle, Cyrille présida le concile d'Éphèse en 431, qui condamna le nestorianisme et proclama formellement le titre de Théotokos, décision d'une importance durable tant pour la christologie que pour la doctrine mariale. Déclaré docteur de l'Église par le pape Léon XIII en 1882, sa mémoire entra au calendrier romain en reconnaissance de cette contribution théologique fondatrice, encore citée dans les définitions christologiques ultérieures, y compris Chalcédoine.

La fête de Cyrille demeure aujourd'hui significative pour le dialogue œcuménique avec les Églises orthodoxes orientales, pour lesquelles il est une autorité considérable, et elle rappelle à toute l'Église que le langage théologique précis sur l'identité du Christ n'est jamais une question purement académique, mais touche directement à la réalité même du salut.
$desc$),
('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 'Saint Irénée, évêque, martyr et docteur de l''Église', $desc$
Célébrée le 28 juin en mémoire obligatoire, la fête de saint Irénée, évêque, martyr et docteur de l'Église, tombe à la veille de la solennité des saints Pierre et Paul, proximité qui situe son témoignage à la tradition apostolique juste avant la principale célébration par l'Église de ses fondations apostoliques. La mémoire se célèbre en rouge, reflétant sa vénération traditionnelle comme martyr.

La fête honore le grand défenseur du IIe siècle de la tradition apostolique contre le gnosticisme, dont l'intuition théologique centrale — que l'unité et la vérité de l'Église sont garanties par une succession ininterrompue depuis les apôtres — demeure fondatrice pour l'ecclésiologie catholique. Son titre de « docteur de l'unité », conféré par le pape François en 2022, célèbre son labeur de toute une vie pour démontrer la cohérence de la « règle de foi » reçue des apôtres contre ceux qui la fragmentaient par des spéculations ésotériques.

Disciple de Polycarpe, qui lui-même avait connu l'apôtre Jean, Irénée devint évêque de Lyon et écrivit Contre les hérésies, l'une des œuvres théologiques les plus importantes de l'Église ancienne. Longtemps vénéré comme martyr, bien que les preuves historiques des circonstances de sa mort soient moins certaines que pour d'autres témoins anciens, son titre de docteur fut formellement proclamé par le pape François dans la lettre apostolique Fidei Scriniarium, reflétant une appréciation renouvelée de sa portée œcuménique comme pont entre les traditions théologiques d'Orient et d'Occident.

La fête d'Irénée parle aujourd'hui avec force à une Église engagée dans le dialogue œcuménique et affrontant de nouvelles formes de fragmentation doctrinale, offrant sa vision de l'unité enracinée dans la tradition apostolique comme modèle pour maintenir la communion dans la diversité.
$desc$),
('saints-peter-and-paul-apostles', 'Saints Pierre et Paul, apôtres', $desc$
Célébrée le 29 juin en Solennité, la fête des saints Pierre et Paul compte parmi les plus anciennes et les plus importantes célébrations du calendrier romain, observée en ornements rouges en l'honneur du martyre des apôtres, et traditionnellement avec une messe de vigile la veille au soir.

La solennité célèbre les deux fondations jumelles de l'Église de Rome — Pierre, à qui furent données les clefs du royaume et confié le ministre de confirmer ses frères dans la foi, et Paul, apôtre des nations et théologien missionnaire prééminent — les honorant conjointement comme des piliers complémentaires d'une seule Église apostolique, plutôt qu'en concurrence l'un avec l'autre. Elle affirme l'unité de la mission de l'Église envers les circoncis et les nations, et l'enracinement du ministre pétrinien dans le témoignage partagé du martyre des deux apôtres à Rome.

La fête conjointe est attestée dès les premiers siècles du christianisme romain, la Depositio Martyrum de l'an 354 enregistrant leur commémoration commune, et elle se développa aux côtés de la croissance de leurs basiliques respectives sur leurs sites tombaux traditionnels. Elle demeure l'un des points fixes de l'année liturgique à travers toutes les réformes, conservant son rang de Solennité du plus haut ordre, à l'égal de Noël et de Pâques en solennité, quoique non dans le temps liturgique qu'elle gouverne.

La fête garde une immense signification ecclésiale comme le jour où les nouveaux archevêques métropolitains reçoivent traditionnellement le pallium du pape à Rome, symbolisant leur communion avec le Siège de Pierre, et elle demeure chaque année une occasion privilégiée pour toute l'Église de réfléchir sur les dons complémentaires d'autorité et de mission qui soutiennent son unité.
$desc$),
('the-first-martyrs-of-holy-roman-church', 'Les premiers martyrs de la sainte Église de Rome', $desc$
Célébrée le 30 juin en mémoire facultative, la fête des premiers martyrs de la sainte Église de Rome tombe le lendemain de la solennité des saints Pierre et Paul, formant une sorte de prolongement, à la manière d'une octave, de la commémoration du martyre romain de cette solennité, et se célèbre en rouge.

La mémoire honore l'immense multitude, en grande partie anonyme, de chrétiens romains mis à mort sous Néron en l'an 64, la première grande vague de persécution subie par l'Église à Rome, distincte quoique étroitement liée aux martyres mêmes de Pierre et de Paul. Sur le plan théologique, la fête affirme que le fondement de l'Église à Rome ne repose pas seulement sur ses princes des apôtres, mais sur le sacrifice collectif de toute une communauté de fidèles.

La persécution est rapportée par l'historien romain Tacite, qui décrit l'utilisation par Néron des chrétiens comme boucs émissaires du grand incendie de Rome, les soumettant à des exécutions publiques atroces ; l'Église a gardé leur mémoire depuis l'Antiquité, bien que la fête, sous sa forme et sa date actuelles, ait été placée au calendrier pour compléter, dans les jours suivant immédiatement, la solennité des deux princes des apôtres.

La mémoire donne aujourd'hui une voix aux innombrables martyrs sans nom de toute époque dont les histoires individuelles sont perdues pour l'histoire, mais dont le témoignage collectif demeure fondateur pour l'identité de l'Église, invitant les fidèles à honorer une sainteté qui ne laisse d'autre trace que la fidélité elle-même.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;



```sql
-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-justin-martyr', 'Sanctus Iustinus, martyr', $desc$
Die prima mensis Iunii memoria obligatoria Sancti Iustini, martyris, in Calendario Romano Generali recolitur, inter dies per annum post Pentecosten collocata. Color liturgicus ruber est, martyrii signum. Cum memoria sit, non memoria, non sollemnitas vel festum, liturgiam dominicalem non excludit, sed Missam et Officium feriale, si eo die occurrat, colorat.

Haec celebratio virum laicum et philosophum honorat, qui, veritatem per scholas philosophiae paganae quaesitam, in Christianismo tandem invenit id quod ratio ipsa altissime desiderabat: **veram philosophiam**. Festum eius concordiam fidei et rationis celebrat, vocationem doctorum ut scientiam Evangelio subiciant, atque huius vocationis sigillum ultimum in martyrio, quo Iustinus sanguine confirmavit quae calamo defenderat.

Commemoratio mortis Iustini - qui flagellis caesus et Romae sub praefecto Rustico circa annum CLXV decapitatus est - antiquissimas radices habet, et Acta iudicii eius inter vetustissima martyrum acta authentica numerantur quae ex antiquitate supersunt. Ante instaurationem Calendarii post Concilium Vaticanum II peractam, memoria eius die XIV Aprilis servabatur; recognitio anni MCMLXIX eam ad diem I Iunii transtulit, propius traditioni antiquae, apud Orientales quoque servatae, quae eum aestatis initio consociat, ita ut festum a densitate temporis quadragesimalis-paschalis liberius consisteret.

Aetate nostra, qua dialogus inter fidem, culturam et scientiam renovatur, festum Iustini singularem vim pastoralem habet: exemplar praebet cum cogitatione huius temporis sine timore congrediendi, ratione tamquam ponte, non obstaculo, ad fidem utendo. Patronus philosophorum et apologetarum est, eiusque testimonium Ecclesia invocat pro omnibus qui rationem spei quae in ipsis est reddere student.
$desc$),

('saints-marcellinus-and-peter-martyrs', 'Sancti Marcellinus et Petrus, martyres', $desc$
Die secunda mensis Iunii memoria ad libitum Sanctorum Marcellini et Petri, martyrum, agitur, inter dies per annum post Pentecosten, colore rubro martyrii proprio. Cum memoria ad libitum sit, celebratio fidelibus et sacerdotibus optione relinquitur, ita ut cursus ordinarius temporis liturgici plerumque praevaleat.

Hi duo martyres Romani, exorcista et presbyter, fidem usque ad sanguinis effusionem servaverunt, testimonium reddentes Christo in ipsa urbe quae eos ad mortem damnavit. Eorum memoria Ecclesiam docet fidelitatem in persecutione, et unitatem inter clerum minorem maioremque in eodem certamine pro fide confirmat.

Marcellinus et Petrus sub persecutione Diocletiani, saeculo quarto ineunte, martyrium passi sunt; eorum nomina inter antiquissima in traditione Romana leguntur, adeo ut in ipso Canone Romano, inter martyres post consecrationem commemoratos, locum obtineant - signum venerationis quam iam saeculo quinto Ecclesia Romana eis tribuebat. Instauratio Calendarii anno MCMLXIX facta memoriam eorum ab obligatoria ad libitum redegit, cultum antiquum servans sine onere obligationis universalis.

Horum martyrum exemplum fideles hodiernos invitat ad considerandum quomodo humiles ministri Ecclesiae, saepe ignoti mundo, magna constantia fidem confiteri possint. Eorum inclusio in ipso Canone Missae quotidie memoriam eorum praesentem reddit, etiam ubi memoria liturgica non celebratur.
$desc$),

('saints-charles-lwanga-and-companions-martyrs', 'Sancti Carolus Lwanga et Socii, martyres', $desc$
Die tertia mensis Iunii memoria obligatoria Sanctorum Caroli Lwanga et Sociorum, martyrum, in Calendario Romano recolitur, colore rubro insignita, tempore per annum post Pentecosten. Hoc festum peculiarem locum tenet, cum martyres recentiores et extra Europam passos celebret, testimonium universalitatis Ecclesiae praebens.

Horum iuvenum martyrum cultus theologiam martyrii in contextu novo illustrat: fidelitas Baptismo data praevaluit etiam contra potestatem regiam et minas mortis atrocissimae. Carolus et socii, pagi aulici regis, castitatem et fidem Christianam servare maluerunt quam voluntati regis Mwanga II obtemperare, sic Evangelium usque ad supremum sacrificium testificantes.

Inter annos MDCCCLXXXV et MDCCCLXXXVII in regno Bugandae, hodierna Uganda, hi iuvenes, alii catechumeni alii iam baptizati, igne combusti vel gladio caesi sunt quia fidem abnegare recusabant. Papa Paulus VI eos anno MCMLXIV canonizavit, primos sanctos Africae subsaharianae hac ratione ab Ecclesia latina declaratos; eorum memoria statim post canonizationem Calendario universali inserta est, et instauratio liturgica anni MCMLXIX eam ut obligatoriam confirmavit.

Horum martyrum exemplum praesertim iuvenes hodiernos alloquitur, eos invitans ut fidelitatem castitatis et fidei etiam inter pressuras sociales et culturales tueantur. Eorum cultus signum est Ecclesiae vere catholicae, in omni gente et natione radicatae, sanguine martyrum ubique terrarum fecundatae.
$desc$),

('saint-boniface-bishop-and-martyr', 'Sanctus Bonifatius, episcopus et martyr', $desc$
Die quinta mensis Iunii memoria obligatoria Sancti Bonifatii, episcopi et martyris, recolitur, colore rubro martyrii, in tempore per annum post Pentecosten. Hic dies illum honorat qui, monachus Anglus, ad gentes Germanicas evangelizandas se totum contulit atque episcopalem in illis regionibus Ecclesiam constituit.

Theologia huius festi in ipsa missione evangelizandi radicatur: Bonifatius, arborem sacram Donaris - vulgo "Thor" - propria manu succidens, non solum superstitionem paganam publice refutavit, sed etiam Crucem Christi supra idola veterum deorum triumphare ostendit. Eius vita exemplum praebet zeli apostolici qui culturas transformat sine violentia, sed potestate signi et verbi.

Bonifatius, natus in Anglia, dioceses per Germaniam ordinavit, monasteria fundavit, atque relationes inter Ecclesiam Germanicam et Sedem Romanam firmiter statuit; senex iam, ad gentes Frisias evangelizandas rediit, ubi anno DCCLIV apud Dokkum a paganis interfectus est. Vocatur ideo "Apostolus Germaniae." Cultus eius statim post mortem increvit, et memoria eius in Calendario Romano post instaurationem anni MCMLXIX ut obligatoria retenta est, testimonium perpetuum missionis ad gentes tribuens.

Bonifatii exemplum Ecclesiam hodiernam ad novam evangelizationem incitat, praesertim in regionibus ubi fides antiquitus florens nunc languescit vel oblivioni traditur. Fideles invitat ut audaciam missionalem cum patientia pastorali coniungant, sciendo fructus evangelizationis saepe post multa saecula plene maturescere.
$desc$),

('saint-norbert-bishop', 'Sanctus Norbertus, episcopus', $desc$
Die sexta mensis Iunii memoria ad libitum Sancti Norberti, episcopi, celebratur, colore albo insignita, in tempore per annum post Pentecosten. Cum memoria ad libitum sit, eius celebratio optioni particularis Ecclesiae vel communitatis relinquitur.

Norbertus, vita mutata a curiali in praedicatorem paenitentiae, exemplum praebet conversionis radicalis et zeli reformandae vitae clericalis et religiosae. Ordinem Praemonstratensem instituens, canonicos regulares secundum regulam Augustini viventes coniunxit vitae contemplativae cum ministerio pastorali actuoso, ita ut sanctitas personalis et cura animarum simul florerent.

Natus circa annum MLXXX, Norbertus post conversionem subitam praedicator itinerans factus est, Praemonstrati in Gallia anno MCXXI ordinem novum fundavit, et tandem Archiepiscopus Magdeburgensis creatus est, ubi Ecclesiam a laxitate ad disciplinam revocare studuit. Obiit anno MCXXXIV; instauratio Calendarii anni MCMLXIX eius memoriam ut ad libitum servavit, locum dans aliis celebrationibus sanctorum fundatorum.

Norbertus fideles hodiernos invitat ad considerandam vim conversionis interioris, quae vitam totam transformare potest, atque ad quaerendam illam unionem inter orationem et actionem apostolicam quae vera reformatio Ecclesiae semper requirit.
$desc$),

('saint-ephrem-deacon-and-doctor-of-the-church', 'Sanctus Ephraem, diaconus et Ecclesiae doctor', $desc$
Die nona mensis Iunii memoria ad libitum Sancti Ephraem, diaconi et Ecclesiae doctoris, in Calendario Romano occurrit, colore albo, tempore per annum post Pentecosten. Sanctus, licet numquam presbyter factus sit, inter doctores Ecclesiae Latinae computatur ob eximiam doctrinae et poeseos sacrae excellentiam.

Ephraem, "Cithara Spiritus Sancti" appellatus, theologiam per hymnos et carmina magis quam per tractatus scholasticos exposuit, ostendens fidem posse pulchritudine verborum et musicae tam profunde quam ratione discursiva communicari. Eius opera Mariologiam, mysteria Incarnationis et Eucharistiae, necnon vitam asceticam, poetico modo illustrant, ita ut theologia et liturgia arte inseparabiliter iungantur.

Natus Nisibi in Mesopotamia circa annum CCCVI, diaconus ecclesiae Syriacae factus, scholam theologicam Edessae rexit, atque innumeros hymnos composuit qui usque hodie in liturgiis Syriacis resonant; obiit anno CCCLXXIII pauperibus in peste laborantibus serviens. Anno MCMXX Benedictus XV eum Doctorem Ecclesiae declaravit, primum inter Syros hoc titulo insignitum; instauratio liturgica anni MCMLXIX memoriam eius, prius minus frequentatam in Occidente, ut ad libitum in Calendarium universale intulit.

Ephraem hodiernos invitat ad redintegrandam pulchritudinem in cultu divino et in praedicatione fidei, ostendens quomodo poesis et musica sacra instrumenta efficacissima catechesis et contemplationis esse possint.
$desc$),

('saint-barnabas-apostle', 'Sanctus Barnabas, Apostolus', $desc$
Die undecima mensis Iunii memoria obligatoria Sancti Barnabae, Apostoli, celebratur, colore albo insignita, tempore per annum post Pentecosten. Quamvis inter Duodecim non numeretur, titulo apostolico ab antiquissima traditione ornatur, ob peculiare munus in prima Ecclesiae expansione.

Barnabas, cuius nomen "filius consolationis" interpretatur, imaginem exhibet discipuli qui, generositate et prudentia insignis, alios in fide confirmat et communitatem aedificat. Eius exemplum praesertim illos illuminat qui in Ecclesia munus mediationis et reconciliationis gerunt, sicut ipse Paulum, adhuc suspectum, Hierosolymitanae communitati commendavit.

Levita Cyprius, Ioseph nomine, qui ab Apostolis Barnabas appellatus est, socius Pauli in primo itinere missionali fuit, Antiochiae Ecclesiam auxit, et in Actibus Apostolorum saepe memoratur ob suam liberalitatem et discretionem spiritualem. Traditio eum in Cypro martyrium passum tradit. Cum in Calendario ante instaurationem iam die XI Iunii coleretur, recognitio anni MCMLXIX gradum eius ut memoriae obligatoriae confirmavit, agnitione data muneris eius vere apostolici licet extra Duodecim.

Barnabae exemplum fideles hodiernos ad opus consolationis et incorporationis in communitate ecclesiali invitat, praesertim erga illos qui, sicut olim Paulus, primos passus in fide vel in vita ecclesiali difficulter inveniunt.
$desc$),

('saint-anthony-of-padua-priest-and-doctor-of-the-church', 'Sanctus Antonius Patavinus, presbyter et Ecclesiae doctor', $desc$
Die tertia decima mensis Iunii memoria obligatoria Sancti Antonii Patavini, presbyteri et Ecclesiae doctoris, occurrit, colore albo, in tempore per annum post Pentecosten. Inter sanctos popularissimos numeratur, cuius invocatio per totum orbem Christianum diffusa est.

Antonius, frater Franciscanus, praedicator eximius contra haereses temporis sui - praesertim contra Catharos - exstitit, adeo ut "Malleus Haereticorum" vocaretur; eius eloquentia scientiam theologicam cum ardore apostolico et simplicitate evangelica coniunxit, ostendens praedicationem veram semper ex intima cum Deo unione oriri debere.

Natus Ulixbonae anno MCXCV, frater Minor factus, a Francisco ipso ad theologiam docendam missus est; obiit Patavii anno MCCXXXI, admodum iuvenis. Pius XII eum anno MCMXLVI Doctorem Ecclesiae declaravit, "Doctorem Evangelicum" appellans. Devotio popularis, quae eum patronum rerum amissarum invocat, testimonium perhibet quam profunde eius sanctitas in cor populi Christiani penetraverit; instauratio liturgica anni MCMLXIX memoriam eius ut obligatoriam confirmavit, dignitatem doctoralem agnoscens.

Antonii exemplum fideles hodiernos ad praedicationem simplicem et efficacem invitat, quae doctrinam soliditate et caritate populari simul praestet, atque ad fiduciam in intercessione sanctorum pro rebus etiam minimis vitae quotidianae.
$desc$),

('saint-romuald-abbot', 'Sanctus Romualdus, abbas', $desc$
Die undevicesima mensis Iunii memoria ad libitum Sancti Romualdi, abbatis, in Calendario Romano recolitur, colore albo, tempore per annum post Pentecosten. Cum memoria ad libitum sit, celebratio secundum consuetudinem particularium Ecclesiarum instituitur.

Romualdus vitam monasticam ad puritatem primaevam heremiticae disciplinae reducere studuit, coniungens solitudinem contemplativam cum vita communi fratrum, ita ut disciplina rigorosa et caritas fraterna simul in una forma vitae coalescerent. Eius exemplum ostendit quomodo silentium et paenitentia viam ad intimam cum Deo unionem aperiant.

Natus Ravennae circa annum DCCCCLI, post vitam saecularem turbulentam ad monasterium conversus est, plures domus reformavit, et tandem apud Campum Maldulum eremum instituit unde Ordo Camaldulensis nomen traxit. Obiit anno MXXVII. Recognitio Calendarii anni MCMLXIX memoriam eius, prius die VII Februarii servatam, ad diem XIX Iunii transtulit, ut a densitate temporis quadragesimalis segregaretur.

Romualdi exemplum hodiernos invitat ad quaerendum in vita quotidiana spatia silentii et orationis, etiam in medio societatis strepitu plenae, sciendo hanc solitudinem non fugam esse sed fontem verae communionis fraternae.
$desc$),

('saint-aloysius-gonzaga-religious', 'Sanctus Aloisius Gonzaga, religiosus', $desc$
Die vicesima prima mensis Iunii memoria obligatoria Sancti Aloisii Gonzaga, religiosi, celebratur, colore albo insignita, tempore per annum post Pentecosten. Hic sanctus iuvenis inter patronos iuventutis praecipuum locum tenet, exemplum sanctitatis in ipso aetatis flore ostendens.

Aloisius, hereditate nobili et gloria mundana sponte relictis, vitam religiosam in Societate Iesu elegit, ostendens quomodo gratia divina possit vincere etiam ambitiones et honores saeculares maxime blandientes. Eius mors, dum aegrotos peste laborantes caritative sublevat, caritatem heroicam usque ad supremum sacrificium exemplificat.

Natus anno MDLXVIII in familia principum Mantuanorum, Aloisius adulescens Societati Iesu nomen dedit, contra voluntatem paternam; Romae, dum in nosocomio pestilentibus servit, morbum ipse contraxit et anno MDXCI, vix tricesimum aetatis annum agens, obiit. Devotio erga eum statim inter iuvenes exorta est; instauratio liturgica anni MCMLXIX memoriam eius ut obligatoriam confirmavit, eum patronum praecipuum iuventutis Christianae declarans.

Aloisii exemplum praesertim iuvenes hodiernos alloquitur, eos invitans ut vocationem propriam supra ambitiones mundanas anteponant, et caritatem erga proximum, etiam cum periculo vitae propriae, sine formidine exerceant.
$desc$),

('saint-paulinus-of-nola-bishop', 'Sanctus Paulinus Nolanus, episcopus', $desc$
Die vicesima secunda mensis Iunii memoria ad libitum Sancti Paulini Nolani, episcopi, in Calendario Romano occurrit, colore albo, tempore per annum post Pentecosten. Cum eodem die etiam memoria Sanctorum Ioannis Fisher et Thomae Mori celebretur, particulari Ecclesiae vel fidelibus optio relinquitur.

Paulinus, vir nobilis et opibus abundans, exemplum praebet renuntiationis evangelicae: divitiis et honoribus saecularibus sponte depositis, vitam episcopalem simplicem et poeticam elegit, ostendens quomodo cultura et eloquentia possint plene Evangelio subici, non extincta sed transformata.

Natus Burdigalae circa annum CCCLIV, senator Romanus et vir litteratus, post uxoris consensum bona sua pauperibus distribuit et presbyter, deinde episcopus Nolanus in Campania factus est; carminibus sacris et epistulis cum Augustino atque Hieronymo amicitiam spiritualem coluit. Obiit anno CDXXXI. Instauratio Calendarii anni MCMLXIX memoriam eius ut ad libitum in Calendarium universale primum intulit, cultum antea magis localem Campaniae ad Ecclesiam universalem extendens.

Paulini exemplum hodiernos, praesertim homines cultos et opibus praeditos, invitat ad considerandam vanitatem divitiarum temporalium prae thesauro incorruptibili amicitiae cum Deo et fratribus in fide.
$desc$),

('saints-john-fisher-bishop-and-thomas-more-martyrs', 'Sancti Ioannes Fisher et Thomas Morus, martyres', $desc$
Die vicesima secunda mensis Iunii memoria ad libitum Sanctorum Ioannis Fisher, episcopi, et Thomae Mori, martyrum, recolitur, colore rubro martyrii insignita, tempore per annum post Pentecosten. Optio celebrandi inter hanc memoriam et illam Sancti Paulini eodem die particulari Ecclesiae relinquitur.

Hi duo martyres Anglicani, episcopus alter, laicus alter, unitatem Ecclesiae et primatum Petrinum usque ad mortem defenderunt, recusantes Actum Supremationis regiae super Ecclesiam agnoscere. Eorum testimonium ostendit conscientiam rectam potestati civili, etiam summae, subiici non posse ubi fides et unitas Ecclesiae in periculum vocantur.

Ioannes Fisher, Episcopus Roffensis et vir doctrina insignis, atque Thomas Morus, cancellarius regni Angliae et humanista celeberrimus, ambo sub rege Henrico VIII anno MDXXXV capite damnati sunt quia supremationem regiam super Ecclesiam agnoscere noluerunt. Pius XI eos anno MCMXXXV simul canonizavit. Instauratio Calendarii anni MCMLXIX eorum memoriam communem ut ad libitum instituit, eodem die quo Paulinus Nolanus, ita ut particulares Ecclesiae inter has celebrationes eligere possint.

Horum martyrum exemplum hodiernos invitat ad fidelitatem conscientiae rectae etiam ubi potestates civiles fidem premunt, atque ad testimonium reddendum unitati Ecclesiae supra omnem commodum temporalem vel pericula personalia.
$desc$),

('the-nativity-of-saint-john-the-baptist', 'Nativitas Sancti Ioannis Baptistae', $desc$
Die vicesima quarta mensis Iunii Sollemnitas Nativitatis Sancti Ioannis Baptistae celebratur, colore albo insignita, sex mensibus ante Nativitatem Domini secundum Evangelium Lucae collocata. Haec sollemnitas inter rarissimas est quae natalem diem non mortis sed ipsius ortus sancti recolunt, honore quem sola Beata Virgo Maria et Dominus Iesus praeterea in Calendario obtinent.

Ioannes, ultimus prophetarum Veteris Testamenti et primus testis Novi, in ipso ortu suo mysterium salutis annuntiat: eius nativitas mirabilis, sterilitate Elisabeth superata, praeparationem et gaudium adventus Messiae praesignat. Sollemnitas eius ideo non tantum vitam sancti particularis, sed ipsum mysterium Praecursoris celebrat, qui "viam Domini parare" ab utero matris destinatus est.

Cultus Nativitatis Ioannis Baptistae ad antiquissima tempora Ecclesiae remontat, jam saeculo quarto in Oriente et Occidente pariter celebratus, coniunctus computo sex mensium inter Annuntiationem et Nativitatem Ioannis, deinde inter hanc et Nativitatem Domini, secundum Lucae narrationem. Instauratio liturgica anni MCMLXIX hanc sollemnitatem antiquissimam integre servavit, eius praecipuam dignitatem inter festivitates sanctorum agnoscens.

Fideles hodierni per hanc sollemnitatem invitantur ad considerandam vocationem propriam iam ab utero materno a Deo praeparatam, atque ad missionem Praecursoris imitandam: minui ut Christus crescat, et viam Domini in corde proprio et in mundo humiliter parare.
$desc$),

('saint-cyril-of-alexandria-bishop-and-doctor-of-the-church', 'Sanctus Cyrillus Alexandrinus, episcopus et Ecclesiae doctor', $desc$
Die vicesima septima mensis Iunii memoria ad libitum Sancti Cyrilli Alexandrini, episcopi et Ecclesiae doctoris, occurrit, colore albo, tempore per annum post Pentecosten. Hic dies unum ex magnis defensoribus fidei Christologicae et Mariologicae honorat.

Cyrillus, adversus Nestorium pugnans, veritatem unius personae in Christo, Deo et homine, defendit, atque ex hac veritate consequenter titulum Beatae Virgini Mariae **Theotokos**, id est Deiparae, vindicavit. Eius theologia ostendit quomodo Mariologia semper ex Christologia proficiscatur, et quomodo defensio veri tituli Mariae ipsam fidem in Incarnationem Verbi tueatur.

Episcopus Alexandrinus a saeculo quinto ineunte, Cyrillus in Concilio Ephesino anno CDXXXI praesedit, ubi Nestorii doctrina damnata est et titulus Theotokos sollemniter confirmatus. Obiit anno CDXLIV. Leo XIII eum anno MDCCCLXXXII Doctorem Ecclesiae declaravit, "Doctorem Incarnationis" appellans. Instauratio liturgica anni MCMLXIX memoriam eius ut ad libitum in Calendarium universale intulit, prius minus frequentatam extra traditionem Orientalem et Alexandrinam.

Cyrilli exemplum fideles hodiernos invitat ad firmitatem in confessione plena mysterii Incarnationis, atque ad veram devotionem Marianam quae semper ex vera fide Christologica oriatur, non ab ea seiuncta.
$desc$),

('saint-irenaeus-bishop-martyr-and-doctor-of-the-church', 'Sanctus Irenaeus, episcopus, martyr et Ecclesiae doctor', $desc$
Die vicesima octava mensis Iunii memoria obligatoria Sancti Irenaei, episcopi, martyris et Ecclesiae doctoris, celebratur, colore rubro insignita, tempore per annum post Pentecosten, pridie sollemnitatis Sanctorum Petri et Pauli. Titulus martyris, recentissime additus, huic memoriae peculiarem significationem confert inter festa mensis Iunii.

Irenaeus, discipulus Polycarpi qui ipse a Ioanne Apostolo doctrinam acceperat, catenam traditionis apostolicae usque ad ipsos Apostolos viva voce transmisit, atque opere suo **Adversus Haereses** contra doctrinas gnosticas veritatem unitatis inter Deum Creatorem et Deum Redemptorem, atque integritatem historiae salutis, egregie defendit.

Natus in Asia Minore circa medium saeculum secundum, Irenaeus episcopus Lugdunensis in Gallia factus est, ubi Ecclesiam post persecutionem gubernavit et pacem inter Ecclesias Orientis et Occidentis de quaestione paschali sedulo curavit; mortem eius circa annum CCII antiqua traditio martyrio ascribit, licet documenta certa desint. Instauratio Calendarii anni MCMLXIX eum inter doctores sine titulo martyris posuit, propter incertitudinem historicam; Papa Franciscus autem anno MMXXII, re accuratius considerata, titulum martyris illi restituit, eum "Doctorem Unitatis" nominans, ob eius studium ad unitatem Ecclesiae inter Orientem et Occidentem fovendam.

Irenaei exemplum hodiernos ad quaerendam veram unitatem Ecclesiae, per fidelem traditionis apostolicae transmissionem, invitat, atque ad defensionem integritatis doctrinae contra ideologias quae hodie, sicut olim gnosticismus, fidem simplicem populi Dei subvertere conantur.
$desc$),

('saints-peter-and-paul-apostles', 'Sancti Petrus et Paulus, Apostoli', $desc$
Die vicesima nona mensis Iunii Sollemnitas Sanctorum Petri et Pauli, Apostolorum, agitur, colore albo insignita, inter praecipuas totius anni sollemnitates. Haec dies festum patronale urbis Romae constituit et, in multis regionibus, praeceptum manet.

Petrus et Paulus, licet vocatione et charismate diversissimi, unam eandemque Ecclesiam aedificant: alter fundamentum visibile unitatis et communionis, alter praeco audacissimus Evangelii ad gentes. Eorum coniuncta celebratio ostendit quomodo diversitas donorum in una eademque missione Ecclesiae ad unitatem convergat, potestate scilicet et amore.

Ambo Romae sub Nerone martyrium passi sunt, Petrus cruce affixus, ut traditio narrat, capite deorsum verso, Paulus gladio decollatus, circa annum LXIV vel paulo post. Eorum sepulcra, in Vaticano et in Via Ostiensi, iam ab antiquissimis temporibus culta, fundamentum devotionis Romanae constituunt. Instauratio liturgica anni MCMLXIX hanc sollemnitatem antiquissimam, iam a saeculo quarto celebratam, integre confirmavit, eius praecipuam dignitatem inter omnes anni sollemnitates retinens.

Fideles hodierni per hanc sollemnitatem invitantur ad considerandam pulchritudinem Ecclesiae quae in diversitate charismatum unita manet, atque ad imitandam fortitudinem duorum Apostolorum qui, humanis defectibus non obstantibus, usque ad supremum testimonium sanguinis Christo fideles perstiterunt.
$desc$),

('the-first-martyrs-of-holy-roman-church', 'Sancti Primi Martyres Sanctae Romanae Ecclesiae', $desc$
Die trigesima mensis Iunii memoria ad libitum Sanctorum Primorum Martyrum Sanctae Romanae Ecclesiae recolitur, colore rubro insignita, statim post sollemnitatem Sanctorum Petri et Pauli collocata. Hi martyres, licet nominibus fere omnes ignoti, primam magnam persecutionem Christianorum Romae passam repraesentant.

Horum martyrum anonymorum cultus ostendit quod sanctitas et fidelitas usque ad mortem non tantum insignibus personis, sed etiam multitudini fidelium simplicium, quorum nomina sola Deo nota sunt, propria est. Eorum memoria omnem persecutionis victimam, etiam ignotam mundo, tamquam testem authenticum Christi agnoscit.

Anno LXIV, post incendium magnum urbis Romae, Nero Christianos, tamquam incendii auctores falso accusatos, atrocissimis suppliciis - crucibus, bestiis, ignibus - necavit, sicut historicus Tacitus in Annalibus suis testatur. Hi martyres, licet distincti a Petro et Paulo qui eodem tempore vel paulo post passi sunt, arctissime cum illis coniunguntur, tamquam prima magna moles sanguinis pro Christo Romae effusi. Instauratio liturgica anni MCMLXIX hanc memoriam, prius minus distincte in Calendario praesentem, ut ad libitum instituit, statim post sollemnitatem Apostolorum Petri et Pauli, ut fundamentum martyriale Ecclesiae Romanae plene appareat.

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

-- =========================================================
-- Roman General Calendar - July (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-thomas-apostle', 'Saint Thomas, Apostle', 'saint'),
('saint-elizabeth-of-portugal', 'Saint Elizabeth of Portugal', 'saint'),
('saint-anthony-zaccaria-priest', 'Saint Anthony Zaccaria, Priest', 'saint'),
('saint-maria-goretti-virgin-and-martyr', 'Saint Maria Goretti, Virgin and Martyr', 'saint'),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', 'Saint Augustine Zhao Rong, Priest, and Companions, Martyrs', 'saint'),
('saint-benedict-abbot', 'Saint Benedict, Abbot', 'saint'),
('saint-henry', 'Saint Henry', 'saint'),
('saint-camillus-de-lellis-priest', 'Saint Camillus de Lellis, Priest', 'saint'),
('saint-bonaventure-bishop-and-doctor-of-the-church', 'Saint Bonaventure, Bishop and Doctor of the Church', 'saint'),
('our-lady-of-mount-carmel', 'Our Lady of Mount Carmel', 'marian'),
('saint-apollinaris-bishop-and-martyr', 'Saint Apollinaris, Bishop and Martyr', 'saint'),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 'Saint Lawrence of Brindisi, Priest and Doctor of the Church', 'saint'),
('saint-mary-magdalene', 'Saint Mary Magdalene', 'saint'),
('saint-bridget-religious', 'Saint Bridget, Religious', 'saint'),
('saint-sharbel-makhluf-priest', 'Saint Sharbel Makhluf, Priest', 'saint'),
('saint-james-apostle', 'Saint James, Apostle', 'saint'),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 'Saints Joachim and Anne, Parents of the Blessed Virgin Mary', 'saint'),
('saints-martha-mary-and-lazarus', 'Saints Martha, Mary and Lazarus', 'saint'),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 'Saint Peter Chrysologus, Bishop and Doctor of the Church', 'saint'),
('saint-ignatius-of-loyola-priest', 'Saint Ignatius of Loyola, Priest', 'saint')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-thomas-apostle', 'Saint Thomas, Apostle', $desc$
Celebrated on July 3rd with the rank of Feast, this celebration is vested in white and falls within Ordinary Time, honoring one of the Twelve chosen personally by Christ and commemorating in particular the singular grace of his encounter with the Risen Lord.

The feast celebrates the apostle remembered for his honest doubt and his still more honest faith, the disciple who would not believe secondhand testimony to the Resurrection but demanded to see and touch the wounds of Christ, and who, once satisfied, uttered the Gospel's most complete confession of faith, "My Lord and my God." Theologically, Thomas stands for every believer who struggles toward faith through the trial of doubt, and his story proclaims that Christ meets honest questioning with patient, tangible mercy rather than rebuke, drawing the doubter into the deepest possible confession of his divinity.

Ancient tradition, supported by early Christian writers and by the enduring witness of Christian communities in India who trace their origins to his preaching, holds that Thomas carried the Gospel eastward as far as India, where he was martyred for the faith; his relics have been venerated at Mylapore, at Edessa, and later at Ortona in Italy. The 1969 reform of the Roman Calendar moved his feast from December 21st, its very ancient Western date but one always overshadowed by the nearness of Christmas, to July 3rd, the date long kept by the Syro-Malabar and other Eastern traditions closely linked to his own mission field, restoring greater prominence to his celebration.

Saint Thomas invites believers today, who likewise have not seen yet are called to believe, to bring their honest doubts and questions to Christ rather than suppress them, trusting that he draws near to reassure the sincere seeker and to lead every doubt toward the fullness of adoring faith.
$desc$),
('saint-elizabeth-of-portugal', 'Saint Elizabeth of Portugal', $desc$
Celebrated on July 4th as an optional memorial, this celebration is vested in white and occurs within the summer stretch of Ordinary Time, honoring a queen whose royal rank became the instrument rather than the obstacle of her holiness.

The memorial celebrates the vocation to sanctity within marriage, motherhood, and public responsibility, and in particular the grace of peacemaking amid violence and family discord. Elizabeth's life proclaims that political power, so often an occasion of pride and conflict, can be placed entirely at the service of reconciliation and the poor, and that widowhood, rather than closing off a life of service, can open it more fully to prayer and consecrated simplicity.

Born a Spanish princess and given in marriage to King Denis of Portugal, Elizabeth was named for her great-aunt Saint Elizabeth of Hungary and modeled her charity upon her, enduring her husband's infidelities with patience while repeatedly brokering peace between him and their rebellious son, and later between Portugal and neighboring Castile. Widowed, she took the habit of a Franciscan tertiary and retired near a Poor Clare monastery she had founded, dying in 1336 and being canonized in 1625; the 1969 calendar reform confirmed her memorial as optional, fixing it on July 4th, the date associated with the translation of her relics.

Her example invites the faithful today, especially those exercising authority or bearing the wounds of family conflict, to seek reconciliation patiently and to let no worldly position keep them from a life of prayer, humility, and care for the poor.
$desc$),
('saint-anthony-zaccaria-priest', 'Saint Anthony Zaccaria, Priest', $desc$
Celebrated on July 5th as an optional memorial, this celebration is vested in white and falls in the summer weeks of Ordinary Time, honoring a physician turned priest whose zeal helped renew the spiritual life of sixteenth-century Italy.

The memorial celebrates the vocation of the reforming preacher and founder, the priest who labors to rekindle fervor in a Church grown lukewarm through frequent recourse to the sacraments and bold, direct proclamation of Christ crucified. Anthony's charism proclaims the abiding power of frequent Communion and public preaching to renew both clergy and laity, anticipating by centuries the Eucharistic and catechetical emphases that the Church would later make universal.

Trained first as a physician, Anthony Zaccaria turned to the priesthood and founded the Clerics Regular of St. Paul, popularly called the Barnabites after their Milanese church of St. Barnabas, together with a companion congregation for religious women and an association for the laity, promoting frequent, even daily, Communion at a time when this was uncommon. He died young, in 1539, worn out by his labors, and was canonized in 1897; the 1969 reform retained his celebration as an optional memorial on July 5th, the traditional date of his death. His brief life shows that neither youth nor a late vocation limits the fruitfulness of grace when placed wholly at the service of souls.

His witness invites the faithful today to draw more frequently and fervently on the Eucharist as the true source of spiritual renewal, and to proclaim Christ crucified with the same directness and courage that marked his own brief but fruitful ministry.
$desc$),
('saint-maria-goretti-virgin-and-martyr', 'Saint Maria Goretti, Virgin and Martyr', $desc$
Celebrated on July 6th as an optional memorial, this celebration is vested in red and falls within Ordinary Time, honoring one of the youngest saints of the modern era and a martyr not for confessing the Faith openly but for defending purity unto death.

The memorial celebrates the dignity of chastity and the heroism possible even in a child, showing that martyrdom can spring from fidelity to the moral demands of the Gospel and not only from refusal to deny Christ in word. Maria's dying forgiveness of her attacker proclaims with singular clarity the Gospel's call to love one's enemies, revealing mercy as the fruit and completion of authentic holiness rather than a mere afterthought to it.

A poor Italian farm girl, Maria Goretti was attacked in 1902 at the age of eleven by Alessandro Serenelli, a young neighbor, and was fatally stabbed as she resisted his advances, forgiving him explicitly before she died; Serenelli, converted years later partly through a vision of Maria offering him lilies, lived to see her canonized in 1950, a canonization notable for drawing an immense crowd that included her own mother. The 1969 calendar reform preserved her memorial as optional on July 6th, the anniversary of her death.

Her witness invites the faithful today, especially the young, to value chastity as a genuine and costly form of holiness, and encourages every wounded heart to believe that forgiveness, however difficult, is always possible through the grace that sustained Maria to her last breath.
$desc$),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', 'Saint Augustine Zhao Rong, Priest, and Companions, Martyrs', $desc$
Celebrated on July 9th as an optional memorial, this celebration is vested in red and falls in Ordinary Time, honoring together the many martyrs of China, bishops, priests, religious, and lay faithful of every age, who gave their lives for Christ across several centuries of persecution.

The memorial celebrates the Church's rootedness in Chinese soil through the blood of her own children and of the missionaries who served them, proclaiming that the Gospel truly took flesh in that land and was truly its own, not merely an import maintained by foreigners. It affirms that martyrdom continues into the modern age and that holiness flowers as readily among ordinary catechists, mothers, and children as among clergy and religious.

The 120 martyrs commemorated together died between the mid-seventeenth century and the Boxer Uprising of 1900, the latter claiming the greatest number, including the priest Augustine Zhao Rong, once a soldier who guarded Bishop Gabriele Taurin Dufresse before himself embracing the faith and later dying for it; Pope John Paul II canonized this vast company together in Rome in the Jubilee Year 2000. The 1969 calendar reform predates this canonization, and the memorial was subsequently added to the General Roman Calendar to give the universal Church a fixed day for honoring these martyrs on July 9th.

Their witness invites the faithful today to pray for the Church in China and for persecuted Christians everywhere, and to recognize that fidelity to Christ, even to the point of death, remains as real and as costly a possibility now as in every preceding age.
$desc$),
('saint-benedict-abbot', 'Saint Benedict, Abbot', $desc$
Celebrated on July 11th as an obligatory memorial, this celebration is vested in white and falls in the heart of summer Ordinary Time, honoring the father of Western monasticism on the date associated with the translation of his relics rather than on the anniversary of his death.

The memorial celebrates the vocation to seek God above all else, ordering the whole of life, prayer, work, and community, around that single pursuit expressed in the Benedictine motto ora et labora. Benedict's Rule proclaims a balanced, humane, and profoundly Christ-centered path to holiness that has shaped monastic life, and through it the whole of Western culture, for a millennium and a half, showing that stability, obedience, and ordered common life are themselves ways of following Christ.

Born around 480 at Norcia, Benedict withdrew from a dissolute Rome to a life of prayer, eventually founding the monastery of Monte Cassino, where he wrote his celebrated Rule, and he died around the year 547; Pope Paul VI declared him Patron of Europe in 1964, recognizing the monastery's civilizing role after the fall of the Roman Empire. The 1969 calendar reform moved his feast from March 21st, the traditional date of his death but one that regularly falls within Lent, to July 11th, the date of the translation of his relics to Fleury, allowing his memorial to be kept with its full, obligatory solemnity.

His witness invites the faithful today, whatever their state in life, to seek a right ordering of prayer and work, and to rediscover in stability, silence, and simple daily fidelity a genuine and accessible path to holiness.
$desc$),
('saint-henry', 'Saint Henry', $desc$
Celebrated on July 13th as an optional memorial, this celebration is vested in white and falls within Ordinary Time, honoring an emperor remembered less for the power he wielded than for the piety with which he wielded it.

The memorial celebrates the vocation to holiness within the exercise of civil authority and within the married state, proclaiming that governance itself, when animated by faith, can become an instrument of the Church's mission and that marriage, even a childless one, can be lived as a path of mutual sanctification. Henry's example stands as a rebuke to any notion that worldly power and personal holiness are incompatible.

Henry II, Holy Roman Emperor in the early eleventh century, was renowned for his generous endowment of churches, monasteries, and the diocese of Bamberg which he founded, and tradition holds that he and his wife Cunigunde lived their marriage in continence, offering their union entirely to God; he died in 1024 and was canonized in 1146. The 1969 calendar reform retained his celebration as an optional memorial on July 13th, the traditional date associated with his death.

His witness invites those who exercise authority today, in whatever sphere, to see their responsibilities as a genuine field for holiness, and invites every married couple to recognize that their union, however it is lived, can be wholly consecrated to God.
$desc$),
('saint-camillus-de-lellis-priest', 'Saint Camillus de Lellis, Priest', $desc$
Celebrated on July 14th as an optional memorial, this celebration is vested in white and falls within summer Ordinary Time, honoring a former soldier and inveterate gambler whose conversion gave the Church one of her great pioneers of Christian care for the sick.

The memorial celebrates the vocation to see and serve Christ himself in the person of the suffering, and Camillus's charism proclaims that compassionate, competent, and loving care for the body is itself a genuine work of the Gospel, not a distraction from spiritual concerns. His life shows that no depth of dissipation places a soul beyond the reach of grace, nor beyond the possibility of becoming, in turn, an instrument of grace for others.

After years as a mercenary soldier ruined by gambling, Camillus de Lellis experienced a profound conversion, trained as a priest, and founded the Ministers of the Sick, known as the Camillians, whose members wear a red cross and vow to serve the sick even at risk to their own lives; he pioneered improved hospital practices and nursing standards and died in 1614, being canonized in 1746 and later named patron of the sick, of nurses, and of hospitals. The 1969 calendar reform preserved his celebration as an optional memorial on July 14th, near the traditional date of his death.

His witness invites the faithful today, especially those who care for the sick professionally or within their own families, to see in that care a true and demanding form of discipleship, and to ask his intercession for patience and tenderness in every encounter with human suffering.
$desc$),
('saint-bonaventure-bishop-and-doctor-of-the-church', 'Saint Bonaventure, Bishop and Doctor of the Church', $desc$
Celebrated on July 15th as an obligatory memorial, this celebration is vested in white and falls within Ordinary Time, honoring a Franciscan friar who rose to lead his order and to rank among the greatest theologians of the medieval Church.

The memorial celebrates the harmony of intellect and mystical love that marked Bonaventure's theology, earning him the title "Seraphic Doctor" for the way his scholarship remained always ordered toward the soul's ascent to union with God. His writings proclaim that true theology is inseparable from prayer and contemplation, and that the mind's rigorous pursuit of truth finds its proper completion only in the heart's burning love for God.

Bonaventure entered the Franciscan order, studied and later taught in Paris alongside his friend Thomas Aquinas, and was elected Minister General of the Friars Minor, guiding the order through a difficult period of internal division while continuing to write extensively on theology and spirituality; he died in 1274 while attending the Second Council of Lyon, having been made a cardinal bishop shortly before, and Pope Sixtus V declared him a Doctor of the Church in 1588. The 1969 calendar reform confirmed his obligatory memorial on July 15th, near the traditional date of his death.

His witness invites the faithful today to remember that authentic learning about God must lead toward deeper love of God, and to seek, as Bonaventure did, a wisdom that unites careful thought with humble, ardent prayer.
$desc$),
('our-lady-of-mount-carmel', 'Our Lady of Mount Carmel', $desc$
Celebrated on July 16th as an optional memorial, this celebration is vested in white and falls within Ordinary Time, honoring the Blessed Virgin Mary under the title given her by the Carmelite Order, whose origins lie among hermits who settled on Mount Carmel in the Holy Land.

The memorial celebrates Mary as model and protectress of the contemplative life and of all who seek to imitate her total configuration to Christ, and it commemorates the tradition of the Brown Scapular, said to have been given by Our Lady to Saint Simon Stock as a sign of her maternal protection and a pledge of perseverance for those who wear it with faith and live accordingly. The devotion proclaims Mary's continual closeness to those striving for holiness through prayer, simplicity, and trust in her intercession.

The hermits who gathered on Mount Carmel from the twelfth century regarded Mary as their patroness and model from the Order's earliest days, drawing on the mountain's rich biblical associations with the prophet Elijah, and the Scapular devotion, attested from the fourteenth century onward, spread widely through Carmelite preaching and remains one of the most popular Marian sacramentals in the Church. The 1969 calendar reform retained this celebration as an optional memorial on July 16th, its long-established date.

Her feast invites the faithful today to entrust themselves to Mary's maternal protection amid the trials of daily life, and to let the Scapular, where it is worn, be not a superstitious charm but a genuine sign of consecration to her and to her Son.
$desc$),
('saint-apollinaris-bishop-and-martyr', 'Saint Apollinaris, Bishop and Martyr', $desc$
Celebrated on July 20th as an optional memorial, this celebration is vested in red and falls within Ordinary Time, honoring the first bishop of Ravenna and a martyr of the Church's earliest centuries.

The memorial celebrates the apostolic foundations of the local churches of Italy and the courage of those first pastors who established and defended the faith at the cost of their own lives. Apollinaris's witness proclaims the continuity between the apostolic preaching of the first generation and the flourishing local churches that grew from their labors, even when few details of a martyr's life have survived beyond the fact of his fidelity to death.

Tradition holds that Apollinaris was a disciple of Saint Peter who was sent to Ravenna, where he served as bishop, endured repeated persecution and exile for his preaching, and was eventually martyred, giving Ravenna a foundation story that linked it directly to the apostolic see of Rome. The 1969 calendar reform retained his celebration as an optional memorial on July 20th, simplifying a cultus that had accumulated considerable legendary material over the centuries while preserving the essential memory of his episcopate and martyrdom.

His witness invites the faithful today to give thanks for the founders of their own local churches, often unknown or half-remembered, and to recognize that every Christian community stands upon a foundation of faith paid for, in ways seen and unseen, by the fidelity of those who came before.
$desc$),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 'Saint Lawrence of Brindisi, Priest and Doctor of the Church', $desc$
Celebrated on July 21st as an optional memorial, this celebration is vested in white and falls within Ordinary Time, honoring a Capuchin friar whose extraordinary gifts of language and preaching served both the pulpit and the courts of Europe.

The memorial celebrates the vocation of the preacher-diplomat, the friar whose eloquence in the pulpit was matched by skill in reconciling princes and defending Christendom, showing that intellectual and linguistic gifts, wholly consecrated to God, can serve the Gospel in the most public and demanding of arenas. His life proclaims that contemplative religious life and vigorous engagement with the wider world are not opposed but can be held together in a single, fruitful vocation.

Lawrence of Brindisi mastered numerous languages, including Hebrew, and used this gift in preaching and in diplomatic missions, serving as Minister General of the Capuchins and rallying Christian forces in defense of Hungary against Ottoman advance; he died in 1619, and Pope John XXIII declared him a Doctor of the Church in 1959, giving him the title "Apostolic Doctor" for his tireless missionary and pastoral labors. The 1969 calendar reform confirmed his optional memorial on July 21st, near the traditional date of his death.

His witness invites the faithful today, especially those gifted with learning or eloquence, to place such talents entirely at the service of the Gospel, trusting that no field of human engagement lies outside the reach of a genuinely consecrated life.
$desc$),
('saint-mary-magdalene', 'Saint Mary Magdalene', $desc$
Celebrated on July 22nd with the rank of Feast, this celebration is vested in white and falls within Ordinary Time, honoring the disciple who was the first witness of the Risen Christ and the first to announce his Resurrection to the other apostles.

The feast celebrates Mary Magdalene's unique privilege at the empty tomb, where the Risen Lord first appeared to her and sent her to tell the apostles what she had seen, earning her the ancient title "Apostle to the Apostles." Theologically, her encounter with Christ in the garden proclaims that the Resurrection was entrusted first to a faithful witness of love, that the Gospel of the Resurrection is announced through personal encounter before it is formulated into doctrine, and that fidelity in staying at the foot of the cross and at the tomb is rewarded with the deepest intimacy with the Risen Lord.

Long venerated as a disciple who accompanied Jesus, ministered to him and the apostles from her own means, and remained faithful through the crucifixion and burial, Mary Magdalene was celebrated in the West for centuries with only the rank of memorial; in 2016 Pope Francis raised her celebration to the rank of Feast, equal to that of the other apostles, precisely to honor her title as Apostle to the Apostles and her singular role in the Resurrection narrative. The 1969 calendar reform had already clarified her identity in the liturgical books, distinguishing her more clearly from other Gospel women with whom she had sometimes been popularly conflated.

Her witness invites the faithful today, especially women engaged in every form of ministry and apostolate, to recognize in her the model of the first evangelist of the Resurrection, and to seek that same intimate, personal encounter with the Risen Christ that transformed her grief into joyful proclamation.
$desc$),
('saint-bridget-religious', 'Saint Bridget, Religious', $desc$
Celebrated on July 23rd as an optional memorial, this celebration is vested in white and falls within Ordinary Time, honoring a Swedish noblewoman whose long life encompassed marriage, motherhood, widowhood, and the foundation of a religious order.

The memorial celebrates the holiness accessible within every state of life through which Bridget passed, and in particular the gift of mystical revelation placed at the service of the whole Church, her visions of Christ's Passion nourishing devotion far beyond her own community. Her life proclaims that profound contemplative gifts can flourish in a soul formed first by married love and domestic responsibility, and that widowhood can become the doorway to a still more radical consecration.

Bridget of Sweden bore eight children, one of whom became Saint Catherine of Sweden, and after her husband's death she devoted herself to prayer, pilgrimage, and the recording of her visions, eventually founding the Bridgettine Order and settling in Rome, where she died in 1373; she was canonized in 1391, and Pope John Paul II named her a co-patroness of Europe in 1999 alongside Saint Catherine of Siena and Saint Teresa Benedicta of the Cross. The 1969 calendar reform confirmed her optional memorial on July 23rd, the anniversary of her death.

Her witness invites the faithful today, particularly those discerning holiness across the different seasons of family life, to trust that God can draw a single, coherent vocation to sanctity through marriage, motherhood, widowhood, and religious consecration in turn.
$desc$),
('saint-sharbel-makhluf-priest', 'Saint Sharbel Makhluf, Priest', $desc$
Celebrated on July 24th as an optional memorial, this celebration is vested in white and falls within Ordinary Time, honoring a Lebanese Maronite monk whose hidden life of prayer became, after his death, a source of extraordinary favors for pilgrims of every faith.

The memorial celebrates the eremitic and monastic vocation, the conviction that a life poured out in silence, penance, and unceasing prayer, hidden from the eyes of the world, remains fully fruitful for the whole Church even when it produces no visible activity or public ministry. Sharbel's life proclaims that holiness of the most radical kind can be lived far from public notice, in obscurity chosen deliberately for the sake of closer union with God.

Born Youssef Antoun Makhlouf, he entered a Maronite monastery, was ordained a priest, and after some years withdrew to the hermitage of Saints Peter and Paul, where he lived an austere and largely silent life of prayer and manual labor until his death in 1898; extraordinary phenomena and healings reported at his tomb led to a rapid growth of devotion, and he was canonized in 1977. The 1969 calendar reform predates his canonization, and his memorial was subsequently added to the calendar as his cultus spread from Lebanon to the universal Church, observed as an optional memorial on July 24th.

His witness invites the faithful today, amid the noise and busyness of modern life, to value silence, penance, and hidden prayer as genuine and powerful ways of drawing near to God and interceding for others.
$desc$),
('saint-james-apostle', 'Saint James, Apostle', $desc$
Celebrated on July 25th with the rank of Feast, this celebration is vested in white and falls within Ordinary Time, honoring one of the Twelve, called "the Greater" to distinguish him from the other apostle of the same name, and the brother of Saint John the Evangelist.

The feast celebrates James's privileged place among the inner circle of three disciples whom Jesus drew closest to himself, present at the Transfiguration and in Gethsemane, and above all his distinction as the first of the apostles to seal his witness with martyrdom. His death proclaims the cost of discipleship foretold by Christ himself, who asked James and John if they could drink the cup he would drink, and it stands as the Gospel's earliest fulfillment, among the Twelve, of that costly promise.

James was beheaded by order of King Herod Agrippa I around the year 44, as recorded in the Acts of the Apostles, making him the first apostle to be martyred; a strong tradition, especially cherished in Spain, holds that his body was later translated to Compostela, where the shrine of Santiago de Compostela became one of Christendom's greatest pilgrimage destinations and James became the nation's patron. The 1969 calendar reform confirmed his feast on July 25th, its traditional and universally observed date.

His witness invites the faithful today, including the countless modern pilgrims who walk the Camino de Santiago in his honor, to recognize that following Christ closely may indeed mean drinking his cup, and to ask for the same courage that carried James to the first apostolic martyrdom.
$desc$),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 'Saints Joachim and Anne, Parents of the Blessed Virgin Mary', $desc$
Celebrated on July 26th as an obligatory memorial, this celebration is vested in white and falls within Ordinary Time, honoring the parents of the Blessed Virgin Mary and thus the grandparents, according to the flesh, of Jesus Christ himself.

The memorial celebrates the hidden holiness of family life and the quiet fidelity of those who, through ordinary domestic virtue, prepared the immediate human setting into which the Mother of God was born and raised. Joachim and Anne are honored as models of grandparents and of the whole extended family, proclaiming that God's saving plan unfolds not only through great public deeds but through generations of humble faithfulness within the home.

Their names and story come not from the canonical Scriptures, which are silent about Mary's parents, but from the ancient apocryphal Protoevangelium of James, which nonetheless preserved a devotion attested from the earliest centuries, particularly strong in the Christian East, where their cultus long predates its full flowering in the West. The 1969 calendar reform raised their joint commemoration to the rank of obligatory memorial on July 26th, the date already associated in both East and West with Saint Anne, thereby giving Joachim equal honor alongside his wife.

Their memorial invites grandparents and elders today to recognize their own quiet, often unseen influence as a genuine share in God's work of transmitting the faith, and it invites every family to entrust its own generations, past and present, to their intercession.
$desc$),
('saints-martha-mary-and-lazarus', 'Saints Martha, Mary and Lazarus', $desc$
Celebrated on July 29th as an obligatory memorial, this celebration is vested in white and falls within Ordinary Time, honoring together the three siblings of Bethany whose home Jesus visited often and whose friendship the Gospels present as a model of intimacy with Christ.

The memorial celebrates hospitality, deep personal faith, and the reality of resurrection, each embodied by one member of this household: Martha's generous service and her confession, "I believe that you are the Christ, the Son of God," Mary's contemplative attentiveness at the Lord's feet, and Lazarus's being called forth from the tomb, prefiguring the victory over death that Christ himself would soon accomplish. Together they proclaim that friendship with Jesus, lived through service, faith, and hope even in the face of death, is itself a genuine path of discipleship.

The Gospel of John records the family's close bond with Jesus, his tears at Lazarus's tomb, and his raising of Lazarus after four days, the sign that most immediately precipitated the plot against Jesus's own life; for centuries the Roman calendar kept a memorial of Martha alone on July 29th, but in 2021 Pope Francis extended the celebration to include Mary and Lazarus as well, wishing to honor the entire household of Bethany together as an example of family life placed at the service of Christ. This adjustment did not alter the date but enriched the memorial's scope within the same July 29th observance established by the 1969 reform.

Their witness invites the faithful today to welcome Christ into their own homes through hospitality and service, to sit attentively at his feet in prayer, and to trust him, even amid grief, as the one who calls the dead back to life.
$desc$),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 'Saint Peter Chrysologus, Bishop and Doctor of the Church', $desc$
Celebrated on July 30th as an optional memorial, this celebration is vested in white and falls within Ordinary Time, honoring a bishop of Ravenna renowned for homilies so vivid and precise that he earned the surname "Chrysologus," the golden-worded.

The memorial celebrates the ministry of preaching at its finest, brief, luminous, and thoroughly grounded in Scripture, capable of unfolding the mysteries of the faith to ordinary people in language they could readily grasp and retain. Peter's surviving sermons proclaim that the pulpit, when placed at the service of clarity and charity rather than mere display of learning, remains one of the Church's most powerful instruments for forming the faith of her people.

Peter served as bishop of Ravenna in the fifth century, then an imperial capital of considerable importance, and his brief, carefully crafted homilies, of which a substantial number survive, show a pastor deeply attentive to the concrete needs of his flock; he died around the year 450, and Pope Benedict XIII declared him a Doctor of the Church in 1729. The 1969 calendar reform confirmed his optional memorial on July 30th, near the traditional date associated with his death.

His witness invites preachers and teachers of the faith today to strive for the same clarity and warmth that marked his sermons, and invites every believer to return often and attentively to the words of Scripture as the surest source of a faith that can be readily understood and firmly held.
$desc$),
('saint-ignatius-of-loyola-priest', 'Saint Ignatius of Loyola, Priest', $desc$
Celebrated on July 31st as an obligatory memorial, this celebration is vested in white and falls within Ordinary Time, honoring a Basque soldier whose battlefield wound became, through the providence of God, the wound that opened him to sanctity.

The memorial celebrates the discernment of spirits and the total offering of one's talents and ambitions to the greater glory of God, the motto Ignatius made famous, Ad maiorem Dei gloriam. His spiritual teaching proclaims that God can be found and served in all things, and that the ordered examination of one's own thoughts, desires, and consolations is itself a genuine path to knowing and following the divine will.

Wounded in battle at Pamplona in 1521, Ignatius of Loyola underwent a long convalescence during which his reading turned his ambitions from worldly glory to the following of Christ, leading him to compose the Spiritual Exercises and, together with a small band of companions including Saint Francis Xavier, to found the Society of Jesus in 1540, an order that would become one of the great engines of Catholic missionary expansion, education, and reform; he died in Rome in 1556 and was canonized in 1622. The 1969 calendar reform confirmed his obligatory memorial on July 31st, the traditional date of his death.

His witness invites the faithful today to seek God actively in every circumstance of ordinary life, and to make their own, in whatever vocation they follow, the Ignatian resolve to place every talent and ambition wholly at the service of God's greater glory.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-thomas-apostle', 'Saint Thomas, apôtre', $desc$
Célébrée le 3 juillet avec le rang de Fête, cette célébration est vécue en ornements blancs durant le Temps ordinaire, honorant l'un des Douze choisis personnellement par le Christ et rappelant en particulier la grâce singulière de sa rencontre avec le Ressuscité.

La fête célèbre l'apôtre resté dans les mémoires pour son doute sincère et sa foi plus sincère encore, ce disciple qui refusa de croire sur la seule parole d'autrui à la Résurrection et exigea de voir et de toucher les plaies du Christ, avant de prononcer, une fois satisfait, la confession de foi la plus complète de tout l'Évangile : « Mon Seigneur et mon Dieu. » Théologiquement, Thomas représente tout croyant qui chemine vers la foi à travers l'épreuve du doute, et son histoire proclame que le Christ répond à une interrogation sincère par une miséricorde patiente et tangible plutôt que par le reproche, conduisant celui qui doute jusqu'à la confession la plus haute de sa divinité.

Une tradition ancienne, appuyée par des écrivains chrétiens des premiers siècles et par le témoignage durable des communautés chrétiennes d'Inde qui font remonter leur origine à sa prédication, rapporte que Thomas porta l'Évangile jusqu'en Inde, où il subit le martyre pour la foi ; ses reliques furent vénérées à Mylapore, à Édesse, puis à Ortona en Italie. La réforme du calendrier romain de 1969 déplaça sa fête du 21 décembre, date très ancienne en Occident mais toujours éclipsée par la proximité de Noël, au 3 juillet, date depuis longtemps retenue par les traditions syro-malabare et d'autres traditions orientales étroitement liées à son propre champ de mission, rendant à sa célébration tout son éclat.

Saint Thomas invite aujourd'hui les croyants qui, sans avoir vu, sont pareillement appelés à croire, à porter leurs doutes et leurs questions sincères devant le Christ plutôt qu'à les étouffer, confiants qu'il s'approche pour rassurer celui qui cherche loyalement et pour conduire tout doute vers la plénitude d'une foi adorante.
$desc$),
('saint-elizabeth-of-portugal', 'Sainte Élisabeth du Portugal', $desc$
Célébrée le 4 juillet comme mémoire facultative, cette célébration est vécue en ornements blancs durant les semaines estivales du Temps ordinaire, honorant une reine dont le rang royal devint l'instrument, et non l'obstacle, de sa sainteté.

La mémoire célèbre la vocation à la sainteté au sein du mariage, de la maternité et de la responsabilité publique, et en particulier la grâce de l'artisan de paix au milieu de la violence et de la discorde familiale. La vie d'Élisabeth proclame que le pouvoir politique, si souvent occasion d'orgueil et de conflit, peut se mettre tout entier au service de la réconciliation et des pauvres, et que le veuvage, loin de clore une vie de service, peut l'ouvrir plus pleinement à la prière et à une simplicité consacrée.

Née princesse d'Aragon et donnée en mariage au roi Denis du Portugal, Élisabeth reçut le nom de sa grande-tante sainte Élisabeth de Hongrie et modela sa charité sur la sienne, supportant avec patience les infidélités de son époux tout en négociant à plusieurs reprises la paix entre lui et leur fils révolté, puis entre le Portugal et la Castille voisine. Devenue veuve, elle prit l'habit de tertiaire franciscaine et se retira près d'un monastère de clarisses qu'elle avait fondé, mourant en 1336 et étant canonisée en 1625 ; la réforme du calendrier de 1969 confirma sa mémoire facultative, fixée au 4 juillet, date liée à la translation de ses reliques.

Son exemple invite aujourd'hui ceux qui exercent l'autorité ou qui portent les blessures des conflits familiaux à rechercher patiemment la réconciliation, et invite chaque époux et épouse à reconnaître qu'aucune position mondaine ne saurait les détourner d'une vie de prière, d'humilité et de charité envers les pauvres.
$desc$),
('saint-anthony-zaccaria-priest', 'Saint Antoine-Marie Zaccaria, prêtre', $desc$
Célébrée le 5 juillet comme mémoire facultative, cette célébration est vécue en ornements blancs durant les semaines estivales du Temps ordinaire, honorant un médecin devenu prêtre dont le zèle contribua au renouveau de la vie spirituelle de l'Italie du seizième siècle.

La mémoire célèbre la vocation du prédicateur réformateur et fondateur, ce prêtre qui travaille à raviver la ferveur d'une Église devenue tiède, par le recours fréquent aux sacrements et par une prédication directe et audacieuse du Christ crucifié. Le charisme d'Antoine proclame la puissance durable de la communion fréquente et de la prédication publique pour renouveler tant le clergé que les laïcs, anticipant de plusieurs siècles les accents eucharistiques et catéchétiques que l'Église rendra plus tard universels.

D'abord formé comme médecin, Antoine Zaccaria se tourna vers le sacerdoce et fonda les Clercs réguliers de Saint-Paul, appelés populairement Barnabites d'après leur église milanaise de Saint-Barnabé, ainsi qu'une congrégation sœur de religieuses et une association de laïcs, promouvant la communion fréquente, voire quotidienne, à une époque où cela n'était pas courant. Il mourut jeune, en 1539, épuisé par ses travaux, et fut canonisé en 1897 ; la réforme de 1969 conserva sa célébration comme mémoire facultative le 5 juillet, date traditionnelle de sa mort. Sa vie brève montre que ni la jeunesse ni une vocation tardive ne limitent la fécondité de la grâce lorsqu'elle est mise tout entière au service des âmes.

Son témoignage invite aujourd'hui les fidèles à puiser plus fréquemment et plus ardemment dans l'Eucharistie comme véritable source de renouveau spirituel, et à annoncer le Christ crucifié avec la même franchise et le même courage qui marquèrent son bref mais fécond ministère.
$desc$),
('saint-maria-goretti-virgin-and-martyr', 'Sainte Maria Goretti, vierge et martyre', $desc$
Célébrée le 6 juillet comme mémoire facultative, cette célébration est vécue en ornements rouges durant le Temps ordinaire, honorant l'une des plus jeunes saintes de l'époque moderne, martyre non pour avoir confessé ouvertement la foi mais pour avoir défendu la pureté jusqu'à la mort.

La mémoire célèbre la dignité de la chasteté et l'héroïsme possible même chez une enfant, montrant que le martyre peut naître de la fidélité aux exigences morales de l'Évangile et pas seulement du refus de renier le Christ en paroles. Le pardon accordé par Maria à son agresseur, à l'heure de sa mort, proclame avec une clarté singulière l'appel évangélique à aimer ses ennemis, révélant la miséricorde comme le fruit et l'accomplissement d'une sainteté authentique, non comme un simple ajout à celle-ci.

Pauvre fille de paysans italiens, Maria Goretti fut agressée en 1902 à l'âge de onze ans par Alessandro Serenelli, un jeune voisin, et mortellement poignardée alors qu'elle résistait à ses avances, lui pardonnant explicitement avant de mourir ; Serenelli, converti des années plus tard en partie grâce à une vision de Maria lui offrant des lys, vécut assez longtemps pour voir sa canonisation en 1950, marquée par une foule immense où figurait sa propre mère. La réforme du calendrier de 1969 conserva sa mémoire facultative le 6 juillet, anniversaire de sa mort.

Son témoignage invite aujourd'hui les fidèles, en particulier les jeunes, à estimer la chasteté comme une forme authentique et exigeante de sainteté, et encourage tout cœur blessé à croire que le pardon, si difficile soit-il, demeure toujours possible par la grâce qui soutint Maria jusqu'à son dernier souffle.
$desc$),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', 'Saint Augustin Zhao Rong, prêtre, et ses compagnons, martyrs', $desc$
Célébrée le 9 juillet comme mémoire facultative, cette célébration est vécue en ornements rouges durant le Temps ordinaire, honorant ensemble les nombreux martyrs de Chine, évêques, prêtres, religieux et fidèles laïcs de tout âge, qui donnèrent leur vie pour le Christ au long de plusieurs siècles de persécution.

La mémoire célèbre l'enracinement de l'Église en terre chinoise par le sang de ses propres enfants et des missionnaires qui les servirent, proclamant que l'Évangile s'y est véritablement incarné et lui appartient en propre, non comme un simple apport étranger maintenu de l'extérieur. Elle affirme que le martyre se poursuit jusqu'à l'époque moderne et que la sainteté fleurit aussi bien chez de simples catéchistes, mères de famille et enfants que chez le clergé et les religieux.

Les cent vingt martyrs commémorés ensemble moururent entre le milieu du dix-septième siècle et la révolte des Boxers de 1900, laquelle fit le plus grand nombre de victimes, parmi elles le prêtre Augustin Zhao Rong, ancien soldat qui garda l'évêque Gabriel-Taurin Dufresse avant d'embrasser lui-même la foi et de mourir pour elle plus tard ; le pape Jean-Paul II canonisa cette vaste compagnie ensemble à Rome durant l'Année jubilaire 2000. La réforme du calendrier de 1969 est antérieure à cette canonisation, et la mémoire fut ajoutée par la suite au calendrier romain général, fixant au 9 juillet un jour propre pour honorer ces martyrs dans toute l'Église.

Leur témoignage invite aujourd'hui les fidèles à prier pour l'Église en Chine et pour les chrétiens persécutés partout dans le monde, et à reconnaître que la fidélité au Christ, jusqu'à la mort s'il le faut, demeure une possibilité aussi réelle et aussi coûteuse aujourd'hui qu'à toute époque précédente.
$desc$),
('saint-benedict-abbot', 'Saint Benoît, abbé', $desc$
Célébrée le 11 juillet comme mémoire obligatoire, cette célébration est vécue en ornements blancs en plein cœur de l'été du Temps ordinaire, honorant le père du monachisme occidental à la date liée à la translation de ses reliques plutôt qu'à l'anniversaire de sa mort.

La mémoire célèbre la vocation à chercher Dieu par-dessus tout, ordonnant la vie tout entière, prière, travail et vie communautaire, autour de cette seule quête exprimée dans la devise bénédictine ora et labora. La Règle de Benoît proclame un chemin équilibré, humain et profondément christocentrique vers la sainteté, qui a façonné la vie monastique, et par elle toute la culture occidentale, durant un millénaire et demi, montrant que la stabilité, l'obéissance et une vie commune ordonnée sont elles-mêmes des manières de suivre le Christ.

Né vers 480 à Nursie, Benoît quitta une Rome dissolue pour une vie de prière, fondant finalement le monastère du Mont-Cassin où il rédigea sa célèbre Règle, et il mourut vers l'an 547 ; le pape Paul VI le déclara Patron de l'Europe en 1964, reconnaissant le rôle civilisateur du monachisme après la chute de l'Empire romain. La réforme du calendrier de 1969 déplaça sa fête du 21 mars, date traditionnelle de sa mort mais tombant régulièrement en Carême, au 11 juillet, date de la translation de ses reliques à Fleury, permettant à sa mémoire d'être célébrée avec toute sa pleine solennité obligatoire.

Son témoignage invite aujourd'hui les fidèles, quel que soit leur état de vie, à rechercher un juste équilibre entre prière et travail, et à redécouvrir dans la stabilité, le silence et la fidélité quotidienne un chemin authentique et accessible vers la sainteté.
$desc$),
('saint-henry', 'Saint Henri', $desc$
Célébrée le 13 juillet comme mémoire facultative, cette célébration est vécue en ornements blancs durant le Temps ordinaire, honorant un empereur dont on se souvient moins pour le pouvoir qu'il exerça que pour la piété avec laquelle il l'exerça.

La mémoire célèbre la vocation à la sainteté dans l'exercice de l'autorité civile et dans l'état du mariage, proclamant que le gouvernement lui-même, animé par la foi, peut devenir un instrument de la mission de l'Église, et que le mariage, même sans descendance, peut être vécu comme un chemin de sanctification mutuelle. L'exemple d'Henri dément toute idée selon laquelle le pouvoir temporel et la sainteté personnelle seraient incompatibles.

Henri II, empereur du Saint-Empire romain germanique au début du onzième siècle, fut renommé pour sa générosité envers les églises, les monastères et le diocèse de Bamberg qu'il fonda, et la tradition rapporte que lui et son épouse Cunégonde vécurent leur mariage dans la continence, offrant entièrement leur union à Dieu ; il mourut en 1024 et fut canonisé en 1146. La réforme du calendrier de 1969 conserva sa célébration comme mémoire facultative le 13 juillet, date traditionnellement liée à sa mort.

Son témoignage invite aujourd'hui ceux qui exercent l'autorité, en quelque domaine que ce soit, à considérer leurs responsabilités comme un champ véritable de sainteté, et invite chaque couple marié à reconnaître que leur union, quelle qu'en soit la forme, peut être tout entière consacrée à Dieu.
$desc$),
('saint-camillus-de-lellis-priest', 'Saint Camille de Lellis, prêtre', $desc$
Célébrée le 14 juillet comme mémoire facultative, cette célébration est vécue en ornements blancs durant l'été du Temps ordinaire, honorant un ancien soldat et joueur invétéré dont la conversion donna à l'Église l'un de ses grands pionniers du soin chrétien des malades.

La mémoire célèbre la vocation à voir et à servir le Christ lui-même dans la personne du souffrant, et le charisme de Camille proclame qu'un soin compatissant, compétent et aimant pour le corps constitue en lui-même une véritable œuvre évangélique, non une distraction par rapport aux préoccupations spirituelles. Sa vie montre qu'aucune profondeur de dissipation ne place une âme hors de portée de la grâce, ni hors de la possibilité de devenir à son tour un instrument de grâce pour autrui.

Après des années comme soldat mercenaire ruiné par le jeu, Camille de Lellis connut une profonde conversion, se forma au sacerdoce et fonda les Ministres des malades, dits Camilliens, dont les membres portent une croix rouge et font vœu de servir les malades même au péril de leur propre vie ; il fut un pionnier de l'amélioration des pratiques hospitalières et des soins infirmiers, mourut en 1614, fut canonisé en 1746 et déclaré plus tard patron des malades, des infirmiers et des hôpitaux. La réforme du calendrier de 1969 conserva sa célébration comme mémoire facultative le 14 juillet, proche de la date traditionnelle de sa mort.

Son témoignage invite aujourd'hui les fidèles, en particulier ceux qui soignent des malades par profession ou au sein de leur propre famille, à voir dans ce soin une véritable forme, exigeante, de disciple, et à demander son intercession pour la patience et la tendresse dans toute rencontre avec la souffrance humaine.
$desc$),
('saint-bonaventure-bishop-and-doctor-of-the-church', 'Saint Bonaventure, évêque et docteur de l''Église', $desc$
Célébrée le 15 juillet comme mémoire obligatoire, cette célébration est vécue en ornements blancs durant le Temps ordinaire, honorant un frère franciscain qui parvint à diriger son ordre et à compter parmi les plus grands théologiens de l'Église médiévale.

La mémoire célèbre l'harmonie entre intelligence et amour mystique qui marqua la théologie de Bonaventure, lui valant le titre de « Docteur séraphique » tant sa science demeura toujours orientée vers l'ascension de l'âme jusqu'à l'union avec Dieu. Ses écrits proclament que la théologie véritable est inséparable de la prière et de la contemplation, et que la recherche rigoureuse de la vérité par l'esprit ne trouve son plein achèvement que dans l'amour ardent du cœur pour Dieu.

Bonaventure entra dans l'ordre franciscain, étudia puis enseigna à Paris aux côtés de son ami Thomas d'Aquin, et fut élu Ministre général des Frères mineurs, conduisant l'ordre à travers une période difficile de division interne tout en poursuivant une œuvre abondante de théologie et de spiritualité ; il mourut en 1274 alors qu'il participait au deuxième concile de Lyon, ayant été fait cardinal-évêque peu auparavant, et le pape Sixte V le déclara docteur de l'Église en 1588. La réforme du calendrier de 1969 confirma sa mémoire obligatoire le 15 juillet, proche de la date traditionnelle de sa mort.

Son témoignage invite aujourd'hui les fidèles à se souvenir qu'une connaissance authentique de Dieu doit conduire à un amour plus profond de Dieu, et à rechercher, à l'exemple de Bonaventure, une sagesse qui unisse une pensée soigneuse à une prière humble et ardente.
$desc$),
('our-lady-of-mount-carmel', 'Notre-Dame du Mont-Carmel', $desc$
Célébrée le 16 juillet comme mémoire facultative, cette célébration est vécue en ornements blancs durant le Temps ordinaire, honorant la Bienheureuse Vierge Marie sous le titre que lui donne l'ordre du Carmel, dont les origines remontent à des ermites établis sur le mont Carmel en Terre sainte.

La mémoire célèbre Marie comme modèle et protectrice de la vie contemplative et de tous ceux qui cherchent à imiter sa configuration totale au Christ, et elle rappelle la tradition du Scapulaire brun, que Notre-Dame aurait donné à saint Simon Stock en signe de sa protection maternelle et gage de persévérance pour ceux qui le portent avec foi et vivent en conséquence. Cette dévotion proclame la proximité continuelle de Marie envers ceux qui s'efforcent à la sainteté par la prière, la simplicité et la confiance en son intercession.

Les ermites rassemblés sur le mont Carmel dès le douzième siècle regardèrent Marie comme leur patronne et leur modèle dès les origines de l'ordre, s'appuyant sur les riches références bibliques de la montagne liées au prophète Élie, et la dévotion au Scapulaire, attestée dès le quatorzième siècle, se répandit largement par la prédication carmélitaine et demeure l'un des sacramentaux mariaux les plus populaires de l'Église. La réforme du calendrier de 1969 conserva cette célébration comme mémoire facultative le 16 juillet, sa date de longue date établie.

Sa fête invite aujourd'hui les fidèles à se confier à la protection maternelle de Marie au milieu des épreuves de la vie quotidienne, et à faire du Scapulaire, là où il est porté, non un porte-bonheur superstitieux mais un signe véritable de consécration à elle et à son Fils.
$desc$),
('saint-apollinaris-bishop-and-martyr', 'Saint Apollinaire, évêque et martyr', $desc$
Célébrée le 20 juillet comme mémoire facultative, cette célébration est vécue en ornements rouges durant le Temps ordinaire, honorant le premier évêque de Ravenne et martyr des tout premiers siècles de l'Église.

La mémoire célèbre les fondations apostoliques des Églises locales d'Italie et le courage de ces premiers pasteurs qui établirent et défendirent la foi au prix de leur propre vie. Le témoignage d'Apollinaire proclame la continuité entre la prédication apostolique de la première génération et les Églises locales florissantes issues de leurs labeurs, même lorsque peu de détails sur la vie d'un martyr nous sont parvenus au-delà du fait de sa fidélité jusqu'à la mort.

La tradition rapporte qu'Apollinaire fut disciple de saint Pierre et envoyé à Ravenne, où il exerça la charge épiscopale, subit persécutions répétées et exil pour sa prédication, et fut finalement mis à mort, donnant à Ravenne un récit fondateur la reliant directement au siège apostolique de Rome. La réforme du calendrier de 1969 conserva sa célébration comme mémoire facultative le 20 juillet, simplifiant un culte qui avait accumulé au fil des siècles un matériau légendaire considérable, tout en préservant la mémoire essentielle de son épiscopat et de son martyre.

Son témoignage invite aujourd'hui les fidèles à rendre grâce pour les fondateurs de leurs propres Églises locales, souvent inconnus ou à peine gardés en mémoire, et à reconnaître que toute communauté chrétienne repose sur un fondement de foi payé, de manière visible ou cachée, par la fidélité de ceux qui l'ont précédée.
$desc$),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 'Saint Laurent de Brindes, prêtre et docteur de l''Église', $desc$
Célébrée le 21 juillet comme mémoire facultative, cette célébration est vécue en ornements blancs durant le Temps ordinaire, honorant un frère capucin dont les dons extraordinaires de langues et de prédication servirent aussi bien la chaire que les cours d'Europe.

La mémoire célèbre la vocation du prédicateur-diplomate, ce religieux dont l'éloquence dans la chaire égalait l'habileté à réconcilier les princes et à défendre la chrétienté, montrant que des dons intellectuels et linguistiques, entièrement consacrés à Dieu, peuvent servir l'Évangile dans les arènes les plus publiques et les plus exigeantes. Sa vie proclame que la vie religieuse contemplative et l'engagement vigoureux dans le monde ne s'opposent pas, mais peuvent se conjuguer en une seule et féconde vocation.

Laurent de Brindes maîtrisait de nombreuses langues, dont l'hébreu, et mit ce don au service de la prédication et de missions diplomatiques, exerçant la charge de Ministre général des Capucins et rassemblant les forces chrétiennes pour défendre la Hongrie face à l'avancée ottomane ; il mourut en 1619, et le pape Jean XXIII le déclara docteur de l'Église en 1959, lui donnant le titre de « Docteur apostolique » en raison de ses infatigables labeurs missionnaires et pastoraux. La réforme du calendrier de 1969 confirma sa mémoire facultative le 21 juillet, proche de la date traditionnelle de sa mort.

Son témoignage invite aujourd'hui les prédicateurs et les enseignants de la foi, particulièrement ceux doués de savoir ou d'éloquence, à mettre entièrement de tels talents au service de l'Évangile, confiants qu'aucun domaine de l'engagement humain n'échappe à la portée d'une vie véritablement consacrée.
$desc$),
('saint-mary-magdalene', 'Sainte Marie-Madeleine', $desc$
Célébrée le 22 juillet avec le rang de Fête, cette célébration est vécue en ornements blancs durant le Temps ordinaire, honorant la disciple qui fut la première témoin du Christ ressuscité et la première à annoncer sa Résurrection aux autres apôtres.

La fête célèbre le privilège unique de Marie-Madeleine au tombeau vide, où le Seigneur ressuscité lui apparut le premier et l'envoya annoncer aux apôtres ce qu'elle avait vu, lui valant l'antique titre d'« Apôtre des apôtres ». Théologiquement, sa rencontre avec le Christ au jardin proclame que la Résurrection fut confiée d'abord à une témoin fidèle de l'amour, que l'Évangile de la Résurrection s'annonce d'abord par une rencontre personnelle avant d'être formulé en doctrine, et que la fidélité au pied de la croix et au tombeau est récompensée par la plus profonde intimité avec le Seigneur ressuscité.

Vénérée de longue date comme disciple qui accompagna Jésus, le servit ainsi que les apôtres de ses propres biens et demeura fidèle jusqu'à la croix et à la mise au tombeau, Marie-Madeleine fut célébrée en Occident pendant des siècles avec le seul rang de mémoire ; en 2016, le pape François éleva sa célébration au rang de Fête, à l'égal des autres apôtres, précisément pour honorer son titre d'Apôtre des apôtres et son rôle singulier dans le récit de la Résurrection. La réforme du calendrier de 1969 avait déjà clarifié son identité dans les livres liturgiques, la distinguant plus nettement d'autres femmes de l'Évangile avec lesquelles elle avait parfois été confondue populairement.

Son témoignage invite aujourd'hui les fidèles, en particulier les femmes engagées dans toute forme de ministère et d'apostolat, à reconnaître en elle le modèle de la première évangélisatrice de la Résurrection, et à rechercher cette même rencontre intime et personnelle avec le Christ ressuscité qui transforma son chagrin en annonce joyeuse.
$desc$),
('saint-bridget-religious', 'Sainte Brigitte, religieuse', $desc$
Célébrée le 23 juillet comme mémoire facultative, cette célébration est vécue en ornements blancs durant le Temps ordinaire, honorant une noble suédoise dont la longue vie embrassa le mariage, la maternité, le veuvage et la fondation d'un ordre religieux.

La mémoire célèbre la sainteté accessible dans chacun des états de vie que traversa Brigitte, et en particulier le don de la révélation mystique mis au service de l'Église tout entière, ses visions de la Passion du Christ ayant nourri la dévotion bien au-delà de sa propre communauté. Sa vie proclame que des dons contemplatifs profonds peuvent fleurir dans une âme d'abord formée par l'amour conjugal et la responsabilité familiale, et que le veuvage peut devenir la porte d'une consécration encore plus radicale.

Brigitte de Suède mit au monde huit enfants, dont l'une devint sainte Catherine de Suède, et après la mort de son époux, elle se consacra à la prière, au pèlerinage et à la mise par écrit de ses visions, fondant finalement l'ordre brigittin et s'établissant à Rome, où elle mourut en 1373 ; elle fut canonisée en 1391, et le pape Jean-Paul II la nomma co-patronne de l'Europe en 1999, aux côtés de sainte Catherine de Sienne et de sainte Thérèse-Bénédicte de la Croix. La réforme du calendrier de 1969 confirma sa mémoire facultative le 23 juillet, anniversaire de sa mort.

Son témoignage invite aujourd'hui les fidèles, en particulier ceux qui discernent la sainteté à travers les différentes saisons de la vie familiale, à croire que Dieu peut tracer une seule et même vocation cohérente à la sainteté à travers le mariage, la maternité, le veuvage puis la consécration religieuse.
$desc$),
('saint-sharbel-makhluf-priest', 'Saint Charbel Makhlouf, prêtre', $desc$
Célébrée le 24 juillet comme mémoire facultative, cette célébration est vécue en ornements blancs durant le Temps ordinaire, honorant un moine maronite libanais dont la vie cachée de prière devint, après sa mort, source de faveurs extraordinaires pour des pèlerins de toute confession.

La mémoire célèbre la vocation érémitique et monastique, la conviction qu'une vie tout entière donnée dans le silence, la pénitence et la prière incessante, cachée aux yeux du monde, demeure pleinement féconde pour l'Église entière, même sans produire d'activité visible ni de ministère public. La vie de Charbel proclame qu'une sainteté des plus radicales peut se vivre loin des regards, dans une obscurité délibérément choisie pour une union plus étroite à Dieu.

Né Youssef Antoun Makhlouf, il entra dans un monastère maronite, fut ordonné prêtre, puis se retira après quelques années à l'ermitage des Saints-Pierre-et-Paul, où il mena une vie austère et largement silencieuse de prière et de travail manuel jusqu'à sa mort en 1898 ; des phénomènes extraordinaires et des guérisons rapportés à son tombeau suscitèrent une dévotion rapidement croissante, et il fut canonisé en 1977. La réforme du calendrier de 1969 est antérieure à sa canonisation, et sa mémoire fut ajoutée par la suite au calendrier à mesure que son culte se répandait du Liban à l'Église universelle, observée comme mémoire facultative le 24 juillet.

Son témoignage invite aujourd'hui les fidèles, au milieu du bruit et de l'agitation de la vie moderne, à estimer le silence, la pénitence et la prière cachée comme des voies authentiques et puissantes pour s'approcher de Dieu et intercéder pour autrui.
$desc$),
('saint-james-apostle', 'Saint Jacques, apôtre', $desc$
Célébrée le 25 juillet avec le rang de Fête, cette célébration est vécue en ornements blancs durant le Temps ordinaire, honorant l'un des Douze, appelé « le Majeur » pour le distinguer de l'autre apôtre du même nom, et frère de saint Jean l'Évangéliste.

La fête célèbre la place privilégiée de Jacques parmi le cercle restreint des trois disciples que Jésus rapprocha le plus de lui, présent à la Transfiguration et à Gethsémani, et surtout sa distinction d'avoir été le premier des apôtres à sceller son témoignage par le martyre. Sa mort proclame le prix du discipulat annoncé par le Christ lui-même, qui demanda à Jacques et à Jean s'ils pouvaient boire la coupe qu'il allait boire, et elle constitue, parmi les Douze, le premier accomplissement évangélique de cette promesse coûteuse.

Jacques fut décapité sur ordre du roi Hérode Agrippa Ier vers l'an 44, comme le rapportent les Actes des Apôtres, ce qui fait de lui le premier apôtre martyrisé ; une forte tradition, particulièrement chère à l'Espagne, rapporte que son corps fut ensuite transféré à Compostelle, où le sanctuaire de Saint-Jacques-de-Compostelle devint l'une des plus grandes destinations de pèlerinage de la chrétienté et Jacques le patron de la nation. La réforme du calendrier de 1969 confirma sa fête le 25 juillet, sa date traditionnelle et universellement observée.

Son témoignage invite aujourd'hui les fidèles, y compris les innombrables pèlerins modernes qui marchent sur le Chemin de Saint-Jacques en son honneur, à reconnaître que suivre le Christ de près peut effectivement signifier boire sa coupe, et à demander ce même courage qui conduisit Jacques au premier martyre apostolique.
$desc$),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 'Saints Joachim et Anne, parents de la Bienheureuse Vierge Marie', $desc$
Célébrée le 26 juillet comme mémoire obligatoire, cette célébration est vécue en ornements blancs durant le Temps ordinaire, honorant les parents de la Bienheureuse Vierge Marie et donc, selon la chair, les grands-parents de Jésus-Christ lui-même.

La mémoire célèbre la sainteté cachée de la vie familiale et la fidélité discrète de ceux qui, par la vertu domestique ordinaire, préparèrent le cadre humain immédiat dans lequel naquit et grandit la Mère de Dieu. Joachim et Anne sont honorés comme modèles des grands-parents et de toute la famille élargie, proclamant que le dessein salvifique de Dieu se déploie non seulement par de grandes actions publiques mais aussi par des générations d'humble fidélité au sein du foyer.

Leurs noms et leur histoire ne proviennent pas des Écritures canoniques, silencieuses sur les parents de Marie, mais de l'ancien Protévangile apocryphe de Jacques, qui préserva néanmoins une dévotion attestée dès les premiers siècles, particulièrement vivace en Orient chrétien, où leur culte précède de loin son plein épanouissement en Occident. La réforme du calendrier de 1969 éleva leur commémoration commune au rang de mémoire obligatoire le 26 juillet, date déjà associée en Orient comme en Occident à sainte Anne, donnant ainsi à Joachim un honneur égal à celui de son épouse.

Leur mémoire invite aujourd'hui les grands-parents et les aînés à reconnaître dans leur influence discrète, souvent invisible, une véritable participation à l'œuvre de Dieu qui transmet la foi, et invite chaque famille à confier ses propres générations, passées et présentes, à leur intercession.
$desc$),
('saints-martha-mary-and-lazarus', 'Saints Marthe, Marie et Lazare', $desc$
Célébrée le 29 juillet comme mémoire obligatoire, cette célébration est vécue en ornements blancs durant le Temps ordinaire, honorant ensemble les trois frères et sœurs de Béthanie dont Jésus fréquenta souvent la maison et dont l'amitié, selon les Évangiles, constitue un modèle d'intimité avec le Christ.

La mémoire célèbre l'hospitalité, la foi personnelle profonde et la réalité de la résurrection, chacune incarnée par un membre de cette maisonnée : le service généreux de Marthe et sa confession, « Je crois que tu es le Christ, le Fils de Dieu », l'attention contemplative de Marie aux pieds du Seigneur, et Lazare rappelé du tombeau, préfigurant la victoire sur la mort que le Christ lui-même allait bientôt remporter. Ensemble, ils proclament que l'amitié avec Jésus, vécue par le service, la foi et l'espérance même face à la mort, constitue en elle-même un authentique chemin de disciple.

L'Évangile de Jean rapporte le lien étroit de cette famille avec Jésus, ses larmes au tombeau de Lazare, et la résurrection de celui-ci après quatre jours, signe qui précipita le plus directement le complot contre la vie de Jésus lui-même ; pendant des siècles, le calendrier romain garda une mémoire de Marthe seule le 29 juillet, mais en 2021 le pape François étendit la célébration pour y inclure Marie et Lazare, voulant honorer ensemble toute la maisonnée de Béthanie comme un exemple de vie familiale mise au service du Christ. Cet ajustement ne modifia pas la date mais enrichit la portée de la mémoire, à l'intérieur de la même observance du 29 juillet établie par la réforme de 1969.

Leur témoignage invite aujourd'hui les fidèles à accueillir le Christ dans leurs propres maisons par l'hospitalité et le service, à s'asseoir avec attention à ses pieds dans la prière, et à lui faire confiance, même dans le deuil, comme à celui qui rappelle les morts à la vie.
$desc$),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 'Saint Pierre Chrysologue, évêque et docteur de l''Église', $desc$
Célébrée le 30 juillet comme mémoire facultative, cette célébration est vécue en ornements blancs durant le Temps ordinaire, honorant un évêque de Ravenne renommé pour des homélies si vives et si précises qu'elles lui valurent le surnom de « Chrysologue », c'est-à-dire à la parole d'or.

La mémoire célèbre le ministère de la prédication à son meilleur, bref, lumineux et solidement enraciné dans l'Écriture, capable de déployer les mystères de la foi devant des gens simples en un langage qu'ils pouvaient aisément saisir et retenir. Les sermons conservés de Pierre proclament que la chaire, mise au service de la clarté et de la charité plutôt que du simple étalage de savoir, demeure l'un des instruments les plus puissants de l'Église pour former la foi de son peuple.

Pierre exerça la charge épiscopale à Ravenne au cinquième siècle, alors capitale impériale de grande importance, et ses homélies brèves et soigneusement composées, dont un nombre substantiel nous est parvenu, révèlent un pasteur profondément attentif aux besoins concrets de son troupeau ; il mourut vers l'an 450, et le pape Benoît XIII le déclara docteur de l'Église en 1729. La réforme du calendrier de 1969 confirma sa mémoire facultative le 30 juillet, proche de la date traditionnelle liée à sa mort.

Son témoignage invite aujourd'hui les prédicateurs et les enseignants de la foi à rechercher la même clarté et la même chaleur qui marquèrent ses sermons, et invite chaque croyant à revenir souvent et attentivement aux paroles de l'Écriture comme à la source la plus sûre d'une foi aisément comprise et fermement tenue.
$desc$),
('saint-ignatius-of-loyola-priest', 'Saint Ignace de Loyola, prêtre', $desc$
Célébrée le 31 juillet comme mémoire obligatoire, cette célébration est vécue en ornements blancs durant le Temps ordinaire, honorant un soldat basque dont la blessure reçue au combat devint, par la providence de Dieu, la blessure qui l'ouvrit à la sainteté.

La mémoire célèbre le discernement des esprits et l'offrande totale de ses talents et de ses ambitions pour la plus grande gloire de Dieu, devise rendue célèbre par Ignace, Ad maiorem Dei gloriam. Son enseignement spirituel proclame que Dieu peut être trouvé et servi en toutes choses, et que l'examen ordonné de ses propres pensées, désirs et consolations constitue lui-même un chemin authentique pour connaître et suivre la volonté divine.

Blessé au combat à Pampelune en 1521, Ignace de Loyola connut une longue convalescence durant laquelle ses lectures détournèrent son ambition de la gloire mondaine vers la suite du Christ, le conduisant à composer les Exercices spirituels et, avec une petite bande de compagnons dont saint François Xavier, à fonder la Compagnie de Jésus en 1540, ordre qui deviendrait l'un des grands moteurs de l'expansion missionnaire, de l'éducation et de la réforme catholiques ; il mourut à Rome en 1556 et fut canonisé en 1622. La réforme du calendrier de 1969 confirma sa mémoire obligatoire le 31 juillet, date traditionnelle de sa mort.

Son témoignage invite aujourd'hui les fidèles à chercher Dieu activement en toute circonstance de la vie ordinaire, et à faire leur, quelle que soit la vocation qu'ils suivent, la résolution ignatienne de mettre tout talent et toute ambition entièrement au service de la plus grande gloire de Dieu.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-thomas-apostle', 'Sanctus Thomas, Apostolus', $desc$
Die tertio mensis Iulii, gradu Festi, colore albo, celebratur haec sollemnitas tempore per annum, unum ex Duodecim a Christo ipso electum honorans, praesertim gratiam singularem occursus eius cum Domino resurgente commemorans.

Festum celebrat Apostolum ob dubitationem sinceram et fidem sinceriorem memorabilem, discipulum qui testimonio alieno de Resurrectione credere noluit sed vulnera Christi videre et tangere postulavit, et, semel satisfactus, perfectissimam totius Evangelii fidei confessionem protulit: «Dominus meus et Deus meus». Theologice, Thomas omnem credentem repraesentat qui per dubitationis experimentum ad fidem tendit, et eius historia proclamat Christum sinceram quaestionem non increpatione sed misericordia patienti ac tangibili occurrere, dubitantem ad altissimam suae divinitatis confessionem ducens.

Antiqua traditio, scriptoribus christianis antiquis et perenni testimonio communitatum christianarum in India, quae originem suam eius praedicationi tribuunt, testata, tenet Thomam Evangelium usque ad Indiam detulisse, ubi pro fide martyrium passus est; reliquiae eius Mylaporae, Edessae, ac postea Ortonae in Italia cultae sunt. Reformatio Calendarii Romani anno 1969 facta festum eius a die 21 Decembris, antiquissima quidem in Occidente sed semper Nativitatis vicinitate obumbrata, ad diem 3 Iulii transtulit, quam traditiones Syro-Malabarenses aliaeque Orientales, campo eius missionali arcte coniunctae, iam diu servaverant, ita maiorem sollemnitatem eius celebrationi restituens.

Sanctus Thomas hodiernos fideles, qui pariter non viderunt sed credere vocantur, invitat ut dubitationes suas sinceras potius Christo afferant quam supprimant, confidentes eum sincero quaerenti prope adesse et omnem dubitationem ad plenitudinem fidei adorantis perducere.
$desc$),
('saint-elizabeth-of-portugal', 'Sancta Elisabeth Lusitaniae', $desc$
Die quarto mensis Iulii, memoria ad libitum, colore albo, celebratur haec commemoratio tempore aestivo per annum, reginam honorans cuius regalis dignitas sanctitatis instrumentum potius quam obstaculum evasit.

Memoria celebrat vocationem ad sanctitatem in matrimonio, maternitate et publica responsabilitate exercendam, praesertim gratiam pacificatricis inter bella et discordias familiares. Vita Elisabeth proclamat potestatem politicam, tam saepe superbiae et contentionis occasionem, posse reconciliationi et pauperibus omnino inservire, et viduitatem, longe a vita servitii claudenda, eam ad orationem et simplicitatem consecratam plenius aperire posse.

Nata Hispana regia stirpe et Dionysio regi Lusitaniae in matrimonium data, Elisabeth nomen a magna amita sua Sancta Elisabeth Hungariae accepit et eius caritatem imitata est, mariti infidelitates patienter sustinens dum pacem inter eum filiumque rebellem, deinde inter Lusitaniam et vicinam Castellam, saepius componebat. Vidua facta, habitum tertii Ordinis Franciscani sumpsit et prope monasterium Clarissarum a se fundatum se recepit, anno 1336 obiens et anno 1625 canonizata; reformatio Calendarii anno 1969 memoriam eius ad libitum confirmavit, die 4 Iulii, translationi reliquiarum eius associato.

Exemplum eius hodiernos, praesertim eos qui auctoritatem exercent vel familiarum discordiarum vulnera portant, invitat ut reconciliationem patienter quaerant, nullamque mundanam dignitatem se a vita orationis, humilitatis et curae pauperum avertere sinant.
$desc$),
('saint-anthony-zaccaria-priest', 'Sanctus Antonius Maria Zaccaria, presbyter', $desc$
Die quinto mensis Iulii, memoria ad libitum, colore albo, celebratur haec commemoratio hebdomadis aestivis per annum, medicum qui presbyter factus est honorans, cuius studium vitam spiritualem Italiae saeculi sexti decimi renovare adiuvit.

Memoria celebrat vocationem praedicatoris reformatoris et fundatoris, presbyteri qui ad fervorem in Ecclesia tepescente per frequentem sacramentorum usum et audacem, directam Christi crucifixi praedicationem excitandum laborat. Charisma Antonii proclamat perennem virtutem Communionis frequentis et publicae praedicationis ad clerum laicosque renovandos, multis ante saeculis accentus eucharisticos et catecheticos anticipans quos Ecclesia postea universales fecit.

Primum medicus, Antonius Zaccaria ad sacerdotium se convertit et Clericos Regulares Sancti Pauli fundavit, vulgo Barnabitas ab ecclesia Mediolanensi Sancti Barnabae dictos, simul cum congregatione sociali monialium et sodalitate laicorum, Communionem frequentem, immo cotidianam, promovens tempore quo id insolitum erat. Iuvenis obiit, anno 1539, laboribus consumptus, et anno 1897 canonizatus est; reformatio anni 1969 memoriam eius ad libitum die 5 Iulii, traditionali mortis eius die, servavit. Vita eius brevis ostendit neque iuventutem neque vocationem seram fecunditatem gratiae limitare, ubi ea animarum servitio penitus dedicatur.

Testimonium eius hodiernos invitat ut Eucharistiam frequentius ferventiusque adeant tamquam veram renovationis spiritualis fontem, et Christum crucifixum eadem qua ille directione ac fortitudine annuntient, quae breve sed fecundum eius ministerium signavit.
$desc$),
('saint-maria-goretti-virgin-and-martyr', 'Sancta Maria Goretti, virgo et martyr', $desc$
Die sexto mensis Iulii, memoria ad libitum, colore rubro, celebratur haec commemoratio tempore per annum, unam ex iunioribus sanctis aetatis modernae honorans, martyrem non pro fide aperte confessa sed pro castitate usque ad mortem defensa.

Memoria celebrat dignitatem castitatis et heroismum etiam in puella possibilem, ostendens martyrium ex fidelitate exigentiis moralibus Evangelii oriri posse, non solum ex confessionis Christi verbo negatae recusatione. Venia a Maria moriente aggressori data proclamat singulari claritate Evangelii praeceptum inimicos diligendi, misericordiam tamquam fructum et complementum authenticae sanctitatis revelans, non tamquam simplicem eius appendicem.

Puella Italica pauper agricola, Maria Goretti anno 1902, undecim annos nata, ab Alexandro Serenelli, iuvene vicino, aggressa est et, dum se opponebat, mortiferis vulneribus confossa, ei ante mortem explicite ignovit; Serenelli, annis post partim visione Mariae ei lilia offerentis conversus, canonizationem eius anno 1950 vivens vidit, quae ingentem turbam, inter quam ipsa mater eius aderat, attraxit. Reformatio Calendarii anno 1969 memoriam eius ad libitum die 6 Iulii, anniversario mortis eius, servavit.

Testimonium eius hodiernos fideles, praesertim iuvenes, invitat ut castitatem tamquam formam authenticam et pretiosam sanctitatis aestiment, et omne cor vulneratum hortatur ut credat veniam, quamvis difficilem, semper possibilem esse per gratiam quae Mariam usque ad ultimum halitum sustinuit.
$desc$),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', 'Sanctus Augustinus Zhao Rong et Socii, martyres', $desc$
Die nono mensis Iulii, memoria ad libitum, colore rubro, celebratur haec commemoratio tempore per annum, multos martyres Sinenses, episcopos, presbyteros, religiosos et fideles laicos omnis aetatis, simul honorans, qui per plura saecula persecutionis vitam pro Christo dederunt.

Memoria celebrat Ecclesiae radices in terra Sinensi per sanguinem filiorum suorum et missionariorum qui eis servierunt fixas, proclamans Evangelium ibi vere incarnatum et proprium factum esse, non merum importatum externorum ope conservatum. Affirmat martyrium usque ad aetatem modernam perdurare, sanctitatemque tam apud simplices catechistas, matres et pueros quam apud clerum et religiosos florere.

Centum viginti martyres simul commemorati inter medium saeculum septimum decimum et Rebellionem Boxer anni 1900, quae plurimos rapuit, obierunt, inter quos Augustinus Zhao Rong presbyter, olim miles qui episcopum Gabrielem Taurinum Dufresse custodivit antequam ipse fidem amplecteretur et postea pro ea moreretur; Ioannes Paulus Papa II hanc ingentem cohortem simul Romae anno Iubilaei 2000 canonizavit. Reformatio Calendarii anni 1969 hanc canonizationem antecedit, et memoria postea Calendario Romano Generali addita est, diem 9 Iulii universae Ecclesiae ad hos martyres honorandos assignans.

Testimonium eorum hodiernos fideles invitat ut pro Ecclesia in Sinis et pro christianis ubique persecutis orent, et agnoscant fidelitatem Christo, etiam usque ad mortem, tam realem tamque pretiosam possibilitatem hodie manere quam omni aetate praecedenti.
$desc$),
('saint-benedict-abbot', 'Sanctus Benedictus, abbas', $desc$
Die undecimo mensis Iulii, memoria obligatoria, colore albo, celebratur haec commemoratio media aestate tempore per annum, patrem monachatus Occidentalis honorans die translationi reliquiarum eius potius quam anniversario mortis associato.

Memoria celebrat vocationem Deum super omnia quaerendi, vitam totam, orationem, laborem et vitam communem, circa hanc unicam intentionem in bene noto Benedictino elogio ora et labora ordinantem. Regula Benedicti proclamat viam aequilibratam, humanam et profunde Christocentricam ad sanctitatem, quae vitam monasticam, et per eam totam culturam Occidentalem, per millennium et dimidium formavit, ostendens stabilitatem, oboedientiam et vitam communem ordinatam ipsas esse vias Christum sequendi.

Circa annum 480 Nursiae natus, Benedictus a Roma dissoluta ad vitam orationis se recepit, tandem monasterium Montis Cassini fundans ubi Regulam suam celebrem scripsit, et circa annum 547 obiit; Paulus Papa VI eum anno 1964 Patronum Europae declaravit, munus civilizans monachatus post Imperii Romani occasum agnoscens. Reformatio Calendarii anni 1969 festum eius a die 21 Martii, traditionali mortis die sed in Quadragesima saepe cadente, ad diem 11 Iulii, translationis reliquiarum eius ad Floriacum diem, transtulit, memoriam eius plena sollemnitate obligatoria celebrandam permittens.

Testimonium eius hodiernos fideles, quocumque vitae statu, invitat ut rectam orationis et laboris ordinationem quaerant, et in stabilitate, silentio ac fideli cotidiana simplicitate viam authenticam et accessibilem ad sanctitatem redinveniant.
$desc$),
('saint-henry', 'Sanctus Henricus', $desc$
Die decimo tertio mensis Iulii, memoria ad libitum, colore albo, celebratur haec commemoratio tempore per annum, imperatorem honorans qui non tam propter potestatem quam exercuit quam propter pietatem qua eam exercuit memoratur.

Memoria celebrat vocationem ad sanctitatem in auctoritate civili exercenda et in statu coniugali vivendo, proclamans gubernationem ipsam, fide animatam, instrumentum missionis Ecclesiae fieri posse, et matrimonium, etiam sine prole, viam mutuae sanctificationis vivi posse. Exemplum Henrici omnem opinionem repellit qua potestas mundana et sanctitas personalis inter se incompatibiles ducerentur.

Henricus II, Sacri Romani Imperii imperator saeculo undecimo, propter liberalitatem erga ecclesias, monasteria et dioecesim Bambergensem ab eo fundatam celebris fuit, et traditio tenet eum cum uxore Cunegunde matrimonium in continentia vixisse, unionem suam Deo penitus offerentes; anno 1024 obiit et anno 1146 canonizatus est. Reformatio Calendarii anni 1969 commemorationem eius ad libitum die 13 Iulii, mortis eius traditionali die, servavit.

Testimonium eius hodiernos, qui auctoritatem quocumque in campo exercent, invitat ut munera sua tamquam verum sanctitatis campum aestiment, et omnem coniugum copulam invitat ut unionem suam, quocumque modo vivatur, Deo penitus consecratam esse agnoscat.
$desc$),
('saint-camillus-de-lellis-priest', 'Sanctus Camillus de Lellis, presbyter', $desc$
Die decimo quarto mensis Iulii, memoria ad libitum, colore albo, celebratur haec commemoratio tempore aestivo per annum, olim militem et alea inveteratum honorans cuius conversio Ecclesiae unum ex magnis praecursoribus curae christianae aegrotorum dedit.

Memoria celebrat vocationem Christum ipsum in persona patientis videndi et serviendi, et charisma Camilli proclamat curam corporis compassivam, peritam et amantem opus vere evangelicum esse, non a spiritualibus curis distractionem. Vita eius ostendit nullam dissipationis profunditatem animam a gratiae aditu removere, neque a possibilitate qua ipse instrumentum gratiae aliis fiat.

Post annos militiae mercenariae alea deperditos, Camillus de Lellis profundam conversionem passus, ad sacerdotium se paravit et Ministros Infirmorum, Camillianos dictos, fundavit, quorum sodales crucem rubram gerunt et infirmis, etiam cum vitae suae periculo, servire vovent; melioribus praxibus nosocomialibus et curae infirmariae studuit, anno 1614 obiit, anno 1746 canonizatus est, et postea patronus infirmorum, infirmariorum et nosocomiorum nominatus. Reformatio Calendarii anni 1969 commemorationem eius ad libitum die 14 Iulii, prope traditionalem mortis eius diem, servavit.

Testimonium eius hodiernos, praesertim eos qui aegrotos professione vel in propria familia curant, invitat ut in hac cura veram et exigentem discipulatus formam agnoscant, eiusque intercessionem pro patientia et lenitate in omni occursu cum humano dolore petant.
$desc$),
('saint-bonaventure-bishop-and-doctor-of-the-church', 'Sanctus Bonaventura, episcopus et Ecclesiae doctor', $desc$
Die decimo quinto mensis Iulii, memoria obligatoria, colore albo, celebratur haec commemoratio tempore per annum, fratrem Franciscanum honorans qui ad ordinis sui gubernationem ascendit et inter maximos theologos Ecclesiae medii aevi numeratur.

Memoria celebrat concordiam inter intellectum et amorem mysticum quae theologiam Bonaventurae signavit, ei titulum «Doctoris Seraphici» conferens, quia eius doctrina semper ad animae ascensum in Deo unionem ordinata mansit. Scripta eius proclamant veram theologiam ab oratione et contemplatione seiungi non posse, et mentis rigorosam veritatis quaestionem in ardenti cordis amore erga Deum tantum plenam complementum invenire.

Bonaventura in Ordinem Franciscanum ingressus, Parisiis studuit et postea docuit una cum amico suo Thoma Aquinate, Minister Generalis Fratrum Minorum electus est, ordinem per difficile divisionis internae tempus regens dum scriptis theologicis et spiritualibus abundanter vacabat; anno 1274, dum Concilio Lugdunensi Secundo intererat, obiit, paulo ante cardinalis episcopus creatus, et Sixtus Papa V eum anno 1588 Ecclesiae Doctorem declaravit. Reformatio Calendarii anni 1969 memoriam eius obligatoriam die 15 Iulii, prope traditionalem mortis eius diem, confirmavit.

Testimonium eius hodiernos fideles invitat ut meminerint veram Dei cognitionem ad profundiorem Dei amorem ducere debere, et, exemplo Bonaventurae, sapientiam quaerant quae diligentem cogitationem cum humili et ardenti oratione coniungat.
$desc$),
('our-lady-of-mount-carmel', 'Beata Maria Virgo de Monte Carmelo', $desc$
Die sexto decimo mensis Iulii, memoria ad libitum, colore albo, celebratur haec commemoratio tempore per annum, Beatam Virginem Mariam sub titulo ab Ordine Carmelitano dato honorans, cuius origines apud eremitas in Monte Carmelo in Terra Sancta sedentes iacent.

Memoria celebrat Mariam tamquam exemplar et protectricem vitae contemplativae et omnium qui totalem configurationem eius cum Christo imitari student, et commemorat traditionem Scapularis Bruni, quod Domina Nostra Sancto Simoni Stock dedisse fertur in signum maternae protectionis et pignus perseverantiae iis qui illud fide gerunt et secundum illud vivunt. Devotio proclamat continuam Mariae propinquitatem erga eos qui ad sanctitatem per orationem, simplicitatem et fiduciam in eius intercessione contendunt.

Eremitae qui in Monte Carmelo a saeculo duodecimo congregati sunt, Mariam ab ipsis Ordinis primordiis tamquam patronam et exemplar habuerunt, ex divitibus montis biblicis associationibus cum propheta Elia haustis, et devotio Scapularis, a saeculo quarto decimo testata, per praedicationem Carmelitanam late diffusa est et unum ex popularissimis sacramentalibus Marianis in Ecclesia manet. Reformatio Calendarii anni 1969 hanc commemorationem ad libitum die 16 Iulii, diu iam statuto, servavit.

Festum eius hodiernos fideles invitat ut se maternae Mariae protectioni inter vitae cotidianae probationes committant, et Scapulare, ubi geritur, non superstitiosum amuletum sed verum consecrationis signum erga ipsam eiusque Filium esse patiantur.
$desc$),
('saint-apollinaris-bishop-and-martyr', 'Sanctus Apollinaris, episcopus et martyr', $desc$
Die vicesimo mensis Iulii, memoria ad libitum, colore rubro, celebratur haec commemoratio tempore per annum, primum episcopum Ravennatem honorans, martyrem primorum Ecclesiae saeculorum.

Memoria celebrat fundamenta apostolica Ecclesiarum localium Italiae et fortitudinem primorum illorum pastorum qui fidem pretio vitae suae condiderunt et defenderunt. Testimonium Apollinaris proclamat continuitatem inter praedicationem apostolicam primae generationis et Ecclesias locales florentes ex eorum laboribus ortas, etiam ubi pauca de martyris vita praeter fidelitatem usque ad mortem ad nos pervenerunt.

Traditio tenet Apollinarem discipulum Sancti Petri fuisse, Ravennam missum, ubi episcopatum gessit, persecutiones et exilium propter praedicationem suam saepe passus, et tandem martyrio coronatus, Ravennae narrationem fundatricem dans quae eam directe cum sede apostolica Romana coniungeret. Reformatio Calendarii anni 1969 commemorationem eius ad libitum die 20 Iulii servavit, cultum per saecula materia legendaria auctum simplificans dum memoriam essentialem episcopatus eius et martyrii conservavit.

Testimonium eius hodiernos fideles invitat ut gratias agant pro fundatoribus Ecclesiarum suarum localium, saepe ignotis vel vix memoratis, et agnoscant omnem communitatem christianam super fundamentum fidei, visibiliter vel occulte, fidelitate praecedentium redemptum niti.
$desc$),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 'Sanctus Laurentius a Brundusio, presbyter et Ecclesiae doctor', $desc$
Die vicesimo primo mensis Iulii, memoria ad libitum, colore albo, celebratur haec commemoratio tempore per annum, fratrem Capuccinum honorans cuius dona extraordinaria linguarum et praedicationis tam cathedrae quam aulis Europae inservierunt.

Memoria celebrat vocationem praedicatoris-legati, religiosi cuius eloquentia in cathedra peritiae in principibus reconciliandis et Christianitate defendenda aequabatur, ostendens dona intellectualia et linguistica, Deo penitus consecrata, Evangelio in publicissimis et exigentissimis arenis servire posse. Vita eius proclamat vitam religiosam contemplativam et vigorosam mundo latiori inserviendam non opponi, sed in unam fecundam vocationem coniungi posse.

Laurentius a Brundusio linguas multas, inter quas Hebraicam, calluit, hocque dono in praedicatione et legationibus diplomaticis usus est, Minister Generalis Capuccinorum factus et copias Christianas ad Hungariam contra Ottomanicum impetum defendendam congregans; anno 1619 obiit, et Ioannes Papa XXIII eum anno 1959 Ecclesiae Doctorem declaravit, titulum «Doctoris Apostolici» ei ob indefessos labores missionarios et pastorales conferens. Reformatio Calendarii anni 1969 memoriam eius ad libitum die 21 Iulii, prope traditionalem mortis eius diem, confirmavit.

Testimonium eius hodiernos praedicatores et fidei doctores, praesertim doctrina vel eloquentia praeditos, invitat ut talenta sua Evangelio penitus dedicent, confidentes nullum campum humani studii extra ambitum vitae vere consecratae iacere.
$desc$),
('saint-mary-magdalene', 'Sancta Maria Magdalena', $desc$
Die vicesimo secundo mensis Iulii, gradu Festi, colore albo, celebratur haec sollemnitas tempore per annum, discipulam honorans quae prima testis Christi resurgentis fuit primaque Resurrectionem eius apostolis ceteris nuntiavit.

Festum celebrat privilegium singulare Mariae Magdalenae ad sepulcrum vacuum, ubi Dominus resurgens ei primae apparuit eamque misit ut apostolis quae viderat nuntiaret, titulum antiquum «Apostolorum Apostolae» ei conferens. Theologice, eius occursus cum Christo in horto proclamat Resurrectionem primum fideli amoris testi commissam esse, Evangelium Resurrectionis per occursum personalem prius quam in doctrinam formulatum annuntiari, et fidelitatem ad crucis pedem et ad sepulcrum manentem intimissima cum Domino resurgente familiaritate remunerari.

Iam diu culta tamquam discipula quae Iesum secuta est, ei apostolisque de bonis suis ministravit, et usque ad crucem et sepulturam fidelis mansit, Maria Magdalena in Occidente per saecula solo memoriae gradu celebrata est; anno 2016 Franciscus Papa celebrationem eius ad gradum Festi, ceteris apostolis aequalem, extulit, praecise ut titulum eius Apostolorum Apostolae eiusque munus singulare in narratione Resurrectionis honoraret. Reformatio Calendarii anni 1969 iam identitatem eius in libris liturgicis clarificaverat, eam clarius ab aliis mulieribus evangelicis, quibuscum popularier aliquando confusa erat, distinguens.

Testimonium eius hodiernos fideles, praesertim mulieres in omni ministerii et apostolatus forma occupatas, invitat ut in ea exemplar primae evangelistae Resurrectionis agnoscant, et eundem occursum intimum ac personalem cum Christo resurgente quaerant qui luctum eius in nuntium gaudii transformavit.
$desc$),
('saint-bridget-religious', 'Sancta Birgitta, religiosa', $desc$
Die vicesimo tertio mensis Iulii, memoria ad libitum, colore albo, celebratur haec commemoratio tempore per annum, nobilem Suecicam honorans cuius longa vita matrimonium, maternitatem, viduitatem et ordinis religiosi fundationem complexa est.

Memoria celebrat sanctitatem in omni vitae statu quem Birgitta pertransivit accessibilem, praesertim donum revelationis mysticae toti Ecclesiae inservientis, visionibus eius de Passione Christi devotionem longe ultra propriam communitatem nutrientibus. Vita eius proclamat dona contemplativa profunda in anima primum amore coniugali et responsabilitate domestica formata florere posse, et viduitatem ianuam consecrationis adhuc radicalioris fieri posse.

Birgitta Suecica octo liberos genuit, quorum una Sancta Catharina Suecica facta est, et post mariti mortem se orationi, peregrinationi et visionum suarum scriptioni dedicavit, tandem Ordinem Birgittinum fundans et Romae se constituens, ubi anno 1373 obiit; anno 1391 canonizata est, et Ioannes Paulus Papa II eam anno 1999 co-patronam Europae, una cum Sancta Catharina Senensi et Sancta Teresia Benedicta a Cruce, nominavit. Reformatio Calendarii anni 1969 memoriam eius ad libitum die 23 Iulii, anniversario mortis eius, confirmavit.

Testimonium eius hodiernos fideles, praesertim eos qui sanctitatem per varias vitae familiaris tempestates discernunt, invitat ut confidant Deum unam et coherentem vocationem ad sanctitatem per matrimonium, maternitatem, viduitatem et consecrationem religiosam vicissim ducere posse.
$desc$),
('saint-sharbel-makhluf-priest', 'Sanctus Charbel Makhluf, presbyter', $desc$
Die vicesimo quarto mensis Iulii, memoria ad libitum, colore albo, celebratur haec commemoratio tempore per annum, monachum Maronitam Libanensem honorans cuius vita occulta orationis post mortem fons factus est favorum extraordinariorum peregrinis omnis fidei.

Memoria celebrat vocationem eremiticam et monasticam, persuasionem qua vita in silentio, paenitentia et oratione incessanti effusa, mundi oculis occulta, toti Ecclesiae plene fecunda manet, etiam si nullam actionem visibilem vel ministerium publicum producit. Vita Charbel proclamat sanctitatem radicalissimam procul ab hominum notitia vivi posse, in obscuritate de industria electa arctioris cum Deo unionis causa.

Ioseph Antonius Makhlouf natus, monasterium Maroniticum ingressus, sacerdos ordinatus est, et post aliquot annos ad eremitorium Sanctorum Petri et Pauli se recepit, ubi vitam austeram et magna ex parte silentem orationis et laboris manualis usque ad mortem anno 1898 duxit; phaenomena extraordinaria et sanationes ad tumulum eius relatae devotionem celeriter crescentem excitaverunt, et anno 1977 canonizatus est. Reformatio Calendarii anni 1969 canonizationem eius antecedit, et memoria postea calendario addita est, cultu eius a Libano ad Ecclesiam universalem diffuso, die 24 Iulii tamquam memoria ad libitum observata.

Testimonium eius hodiernos fideles, inter strepitum et occupationes vitae modernae, invitat ut silentium, paenitentiam et orationem occultam tamquam vias authenticas ac potentes ad Deum accedendi et pro aliis intercedendi aestiment.
$desc$),
('saint-james-apostle', 'Sanctus Iacobus, Apostolus', $desc$
Die vicesimo quinto mensis Iulii, gradu Festi, colore albo, celebratur haec sollemnitas tempore per annum, unum ex Duodecim, «Maiorem» dictum ut ab altero apostolo eiusdem nominis distingueretur, fratremque Sancti Ioannis Evangelistae honorans.

Festum celebrat locum praecipuum Iacobi inter tres discipulos quos Iesus sibi proxime adiunxit, praesentem in Transfiguratione et in Gethsemani, et super omnia eius distinctionem qua primus apostolorum martyrio testimonium suum obsignavit. Mors eius proclamat pretium discipulatus a Christo ipso praedictum, qui Iacobum et Ioannem interrogavit an calicem quem ipse bibiturus erat bibere possent, primumque inter Duodecim huius pretiosae promissionis adimpletionem constituit.

Iacobus, ut in Actibus Apostolorum refertur, iussu Herodis Agrippae Primi regis circa annum 44 capite truncatus est, primus apostolorum martyr factus; firma traditio, praesertim in Hispania cara, tenet corpus eius postea Compostellam translatum esse, ubi sanctuarium Sancti Iacobi de Compostella una ex maximis peregrinationum destinationibus christianitatis factum est et Iacobus patronus nationis. Reformatio Calendarii anni 1969 festum eius die 25 Iulii, die traditionali et universaliter observato, confirmavit.

Testimonium eius hodiernos fideles, inter quos innumeri peregrini moderni qui Iter Sancti Iacobi in eius honorem calcant, invitat ut agnoscant Christum arcte sequi revera posse calicem eius bibere significare, eandemque fortitudinem petant quae Iacobum ad primum martyrium apostolicum duxit.
$desc$),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 'Sancti Ioachim et Anna', $desc$
Die vicesimo sexto mensis Iulii, memoria obligatoria, colore albo, celebratur haec commemoratio tempore per annum, parentes Beatae Mariae Virginis, et ideo secundum carnem avos Iesu Christi ipsius, honorans.

Memoria celebrat sanctitatem occultam vitae familiaris et fidelitatem quietam eorum qui, per virtutem domesticam ordinariam, ambitum humanum immediatum praeparaverunt in quo Mater Dei nata et educata est. Ioachim et Anna tamquam exemplaria aviorum et totius familiae amplioris honorantur, proclamantes consilium Dei salvificum non solum per magna facta publica, sed etiam per generationes humilis fidelitatis intra domum, explicari.

Nomina eorum et historia non ex Scripturis canonicis, quae de parentibus Mariae silent, sed ex antiquo Protoevangelio Iacobi apocrypho proveniunt, quod nihilominus devotionem a primis saeculis testatam conservavit, praesertim in Oriente christiano vigentem, ubi cultus eorum plenam suam florescentiam in Occidente longe antecedit. Reformatio Calendarii anni 1969 commemorationem eorum communem ad gradum memoriae obligatoriae die 26 Iulii extulit, die iam in Oriente et Occidente Sanctae Annae associato, ita Ioachim honorem uxori suae aequalem tribuens.

Memoria eorum hodiernos avos et seniores invitat ut in influxu suo quieto, saepe invisibili, veram participationem operis Dei fidem tradentis agnoscant, et omnem familiam invitat ut generationes suas, praeteritas et praesentes, eorum intercessioni committat.
$desc$),
('saints-martha-mary-and-lazarus', 'Sanctae Martha, Maria et Lazarus', $desc$
Die vicesimo nono mensis Iulii, memoria obligatoria, colore albo, celebratur haec commemoratio tempore per annum, tres fratres et sorores Bethaniae simul honorans, quorum domum Iesus saepe visitavit et quorum amicitiam Evangelia exemplar intimitatis cum Christo praesentant.

Memoria celebrat hospitalitatem, fidem personalem profundam et resurrectionis realitatem, quarum unaquaeque per unum huius familiae membrum exprimitur: servitium generosum Marthae eiusque confessio, «Ego credo quia tu es Christus Filius Dei», attentio contemplativa Mariae ad pedes Domini, et Lazarus e sepulcro vocatus, victoriam super mortem praefigurans quam Christus ipse mox consummaturus erat. Simul proclamant amicitiam cum Iesu, per servitium, fidem et spem etiam coram morte vixam, veram esse discipulatus viam.

Evangelium secundum Ioannem arctum huius familiae vinculum cum Iesu refert, lacrimas eius ad tumulum Lazari, et suscitationem eius post quattuor dies, signum quod insidias contra vitam Iesu ipsius maxime praecipitavit; per saecula calendarium Romanum memoriam solius Marthae die 29 Iulii servavit, sed anno 2021 Franciscus Papa celebrationem extendit ut Mariam et Lazarum quoque includeret, volens totam Bethaniae familiam simul honorare tamquam exemplar vitae familiaris Christo inservientis. Haec mutatio diem non mutavit sed ambitum memoriae auxit, intra eandem observantiam diei 29 Iulii a reformatione anni 1969 statutam.

Testimonium eorum hodiernos fideles invitat ut Christum in domus suas per hospitalitatem et servitium accipiant, ut attente ad pedes eius in oratione sedeant, et ut ei, etiam in luctu, tamquam ei qui mortuos ad vitam revocat, confidant.
$desc$),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 'Sanctus Petrus Chrysologus, episcopus et Ecclesiae doctor', $desc$
Die trigesimo mensis Iulii, memoria ad libitum, colore albo, celebratur haec commemoratio tempore per annum, episcopum Ravennatem honorans, homiliis tam vivis et praecisis celebrem ut cognomen «Chrysologi», hoc est aureo sermone praediti, mereretur.

Memoria celebrat ministerium praedicationis in optima sua forma, breve, lucidum et in Scriptura solide fundatum, mysteria fidei populo simplici lingua facile comprehensibili et memorabili explicare valens. Sermones Petri qui supersunt proclamant cathedram, claritati et caritati potius quam ostentationi scientiae inservientem, unum ex potentissimis Ecclesiae instrumentis manere ad fidem populi sui formandam.

Petrus episcopatum Ravennae saeculo quinto gessit, tunc capitali imperiali magni momenti, et homiliae eius breves diligenterque compositae, quarum copia notabilis ad nos pervenit, pastorem grebi suo necessitatibus concretis attentissimum ostendunt; circa annum 450 obiit, et Benedictus Papa XIII eum anno 1729 Ecclesiae Doctorem declaravit. Reformatio Calendarii anni 1969 memoriam eius ad libitum die 30 Iulii, prope traditionalem mortis eius diem, confirmavit.

Testimonium eius hodiernos praedicatores et fidei doctores invitat ut eandem claritatem et caliditatem quae sermones eius signavit sectentur, et omnem credentem invitat ut ad verba Scripturae saepe attenteque redeat, tamquam ad certissimum fontem fidei facile intellectae et firmiter tentae.
$desc$),
('saint-ignatius-of-loyola-priest', 'Sanctus Ignatius de Loyola, presbyter', $desc$
Die trigesimo primo mensis Iulii, memoria obligatoria, colore albo, celebratur haec commemoratio tempore per annum, militem Vasconem honorans cuius vulnus in proelio acceptum, providentia Dei, vulnus factum est quod eum ad sanctitatem aperuit.

Memoria celebrat discretionem spirituum et totalem oblationem talentorum et ambitionum ad maiorem Dei gloriam, elogium ab Ignatio celebratum, Ad maiorem Dei gloriam. Doctrina eius spiritualis proclamat Deum in omnibus rebus inveniri et servari posse, et ordinatum suarum cogitationum, desideriorum et consolationum examen ipsum viam authenticam esse ad divinam voluntatem cognoscendam et sequendam.

Vulneratus in proelio Pompelonensi anno 1521, Ignatius de Loyola longam convalescentiam expertus est, qua lectiones eius ambitiones ab gloria mundana ad Christi sequelam converterunt, eum ducentes ad Exercitia Spiritualia componenda et, cum parvo sociorum grege inter quos Sanctus Franciscus Xaverius, ad Societatem Iesu anno 1540 fundandam, ordinem qui unum ex magnis motoribus expansionis missionalis, educationis et reformationis catholicae futurus erat; Romae anno 1556 obiit et anno 1622 canonizatus est. Reformatio Calendarii anni 1969 memoriam eius obligatoriam die 31 Iulii, traditionali mortis eius die, confirmavit.

Testimonium eius hodiernos fideles invitat ut Deum in omni vitae ordinariae condicione actuose quaerant, et suam faciant, quamcumque vocationem sequantur, propositum Ignatianum omne talentum et ambitionem ad maiorem Dei gloriam penitus consecrandi.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-thomas-apostle', 7, 3, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-elizabeth-of-portugal', 7, 4, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-anthony-zaccaria-priest', 7, 5, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-maria-goretti-virgin-and-martyr', 7, 6, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', 7, 9, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-benedict-abbot', 7, 11, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-henry', 7, 13, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-camillus-de-lellis-priest', 7, 14, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-bonaventure-bishop-and-doctor-of-the-church', 7, 15, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('our-lady-of-mount-carmel', 7, 16, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-apollinaris-bishop-and-martyr', 7, 20, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 7, 21, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-mary-magdalene', 7, 22, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-bridget-religious', 7, 23, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-sharbel-makhluf-priest', 7, 24, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-james-apostle', 7, 25, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 7, 26, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saints-martha-mary-and-lazarus', 7, 29, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 7, 30, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-ignatius-of-loyola-priest', 7, 31, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - August (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 'Saint Alphonsus Liguori, Bishop and Doctor of the Church', 'saint'),
('saint-eusebius-of-vercelli-bishop', 'Saint Eusebius of Vercelli, Bishop', 'saint'),
('saint-peter-julian-eymard-priest', 'Saint Peter Julian Eymard, Priest', 'saint'),
('saint-jean-vianney-priest', 'Saint Jean Vianney, Priest', 'saint'),
('the-dedication-of-the-basilica-of-saint-mary-major', 'The Dedication of the Basilica of Saint Mary Major', 'dedication'),
('the-transfiguration-of-the-lord', 'The Transfiguration of the Lord', 'christological'),
('saint-sixtus-ii-pope-and-companions-martyrs', 'Saint Sixtus II, Pope, and Companions, Martyrs', 'saint'),
('saint-cajetan-priest', 'Saint Cajetan, Priest', 'saint'),
('saint-dominic-priest', 'Saint Dominic, Priest', 'saint'),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 'Saint Teresa Benedicta of the Cross, Virgin and Martyr', 'saint'),
('saint-lawrence-deacon-and-martyr', 'Saint Lawrence, Deacon and Martyr', 'saint'),
('saint-clare-virgin', 'Saint Clare, Virgin', 'saint'),
('saint-jane-frances-de-chantal-religious', 'Saint Jane Frances de Chantal, Religious', 'saint'),
('saints-pontian-pope-and-hippolytus-priest-martyrs', 'Saints Pontian, Pope, and Hippolytus, Priest, Martyrs', 'saint'),
('saint-maximus-the-confessor', 'Saint Maximus the Confessor', 'saint'),
('saint-maximilian-kolbe-priest-and-martyr', 'Saint Maximilian Kolbe, Priest and Martyr', 'saint'),
('the-assumption-of-the-blessed-virgin-mary', 'The Assumption of the Blessed Virgin Mary', 'marian'),
('saint-stephen-of-hungary', 'Saint Stephen of Hungary', 'saint'),
('saint-john-eudes-priest', 'Saint John Eudes, Priest', 'saint'),
('saint-bernard-abbot-and-doctor-of-the-church', 'Saint Bernard, Abbot and Doctor of the Church', 'saint'),
('saint-pius-x-pope', 'Saint Pius X, Pope', 'saint'),
('the-queenship-of-the-blessed-virgin-mary', 'The Queenship of the Blessed Virgin Mary', 'marian'),
('saint-rose-of-lima-virgin', 'Saint Rose of Lima, Virgin', 'saint'),
('saint-bartholomew-apostle', 'Saint Bartholomew, Apostle', 'saint'),
('saint-louis', 'Saint Louis', 'saint'),
('saint-joseph-calasanz-priest', 'Saint Joseph Calasanz, Priest', 'saint'),
('saint-monica', 'Saint Monica', 'saint'),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 'Saint Augustine of Hippo, Bishop and Doctor of the Church', 'saint'),
('the-passion-of-saint-john-the-baptist-martyr', 'The Passion of Saint John the Baptist, Martyr', 'saint')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 'Saint Alphonsus Liguori, Bishop and Doctor of the Church'),
('saint-eusebius-of-vercelli-bishop', 'Saint Eusebius of Vercelli, Bishop'),
('saint-peter-julian-eymard-priest', 'Saint Peter Julian Eymard, Priest'),
('saint-jean-vianney-priest', 'Saint Jean Vianney, Priest'),
('the-dedication-of-the-basilica-of-saint-mary-major', 'The Dedication of the Basilica of Saint Mary Major'),
('the-transfiguration-of-the-lord', 'The Transfiguration of the Lord'),
('saint-sixtus-ii-pope-and-companions-martyrs', 'Saint Sixtus II, Pope, and Companions, Martyrs'),
('saint-cajetan-priest', 'Saint Cajetan, Priest'),
('saint-dominic-priest', 'Saint Dominic, Priest'),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 'Saint Teresa Benedicta of the Cross, Virgin and Martyr'),
('saint-lawrence-deacon-and-martyr', 'Saint Lawrence, Deacon and Martyr'),
('saint-clare-virgin', 'Saint Clare, Virgin'),
('saint-jane-frances-de-chantal-religious', 'Saint Jane Frances de Chantal, Religious'),
('saints-pontian-pope-and-hippolytus-priest-martyrs', 'Saints Pontian, Pope, and Hippolytus, Priest, Martyrs'),
('saint-maximus-the-confessor', 'Saint Maximus the Confessor'),
('saint-maximilian-kolbe-priest-and-martyr', 'Saint Maximilian Kolbe, Priest and Martyr'),
('the-assumption-of-the-blessed-virgin-mary', 'The Assumption of the Blessed Virgin Mary'),
('saint-stephen-of-hungary', 'Saint Stephen of Hungary'),
('saint-john-eudes-priest', 'Saint John Eudes, Priest'),
('saint-bernard-abbot-and-doctor-of-the-church', 'Saint Bernard, Abbot and Doctor of the Church'),
('saint-pius-x-pope', 'Saint Pius X, Pope'),
('the-queenship-of-the-blessed-virgin-mary', 'The Queenship of the Blessed Virgin Mary'),
('saint-rose-of-lima-virgin', 'Saint Rose of Lima, Virgin'),
('saint-bartholomew-apostle', 'Saint Bartholomew, Apostle'),
('saint-louis', 'Saint Louis'),
('saint-joseph-calasanz-priest', 'Saint Joseph Calasanz, Priest'),
('saint-monica', 'Saint Monica'),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 'Saint Augustine of Hippo, Bishop and Doctor of the Church'),
('the-passion-of-saint-john-the-baptist-martyr', 'The Passion of Saint John the Baptist, Martyr')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 'Saint Alphonse de Liguori, évêque et docteur de l''Église'),
('saint-eusebius-of-vercelli-bishop', 'Saint Eusèbe de Verceil, évêque'),
('saint-peter-julian-eymard-priest', 'Saint Pierre-Julien Eymard, prêtre'),
('saint-jean-vianney-priest', 'Saint Jean-Marie Vianney, prêtre'),
('the-dedication-of-the-basilica-of-saint-mary-major', 'Dédicace de la basilique Sainte-Marie-Majeure'),
('the-transfiguration-of-the-lord', 'Transfiguration du Seigneur'),
('saint-sixtus-ii-pope-and-companions-martyrs', 'Saint Sixte II, pape, et ses compagnons, martyrs'),
('saint-cajetan-priest', 'Saint Gaétan, prêtre'),
('saint-dominic-priest', 'Saint Dominique, prêtre'),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 'Sainte Thérèse-Bénédicte de la Croix, vierge et martyre'),
('saint-lawrence-deacon-and-martyr', 'Saint Laurent, diacre et martyr'),
('saint-clare-virgin', 'Sainte Claire, vierge'),
('saint-jane-frances-de-chantal-religious', 'Sainte Jeanne-Françoise de Chantal, religieuse'),
('saints-pontian-pope-and-hippolytus-priest-martyrs', 'Saints Pontien, pape, et Hippolyte, prêtre, martyrs'),
('saint-maximus-the-confessor', 'Saint Maxime le Confesseur'),
('saint-maximilian-kolbe-priest-and-martyr', 'Saint Maximilien Kolbe, prêtre et martyr'),
('the-assumption-of-the-blessed-virgin-mary', 'Assomption de la Bienheureuse Vierge Marie'),
('saint-stephen-of-hungary', 'Saint Étienne de Hongrie'),
('saint-john-eudes-priest', 'Saint Jean Eudes, prêtre'),
('saint-bernard-abbot-and-doctor-of-the-church', 'Saint Bernard, abbé et docteur de l''Église'),
('saint-pius-x-pope', 'Saint Pie X, pape'),
('the-queenship-of-the-blessed-virgin-mary', 'La Royauté de la Bienheureuse Vierge Marie'),
('saint-rose-of-lima-virgin', 'Sainte Rose de Lima, vierge'),
('saint-bartholomew-apostle', 'Saint Barthélemy, apôtre'),
('saint-louis', 'Saint Louis'),
('saint-joseph-calasanz-priest', 'Saint Joseph Calasanz, prêtre'),
('saint-monica', 'Sainte Monique'),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 'Saint Augustin d''Hippone, évêque et docteur de l''Église'),
('the-passion-of-saint-john-the-baptist-martyr', 'Passion de saint Jean-Baptiste, martyr')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 'Sanctus Alphonsus Maria de Ligorio, episcopus et Ecclesiae doctor'),
('saint-eusebius-of-vercelli-bishop', 'Sanctus Eusebius Vercellensis, episcopus'),
('saint-peter-julian-eymard-priest', 'Sanctus Petrus Iulianus Eymard, presbyter'),
('saint-jean-vianney-priest', 'Sanctus Ioannes Maria Vianney, presbyter'),
('the-dedication-of-the-basilica-of-saint-mary-major', 'Dedicatio Basilicae Sanctae Mariae Maioris'),
('the-transfiguration-of-the-lord', 'Transfiguratio Domini'),
('saint-sixtus-ii-pope-and-companions-martyrs', 'Sanctus Sixtus II et Socii, martyres'),
('saint-cajetan-priest', 'Sanctus Caietanus, presbyter'),
('saint-dominic-priest', 'Sanctus Dominicus, presbyter'),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 'Sancta Teresia Benedicta a Cruce, virgo et martyr'),
('saint-lawrence-deacon-and-martyr', 'Sanctus Laurentius, diaconus et martyr'),
('saint-clare-virgin', 'Sancta Clara, virgo'),
('saint-jane-frances-de-chantal-religious', 'Sancta Ioanna Francisca de Chantal, religiosa'),
('saints-pontian-pope-and-hippolytus-priest-martyrs', 'Sancti Pontianus et Hippolytus, martyres'),
('saint-maximus-the-confessor', 'Sanctus Maximus Confessor'),
('saint-maximilian-kolbe-priest-and-martyr', 'Sanctus Maximilianus Maria Kolbe, presbyter et martyr'),
('the-assumption-of-the-blessed-virgin-mary', 'Assumptio Beatae Mariae Virginis'),
('saint-stephen-of-hungary', 'Sanctus Stephanus Hungariae'),
('saint-john-eudes-priest', 'Sanctus Ioannes Eudes, presbyter'),
('saint-bernard-abbot-and-doctor-of-the-church', 'Sanctus Bernardus, abbas et Ecclesiae doctor'),
('saint-pius-x-pope', 'Sanctus Pius X, papa'),
('the-queenship-of-the-blessed-virgin-mary', 'Beatae Mariae Virginis Reginae'),
('saint-rose-of-lima-virgin', 'Sancta Rosa de Lima, virgo'),
('saint-bartholomew-apostle', 'Sanctus Bartholomaeus, Apostolus'),
('saint-louis', 'Sanctus Ludovicus'),
('saint-joseph-calasanz-priest', 'Sanctus Iosephus Calasanctius, presbyter'),
('saint-monica', 'Sancta Monica'),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 'Sanctus Augustinus, episcopus et Ecclesiae doctor'),
('the-passion-of-saint-john-the-baptist-martyr', 'Passio Sancti Ioannis Baptistae')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 8, 1, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-eusebius-of-vercelli-bishop', 8, 2, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-peter-julian-eymard-priest', 8, 2, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-jean-vianney-priest', 8, 4, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('the-dedication-of-the-basilica-of-saint-mary-major', 8, 5, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('the-transfiguration-of-the-lord', 8, 6, 'FEAST_LORD', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-sixtus-ii-pope-and-companions-martyrs', 8, 7, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-cajetan-priest', 8, 7, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-dominic-priest', 8, 8, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 8, 9, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-lawrence-deacon-and-martyr', 8, 10, 'FEAST', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-clare-virgin', 8, 11, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-jane-frances-de-chantal-religious', 8, 12, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saints-pontian-pope-and-hippolytus-priest-martyrs', 8, 13, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-maximus-the-confessor', 8, 13, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-maximilian-kolbe-priest-and-martyr', 8, 14, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('the-assumption-of-the-blessed-virgin-mary', 8, 15, 'SOLEMNITY', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-stephen-of-hungary', 8, 16, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-john-eudes-priest', 8, 19, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-bernard-abbot-and-doctor-of-the-church', 8, 20, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-pius-x-pope', 8, 21, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('the-queenship-of-the-blessed-virgin-mary', 8, 22, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-rose-of-lima-virgin', 8, 23, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-bartholomew-apostle', 8, 24, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-louis', 8, 25, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-joseph-calasanz-priest', 8, 25, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-monica', 8, 27, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 8, 28, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('the-passion-of-saint-john-the-baptist-martyr', 8, 29, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - September (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', 'Saint Gregory the Great, Pope and Doctor of the Church', 'saint'),
('saint-teresa-of-calcutta-virgin', 'Saint Teresa of Calcutta, Virgin', 'saint'),
('the-nativity-of-the-blessed-virgin-mary', 'The Nativity of the Blessed Virgin Mary', 'marian'),
('saint-peter-claver-priest', 'Saint Peter Claver, Priest', 'saint'),
('the-most-holy-name-of-mary', 'The Most Holy Name of Mary', 'marian'),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', 'Saint John Chrysostom, Bishop and Doctor of the Church', 'saint'),
('the-exaltation-of-the-holy-cross', 'The Exaltation of the Holy Cross', 'christological'),
('our-lady-of-sorrows', 'Our Lady of Sorrows', 'marian'),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'Saints Cornelius, Pope, and Cyprian, Bishop, Martyrs', 'saint'),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 'Saint Robert Bellarmine, Bishop and Doctor of the Church', 'saint'),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 'Saint Hildegard of Bingen, Virgin and Doctor of the Church', 'saint'),
('saint-januarius-bishop-and-martyr', 'Saint Januarius, Bishop and Martyr', 'saint'),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 'Saints Andrew Kim Tae-gon, Priest, Paul Chong Ha-sang, and Companions, Martyrs', 'saint'),
('saint-matthew-apostle-and-evangelist', 'Saint Matthew, Apostle and Evangelist', 'saint'),
('saint-pius-of-pietrelcina-priest', 'Saint Pius of Pietrelcina, Priest', 'saint'),
('saints-cosmas-and-damian-martyrs', 'Saints Cosmas and Damian, Martyrs', 'saint'),
('saint-vincent-de-paul-priest', 'Saint Vincent de Paul, Priest', 'saint'),
('saint-wenceslaus-martyr', 'Saint Wenceslaus, Martyr', 'saint'),
('saint-lawrence-ruiz-and-companions-martyrs', 'Saint Lawrence Ruiz and Companions, Martyrs', 'saint'),
('saints-michael-gabriel-and-raphael-archangels', 'Saints Michael, Gabriel and Raphael, Archangels', 'saint'),
('saint-jerome-priest-and-doctor-of-the-church', 'Saint Jerome, Priest and Doctor of the Church', 'saint')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', 'Saint Gregory the Great, Pope and Doctor of the Church'),
('saint-teresa-of-calcutta-virgin', 'Saint Teresa of Calcutta, Virgin'),
('the-nativity-of-the-blessed-virgin-mary', 'The Nativity of the Blessed Virgin Mary'),
('saint-peter-claver-priest', 'Saint Peter Claver, Priest'),
('the-most-holy-name-of-mary', 'The Most Holy Name of Mary'),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', 'Saint John Chrysostom, Bishop and Doctor of the Church'),
('the-exaltation-of-the-holy-cross', 'The Exaltation of the Holy Cross'),
('our-lady-of-sorrows', 'Our Lady of Sorrows'),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'Saints Cornelius, Pope, and Cyprian, Bishop, Martyrs'),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 'Saint Robert Bellarmine, Bishop and Doctor of the Church'),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 'Saint Hildegard of Bingen, Virgin and Doctor of the Church'),
('saint-januarius-bishop-and-martyr', 'Saint Januarius, Bishop and Martyr'),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 'Saints Andrew Kim Tae-gon, Priest, Paul Chong Ha-sang, and Companions, Martyrs'),
('saint-matthew-apostle-and-evangelist', 'Saint Matthew, Apostle and Evangelist'),
('saint-pius-of-pietrelcina-priest', 'Saint Pius of Pietrelcina, Priest'),
('saints-cosmas-and-damian-martyrs', 'Saints Cosmas and Damian, Martyrs'),
('saint-vincent-de-paul-priest', 'Saint Vincent de Paul, Priest'),
('saint-wenceslaus-martyr', 'Saint Wenceslaus, Martyr'),
('saint-lawrence-ruiz-and-companions-martyrs', 'Saint Lawrence Ruiz and Companions, Martyrs'),
('saints-michael-gabriel-and-raphael-archangels', 'Saints Michael, Gabriel and Raphael, Archangels'),
('saint-jerome-priest-and-doctor-of-the-church', 'Saint Jerome, Priest and Doctor of the Church')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', 'Saint Grégoire le Grand, pape et docteur de l''Église'),
('saint-teresa-of-calcutta-virgin', 'Sainte Teresa de Calcutta, vierge'),
('the-nativity-of-the-blessed-virgin-mary', 'Nativité de la Bienheureuse Vierge Marie'),
('saint-peter-claver-priest', 'Saint Pierre Claver, prêtre'),
('the-most-holy-name-of-mary', 'Très Saint Nom de Marie'),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', 'Saint Jean Chrysostome, évêque et docteur de l''Église'),
('the-exaltation-of-the-holy-cross', 'Exaltation de la Sainte Croix'),
('our-lady-of-sorrows', 'Notre-Dame des Douleurs'),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'Saints Corneille, pape, et Cyprien, évêque, martyrs'),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 'Saint Robert Bellarmin, évêque et docteur de l''Église'),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 'Sainte Hildegarde de Bingen, vierge et docteur de l''Église'),
('saint-januarius-bishop-and-martyr', 'Saint Janvier, évêque et martyr'),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 'Saints André Kim Tae-gon, prêtre, Paul Chong Ha-sang et compagnons, martyrs'),
('saint-matthew-apostle-and-evangelist', 'Saint Matthieu, apôtre et évangéliste'),
('saint-pius-of-pietrelcina-priest', 'Saint Pio de Pietrelcina, prêtre'),
('saints-cosmas-and-damian-martyrs', 'Saints Côme et Damien, martyrs'),
('saint-vincent-de-paul-priest', 'Saint Vincent de Paul, prêtre'),
('saint-wenceslaus-martyr', 'Saint Venceslas, martyr'),
('saint-lawrence-ruiz-and-companions-martyrs', 'Saint Laurent Ruiz et ses compagnons, martyrs'),
('saints-michael-gabriel-and-raphael-archangels', 'Saints Michel, Gabriel et Raphaël, archanges'),
('saint-jerome-priest-and-doctor-of-the-church', 'Saint Jérôme, prêtre et docteur de l''Église')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', 'Sanctus Gregorius Magnus, papa et Ecclesiae doctor'),
('saint-teresa-of-calcutta-virgin', 'Sancta Teresia Calcuttiensis, virgo'),
('the-nativity-of-the-blessed-virgin-mary', 'Nativitas Beatae Mariae Virginis'),
('saint-peter-claver-priest', 'Sanctus Petrus Claver, presbyter'),
('the-most-holy-name-of-mary', 'Sanctissimi Nominis Mariae'),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', 'Sanctus Ioannes Chrysostomus, episcopus et Ecclesiae doctor'),
('the-exaltation-of-the-holy-cross', 'Exaltatio Sanctae Crucis'),
('our-lady-of-sorrows', 'Beata Maria Virgo Perdolens'),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'Sancti Cornelius et Cyprianus, martyres'),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 'Sanctus Robertus Bellarminus, episcopus et Ecclesiae doctor'),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 'Sancta Hildegardis Bingensis, virgo et Ecclesiae doctor'),
('saint-januarius-bishop-and-martyr', 'Sanctus Ianuarius, episcopus et martyr'),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 'Sancti Andreas Kim Tae-gon et Socii, martyres'),
('saint-matthew-apostle-and-evangelist', 'Sanctus Matthaeus, Apostolus et evangelista'),
('saint-pius-of-pietrelcina-priest', 'Sanctus Pius de Pietrelcina, presbyter'),
('saints-cosmas-and-damian-martyrs', 'Sancti Cosmas et Damianus, martyres'),
('saint-vincent-de-paul-priest', 'Sanctus Vincentius a Paulo, presbyter'),
('saint-wenceslaus-martyr', 'Sanctus Wenceslaus, martyr'),
('saint-lawrence-ruiz-and-companions-martyrs', 'Sanctus Laurentius Ruiz et Socii, martyres'),
('saints-michael-gabriel-and-raphael-archangels', 'Sancti Michael, Gabriel et Raphael, Archangeli'),
('saint-jerome-priest-and-doctor-of-the-church', 'Sanctus Hieronymus, presbyter et Ecclesiae doctor')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', 9, 3, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-teresa-of-calcutta-virgin', 9, 5, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('the-nativity-of-the-blessed-virgin-mary', 9, 8, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-peter-claver-priest', 9, 9, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('the-most-holy-name-of-mary', 9, 12, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', 9, 13, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('the-exaltation-of-the-holy-cross', 9, 14, 'FEAST_LORD', 'RED', 'normal', FALSE, 'Wikipedia'),
('our-lady-of-sorrows', 9, 15, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', 9, 16, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 9, 17, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 9, 17, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-januarius-bishop-and-martyr', 9, 19, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 9, 20, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-matthew-apostle-and-evangelist', 9, 21, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-pius-of-pietrelcina-priest', 9, 23, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saints-cosmas-and-damian-martyrs', 9, 26, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-vincent-de-paul-priest', 9, 27, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-wenceslaus-martyr', 9, 28, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-lawrence-ruiz-and-companions-martyrs', 9, 28, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saints-michael-gabriel-and-raphael-archangels', 9, 29, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-jerome-priest-and-doctor-of-the-church', 9, 30, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - October (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 'Saint Thérèse of the Child Jesus, Virgin and Doctor of the Church', 'saint'),
('the-holy-guardian-angels', 'The Holy Guardian Angels', 'other'),
('saint-francis-of-assisi', 'Saint Francis of Assisi', 'saint'),
('saint-faustina-kowalska-virgin', 'Saint Faustina Kowalska, Virgin', 'saint'),
('saint-bruno-priest', 'Saint Bruno, Priest', 'saint'),
('our-lady-of-the-rosary', 'Our Lady of the Rosary', 'marian'),
('saint-denis-bishop-and-companions-martyrs', 'Saint Denis, Bishop, and Companions, Martyrs', 'saint'),
('saint-john-leonardi-priest', 'Saint John Leonardi, Priest', 'saint'),
('saint-john-henry-newman-priest-and-doctor-of-the-church', 'Saint John Henry Newman, Priest and Doctor of the Church', 'saint'),
('saint-john-xxiii-pope', 'Saint John XXIII, Pope', 'saint'),
('saint-callistus-i-pope-and-martyr', 'Saint Callistus I, Pope and Martyr', 'saint'),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 'Saint Teresa of Jesus, Virgin and Doctor of the Church', 'saint'),
('saint-hedwig-religious', 'Saint Hedwig, Religious', 'saint'),
('saint-margaret-mary-alacoque-virgin', 'Saint Margaret Mary Alacoque, Virgin', 'saint'),
('saint-ignatius-of-antioch-bishop-and-martyr', 'Saint Ignatius of Antioch, Bishop and Martyr', 'saint'),
('saint-luke-evangelist', 'Saint Luke, Evangelist', 'saint'),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 'Saints John de Brébeuf, Isaac Jogues, Priests, and Companions, Martyrs', 'saint'),
('saint-paul-of-the-cross-priest', 'Saint Paul of the Cross, Priest', 'saint'),
('saint-john-paul-ii-pope', 'Saint John Paul II, Pope', 'saint'),
('saint-john-of-capistrano-priest', 'Saint John of Capistrano, Priest', 'saint'),
('saint-anthony-mary-claret-bishop', 'Saint Anthony Mary Claret, Bishop', 'saint'),
('saints-simon-and-jude-apostles', 'Saints Simon and Jude, Apostles', 'saint')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 'Saint Thérèse of the Child Jesus, Virgin and Doctor of the Church'),
('the-holy-guardian-angels', 'The Holy Guardian Angels'),
('saint-francis-of-assisi', 'Saint Francis of Assisi'),
('saint-faustina-kowalska-virgin', 'Saint Faustina Kowalska, Virgin'),
('saint-bruno-priest', 'Saint Bruno, Priest'),
('our-lady-of-the-rosary', 'Our Lady of the Rosary'),
('saint-denis-bishop-and-companions-martyrs', 'Saint Denis, Bishop, and Companions, Martyrs'),
('saint-john-leonardi-priest', 'Saint John Leonardi, Priest'),
('saint-john-henry-newman-priest-and-doctor-of-the-church', 'Saint John Henry Newman, Priest and Doctor of the Church'),
('saint-john-xxiii-pope', 'Saint John XXIII, Pope'),
('saint-callistus-i-pope-and-martyr', 'Saint Callistus I, Pope and Martyr'),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 'Saint Teresa of Jesus, Virgin and Doctor of the Church'),
('saint-hedwig-religious', 'Saint Hedwig, Religious'),
('saint-margaret-mary-alacoque-virgin', 'Saint Margaret Mary Alacoque, Virgin'),
('saint-ignatius-of-antioch-bishop-and-martyr', 'Saint Ignatius of Antioch, Bishop and Martyr'),
('saint-luke-evangelist', 'Saint Luke, Evangelist'),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 'Saints John de Brébeuf, Isaac Jogues, Priests, and Companions, Martyrs'),
('saint-paul-of-the-cross-priest', 'Saint Paul of the Cross, Priest'),
('saint-john-paul-ii-pope', 'Saint John Paul II, Pope'),
('saint-john-of-capistrano-priest', 'Saint John of Capistrano, Priest'),
('saint-anthony-mary-claret-bishop', 'Saint Anthony Mary Claret, Bishop'),
('saints-simon-and-jude-apostles', 'Saints Simon and Jude, Apostles')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 'Sainte Thérèse de l''Enfant-Jésus, vierge et docteur de l''Église'),
('the-holy-guardian-angels', 'Les Saints Anges gardiens'),
('saint-francis-of-assisi', 'Saint François d''Assise'),
('saint-faustina-kowalska-virgin', 'Sainte Faustine Kowalska, vierge'),
('saint-bruno-priest', 'Saint Bruno, prêtre'),
('our-lady-of-the-rosary', 'Notre-Dame du Rosaire'),
('saint-denis-bishop-and-companions-martyrs', 'Saint Denis, évêque, et ses compagnons, martyrs'),
('saint-john-leonardi-priest', 'Saint Jean Léonardi, prêtre'),
('saint-john-henry-newman-priest-and-doctor-of-the-church', 'Saint John Henry Newman, prêtre et docteur de l''Église'),
('saint-john-xxiii-pope', 'Saint Jean XXIII, pape'),
('saint-callistus-i-pope-and-martyr', 'Saint Calixte Ier, pape et martyr'),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 'Sainte Thérèse de Jésus, vierge et docteur de l''Église'),
('saint-hedwig-religious', 'Sainte Edwige, religieuse'),
('saint-margaret-mary-alacoque-virgin', 'Sainte Marguerite-Marie Alacoque, vierge'),
('saint-ignatius-of-antioch-bishop-and-martyr', 'Saint Ignace d''Antioche, évêque et martyr'),
('saint-luke-evangelist', 'Saint Luc, évangéliste'),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 'Saints Jean de Brébeuf, Isaac Jogues, prêtres, et leurs compagnons, martyrs'),
('saint-paul-of-the-cross-priest', 'Saint Paul de la Croix, prêtre'),
('saint-john-paul-ii-pope', 'Saint Jean-Paul II, pape'),
('saint-john-of-capistrano-priest', 'Saint Jean de Capistran, prêtre'),
('saint-anthony-mary-claret-bishop', 'Saint Antoine-Marie Claret, évêque'),
('saints-simon-and-jude-apostles', 'Saints Simon et Jude, apôtres')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 'Sancta Teresia a Iesu Infante, virgo et Ecclesiae doctor'),
('the-holy-guardian-angels', 'Sancti Angeli Custodes'),
('saint-francis-of-assisi', 'Sanctus Franciscus Assisiensis'),
('saint-faustina-kowalska-virgin', 'Sancta Faustina Kowalska, virgo'),
('saint-bruno-priest', 'Sanctus Bruno, presbyter'),
('our-lady-of-the-rosary', 'Beata Maria Virgo a Rosario'),
('saint-denis-bishop-and-companions-martyrs', 'Sanctus Dionysius et Socii, martyres'),
('saint-john-leonardi-priest', 'Sanctus Ioannes Leonardi, presbyter'),
('saint-john-henry-newman-priest-and-doctor-of-the-church', 'Sanctus Ioannes Henricus Newman, presbyter et Ecclesiae doctor'),
('saint-john-xxiii-pope', 'Sanctus Ioannes XXIII, papa'),
('saint-callistus-i-pope-and-martyr', 'Sanctus Callistus I, papa et martyr'),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 'Sancta Teresia a Iesu, virgo et Ecclesiae doctor'),
('saint-hedwig-religious', 'Sancta Hedvigis, religiosa'),
('saint-margaret-mary-alacoque-virgin', 'Sancta Margarita Maria Alacoque, virgo'),
('saint-ignatius-of-antioch-bishop-and-martyr', 'Sanctus Ignatius Antiochenus, episcopus et martyr'),
('saint-luke-evangelist', 'Sanctus Lucas, evangelista'),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 'Sancti Ioannes de Brebeuf, Isaac Jogues et Socii, martyres'),
('saint-paul-of-the-cross-priest', 'Sanctus Paulus a Cruce, presbyter'),
('saint-john-paul-ii-pope', 'Sanctus Ioannes Paulus II, papa'),
('saint-john-of-capistrano-priest', 'Sanctus Ioannes Capistranensis, presbyter'),
('saint-anthony-mary-claret-bishop', 'Sanctus Antonius Maria Claret, episcopus'),
('saints-simon-and-jude-apostles', 'Sancti Simon et Iudas, Apostoli')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 10, 1, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('the-holy-guardian-angels', 10, 2, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-francis-of-assisi', 10, 4, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-faustina-kowalska-virgin', 10, 5, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-bruno-priest', 10, 6, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('our-lady-of-the-rosary', 10, 7, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-denis-bishop-and-companions-martyrs', 10, 9, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-john-leonardi-priest', 10, 9, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-john-henry-newman-priest-and-doctor-of-the-church', 10, 9, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-john-xxiii-pope', 10, 11, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-callistus-i-pope-and-martyr', 10, 14, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 10, 15, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-hedwig-religious', 10, 16, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-margaret-mary-alacoque-virgin', 10, 16, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-ignatius-of-antioch-bishop-and-martyr', 10, 17, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-luke-evangelist', 10, 18, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 10, 19, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-paul-of-the-cross-priest', 10, 19, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-john-paul-ii-pope', 10, 22, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-john-of-capistrano-priest', 10, 23, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-anthony-mary-claret-bishop', 10, 24, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saints-simon-and-jude-apostles', 10, 28, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - November (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('all-saints', 'All Saints', 'saint'),
('the-commemoration-of-all-the-faithful-departed', 'The Commemoration of All the Faithful Departed', 'other'),
('saint-martin-de-porres-religious', 'Saint Martin de Porres, Religious', 'saint'),
('saint-charles-borromeo-bishop', 'Saint Charles Borromeo, Bishop', 'saint'),
('the-dedication-of-the-lateran-basilica', 'The Dedication of the Lateran Basilica', 'dedication'),
('saint-leo-the-great-pope-and-doctor-of-the-church', 'Saint Leo the Great, Pope and Doctor of the Church', 'saint'),
('saint-martin-of-tours-bishop', 'Saint Martin of Tours, Bishop', 'saint'),
('saint-josaphat-bishop-and-martyr', 'Saint Josaphat, Bishop and Martyr', 'saint'),
('saint-albert-the-great-bishop-and-doctor-of-the-church', 'Saint Albert the Great, Bishop and Doctor of the Church', 'saint'),
('saint-margaret-of-scotland', 'Saint Margaret of Scotland', 'saint'),
('saint-gertrude-virgin', 'Saint Gertrude, Virgin', 'saint'),
('saint-elizabeth-of-hungary-religious', 'Saint Elizabeth of Hungary, Religious', 'saint'),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', 'The Dedication of the Basilicas of Saints Peter and Paul, Apostles', 'dedication'),
('the-presentation-of-the-blessed-virgin-mary', 'The Presentation of the Blessed Virgin Mary', 'marian'),
('saint-cecilia-virgin-and-martyr', 'Saint Cecilia, Virgin and Martyr', 'saint'),
('saint-clement-i-pope-and-martyr', 'Saint Clement I, Pope and Martyr', 'saint'),
('saint-columban-abbot', 'Saint Columban, Abbot', 'saint'),
('saints-andrew-dung-lac-priest-and-companions-martyrs', 'Saints Andrew Dung-Lac, Priest, and Companions, Martyrs', 'saint'),
('saint-catherine-of-alexandria-virgin-and-martyr', 'Saint Catherine of Alexandria, Virgin and Martyr', 'saint'),
('saint-andrew-apostle', 'Saint Andrew, Apostle', 'saint')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('all-saints', 'All Saints'),
('the-commemoration-of-all-the-faithful-departed', 'The Commemoration of All the Faithful Departed'),
('saint-martin-de-porres-religious', 'Saint Martin de Porres, Religious'),
('saint-charles-borromeo-bishop', 'Saint Charles Borromeo, Bishop'),
('the-dedication-of-the-lateran-basilica', 'The Dedication of the Lateran Basilica'),
('saint-leo-the-great-pope-and-doctor-of-the-church', 'Saint Leo the Great, Pope and Doctor of the Church'),
('saint-martin-of-tours-bishop', 'Saint Martin of Tours, Bishop'),
('saint-josaphat-bishop-and-martyr', 'Saint Josaphat, Bishop and Martyr'),
('saint-albert-the-great-bishop-and-doctor-of-the-church', 'Saint Albert the Great, Bishop and Doctor of the Church'),
('saint-margaret-of-scotland', 'Saint Margaret of Scotland'),
('saint-gertrude-virgin', 'Saint Gertrude, Virgin'),
('saint-elizabeth-of-hungary-religious', 'Saint Elizabeth of Hungary, Religious'),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', 'The Dedication of the Basilicas of Saints Peter and Paul, Apostles'),
('the-presentation-of-the-blessed-virgin-mary', 'The Presentation of the Blessed Virgin Mary'),
('saint-cecilia-virgin-and-martyr', 'Saint Cecilia, Virgin and Martyr'),
('saint-clement-i-pope-and-martyr', 'Saint Clement I, Pope and Martyr'),
('saint-columban-abbot', 'Saint Columban, Abbot'),
('saints-andrew-dung-lac-priest-and-companions-martyrs', 'Saints Andrew Dung-Lac, Priest, and Companions, Martyrs'),
('saint-catherine-of-alexandria-virgin-and-martyr', 'Saint Catherine of Alexandria, Virgin and Martyr'),
('saint-andrew-apostle', 'Saint Andrew, Apostle')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('all-saints', 'Tous les Saints'),
('the-commemoration-of-all-the-faithful-departed', 'Commémoration de tous les fidèles défunts'),
('saint-martin-de-porres-religious', 'Saint Martin de Porres, religieux'),
('saint-charles-borromeo-bishop', 'Saint Charles Borromée, évêque'),
('the-dedication-of-the-lateran-basilica', 'Dédicace de la basilique du Latran'),
('saint-leo-the-great-pope-and-doctor-of-the-church', 'Saint Léon le Grand, pape et docteur de l''Église'),
('saint-martin-of-tours-bishop', 'Saint Martin de Tours, évêque'),
('saint-josaphat-bishop-and-martyr', 'Saint Josaphat, évêque et martyr'),
('saint-albert-the-great-bishop-and-doctor-of-the-church', 'Saint Albert le Grand, évêque et docteur de l''Église'),
('saint-margaret-of-scotland', 'Sainte Marguerite d''Écosse'),
('saint-gertrude-virgin', 'Sainte Gertrude, vierge'),
('saint-elizabeth-of-hungary-religious', 'Sainte Élisabeth de Hongrie, religieuse'),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', 'Dédicace des basiliques des saints Pierre et Paul, apôtres'),
('the-presentation-of-the-blessed-virgin-mary', 'Présentation de la Bienheureuse Vierge Marie'),
('saint-cecilia-virgin-and-martyr', 'Sainte Cécile, vierge et martyre'),
('saint-clement-i-pope-and-martyr', 'Saint Clément Ier, pape et martyr'),
('saint-columban-abbot', 'Saint Colomban, abbé'),
('saints-andrew-dung-lac-priest-and-companions-martyrs', 'Saints André Dung-Lac, prêtre, et ses compagnons, martyrs'),
('saint-catherine-of-alexandria-virgin-and-martyr', 'Sainte Catherine d''Alexandrie, vierge et martyre'),
('saint-andrew-apostle', 'Saint André, apôtre')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('all-saints', 'Omnium Sanctorum'),
('the-commemoration-of-all-the-faithful-departed', 'Commemoratio Omnium Fidelium Defunctorum'),
('saint-martin-de-porres-religious', 'Sanctus Martinus de Porres, religiosus'),
('saint-charles-borromeo-bishop', 'Sanctus Carolus Borromeo, episcopus'),
('the-dedication-of-the-lateran-basilica', 'Dedicatio Basilicae Lateranensis'),
('saint-leo-the-great-pope-and-doctor-of-the-church', 'Sanctus Leo Magnus, papa et Ecclesiae doctor'),
('saint-martin-of-tours-bishop', 'Sanctus Martinus Turonensis, episcopus'),
('saint-josaphat-bishop-and-martyr', 'Sanctus Iosaphat, episcopus et martyr'),
('saint-albert-the-great-bishop-and-doctor-of-the-church', 'Sanctus Albertus Magnus, episcopus et Ecclesiae doctor'),
('saint-margaret-of-scotland', 'Sancta Margarita Scotiae'),
('saint-gertrude-virgin', 'Sancta Gertrudis, virgo'),
('saint-elizabeth-of-hungary-religious', 'Sancta Elisabeth Hungariae, religiosa'),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', 'Dedicatio Basilicarum Sanctorum Petri et Pauli'),
('the-presentation-of-the-blessed-virgin-mary', 'Praesentatio Beatae Mariae Virginis'),
('saint-cecilia-virgin-and-martyr', 'Sancta Caecilia, virgo et martyr'),
('saint-clement-i-pope-and-martyr', 'Sanctus Clemens I, papa et martyr'),
('saint-columban-abbot', 'Sanctus Columbanus, abbas'),
('saints-andrew-dung-lac-priest-and-companions-martyrs', 'Sancti Andreas Dung-Lac et Socii, martyres'),
('saint-catherine-of-alexandria-virgin-and-martyr', 'Sancta Catharina Alexandrina, virgo et martyr'),
('saint-andrew-apostle', 'Sanctus Andreas, Apostolus')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('all-saints', 11, 1, 'SOLEMNITY', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('the-commemoration-of-all-the-faithful-departed', 11, 2, 'SOLEMNITY', 'PURPLE', 'normal', FALSE, 'Wikipedia'),
('saint-martin-de-porres-religious', 11, 3, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-charles-borromeo-bishop', 11, 4, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('the-dedication-of-the-lateran-basilica', 11, 9, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-leo-the-great-pope-and-doctor-of-the-church', 11, 10, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-martin-of-tours-bishop', 11, 11, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-josaphat-bishop-and-martyr', 11, 12, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-albert-the-great-bishop-and-doctor-of-the-church', 11, 15, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-margaret-of-scotland', 11, 16, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-gertrude-virgin', 11, 16, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-elizabeth-of-hungary-religious', 11, 17, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', 11, 18, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('the-presentation-of-the-blessed-virgin-mary', 11, 21, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-cecilia-virgin-and-martyr', 11, 22, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-clement-i-pope-and-martyr', 11, 23, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-columban-abbot', 11, 23, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saints-andrew-dung-lac-priest-and-companions-martyrs', 11, 24, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-catherine-of-alexandria-virgin-and-martyr', 11, 25, 'MEM_OPT', 'RED', 'normal', TRUE, 'Wikipedia'),
('saint-andrew-apostle', 11, 30, 'FEAST', 'WHITE', 'normal', FALSE, 'Wikipedia')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Roman General Calendar - December (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- Includes movable rule from source list:
--   - Sunday within Octave of Christmas OR 30 Dec: Holy Family (feast)
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('saint-francis-xavier-priest', 'Saint Francis Xavier, Priest', 'saint'),
('saint-john-damascene-priest-and-doctor-of-the-church', 'Saint John Damascene, Priest and Doctor of the Church', 'saint'),
('saint-nicholas-bishop', 'Saint Nicholas, Bishop', 'saint'),
('saint-ambrose-bishop-and-doctor-of-the-church', 'Saint Ambrose, Bishop and Doctor of the Church', 'saint'),
('the-immaculate-conception-of-the-blessed-virgin-mary', 'The Immaculate Conception of the Blessed Virgin Mary', 'marian'),
('saint-juan-diego-cuauhtlatoatzin', 'Saint Juan Diego Cuauhtlatoatzin', 'saint'),
('our-lady-of-loreto', 'Our Lady of Loreto', 'marian'),
('saint-damasus-i-pope', 'Saint Damasus I, Pope', 'saint'),
('our-lady-of-guadalupe', 'Our Lady of Guadalupe', 'marian'),
('saint-lucy-virgin-and-martyr', 'Saint Lucy, Virgin and Martyr', 'saint'),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', 'Saint John of the Cross, Priest and Doctor of the Church', 'saint'),
('saint-peter-canisius-priest-and-doctor-of-the-church', 'Saint Peter Canisius, Priest and Doctor of the Church', 'saint'),
('saint-john-of-kanty-priest', 'Saint John of Kanty, Priest', 'saint'),
('nativity-of-the-lord', 'Nativity of the Lord', 'christological'),
('saint-stephen-the-first-martyr', 'Saint Stephen, the First Martyr', 'saint'),
('saint-john-apostle-and-evangelist', 'Saint John, Apostle and Evangelist', 'saint'),
('the-holy-innocents-martyrs', 'The Holy Innocents, Martyrs', 'saint'),
('saint-thomas-becket-bishop-and-martyr', 'Saint Thomas Becket, Bishop and Martyr', 'saint'),
('saint-sylvester-i-pope', 'Saint Sylvester I, Pope', 'saint'),
('the-holy-family-of-jesus-mary-and-joseph', 'The Holy Family of Jesus, Mary and Joseph', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-francis-xavier-priest', 'Saint Francis Xavier, Priest'),
('saint-john-damascene-priest-and-doctor-of-the-church', 'Saint John Damascene, Priest and Doctor of the Church'),
('saint-nicholas-bishop', 'Saint Nicholas, Bishop'),
('saint-ambrose-bishop-and-doctor-of-the-church', 'Saint Ambrose, Bishop and Doctor of the Church'),
('the-immaculate-conception-of-the-blessed-virgin-mary', 'The Immaculate Conception of the Blessed Virgin Mary'),
('saint-juan-diego-cuauhtlatoatzin', 'Saint Juan Diego Cuauhtlatoatzin'),
('our-lady-of-loreto', 'Our Lady of Loreto'),
('saint-damasus-i-pope', 'Saint Damasus I, Pope'),
('our-lady-of-guadalupe', 'Our Lady of Guadalupe'),
('saint-lucy-virgin-and-martyr', 'Saint Lucy, Virgin and Martyr'),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', 'Saint John of the Cross, Priest and Doctor of the Church'),
('saint-peter-canisius-priest-and-doctor-of-the-church', 'Saint Peter Canisius, Priest and Doctor of the Church'),
('saint-john-of-kanty-priest', 'Saint John of Kanty, Priest'),
('nativity-of-the-lord', 'Nativity of the Lord'),
('saint-stephen-the-first-martyr', 'Saint Stephen, the First Martyr'),
('saint-john-apostle-and-evangelist', 'Saint John, Apostle and Evangelist'),
('the-holy-innocents-martyrs', 'The Holy Innocents, Martyrs'),
('saint-thomas-becket-bishop-and-martyr', 'Saint Thomas Becket, Bishop and Martyr'),
('saint-sylvester-i-pope', 'Saint Sylvester I, Pope'),
('the-holy-family-of-jesus-mary-and-joseph', 'The Holy Family of Jesus, Mary and Joseph')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-francis-xavier-priest', 'Saint François Xavier, prêtre'),
('saint-john-damascene-priest-and-doctor-of-the-church', 'Saint Jean Damascène, prêtre et docteur de l''Église'),
('saint-nicholas-bishop', 'Saint Nicolas, évêque'),
('saint-ambrose-bishop-and-doctor-of-the-church', 'Saint Ambroise, évêque et docteur de l''Église'),
('the-immaculate-conception-of-the-blessed-virgin-mary', 'Immaculée Conception de la Bienheureuse Vierge Marie'),
('saint-juan-diego-cuauhtlatoatzin', 'Saint Juan Diego Cuauhtlatoatzin'),
('our-lady-of-loreto', 'Notre-Dame de Lorette'),
('saint-damasus-i-pope', 'Saint Damase Ier, pape'),
('our-lady-of-guadalupe', 'Notre-Dame de Guadalupe'),
('saint-lucy-virgin-and-martyr', 'Sainte Lucie, vierge et martyre'),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', 'Saint Jean de la Croix, prêtre et docteur de l''Église'),
('saint-peter-canisius-priest-and-doctor-of-the-church', 'Saint Pierre Canisius, prêtre et docteur de l''Église'),
('saint-john-of-kanty-priest', 'Saint Jean de Kenty, prêtre'),
('nativity-of-the-lord', 'Nativité du Seigneur'),
('saint-stephen-the-first-martyr', 'Saint Étienne, premier martyr'),
('saint-john-apostle-and-evangelist', 'Saint Jean, apôtre et évangéliste'),
('the-holy-innocents-martyrs', 'Les Saints Innocents, martyrs'),
('saint-thomas-becket-bishop-and-martyr', 'Saint Thomas Becket, évêque et martyr'),
('saint-sylvester-i-pope', 'Saint Sylvestre Ier, pape'),
('the-holy-family-of-jesus-mary-and-joseph', 'La Sainte Famille de Jésus, Marie et Joseph')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('saint-francis-xavier-priest', 'Sanctus Franciscus Xaverius, presbyter'),
('saint-john-damascene-priest-and-doctor-of-the-church', 'Sanctus Ioannes Damascenus, presbyter et Ecclesiae doctor'),
('saint-nicholas-bishop', 'Sanctus Nicolaus, episcopus'),
('saint-ambrose-bishop-and-doctor-of-the-church', 'Sanctus Ambrosius, episcopus et Ecclesiae doctor'),
('the-immaculate-conception-of-the-blessed-virgin-mary', 'Immaculata Conceptio Beatae Mariae Virginis'),
('saint-juan-diego-cuauhtlatoatzin', 'Sanctus Ioannes Didacus Cuauhtlatoatzin'),
('our-lady-of-loreto', 'Beata Maria Virgo Lauretana'),
('saint-damasus-i-pope', 'Sanctus Damasus I, papa'),
('our-lady-of-guadalupe', 'Beata Maria Virgo Guadalupensis'),
('saint-lucy-virgin-and-martyr', 'Sancta Lucia, virgo et martyr'),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', 'Sanctus Ioannes a Cruce, presbyter et Ecclesiae doctor'),
('saint-peter-canisius-priest-and-doctor-of-the-church', 'Sanctus Petrus Canisius, presbyter et Ecclesiae doctor'),
('saint-john-of-kanty-priest', 'Sanctus Ioannes Cantius, presbyter'),
('nativity-of-the-lord', 'Nativitas Domini'),
('saint-stephen-the-first-martyr', 'Sanctus Stephanus, Protomartyr'),
('saint-john-apostle-and-evangelist', 'Sanctus Ioannes, Apostolus et evangelista'),
('the-holy-innocents-martyrs', 'Sancti Innocentes, martyres'),
('saint-thomas-becket-bishop-and-martyr', 'Sanctus Thomas Becket, episcopus et martyr'),
('saint-sylvester-i-pope', 'Sanctus Silvester I, papa'),
('the-holy-family-of-jesus-mary-and-joseph', 'Sancta Familia Iesu, Mariae et Ioseph')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- Celebrations (fixed)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', x.month, x.day, x.observance_type, x.is_optional, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-francis-xavier-priest', 12, 3, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-john-damascene-priest-and-doctor-of-the-church', 12, 4, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-nicholas-bishop', 12, 6, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-ambrose-bishop-and-doctor-of-the-church', 12, 7, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-juan-diego-cuauhtlatoatzin', 12, 9, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('our-lady-of-loreto', 12, 10, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-damasus-i-pope', 12, 11, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('our-lady-of-guadalupe', 12, 12, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-lucy-virgin-and-martyr', 12, 13, 'MEM_OBL', 'RED', 'normal', FALSE, 'Wikipedia'),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', 12, 14, 'MEM_OBL', 'WHITE', 'normal', FALSE, 'Wikipedia'),
('saint-peter-canisius-priest-and-doctor-of-the-church', 12, 21, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('saint-john-of-kanty-priest', 12, 23, 'MEM_OPT', 'WHITE', 'normal', TRUE, 'Wikipedia'),
('nativity-of-the-lord', 12, 25, 'SOLEMNITY_LORD', 'WHITE', 'octave', FALSE, 'Wikipedia'),
('saint-stephen-the-first-martyr', 12, 26, 'FEAST', 'RED', 'octave', FALSE, 'Wikipedia'),
('saint-john-apostle-and-evangelist', 12, 27, 'FEAST', 'WHITE', 'octave', FALSE, 'Wikipedia'),
('the-holy-innocents-martyrs', 12, 28, 'FEAST', 'RED', 'octave', FALSE, 'Wikipedia'),
('saint-thomas-becket-bishop-and-martyr', 12, 29, 'MEM_OPT', 'RED', 'octave', TRUE, 'Wikipedia'),
('saint-sylvester-i-pope', 12, 31, 'MEM_OPT', 'WHITE', 'octave', TRUE, 'Wikipedia')
) AS x(slug, month, day, rank_code, color_code, observance_type, is_optional, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- MOVABLE rule:
-- Sunday within Octave of Christmas, or if none, 30 December: Holy Family
-- Store a movable base and handle fallback-to-30-Dec in API logic.
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'movable', 'SUNDAY_WITHIN_CHRISTMAS_OCTAVE_OR_DEC30', 0, 'normal', FALSE, 'Wikipedia movable'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FEAST'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'the-holy-family-of-jesus-mary-and-joseph'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- MOVABLE rule:
-- Immaculate Conception (Dec 8) is a Solemnity, but if it falls on a Sunday (Advent Sunday), it is transferred to Dec 9.
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'movable', 'IMMACULATE_CONCEPTION', 0, 'normal', FALSE, 'Wikipedia movable'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SOLEMNITY_LORD'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'the-immaculate-conception-of-the-blessed-virgin-mary'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Christmas Vigil (Dec 24)
-- =========================================================

-- FEAST
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('christmas-vigil', 'Christmas Vigil', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- TRANSLATIONS
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Christmas Vigil', NULL
FROM feasts f
WHERE f.slug = 'christmas-vigil'
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', 'Vigile de Noël', NULL
FROM feasts f
WHERE f.slug = 'christmas-vigil'
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', 'Vigilia Nativitatis Domini', NULL
FROM feasts f
WHERE f.slug = 'christmas-vigil'
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- CELEBRATION (fixed Dec 24, vigil)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', 12, 24, 'vigil', FALSE, 'Roman General Calendar'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA_PRIVILEGED'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'christmas-vigil'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- Octave marker for Dec 30
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('sixth-day-in-the-octave-of-christmas', 'Sixth Day in the Octave of Christmas', 'christological')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Sixth Day in the Octave of Christmas', NULL
FROM feasts f
WHERE f.slug = 'sixth-day-in-the-octave-of-christmas'
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', 'Sixième jour dans l''Octave de Noël', NULL
FROM feasts f
WHERE f.slug = 'sixth-day-in-the-octave-of-christmas'
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', 'Dies Sextus infra Octavam Nativitatis Domini', NULL
FROM feasts f
WHERE f.slug = 'sixth-day-in-the-octave-of-christmas'
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- CELEBRATION (fixed Dec 30, octave)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, month, day, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'fixed', 12, 30, 'octave', FALSE, 'Parallel octave marker'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'FERIA'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'sixth-day-in-the-octave-of-christmas'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;


-- =========================================================
-- Easter Octave (Sunday INCLUDED as observance_type='octave')
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('easter-sunday-of-the-resurrection-of-the-lord', 'Easter Sunday of the Resurrection of the Lord', 'christological'),
('monday-in-the-octave-of-easter', 'Monday in the Octave of Easter', 'christological'),
('tuesday-in-the-octave-of-easter', 'Tuesday in the Octave of Easter', 'christological'),
('wednesday-in-the-octave-of-easter', 'Wednesday in the Octave of Easter', 'christological'),
('thursday-in-the-octave-of-easter', 'Thursday in the Octave of Easter', 'christological'),
('friday-in-the-octave-of-easter', 'Friday in the Octave of Easter', 'christological'),
('saturday-in-the-octave-of-easter', 'Saturday in the Octave of Easter', 'christological'),
('second-sunday-of-easter-divine-mercy-sunday', 'Second Sunday of Easter (Divine Mercy Sunday)', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('easter-sunday-of-the-resurrection-of-the-lord', 'Easter Sunday of the Resurrection of the Lord'),
('monday-in-the-octave-of-easter', 'Monday in the Octave of Easter'),
('tuesday-in-the-octave-of-easter', 'Tuesday in the Octave of Easter'),
('wednesday-in-the-octave-of-easter', 'Wednesday in the Octave of Easter'),
('thursday-in-the-octave-of-easter', 'Thursday in the Octave of Easter'),
('friday-in-the-octave-of-easter', 'Friday in the Octave of Easter'),
('saturday-in-the-octave-of-easter', 'Saturday in the Octave of Easter'),
('second-sunday-of-easter-divine-mercy-sunday', 'Second Sunday of Easter (Divine Mercy Sunday)')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('easter-sunday-of-the-resurrection-of-the-lord', 'Dimanche de Pâques de la Résurrection du Seigneur'),
('monday-in-the-octave-of-easter', 'Lundi dans l''Octave de Pâques'),
('tuesday-in-the-octave-of-easter', 'Mardi dans l''Octave de Pâques'),
('wednesday-in-the-octave-of-easter', 'Mercredi dans l''Octave de Pâques'),
('thursday-in-the-octave-of-easter', 'Jeudi dans l''Octave de Pâques'),
('friday-in-the-octave-of-easter', 'Vendredi dans l''Octave de Pâques'),
('saturday-in-the-octave-of-easter', 'Samedi dans l''Octave de Pâques'),
('second-sunday-of-easter-divine-mercy-sunday', 'Deuxième dimanche de Pâques (Dimanche de la Divine Miséricorde)')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('easter-sunday-of-the-resurrection-of-the-lord', 'Dominica Resurrectionis Domini'),
('monday-in-the-octave-of-easter', 'Feria II infra Octavam Paschae'),
('tuesday-in-the-octave-of-easter', 'Feria III infra Octavam Paschae'),
('wednesday-in-the-octave-of-easter', 'Feria IV infra Octavam Paschae'),
('thursday-in-the-octave-of-easter', 'Feria V infra Octavam Paschae'),
('friday-in-the-octave-of-easter', 'Feria VI infra Octavam Paschae'),
('saturday-in-the-octave-of-easter', 'Sabbato infra Octavam Paschae'),
('second-sunday-of-easter-divine-mercy-sunday', 'Dominica II Paschae seu de divina Misericordia')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- CELEBRATIONS (movable, all octave, including Easter Sunday and Divine Mercy Sunday)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'movable', x.movable_base, x.movable_offset_days, x.observance_type, FALSE, x.notes
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('easter-sunday-of-the-resurrection-of-the-lord', 'EASTER_SUNDAY', 0, 'SUNDAY_ADVENT_LENT_EASTER', 'WHITE', 'octave', 'Roman General Calendar (Easter Octave)'),
('monday-in-the-octave-of-easter', 'EASTER_SUNDAY', 1, 'SOLEMNITY', 'WHITE', 'octave', 'Roman General Calendar (Easter Octave)'),
('tuesday-in-the-octave-of-easter', 'EASTER_SUNDAY', 2, 'SOLEMNITY', 'WHITE', 'octave', 'Roman General Calendar (Easter Octave)'),
('wednesday-in-the-octave-of-easter', 'EASTER_SUNDAY', 3, 'SOLEMNITY', 'WHITE', 'octave', 'Roman General Calendar (Easter Octave)'),
('thursday-in-the-octave-of-easter', 'EASTER_SUNDAY', 4, 'SOLEMNITY', 'WHITE', 'octave', 'Roman General Calendar (Easter Octave)'),
('friday-in-the-octave-of-easter', 'EASTER_SUNDAY', 5, 'SOLEMNITY', 'WHITE', 'octave', 'Roman General Calendar (Easter Octave)'),
('saturday-in-the-octave-of-easter', 'EASTER_SUNDAY', 6, 'SOLEMNITY', 'WHITE', 'octave', 'Roman General Calendar (Easter Octave)'),
('second-sunday-of-easter-divine-mercy-sunday', 'EASTER_SUNDAY', 7, 'SUNDAY_ADVENT_LENT_EASTER', 'WHITE', 'octave', 'Roman General Calendar (Easter Octave)')
) AS x(slug, movable_base, movable_offset_days, rank_code, color_code, observance_type, notes)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Sundays of Eastertide 3rd–7th
-- (3rd = +14, 4th Good Shepherd = +21, 5th = +28, 6th = +35, 7th = +42)
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('third-sunday-of-easter',  'Third Sunday of Easter',                'christological'),
('fourth-sunday-of-easter', 'Fourth Sunday of Easter (Good Shepherd)', 'christological'),
('fifth-sunday-of-easter',  'Fifth Sunday of Easter',                 'christological'),
('sixth-sunday-of-easter',  'Sixth Sunday of Easter',                 'christological'),
('seventh-sunday-of-easter','Seventh Sunday of Easter',               'christological')
ON CONFLICT (slug) DO NOTHING;

-- TRANSLATIONS EN
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
  ('third-sunday-of-easter',  'Third Sunday of Easter'),
  ('fourth-sunday-of-easter', 'Fourth Sunday of Easter (Good Shepherd)'),
  ('fifth-sunday-of-easter',  'Fifth Sunday of Easter'),
  ('sixth-sunday-of-easter',  'Sixth Sunday of Easter'),
  ('seventh-sunday-of-easter','Seventh Sunday of Easter')
) AS x(slug, name) ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- TRANSLATIONS FR
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
  ('third-sunday-of-easter',  'Troisième dimanche de Pâques'),
  ('fourth-sunday-of-easter', 'Quatrième dimanche de Pâques (Bon Pasteur)'),
  ('fifth-sunday-of-easter',  'Cinquième dimanche de Pâques'),
  ('sixth-sunday-of-easter',  'Sixième dimanche de Pâques'),
  ('seventh-sunday-of-easter','Septième dimanche de Pâques')
) AS x(slug, name) ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- TRANSLATIONS LA
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
  ('third-sunday-of-easter',  'Dominica III Paschae'),
  ('fourth-sunday-of-easter', 'Dominica IV Paschae (Boni Pastoris)'),
  ('fifth-sunday-of-easter',  'Dominica V Paschae'),
  ('sixth-sunday-of-easter',  'Dominica VI Paschae'),
  ('seventh-sunday-of-easter','Dominica VII Paschae')
) AS x(slug, name) ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- CELEBRATIONS (movable, EASTER_SUNDAY + offset)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'movable', x.movable_base, x.offset_days, 'normal', FALSE, 'Roman General Calendar'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
  ('third-sunday-of-easter',   'EASTER_SUNDAY', 14, 'SUNDAY_ADVENT_LENT_EASTER', 'WHITE'),
  ('fourth-sunday-of-easter',  'EASTER_SUNDAY', 21, 'SUNDAY_ADVENT_LENT_EASTER', 'WHITE'),
  ('fifth-sunday-of-easter',   'EASTER_SUNDAY', 28, 'SUNDAY_ADVENT_LENT_EASTER', 'WHITE'),
  ('sixth-sunday-of-easter',   'EASTER_SUNDAY', 35, 'SUNDAY_ADVENT_LENT_EASTER', 'WHITE'),
  ('seventh-sunday-of-easter', 'EASTER_SUNDAY', 42, 'SUNDAY_ADVENT_LENT_EASTER', 'WHITE')
) AS x(slug, movable_base, offset_days, rank_code, color_code) ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;


-- FEAST
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('easter-vigil-in-the-holy-night', 'Easter Vigil in the Holy Night', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- TRANSLATIONS
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', 'Easter Vigil in the Holy Night', NULL
FROM feasts f
WHERE f.slug = 'easter-vigil-in-the-holy-night'
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', 'Vigile pascale dans la Nuit sainte', NULL
FROM feasts f
WHERE f.slug = 'easter-vigil-in-the-holy-night'
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', 'Vigilia Paschalis in Nocte Sancta', NULL
FROM feasts f
WHERE f.slug = 'easter-vigil-in-the-holy-night'
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- CELEBRATION (movable: Easter Sunday - 1, vigil)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'movable', 'EASTER_SUNDAY', -1, 'vigil', FALSE, 'Roman General Calendar'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'PASCHAL_TRIDUUM'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'easter-vigil-in-the-holy-night'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Holy Week (Roman General Calendar)
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('palm-sunday-of-the-passion-of-the-lord', 'Palm Sunday of the Passion of the Lord', 'christological'),
('monday-of-holy-week', 'Monday of Holy Week', 'christological'),
('tuesday-of-holy-week', 'Tuesday of Holy Week', 'christological'),
('wednesday-of-holy-week', 'Wednesday of Holy Week', 'christological'),
('holy-thursday-evening-mass-of-the-lords-supper', 'Holy Thursday: Evening Mass of the Lord''s Supper', 'christological'),
('friday-of-the-passion-of-the-lord', 'Friday of the Passion of the Lord', 'christological'),
('holy-saturday', 'Holy Saturday', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- TRANSLATIONS EN
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('palm-sunday-of-the-passion-of-the-lord', 'Palm Sunday of the Passion of the Lord'),
('monday-of-holy-week', 'Monday of Holy Week'),
('tuesday-of-holy-week', 'Tuesday of Holy Week'),
('wednesday-of-holy-week', 'Wednesday of Holy Week'),
('holy-thursday-evening-mass-of-the-lords-supper', 'Holy Thursday: Evening Mass of the Lord''s Supper'),
('friday-of-the-passion-of-the-lord', 'Friday of the Passion of the Lord'),
('holy-saturday', 'Holy Saturday')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- TRANSLATIONS FR
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('palm-sunday-of-the-passion-of-the-lord', 'Dimanche des Rameaux et de la Passion du Seigneur'),
('monday-of-holy-week', 'Lundi de la Semaine sainte'),
('tuesday-of-holy-week', 'Mardi de la Semaine sainte'),
('wednesday-of-holy-week', 'Mercredi de la Semaine sainte'),
('holy-thursday-evening-mass-of-the-lords-supper', 'Jeudi saint : Messe du soir de la Cène du Seigneur'),
('friday-of-the-passion-of-the-lord', 'Vendredi de la Passion du Seigneur'),
('holy-saturday', 'Samedi saint')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- TRANSLATIONS LA
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('palm-sunday-of-the-passion-of-the-lord', 'Dominica in Palmis de Passione Domini'),
('monday-of-holy-week', 'Feria II Hebdomadae Sanctae'),
('tuesday-of-holy-week', 'Feria III Hebdomadae Sanctae'),
('wednesday-of-holy-week', 'Feria IV Hebdomadae Sanctae'),
('holy-thursday-evening-mass-of-the-lords-supper', 'Feria V in Cena Domini'),
('friday-of-the-passion-of-the-lord', 'Feria VI in Passione Domini'),
('holy-saturday', 'Sabbatum Sanctum')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- CELEBRATIONS (movable, relative to Easter Sunday)
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'movable', x.movable_base, x.movable_offset_days, x.observance_type, FALSE, 'Roman General Calendar (Holy Week)'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('palm-sunday-of-the-passion-of-the-lord', 'EASTER_SUNDAY', -7, 'SUNDAY_ADVENT_LENT_EASTER', 'RED', 'normal'),
('monday-of-holy-week', 'EASTER_SUNDAY', -6, 'FERIA_PRIVILEGED', 'PURPLE', 'normal'),
('tuesday-of-holy-week', 'EASTER_SUNDAY', -5, 'FERIA_PRIVILEGED', 'PURPLE', 'normal'),
('wednesday-of-holy-week', 'EASTER_SUNDAY', -4, 'FERIA_PRIVILEGED', 'PURPLE', 'normal'),
('holy-thursday-evening-mass-of-the-lords-supper', 'EASTER_SUNDAY', -3, 'PASCHAL_TRIDUUM', 'WHITE', 'normal'),
('friday-of-the-passion-of-the-lord', 'EASTER_SUNDAY', -2, 'PASCHAL_TRIDUUM', 'RED', 'normal'),
('holy-saturday', 'EASTER_SUNDAY', -1, 'PASCHAL_TRIDUUM', 'PURPLE', 'normal')
) AS x(slug, movable_base, movable_offset_days, rank_code, color_code, observance_type)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Lent core block (Roman General Calendar)
-- - Ash Wednesday
-- - 1st to 5th Sundays of Lent
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('ash-wednesday', 'Ash Wednesday', 'christological'),
('first-sunday-of-lent', 'First Sunday of Lent', 'christological'),
('second-sunday-of-lent', 'Second Sunday of Lent', 'christological'),
('third-sunday-of-lent', 'Third Sunday of Lent', 'christological'),
('fourth-sunday-of-lent', 'Fourth Sunday of Lent', 'christological'),
('fifth-sunday-of-lent', 'Fifth Sunday of Lent', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('ash-wednesday', 'Ash Wednesday'),
('first-sunday-of-lent', 'First Sunday of Lent'),
('second-sunday-of-lent', 'Second Sunday of Lent'),
('third-sunday-of-lent', 'Third Sunday of Lent'),
('fourth-sunday-of-lent', 'Fourth Sunday of Lent'),
('fifth-sunday-of-lent', 'Fifth Sunday of Lent')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('ash-wednesday', 'Mercredi des Cendres'),
('first-sunday-of-lent', 'Premier dimanche de Carême'),
('second-sunday-of-lent', 'Deuxième dimanche de Carême'),
('third-sunday-of-lent', 'Troisième dimanche de Carême'),
('fourth-sunday-of-lent', 'Quatrième dimanche de Carême'),
('fifth-sunday-of-lent', 'Cinquième dimanche de Carême')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('ash-wednesday', 'Feria IV Cinerum'),
('first-sunday-of-lent', 'Dominica I in Quadragesima'),
('second-sunday-of-lent', 'Dominica II in Quadragesima'),
('third-sunday-of-lent', 'Dominica III in Quadragesima'),
('fourth-sunday-of-lent', 'Dominica IV in Quadragesima'),
('fifth-sunday-of-lent', 'Dominica V in Quadragesima')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- CELEBRATIONS (movable relative to Easter Sunday)
-- Ash Wednesday = Easter - 46
-- Lent Sundays = Easter -42, -35, -28, -21, -14
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'movable', x.movable_base, x.movable_offset_days, 'normal', FALSE, 'Roman General Calendar (Lent core)'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('ash-wednesday', 'EASTER_SUNDAY', -46, 'FERIA_PRIVILEGED', 'PURPLE'),
('first-sunday-of-lent', 'EASTER_SUNDAY', -42, 'SUNDAY_ADVENT_LENT_EASTER', 'PURPLE'),
('second-sunday-of-lent', 'EASTER_SUNDAY', -35, 'SUNDAY_ADVENT_LENT_EASTER', 'PURPLE'),
('third-sunday-of-lent', 'EASTER_SUNDAY', -28, 'SUNDAY_ADVENT_LENT_EASTER', 'PURPLE'),
('fourth-sunday-of-lent', 'EASTER_SUNDAY', -21, 'SUNDAY_ADVENT_LENT_EASTER', 'ROSE'),
('fifth-sunday-of-lent', 'EASTER_SUNDAY', -14, 'SUNDAY_ADVENT_LENT_EASTER', 'PURPLE')
) AS x(slug, movable_base, movable_offset_days, rank_code, color_code)
ON f.slug = x.slug
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = x.rank_code
LEFT JOIN liturgical_colors lc ON lc.code = x.color_code
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

-- =========================================================
-- Advent core block (Roman General Calendar)
-- - First to Fourth Sunday of Advent
-- - Christmas Eve day (optional explicit marker)
-- =========================================================

-- FEASTS
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('first-sunday-of-advent', 'First Sunday of Advent', 'christological'),
('second-sunday-of-advent', 'Second Sunday of Advent', 'christological'),
('third-sunday-of-advent', 'Third Sunday of Advent', 'christological'),
('fourth-sunday-of-advent', 'Fourth Sunday of Advent', 'christological'),
('december-24-advent-feria', '24 December (Advent Feria)', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- EN translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('first-sunday-of-advent', 'First Sunday of Advent'),
('second-sunday-of-advent', 'Second Sunday of Advent'),
('third-sunday-of-advent', 'Third Sunday of Advent'),
('fourth-sunday-of-advent', 'Fourth Sunday of Advent'),
('december-24-advent-feria', '24 December (Advent Feria)')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('first-sunday-of-advent', 'Premier dimanche de l''Avent'),
('second-sunday-of-advent', 'Deuxième dimanche de l''Avent'),
('third-sunday-of-advent', 'Troisième dimanche de l''Avent'),
('fourth-sunday-of-advent', 'Quatrième dimanche de l''Avent'),
('december-24-advent-feria', '24 décembre (Férie de l''Avent)')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('first-sunday-of-advent', 'Dominica I Adventus'),
('second-sunday-of-advent', 'Dominica II Adventus'),
('third-sunday-of-advent', 'Dominica III Adventus'),
('fourth-sunday-of-advent', 'Dominica IV Adventus'),
('december-24-advent-feria', 'Die 24 Decembris (Feria Adventus)')
) AS x(slug, name)
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
SELECT f.id, 'en', x.name, NULL
FROM feasts f
JOIN (VALUES
('the-ascension-of-the-lord', 'The Ascension of the Lord'),
('pentecost-sunday', 'Pentecost Sunday'),
('blessed-virgin-mary-mother-of-the-church', 'Blessed Virgin Mary, Mother of the Church'),
('the-most-holy-trinity', 'The Most Holy Trinity'),
('the-most-holy-body-and-blood-of-christ', 'The Most Holy Body and Blood of Christ'),
('the-most-sacred-heart-of-jesus', 'The Most Sacred Heart of Jesus'),
('the-immaculate-heart-of-the-blessed-virgin-mary', 'The Immaculate Heart of the Blessed Virgin Mary'),
('our-lord-jesus-christ-king-of-the-universe', 'Our Lord Jesus Christ, King of the Universe')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, NULL
FROM feasts f
JOIN (VALUES
('the-ascension-of-the-lord', 'Ascension du Seigneur'),
('pentecost-sunday', 'Dimanche de la Pentecôte'),
('blessed-virgin-mary-mother-of-the-church', 'Bienheureuse Vierge Marie, Mère de l''Église'),
('the-most-holy-trinity', 'La Très Sainte Trinité'),
('the-most-holy-body-and-blood-of-christ', 'Le Très Saint Corps et Sang du Christ'),
('the-most-sacred-heart-of-jesus', 'Le Sacré-Cœur de Jésus'),
('the-immaculate-heart-of-the-blessed-virgin-mary', 'Le Cœur Immaculé de la Bienheureuse Vierge Marie'),
('our-lord-jesus-christ-king-of-the-universe', 'Notre Seigneur Jésus-Christ, Roi de l''Univers')
) AS x(slug, name)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, NULL
FROM feasts f
JOIN (VALUES
('the-ascension-of-the-lord', 'Ascensio Domini'),
('pentecost-sunday', 'Dominica Pentecostes'),
('blessed-virgin-mary-mother-of-the-church', 'Beata Maria Virgo, Mater Ecclesiae'),
('the-most-holy-trinity', 'Sanctissima Trinitas'),
('the-most-holy-body-and-blood-of-christ', 'Sanctissimi Corporis et Sanguinis Christi'),
('the-most-sacred-heart-of-jesus', 'Sacratissimum Cor Iesu'),
('the-immaculate-heart-of-the-blessed-virgin-mary', 'Cor Immaculatum Beatae Mariae Virginis'),
('our-lord-jesus-christ-king-of-the-universe', 'Domini Nostri Iesu Christi Universorum Regis')
) AS x(slug, name)
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

COMMIT;
