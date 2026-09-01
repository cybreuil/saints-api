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
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-francis-xavier-priest', 'Saint Francis Xavier, Priest', $desc$
Saint Francis Xavier is remembered as one of the greatest missionaries in the history of the Church, a Basque nobleman who exchanged a promising academic career for a life carried to the far edges of the known world. One of the first companions of Ignatius of Loyola and a founding member of the Society of Jesus, he became for later generations a lasting image of the apostolic zeal the young order sought to embody.

His life gives concrete form to the missionary vocation at the heart of the Gospel: the command to go and make disciples of all nations. In his tireless journeys he witnessed to the conviction that no people lies beyond the reach of Christ's saving love, and that the proclamation of the faith is inseparable from patient presence, service, and love for those to whom one is sent.

Born in Navarre in 1506, Francis met Ignatius as a student in Paris and pronounced the first vows of the new company at Montmartre in 1534. Sent east under Portuguese patronage, he labored in India, especially among the fisher folk of the Coromandel coast, in the Moluccas, and then in Japan, where he opened one of the first Christian missions. He died in 1552 on the island of Shangchuan within sight of China, which he had longed to enter. Canonized in 1622 alongside Ignatius, he was later named patron of the missions.

His example continues to summon the Church outward, beyond the comfort of the familiar. He reminds believers that the faith is a gift meant to be shared, and that authentic evangelization is born of a heart set aflame by the love of God and poured out for others.
$desc$),
('saint-john-damascene-priest-and-doctor-of-the-church', 'Saint John Damascene, Priest and Doctor of the Church', $desc$
Saint John Damascene is revered as the last of the great Fathers of the Eastern Church and one of its most influential theologians, a monk and priest whose synthesis of earlier tradition long served as a standard reference for both East and West. Writing in Greek from the monastic quiet of Palestine, he gathered and ordered the inheritance of the councils and Fathers into a lasting whole.

He is remembered above all as the champion of sacred images during the fierce iconoclast controversy. Against those who condemned the veneration of icons, he articulated a profound theology of the image rooted in the Incarnation: because the invisible God had made himself visible in Christ, the depiction and honoring of holy images became not idolatry but a confession of the reality of the Word made flesh.

Born in Damascus around 675 into a distinguished Christian family that served the caliphate, he eventually withdrew to the monastery of Mar Saba near Jerusalem. His great work, the "Fount of Knowledge," culminates in the "Exposition of the Orthodox Faith," a systematic summary that shaped later theology, including the schoolmen of the medieval West. He died around 749, and Pope Leo XIII proclaimed him a Doctor of the Church in 1890.

His defense of the icon remains a rich resource for reflection on beauty, matter, and worship. He teaches that the created and the visible can become vehicles of grace, and that in honoring the image the Christian is drawn upward to the One whom it represents.
$desc$),
('saint-nicholas-bishop', 'Saint Nicholas, Bishop', $desc$
Saint Nicholas is one of the most universally loved saints of East and West, venerated for more than sixteen centuries, though the historical figure is largely hidden behind a luxuriant growth of legend. What endures is the memory of a fourth-century bishop whose generosity and care for the poor made his name a byword for hidden charity.

The stories told of him give shape to a deeper truth about Christian love: that true giving seeks no recognition and delights to lift up the vulnerable. The famous account of his secret gift of dowries to three impoverished girls, saving them from ruin, expresses the Gospel ideal of almsgiving done in secret, for the eyes of God alone.

He served as bishop of Myra in Lycia, in what is now southern Turkey, during the age of Constantine, and tradition numbers him among the confessors who suffered under persecution before the peace of the Church. In 1087 his relics were carried to Bari in southern Italy, where they remain a center of pilgrimage. From his Dutch title, Sinterklaas, and his reputation for gift-giving grew the popular figure of Santa Claus.

His enduring appeal invites the faithful to reclaim the saint behind the folklore. He remains a model of episcopal charity and a reminder that generosity toward children, the poor, and the endangered lies close to the very heart of the Gospel.
$desc$),
('saint-ambrose-bishop-and-doctor-of-the-church', 'Saint Ambrose, Bishop and Doctor of the Church', $desc$
Saint Ambrose was a towering figure of the fourth-century Church and one of the four original Doctors of the Latin West. A gifted administrator turned pastor, orator, and theologian, he shaped the faith and worship of the Church at a decisive moment in its passage from persecuted minority to public presence in the Roman world.

His ministry embodies the courage of the pastor who defends the freedom and integrity of the Church before earthly power. He resisted the pressures of the imperial court, upheld orthodoxy against Arianism, and famously called even an emperor to public penance, teaching that the ruler stands within the Church and not above it.

Born around 340, Ambrose was serving as Roman governor in Milan when, still only a catechumen, he was acclaimed bishop by the people in 374 and hastily baptized and ordained. As bishop he preached and wrote extensively, promoted the singing of hymns, and played a decisive role in the conversion and baptism of Augustine of Hippo. He died in 397, and his influence upon Latin theology and liturgy proved lasting.

His witness continues to speak to the relationship between faith and public life. He models the pastor who serves his people with learning and eloquence while never surrendering the demands of truth and justice to the convenience of the powerful.
$desc$),
('the-immaculate-conception-of-the-blessed-virgin-mary', 'The Immaculate Conception of the Blessed Virgin Mary', $desc$
The Immaculate Conception celebrates the singular grace by which the Blessed Virgin Mary, from the first instant of her existence, was preserved free from original sin through the merits of Jesus Christ. The feast honors the beginning of Mary's own life and contemplates her as the all-holy daughter of Israel, prepared by divine favor to receive the Word made flesh.

At its heart lies a profound truth about grace and redemption. Mary does not stand outside Christ's saving work; rather, she is redeemed by him in the most eminent way, preserved from the wound of sin rather than rescued after falling under it. In her the Church beholds what God's grace can accomplish when it is perfectly welcomed, and she becomes a sign of the new creation already dawning in Christ.

The belief grew within the prayer and reflection of the Church over many centuries and was solemnly defined by Pope Pius IX in the bull "Ineffabilis Deus" in 1854. Christian devotion soon linked that definition to the testimony of Lourdes, where Bernadette Soubirous reported that the Lady of the apparitions named herself the Immaculate Conception. East and West have long praised Mary's all-holiness, even where theological language and liturgical expression developed in different ways.

The feast invites the faithful to contemplate the beauty of a life wholly open to God from its beginning. In Mary, preserved and radiant, the Church glimpses both its origin in grace and its promised destiny, and believers are encouraged to seek the purity of heart and total availability to God's will that her life so perfectly displays.
$desc$),
('saint-juan-diego-cuauhtlatoatzin', 'Saint Juan Diego Cuauhtlatoatzin', $desc$
Saint Juan Diego holds a unique place in the history of the Church in the Americas as the humble indigenous man to whom the Virgin Mary appeared at Tepeyac in 1531. A member of the Chichimec people, baptized in his maturity, he became the chosen messenger of an event that would transform the evangelization of a continent.

His life bears witness to the Gospel's preference for the lowly and the way God entrusts great things to the humble. In choosing a poor native convert as her confidant, the Virgin honored the dignity of the peoples of the New World and made of Juan Diego a bridge between cultures at a moment of painful encounter and conquest.

According to the traditional account, the Virgin sent him to the bishop of Mexico, and as a sign caused roses to bloom in winter and her image to appear miraculously upon his tilma, the rough cloak in which he had gathered the flowers. He spent his remaining years in prayer and service near the shrine that arose on the hill. Long venerated, he was beatified in 1990 and canonized by Pope John Paul II in 2002, becoming the first indigenous saint of the Americas.

His memory continues to affirm the dignity of native peoples and the universality of the call to holiness. He stands as a patron of the humble and a reminder that God speaks through those the world overlooks.
$desc$),
('our-lady-of-loreto', 'Our Lady of Loreto', $desc$
Our Lady of Loreto honors the Blessed Virgin under the title associated with the Holy House, the dwelling venerated at Loreto as the home of the Holy Family at Nazareth. The devotion directs the heart toward the hidden life of Jesus and toward the domestic setting in which the mystery of the Incarnation unfolded.

Its spiritual meaning lies in the sanctification of home, family, and daily labor. In contemplating the house linked by tradition with Mary and the Annunciation, the faithful remember that the eternal Word entered human history not only in majesty but also in the silence of an ordinary household. Nazareth becomes the school of humble obedience, prayer, and loving service.

According to long tradition, the small stone house was translated from Nazareth to the Italian Marches at the end of the thirteenth century, a story later told in the language of angelic transport; historians have also associated the shrine with the Angeli family and the movement of stones during the crusading age. The shrine gave its name to the Litany of Loreto and fostered a widespread Marian piety marked by trust in Mary's maternal protection.

This feast invites believers to make their own homes places of faith, hospitality, and recollected work. Under the title of Loreto, Mary is honored as mother of the Incarnate Lord and as a guide for all who seek holiness in the ordinary rhythms of family and daily life.
$desc$),
('saint-damasus-i-pope', 'Saint Damasus I, Pope', $desc$
Saint Damasus I was a pope of the later fourth century whose energetic ministry helped consolidate the Roman Church at a pivotal moment, as Christianity emerged as the favored faith of the empire. A scholar and patron of learning, he did much to give lasting form to the Church's worship, memory, and sacred texts.

His pontificate reflects the pastor's care for both truth and tradition. He labored to defend orthodox faith against lingering heresies, to strengthen the authority of the Roman see, and to honor the martyrs whose blood had sanctified the city, so that the memory of the Church's heroic past might nourish the faith of the present.

Elected in 366 amid civil strife, Damasus reigned until 384. He commissioned his secretary, Jerome, to undertake the revision of the Latin Scriptures that would grow into the Vulgate, the version that shaped Western Christianity for a millennium and more. He restored and adorned the tombs of the martyrs in the catacombs, composing elegant Latin verses to mark them, and promoted the veneration of the saints throughout Rome.

His legacy endures in the Scriptures the Church has read for centuries and in the enduring reverence for the martyrs. He is remembered as a guardian of tradition who understood that the Church draws strength for the future from fidelity to its past.
$desc$),
('our-lady-of-guadalupe', 'Our Lady of Guadalupe', $desc$
Our Lady of Guadalupe commemorates the appearances of the Virgin Mary near Mexico City in 1531 and the miraculous image associated with them, a devotion that became a spiritual foundation for the faith of countless peoples in the Americas. Few Marian titles have so deeply shaped the religious imagination, identity, and hope of an entire continent.

The apparition bears a message of tenderness, mercy, and evangelization received within a particular culture. Appearing in a form that spoke to indigenous peoples wounded by conquest, the Virgin revealed a maternal closeness that honored their dignity and drew diverse peoples toward Christ. The Guadalupan image became a sign that the Gospel can take root in every nation without erasing what is noble in a people's history.

According to the traditional account, Mary appeared to the humble convert Juan Diego on Tepeyac hill, sent him to the bishop, and confirmed her request by winter roses and the image imprinted on his tilma, still venerated in the great basilica raised in her honor. Devotion spread rapidly and helped shape a new Christian people in the New World. She has since been invoked as Patroness of the Americas and as a mother close to the poor, the unborn, and all who seek refuge beneath her mantle.

Her feast remains a wellspring of hope for believers far beyond Mexico. It calls the faithful to receive the Gospel with childlike trust, to defend the dignity of the vulnerable, and to recognize in Mary a mother who gathers divided peoples into one family in Christ.
$desc$),
('saint-lucy-virgin-and-martyr', 'Saint Lucy, Virgin and Martyr', $desc$
Saint Lucy is one of the early virgin martyrs whose names are recalled with special honor in the Roman tradition, a young woman of Syracuse in Sicily whose fidelity to Christ cost her life in the age of persecution. Her memory has been cherished throughout the Church since Christian antiquity.

Her witness gives shape to the ideal of consecrated virginity and steadfast faith unto death. Having devoted herself wholly to Christ, she refused the compromises demanded of her and accepted martyrdom rather than betray her love, becoming a lasting emblem of purity and courage in the face of coercion.

According to tradition she suffered around the year 304 during the persecution under Diocletian, and her fame spread widely enough that her name was inserted into the Roman Canon of the Mass. Her name, drawn from the Latin word for light, gave rise to rich symbolism, and legends associating her with eyes and sight made her a patroness of the blind and of those afflicted in vision. In many lands her remembrance has become a festival of light held amid the dark season of the year.

Lucy continues to point believers to Christ, the true Light whom no darkness can overcome. She encourages the faithful to keep the lamp of faith burning brightly, to persevere when fidelity is costly, and to let the radiance of charity shine before the world.
$desc$),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', 'Saint John of the Cross, Priest and Doctor of the Church', $desc$
Saint John of the Cross was a Spanish Carmelite friar, mystic, and poet whose writings rank among the summits of Christian spiritual literature. Together with Teresa of Ávila he led the reform of the Carmelite order, and his profound teaching on prayer and union with God earned him recognition as a Doctor of the Church.

His doctrine charts the soul's journey toward God through purification and self-emptying. In images of unforgettable power, above all the "dark night," he described the painful stripping away of every attachment by which the soul is prepared for intimate union with the Beloved, teaching that authentic love passes through darkness and detachment before it comes to light.

Born in 1542 into poverty near Ávila, he joined the Carmelites and embraced Teresa's call to a stricter observance. His reforming zeal provoked fierce opposition, and he was imprisoned by his own brethren at Toledo, where, in cruel confinement, he composed some of his most luminous verse. From this experience flowed masterpieces such as the "Spiritual Canticle" and "The Dark Night of the Soul." He died in 1591 and was declared a Doctor of the Church in 1926.

His teaching continues to guide those who seek the depths of prayer. He assures the faithful that the trials and dryness of the spiritual life are not signs of abandonment but the very means by which God draws the soul into deeper and purer love.
$desc$),
('saint-peter-canisius-priest-and-doctor-of-the-church', 'Saint Peter Canisius, Priest and Doctor of the Church', $desc$
Saint Peter Canisius was a Dutch Jesuit and one of the most influential figures of the Catholic Reformation in the German-speaking lands. A tireless preacher, teacher, and writer, he did more than almost any other to sustain and renew the Catholic faith in regions swept by the upheavals of the sixteenth century.

His life exemplifies the power of patient instruction and clear teaching in a time of confusion. Convinced that ignorance of the faith left souls defenseless, he devoted himself to catechesis, seeking to form the minds and hearts of the faithful in sound doctrine expressed with warmth and clarity rather than mere polemic.

Born in Nijmegen in 1521, he was among the first to join the young Society of Jesus in the German lands. He founded colleges, advised princes and bishops, took part in the Council of Trent, and above all composed catechisms that were translated and reprinted countless times, shaping Catholic education for generations. He died at Fribourg in 1597 and was canonized and declared a Doctor of the Church together in 1925.

His example speaks to every age in which faith must be handed on amid indifference or division. He reminds the Church that solid teaching, offered with charity and confidence, remains one of the surest supports of Christian life.
$desc$),
('saint-john-of-kanty-priest', 'Saint John of Kanty, Priest', $desc$
Saint John of Kanty, also known as John Cantius, was a Polish priest and scholar remembered for the union of deep learning with extraordinary charity. A professor at the University of Kraków, he joined the life of the mind to a simplicity and generosity that made him beloved of the poor of his city.

His life illustrates that holiness and scholarship are not at odds but may enrich one another. Renowned for his teaching, he was still more renowned for his humility and kindness, giving away his food and clothing to the needy and treating every person with patient courtesy, so that his learning was crowned by love.

Born in 1390 at Kęty in southern Poland, he spent most of his life associated with the university at Kraków, teaching theology and Scripture. Stories of his generosity multiplied during his lifetime and after, and he became a much-loved patron of the university and of the Polish people. He died in 1473, was long venerated locally, and was canonized in 1767.

His memory continues to unite the values of study and service. He offers a model especially to teachers, students, and scholars, reminding them that knowledge finds its fulfillment when placed at the service of God and of the poor.
$desc$),
('nativity-of-the-lord', 'Nativity of the Lord', $desc$
The Nativity of the Lord celebrates the central mystery of the Christian faith: the eternal Son of God taking flesh and being born of the Virgin Mary at Bethlehem. It is the feast of the Incarnation, in which the Word through whom all things were made enters his own creation as a helpless child, uniting divinity and humanity forever in a single person.

Its meaning reaches to the depths of the mystery of salvation. In the birth of Christ the invisible God becomes visible, the infinite embraces the limits of a human life, and heaven is joined to earth. The Fathers saw in this exchange the ground of human hope: God became what we are, they taught, so that we might come to share in what he is, our nature raised and healed through his humble descent.

The observance of Christ's birth on December 25 is attested at Rome by the fourth century, its date connected both to computations from the spring feast of the Annunciation and to the Christian claiming of the season of the winter solstice for the true Sun of Righteousness. In the Roman tradition the solemnity is unfolded across three Masses, of the night, the dawn, and the day, and it opens an octave of celebration that carries the joy of the Nativity through the days that follow.

The feast summons the world each year to wonder before the mystery of God made small for love of us. It calls the faithful not merely to recall a distant event but to welcome anew the Savior who comes in poverty and peace, and to let his coming transform the way they live.
$desc$),
('saint-stephen-the-first-martyr', 'Saint Stephen, the First Martyr', $desc$
Saint Stephen holds the honored title of protomartyr, the first among the followers of Christ to give his life in witness to the faith. His feast, kept the day after Christmas, joins the joy of the Lord's birth to the cost of discipleship, a striking juxtaposition that the ancient Church deliberately embraced.

His witness reveals the fullness of Christian martyrdom conformed to Christ himself. Filled with the Holy Spirit, he proclaimed the Gospel with boldness and, as he died, forgave his persecutors and commended his spirit to the Lord, echoing the very words of the crucified Jesus and showing that the martyr's death is a participation in the death of the Master.

The Acts of the Apostles recount that Stephen was one of the seven chosen to serve the needs of the community, and that his powerful preaching provoked fierce opposition, leading to his condemnation and death by stoning outside Jerusalem. The narrative notes that a young man named Saul, later the Apostle Paul, stood approving his death, a detail rich with the promise of grace to come.

Placed within the Christmas octave among the companions of Christ, his feast reminds the faithful that the Child of Bethlehem was born to give his life, and that those who follow him must be ready to bear witness at every cost. Stephen encourages the Church to a courage steeped in charity, even toward its enemies.
$desc$),
('saint-john-apostle-and-evangelist', 'Saint John, Apostle and Evangelist', $desc$
Saint John, the beloved disciple, is honored as an apostle, evangelist, and, by long tradition, the author of the fourth Gospel, three epistles, and the Book of Revelation. His feast, kept within the Christmas octave, celebrates the disciple who penetrated most deeply into the mystery of the Word made flesh.

His witness is above all a witness to divine love. The Gospel that bears his name opens with the eternal Word who was with God and was God, and its pages return again and again to the love of God revealed in Christ and to the love the disciples are commanded to share. Tradition remembers him as the one who leaned upon the Lord's breast at the supper and stood faithfully beneath the cross.

Numbered among the first called by Jesus, John was, with his brother James and with Peter, a witness to key moments of the Lord's ministry. Ancient tradition places his later years at Ephesus, where he is said to have cared for the Mother of Jesus entrusted to him from the cross and to have lived to a great age, dying at last a natural death, alone among the apostles.

His feast, so close to Christmas, deepens the contemplation of the mystery of the Incarnation that his Gospel proclaims. He invites the faithful into that intimacy with Christ from which flowed his profound theology, and to make the love of God the measure of their own lives.
$desc$),
('the-holy-innocents-martyrs', 'The Holy Innocents, Martyrs', $desc$
The feast of the Holy Innocents commemorates the children of Bethlehem slain by order of King Herod in his attempt to destroy the newborn King. Kept within the joyful days of the Christmas octave, it casts a shadow of the cross across the manger, recalling that the coming of the Savior was met from the first with the violence of a fearful world.

The Church has always honored these children as martyrs, though they died without knowledge of the One for whom they suffered. They are venerated as those who bore witness to Christ not by words but by their blood alone, the first to die on his account, and so they have been seen as an image of grace freely given and of innocence united to the sufferings of the Lord.

The Gospel of Matthew recounts how Herod, learning from the wise men of a newborn king, ordered the killing of the young boys of Bethlehem, while Joseph, warned in a dream, fled with the Child and his Mother into Egypt. However few the victims of that obscure village may have been, their memory has been kept with reverence since early Christian times.

Their feast speaks with painful timeliness to a world still marked by violence against the weak and the innocent. It moves the faithful to compassion and to prayer for all children who suffer, and it proclaims that even the most defenseless victims are not forgotten but held forever in the mercy of God.
$desc$),
('saint-thomas-becket-bishop-and-martyr', 'Saint Thomas Becket, Bishop and Martyr', $desc$
Saint Thomas Becket was Archbishop of Canterbury whose murder in his own cathedral shocked Christendom and made him one of the most venerated martyrs of the medieval Church. His death arose from his defense of the liberty of the Church against the encroachments of royal power in twelfth-century England.

His witness embodies the pastor's duty to guard the rights and freedom of the Church even at the cost of his life. Once a worldly royal chancellor and close friend of the king, he underwent a profound change upon becoming archbishop, ranging himself firmly on the side of the Church and enduring exile and danger rather than yield what he held to be sacred.

Born in London around 1120, Thomas rose high in the service of King Henry II before their friendship turned to bitter conflict over the jurisdiction and immunities of the clergy. After years of struggle and a period of exile in France, he returned to Canterbury, where, on December 29, 1170, four knights of the king cut him down before the altar. The horror of the deed swept Europe; he was canonized within three years, and his shrine at Canterbury became one of the greatest pilgrimage sites of Christendom.

His memory endures as a sign of the Church's freedom before earthly authority. He continues to inspire those who must defend conscience and the rights of God against the pressures of power, and to bear witness that fidelity may demand the ultimate price.
$desc$),
('saint-sylvester-i-pope', 'Saint Sylvester I, Pope', $desc$
Saint Sylvester I guided the Church of Rome through the momentous decades in which Christianity passed from persecution to public favor under the emperor Constantine. His long pontificate coincided with a transformation of the Church's place in the world, and his name has become linked, in much of Europe, with the closing of the civil year.

His pontificate belongs to the dawn of the age of peace after centuries of martyrdom. It witnessed the building of the great Roman basilicas, the flourishing of public Christian worship, and the gathering of the first ecumenical council, the moments in which the Church began to give lasting institutional shape to its life in a newly favorable world.

Sylvester reigned from 314 to 335, in the years surrounding the Council of Nicaea in 325, which affirmed the full divinity of the Son against the Arian error. Though he did not attend the council in person, it was held during his pontificate and marked by his legates. In later centuries his figure gathered around it a wealth of legend, including the spurious tale of the Donation of Constantine, so that the historical pope is partly hidden behind pious storytelling. He died in 335 and was buried on the Via Salaria.

His feast, falling on the last day of the year, invites reflection on the passage of time and the providence that guides the Church through changing ages. In many lands his name marks the eve of the new year, a moment of thanksgiving for the past and hopeful entrustment of the future to God.
$desc$),
('the-holy-family-of-jesus-mary-and-joseph', 'The Holy Family of Jesus, Mary and Joseph', $desc$
The feast of the Holy Family honors Jesus, Mary, and Joseph together as the household of Nazareth, the human family within which the Son of God chose to be born and raised. Celebrated within the days of Christmas, it draws attention to the hidden years in which the Savior grew in wisdom and grace under the care of his Mother and his foster father.

Its meaning lies in the sanctification of family life itself. In taking his place within an ordinary home, subject to his parents and sharing in the labors and joys of domestic life, Christ hallowed the bonds of family and made of the household of Nazareth a model of love, obedience, and mutual devotion for every Christian home.

Devotion to the Holy Family grew especially in the modern era, encouraged by the popes as a remedy for the pressures upon family life. Pope Leo XIII fostered the devotion, and after a period of more limited observance the feast was extended to the universal Church by Benedict XV in 1921. In the reform of the calendar it was assigned to the Sunday within the octave of Christmas, or, in years when no Sunday falls within the octave, to December 30.

Its celebration speaks with particular force to the challenges facing families today. It holds up the home of Nazareth as an example and intercessor, and it calls households to become schools of faith and charity, where the presence of Christ transforms the ordinary tasks of daily life.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-francis-xavier-priest', 'Saint François Xavier, prêtre', $desc$
Saint François Xavier demeure l'un des plus grands missionnaires de l'histoire de l'Église, ce noble basque qui échangea une brillante carrière universitaire contre une vie portée jusqu'aux confins du monde connu. Compagnon de la première heure d'Ignace de Loyola et membre fondateur de la Compagnie de Jésus, il devint pour les générations suivantes une image durable du zèle apostolique que le jeune ordre voulait incarner.

Sa vie donne une forme concrète à la vocation missionnaire qui est au cœur de l'Évangile : l'ordre d'aller faire des disciples parmi toutes les nations. Dans ses voyages inlassables, il témoigna de la conviction qu'aucun peuple n'échappe à la portée de l'amour sauveur du Christ, et que l'annonce de la foi est inséparable de la présence patiente, du service et de l'amour de ceux vers qui l'on est envoyé.

Né en Navarre en 1506, François rencontra Ignace comme étudiant à Paris et prononça avec ses compagnons les premiers vœux à Montmartre en 1534. Envoyé en Orient sous le patronage portugais, il œuvra aux Indes, notamment parmi les pêcheurs de la côte de Coromandel, aux Moluques, puis au Japon, où il ouvrit l'une des premières missions chrétiennes. Il mourut en 1552 sur l'île de Shangchuan, en vue de la Chine où il désirait entrer. Canonisé en 1622 avec Ignace, il fut ensuite proclamé patron des missions.

Son exemple continue d'appeler l'Église à sortir d'elle-même, au-delà du confort du connu. Il rappelle aux croyants que la foi est un don destiné à être partagé, et que toute évangélisation authentique naît d'un cœur embrasé par l'amour de Dieu et répandu pour les autres.
$desc$),
('saint-john-damascene-priest-and-doctor-of-the-church', 'Saint Jean Damascène, prêtre et docteur de l''Église', $desc$
Saint Jean Damascène est vénéré comme le dernier des grands Pères de l'Église d'Orient et comme l'un de ses théologiens les plus influents, moine et prêtre dont la synthèse de la tradition antérieure servit longtemps de référence tant à l'Orient qu'à l'Occident. Écrivant en grec depuis la quiétude monastique de la Palestine, il rassembla et ordonna l'héritage des conciles et des Pères en un tout durable.

On le retient surtout comme le défenseur des images saintes durant la violente crise iconoclaste. Contre ceux qui condamnaient la vénération des icônes, il élabora une profonde théologie de l'image enracinée dans l'Incarnation : puisque le Dieu invisible s'était rendu visible dans le Christ, représenter et honorer les images saintes n'était pas idolâtrie mais confession de la réalité du Verbe fait chair.

Né à Damas vers 675 dans une famille chrétienne distinguée au service du califat, il se retira au monastère de Saint-Sabas près de Jérusalem. Son grand ouvrage, la « Source de la connaissance », culmine dans l'« Exposé de la foi orthodoxe », résumé systématique qui marqua la théologie ultérieure, jusqu'aux docteurs du Moyen Âge occidental. Il mourut vers 749, et le pape Léon XIII le proclama docteur de l'Église en 1890.

Sa défense de l'icône demeure une riche ressource pour méditer sur la beauté, la matière et le culte. Il enseigne que le créé et le visible peuvent devenir vecteurs de grâce, et qu'en honorant l'image le chrétien est élevé vers Celui qu'elle représente.
$desc$),
('saint-nicholas-bishop', 'Saint Nicolas, évêque', $desc$
Saint Nicolas compte parmi les saints les plus universellement aimés de l'Orient et de l'Occident, vénéré depuis plus de seize siècles, même si la figure historique se cache largement derrière une luxuriante floraison de légendes. Ce qui demeure, c'est le souvenir d'un évêque du quatrième siècle dont la générosité et le souci des pauvres firent de son nom un symbole de charité cachée.

Les récits qui le concernent donnent forme à une vérité plus profonde sur l'amour chrétien : le vrai don ne cherche aucune reconnaissance et se plaît à relever les plus vulnérables. Le célèbre récit du don secret de dots à trois jeunes filles démunies, les sauvant de la ruine, exprime l'idéal évangélique de l'aumône faite dans le secret, sous le seul regard de Dieu.

Il fut évêque de Myre en Lycie, dans l'actuelle Turquie méridionale, à l'époque de Constantin, et la tradition le range parmi les confesseurs qui souffrirent lors des persécutions avant la paix de l'Église. En 1087, ses reliques furent transportées à Bari, en Italie du Sud, où elles demeurent un lieu de pèlerinage. De son nom néerlandais, Sinterklaas, et de sa réputation de donateur naquit la figure populaire du père Noël.

Son attrait durable invite les fidèles à retrouver le saint derrière le folklore. Il demeure un modèle de charité épiscopale et un rappel que la générosité envers les enfants, les pauvres et ceux qui sont en danger touche au cœur même de l'Évangile.
$desc$),
('saint-ambrose-bishop-and-doctor-of-the-church', 'Saint Ambroise, évêque et docteur de l''Église', $desc$
Saint Ambroise fut l'une des figures majeures de l'Église du quatrième siècle et l'un des quatre docteurs originels de l'Occident latin. Administrateur doué devenu pasteur, orateur et théologien, il façonna la foi et le culte de l'Église à un moment décisif de son passage de minorité persécutée à présence publique dans le monde romain.

Son ministère incarne le courage du pasteur qui défend la liberté et l'intégrité de l'Église face au pouvoir temporel. Il résista aux pressions de la cour impériale, soutint l'orthodoxie contre l'arianisme et appela même un empereur à la pénitence publique, enseignant que le souverain se tient dans l'Église et non au-dessus d'elle.

Né vers 340, Ambroise exerçait la charge de gouverneur romain à Milan lorsque, encore simple catéchumène, il fut acclamé évêque par le peuple en 374, puis hâtivement baptisé et ordonné. Comme évêque, il prêcha et écrivit abondamment, promut le chant des hymnes et joua un rôle décisif dans la conversion et le baptême d'Augustin d'Hippone. Il mourut en 397, et son influence sur la théologie et la liturgie latines se révéla durable.

Son témoignage continue de parler du rapport entre la foi et la vie publique. Il incarne le pasteur qui sert son peuple avec science et éloquence sans jamais sacrifier les exigences de la vérité et de la justice à la commodité des puissants.
$desc$),
('the-immaculate-conception-of-the-blessed-virgin-mary', 'Immaculée Conception de la Bienheureuse Vierge Marie', $desc$
L'Immaculée Conception célèbre la grâce singulière par laquelle la Bienheureuse Vierge Marie, dès le premier instant de son existence, fut préservée du péché originel par les mérites de Jésus Christ. La fête honore le commencement de la vie propre de Marie et la contemple comme la fille très sainte d'Israël, préparée par la faveur divine à recevoir le Verbe fait chair.

En son cœur réside une profonde vérité sur la grâce et la rédemption. Marie n'est pas en dehors de l'œuvre salvifique du Christ ; elle en est la bénéficiaire de la manière la plus éminente, préservée de la blessure du péché au lieu d'en être tirée après coup. En elle, l'Église voit ce que la grâce de Dieu peut accomplir lorsqu'elle est accueillie sans réserve, et elle devient le signe de la création nouvelle déjà inaugurée dans le Christ.

Cette croyance a mûri au long des siècles dans la prière et la réflexion de l'Église, avant d'être solennellement définie comme dogme par Pie IX dans la bulle « Ineffabilis Deus » en 1854. La piété chrétienne rapprocha bientôt cette définition du témoignage de Lourdes, où Bernadette Soubirous rapporta que la Dame des apparitions s'était nommée l'Immaculée Conception. L'Orient comme l'Occident ont célébré de longue date la sainteté toute pure de Marie, même si le langage théologique et l'expression liturgique s'y sont développés de manière diverse.

La fête invite les fidèles à contempler la beauté d'une vie tout entière ouverte à Dieu dès son commencement. En Marie, préservée et rayonnante, l'Église entrevoit à la fois son origine dans la grâce et sa destinée promise, et les croyants sont encouragés à rechercher la pureté du cœur et la disponibilité totale à la volonté de Dieu que sa vie manifeste parfaitement.
$desc$),
('saint-juan-diego-cuauhtlatoatzin', 'Saint Juan Diego Cuauhtlatoatzin', $desc$
Saint Juan Diego occupe une place unique dans l'histoire de l'Église des Amériques comme l'humble indigène à qui la Vierge Marie apparut à Tepeyac en 1531. Membre du peuple chichimèque, baptisé à l'âge mûr, il devint le messager choisi d'un événement qui allait transformer l'évangélisation de tout un continent.

Sa vie témoigne de la préférence de l'Évangile pour les petits et de la manière dont Dieu confie de grandes choses aux humbles. En choisissant un pauvre converti indigène pour confident, la Vierge honora la dignité des peuples du Nouveau Monde et fit de Juan Diego un pont entre les cultures, en un temps de rencontre douloureuse et de conquête.

Selon le récit traditionnel, la Vierge l'envoya vers l'évêque de Mexico et, en guise de signe, fit fleurir des roses en hiver et son image apparaître miraculeusement sur sa tilma, le rude manteau où il avait recueilli les fleurs. Il passa ses dernières années dans la prière et le service près du sanctuaire élevé sur la colline. Longtemps vénéré, il fut béatifié en 1990 et canonisé par le pape Jean-Paul II en 2002, devenant le premier saint indigène des Amériques.

Sa mémoire continue d'affirmer la dignité des peuples autochtones et l'universalité de l'appel à la sainteté. Il demeure un patron des humbles et un rappel que Dieu parle par ceux que le monde néglige.
$desc$),
('our-lady-of-loreto', 'Notre-Dame de Lorette', $desc$
Notre-Dame de Lorette honore la Bienheureuse Vierge sous le titre lié à la Sainte Maison, la demeure vénérée à Lorette comme le foyer de la Sainte Famille à Nazareth. Cette dévotion tourne le cœur vers la vie cachée de Jésus et vers le cadre domestique dans lequel le mystère de l'Incarnation s'est déployé.

Son sens spirituel réside dans la sanctification du foyer, de la vie familiale et du travail quotidien. En contemplant la maison que la tradition relie à Marie et à l'Annonciation, les fidèles se souviennent que le Verbe éternel est entré dans l'histoire non seulement dans la majesté, mais aussi dans le silence d'une demeure ordinaire. Nazareth devient ainsi l'école de l'obéissance humble, de la prière et du service aimant.

Selon une longue tradition, la petite maison de pierre fut transportée de Nazareth dans les Marches italiennes à la fin du treizième siècle, récit ensuite formulé dans le langage d'un transport angélique ; les historiens ont aussi mis en relation le sanctuaire avec la famille Angeli et le déplacement des pierres à l'époque des croisades. Le sanctuaire donna son nom aux litanies de Lorette et nourrit une large piété mariale marquée par la confiance en la protection maternelle de Marie.

Cette fête invite les croyants à faire de leur propre demeure un lieu de foi, d'hospitalité et de travail recueilli. Sous le titre de Lorette, Marie est honorée comme mère du Seigneur incarné et comme guide pour tous ceux qui cherchent la sainteté dans le rythme ordinaire de la famille et de la vie quotidienne.
$desc$),
('saint-damasus-i-pope', 'Saint Damase Ier, pape', $desc$
Saint Damase Ier fut un pape de la fin du quatrième siècle dont le ministère énergique contribua à affermir l'Église de Rome à un moment charnière, tandis que le christianisme s'imposait comme la foi favorisée de l'empire. Érudit et protecteur des lettres, il fit beaucoup pour donner une forme durable au culte, à la mémoire et aux textes sacrés de l'Église.

Son pontificat reflète le souci pastoral de la vérité et de la tradition. Il travailla à défendre la foi orthodoxe contre les hérésies persistantes, à renforcer l'autorité du siège de Rome et à honorer les martyrs dont le sang avait sanctifié la ville, afin que la mémoire du passé héroïque de l'Église nourrît la foi du présent.

Élu en 366 au milieu de troubles civils, Damase régna jusqu'en 384. Il chargea son secrétaire, Jérôme, d'entreprendre la révision des Écritures latines qui allait devenir la Vulgate, version qui façonna le christianisme occidental durant plus d'un millénaire. Il restaura et orna les tombeaux des martyrs dans les catacombes, composant d'élégants vers latins pour les marquer, et promut la vénération des saints dans tout Rome.

Son héritage demeure dans les Écritures que l'Église a lues durant des siècles et dans la vénération persistante des martyrs. On se souvient de lui comme d'un gardien de la tradition qui comprit que l'Église puise sa force pour l'avenir dans la fidélité à son passé.
$desc$),
('our-lady-of-guadalupe', 'Notre-Dame de Guadalupe', $desc$
Notre-Dame de Guadalupe commémore les apparitions de la Vierge Marie près de Mexico en 1531 et l'image miraculeuse qui leur est associée, dévotion devenue pour d'innombrables peuples des Amériques un fondement spirituel de la foi. Peu de titres mariaux ont façonné avec une telle profondeur l'imaginaire religieux, l'identité et l'espérance d'un continent entier.

L'apparition porte un message de tendresse, de miséricorde et d'évangélisation reçu dans une culture concrète. En se montrant sous une forme qui parlait aux peuples autochtones blessés par la conquête, la Vierge manifesta une proximité maternelle qui honorait leur dignité et attirait vers le Christ des peuples divers. L'image guadalupéenne devint un signe que l'Évangile peut prendre racine dans chaque nation sans effacer ce qu'une histoire humaine porte de noble.

Selon la tradition, Marie apparut à l'humble converti Juan Diego sur la colline de Tepeyac, l'envoya vers l'évêque et confirma sa demande par des roses d'hiver et par l'image imprimée sur sa tilma, encore vénérée dans la grande basilique élevée en son honneur. La dévotion se répandit rapidement et contribua à façonner un peuple chrétien nouveau dans le Nouveau Monde. Elle fut ensuite invoquée comme Patronne des Amériques et comme mère proche des pauvres, des enfants à naître et de tous ceux qui cherchent refuge sous son manteau.

Sa fête demeure une source d'espérance bien au-delà du Mexique. Elle appelle les fidèles à accueillir l'Évangile avec une confiance filiale, à défendre la dignité des plus vulnérables et à reconnaître en Marie une mère qui rassemble des peuples divisés en une seule famille dans le Christ.
$desc$),
('saint-lucy-virgin-and-martyr', 'Sainte Lucie, vierge et martyre', $desc$
Sainte Lucie est l'une des premières vierges martyres dont les noms sont rappelés avec un honneur particulier dans la tradition romaine, jeune femme de Syracuse en Sicile dont la fidélité au Christ coûta la vie au temps des persécutions. Sa mémoire est chérie dans toute l'Église depuis l'Antiquité chrétienne.

Son témoignage donne forme à l'idéal de la virginité consacrée et de la foi inébranlable jusqu'à la mort. S'étant vouée tout entière au Christ, elle refusa les compromis qu'on exigeait d'elle et accepta le martyre plutôt que de trahir son amour, devenant un emblème durable de pureté et de courage face à la contrainte.

Selon la tradition, elle souffrit vers l'an 304 durant la persécution de Dioclétien, et sa renommée se répandit assez largement pour que son nom fût inséré dans le canon romain de la messe. Son nom, tiré du mot latin qui signifie lumière, lui attira une riche symbolique, et les légendes l'associant aux yeux et à la vue en firent une patronne des aveugles et de ceux qui souffrent de la vue. Dans de nombreux pays, sa mémoire est devenue une fête de la lumière au cœur de la saison sombre.

Lucie continue d'orienter les croyants vers le Christ, vraie Lumière qu'aucune ténèbre ne peut vaincre. Elle encourage les fidèles à garder allumée la lampe de la foi, à persévérer lorsque la fidélité coûte cher, et à laisser rayonner devant le monde la clarté de la charité.
$desc$),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', 'Saint Jean de la Croix, prêtre et docteur de l''Église', $desc$
Saint Jean de la Croix fut un frère carme espagnol, mystique et poète, dont les écrits comptent parmi les sommets de la littérature spirituelle chrétienne. Avec Thérèse d'Avila il conduisit la réforme de l'ordre du Carmel, et sa profonde doctrine sur la prière et l'union à Dieu lui valut d'être reconnu docteur de l'Église.

Sa doctrine trace le chemin de l'âme vers Dieu à travers la purification et le dépouillement de soi. Par des images d'une force inoubliable, avant tout la « nuit obscure », il décrivit le douloureux détachement de tout attachement par lequel l'âme est préparée à l'union intime avec le Bien-Aimé, enseignant que l'amour authentique passe par la nuit et le dépouillement avant de parvenir à la lumière.

Né en 1542 dans la pauvreté près d'Avila, il entra chez les carmes et embrassa l'appel de Thérèse à une observance plus stricte. Son zèle réformateur suscita une farouche opposition, et il fut emprisonné par ses propres frères à Tolède, où, dans une cruelle réclusion, il composa quelques-uns de ses vers les plus lumineux. De cette épreuve jaillirent des chefs-d'œuvre comme le « Cantique spirituel » et « La Nuit obscure ». Il mourut en 1591 et fut proclamé docteur de l'Église en 1926.

Son enseignement continue de guider ceux qui cherchent les profondeurs de la prière. Il assure les fidèles que les épreuves et la sécheresse de la vie spirituelle ne sont pas des signes d'abandon, mais le moyen même par lequel Dieu attire l'âme vers un amour plus profond et plus pur.
$desc$),
('saint-peter-canisius-priest-and-doctor-of-the-church', 'Saint Pierre Canisius, prêtre et docteur de l''Église', $desc$
Saint Pierre Canisius fut un jésuite néerlandais et l'une des figures les plus influentes de la Réforme catholique dans les pays de langue allemande. Prédicateur, professeur et écrivain infatigable, il fit plus que presque tout autre pour soutenir et renouveler la foi catholique dans des régions bouleversées par les convulsions du seizième siècle.

Sa vie illustre la puissance de l'instruction patiente et de l'enseignement clair en un temps de confusion. Convaincu que l'ignorance de la foi laissait les âmes sans défense, il se consacra à la catéchèse, cherchant à former l'esprit et le cœur des fidèles dans une saine doctrine exprimée avec chaleur et clarté plutôt qu'en simple polémique.

Né à Nimègue en 1521, il fut parmi les premiers à rejoindre la jeune Compagnie de Jésus dans les terres germaniques. Il fonda des collèges, conseilla princes et évêques, prit part au concile de Trente et composa surtout des catéchismes traduits et réimprimés d'innombrables fois, qui façonnèrent l'éducation catholique pour des générations. Il mourut à Fribourg en 1597 et fut canonisé et déclaré docteur de l'Église la même année, en 1925.

Son exemple parle à toute époque où la foi doit se transmettre au milieu de l'indifférence ou de la division. Il rappelle à l'Église qu'un enseignement solide, offert avec charité et confiance, demeure l'un des plus sûrs appuis de la vie chrétienne.
$desc$),
('saint-john-of-kanty-priest', 'Saint Jean de Kenty, prêtre', $desc$
Saint Jean de Kenty, aussi appelé Jean Cantius, fut un prêtre et savant polonais dont on garde le souvenir pour l'union d'une science profonde et d'une charité extraordinaire. Professeur à l'université de Cracovie, il unit la vie de l'esprit à une simplicité et à une générosité qui le firent aimer des pauvres de sa ville.

Sa vie montre que la sainteté et le savoir ne s'opposent pas mais peuvent s'enrichir mutuellement. Renommé pour son enseignement, il le fut plus encore pour son humilité et sa bonté, donnant sa nourriture et ses vêtements aux nécessiteux et traitant chacun avec une patiente courtoisie, de sorte que sa science était couronnée par l'amour.

Né en 1390 à Kęty, dans le sud de la Pologne, il passa la plus grande partie de sa vie liée à l'université de Cracovie, enseignant la théologie et l'Écriture. Les récits de sa générosité se multiplièrent de son vivant et après sa mort, et il devint un patron très aimé de l'université et du peuple polonais. Il mourut en 1473, fut longtemps vénéré localement, et fut canonisé en 1767.

Sa mémoire continue d'unir les valeurs de l'étude et du service. Il offre un modèle particulièrement aux maîtres, aux étudiants et aux savants, leur rappelant que le savoir trouve son accomplissement lorsqu'il est mis au service de Dieu et des pauvres.
$desc$),
('nativity-of-the-lord', 'Nativité du Seigneur', $desc$
La Nativité du Seigneur célèbre le mystère central de la foi chrétienne : le Fils éternel de Dieu prenant chair et naissant de la Vierge Marie à Bethléem. C'est la fête de l'Incarnation, où le Verbe par qui tout a été fait entre dans sa propre création sous les traits d'un enfant sans défense, unissant à jamais la divinité et l'humanité en une seule personne.

Sa signification atteint les profondeurs du mystère du salut. Dans la naissance du Christ, le Dieu invisible se rend visible, l'infini épouse les limites d'une vie humaine, et le ciel s'unit à la terre. Les Pères virent dans cet échange le fondement de l'espérance humaine : Dieu est devenu ce que nous sommes, enseignaient-ils, afin que nous puissions participer à ce qu'il est, notre nature élevée et guérie par son humble abaissement.

La célébration de la naissance du Christ le 25 décembre est attestée à Rome dès le quatrième siècle, sa date liée à la fois à des calculs partant de la fête printanière de l'Annonciation et à l'appropriation chrétienne de la saison du solstice d'hiver pour le vrai Soleil de justice. Dans la tradition romaine, la solennité se déploie en trois messes, celle de la nuit, celle de l'aurore et celle du jour, et elle ouvre une octave de célébration qui porte la joie de la Nativité à travers les jours qui suivent.

La fête convie chaque année le monde à l'émerveillement devant le mystère d'un Dieu fait petit par amour pour nous. Elle appelle les fidèles non seulement à rappeler un événement lointain, mais à accueillir de nouveau le Sauveur qui vient dans la pauvreté et la paix, et à laisser sa venue transformer leur vie.
$desc$),
('saint-stephen-the-first-martyr', 'Saint Étienne, premier martyr', $desc$
Saint Étienne porte le titre honorable de protomartyr, le premier parmi les disciples du Christ à donner sa vie en témoignage de la foi. Sa fête, célébrée au lendemain de Noël, joint la joie de la naissance du Seigneur au prix du discipulat, rapprochement saisissant que l'Église ancienne a délibérément embrassé.

Son témoignage révèle la plénitude du martyre chrétien conformé au Christ lui-même. Rempli de l'Esprit Saint, il proclama l'Évangile avec hardiesse et, en mourant, pardonna à ses persécuteurs et remit son esprit au Seigneur, faisant écho aux paroles mêmes de Jésus crucifié et montrant que la mort du martyr est une participation à la mort du Maître.

Les Actes des Apôtres rapportent qu'Étienne fut l'un des sept choisis pour servir les besoins de la communauté, et que sa prédication puissante suscita une farouche opposition, aboutissant à sa condamnation et à sa mort par lapidation hors de Jérusalem. Le récit note qu'un jeune homme nommé Saul, plus tard l'apôtre Paul, approuvait sa mort, détail lourd de la promesse de la grâce à venir.

Placée dans l'octave de Noël parmi les compagnons du Christ, sa fête rappelle aux fidèles que l'Enfant de Bethléem est né pour donner sa vie, et que ceux qui le suivent doivent être prêts à témoigner à tout prix. Étienne encourage l'Église à un courage imprégné de charité, même envers ses ennemis.
$desc$),
('saint-john-apostle-and-evangelist', 'Saint Jean, apôtre et évangéliste', $desc$
Saint Jean, le disciple bien-aimé, est honoré comme apôtre, évangéliste et, selon une longue tradition, auteur du quatrième Évangile, de trois épîtres et de l'Apocalypse. Sa fête, célébrée dans l'octave de Noël, honore le disciple qui pénétra le plus profondément dans le mystère du Verbe fait chair.

Son témoignage est avant tout un témoignage de l'amour divin. L'Évangile qui porte son nom s'ouvre sur le Verbe éternel qui était auprès de Dieu et qui était Dieu, et ses pages reviennent sans cesse à l'amour de Dieu révélé dans le Christ et à l'amour que les disciples reçoivent l'ordre de partager. La tradition se souvient de lui comme de celui qui reposa sur la poitrine du Seigneur à la Cène et se tint fidèlement au pied de la croix.

Compté parmi les premiers appelés par Jésus, Jean fut, avec son frère Jacques et avec Pierre, témoin des moments clés du ministère du Seigneur. Une tradition ancienne situe ses dernières années à Éphèse, où l'on dit qu'il prit soin de la Mère de Jésus confiée à lui depuis la croix et qu'il vécut jusqu'à un grand âge, mourant enfin de mort naturelle, seul parmi les apôtres.

Sa fête, si proche de Noël, approfondit la contemplation du mystère de l'Incarnation que proclame son Évangile. Il invite les fidèles à cette intimité avec le Christ d'où jaillit sa profonde théologie, et à faire de l'amour de Dieu la mesure de leur propre vie.
$desc$),
('the-holy-innocents-martyrs', 'Les Saints Innocents, martyrs', $desc$
La fête des Saints Innocents commémore les enfants de Bethléem massacrés sur l'ordre du roi Hérode dans sa tentative d'anéantir le Roi nouveau-né. Célébrée au sein des jours joyeux de l'octave de Noël, elle projette l'ombre de la croix sur la crèche, rappelant que la venue du Sauveur fut accueillie dès l'abord par la violence d'un monde apeuré.

L'Église a toujours honoré ces enfants comme des martyrs, bien qu'ils soient morts sans connaître Celui pour qui ils souffrirent. Ils sont vénérés comme ceux qui ont rendu témoignage au Christ non par des paroles mais par leur seul sang, les premiers à mourir à cause de lui, et l'on a vu en eux une image de la grâce librement donnée et de l'innocence unie aux souffrances du Seigneur.

L'Évangile de Matthieu raconte comment Hérode, apprenant des mages la naissance d'un roi, ordonna de tuer les jeunes garçons de Bethléem, tandis que Joseph, averti en songe, fuyait avec l'Enfant et sa Mère en Égypte. Si peu nombreuses qu'aient pu être les victimes de cet obscur village, leur mémoire est gardée avec vénération depuis les premiers temps chrétiens.

Leur fête parle avec une douloureuse actualité à un monde encore marqué par la violence contre les faibles et les innocents. Elle porte les fidèles à la compassion et à la prière pour tous les enfants qui souffrent, et proclame que même les victimes les plus démunies ne sont pas oubliées mais tenues à jamais dans la miséricorde de Dieu.
$desc$),
('saint-thomas-becket-bishop-and-martyr', 'Saint Thomas Becket, évêque et martyr', $desc$
Saint Thomas Becket fut archevêque de Cantorbéry dont le meurtre, dans sa propre cathédrale, bouleversa la chrétienté et fit de lui l'un des martyrs les plus vénérés de l'Église médiévale. Sa mort naquit de sa défense de la liberté de l'Église contre les empiètements du pouvoir royal dans l'Angleterre du douzième siècle.

Son témoignage incarne le devoir du pasteur de garder les droits et la liberté de l'Église, même au prix de sa vie. Naguère chancelier mondain et ami intime du roi, il connut une profonde transformation en devenant archevêque, se rangeant fermement du côté de l'Église et endurant l'exil et le danger plutôt que de céder ce qu'il tenait pour sacré.

Né à Londres vers 1120, Thomas s'éleva haut au service du roi Henri II avant que leur amitié ne tournât à un âpre conflit sur la juridiction et les immunités du clergé. Après des années de lutte et une période d'exil en France, il revint à Cantorbéry où, le 29 décembre 1170, quatre chevaliers du roi l'abattirent devant l'autel. L'horreur du forfait bouleversa l'Europe ; il fut canonisé moins de trois ans plus tard, et son sanctuaire de Cantorbéry devint l'un des plus grands lieux de pèlerinage de la chrétienté.

Sa mémoire demeure un signe de la liberté de l'Église face à l'autorité temporelle. Il continue d'inspirer ceux qui doivent défendre la conscience et les droits de Dieu contre les pressions du pouvoir, et de témoigner que la fidélité peut exiger le prix ultime.
$desc$),
('saint-sylvester-i-pope', 'Saint Sylvestre Ier, pape', $desc$
Saint Sylvestre Ier conduisit l'Église de Rome à travers les décennies décisives où le christianisme passa de la persécution à la faveur publique sous l'empereur Constantin. Son long pontificat coïncida avec une transformation de la place de l'Église dans le monde, et son nom s'est trouvé lié, dans une grande partie de l'Europe, à la clôture de l'année civile.

Son pontificat appartient à l'aube de l'ère de paix qui suivit des siècles de martyre. Il vit s'élever les grandes basiliques romaines, s'épanouir le culte chrétien public et se réunir le premier concile œcuménique, moments où l'Église commença à donner une forme institutionnelle durable à sa vie dans un monde nouvellement favorable.

Sylvestre régna de 314 à 335, dans les années entourant le concile de Nicée en 325, qui affirma la pleine divinité du Fils contre l'erreur arienne. Bien qu'il n'y assistât pas en personne, le concile se tint durant son pontificat et fut marqué par ses légats. Les siècles suivants entourèrent sa figure d'une abondance de légendes, dont le récit apocryphe de la Donation de Constantin, de sorte que le pape historique se dissimule en partie derrière une piété narrative. Il mourut en 335 et fut enseveli sur la Via Salaria.

Sa fête, tombant le dernier jour de l'année, invite à méditer sur le passage du temps et sur la providence qui guide l'Église à travers les âges changeants. En bien des pays, son nom marque la veille de la nouvelle année, moment d'action de grâces pour le passé et de remise confiante de l'avenir à Dieu.
$desc$),
('the-holy-family-of-jesus-mary-and-joseph', 'La Sainte Famille de Jésus, Marie et Joseph', $desc$
La fête de la Sainte Famille honore ensemble Jésus, Marie et Joseph comme le foyer de Nazareth, la famille humaine au sein de laquelle le Fils de Dieu choisit de naître et de grandir. Célébrée dans les jours de Noël, elle attire l'attention sur les années cachées où le Sauveur croissait en sagesse et en grâce sous la garde de sa Mère et de son père nourricier.

Sa signification réside dans la sanctification de la vie familiale elle-même. En prenant place au sein d'un foyer ordinaire, soumis à ses parents et partageant les labeurs et les joies de la vie domestique, le Christ a sanctifié les liens de la famille et fait du foyer de Nazareth un modèle d'amour, d'obéissance et de dévouement mutuel pour tout foyer chrétien.

La dévotion à la Sainte Famille se développa surtout à l'époque moderne, encouragée par les papes comme un remède aux pressions pesant sur la vie familiale. Le pape Léon XIII favorisa cette dévotion, et après une période d'observance plus limitée la fête fut étendue à l'Église universelle par Benoît XV en 1921. Dans la réforme du calendrier, elle fut assignée au dimanche dans l'octave de Noël, ou, les années où aucun dimanche ne tombe dans l'octave, au 30 décembre.

Sa célébration parle avec une force particulière aux défis auxquels sont confrontées les familles d'aujourd'hui. Elle propose le foyer de Nazareth comme exemple et intercesseur, et appelle les familles à devenir des écoles de foi et de charité, où la présence du Christ transforme les tâches ordinaires de la vie quotidienne.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-francis-xavier-priest', 'Sanctus Franciscus Xaverius, presbyter', $desc$
Sanctus Franciscus Xaverius inter maximos in Ecclesiae historia missionarios memoratur, vir nobilis e gente Vasconum qui florentem studiorum curriculum cum vita ad extremos orbis noti fines perlata commutavit. Ignatii de Loyola sociorum primus atque Societatis Iesu conditor, posteris permanens exemplar zeli apostolici factus est, quod novus ordo exprimere studebat.

Vita eius vocationi missionali, quae in corde Evangelii sita est, formam concretam praebet: mandato scilicet eundi et omnes gentes ad discipulatum vocandi. In itineribus indefessis testatus est nullum populum extra amoris salvifici Christi ambitum iacere, atque fidei praeconium a praesentia patienti, a servitio et ab amore eorum ad quos mittitur seiungi non posse.

In Navarra anno 1506 natus, Franciscus Ignatium ut studiosus Parisiis convenit et cum sociis prima vota apud Montem Martyrum anno 1534 nuncupavit. In Orientem sub patrocinio Lusitano missus, in India, praesertim inter piscatores orae Coromandelae, in Moluccis, deinde in Iaponia laboravit, ubi unam ex primis missionibus christianis aperuit. Anno 1552 in insula Sanciano, in conspectu Sinarum quas ingredi cupiebat, obiit. Anno 1622 una cum Ignatio canonizatus, postea missionum patronus declaratus est.

Exemplum eius Ecclesiam pergit vocare ut extra semet ipsam progrediatur, ultra noti solacium. Credentibus in memoriam revocat fidem donum esse communicandum, atque omnem veram evangelizationem ex corde amore Dei incenso et pro aliis effuso nasci.
$desc$),
('saint-john-damascene-priest-and-doctor-of-the-church', 'Sanctus Ioannes Damascenus, presbyter et Ecclesiae doctor', $desc$
Sanctus Ioannes Damascenus ut ultimus ex magnis Ecclesiae Orientalis Patribus atque unus ex theologis eius maxime influentibus veneratur, monachus et presbyter cuius traditionis prioris synthesis diu tam Orienti quam Occidenti pro auctoritate inservivit. Graece ex monastica Palaestinae quiete scribens, conciliorum ac Patrum hereditatem in unum durabile congessit et ordinavit.

Praesertim memoratur ut sacrarum imaginum defensor per acrem controversiam iconoclasticam. Contra eos qui iconum venerationem damnabant, profundam imaginis theologiam in Incarnatione radicatam elaboravit: quoniam enim Deus invisibilis in Christo visibilis factus erat, imagines sanctas depingere et honorare non idololatria erat sed realitatis Verbi carnem facti confessio.

Damasci circa annum 675 in familia christiana insigni quae califatui inserviebat natus, tandem in monasterium Sancti Sabae prope Hierosolymam secessit. Magnum opus eius, «Fons scientiae», in «Expositione fidei orthodoxae» culminat, summa systematica quae theologiam posteriorem, usque ad doctores Occidentis medii aevi, formavit. Circa annum 749 obiit, et papa Leo XIII eum anno 1890 Ecclesiae doctorem proclamavit.

Iconis eius defensio dives manet fons ad meditandum de pulchritudine, de materia et de cultu. Docet creatum et visibile gratiae vehicula fieri posse, atque christianum, imaginem honorantem, ad Eum quem repraesentat sursum trahi.
$desc$),
('saint-nicholas-bishop', 'Sanctus Nicolaus, episcopus', $desc$
Sanctus Nicolaus inter sanctos maxime universaliter dilectos Orientis et Occidentis adnumeratur, per amplius sedecim saecula veneratus, quamquam figura historica sub luxurianti legendarum flore magna ex parte latet. Quod manet est memoria episcopi saeculi quarti cuius liberalitas et pauperum cura nomen eius symbolum caritatis absconditae reddiderunt.

Narrationes de eo veritatem altiorem de amore christiano exprimunt: verum scilicet donum nullam agnitionem quaerere et infirmissimos sublevare gaudere. Celebris narratio de secreto dotium dono tribus egenis puellis, eas a ruina servans, ideale evangelicum eleemosynae in secreto, sub solo Dei aspectu, factae exprimit.

Episcopus Myrae in Lycia fuit, in hodierna Turcia meridionali, aetate Constantini, et traditio eum inter confessores numerat qui in persecutionibus ante Ecclesiae pacem passi sunt. Anno 1087 reliquiae eius Barium in Italiam meridionalem translatae sunt, ubi locus peregrinationis manent. Ex nomine eius Batavo, Sinterklaas, atque ex donandi fama nata est popularis figura Patris Natalicii.

Perennis eius attractio fideles invitat ut sanctum post narrationes populares recuperent. Manet exemplar caritatis episcopalis atque admonitio liberalitatem erga pueros, pauperes et periclitantes ad ipsum cor Evangelii pertinere.
$desc$),
('saint-ambrose-bishop-and-doctor-of-the-church', 'Sanctus Ambrosius, episcopus et Ecclesiae doctor', $desc$
Sanctus Ambrosius una ex praecipuis Ecclesiae saeculi quarti figuris fuit atque unus ex quattuor primis Occidentis Latini doctoribus. Administrator ingeniosus factus pastor, orator et theologus, fidem et cultum Ecclesiae momento decisivo formavit, dum haec e minoritate persecuta ad praesentiam publicam in orbe Romano transibat.

Ministerium eius fortitudinem pastoris exprimit qui libertatem et integritatem Ecclesiae coram potestate terrena defendit. Pressionibus aulae imperialis restitit, orthodoxiam contra arianismum sustinuit, et ipsum imperatorem ad publicam paenitentiam vocavit, docens principem intra Ecclesiam stare, non supra eam.

Circa annum 340 natus, Ambrosius munere praesidis Romani Mediolani fungebatur cum, adhuc catechumenus, a populo anno 374 episcopus acclamatus, festinanter baptizatus et ordinatus est. Ut episcopus abundanter praedicavit et scripsit, hymnorum cantum promovit, et in conversione et baptismo Augustini Hipponensis partes decisivas egit. Anno 397 obiit, et influxus eius in theologiam liturgiamque Latinam durabilis fuit.

Testimonium eius de necessitudine inter fidem et vitam publicam pergit loqui. Pastorem exhibet qui populum suum scientia et eloquentia servit, numquam veritatis et iustitiae exigentias potentium commodo dedens.
$desc$),
('the-immaculate-conception-of-the-blessed-virgin-mary', 'Immaculata Conceptio Beatae Mariae Virginis', $desc$
Immaculata Conceptio singularem gratiam celebrat qua Beata Maria Virgo, ab ipso primo suae existentiae instanti, meritis Iesu Christi ab originali peccato praeservata est. Festum vitae ipsius Mariae initium honorat eamque contemplatur ut sanctissimam filiam Israel, divina gratia paratam ad Verbum carne recipiendum.

In corde eius profunda veritas de gratia et redemptione iacet. Maria extra opus salvificum Christi non stat; potius ab eo excellentissimo modo redimitur, a vulnere peccati praeservata potius quam post lapsum erepta. In ea Ecclesia intuetur quid gratia Dei efficere possit ubi sine reservatione accipitur, atque ipsa fit signum novae creationis iam in Christo exorientis.

Haec persuasio per multa saecula in oratione et meditatione Ecclesiae maturavit atque anno 1854 a papa Pio IX in bulla «Ineffabilis Deus» sollemniter tamquam dogma definita est. Pietas christiana hanc definitionem mox cum testimonio Lapurdensi coniunxit, ubi Bernadetta Soubirous rettulit Dominam apparitionum se Immaculatam Conceptionem appellasse. Oriens et Occidens diuturno tempore omnimodam Mariae sanctitatem cecinerunt, etsi sermo theologicus atque expressio liturgica diverso modo sunt exculti.

Festum fideles invitat ad contemplandam pulchritudinem vitae totius Deo ab initio apertae. In Maria, praeservata et radiante, Ecclesia et originem suam in gratia et destinatum sibi finem prospicit, atque credentes excitantur ut cordis puritatem et plenam voluntati Dei promptitudinem quaerant, quas vita eius perfectissime manifestat.
$desc$),
('saint-juan-diego-cuauhtlatoatzin', 'Sanctus Ioannes Didacus Cuauhtlatoatzin', $desc$
Sanctus Ioannes Didacus locum singularem in historia Ecclesiae Americarum tenet ut humilis indigena cui Virgo Maria apud Tepeyac anno 1531 apparuit. E gente Chichimeca, aetate matura baptizatus, factus est nuntius electus eventus qui totius continentis evangelizationem transformaturus erat.

Vita eius de praedilectione Evangelii erga parvos testatur atque de modo quo Deus magna humilibus committit. In eligendo paupere converso indigena ut confidente, Virgo dignitatem populorum Novi Orbis honoravit atque ex Ioanne Didaco pontem inter culturas fecit, tempore occursus dolorosi et expugnationis.

Secundum traditionem narratam, Virgo eum ad episcopum Mexicanum misit et, in signum, rosas hieme florere et imaginem suam mirabiliter in tilma eius, aspero pallio in quo flores collegerat, apparere fecit. Ultimos annos in oratione et servitio prope sacellum in colle exstructum egit. Diu veneratus, anno 1990 beatificatus est et a papa Ioanne Paulo II anno 2002 canonizatus, primus sanctus indigena Americarum factus.

Memoria eius pergit dignitatem populorum autochthonorum affirmare atque universalitatem vocationis ad sanctitatem. Manet patronus humilium atque admonitio Deum per eos loqui quos mundus neglegit.
$desc$),
('our-lady-of-loreto', 'Beata Maria Virgo Lauretana', $desc$
Beata Maria Virgo Lauretana Beatam Virginem sub titulo cum Sancta Domo coniuncto honorat, domo scilicet Laureti venerata ut focum Sanctae Familiae Nazarethanae. Haec devotio cor dirigit ad vitam absconditam Iesu atque ad domicilium domesticum in quo mysterium Incarnationis explicatum est.

Vis eius spiritualis in sanctificatione domus, vitae familiaris et laboris cotidiani consistit. Dum fideles domum contemplantur quam traditio cum Maria et Annuntiatione conectit, meminerunt Verbum aeternum historiam humanam ingressum esse non solum in maiestate, sed etiam in silentio ordinarii foci. Nazareth ita fit schola humilis oboedientiae, orationis et dilecti servitii.

Secundum longam traditionem, parva domus lapidea exeunte saeculo tertio decimo a Nazareth in Marchiam Anconitanam translata est, narratio postea sermone de angelico vectu expressa; historici etiam sanctuarium cum familia Angeli et cum motu lapidum tempore cruciatarum coniunxerunt. Sanctuarium Litaniis Lauretanis nomen dedit atque latam pietatem marialem fiducia in tutela materna Mariae notatam fovit.

Hoc festum credentes invitat ut proprias domos loca fidei, hospitalitatis et operis recollecti reddant. Sub titulo Lauretano Maria honoratur ut Mater Domini incarnati atque dux omnium qui sanctitatem in ordinario vitae familiaris cotidianaeque cursu quaerunt.
$desc$),
('saint-damasus-i-pope', 'Sanctus Damasus I, papa', $desc$
Sanctus Damasus I papa fuit exeuntis saeculi quarti cuius ministerium strenuum Ecclesiam Romanam momento cardinali firmare adiuvit, dum christianismus ut fides imperii favorita emergebat. Vir eruditus et litterarum patronus, multum fecit ut cultui, memoriae et textibus sacris Ecclesiae formam durabilem daret.

Pontificatus eius pastoralem veritatis et traditionis curam reflectit. Laboravit ut fidem orthodoxam contra haereses persistentes defenderet, ut auctoritatem sedis Romanae firmaret, et ut martyres quorum sanguis urbem sanctificaverat honoraret, ut memoria heroici Ecclesiae praeteriti fidem praesentis nutriret.

Anno 366 inter turbas civiles electus, Damasus usque ad annum 384 regnavit. Secretario suo, Hieronymo, commisit ut recognitionem Scripturarum Latinarum susciperet quae in Vulgatam crescere erat, versionem quae christianismum occidentalem per amplius mille annos formavit. Sepulcra martyrum in catacumbis restauravit et exornavit, elegantibus versibus Latinis ea notans, atque sanctorum venerationem per totam Romam promovit.

Hereditas eius in Scripturis quas Ecclesia per saecula legit atque in perseveranti martyrum veneratione manet. Memoratur ut custos traditionis qui intellexit Ecclesiam vires ad futurum ex fidelitate erga praeteritum haurire.
$desc$),
('our-lady-of-guadalupe', 'Beata Maria Virgo Guadalupensis', $desc$
Beata Maria Virgo Guadalupensis apparitiones Virginis Mariae prope Mexicopolim anno 1531 atque imaginem mirabilem eis coniunctam commemorat, devotionem quae pro innumeris Americarum populis fundamentum spirituale fidei facta est. Pauci tituli mariani tam alte imaginationem religiosam, identitatem et spem totius continentis formaverunt.

Apparitio nuntium teneritudinis, misericordiae et evangelizationis in concreta cultura receptum fert. Virgo sub forma se praebens quae populis autochthonis a conquestu vulneratis loquebatur, propinquitatem maternam manifestavit quae dignitatem eorum honorabat et diversos populos ad Christum trahebat. Imago Guadalupensis signum facta est Evangelium in qualibet gente radices agere posse sine deletione eorum quae in historia populi nobilia sunt.

Secundum traditionem, Maria humili converso Ioanni Didaco in colle Tepeyac apparuit, eum ad episcopum misit et petitionem suam per rosas hiemales atque imaginem in tilma eius impressam confirmavit, quae adhuc in magna basilica in honorem eius exstructa veneratur. Devotio celeriter diffusa est et novum populum christianum in Novo Orbe formare adiuvit. Ipsa deinde invocata est ut Patrona Americarum atque ut mater pauperibus, nascituris omnibusque sub pallio suo refugium quaerentibus propinqua.

Festum eius fons spei manet longe ultra Mexicopolim. Fideles vocat ut Evangelium filiali fiducia accipiant, vulnerabilium dignitatem defendant, et in Maria matrem agnoscant quae populos divisos in unam familiam in Christo congregat.
$desc$),
('saint-lucy-virgin-and-martyr', 'Sancta Lucia, virgo et martyr', $desc$
Sancta Lucia una est ex primis virginibus martyribus quarum nomina peculiari honore in traditione Romana memorantur, iuvenis mulier Syracusana in Sicilia cuius fidelitas erga Christum vitam tempore persecutionum constitit. Memoria eius in tota Ecclesia inde ab antiquitate christiana dilecta est.

Testimonium eius ideale virginitatis consecratae et fidei constantis usque ad mortem format. Cum se totam Christo devovisset, compromissa a se exacta recusavit et martyrium potius accepit quam amorem suum proderet, emblema durabile puritatis et fortitudinis coram coactione facta.

Secundum traditionem, circa annum 304 in persecutione Diocletiani passa est, et fama eius satis late diffusa est ut nomen eius in Canonem Romanum Missae insereretur. Nomen eius, e verbo Latino quod lucem significat ductum, divitem symbolismum ei attraxit, et legendae eam cum oculis et visu coniungentes patronam caecorum et visu laborantium fecerunt. In multis regionibus memoria eius festivitas lucis in tempore anni obscuri facta est.

Lucia pergit credentes ad Christum, veram Lucem quam nullae tenebrae vincunt, dirigere. Fideles hortatur ut lampadem fidei ardentem servent, in pretiosa fidelitate perseverent, et splendorem caritatis coram mundo elucescere sinant.
$desc$),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', 'Sanctus Ioannes a Cruce, presbyter et Ecclesiae doctor', $desc$
Sanctus Ioannes a Cruce frater Carmelita Hispanus, mysticus et poeta fuit, cuius scripta inter culmina litterarum spiritualium christianarum adnumerantur. Una cum Teresia Abulensi reformationem ordinis Carmeli duxit, et profunda eius doctrina de oratione et de unione cum Deo ei ut Ecclesiae doctor agnitionem meruit.

Doctrina eius iter animae ad Deum per purificationem et sui exinanitionem designat. Imaginibus vi inoblivioso, praesertim «nocte obscura», dolorosam omnis affectus abscissionem descripsit qua anima ad intimam cum Dilecto unionem paratur, docens verum amorem per noctem et abnegationem transire antequam ad lucem perveniat.

Anno 1542 in paupertate prope Abulam natus, Carmelitas ingressus est et vocationem Teresiae ad strictiorem observantiam amplexus est. Zelus eius reformans acrem oppositionem excitavit, et a propriis fratribus Toleti in carcerem coniectus est, ubi, in crudeli reclusione, nonnullos ex luminosissimis versibus suis composuit. Ex hac experientia opera praeclara ut «Canticum spirituale» et «Nox obscura» fluxerunt. Anno 1591 obiit et anno 1926 Ecclesiae doctor declaratus est.

Doctrina eius pergit dirigere eos qui orationis profunditates quaerunt. Fideles securos reddit tribulationes et ariditatem vitae spiritualis non signa derelictionis esse, sed ipsum medium quo Deus animam in altiorem purioremque amorem trahit.
$desc$),
('saint-peter-canisius-priest-and-doctor-of-the-church', 'Sanctus Petrus Canisius, presbyter et Ecclesiae doctor', $desc$
Sanctus Petrus Canisius Iesuita Batavus fuit atque una ex maxime influentibus Reformationis Catholicae in terris linguae Germanicae figuris. Praedicator, professor et scriptor indefessus, plus quam fere alius quisquam fecit ut fidem catholicam in regionibus convulsionibus saeculi sedecimi agitatis sustineret et renovaret.

Vita eius potentiam patientis institutionis et clarae doctrinae tempore confusionis illustrat. Persuasus ignorantiam fidei animas indefensas relinquere, se catechesi dedidit, quaerens mentem et cor fidelium in sana doctrina formare quae cum calore et claritate potius quam mera controversia exprimebatur.

Neomagi anno 1521 natus, inter primos fuit qui iuvenem Societatem Iesu in terris Germanicis ingressi sunt. Collegia condidit, principes et episcopos consuluit, Concilio Tridentino interfuit, et praesertim catechismos composuit qui innumeris vicibus translati et iterum impressi sunt, educationem catholicam per generationes formantes. Friburgi anno 1597 obiit et eodem anno 1925 simul canonizatus et Ecclesiae doctor declaratus est.

Exemplum eius omni aetati loquitur in qua fides inter indifferentiam vel divisionem tradenda est. Ecclesiae in memoriam revocat solidam doctrinam, cum caritate et fiducia oblatam, unum ex tutissimis vitae christianae fulcris manere.
$desc$),
('saint-john-of-kanty-priest', 'Sanctus Ioannes Cantius, presbyter', $desc$
Sanctus Ioannes Cantius presbyter et vir doctus Polonus fuit qui ob coniunctionem profundae eruditionis cum extraordinaria caritate memoratur. Professor in Universitate Cracoviensi, vitam mentis cum simplicitate et liberalitate coniunxit quae eum pauperibus urbis suae carum reddiderunt.

Vita eius ostendit sanctitatem et doctrinam non adversari sed mutuo se ditare posse. Ob doctrinam suam clarus, ob humilitatem et bonitatem clarior adhuc fuit, cibum et vestem suam egentibus donans et unumquemque patienti comitate tractans, ita ut scientia eius amore coronaretur.

Anno 1390 apud Kęty in Polonia meridionali natus, maiorem vitae partem cum Universitate Cracoviensi coniunctam egit, theologiam et Scripturam docens. Narrationes de liberalitate eius vivo et mortuo multiplicatae sunt, atque patronus valde dilectus Universitatis et populi Poloni factus est. Anno 1473 obiit, diu localiter veneratus, et anno 1767 canonizatus est.

Memoria eius pergit valores studii et servitii coniungere. Exemplar praebet praesertim magistris, studiosis et viris doctis, eis in memoriam revocans scientiam complementum suum invenire cum Deo et pauperibus inservit.
$desc$),
('nativity-of-the-lord', 'Nativitas Domini', $desc$
Nativitas Domini centrale fidei christianae mysterium celebrat: Filium aeternum Dei carnem sumentem et ex Virgine Maria in Bethlehem natum. Est festum Incarnationis, in quo Verbum per quod omnia facta sunt propriam creationem ingreditur sub specie infantis inermis, divinitatem et humanitatem in una persona in perpetuum coniungens.

Significatio eius ad profunditates mysterii salutis pertingit. In nativitate Christi Deus invisibilis visibilis fit, infinitum limites humanae vitae amplectitur, et caelum terrae coniungitur. Patres in hoc commercio fundamentum spei humanae viderunt: Deus factus est quod nos sumus, docebant, ut nos participes fieri possimus eius quod ipse est, natura nostra per humilem eius descensum elevata et sanata.

Celebratio nativitatis Christi die 25 decembris Romae inde a saeculo quarto attestatur, data eius tam computationibus a verno festo Annuntiationis ductis quam christiana appropriatione temporis solstitii hiemalis pro vero Sole iustitiae coniuncta. In traditione Romana sollemnitas per tres Missas, in nocte, in aurora et in die, explicatur, et octavam celebrationis aperit quae gaudium Nativitatis per dies sequentes portat.

Festum quotannis mundum ad admirationem coram mysterio Dei propter amorem nostri parvi facti convocat. Fideles vocat non solum ut eventum longinquum in memoriam revocent, sed ut Salvatorem qui in paupertate et pace venit denuo suscipiant, atque adventum eius vitam suam transformare sinant.
$desc$),
('saint-stephen-the-first-martyr', 'Sanctus Stephanus, Protomartyr', $desc$
Sanctus Stephanus honorabilem titulum protomartyris fert, primi inter Christi sectatores qui vitam suam in testimonium fidei dedit. Festum eius, postridie Natalis actum, gaudium nativitatis Domini cum discipulatus pretio coniungit, admirabili accostatione quam antiqua Ecclesia consulto amplexa est.

Testimonium eius plenitudinem martyrii christiani ipsi Christo conformati revelat. Spiritu Sancto plenus, Evangelium audacter praedicavit et, moriens, persecutoribus ignovit et spiritum suum Domino commendavit, ipsa verba Iesu crucifixi resonans et ostendens martyris mortem participationem esse mortis Magistri.

Actus Apostolorum narrant Stephanum unum ex septem electis fuisse ad necessitatibus communitatis serviendum, et potentem eius praedicationem acrem oppositionem excitasse, ad condemnationem eius et mortem per lapidationem extra Hierosolymam ducentem. Narratio notat iuvenem nomine Saulum, postea apostolum Paulum, morti eius adfuisse consentientem, particula promissione gratiae venturae gravida.

In octava Natalis inter Christi comites collocatum, festum eius fideles in memoriam revocat Infantem Bethlehemiticum natum esse ut vitam suam daret, et eos qui eum sequuntur paratos esse debere ad testimonium omni pretio reddendum. Stephanus Ecclesiam hortatur ad fortitudinem caritate imbutam, etiam erga inimicos.
$desc$),
('saint-john-apostle-and-evangelist', 'Sanctus Ioannes, Apostolus et evangelista', $desc$
Sanctus Ioannes, discipulus dilectus, ut apostolus, evangelista et, secundum longam traditionem, auctor quarti Evangelii, trium epistularum et Apocalypsis honoratur. Festum eius, in octava Natalis actum, discipulum celebrat qui in mysterium Verbi carnem facti altissime penetravit.

Testimonium eius ante omnia testimonium amoris divini est. Evangelium quod nomen eius fert in Verbo aeterno aperit quod apud Deum erat et Deus erat, et paginae eius identidem ad amorem Dei in Christo revelatum et ad amorem quem discipuli communicare iubentur redeunt. Traditio eum meminit ut illum qui super pectus Domini in cena recubuit et sub cruce fideliter stetit.

Inter primos a Iesu vocatos numeratus, Ioannes, cum fratre Iacobo et cum Petro, testis fuit praecipuorum ministerii Domini momentorum. Antiqua traditio ultimos annos eius Ephesi collocat, ubi Matrem Iesu sibi ex cruce commissam curasse et ad magnam aetatem vixisse dicitur, tandem morte naturali obiens, solus inter apostolos.

Festum eius, Natali tam proximum, contemplationem mysterii Incarnationis quod Evangelium eius proclamat approfundat. Fideles ad illam cum Christo intimitatem invitat ex qua profunda eius theologia fluxit, et ad amorem Dei mensuram vitae propriae faciendam.
$desc$),
('the-holy-innocents-martyrs', 'Sancti Innocentes, martyres', $desc$
Festum Sanctorum Innocentium pueros Bethlehemiticos commemorat qui iussu regis Herodis in conatu Regem recens natum perdendi occisi sunt. In laetis octavae Natalis diebus actum, umbram crucis super praesepe iacit, in memoriam revocans adventum Salvatoris a principio violentia mundi timentis exceptum esse.

Ecclesia hos pueros semper ut martyres honoravit, quamquam sine cognitione Eius pro quo passi sunt mortui sunt. Venerantur ut ii qui Christo testimonium reddiderunt non verbis sed solo sanguine suo, primi propter eum morientes, et in eis visa est imago gratiae libere datae et innocentiae passionibus Domini unitae.

Evangelium Matthaei narrat quomodo Herodes, a magis regis recens nati nativitatem discens, pueros Bethlehemiticos occidi iusserit, dum Ioseph, in somnio monitus, cum Infante et Matre eius in Aegyptum fugeret. Quantulaecumque fuerint victimae illius obscuri vici, memoria eorum cum veneratione inde a primis christianis temporibus servatur.

Festum eorum dolorosa actualitate loquitur mundo adhuc violentia contra infirmos et innocentes signato. Fideles ad misericordiam et ad orationem pro omnibus pueris patientibus movet, et proclamat etiam infirmissimas victimas non oblivioni tradi sed in perpetuum in misericordia Dei teneri.
$desc$),
('saint-thomas-becket-bishop-and-martyr', 'Sanctus Thomas Becket, episcopus et martyr', $desc$
Sanctus Thomas Becket archiepiscopus Cantuariensis fuit cuius caedes, in propria cathedrali, christianitatem perturbavit et eum unum ex maxime veneratis Ecclesiae medievalis martyribus fecit. Mors eius ex defensione libertatis Ecclesiae contra regiae potestatis incursiones in Anglia saeculi duodecimi nata est.

Testimonium eius officium pastoris incarnat iura et libertatem Ecclesiae custodiendi, etiam vitae pretio. Olim cancellarius mundanus et regis amicus intimus, profundam mutationem archiepiscopus factus subiit, se firmiter ex parte Ecclesiae collocans et exsilium periculumque potius ferens quam quod sacrum habebat cedens.

Londini circa annum 1120 natus, Thomas alte in servitio regis Henrici II ascendit antequam amicitia eorum in acrem conflictum de iurisdictione et immunitatibus cleri verteretur. Post annos luctae et periodum exsilii in Gallia, Cantuariam rediit ubi, die 29 decembris 1170, quattuor milites regis eum ante altare deiecerunt. Horror facinoris Europam perculit; intra tres annos canonizatus est, et sacellum eius Cantuariense unum ex maximis christianitatis peregrinationis locis factum est.

Memoria eius signum libertatis Ecclesiae coram auctoritate terrena manet. Pergit eos inspirare qui conscientiam et iura Dei contra potestatis pressiones defendere debent, et testari fidelitatem ultimum pretium exigere posse.
$desc$),
('saint-sylvester-i-pope', 'Sanctus Silvester I, papa', $desc$
Sanctus Silvester I Ecclesiam Romanam per momentosa decennia duxit in quibus christianismus a persecutione ad publicum favorem sub imperatore Constantino transiit. Longus eius pontificatus cum transformatione loci Ecclesiae in mundo coincidit, et nomen eius, in magna Europae parte, cum clausura anni civilis coniunctum est.

Pontificatus eius ad auroram aetatis pacis post saecula martyrii pertinet. Vidit magnas basilicas Romanas exsurgere, cultum christianum publicum florere et primum concilium oecumenicum congregari, momenta in quibus Ecclesia formam institutionalem durabilem vitae suae in mundo noviter favente dare coepit.

Silvester ab anno 314 ad annum 335 regnavit, in annis concilium Nicaenum anno 325 circumdantibus, quod plenam divinitatem Filii contra errorem arianum affirmavit. Quamquam ipse ei non interfuit, concilium in pontificatu eius habitum est et a legatis eius signatum. Sequentia saecula figuram eius abundantia legendarum circumdederunt, inter quas apocrypha narratio Donationis Constantini, ita ut papa historicus partim post piam narrationem lateat. Anno 335 obiit et in Via Salaria sepultus est.

Festum eius, in ultimo anni die cadens, invitat ad meditandum de temporis transitu et de providentia quae Ecclesiam per mutantes aetates dirigit. In multis terris nomen eius vigiliam novi anni notat, momentum gratiarum actionis pro praeterito et fiducialis futuri Deo commendationis.
$desc$),
('the-holy-family-of-jesus-mary-and-joseph', 'Sancta Familia Iesu, Mariae et Ioseph', $desc$
Festum Sanctae Familiae Iesum, Mariam et Ioseph simul ut focum Nazarethanum honorat, familiam humanam intra quam Filius Dei nasci et educari elegit. In diebus Natalis celebratum, attentionem ad absconditos annos vertit in quibus Salvator in sapientia et gratia sub cura Matris et patris nutricii crescebat.

Significatio eius in ipsa vitae familiaris sanctificatione iacet. Christus, locum intra focum ordinarium sumens, parentibus subiectus et laborum gaudiorumque vitae domesticae particeps, familiae vincula sanctificavit et ex Nazarethano foco exemplar amoris, oboedientiae et mutuae devotionis pro omni foco christiano fecit.

Devotio erga Sanctam Familiam praesertim aetate moderna crevit, a pontificibus ut remedium pressionibus vitae familiari incumbentibus incitata. Papa Leo XIII devotionem fovit, et post periodum observantiae limitatioris festum a Benedicto XV anno 1921 ad Ecclesiam universalem extensum est. In calendarii reformatione dominicae intra octavam Natalis assignatum est, vel, annis quibus nulla dominica intra octavam cadit, diei 30 decembris.

Celebratio eius peculiari vi provocationibus quibus familiae hodiernae obiciuntur loquitur. Focum Nazarethanum ut exemplar et intercessorem proponit, et familias vocat ut scholae fidei et caritatis fiant, ubi praesentia Christi ordinaria cotidianae vitae munera transformat.
$desc$)
) AS x(slug, name, description)
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


INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-francis-xavier-priest', $desc$
In the Roman General Calendar, Saint Francis Xavier is celebrated on December 3 as an obligatory memorial with white vestments. His observance places one of the Church's great missionary saints before the faithful at the beginning of Advent and underscores the missionary horizon of Christian discipleship.
$desc$),
('saint-john-damascene-priest-and-doctor-of-the-church', $desc$
In the Roman General Calendar, Saint John Damascene is observed on December 4 as an optional memorial with white vestments. The present calendar preserves his witness as monk, priest, and doctor while leaving room for the Advent weekday liturgy that often shapes the spiritual tone of these days.
$desc$),
('saint-nicholas-bishop', $desc$
In the Roman General Calendar, Saint Nicholas is celebrated on December 6 as an optional memorial with white vestments. The observance is simple in rank, yet it readily supports pastoral emphasis on Christian generosity, care for children, and works of mercy.
$desc$),
('saint-ambrose-bishop-and-doctor-of-the-church', $desc$
In the Roman General Calendar, Saint Ambrose is kept on December 7 as an obligatory memorial with white vestments. Positioned on the eve of the Immaculate Conception, his celebration regularly appears in Advent as a strong witness to episcopal courage, doctrinal clarity, and sacred preaching.
$desc$),
('saint-juan-diego-cuauhtlatoatzin', $desc$
In the Roman General Calendar, Saint Juan Diego Cuauhtlatoatzin is observed on December 9 as an optional memorial with white vestments. His inclusion in the universal calendar is relatively recent and reflects the wider Church's recognition of the evangelizing significance of Tepeyac and of indigenous holiness in the Americas.
$desc$),
('our-lady-of-loreto', $desc$
In the Roman General Calendar, Our Lady of Loreto is observed on December 10 as an optional memorial with white vestments. Pope Francis extended this observance to the universal calendar in 2019, highlighting the spiritual value of Nazareth, the Holy House tradition, and the sanctification of home and travel.
$desc$),
('saint-damasus-i-pope', $desc$
In the Roman General Calendar, Saint Damasus I is kept on December 11 as an optional memorial with white vestments. The celebration keeps his memory within the Advent season as a Roman pope closely linked with the Vulgate, the martyrs, and the shaping of the Church's liturgical memory.
$desc$),
('our-lady-of-guadalupe', $desc$
In the Roman General Calendar, Our Lady of Guadalupe is celebrated on December 12 as an optional memorial with white vestments. While the observance is modest in the universal calendar, it carries exceptional pastoral weight in the Americas and readily allows the liturgy to acknowledge Mary under her Guadalupan title and patronage.
$desc$),
('saint-lucy-virgin-and-martyr', $desc$
In the Roman General Calendar, Saint Lucy is kept on December 13 as an obligatory memorial with red vestments. Within Advent her celebration gives liturgical prominence to an early virgin martyr whose witness to Christ is marked in the present calendar by the color of martyrdom.
$desc$),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', $desc$
In the Roman General Calendar, Saint John of the Cross is celebrated on December 14 as an obligatory memorial with white vestments. His observance provides a notable Advent meeting point between the Church's expectation of the Lord and one of the most profound teachers of contemplative purification and divine union.
$desc$),
('saint-peter-canisius-priest-and-doctor-of-the-church', $desc$
In the Roman General Calendar, Saint Peter Canisius is observed on December 21 as an optional memorial with white vestments. Falling within the intense final days of Advent preparation, the memorial may be celebrated where his catechetical and Jesuit legacy has particular resonance.
$desc$),
('saint-john-of-kanty-priest', $desc$
In the Roman General Calendar, Saint John of Kanty is observed on December 23 as an optional memorial with white vestments. So near the immediate preparation for Christmas, the celebration remains light and easily yields to pastoral priorities while still preserving his memory as a priest, scholar, and friend of the poor.
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
('saint-francis-xavier-priest', $desc$
Dans le calendrier romain général, saint François Xavier est célébré le 3 décembre comme mémoire obligatoire, avec la couleur blanche. Son observance place au début de l'Avent l'une des grandes figures missionnaires de l'Église et souligne l'horizon missionnaire propre à la vie chrétienne.
$desc$),
('saint-john-damascene-priest-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, saint Jean Damascène est célébré le 4 décembre comme mémoire facultative, avec la couleur blanche. Le calendrier actuel garde son témoignage de moine, de prêtre et de docteur tout en laissant place à la liturgie fériale de l'Avent, qui marque souvent fortement ces jours.
$desc$),
('saint-nicholas-bishop', $desc$
Dans le calendrier romain général, saint Nicolas est célébré le 6 décembre comme mémoire facultative, avec la couleur blanche. D'un rang simple dans le calendrier universel, cette observance se prête volontiers à une mise en valeur pastorale de la générosité chrétienne, du soin des enfants et des œuvres de miséricorde.
$desc$),
('saint-ambrose-bishop-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, saint Ambroise est célébré le 7 décembre comme mémoire obligatoire, avec la couleur blanche. Située à la veille de l'Immaculée Conception, sa célébration revient chaque Avent comme un témoignage vigoureux de courage épiscopal, de clarté doctrinale et de prédication sacrée.
$desc$),
('saint-juan-diego-cuauhtlatoatzin', $desc$
Dans le calendrier romain général, saint Juan Diego Cuauhtlatoatzin est célébré le 9 décembre comme mémoire facultative, avec la couleur blanche. Son inscription au calendrier universel est relativement récente et manifeste la reconnaissance par l'Église entière de la portée évangélisatrice de Tepeyac et de la sainteté autochtone dans les Amériques.
$desc$),
('our-lady-of-loreto', $desc$
Dans le calendrier romain général, Notre-Dame de Lorette est célébrée le 10 décembre comme mémoire facultative, avec la couleur blanche. Le pape François a étendu cette observance au calendrier universel en 2019, en mettant en lumière la valeur spirituelle de Nazareth, de la tradition de la Sainte Maison et de la sanctification du foyer comme du voyage.
$desc$),
('saint-damasus-i-pope', $desc$
Dans le calendrier romain général, saint Damase Ier est célébré le 11 décembre comme mémoire facultative, avec la couleur blanche. La célébration maintient sa mémoire dans le temps de l'Avent comme celle d'un pape romain étroitement lié à la Vulgate, aux martyrs et à la formation de la mémoire liturgique de l'Église.
$desc$),
('our-lady-of-guadalupe', $desc$
Dans le calendrier romain général, Notre-Dame de Guadalupe est célébrée le 12 décembre comme mémoire facultative, avec la couleur blanche. Si son rang demeure modeste dans le calendrier universel, cette observance possède un poids pastoral exceptionnel dans les Amériques et permet volontiers à la liturgie de nommer Marie sous son titre et son patronage guadalupéens.
$desc$),
('saint-lucy-virgin-and-martyr', $desc$
Dans le calendrier romain général, sainte Lucie est célébrée le 13 décembre comme mémoire obligatoire, avec la couleur rouge. Au cœur de l'Avent, cette célébration donne une place liturgique marquée à une jeune martyre dont le témoignage au Christ est signalé dans le calendrier actuel par la couleur du martyre.
$desc$),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, saint Jean de la Croix est célébré le 14 décembre comme mémoire obligatoire, avec la couleur blanche. Son observance offre en Avent un point de rencontre significatif entre l'attente du Seigneur et l'enseignement d'un grand maître de la purification contemplative et de l'union divine.
$desc$),
('saint-peter-canisius-priest-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, saint Pierre Canisius est célébré le 21 décembre comme mémoire facultative, avec la couleur blanche. Placée dans les jours les plus intenses de la préparation immédiate à Noël, sa mémoire peut être retenue là où son héritage catéchétique et jésuite possède une résonance particulière.
$desc$),
('saint-john-of-kanty-priest', $desc$
Dans le calendrier romain général, saint Jean de Kenty est célébré le 23 décembre comme mémoire facultative, avec la couleur blanche. Si près de la préparation immédiate de Noël, la célébration demeure légère et cède aisément le pas aux priorités pastorales, tout en conservant la mémoire d'un prêtre, savant et ami des pauvres.
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
('saint-francis-xavier-priest', $desc$
In Calendario Romano generali, Sanctus Franciscus Xaverius die 3 decembris ut memoria obligatoria, colore albo, celebratur. Haec observantia unum ex magnis missionariis Ecclesiae in initio Adventus fidelibus proponit atque missionarium christianae vitae prospectum illustrat.
$desc$),
('saint-john-damascene-priest-and-doctor-of-the-church', $desc$
In Calendario Romano generali, Sanctus Ioannes Damascenus die 4 decembris ut memoria ad libitum, colore albo, celebratur. Calendarium hodiernum testimonium eius ut monachi, presbyteri et doctoris servat, simul tamen locum relinquit liturgiae ferialis Adventus, quae his diebus saepe praevalet.
$desc$),
('saint-nicholas-bishop', $desc$
In Calendario Romano generali, Sanctus Nicolaus die 6 decembris ut memoria ad libitum, colore albo, celebratur. Quamvis simplex gradu sit, observantia facile occasionem praebet ad liberalitatem christianam, curam puerorum et opera misericordiae pastoraliter extollenda.
$desc$),
('saint-ambrose-bishop-and-doctor-of-the-church', $desc$
In Calendario Romano generali, Sanctus Ambrosius die 7 decembris ut memoria obligatoria, colore albo, celebratur. Vigiliae Immaculatae Conceptionis proxime adiacens, eius celebratio per Adventum frequenter recurrit ut vehemens testimonium fortitudinis episcopalis, claritatis doctrinalis et sacrae praedicationis.
$desc$),
('saint-juan-diego-cuauhtlatoatzin', $desc$
In Calendario Romano generali, Sanctus Ioannes Didacus Cuauhtlatoatzin die 9 decembris ut memoria ad libitum, colore albo, celebratur. Eius receptio in calendario universali satis recens est atque ostendit Ecclesiam latius agnoscere momentum evangelizationis Tepeyac et sanctitatis indigenae in Americis.
$desc$),
('our-lady-of-loreto', $desc$
In Calendario Romano generali, Beata Maria Virgo Lauretana die 10 decembris ut memoria ad libitum, colore albo, celebratur. Hanc observantiam papa Franciscus anno 2019 ad calendarium universale extendit, ut valor spiritualis Nazareth, traditionis Sanctae Domus, atque sanctificatio domus et itineris clarius emergerent.
$desc$),
('saint-damasus-i-pope', $desc$
In Calendario Romano generali, Sanctus Damasus I die 11 decembris ut memoria ad libitum, colore albo, celebratur. Haec celebratio memoriam eius intra tempus Adventus servat tamquam papae Romani Vulgatae, martyribus et formationi memoriae liturgicae Ecclesiae arcte coniuncti.
$desc$),
('our-lady-of-guadalupe', $desc$
In Calendario Romano generali, Beata Maria Virgo Guadalupensis die 12 decembris ut memoria ad libitum, colore albo, celebratur. Quamvis in calendario universali modicum gradum obtineat, haec observantia in Americis pondus pastorale praeclarum habet et liturgiae libenter sinit Mariam sub titulo patronatuque Guadalupensi nominare.
$desc$),
('saint-lucy-virgin-and-martyr', $desc$
In Calendario Romano generali, Sancta Lucia die 13 decembris ut memoria obligatoria, colore rubro, celebratur. In ipso Adventu haec observantia liturgice eminenter proponit iuvenem martyrem cuius testimonium Christi in calendario hodierno colore martyrii signatur.
$desc$),
('saint-john-of-the-cross-priest-and-doctor-of-the-church', $desc$
In Calendario Romano generali, Sanctus Ioannes a Cruce die 14 decembris ut memoria obligatoria, colore albo, celebratur. Eius observantia notabilem in Adventu coniunctionem praebet inter exspectationem Domini et doctrinam unius ex profundissimis magistris purificationis contemplativae atque divinae unionis.
$desc$),
('saint-peter-canisius-priest-and-doctor-of-the-church', $desc$
In Calendario Romano generali, Sanctus Petrus Canisius die 21 decembris ut memoria ad libitum, colore albo, celebratur. Cum in intensissimis diebus immediatae praeparationis ad Natalem incidat, memoria celebrari potest ubi hereditas eius catechetica et Iesuitica peculiarem resonantiam habet.
$desc$),
('saint-john-of-kanty-priest', $desc$
In Calendario Romano generali, Sanctus Ioannes Cantius die 23 decembris ut memoria ad libitum, colore albo, celebratur. Tam prope immediatam ad Natalem praeparationem, celebratio levis manet et prioritates pastorales facile cedit, dum memoriam presbyteri, doctoris et amici pauperum tamen servat.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('nativity-of-the-lord', $desc$
In the Roman General Calendar, the Nativity of the Lord is kept on December 25 as the second-ranking solemnity of the year after Easter, with white vestments, and it opens an octave of eight days during which every day shares the solemn dignity of Christmas itself. The day is marked by three distinct Masses, of the night, the dawn, and the day, each with its own proper texts, and it stands as the fixed pole around which the whole Christmas season, from the Vigil to the Baptism of the Lord, is organized.
$desc$),
('saint-stephen-the-first-martyr', $desc$
In the Roman General Calendar, Saint Stephen is celebrated on December 26, the second day within the Octave of Christmas, with red vestments as befits a martyr, even while the joyful festal rank of the octave is retained. His feast is one of only three days within the Christmas octave, together with Saint John and the Holy Innocents, that are kept as distinct feasts of companions of the newborn Christ rather than as generic Christmas weekdays.
$desc$),
('saint-john-apostle-and-evangelist', $desc$
In the Roman General Calendar, Saint John is celebrated on December 27, the third day of the Octave of Christmas, with white vestments, immediately after the feast of Saint Stephen. Of the three companions of Christ commemorated within the octave, his alone is not that of a martyr, since ancient tradition holds that he alone among the apostles died a natural death.
$desc$),
('the-holy-innocents-martyrs', $desc$
In the Roman General Calendar, the Holy Innocents are commemorated on December 28, the fourth day of the Octave of Christmas, with red vestments recalling their martyrdom, though the Gloria and the joyful tone proper to the octave are kept. Their feast completes the sequence of the three companions of the Christmas octave and gives liturgical voice to the suffering of the innocent within the very days of the Church's greatest joy.
$desc$),
('saint-thomas-becket-bishop-and-martyr', $desc$
In the Roman General Calendar, Saint Thomas Becket is observed on December 29, the fifth day of the Octave of Christmas, as an optional memorial with red vestments. Falling within the days that follow the principal companions of the octave, his commemoration may be kept where devotion to this English martyr-bishop is particularly strong, without displacing the ordinary octave liturgy.
$desc$),
('saint-sylvester-i-pope', $desc$
In the Roman General Calendar, Saint Sylvester I is observed on December 31, the last day of the civil year and the seventh day of the Octave of Christmas, as an optional memorial with white vestments. In many places his feast is associated with liturgies of thanksgiving for the year now ending, celebrated within the continuing festal atmosphere of the Christmas octave.
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
('nativity-of-the-lord', $desc$
Dans le calendrier romain général, la Nativité du Seigneur est célébrée le 25 décembre comme la deuxième solennité de l'année après Pâques, avec la couleur blanche, et ouvre une octave de huit jours dont chaque journée partage la dignité solennelle de Noël lui-même. Le jour comporte trois messes distinctes, de la nuit, de l'aurore et du jour, chacune avec ses textes propres, et il constitue le pôle fixe autour duquel s'organise tout le temps de Noël, de la Vigile jusqu'au Baptême du Seigneur.
$desc$),
('saint-stephen-the-first-martyr', $desc$
Dans le calendrier romain général, saint Étienne est célébré le 26 décembre, deuxième jour de l'octave de Noël, avec la couleur rouge propre aux martyrs, tout en conservant le rang festif de l'octave. Sa fête est l'une des trois seules, avec saint Jean et les Saints Innocents, à être célébrées dans l'octave de Noël comme fêtes distinctes des compagnons du Christ nouveau-né plutôt que comme simples jours de l'octave.
$desc$),
('saint-john-apostle-and-evangelist', $desc$
Dans le calendrier romain général, saint Jean est célébré le 27 décembre, troisième jour de l'octave de Noël, avec la couleur blanche, immédiatement après la fête de saint Étienne. Parmi les trois compagnons du Christ commémorés dans l'octave, il est le seul à ne pas être un martyr, la tradition ancienne rapportant qu'il est le seul apôtre à être mort de mort naturelle.
$desc$),
('the-holy-innocents-martyrs', $desc$
Dans le calendrier romain général, les Saints Innocents sont commémorés le 28 décembre, quatrième jour de l'octave de Noël, avec la couleur rouge rappelant leur martyre, tout en gardant le Gloria et le ton joyeux propre à l'octave. Leur fête achève la série des trois compagnons de l'octave de Noël et donne une voix liturgique à la souffrance des innocents au cœur même des jours de la plus grande joie de l'Église.
$desc$),
('saint-thomas-becket-bishop-and-martyr', $desc$
Dans le calendrier romain général, saint Thomas Becket est célébré le 29 décembre, cinquième jour de l'octave de Noël, comme mémoire facultative, avec la couleur rouge. Située après les principaux compagnons de l'octave, sa mémoire peut être retenue là où la dévotion à cet évêque martyr anglais est particulièrement vive, sans déplacer la liturgie ordinaire de l'octave.
$desc$),
('saint-sylvester-i-pope', $desc$
Dans le calendrier romain général, saint Sylvestre Ier est célébré le 31 décembre, dernier jour de l'année civile et septième jour de l'octave de Noël, comme mémoire facultative, avec la couleur blanche. En de nombreux lieux, sa fête est associée à des liturgies d'action de grâce pour l'année qui s'achève, célébrées dans l'atmosphère festive toujours vivante de l'octave de Noël.
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
('nativity-of-the-lord', $desc$
In Calendario Romano generali, Nativitas Domini die 25 decembris celebratur ut secunda anni sollemnitas post Pascha, colore albo, et octavam octo dierum aperit, quorum quilibet dies ipsius Nativitatis sollemnem dignitatem participat. Dies tribus Missis distinctis insignitur, noctis, aurorae et diei, quarum quaeque proprios textus habet, atque polus fixus est circa quem totum tempus Nativitatis, a Vigilia usque ad Baptismum Domini, ordinatur.
$desc$),
('saint-stephen-the-first-martyr', $desc$
In Calendario Romano generali, Sanctus Stephanus die 26 decembris, secundo die octavae Nativitatis, colore rubro martyribus proprio celebratur, gradu tamen festivo octavae servato. Eius festum unum e tribus tantum est, cum sancto Ioanne et Sanctis Innocentibus, quae intra octavam Nativitatis ut festa distincta comitum Christi recens nati, non ut communes dies octavae, celebrantur.
$desc$),
('saint-john-apostle-and-evangelist', $desc$
In Calendario Romano generali, Sanctus Ioannes die 27 decembris, tertio die octavae Nativitatis, colore albo, statim post festum sancti Stephani celebratur. Ex tribus comitibus Christi intra octavam commemoratis, solus non est martyr, cum antiqua traditio eum solum ex apostolis morte naturali obiisse referat.
$desc$),
('the-holy-innocents-martyrs', $desc$
In Calendario Romano generali, Sancti Innocentes die 28 decembris, quarto die octavae Nativitatis, colore rubro eorum martyrium memorante celebrantur, servato tamen Gloria et tono laetitiae octavae proprio. Eorum festum seriem trium comitum octavae Nativitatis concludit et vocem liturgicam praebet dolori innocentium in ipsis diebus maximi Ecclesiae gaudii.
$desc$),
('saint-thomas-becket-bishop-and-martyr', $desc$
In Calendario Romano generali, Sanctus Thomas Becket die 29 decembris, quinto die octavae Nativitatis, ut memoria ad libitum, colore rubro, celebratur. Post praecipuos octavae comites collocata, eius memoria celebrari potest ubi devotio erga hunc episcopum martyrem Anglicanum peculiariter viget, absque liturgia ordinaria octavae depellenda.
$desc$),
('saint-sylvester-i-pope', $desc$
In Calendario Romano generali, Sanctus Silvester I die 31 decembris, ultimo anni civilis die ac septimo octavae Nativitatis die, ut memoria ad libitum, colore albo, celebratur. Multis in locis eius festum liturgiis gratiarum actionis pro anno finiente coniungitur, intra laetum octavae Nativitatis spiritum adhuc vigentem celebratis.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

-- MOVABLE rule:
-- Sunday within Octave of Christmas, or if none, 30 December: Holy Family
-- Store a movable base and handle fallback-to-30-Dec in API logic.
INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, date_kind, movable_base, movable_offset_days, observance_type, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, 'movable', 'SUNDAY_WITHIN_CHRISTMAS_OCTAVE_OR_DEC30', 0, 'normal', FALSE, 'Wikipedia movable'
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = 'SUNDAY_ORDINARY'
LEFT JOIN liturgical_colors lc ON lc.code = 'WHITE'
WHERE f.slug = 'the-holy-family-of-jesus-mary-and-joseph'
ON CONFLICT (feast_id, calendar_id) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('the-holy-family-of-jesus-mary-and-joseph', $desc$
In the Roman General Calendar, the Holy Family is celebrated with white vestments on the Sunday falling within the Octave of Christmas, or, in years when no Sunday occurs within the octave (as when Christmas falls on a Sunday), on December 30. Its placement so close to Christmas ties the feast to the manger scene and gives the Christmas season a distinctly domestic and familial accent alongside its properly Marian and Christological celebrations.
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
('the-holy-family-of-jesus-mary-and-joseph', $desc$
Dans le calendrier romain général, la Sainte Famille est célébrée avec la couleur blanche le dimanche tombant dans l'octave de Noël, ou, les années où aucun dimanche ne tombe dans l'octave (lorsque Noël tombe un dimanche), le 30 décembre. Sa place si proche de Noël relie la fête à la crèche et donne au temps de Noël un accent domestique et familial particulier, aux côtés de ses célébrations proprement mariales et christologiques.
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
('the-holy-family-of-jesus-mary-and-joseph', $desc$
In Calendario Romano generali, Sancta Familia colore albo celebratur dominica quae intra octavam Nativitatis occurrit, vel, annis quibus nulla dominica intra octavam cadit (ut cum Nativitas ipsa in dominicam incidit), die 30 decembris. Locus tam propinquus Nativitati festum praesepio coniungit, et tempori Nativitatis notam domesticam ac familiarem addit, iuxta celebrationes proprie Marianas et Christologicas.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('the-immaculate-conception-of-the-blessed-virgin-mary', $desc$
In the Roman General Calendar, the Immaculate Conception is celebrated on December 8 as a solemnity with white vestments. Because of its privileged place during Advent, the observance is transferred to December 9 when December 8 is impeded by the Second Sunday of Advent.

The present Roman celebration gives the mystery its full solemn rank and makes it one of the principal Marian days of the universal calendar, with proper liturgical texts centered on Mary's preservation by grace in view of Christ's redeeming work.
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
('the-immaculate-conception-of-the-blessed-virgin-mary', $desc$
Dans le calendrier romain général, l'Immaculée Conception est célébrée le 8 décembre comme solennité, avec la couleur blanche. En raison de sa place privilégiée dans le temps de l'Avent, l'observance est reportée au 9 décembre lorsque le 8 décembre est empêché par le deuxième dimanche de l'Avent.

La célébration romaine actuelle confère à ce mystère tout le rang d'une solennité et en fait l'une des principales fêtes mariales du calendrier universel, avec des textes propres centrés sur la préservation de Marie par la grâce en vue de l'œuvre rédemptrice du Christ.
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
('the-immaculate-conception-of-the-blessed-virgin-mary', $desc$
In Calendario Romano generali, Immaculata Conceptio die 8 decembris ut sollemnitas, colore albo, celebratur. Ob locum suum peculiarem in Adventu, observantia ad diem 9 decembris transfertur cum dies 8 decembris a secunda dominica Adventus impeditur.

Celebratio Romana hodierna huic mysterio plenam sollemnitatis dignitatem tribuit atque id inter praecipuas universalis calendarii festivitates mariales constituit, propriis textibus liturgicis in Mariae praeservatione per gratiam intuitu operis redemptivi Christi positis.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

-- =========================================================
-- Christmas Vigil (Dec 24)
-- =========================================================

-- FEAST
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('christmas-vigil', 'Christmas Vigil', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- TRANSLATIONS
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('christmas-vigil', 'Christmas Vigil', $desc$
Christmas Vigil keeps watch on the threshold of the Nativity and expresses the ancient Christian instinct to approach the great mysteries through prayerful expectancy. Before the festive proclamation of the Lord's birth, the Church lingers in the hour of promise, gathering up Israel's hope, the longing of the prophets, and humanity's need for redemption. The vigil therefore belongs to that sacred moment when waiting is itself full of meaning.

Its theology is shaped by the nearness of the Incarnation. The promised Son of David enters a real human history, receives a lineage, and comes as the fulfillment of covenants patiently prepared across the centuries. The mystery contemplated is not yet the full joy of Bethlehem made manifest, but the final hush before the Word made flesh appears among his people.

As a vigil, this celebration teaches that salvation does not arrive as an interruption without preparation, but as the ripening of divine fidelity in time. The Church learns to read history through promise and fulfillment, to see how grace does not abolish what came before, and to recognize in Christ the one toward whom law, prophecy, and expectation were always moving.

For the faithful, Christmas Vigil is a school of recollection, desire, and hope. It invites Christians to receive the Lord's coming with attentive hearts, to reconcile what is wounded, to remember the poor, and to discover that true joy is deepened when it is preceded by watchfulness and prayer.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('christmas-vigil', 'Vigile de Noël', $desc$
La Vigile de Noël veille au seuil de la Nativité et exprime l'antique instinct chrétien d'aborder les grands mystères dans l'attente priante. Avant la proclamation joyeuse de la naissance du Seigneur, l'Église demeure dans l'heure de la promesse, recueillant l'espérance d'Israël, le désir des prophètes et le besoin de rédemption de l'humanité. La vigile appartient ainsi à ce moment sacré où l'attente elle-même est déjà pleine de sens.

Sa théologie est façonnée par la proximité de l'Incarnation. Le Fils de David promis entre dans une histoire humaine réelle, reçoit une généalogie et vient comme l'accomplissement des alliances patiemment préparées au long des siècles. Le mystère contemplé n'est pas encore la joie pleinement manifestée de Bethléem, mais le dernier silence avant que le Verbe fait chair n'apparaisse au milieu de son peuple.

Comme toute vigile, cette célébration enseigne que le salut n'arrive pas sans préparation, mais comme la maturation de la fidélité divine dans le temps. L'Église apprend à lire l'histoire selon la promesse et l'accomplissement, à voir que la grâce n'abolit pas ce qui la précède, et à reconnaître dans le Christ celui vers qui convergeaient déjà la Loi, les prophètes et l'attente des nations.

Pour les fidèles, la Vigile de Noël est une école de recueillement, de désir et d'espérance. Elle invite les chrétiens à accueillir la venue du Seigneur avec un cœur attentif, à réparer ce qui est blessé, à se souvenir des pauvres et à découvrir que la vraie joie devient plus profonde lorsqu'elle est précédée par la veille et la prière.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('christmas-vigil', 'Vigilia Nativitatis Domini', $desc$
Vigilia Nativitatis Domini in ipso limine Nativitatis vigilat atque antiquum christianorum sensum exprimit, quo magna mysteria per orantem expectationem adeuntur. Ante laetam proclamationem ortus Domini, Ecclesia in hora promissionis manet, spem Israel, desiderium prophetarum et humanae naturae redemptionis indigentiam colligens. Ita vigilia ad illud sacrum momentum pertinet, in quo ipsa exspectatio iam gravis est mysterio.

Theologia eius ex propinquitate Incarnationis formatur. Promissus Filius David veram historiam humanam ingreditur, genealogiam suscipit et tamquam complementum foederum per saecula praeparatorum advenit. Hic contemplatur nondum plena laetitia Bethlehem patefacta, sed ultimum silentium antequam Verbum caro factum in medio populi sui appareat.

Haec celebratio docet salutem non sine praeparatione irruere, sed velut maturitatem divinae fidelitatis in tempore proferri. Ecclesia discit historiam secundum promissionem et impletionem legere, intellegere gratiam priora non delere sed perficere, atque in Christo agnoscere eum ad quem Lex, Prophetae et expectatio gentium semper tendebant.

Fidelibus Vigilia Nativitatis schola recollectionis, desiderii et spei est. Christianos invitat ut adventum Domini corde vigilanti excipiant, reconcilianda componant, pauperum memores sint, ac tandem experiantur verum gaudium eo profundius esse quo diutius per custodiam et orationem praeparatum est.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('christmas-vigil', $desc$
In the Roman General Calendar, Christmas Vigil is assigned to December 24 as a vigil observance. It is treated as a privileged Advent day that already turns toward Christmas, uses white vesture, and has proper formularies distinct from the Masses of Christmas itself.
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
('christmas-vigil', $desc$
Dans le calendrier ROMAN_GENERAL, la Vigile de Noël est fixée au 24 décembre comme célébration de vigile. Elle demeure un jour privilégié de l'Avent déjà tourné vers Noël, emploie le blanc et possède des formulaires propres distincts des messes de Noël.
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
('christmas-vigil', $desc$
In calendario ROMAN_GENERAL Vigilia Nativitatis Domini die XXIV mensis Decembris ut celebratio vigiliaris assignatur. Tamquam dies Adventus privilegiatus iam ad Natale conversus habetur, colore albo utitur, atque propria formularia a Missis ipsius Nativitatis distincta possidet.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

-- Octave marker for Dec 30
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('sixth-day-in-the-octave-of-christmas', 'Sixth Day in the Octave of Christmas', 'christological')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('sixth-day-in-the-octave-of-christmas', 'Sixth Day in the Octave of Christmas', $desc$
The Sixth Day in the Octave of Christmas belongs to the Church's ancient practice of extending the Nativity across eight days so that the mystery may be inhabited, not hurried past. The octave teaches that the birth of the Savior is too rich for a single celebration, and that the joy of the Incarnation unfolds by patient contemplation. Each day shares the same light while allowing another facet of the one mystery to appear.

Its theological accent is quiet and domestic. The eternal Son has entered the ordinary fabric of human life, sanctifying time, family bonds, growth, waiting, and the humble rhythms of the home. Traditions associated with this point of the octave often draw attention to the Temple scene and to Anna's praise, showing how persevering hope learns to recognize the Child as the redemption promised by God.

This day does not compete with Christmas, but belongs wholly to Christmas. The Church remains near the crib, near Mary and Joseph, and near the first witnesses who received the Lord with wonder, obedience, and thanksgiving. In that lingering contemplation, believers learn that the Incarnation reaches not only grand moments of worship but also the hidden places where daily life is formed.

For the faithful, the Sixth Day in the Octave of Christmas resists the temptation to let the feast vanish as soon as outward festivity fades. It invites a slower discipleship: to praise with the aged saints of Israel, to dwell with the Child in simplicity, and to allow the mystery of God-made-man to reorder ordinary life with gratitude and peace.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('sixth-day-in-the-octave-of-christmas', 'Sixième jour dans l''Octave de Noël', $desc$
Le sixième jour dans l'Octave de Noël relève de l'antique pratique par laquelle l'Église étend la Nativité sur huit jours afin que le mystère soit habité et non traversé à la hâte. L'octave enseigne que la naissance du Sauveur est trop riche pour une seule célébration et que la joie de l'Incarnation se déploie dans une contemplation patiente. Chaque jour porte la même lumière tout en laissant apparaître une autre face du même mystère.

Son accent théologique est discret et domestique. Le Fils éternel est entré dans la trame ordinaire de la vie humaine, sanctifiant le temps, les liens familiaux, la croissance, l'attente et les humbles rythmes du foyer. Les traditions associées à ce moment de l'octave attirent volontiers l'attention sur la scène du Temple et sur la louange d'Anne, montrant que l'espérance persévérante apprend à reconnaître en l'Enfant la rédemption promise par Dieu.

Ce jour ne rivalise pas avec Noël, mais appartient entièrement à Noël. L'Église demeure près de la crèche, auprès de Marie et de Joseph, et auprès des premiers témoins qui ont accueilli le Seigneur dans l'émerveillement, l'obéissance et l'action de grâce. Dans cette contemplation prolongée, les croyants apprennent que l'Incarnation rejoint non seulement les grands moments du culte, mais aussi les lieux cachés où se forme la vie quotidienne.

Pour les fidèles, le sixième jour dans l'Octave de Noël résiste à la tentation de laisser la fête s'évanouir dès que les signes extérieurs disparaissent. Il invite à un discipulat plus lent: louer avec les anciens justes d'Israël, demeurer auprès de l'Enfant dans la simplicité, et laisser le mystère du Dieu fait homme réordonner la vie ordinaire dans la gratitude et la paix.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('sixth-day-in-the-octave-of-christmas', 'Dies Sextus infra Octavam Nativitatis Domini', $desc$
Dies Sextus infra Octavam Nativitatis ad antiquam Ecclesiae consuetudinem pertinet, qua Nativitas per octo dies extenditur, ut mysterium non festinanter transeatur sed intime inhabitetur. Octava docet ortum Salvatoris uno die exhauriri non posse, atque laetitiam Incarnationis per patientem contemplationem paulatim explicari. Singuli dies eandem lucem participant, dum aliam faciem unius mysterii manifestant.

Accentus theologici huius diei quieti sunt atque domestici. Filius aeternus in communem humanae vitae texturam intravit, tempus, vincula familiarum, incrementum, expectationem et humiles domus modos sanctificans. Traditiones huic parti octavae adnexae saepe ad scaenam Templi et ad laudem Annae convertuntur, ut ostendatur spem perseverantem Puerum agnoscere discere tamquam redemptionem a Deo promissam.

Hic dies Nativitati non aemulatur, sed totus ad Nativitatem pertinet. Ecclesia iuxta praesepe, iuxta Mariam et Ioseph, atque iuxta primos testes manet, qui Dominum cum admiratione, oboedientia et gratiarum actione exceperunt. In hac mora contemplativa credentes discunt Incarnationem non solum magna cultus momenta, sed etiam occulta loca vitae cotidianae attingere.

Fidelibus Dies Sextus infra Octavam Nativitatis resistit temptationi qua festum statim evanescere sinitur ubi exterior sollemnitas desinit. Invitat ad discipulatum tardius procedentem: ut cum antiquis Israel sanctis laudent, apud Puerum simplicitate permaneant, atque mysterium Dei hominis facti ordinariam vitam gratia et pace reformare sinant.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('sixth-day-in-the-octave-of-christmas', $desc$
In the Roman General Calendar, this observance falls on December 30 as a white octave day within Christmas. It is entered as an octave celebration with feria rank, though it can yield when the year's arrangement assigns the Feast of the Holy Family to the same date.
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
('sixth-day-in-the-octave-of-christmas', $desc$
Dans le calendrier ROMAN_GENERAL, cette célébration tombe normalement le 30 décembre comme jour d'octave en blanc à l'intérieur de Noël. Elle est inscrite comme observance d'octave avec rang férial, tout en pouvant céder lorsque l'agencement de l'année y place la Sainte Famille.
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
('sixth-day-in-the-octave-of-christmas', $desc$
In calendario ROMAN_GENERAL haec celebratio die XXX mensis Decembris tamquam dies octava albus intra Natale poni solet. Ut observantia octavae gradu feriali inscribitur, quamvis cedat si dispositio anni eidem diei Festum Sanctae Familiae attribuat.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;


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
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('easter-sunday-of-the-resurrection-of-the-lord', 'Easter Sunday of the Resurrection of the Lord', $desc$
Easter Sunday of the Resurrection of the Lord is the primordial Christian feast, the Pascha of the new covenant, celebrated from apostolic times as the victory of Christ over death. All Christian preaching, worship, and hope draw their light from this day, because without the resurrection the Gospel would remain unfinished and the Cross would appear only as tragedy. The Church therefore receives Easter not as one feast among others, but as the living center of the mystery of salvation.

Theologically, Easter is more than the remembrance of a marvel worked in the body of Jesus. It is the revelation that the Crucified One truly lives, that sin and death have been judged, and that a new creation has begun in him. The resurrection vindicates the Lord's person and mission, discloses the Cross as victorious obedience, and grounds the promise that humanity is called not to extinction but to glorified life in communion with God.

From Easter flows the whole sacramental and ecclesial life of the Church. Baptism is participation in Christ's death and rising; the Eucharist is the memorial of the living Lord; Christian moral life becomes possible because grace now springs from the risen Christ. The Church's Alleluia, her joy, and her courage in witness all rest upon the conviction that death no longer has dominion over him.

For the faithful, Easter Sunday is the annual measure of Christian realism. It forbids both despair and shallow optimism, because it proclaims a victory already won and still at work in history. Believers are sent back into the world as witnesses that the tomb is empty, that mercy is stronger than sin, and that the last word over human life belongs to the living God.
$desc$),
('monday-in-the-octave-of-easter', 'Monday in the Octave of Easter', $desc$
Monday in the Octave of Easter belongs to the ancient eight-day celebration by which the Church lingers within one inexhaustible Paschal mystery. The resurrection is not treated as an event grasped in a single instant; rather, the Church remains in the first brightness of Easter, allowing the joy of the empty tomb to reverberate through prayer, proclamation, and sacramental life. The octave teaches believers to dwell in the victory of Christ instead of leaving it behind too quickly.

The Gospel traditionally proclaimed on this day shows the women leaving the tomb, receiving the angelic message, and encountering the risen Lord as they run to the disciples. Fear gives way to proclamation, and grief is transformed into mission. The first heralds of Easter are sent precisely through encounter: they bear witness not because every question has been resolved, but because the living Christ has met them and entrusted them with joy.

This day reveals that resurrection faith is dynamic. Easter does not freeze the Church in amazement; it impels her outward in testimony. What begins in tears and trembling becomes speech, obedience, and the courage to announce that the Lord has conquered death. The women at the tomb therefore stand as lasting witnesses that the Gospel is first received as gift and then immediately offered as mission.

For the faithful, Monday in the Octave of Easter teaches that Christian joy cannot remain private. The risen Christ still turns fear into witness and sorrow into hope. Those who meet him are called to carry the news of life to others, even before they fully understand the breadth of the mystery they have received.
$desc$),
('tuesday-in-the-octave-of-easter', 'Tuesday in the Octave of Easter', $desc$
Tuesday in the Octave of Easter continues the Church's contemplation of the one Paschal mystery through the great week of rejoicing that follows the resurrection. The octave preserves the sense that Easter exceeds a single celebration and that the Church must linger with the witnesses of the risen Lord until faith becomes steadier and more luminous. It is a day of Easter itself, not a departure from it.

Its Gospel centers on Mary Magdalene at the tomb, weeping until the risen Christ calls her by name. The theology of the day turns on recognition born from love. Resurrection is not grasped only by external signs, but through the Shepherd's voice that restores personal communion after the desolation of the Passion. In that moment memory, affection, and mission are gathered into one encounter.

Mary Magdalene's witness shows the deeply personal character of Easter faith. The risen Lord is not an abstract principle of hope, but the living One who knows his own and summons them individually. Her transformation from mourning to apostolic witness reveals that the resurrection heals the heart even as it commissions the disciple for service to the Church.

For believers, Tuesday in the Octave of Easter speaks powerfully to those who seek Christ through grief, confusion, or longing. It assures them that the Lord who conquered death still calls his disciples personally, and that the tears of loss can become the place where a new vocation to witness begins.
$desc$),
('wednesday-in-the-octave-of-easter', 'Wednesday in the Octave of Easter', $desc$
Wednesday in the Octave of Easter stands within the great Paschal week in which the Church continues to unfold the meaning of the resurrection. The octave makes clear that the risen Lord is not encountered only in a burst of surprise, but in a sustained ecclesial memory shaped by word, sacrament, and conversion. Easter joy becomes intelligent and durable as the Church ponders what has happened.

The Gospel of Emmaus gives the day its deepest accent. The disciples' disappointment is transformed when Christ walks beside them, opens the Scriptures, and is recognized in the breaking of the bread. The resurrection is therefore known in a profoundly ecclesial way: the Lord interprets suffering through the divine plan and makes himself known where the Word is illumined and the table is blessed.

This day teaches that Easter faith matures through a pattern the Church never outgrows. Believers listen, receive interpretation, recognize the Lord in sacramental fellowship, and then return as witnesses. The risen Christ forms his people not by bypassing their confusion, but by entering it patiently and leading them into understanding.

For the faithful, Wednesday in the Octave of Easter offers enduring consolation. Those who walk through shattered expectations learn that Christ still draws near on the road, still sets hearts burning through the Scriptures, and still gathers his disciples into communion strong enough to send them back into the world with renewed hope.
$desc$),
('thursday-in-the-octave-of-easter', 'Thursday in the Octave of Easter', $desc$
Thursday in the Octave of Easter belongs to the Church's sustained celebration of the resurrection, in which each day of the octave discloses another dimension of the risen Lord's presence. The Paschal mystery is contemplated not as a vague spiritual survival, but as the triumph of the Crucified One who stands again among his disciples. The Church lingers over these appearances so that faith may be grounded in truth as well as joy.

The Gospel shows Christ offering peace, showing his hands and feet, and opening the minds of the disciples to understand the Scriptures. The theology of the day is therefore strongly incarnational. The risen Jesus is the same Lord who suffered and died; his wounds remain eloquent, not as signs of defeat, but as marks of victorious love. Peace flows from the Passion transfigured, and mission arises from minds enlightened by divine teaching.

This day helps the Church confess the full realism of resurrection. Christ is not merely remembered; he is alive in glorified bodily continuity with the one who was crucified. By opening the Scriptures, he reveals that the whole history of salvation converges in his Passover and that apostolic witness is rooted in what God had long prepared.

For the faithful, Thursday in the Octave of Easter is especially important whenever the resurrection is reduced to sentiment or metaphor. It teaches Christians to profess a living Lord who is real, wounded, glorified, and present, and to receive his peace as the gift that comes through the Cross and leads into witness.
$desc$),
('friday-in-the-octave-of-easter', 'Friday in the Octave of Easter', $desc$
Friday in the Octave of Easter belongs to the week of unbroken Paschal rejoicing in which the Church contemplates the resurrection as the interpretation of all that the Passion has accomplished. Even the memory of Friday is now transfigured by the victory of Christ, for the wounds of the Crucified are revealed as the signs of triumphant love. The octave teaches believers that Easter joy does not forget the Cross, but shines through it.

The Gospel recounts the appearance by the Sea of Tiberias, the miraculous catch, and the meal prepared by the risen Lord. Resurrection, mission, and Eucharistic resonance meet in this scene. The disciples discover again that fruitfulness depends upon obedience to Christ's word, and that the Lord who died and rose still feeds, gathers, and directs his people.

The shore of Tiberias also begins the renewal of apostolic service, especially in the restoration of Peter that is about to unfold. The risen Lord meets the Church at the edge of weariness and failure, not to condemn her emptiness, but to fill it with his abundance. Mission is shown to be a gift sustained by communion with him rather than by human effort alone.

For the faithful, Friday in the Octave of Easter is a consolation in every experience of fruitless labor. It teaches that Christ still stands on the shore of human weakness, turning barren nets into abundance, ordinary work into obedience, and the disciple's fatigue into an occasion for renewed trust and service.
$desc$),
('saturday-in-the-octave-of-easter', 'Saturday in the Octave of Easter', $desc$
Saturday in the Octave of Easter completes the great week in which the Church prolongs the one Paschal solemnity through days of unbroken praise. As the octave nears its close, the Church gathers the various resurrection witnesses into a more mature confession of faith. The initial astonishment of Easter is not lost, but deepened into readiness for the mission that lies ahead.

The Gospel of the day presents Christ rebuking unbelief and sending the disciples to preach the Gospel to the whole creation. The theology of the day therefore marks a decisive movement from amazement to apostolic commission. Resurrection faith cannot remain enclosed within private consolation; it must become universal proclamation, because the Lord who rose now claims the nations for the Gospel.

This final day of the octave also shows that mission is born from mercy. The disciples themselves were slow to believe, yet the risen Christ heals their hesitation and makes them heralds. The Church remembers that her witness does not rest on human perfection, but on the patient initiative of the Lord who forms weak disciples into messengers of salvation.

For the faithful, Saturday in the Octave of Easter calls believers beyond passive admiration of holy things. It urges them to let the resurrection widen their horizons, correct their reluctance, and send them into daily life with evangelical courage, whether by explicit preaching, patient witness, or steadfast fidelity in ordinary duties.
$desc$),
('second-sunday-of-easter-divine-mercy-sunday', 'Second Sunday of Easter (Divine Mercy Sunday)', $desc$
The Second Sunday of Easter completes the Paschal octave and gathers into one celebration the joy of resurrection, the grace of baptismal renewal, and the Church's prayer for mercy. In ancient tradition it was closely linked with the newly baptized, who had passed through the great week clothed in the radiance of Easter. The day therefore bears a threshold character: it concludes the octave while opening the wider unfolding of the Fifty Days.

Its Gospel from John presents the risen Christ bestowing peace, breathing the Holy Spirit upon the disciples, entrusting the forgiveness of sins to the Church, and meeting Thomas in his struggle toward faith. The wounds remain visible in glory, so that mercy may be seen not as an abstract idea but as the very form of the risen Lord's victorious love. Thomas's confession, "My Lord and my God," becomes the cry of faith matured by encounter.

In many places this Sunday is also associated with devotion to Divine Mercy, fostered especially through Saint Faustina Kowalska. This emphasis does not add something foreign to Easter, but contemplates the Paschal mystery through the open side of Christ, from which reconciliation, peace, and new life flow to the Church. Mercy appears as the deepest meaning of the resurrection: the Crucified lives and still offers himself to sinners.

For the faithful, this Sunday is a school of trust. It speaks to doubters, penitents, and the wounded, inviting them to approach the risen Christ with confidence. Through the Church's sacramental life, especially Reconciliation and the Eucharist, believers receive the mercy that springs from his Passion and shines forever in his risen body.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('easter-sunday-of-the-resurrection-of-the-lord', 'Dimanche de Pâques de la Résurrection du Seigneur', $desc$
Le Dimanche de Pâques de la Résurrection du Seigneur est la fête chrétienne primordiale, la Pâque de l'Alliance nouvelle, célébrée dès les temps apostoliques comme la victoire du Christ sur la mort. Toute la prédication chrétienne, tout le culte et toute l'espérance de l'Église reçoivent leur lumière de ce jour, car sans la résurrection l'Évangile resterait inachevé et la Croix apparaîtrait seulement comme une tragédie. L'Église reçoit donc Pâques non comme une fête parmi d'autres, mais comme le centre vivant du mystère du salut.

Théologiquement, Pâques est plus que le souvenir d'un prodige accompli dans le corps de Jésus. C'est la révélation que le Crucifié vit réellement, que le péché et la mort ont été jugés, et qu'une création nouvelle a commencé en lui. La résurrection authentifie la personne et la mission du Seigneur, manifeste la Croix comme obéissance victorieuse, et fonde la promesse selon laquelle l'humanité n'est pas appelée à l'extinction mais à la vie glorifiée dans la communion avec Dieu.

De Pâques découle toute la vie sacramentelle et ecclésiale. Le Baptême est participation à la mort et au relèvement du Christ; l'Eucharistie est le mémorial du Seigneur vivant; la vie morale chrétienne devient possible parce que la grâce jaillit désormais du Ressuscité. L'Alléluia de l'Église, sa joie et son courage dans le témoignage reposent tous sur la conviction que la mort n'exerce plus sur lui aucune domination.

Pour les fidèles, le Dimanche de Pâques est la mesure annuelle du réalisme chrétien. Il interdit à la fois le désespoir et l'optimisme superficiel, parce qu'il proclame une victoire déjà remportée et encore à l'œuvre dans l'histoire. Les croyants sont renvoyés dans le monde comme témoins que le tombeau est vide, que la miséricorde est plus forte que le péché, et que le dernier mot sur la vie humaine appartient au Dieu vivant.
$desc$),
('monday-in-the-octave-of-easter', 'Lundi dans l''Octave de Pâques', $desc$
Le Lundi dans l'Octave de Pâques appartient à l'antique célébration de huit jours par laquelle l'Église demeure à l'intérieur de l'unique mystère pascal. La résurrection n'est pas traitée comme un événement saisi en un instant; l'Église reste dans la première clarté de Pâques et laisse la joie du tombeau vide se répercuter dans la prière, la proclamation et la vie sacramentelle. L'octave apprend aux croyants à habiter la victoire du Christ au lieu de la quitter trop vite.

L'Évangile traditionnel de ce jour montre les femmes quittant le tombeau, recevant le message de l'ange et rencontrant le Ressuscité tandis qu'elles courent vers les disciples. La peur cède la place à l'annonce, et le deuil devient mission. Les premières messagères de Pâques sont envoyées par la rencontre elle-même: elles témoignent non parce que toutes les questions seraient déjà résolues, mais parce que le Christ vivant les a rejointes et leur a confié sa joie.

Ce jour révèle que la foi pascale est dynamique. Pâques ne fige pas l'Église dans la stupeur; elle la pousse au témoignage. Ce qui commence dans les larmes et le tremblement devient parole, obéissance et courage d'annoncer que le Seigneur a vaincu la mort. Les femmes du tombeau demeurent ainsi des témoins durables d'un Évangile d'abord reçu comme don puis aussitôt transmis comme mission.

Pour les fidèles, le Lundi dans l'Octave de Pâques enseigne que la joie chrétienne ne peut rester privée. Le Ressuscité transforme encore la peur en témoignage et la tristesse en espérance. Ceux qui le rencontrent sont appelés à porter aux autres la nouvelle de la vie, avant même d'avoir mesuré toute l'ampleur du mystère reçu.
$desc$),
('tuesday-in-the-octave-of-easter', 'Mardi dans l''Octave de Pâques', $desc$
Le Mardi dans l'Octave de Pâques prolonge la contemplation de l'unique mystère pascal à travers la grande semaine de joie qui suit la résurrection. L'octave garde vive la conviction que Pâques dépasse une seule célébration et que l'Église doit demeurer auprès des témoins du Ressuscité jusqu'à ce que la foi devienne plus stable et plus lumineuse. C'est un jour de Pâques lui-même, non un départ hors de lui.

Son Évangile est centré sur Marie Madeleine au tombeau, en pleurs, jusqu'à ce que le Christ ressuscité l'appelle par son nom. La théologie du jour repose ainsi sur la reconnaissance née de l'amour. La résurrection ne se saisit pas seulement par des signes extérieurs, mais par la voix du Pasteur qui rétablit la communion personnelle après la désolation de la Passion. En cet instant, mémoire, affection et mission sont réunies dans une même rencontre.

Le témoignage de Marie Madeleine montre combien la foi pascale est personnelle. Le Ressuscité n'est pas un principe abstrait d'espérance, mais le Vivant qui connaît les siens et les appelle chacun. Son passage du deuil au témoignage apostolique révèle que la résurrection guérit le cœur tout en envoyant le disciple au service de l'Église.

Pour les croyants, le Mardi dans l'Octave de Pâques parle avec force à ceux qui cherchent le Christ dans le deuil, la confusion ou le désir. Il leur assure que le Seigneur vainqueur de la mort appelle encore ses disciples personnellement, et que les larmes de la perte peuvent devenir le lieu où naît une vocation nouvelle au témoignage.
$desc$),
('wednesday-in-the-octave-of-easter', 'Mercredi dans l''Octave de Pâques', $desc$
Le Mercredi dans l'Octave de Pâques se tient dans la grande semaine pascale où l'Église déploie encore le sens de la résurrection. L'octave montre que le Ressuscité n'est pas rencontré seulement dans l'éclat d'une surprise, mais dans une mémoire ecclésiale durable façonnée par la parole, le sacrement et la conversion. La joie pascale devient plus intelligente et plus stable à mesure que l'Église médite ce qui est arrivé.

L'Évangile d'Emmaüs donne au jour son accent le plus profond. La déception des disciples est transformée lorsque le Christ marche avec eux, ouvre les Écritures et se fait reconnaître à la fraction du pain. La résurrection est donc connue d'une manière profondément ecclésiale: le Seigneur interprète la souffrance dans le dessein de Dieu et se rend présent là où la Parole est illuminée et où la table est bénie.

Ce jour enseigne que la foi pascale mûrit selon une forme que l'Église n'épuise jamais: écouter, recevoir l'intelligence des Écritures, reconnaître le Seigneur dans la communion sacramentelle, puis revenir comme témoin. Le Ressuscité forme son peuple non en contournant sa confusion, mais en y entrant patiemment pour le conduire à l'intelligence.

Pour les fidèles, le Mercredi dans l'Octave de Pâques offre une consolation durable. Ceux dont les attentes ont été brisées apprennent que le Christ continue de s'approcher sur la route, d'embraser les cœurs par les Écritures et de rassembler ses disciples dans une communion assez forte pour les renvoyer dans le monde avec une espérance renouvelée.
$desc$),
('thursday-in-the-octave-of-easter', 'Jeudi dans l''Octave de Pâques', $desc$
Le Jeudi dans l'Octave de Pâques appartient à la célébration continue de la résurrection par l'Église, où chaque jour de l'octave dévoile une nouvelle dimension de la présence du Ressuscité. Le mystère pascal n'y est pas contemplé comme une simple survie spirituelle, mais comme le triomphe du Crucifié qui se tient de nouveau au milieu des siens. L'Église demeure sur ces apparitions afin que la foi soit fondée autant dans la vérité que dans la joie.

L'Évangile montre le Christ offrant la paix, montrant ses mains et ses pieds et ouvrant l'intelligence des disciples aux Écritures. La théologie du jour est donc fortement incarnée. Le Jésus ressuscité est le même Seigneur qui a souffert et qui est mort; ses plaies demeurent éloquentes, non comme des signes de défaite, mais comme les marques d'un amour victorieux. La paix vient de la Passion transfigurée, et la mission naît d'esprits éclairés par l'enseignement divin.

Ce jour aide l'Église à confesser tout le réalisme de la résurrection. Le Christ n'est pas seulement rappelé à la mémoire; il vit, dans une continuité corporelle glorifiée avec celui qui fut crucifié. En ouvrant les Écritures, il révèle que toute l'histoire du salut converge vers sa Pâque et que le témoignage apostolique s'enracine dans ce que Dieu préparait de longue date.

Pour les fidèles, le Jeudi dans l'Octave de Pâques est particulièrement précieux chaque fois que la résurrection est réduite à un sentiment ou à une métaphore. Il enseigne aux chrétiens à professer un Seigneur vivant, réel, blessé, glorifié et présent, et à recevoir sa paix comme le don qui vient de la Croix et conduit au témoignage.
$desc$),
('friday-in-the-octave-of-easter', 'Vendredi dans l''Octave de Pâques', $desc$
Le Vendredi dans l'Octave de Pâques appartient à la semaine de joie pascale ininterrompue où l'Église contemple la résurrection comme l'interprétation de tout ce que la Passion a accompli. Même la mémoire du vendredi est désormais transfigurée par la victoire du Christ, car les plaies du Crucifié apparaissent comme les signes d'un amour triomphant. L'octave apprend ainsi aux croyants que la joie de Pâques n'oublie pas la Croix, mais resplendit à travers elle.

L'Évangile raconte l'apparition au bord du lac de Tibériade, la pêche miraculeuse et le repas préparé par le Ressuscité. Résurrection, mission et résonance eucharistique s'y rencontrent. Les disciples redécouvrent que la fécondité dépend de l'obéissance à la parole du Christ, et que le Seigneur mort et ressuscité continue de nourrir, de rassembler et de guider son peuple.

Le rivage de Tibériade inaugure aussi le renouvellement du service apostolique, surtout dans la restauration de Pierre qui va bientôt se déployer. Le Ressuscité rejoint l'Église au bord de la fatigue et de l'échec, non pour condamner son vide, mais pour le remplir de son abondance. La mission apparaît alors comme un don soutenu par la communion avec lui plutôt que par le seul effort humain.

Pour les fidèles, le Vendredi dans l'Octave de Pâques est une consolation dans toute expérience de travail stérile. Il enseigne que le Christ se tient encore sur le rivage de la faiblesse humaine, transformant les filets vides en abondance, le labeur ordinaire en obéissance, et la lassitude du disciple en occasion de confiance renouvelée et de service.
$desc$),
('saturday-in-the-octave-of-easter', 'Samedi dans l''Octave de Pâques', $desc$
Le Samedi dans l'Octave de Pâques achève la grande semaine où l'Église prolonge l'unique solennité pascale par des jours de louange ininterrompue. À mesure que l'octave touche à son terme, l'Église recueille les divers témoins de la résurrection dans une confession de foi plus mûre. Le premier émerveillement pascal n'est pas perdu, mais approfondi jusqu'à devenir disponibilité pour la mission à venir.

L'Évangile du jour présente le Christ reprenant l'incrédulité des disciples et les envoyant prêcher l'Évangile à toute la création. La théologie du jour marque ainsi un passage décisif de l'étonnement à l'envoi apostolique. La foi en la résurrection ne peut rester enfermée dans une consolation privée; elle doit devenir proclamation universelle, parce que le Seigneur ressuscité revendique désormais les nations pour l'Évangile.

Ce dernier jour de l'octave montre aussi que la mission naît de la miséricorde. Les disciples eux-mêmes furent lents à croire, et pourtant le Ressuscité guérit leur hésitation et fait d'eux des hérauts. L'Église se souvient ainsi que son témoignage ne repose pas sur la perfection humaine, mais sur l'initiative patiente du Seigneur qui forme de faibles disciples pour en faire des messagers du salut.

Pour les fidèles, le Samedi dans l'Octave de Pâques appelle à dépasser l'admiration passive des choses saintes. Il presse les croyants de laisser la résurrection élargir leurs horizons, corriger leurs réticences et les envoyer dans la vie quotidienne avec un courage évangélique, soit par la prédication explicite, soit par un témoignage patient, soit par une fidélité ferme dans les devoirs ordinaires.
$desc$),
('second-sunday-of-easter-divine-mercy-sunday', 'Dimanche II de Pâques (de la Divine Miséricorde)', $desc$
Le Deuxième dimanche de Pâques achève l'octave pascale et rassemble en une seule célébration la joie de la résurrection, la grâce du renouvellement baptismal et la prière de l'Église pour la miséricorde. Dans l'ancienne tradition, il était étroitement lié aux nouveaux baptisés qui avaient traversé la grande semaine revêtus de la clarté pascale. Le jour possède donc un caractère de seuil: il clôt l'octave tout en ouvrant le déploiement plus large des cinquante jours.

L'Évangile de Jean y présente le Ressuscité donnant la paix, soufflant l'Esprit Saint sur les disciples, confiant à l'Église le pardon des péchés et rejoignant Thomas dans son chemin vers la foi. Les plaies demeurent visibles dans la gloire, afin que la miséricorde apparaisse non comme une idée abstraite, mais comme la forme même de l'amour victorieux du Seigneur ressuscité. La confession de Thomas, "Mon Seigneur et mon Dieu", devient le cri d'une foi mûrie par la rencontre.

En beaucoup de lieux, ce dimanche est aussi associé à la dévotion à la Divine Miséricorde, particulièrement favorisée par sainte Faustine Kowalska. Cet accent n'ajoute rien d'étranger à Pâques, mais contemple le mystère pascal à partir du côté ouvert du Christ, d'où jaillissent pour l'Église réconciliation, paix et vie nouvelle. La miséricorde apparaît alors comme le sens le plus profond de la résurrection: le Crucifié vit et s'offre encore aux pécheurs.

Pour les fidèles, ce dimanche est une école de confiance. Il s'adresse aux hésitants, aux pénitents et aux blessés, les invitant à s'approcher du Ressuscité avec assurance. Par la vie sacramentelle de l'Église, surtout la Réconciliation et l'Eucharistie, les croyants reçoivent la miséricorde qui jaillit de sa Passion et resplendit à jamais dans son corps glorieux.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('easter-sunday-of-the-resurrection-of-the-lord', 'Dominica Paschae de Resurrectione Domini', $desc$
Dominica Paschae de Resurrectione Domini est festum christianum primarium, Pascha novi foederis, ab apostolicis temporibus celebratum tamquam victoria Christi de morte. Ex hoc die omnis Ecclesiae praedicatio, cultus et spes lucem accipiunt, quia sine resurrectione Evangelium imperfectum maneret et Crux solam tragoediam referre videretur. Ideo Ecclesia Pascha suscipit non ut unum inter alia festa, sed ut vivum centrum mysterii salutis.

Theologice Pascha plus est quam memoria prodigii in corpore Iesu patrati. Est revelatio Crucifixum vere vivere, peccatum et mortem iudicata esse, et novam creationem in ipso coepisse. Resurrectio personam et missionem Domini comprobat, Crucem tamquam oboedientiam victorem manifestat, atque promissionem fundat qua humanitas non ad interitum sed ad vitam glorificatam in communione cum Deo vocatur.

Ex Paschate tota sacramentalis et ecclesialis vita manant. Baptismus est participatio mortis et resurrectionis Christi; Eucharistia memoriale Domini viventis; vita moralis christiana fieri potest quia gratia nunc e Christo resuscitato emanat. Alleluia Ecclesiae, laetitia eius et fortitudo in testimonio omnia nituntur persuasione mortem amplius in eum dominium non habere.

Fidelibus Dominica Paschae annua mensura realismi christiani est. Vetat et desperationem et levem optimismum, quia victoriam iam partam sed adhuc in historia operantem proclamat. Credentes in mundum remittuntur ut testes sepulcrum vacuum esse, misericordiam peccato fortiorem esse, atque supremum verbum de vita humana ad Deum viventem pertinere.
$desc$),
('monday-in-the-octave-of-easter', 'Feria II infra Octavam Paschae', $desc$
Feria II infra Octavam Paschae ad antiquam octo dierum celebrationem pertinet, qua Ecclesia intra unum inexhaustum mysterium paschale moratur. Resurrectio non tamquam eventus unico instanti comprehensus tractatur; Ecclesia potius in prima luce Paschae manet et gaudium sepulcri vacui per orationem, proclamationem et vitam sacramentalem resonare sinit. Octava fideles docet in victoria Christi habitare nec eam nimis cito relinquere.

Evangelium huius diei feminas e sepulcro exeuntes, nuntium angelicum accipientes et Dominum resuscitatum discipulis currentes occurrentem proponit. Timor in proclamationem mutatur et luctus in missionem convertitur. Primae Paschae nuntiae per ipsam occursionem mittuntur: testimonium ferunt non quia omnia iam intellecta sunt, sed quia Christus vivens eis occurrit et gaudium suum commendavit.

Hic dies ostendit fidem resurrectionis dynamicam esse. Pascha Ecclesiam in admiratione non figit, sed ad testimonium impellit. Quod in lacrimis et tremore incipit, in verbo, oboedientia et audacia annuntiandi Dominum mortem vicisse desinit. Feminae igitur apud sepulcrum manent testes Evangelii primum ut donum recepti et statim ut missionis traditi.

Fidelibus Feria II infra Octavam Paschae docet gaudium christianum privatum manere non posse. Resuscitatus adhuc timorem in testimonium et tristitiam in spem convertit. Qui ei occurrunt vocantur nuntium vitae aliis ferre, etiam antequam totam amplitudinem mysterii accepti plene metiantur.
$desc$),
('tuesday-in-the-octave-of-easter', 'Feria III infra Octavam Paschae', $desc$
Feria III infra Octavam Paschae contemplationem unius mysterii paschalis per magnam hebdomadam laetitiae quae resurrectionem sequitur continuat. Octava sensum servat quo Pascha unam celebrationem excedit et Ecclesia apud testes Domini resuscitati morari debet donec fides firmior clariorque fiat. Dies est ipsius Paschae, non ab eo recessus.

Evangelium Mariam Magdalenam ad sepulcrum flentem ponit, donec Christus resuscitatus eam nomine vocat. Theologia diei in recognitione ex amore orta versatur. Resurrectio non solis signis exterioribus comprehenditur, sed voce Pastoris qui communionem personalem post Passionis vastitatem restituit. In illo momento memoria, affectus et missio in una occursione colliguntur.

Testimonium Mariae Magdalenae indolem valde personalem fidei paschalis ostendit. Resuscitatus non est abstractum spei principium, sed Vivens qui suos novit eosque singillatim vocat. Transitus eius a luctu ad testimonium apostolicum revelat resurrectionem cor sanare simulque discipulum ad Ecclesiae ministerium mittere.

Credentibus Feria III infra Octavam Paschae magnopere loquitur ad eos qui Christum per luctum, confusionem vel desiderium quaerunt. Certiores eos facit Dominum mortis victorem adhuc discipulos suos personaliter vocare, et lacrimas amissionis posse fieri locum ubi nova ad testimonium vocatio nascitur.
$desc$),
('wednesday-in-the-octave-of-easter', 'Feria IV infra Octavam Paschae', $desc$
Feria IV infra Octavam Paschae in magna Hebdomada Paschali stat, qua Ecclesia sensum resurrectionis adhuc explicat. Octava ostendit Dominum resuscitatum non solum in ictu admirationis inveniri, sed in memoria ecclesiali diuturna verbo, sacramento et conversione formata. Gaudium paschale fit intelligentius ac firmius dum Ecclesia factum meditatur.

Evangelium Emmaus huic diei altissimum sonum tribuit. Discipulorum deiectio convertitur cum Christus cum eis ambulat, Scripturas aperit et in fractione panis agnoscitur. Resurrectio ergo modo penitus ecclesiali cognoscitur: Dominus passionem in consilio divino interpretatur et se manifestat ubi Verbum illustratur et mensa benedicitur.

Hic dies docet fidem paschalem secundum formam maturescere quam Ecclesia numquam exhaurit: auscultare, interpretationem accipere, Dominum in communione sacramentali agnoscere, atque deinde ut testes redire. Resuscitatus populum suum non confusionem praeteriens format, sed in eam patienter ingrediens et ad intellectum ducens.

Fidelibus Feria IV infra Octavam Paschae perennem consolationem offert. Qui fractis exspectationibus ambulant discunt Christum adhuc in via appropinquare, per Scripturas corda accendere, et discipulos suos in communionem satis fortem congregare ut eos iterum in mundum spe renovata remittat.
$desc$),
('thursday-in-the-octave-of-easter', 'Feria V infra Octavam Paschae', $desc$
Feria V infra Octavam Paschae ad continuam Ecclesiae resurrectionis celebrationem pertinet, in qua singuli dies octavae novam praesentiae Domini resuscitati rationem pandunt. Mysterium paschale hic non tamquam vaga superstitis vita spiritalis contemplatur, sed ut triumphus Crucifixi qui iterum inter discipulos suos stat. Ecclesia his apparitionibus immoratur ut fides in veritate pariter atque in gaudio fundetur.

Evangelium Christum pacem offerentem, manus pedesque ostendentem et mentes discipulorum ad Scripturas intellegendas aperientem describit. Theologia diei igitur valde incarnatoria est. Iesus resuscitatus idem est Dominus qui passus est et mortuus; vulnera eius eloquentia permanent, non ut signa cladis, sed ut nota amoris victoris. Pax e Passione transfigurata manat, et missio ex mentibus divino magisterio illustratis nascitur.

Hic dies Ecclesiam adiuvat ad totum resurrectionis realismum profitendum. Christus non solum recolitur; vivit in glorificata corporis continuatione eiusdem qui crucifixus est. Scripturas aperiendo declarat totam salutis historiam in Pascha suum convenire et testimonium apostolicum in eo radicari quod Deus iam diu parabat.

Fidelibus Feria V infra Octavam Paschae praecipue prodest quoties resurrectio ad solum affectum aut metaphoram redigitur. Christianos docet Dominum viventem, verum, vulneratum, glorificatum et praesentem profiteri, atque pacem eius accipere tamquam donum quod e Cruce venit et ad testimonium ducit.
$desc$),
('friday-in-the-octave-of-easter', 'Feria VI infra Octavam Paschae', $desc$
Feria VI infra Octavam Paschae ad hebdomadam continuae laetitiae paschalis pertinet, qua Ecclesia resurrectionem contemplatur tamquam interpretationem omnium quae Passio perfecit. Etiam memoria feriae sextae nunc victoria Christi transfiguratur, quia vulnera Crucifixi tamquam signa amoris triumphantis apparent. Octava igitur fideles docet gaudium paschale Crucem non oblivisci, sed per eam splendere.

Evangelium apparitionem ad mare Tiberiadis, mirabilem capturam piscium et cenam a Domino paratam narrat. Resurrectio, missio et resonantia eucharistica in hac scaena conveniunt. Discipuli iterum discunt fructum ex oboedientia verbo Christi pendere, atque Dominum mortuum et resuscitatum suos adhuc pascere, congregare et dirigere.

Litora Tiberiadis quoque renovationem ministerii apostolici inchoant, praesertim in restauratione Petri quae mox explicabitur. Resuscitatus Ecclesiae ad limen lassitudinis et defectus occurrit, non ut vacuum eius damnet, sed ut abundantia sua impleat. Sic missio ostenditur esse donum communione cum eo sustentatum, non solo humano labore.

Fidelibus Feria VI infra Octavam Paschae consolatio est in omni experientia laboris infructuosi. Docet Christum adhuc in litore infirmitatis humanae stare, retia vacua in copiam mutare, opus ordinarium in oboedientiam vertere, atque lassitudinem discipuli in occasionem renovatae fiduciae et servitii transformare.
$desc$),
('saturday-in-the-octave-of-easter', 'Sabbato infra Octavam Paschae', $desc$
Sabbatum infra Octavam Paschae magnam hebdomadam complet, qua Ecclesia unam paschalem sollemnitatem per dies laudis continuae protrahit. Dum octava ad finem vergit, Ecclesia diversos resurrectionis testes in maturiorem fidei confessionem colligit. Primus Paschae stupor non amittitur, sed altius usque ad promptitudinem missionis futurae perducitur.

Evangelium diei Christum incredulitatem discipulorum increpantem atque eos mittentem ut Evangelium omni creaturae praedicent exhibet. Theologia diei ideo transitum decisivum ab admiratione ad apostolicam missionem designat. Fides resurrectionis intra privatam consolationem claudi non potest; in universalem proclamationem erumpere debet, quia Dominus resuscitatus iam gentes Evangelio vindicat.

Hic ultimus octavae dies etiam ostendit missionem ex misericordia nasci. Discipuli ipsi tardi ad credendum fuerunt, et tamen Resuscitatus eorum cunctationem sanat eosque praedicatores facit. Ecclesia meminit testimonium suum non humana perfectione niti, sed in patienti Domini incepto quo infirmitatem discipulorum in nuntios salutis format.

Fidelibus Sabbatum infra Octavam Paschae ultra passivam rerum sanctarum admirationem vocat. Urget ut resurrectionem prospectus eorum dilatare, reluctationem corrigere, et eos in vitam cotidianam evangelica audacia mittere sinant, sive per apertam praedicationem sive per patientem testificationem sive per stabilem fidelitatem in officiis ordinariis.
$desc$),
('second-sunday-of-easter-divine-mercy-sunday', 'Dominica II Paschae seu de divina Misericordia', $desc$
Dominica II Paschae octavam paschalem complet et in una celebratione gaudium resurrectionis, gratiam renovationis baptismalis et Ecclesiae precem pro misericordia colligit. In antiqua traditione cum recens baptizatis arcte coniungebatur, qui per magnam hebdomadam lumine Paschatis quasi vestiebantur. Dies igitur indolem liminis habet: octavam claudit et latiorem Quinqueginta Dierum progressionem aperit.

Evangelium Ioannis Christum resuscitatum pacem largientem, Spiritum Sanctum insufflantem, remissionem peccatorum Ecclesiae committentem et Thomam in itinere fidei occurrentem praebet. Vulnera in gloria visibilia manent, ut misericordia non abstracta idea, sed ipsa forma amoris victoris Domini resuscitati appareat. Confessio Thomae, "Dominus meus et Deus meus", fit clamor fidei per occursum maturatae.

Multis in locis haec dominica etiam cultui divinae Misericordiae adiungitur, quem sancta Faustina Kowalska praecipue fovit. Hic accentus Paschae nihil alienum addit, sed mysterium paschale per latus apertum Christi contemplatur, unde reconciliatio, pax et vita nova ad Ecclesiam manant. Misericordia sic velut intimus resurrectionis sensus apparet: Crucifixus vivit et peccatoribus adhuc se offert.

Fidelibus haec dominica schola fiduciae est. Ad dubitantes, paenitentes et vulneratos loquitur eosque invitat ut ad Christum resuscitatum confidenter accedant. Per vitam sacramentalem Ecclesiae, praesertim per Reconciliationem et Eucharistiam, credentes misericordiam recipiunt quae e Passione eius manat et in corpore glorioso in aeternum resplendet.
$desc$)
) AS x(slug, name, description)
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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('easter-sunday-of-the-resurrection-of-the-lord', $desc$
In the Roman General Calendar, Easter Sunday is the movable center of the year and the starting point from which the octave and the wider Paschal cycle are reckoned. It is celebrated in white with the rank used for the principal Sundays of Advent, Lent, and Easter, and the celebration row marks it as the octave's foundation.
$desc$),
('monday-in-the-octave-of-easter', $desc$
In the Roman General Calendar, this celebration falls on Easter Sunday plus one day and remains wholly within the Easter Octave. It is kept in white with the rank of Solemnity and the explicit observance type octave, underscoring that the Church is still celebrating Easter Day in its prolongation.
$desc$),
('tuesday-in-the-octave-of-easter', $desc$
In the Roman General Calendar, this day is observed on Easter Sunday plus two days as part of the Easter Octave. It retains white vesture, the rank of Solemnity, and the octave designation proper to the modern Roman Paschal week.
$desc$),
('wednesday-in-the-octave-of-easter', $desc$
In the Roman General Calendar, this observance is assigned to Easter Sunday plus three days within the Easter Octave. Its celebration data preserve the white color, solemn rank, and octave status that keep the whole week festally unified.
$desc$),
('thursday-in-the-octave-of-easter', $desc$
In the Roman General Calendar, this day occurs on Easter Sunday plus four days and is celebrated as a solemn octave day. White vesture and the octave designation express the uninterrupted Paschal character of the week.
$desc$),
('friday-in-the-octave-of-easter', $desc$
In the Roman General Calendar, this celebration falls on Easter Sunday plus five days and remains a solemn white day of the octave. Its modern observance makes clear that even Friday is absorbed into the continuous festal joy of Easter Week.
$desc$),
('saturday-in-the-octave-of-easter', $desc$
In the Roman General Calendar, this observance is kept on Easter Sunday plus six days as the last ferial day before the octave closes. It retains white vesture, the rank of Solemnity, and the octave observance type that prepare for the following Sunday.
$desc$),
('second-sunday-of-easter-divine-mercy-sunday', $desc$
In the Roman General Calendar, this Sunday is placed on Easter Sunday plus seven days as the octave day of Easter. It is celebrated in white with the rank of the principal Sundays of the season, and in current Roman usage it also bears the title Divine Mercy Sunday.
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
('easter-sunday-of-the-resurrection-of-the-lord', $desc$
Dans le calendrier ROMAN_GENERAL, le Dimanche de Pâques est le centre mobile de l'année et le point de départ à partir duquel sont comptés l'octave et l'ensemble du cycle pascal. Il est célébré en blanc avec le rang des grands dimanches de l'Avent, du Carême et de Pâques, et sa ligne de célébration le présente comme fondement de l'octave.
$desc$),
('monday-in-the-octave-of-easter', $desc$
Dans le calendrier ROMAN_GENERAL, cette célébration tombe au lundi suivant le dimanche de Pâques et demeure entièrement à l'intérieur de l'Octave de Pâques. Elle est célébrée en blanc avec le rang de solennité et la qualification explicite d'octave, ce qui souligne que l'Église prolonge encore le seul jour de Pâques.
$desc$),
('tuesday-in-the-octave-of-easter', $desc$
Dans le calendrier ROMAN_GENERAL, ce jour est observé à Pâques plus deux jours comme partie intégrante de l'Octave de Pâques. Il garde le blanc, le rang de solennité et la désignation d'octave propre à la semaine pascale romaine actuelle.
$desc$),
('wednesday-in-the-octave-of-easter', $desc$
Dans le calendrier ROMAN_GENERAL, cette observance est assignée à Pâques plus trois jours au sein de l'Octave de Pâques. Les données de célébration maintiennent le blanc, le rang solennel et le statut d'octave qui unifient toute la semaine dans la fête.
$desc$),
('thursday-in-the-octave-of-easter', $desc$
Dans le calendrier ROMAN_GENERAL, ce jour revient à Pâques plus quatre jours et se célèbre comme jour solennel de l'octave. Le blanc et la qualification d'octave expriment le caractère pascal ininterrompu de cette semaine.
$desc$),
('friday-in-the-octave-of-easter', $desc$
Dans le calendrier ROMAN_GENERAL, cette célébration tombe à Pâques plus cinq jours et demeure un jour blanc et solennel de l'octave. Son observance actuelle montre clairement que même le vendredi est absorbé dans la joie continue de la semaine de Pâques.
$desc$),
('saturday-in-the-octave-of-easter', $desc$
Dans le calendrier ROMAN_GENERAL, cette observance est gardée à Pâques plus six jours comme dernier jour férial avant la clôture de l'octave. Elle conserve le blanc, le rang de solennité et le type d'observance d'octave en préparation du dimanche suivant.
$desc$),
('second-sunday-of-easter-divine-mercy-sunday', $desc$
Dans le calendrier ROMAN_GENERAL, ce dimanche est placé à Pâques plus sept jours comme jour octave de Pâques. Il est célébré en blanc avec le rang des principaux dimanches de la saison et, dans l'usage romain actuel, il porte aussi le titre de Dimanche de la divine Miséricorde.
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
('easter-sunday-of-the-resurrection-of-the-lord', $desc$
In calendario ROMAN_GENERAL Dominica Paschae centrum mobile anni est atque principium a quo octava et latius cyclum paschale computantur. Albo colore celebratur cum gradu praecipuarum dominicarum Adventus, Quadragesimae et Paschae, et haec inscriptio celebrationis eam ut fundamentum octavae designat.
$desc$),
('monday-in-the-octave-of-easter', $desc$
In calendario ROMAN_GENERAL haec celebratio feria secunda post Dominicam Paschae ponitur et tota intra Octavam Paschae manet. Albo colore cum gradu Sollemnitatis et expresso titulo octavae servatur, quo significatur Ecclesiam adhuc unum diem Paschae protendere.
$desc$),
('tuesday-in-the-octave-of-easter', $desc$
In calendario ROMAN_GENERAL hic dies secundo die post Pascha ut pars Octavae Paschae observatur. Colorem album, gradum Sollemnitatis et designationem octavae servat, quae propriam hebdomadae paschalis Romanae hodiernae rationem exprimunt.
$desc$),
('wednesday-in-the-octave-of-easter', $desc$
In calendario ROMAN_GENERAL haec observantia tertio die post Pascha intra Octavam Paschae assignatur. Celebrationis data colorem album, gradum sollemnem et statum octavae retinent, quibus tota hebdomada festivitate una continetur.
$desc$),
('thursday-in-the-octave-of-easter', $desc$
In calendario ROMAN_GENERAL hic dies quarto die post Pascha recurrit atque ut dies sollemnis octavae celebratur. Color albus et nota octavae continuum hebdomadae paschalis characterem manifestant.
$desc$),
('friday-in-the-octave-of-easter', $desc$
In calendario ROMAN_GENERAL haec celebratio quinto die post Pascha incidit et dies albus sollemnis octavae manet. Observantia hodierna clare ostendit etiam feriam sextam in gaudium continuum Hebdomadae Paschalis recipi.
$desc$),
('saturday-in-the-octave-of-easter', $desc$
In calendario ROMAN_GENERAL haec observantia sexto die post Pascha servatur ut ultimus dies ferialis ante clausuram octavae. Colorem album, gradum Sollemnitatis et observantiam octavae retinet, ita ad dominicam sequentem praeparans.
$desc$),
('second-sunday-of-easter-divine-mercy-sunday', $desc$
In calendario ROMAN_GENERAL haec dominica septimo die post Pascha collocatur ut dies octava Paschae. Albo colore cum gradu praecipuarum dominicarum temporis celebratur, et in usu Romano hodierno etiam titulo Dominicae de divina Misericordia insignitur.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

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
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
  ('third-sunday-of-easter',  'Third Sunday of Easter', $desc$
The Third Sunday of Easter belongs to the Church's prolonged Paschal joy and marks a stage in the maturation of resurrection faith. After the intensity of the octave, the Church continues to contemplate how the risen Lord forms his disciples into a stable, joyful, and obedient people. Easter is shown not only as a victory to be proclaimed, but as a life into which believers must steadily grow.

Its theological center is recognition of the risen Christ in Scripture, table fellowship, apostolic preaching, and persevering discipleship. Traditions associated with this Sunday often evoke Emmaus, the breaking of bread, and the conversion of bewildered followers into witnesses. The day teaches that the Lord is known where he opens the Scriptures, nourishes his own, and gathers them into the communion of the Church.

This Sunday therefore highlights the ecclesial shape of Easter faith. Resurrection is not a purely interior conviction, but a reality received in worship, proclaimed in the apostolic word, and embodied in a life of obedience. The Church learns that mature belief grows through sustained hearing, sacramental participation, and readiness to follow where the risen Christ leads.

For the faithful, the Third Sunday of Easter is a summons to move beyond fleeting religious excitement. It invites Christians to recognize the living Lord in the ordinary places where he has promised to be found and to let that recognition become the foundation of a more stable, grateful, and missionary life.
$desc$),
  ('fourth-sunday-of-easter', 'Fourth Sunday of Easter (Good Shepherd)', $desc$
The Fourth Sunday of Easter is marked by the beloved image of Christ the Good Shepherd and contemplates the risen Lord in his care for the flock he has redeemed. The resurrection is seen here not only as victory over death, but as the triumph of the Shepherd who laid down his life and now leads his people in glory. The pastoral tenderness of Christ is inseparable from the wounds by which he saved his own.

The theology of the day centers on recognition, trust, and belonging. Christ knows his sheep, calls them by name, and gives them life in abundance. Because he is risen, his shepherding is living and present, not merely remembered. The Church's ministries, vocations, and structures of care receive their meaning only as participation in that one pastoral office of the Lord.

This Sunday also reveals that authority in the Church must be measured by conformity to the Shepherd who serves and sacrifices himself. The flock is not gathered by domination, but by the voice of one who gives his life for others. In that light, all Christian vocation - ordained, consecrated, familial, or lay - becomes a response to the loving call of the risen Christ.

For the faithful, especially communities praying for vocations, the Fourth Sunday of Easter remains deeply pastoral. It teaches believers to listen for the Shepherd's voice, to discern authentic spiritual leadership, and to ask how each baptized person is being called to follow Christ more generously for the life of the world.
$desc$),
  ('fifth-sunday-of-easter',  'Fifth Sunday of Easter', $desc$
The Fifth Sunday of Easter contemplates the life that flows from the resurrection into the Church's communion. As the Paschal season unfolds, attention turns from the shock of the empty tomb to the form of existence created by the risen Lord. Easter is shown as the source of a people remade in love, sustained by grace, and directed toward the heavenly fulfillment God prepares.

Its theology centers on abiding communion. The new commandment of love, the imagery of the vine and branches, and the hope of the holy city descending from God all reveal that resurrection is not an isolated miracle but the beginning of a transformed humanity. Christ gathers believers into his own life so that charity may become the visible sign of Easter in the world.

This Sunday teaches that the Church's unity is not merely institutional, but vital and sacramental. To abide in Christ is to receive life from him, to bear fruit through perseverance, and to discover that love of God and neighbor is the true shape of the new creation. The risen Lord forms not only individual disciples, but a communion capable of reflecting his glory.

For the faithful, the Fifth Sunday of Easter asks whether Christian life truly bears Paschal fruit. It calls households, friendships, and communities to measure themselves by patience, self-gift, unity, and hope, so that ordinary relationships may become signs of the world made new in Christ.
$desc$),
  ('sixth-sunday-of-easter',  'Sixth Sunday of Easter', $desc$
The Sixth Sunday of Easter stands near the end of the Paschal season and contemplates how the life of the risen Christ opens toward the gift of the Holy Spirit. The Church is taught that Easter does not culminate in recollection alone, but in divine indwelling and apostolic sending. What Christ has accomplished in his Passover is now shown to bear fruit in love, obedience, and mission.

Its theological emphasis lies on the promised Advocate and on the bond between love and fidelity. Christ promises the Paraclete, teaches that those who love him keep his word, and prepares his disciples for a communion that is both contemplative and missionary. The resurrection thus flowers into a life sustained by the Spirit, in which believers dwell in the love of the Father and the Son.

This Sunday reveals that mission without prayer becomes sterile, while prayer that refuses mission becomes self-enclosed. The Spirit promised by Christ unites interior transformation and outward witness. The Gospel's call to charity, obedience, and peace is therefore not moralism, but participation in the life that the risen Lord pours into his Church.

For the faithful, the Sixth Sunday of Easter is a school of interior mission. It invites Christians to desire the Spirit more deeply, to let divine love become the measure of their actions, and to understand that the Church's apostolic courage is born from abiding in God rather than from human energy alone.
$desc$),
  ('seventh-sunday-of-easter','Seventh Sunday of Easter', $desc$
The Seventh Sunday of Easter contemplates the Church in the interval of prayerful expectation that stretches from the Lord's exaltation to the outpouring of the Holy Spirit. It is a Sunday of Paschal joy marked by a contemplative stillness, as believers learn to live between fulfilled victory and promised mission. The Church appears here in her cenacle identity: gathered, praying, united, and open to the gift from on high.

Its theology is shaped by Christ's intercession and by the perseverance of the apostolic community. The exalted Lord prays for his own, for their unity, and for their sanctification in truth. The disciples, gathered with Mary, embody a Church that is not abandoned by Christ's departure but drawn more deeply into dependence upon his promise. Absence becomes the place where trust matures.

This Sunday shows that waiting is not spiritual emptiness. The Church's expectancy is active, communal, and hopeful. Prayer, unity, and steadfastness prepare the heart for the Spirit and keep the community from confusing delay with abandonment. In this sense the day is profoundly missionary, because it teaches how the Church must be formed before she is sent.

For the faithful, the Seventh Sunday of Easter offers wisdom for every season of uncertainty. It encourages Christians to remain united in prayer, attentive to Christ's intercession, and ready for the new work God prepares even when its full shape is not yet visible.
$desc$)
) AS x(slug, name, description) ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- TRANSLATIONS FR
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
  ('third-sunday-of-easter',  'Troisième dimanche de Pâques', $desc$
Le Troisième dimanche de Pâques appartient à la joie prolongée de l'Église pendant le temps pascal et marque une étape dans la maturation de la foi en la résurrection. Après l'intensité de l'octave, l'Église continue de contempler comment le Ressuscité forme ses disciples en un peuple stable, joyeux et obéissant. Pâques y apparaît non seulement comme une victoire à proclamer, mais comme une vie dans laquelle les croyants doivent grandir patiemment.

Son centre théologique est la reconnaissance du Ressuscité dans l'Écriture, la communion de table, la prédication apostolique et la persévérance du disciple. Les traditions associées à ce dimanche évoquent volontiers Emmaüs, la fraction du pain et la transformation de disciples déconcertés en témoins. Le jour enseigne que le Seigneur est connu là où il ouvre les Écritures, nourrit les siens et les rassemble dans la communion de l'Église.

Ce dimanche met ainsi en lumière la forme ecclésiale de la foi pascale. La résurrection n'est pas une conviction purement intérieure, mais une réalité reçue dans le culte, proclamée par la parole apostolique et incarnée dans une vie d'obéissance. L'Église apprend qu'une foi mûre grandit par une écoute persévérante, la participation sacramentelle et la disponibilité à suivre le Ressuscité où il conduit.

Pour les fidèles, le Troisième dimanche de Pâques est un appel à dépasser les enthousiasmes religieux passagers. Il invite les chrétiens à reconnaître le Seigneur vivant dans les lieux ordinaires où il a promis de se laisser trouver et à faire de cette reconnaissance le fondement d'une vie plus stable, plus reconnaissante et plus missionnaire.
$desc$),
  ('fourth-sunday-of-easter', 'Quatrième dimanche de Pâques (Bon Pasteur)', $desc$
Le Quatrième dimanche de Pâques est marqué par la figure bien-aimée du Christ Bon Pasteur et contemple le Ressuscité dans le soin qu'il prend du troupeau qu'il a racheté. La résurrection y apparaît non seulement comme victoire sur la mort, mais comme le triomphe du Pasteur qui a donné sa vie et qui conduit maintenant les siens dans la gloire. La tendresse pastorale du Christ est inséparable des blessures par lesquelles il a sauvé son peuple.

La théologie du jour est centrée sur la reconnaissance, la confiance et l'appartenance. Le Christ connaît ses brebis, les appelle par leur nom et leur donne la vie en abondance. Parce qu'il est ressuscité, son action pastorale est vivante et présente, non pas seulement rappelée par la mémoire. Les ministères, les vocations et les formes de sollicitude dans l'Église ne reçoivent leur sens qu'en participant à cet unique office pastoral du Seigneur.

Ce dimanche révèle aussi que l'autorité dans l'Église doit être mesurée à la conformité au Pasteur qui sert et se livre. Le troupeau n'est pas rassemblé par domination, mais par la voix de celui qui donne sa vie pour les autres. Dans cette lumière, toute vocation chrétienne - ordonnée, consacrée, familiale ou laïque - devient une réponse à l'appel aimant du Ressuscité.

Pour les fidèles, surtout dans les communautés qui prient pour les vocations, le Quatrième dimanche de Pâques demeure profondément pastoral. Il enseigne à écouter la voix du Pasteur, à discerner l'authentique autorité spirituelle et à se demander comment chaque baptisé est appelé à suivre le Christ avec plus de générosité pour la vie du monde.
$desc$),
  ('fifth-sunday-of-easter',  'Cinquième dimanche de Pâques', $desc$
Le Cinquième dimanche de Pâques contemple la vie qui découle de la résurrection pour devenir communion dans l'Église. À mesure que la saison pascale avance, l'attention se déplace du choc du tombeau vide vers la forme d'existence créée par le Ressuscité. Pâques y apparaît comme la source d'un peuple recréé dans l'amour, soutenu par la grâce et orienté vers l'accomplissement céleste que Dieu prépare.

Sa théologie est centrée sur la communion demeurante. Le commandement nouveau de l'amour, l'image de la vigne et des sarments, et l'espérance de la cité sainte descendant de Dieu manifestent que la résurrection n'est pas un miracle isolé, mais le commencement d'une humanité transformée. Le Christ rassemble les croyants dans sa propre vie afin que la charité devienne dans le monde le signe visible de Pâques.

Ce dimanche enseigne que l'unité de l'Église n'est pas seulement institutionnelle, mais vitale et sacramentelle. Demeurer dans le Christ, c'est recevoir de lui la vie, porter du fruit par la persévérance et découvrir que l'amour de Dieu et du prochain est la véritable forme de la création nouvelle. Le Ressuscité forme non seulement des disciples individuels, mais une communion capable de refléter sa gloire.

Pour les fidèles, le Cinquième dimanche de Pâques demande si la vie chrétienne porte réellement un fruit pascal. Il appelle familles, amitiés et communautés à se mesurer à la patience, au don de soi, à l'unité et à l'espérance, afin que les relations ordinaires deviennent des signes du monde renouvelé dans le Christ.
$desc$),
  ('sixth-sunday-of-easter',  'Sixième dimanche de Pâques', $desc$
Le Sixième dimanche de Pâques se tient vers la fin du temps pascal et contemple comment la vie du Ressuscité s'ouvre vers le don de l'Esprit Saint. L'Église y apprend que Pâques ne s'achève pas dans le seul souvenir, mais dans la demeure de Dieu et dans l'envoi apostolique. Ce que le Christ a accompli dans sa Pâque y apparaît comme portant du fruit dans l'amour, l'obéissance et la mission.

Son accent théologique porte sur le Défenseur promis et sur le lien entre amour et fidélité. Le Christ promet le Paraclet, enseigne que ceux qui l'aiment gardent sa parole et prépare ses disciples à une communion tout ensemble contemplative et missionnaire. La résurrection s'épanouit ainsi en une vie soutenue par l'Esprit, où les croyants demeurent dans l'amour du Père et du Fils.

Ce dimanche révèle qu'une mission sans prière devient stérile, tandis qu'une prière fermée à la mission se replie sur elle-même. L'Esprit promis par le Christ unit transformation intérieure et témoignage extérieur. L'appel évangélique à la charité, à l'obéissance et à la paix n'est donc pas un simple moralisme, mais une participation à la vie que le Ressuscité répand dans son Église.

Pour les fidèles, le Sixième dimanche de Pâques est une école de mission intérieure. Il invite les chrétiens à désirer plus profondément l'Esprit, à laisser l'amour divin devenir la mesure de leurs actes, et à comprendre que le courage apostolique de l'Église naît de la demeure en Dieu plus que de l'énergie humaine.
$desc$),
  ('seventh-sunday-of-easter','Septième dimanche de Pâques', $desc$
Le Septième dimanche de Pâques contemple l'Église dans cet intervalle d'attente priante qui s'étend de l'exaltation du Seigneur jusqu'à l'effusion de l'Esprit Saint. C'est un dimanche de joie pascale marqué par une paix contemplative, où les croyants apprennent à vivre entre victoire accomplie et mission promise. L'Église s'y montre dans son identité de cénacle: rassemblée, priante, unie et ouverte au don venu d'en haut.

Sa théologie est façonnée par l'intercession du Christ et par la persévérance de la communauté apostolique. Le Seigneur glorifié prie pour les siens, pour leur unité et pour leur sanctification dans la vérité. Les disciples, réunis avec Marie, manifestent une Église que le départ du Christ n'abandonne pas, mais qu'il attire plus profondément dans la dépendance de sa promesse. L'absence devient alors le lieu où la confiance mûrit.

Ce dimanche montre que l'attente n'est pas un vide spirituel. L'espérance de l'Église est active, communautaire et confiante. La prière, l'unité et la persévérance préparent le cœur à l'Esprit et empêchent la communauté de confondre le délai avec l'abandon. En ce sens, le jour est profondément missionnaire, car il enseigne comment l'Église doit être formée avant d'être envoyée.

Pour les fidèles, le Septième dimanche de Pâques offre une sagesse précieuse pour chaque saison d'incertitude. Il encourage les chrétiens à demeurer unis dans la prière, attentifs à l'intercession du Christ, et prêts pour l'œuvre nouvelle que Dieu prépare même lorsque sa forme entière n'est pas encore visible.
$desc$)
) AS x(slug, name, description) ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- TRANSLATIONS LA
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
  ('third-sunday-of-easter',  'Dominica III Paschae', $desc$
Dominica III Paschae ad diuturnam Ecclesiae laetitiam paschalem pertinet atque statum notat in maturatione fidei resurrectionis. Post vehementiam octavae Ecclesia pergit contemplari quomodo Dominus resuscitatus discipulos suos in populum stabilem, laetum et oboedientem formet. Pascha hic ostenditur non solum ut victoria praedicanda, sed ut vita in qua credentes constanter crescere debent.

Theologicum centrum eius est recognitio Christi resuscitati in Scripturis, communione mensae, praedicatione apostolica et perseveranti discipulatu. Traditiones huic dominicae adnexae saepe Emmaum, fractionem panis et conversionem discipulorum perturbatorum in testes commemorant. Dies docet Dominum cognosci ubi Scripturas aperit, suos nutrit eosque in Ecclesiae communionem congregat.

Haec dominica igitur formam ecclesialem fidei paschalis illustrat. Resurrectio non est mera interior persuasio, sed res in cultu recepta, per apostolicum verbum proclamata et in vita oboedientiae incarnata. Ecclesia discit maturam fidem per assiduam auditionem, sacramentalem participationem et promptitudinem sequi quo Christus resuscitatus ducit crescere.

Fidelibus Dominica III Paschae vocatio est ad motus religiosos fugaces transcendendos. Christianos invitat ut Dominum viventem in locis ordinariis agnoscant ubi se inveniri promisit, atque ex illa recognitione fundamentum vitae stabilioris, gratioris et missionariae constituant.
$desc$),
  ('fourth-sunday-of-easter', 'Dominica IV Paschae (Boni Pastoris)', $desc$
Dominica IV Paschae imagine dilecta Christi Boni Pastoris insignitur atque Dominum resuscitatum contemplatur in cura gregis quem redemit. Resurrectio hic cernitur non solum ut victoria de morte, sed ut triumphus Pastoris qui animam suam posuit et nunc suos in gloria ducit. Pastoralis Christi mansuetudo a vulneribus quibus populum suum salvavit separari non potest.

Theologia diei circa recognitionem, fiduciam et adscriptionem versatur. Christus oves suas novit, eas nomine vocat et vitam eis abundantius tribuit. Quia resurrexit, eius pastorale regimen vivum et praesens est, non mera memoria retentum. Ministeria, vocationes et formae curae in Ecclesia sensum suum accipiunt tantum quatenus illi unico muneri pastorali Domini participant.

Haec dominica etiam revelat auctoritatem in Ecclesia metiendam esse ex conformitate ad Pastorem qui ministrat et se ipsum tradit. Grex non dominatione congregatur, sed voce eius qui vitam suam pro aliis dat. Hac in luce omnis christiana vocatio - ordinata, consecrata, familiaris vel laicalis - responsio fit ad amantem Christi resuscitati vocationem.

Fidelibus, praesertim communitatibus pro vocationibus orantibus, Dominica IV Paschae intime pastoralis permanet. Docet vocem Pastoris audire, veram spiritualem auctoritatem discernere, atque quaerere quomodo unusquisque baptizatus liberaliori animo Christum sequi vocetur pro vita mundi.
$desc$),
  ('fifth-sunday-of-easter',  'Dominica V Paschae', $desc$
Dominica V Paschae vitam contemplatur quae ex resurrectione in communionem Ecclesiae manat. Dum tempus paschale progreditur, attentio a primo sepulcri vacui stupore ad formam vitae a Domino resuscitato creatam transfertur. Pascha hic apparet fons populi in caritate recreati, gratia sustentati et ad caelestem consummationem quam Deus parat ordinati.

Theologia eius circa communionem manentem vertitur. Mandatum novum amoris, imago vitis et palmitum, atque spes civitatis sanctae a Deo descendentis ostendunt resurrectionem non esse miraculum solitarium, sed initium humanitatis transformatae. Christus credentes in vitam suam colligit ut caritas signum visibile Paschae in mundo fiat.

Haec dominica docet unitatem Ecclesiae non esse mere institutionalem, sed vitalem et sacramentalem. In Christo manere est vitam ab eo recipere, per perseverantiam fructum ferre, atque intellegere amorem Dei et proximi veram novae creationis formam esse. Resuscitatus non solum discipulos singulos, sed communionem gloriae suae imaginem reddere valentem format.

Fidelibus Dominica V Paschae quaerit num vita christiana vere fructum paschalem ferat. Familias, amicitias et communitates vocat ut se patientia, sui donatione, unitate et spe metiantur, ut relationes ordinariae signa mundi in Christo renovati fiant.
$desc$),
  ('sixth-sunday-of-easter',  'Dominica VI Paschae', $desc$
Dominica VI Paschae prope finem temporis paschalis stat atque contemplatur quomodo vita Christi resuscitati ad donum Spiritus Sancti aperiatur. Ecclesia docetur Pascha non in sola recordatione consummari, sed in divina inhabitatione et apostolica missione. Quod Christus in Paschate suo perfecit nunc fructum ferre ostenditur in amore, oboedientia et missione.

Accentus theologici versantur circa Advocatum promissum et nexum inter amorem et fidelitatem. Christus Paraclitum promittit, docet eos qui ipsum diligunt verbum eius servare, atque discipulos ad communionem simul contemplativam et missionariam praeparat. Sic resurrectio in vitam Spiritu sustentatam floret, qua credentes in amore Patris et Filii manent.

Haec dominica revelat missionem sine oratione sterilem fieri, orationem autem missionem recusantem in se ipsam claudi. Spiritus a Christo promissus interiorem transformationem et exteriorem testificationem coniungit. Evangelii igitur vocatio ad caritatem, oboedientiam et pacem non est nudus moralis sermo, sed participatio vitae quam Resuscitatus Ecclesiae suae infundit.

Fidelibus Dominica VI Paschae schola interioris missionis est. Christianos invitat ut Spiritum altius desiderent, ut amorem divinum mensuram actuum suorum esse sinant, et intellegant apostolicam Ecclesiae audaciam ex manendo in Deo potius quam ex sola humana industria nasci.
$desc$),
  ('seventh-sunday-of-easter','Dominica VII Paschae', $desc$
Dominica VII Paschae Ecclesiam contemplatur in intervallo exspectationis orantis quod ab exaltatione Domini usque ad effusionem Spiritus Sancti porrigitur. Est dominica gaudii paschalis quadam tamen quiete contemplativa signata, dum credentes discunt inter victoriam completam et missionem promissam vivere. Ecclesia hic in identitate cenaculi apparet: congregata, orans, unita et ad donum desuper apertissima.

Theologia eius intercessione Christi et perseverantia communitatis apostolicae formatur. Dominus exaltatus pro suis, pro unitate eorum et pro sanctificatione in veritate orat. Discipuli cum Maria congregati Ecclesiam ostendunt quam discessus Christi non deserat, sed altius in promissionis eius dependentiam attrahat. Absentia locus fit ubi fiducia maturescit.

Haec dominica demonstrat expectationem non esse vacuum spirituale. Exspectatio Ecclesiae activa, communis et spe plena est. Oratio, unitas et constantia cor ad Spiritum praeparant et communitatem impediunt ne moram cum derelictione confundat. Hac ratione dies valde missionarius est, quia docet quomodo Ecclesia formari debeat antequam mittatur.

Fidelibus Dominica VII Paschae sapientiam praebet ad omne tempus incertitudinis. Christianos hortatur ut in oratione uniti permaneant, intercessionem Christi attendant, et ad novum opus quod Deus parat prompti sint, etiam cum plena eius forma nondum appareat.
$desc$)
) AS x(slug, name, description) ON f.slug = x.slug
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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('third-sunday-of-easter', $desc$
In the Roman General Calendar, this Sunday is observed on Easter Sunday plus fourteen days as a white Sunday of Easter. Its placement extends the Paschal season beyond the octave and lets the lectionary continue unfolding the Church's growth in resurrection faith.
$desc$),
('fourth-sunday-of-easter', $desc$
In the Roman General Calendar, this celebration falls on Easter Sunday plus twenty-one days as a white Sunday of Easter. The modern Roman observance commonly highlights the Good Shepherd theme and is closely associated with the Church's prayer for vocations.
$desc$),
('fifth-sunday-of-easter', $desc$
In the Roman General Calendar, this Sunday is kept on Easter Sunday plus twenty-eight days with the rank proper to the major Sundays of the season and white vesture. Its place in the current Easter sequence bridges Good Shepherd Sunday and the more explicit preparation for Pentecost.
$desc$),
('sixth-sunday-of-easter', $desc$
In the Roman General Calendar, this observance occurs on Easter Sunday plus thirty-five days as a white Sunday of Easter. It serves as an immediate paschal preparation for Ascension and Pentecost, even while remaining fully within the joy of Easter.
$desc$),
('seventh-sunday-of-easter', $desc$
In the Roman General Calendar, this Sunday is assigned to Easter Sunday plus forty-two days and remains a white Sunday of Easter. In places where Ascension remains on Thursday it is experienced between Ascension and Pentecost, while elsewhere the surrounding pastoral context can differ.
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
('third-sunday-of-easter', $desc$
Dans le calendrier ROMAN_GENERAL, ce dimanche est observé à Pâques plus quatorze jours comme dimanche pascal en blanc. Sa place prolonge le temps pascal au-delà de l'octave et permet au lectionnaire de poursuivre le déploiement de la foi pascale de l'Église.
$desc$),
('fourth-sunday-of-easter', $desc$
Dans le calendrier ROMAN_GENERAL, cette célébration tombe à Pâques plus vingt et un jours comme dimanche pascal en blanc. L'observance romaine actuelle met volontiers en valeur le thème du Bon Pasteur et l'associe étroitement à la prière de l'Église pour les vocations.
$desc$),
('fifth-sunday-of-easter', $desc$
Dans le calendrier ROMAN_GENERAL, ce dimanche est gardé à Pâques plus vingt-huit jours avec le rang propre aux grands dimanches de la saison et le blanc pascal. Sa place dans la séquence actuelle de Pâques fait le lien entre le dimanche du Bon Pasteur et la préparation plus explicite à la Pentecôte.
$desc$),
('sixth-sunday-of-easter', $desc$
Dans le calendrier ROMAN_GENERAL, cette observance revient à Pâques plus trente-cinq jours comme dimanche pascal en blanc. Elle sert de préparation pascale immédiate à l'Ascension et à la Pentecôte, tout en demeurant pleinement dans la joie de Pâques.
$desc$),
('seventh-sunday-of-easter', $desc$
Dans le calendrier ROMAN_GENERAL, ce dimanche est assigné à Pâques plus quarante-deux jours et demeure un dimanche pascal en blanc. Là où l'Ascension reste célébrée le jeudi, il est vécu entre l'Ascension et la Pentecôte; ailleurs, son contexte pastoral immédiat peut être perçu différemment.
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
('third-sunday-of-easter', $desc$
In calendario ROMAN_GENERAL haec dominica quarto decimo die post Pascha ut dominica alba temporis paschalis observatur. Locus eius tempus paschale ultra octavam extendit atque lectionario sinit incrementum fidei resurrectionis in Ecclesia explicare.
$desc$),
('fourth-sunday-of-easter', $desc$
In calendario ROMAN_GENERAL haec celebratio vicesimo primo die post Pascha tamquam dominica alba temporis paschalis occurrit. Observantia Romana hodierna thema Boni Pastoris saepius illustrat eamque arcte cum oratione Ecclesiae pro vocationibus coniungit.
$desc$),
('fifth-sunday-of-easter', $desc$
In calendario ROMAN_GENERAL haec dominica vicesimo octavo die post Pascha servatur cum gradu maiorum dominicarum temporis et albo paschali. Locus eius in hodierna serie paschali inter Dominicam Boni Pastoris et expressiorem ad Pentecosten praeparationem medius stat.
$desc$),
('sixth-sunday-of-easter', $desc$
In calendario ROMAN_GENERAL haec observantia tricesimo quinto die post Pascha tamquam dominica alba paschalis occurrit. Proxima praeparatio paschalis ad Ascensionem et Pentecosten efficitur, manente tamen plena gaudii Paschatis indole.
$desc$),
('seventh-sunday-of-easter', $desc$
In calendario ROMAN_GENERAL haec dominica quadragesimo secundo die post Pascha assignatur et dominica alba Paschae manet. Ubi Ascensio feria quinta servatur, inter Ascensionem et Pentecosten percipitur; alibi contextus pastoralis proximus aliter experiri potest.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;


-- FEAST
INSERT INTO feasts (slug, default_name, feast_type) VALUES
('easter-vigil-in-the-holy-night', 'Easter Vigil in the Holy Night', 'christological')
ON CONFLICT (slug) DO NOTHING;

-- TRANSLATIONS
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('easter-vigil-in-the-holy-night', 'Easter Vigil in the Holy Night', $desc$
The Easter Vigil in the Holy Night is the Church's most ancient and most exalted vigil, praised by the Fathers and famously called by Saint Augustine the mother of all holy vigils. It keeps watch at the turning point of salvation history, when the darkness of the tomb yields to the light of the resurrection. More than any other night of the year, it gathers the whole Christian mystery into one act of remembrance, proclamation, initiation, and praise.

Its theology is cosmic and sacramental. From the blessing of the new fire and the Paschal candle, through the great survey of salvation history in the readings, to Baptism and the first Eucharist of Easter, the Church celebrates the passage from darkness to light, from slavery to freedom, and from death to life in Christ. Creation, covenant, exodus, prophecy, redemption, and new birth are contemplated as one divine work fulfilled in the risen Lord.

The Vigil also manifests the deepest identity of the Church. She is the people who listen to God's mighty deeds, pass through the waters, renounce sin, confess the faith, and enter the Eucharistic banquet of the Lamb. The liturgy's breadth is not ceremonial excess, but the proper measure of a mystery in which the whole history of salvation converges and becomes sacramentally present.

For the faithful, the Easter Vigil remains a privileged school of memory and hope. It teaches Christians to read their own lives through the works of God, to renew baptismal identity with seriousness and joy, and to confess that Christ's resurrection is the decisive light by which every darkness, personal or historical, must finally be judged.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('easter-vigil-in-the-holy-night', 'Vigile pascale dans la Nuit sainte', $desc$
La Vigile pascale dans la Nuit sainte est la plus ancienne et la plus haute des vigiles de l'Église; les Pères l'ont magnifiée et saint Augustin l'a appelée la mère de toutes les saintes vigiles. Elle veille au point de bascule de l'histoire du salut, lorsque l'obscurité du tombeau cède à la lumière de la résurrection. Plus qu'aucune autre nuit de l'année, elle rassemble tout le mystère chrétien dans un unique acte de mémoire, de proclamation, d'initiation et de louange.

Sa théologie est cosmique et sacramentelle. Depuis la bénédiction du feu nouveau et du cierge pascal, en passant par la grande traversée de l'histoire du salut dans les lectures, jusqu'au Baptême et à la première Eucharistie de Pâques, l'Église célèbre le passage des ténèbres à la lumière, de l'esclavage à la liberté et de la mort à la vie dans le Christ. La création, l'alliance, l'exode, la prophétie, la rédemption et la renaissance y sont contemplés comme une seule œuvre divine accomplie dans le Ressuscité.

La Vigile manifeste aussi l'identité la plus profonde de l'Église. Elle est le peuple qui écoute les hauts faits de Dieu, traverse les eaux, renonce au péché, confesse la foi et entre au banquet eucharistique de l'Agneau. L'ampleur de la liturgie n'est pas un excès cérémoniel, mais la juste mesure d'un mystère où toute l'histoire du salut converge et devient sacramentellement présente.

Pour les fidèles, la Vigile pascale demeure une école privilégiée de mémoire et d'espérance. Elle apprend aux chrétiens à lire leur propre vie à la lumière des œuvres de Dieu, à renouveler leur identité baptismale avec gravité et joie, et à confesser que la résurrection du Christ est la lumière décisive par laquelle toute ténèbre, personnelle ou historique, doit finalement être jugée.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('easter-vigil-in-the-holy-night', 'Vigilia Paschalis in Nocte Sancta', $desc$
Vigilia Paschalis in Nocte Sancta antiquissima simul atque excelsissima Ecclesiae vigilia est, a Patribus celebrata et a sancto Augustino mater omnium sanctarum vigiliarum insigniter appellata. In cardine historiae salutis vigilat, cum tenebra sepulcri luci resurrectionis cedunt. Nulla alia nox totum mysterium christianum ita colligit in uno actu memoriae, proclamationis, initiationis et laudis.

Theologia eius cosmica est et sacramentalis. A benedictione ignis novi et cerei paschalis, per magnam salutis historiam in lectionibus decursam, usque ad Baptismum et primam Paschae Eucharistiam, Ecclesia transitum celebrat de tenebris ad lucem, de servitute ad libertatem, de morte ad vitam in Christo. Creatio, foedus, exodus, prophetia, redemptio et regeneratio velut unum Dei opus contemplantur, in Domino resuscitato adimpletum.

Vigilia etiam profundissimam Ecclesiae identitatem manifestat. Ipsa est populus qui magnalia Dei audit, per aquas transit, peccato renuntiat, fidem profitetur et ad eucharisticum Agni convivium ingreditur. Latitudo huius liturgiae non est caeremonialis redundantia, sed debita mensura mysterii in quo tota historia salutis convenit atque sacramentaliter praesens efficitur.

Fidelibus Vigilia Paschalis praecipua memoriae et spei schola permanet. Christianos docet vitam suam per Dei opera legere, identitatem baptismalem graviter ac laete renovare, atque confiteri resurrectionem Christi esse lumen decisivum quo omnis tenebra, sive personalis sive historica, tandem iudicanda sit.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('easter-vigil-in-the-holy-night', $desc$
In the Roman General Calendar, the Easter Vigil is celebrated on the night preceding Easter Sunday and is not treated as a simple anticipated Mass. It belongs to the Paschal Triduum itself, uses white, carries the rank PASCHAL_TRIDUUM, and unfolds through the lucernarium, expanded Liturgy of the Word, Baptismal Liturgy, and Eucharistic Liturgy.
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
('easter-vigil-in-the-holy-night', $desc$
Dans le calendrier ROMAN_GENERAL, la Vigile pascale est célébrée durant la nuit qui précède le dimanche de Pâques et n'est pas traitée comme une simple messe anticipée. Elle appartient au Triduum pascal lui-même, emploie le blanc, reçoit le rang PASCHAL_TRIDUUM et se déploie selon le lucernaire, la liturgie élargie de la Parole, la liturgie baptismale et la liturgie eucharistique.
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
('easter-vigil-in-the-holy-night', $desc$
In calendario ROMAN_GENERAL Vigilia Paschalis nocte quae Dominicam Paschae antecedit celebratur nec tamquam mera Missa anticipata habetur. Ad ipsum Triduum Paschale pertinet, colore albo utitur, gradum PASCHAL_TRIDUUM obtinet, atque per lucernarium, ampliorem Liturgiam Verbi, Liturgiam Baptismalem et Liturgiam Eucharisticam explicatur.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

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
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('palm-sunday-of-the-passion-of-the-lord', 'Palm Sunday of the Passion of the Lord', $desc$
Palm Sunday of the Passion of the Lord commemorates Christ's entry into Jerusalem and sets that acclamation beside the proclamation of his Passion. From ancient times Christian worship has held together the branches of welcome and the Gospel of suffering, teaching that the Messiah enters his city in humility and freely goes toward the Cross. The feast therefore contemplates one mystery under two inseparable aspects: royal acclaim and obedient self-offering.

Its theology is deliberately paradoxical. The same Christ who is greeted with hosannas is then heard in the Passion narrative moving toward abandonment, trial, and crucifixion, so that the Church may understand messianic kingship as obedient self-offering rather than worldly domination. Palm Sunday reveals how glory and humiliation belong to one saving mystery, and it trains the faithful to follow Christ beyond moments of enthusiasm into costly discipleship.

The ritual action of this feast deepens its meaning. The procession or solemn entrance, the blessing of branches, and the reading of the Passion show that the One whom the crowds praise is the same Lord who accepts rejection for the salvation of the world. The changing voice of the crowd becomes a mirror in which believers learn the instability of superficial devotion and the steadfastness of Christ's love.

For Christians today, Palm Sunday exposes the instability of superficial devotion and invites conversion of heart. It asks whether believers will remain with Christ when praise turns to scandal, and it teaches communities to enter the holiest days of the year not as spectators of ritual drama but as disciples prepared to walk the way of the Cross.
$desc$),
('monday-of-holy-week', 'Monday of Holy Week', $desc$
Monday of Holy Week invites the Church to dwell with Christ in the final days before his Passion. The Gospel tradition associated with this day turns attention to Bethany, where the Lord is welcomed in friendship and anointed for the mystery that is approaching. The feast therefore opens the week's more hidden drama through contemplation rather than through public conflict.

The Gospel of this day traditionally recounts the anointing at Bethany, where Mary pours costly perfume upon the Lord in a gesture of love that anticipates his burial. Theologically, the day sets gratuitous devotion against the calculating spirit of betrayal: true discipleship recognizes the worth of Christ and pours itself out before the mystery of his approaching death. Love understands what cynicism cannot.

By placing Bethany at the threshold of the Passion, the feast reveals that genuine worship is never wasted. The fragrance of the ointment becomes an image of the love that prepares the body of Christ for burial and of the devotion by which believers learn to honor him without reserve. In this way the day teaches that adoration already contains within itself the logic of sacrifice.

Pastorally, the day calls the faithful to examine what in their lives is reserved, guarded, or counted too precious to offer to Christ. Bethany becomes a school of lavish love, teaching that the preparation for Holy Week is not merely moral seriousness but generous worship, concrete service, and readiness to be misunderstood for the sake of devotion.
$desc$),
('tuesday-of-holy-week', 'Tuesday of Holy Week', $desc$
Tuesday of Holy Week draws the Church more deeply into the interior drama that surrounds the Lord's Passion. The Gospel places the community of disciples under the searching light of Christ's words, as betrayal and denial are both foretold before they occur. The feast is therefore marked by sober truthfulness about the weakness that can exist even near the Lord's table.

Its Gospel places side by side the prediction of Judas's betrayal and Peter's denial. The theological force of the day lies in exposing sin not only as open treachery but also as weakness, fear, and misplaced self-confidence within the circle of discipleship. Christ remains lucid and sovereign amid disloyalty, and his foreknowledge reveals that his Passion is not a trap laid by enemies alone but the obedience by which he freely gives himself.

The feast shows that discipleship must pass through purification of heart. Peter's fervor and Judas's treachery are very different, yet both reveal how human beings can resist grace through pride, fear, or calculation. In contemplating this day, the faithful learn that steadfastness comes not from self-confidence but from the mercy of Christ who knows their frailty before they do.

For the faithful, Tuesday of Holy Week is a severe mercy. It warns against complacency, teaches distrust of merely verbal loyalty, and encourages prayer for perseverance, so that disciples may learn to rely not on their own constancy but on the steadfast love of Christ who knows their frailty before they do.
$desc$),
('wednesday-of-holy-week', 'Wednesday of Holy Week', $desc$
Wednesday of Holy Week, traditionally called Spy Wednesday, contemplates Judas's arrangement with the chief priests and stands as a dark threshold before the sacred days of the Passion. The feast turns attention to the hidden decisions of the heart by which betrayal is conceived before it is carried out. It therefore confronts the mystery of evil arising not only from hostility outside the circle of faith, but from infidelity within it.

Theologically, the day confronts the mystery of betrayal from within intimacy. Judas is not an external persecutor but one of the Twelve, and his bargaining reveals how proximity to holy things can coexist with a hardened heart. The day therefore warns that sin can take the form of calculating exchange, where relationship with God is subordinated to interest, power, or disappointment.

In the economy of the week, this day gives betrayal its full seriousness. Judas's bargain is shown not merely as a personal failure, but as a warning that the gifts of God can be instrumentalized when love grows cold. The faithful are thus led to perceive more clearly both the price of infidelity and the steadfastness of the Lord who still offers mercy.

Pastorally, Wednesday of Holy Week invites honest examination of conscience. It asks where disciples may be tempted to instrumentalize religion, to trade fidelity for advantage, or to let resentment mature into infidelity, and it urges a return to repentance before the sacred days unfold the mercy still offered by the betrayed Lord.
$desc$),
('holy-thursday-evening-mass-of-the-lords-supper', 'Holy Thursday: Evening Mass of the Lord''s Supper', $desc$
Holy Thursday: Evening Mass of the Lord's Supper commemorates the Last Supper, at which Christ gave his Body and Blood to the disciples and entrusted to the Church the memorial of his sacrifice. The feast also recalls the commandment of fraternal charity and the humble service symbolized in the washing of feet. It stands at the point where the self-gift of Christ is placed sacramentally in the hands of his people even as the night of his surrender begins.

Its theology is inexhaustibly rich: the institution of the Eucharist, the commandment of fraternal charity, and the sacrificial priesthood all stand together in one mystery of self-giving love. Christ hands over not only bread and wine transformed into his Body and Blood, but also the pattern by which the Church is to live - a communion rooted in sacrificial service. The washing of feet, while not the center of the liturgy, manifests the form of authority born from the Eucharistic Christ.

The feast also reveals the close bond between worship and life. Eucharistic communion cannot be separated from love of neighbor, vigilance with Christ, and readiness to accompany him in his hour. Even within the intimacy of the supper, the shadow of betrayal and the approach of Gethsemane show that divine love gives itself completely for the world's salvation.

For the faithful, Holy Thursday is an annual return to the sources of ecclesial life. It invites adoration of the Eucharistic Lord, gratitude for ordained ministry, conversion to humble service, and deeper awareness that communion with Christ at the altar must issue in charity, vigilance, and willingness to accompany him into the night of his surrender.
$desc$),
('friday-of-the-passion-of-the-lord', 'Friday of the Passion of the Lord', $desc$
Friday of the Passion of the Lord is one of the most ancient and austere observances of Christian worship. From early centuries believers kept this day with fasting, Scripture, prayer, and veneration of the Cross, entering in silence before the mystery of the Lord's death. The feast stands at the heart of the paschal mystery by contemplating the sacrifice through which the sin of the world is taken away.

Theologically, Good Friday contemplates the Cross not as tragic failure but as the hour of redemptive obedience in which the Lamb of God takes away the sin of the world. The Passion according to John, the solemn intercessions embracing the whole world, and the adoration of the holy Cross together proclaim that Christ reigns precisely from the wood of sacrifice. Here divine justice and divine mercy meet without confusion or compromise.

The Cross revealed on this day is both judgment and mercy. Human violence and divine love meet in the crucified Christ, whose pierced side becomes the fountain of redemption. By contemplating his Passion, the Church learns that victory is won not by force but by the obedience of the Son who loves to the end.

For believers today, Friday of the Passion of the Lord remains the Church's deepest school of compassion, repentance, and hope. It teaches the faithful to bring the wounds of the world to the Cross, to renounce every trivialization of sin, and to trust that no suffering honestly united to Christ's can remain outside the reach of redemption.
$desc$),
('holy-saturday', 'Holy Saturday', $desc$
Holy Saturday is the ancient day of the Church's great silence, lying between the death of the Lord and the night of his resurrection. It is marked by fasting, recollection, and waiting beside the tomb, while faith holds fast to the promise of victory not yet seen. The feast contemplates the stillness in which the body of Christ rests in the grave and his saving work reaches even to the realm of the dead.

Theologically, Holy Saturday is the liturgy of absence and hidden action. Christ rests in the tomb according to the flesh, descends to the dead, and brings even the realm of death under the reach of his redeeming presence. The day teaches that divine victory can be at work in utter stillness, when visible activity ceases and faith must live on promise alone.

This day gives Christian shape to waiting. Nothing outward seems to happen, yet the mystery of redemption is not suspended; it is hidden. Holy Saturday teaches that God's work often unfolds beneath the surface of visible events and that hope can remain faithful in darkness, grief, and apparent abandonment.

Pastorally, Holy Saturday speaks powerfully to all forms of human waiting, grief, and seeming abandonment. It invites the faithful to keep vigil where God seems hidden, to remember the dead in hope, and to learn that Christian faith includes patient endurance of the in-between, trusting that the silence of the tomb is not the end of the story.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- TRANSLATIONS FR
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('palm-sunday-of-the-passion-of-the-lord', 'Dimanche des Rameaux et de la Passion du Seigneur', $desc$
Le Dimanche des Rameaux et de la Passion du Seigneur commémore l'entrée du Christ à Jérusalem et place cette acclamation à côté de la proclamation de sa Passion. Depuis l'Antiquité, la prière de l'Église tient ensemble les rameaux de l'accueil et l'Évangile de la souffrance, montrant que le Messie entre dans sa ville avec douceur et marche librement vers la Croix. La fête contemple ainsi un unique mystère sous deux faces inséparables: l'acclamation royale et l'offrande obéissante.

Sa théologie est volontairement paradoxale. Le même Christ accueilli par les hosannas est ensuite entendu dans le récit de la Passion avançant vers l'abandon, le jugement et la crucifixion, afin que l'Église comprenne la royauté messianique comme oblation obéissante plutôt que domination mondaine. Ce dimanche révèle que gloire et humiliation appartiennent à un seul mystère de salut et forme les fidèles à suivre le Christ au-delà des moments d'enthousiasme, jusque dans un discipulat coûteux.

L'action rituelle elle-même en approfondit le sens. La procession ou l'entrée solennelle, la bénédiction des rameaux et la lecture de la Passion montrent que celui que la foule acclame est le même Seigneur qui accepte le rejet pour le salut du monde. La voix changeante de la multitude devient alors un miroir où les croyants apprennent à reconnaître l'instabilité d'une dévotion superficielle et la fermeté de l'amour du Christ.

Pour les chrétiens d'aujourd'hui, le Dimanche des Rameaux met à nu l'instabilité d'une dévotion superficielle et invite à la conversion du cœur. Il demande si les croyants demeureront avec le Christ lorsque la louange deviendra scandale, et il apprend aux communautés à entrer dans les jours les plus saints de l'année non comme spectateurs d'un drame rituel, mais comme disciples prêts à marcher sur le chemin de la Croix.
$desc$),
('monday-of-holy-week', 'Lundi de la Semaine sainte', $desc$
Le Lundi de la Semaine sainte invite l'Église à demeurer auprès du Christ dans les derniers jours qui précèdent sa Passion. La tradition évangélique associée à ce jour conduit vers Béthanie, où le Seigneur est accueilli dans l'amitié et reçoit une onction en vue du mystère qui approche. La fête ouvre ainsi le drame plus intérieur de la semaine par la contemplation plutôt que par le conflit public.

L'Évangile de ce jour rapporte traditionnellement l'onction à Béthanie, lorsque Marie répand un parfum précieux sur le Seigneur dans un geste d'amour qui anticipe son ensevelissement. Théologiquement, le jour oppose la dévotion gratuite à l'esprit calculateur de la trahison: le vrai disciple reconnaît le prix du Christ et se répand lui-même devant le mystère de sa mort prochaine. L'amour comprend ce que le cynisme demeure incapable de saisir.

En plaçant Béthanie au seuil de la Passion, la fête révèle qu'un vrai culte n'est jamais perdu. Le parfum répandu devient l'image de l'amour qui prépare le corps du Christ à la sépulture et de la dévotion par laquelle les croyants apprennent à l'honorer sans réserve. De cette manière, le jour enseigne que l'adoration contient déjà en elle-même la logique du sacrifice.

Pastoralement, ce jour appelle les fidèles à examiner ce qu'ils gardent en réserve, protègent jalousement ou jugent trop précieux pour l'offrir au Christ. Béthanie devient une école d'amour sans mesure, enseignant que la préparation à la Semaine sainte n'est pas seulement sérieux moral, mais culte généreux, service concret et disponibilité à être incompris pour la cause de la dévotion.
$desc$),
('tuesday-of-holy-week', 'Mardi de la Semaine sainte', $desc$
Le Mardi de la Semaine sainte fait entrer plus profondément l'Église dans le drame intérieur qui entoure la Passion du Seigneur. L'Évangile place la communauté des disciples sous la lumière pénétrante de la parole du Christ, tandis que trahison et reniement sont annoncés avant de s'accomplir. La fête est ainsi marquée par une grave vérité sur la faiblesse qui peut habiter jusque dans la proximité de la table du Seigneur.

Son Évangile met côte à côte l'annonce de la trahison de Judas et celle du reniement de Pierre. La force théologique du jour réside dans la mise à nu du péché non seulement comme trahison ouverte, mais encore comme faiblesse, peur et confiance mal placée au sein même du cercle des disciples. Le Christ demeure lucide et souverain au milieu de l'infidélité, et sa prescience révèle que sa Passion n'est pas seulement un piège tendu par ses ennemis, mais l'obéissance par laquelle il se livre librement.

La fête montre que le discipulat doit passer par une purification du cœur. La ferveur de Pierre et la trahison de Judas sont très différentes, et pourtant l'une comme l'autre révèlent comment l'être humain peut résister à la grâce par orgueil, peur ou calcul. En contemplant ce jour, les fidèles apprennent que la constance ne vient pas de la seule confiance en soi, mais de la miséricorde du Christ qui connaît leur fragilité avant eux-mêmes.

Pour les fidèles, le Mardi saint est une miséricorde sévère. Il met en garde contre la complaisance, enseigne à se défier d'une fidélité seulement verbale et encourage la prière pour la persévérance, afin que les disciples apprennent à s'appuyer non sur leur propre constance, mais sur l'amour fidèle du Christ qui connaît leur fragilité avant eux-mêmes.
$desc$),
('wednesday-of-holy-week', 'Mercredi de la Semaine sainte', $desc$
Le Mercredi de la Semaine sainte, traditionnellement appelé mercredi de la trahison, contemple l'accord de Judas avec les grands prêtres et se présente comme un seuil obscur avant les jours sacrés de la Passion. La fête attire l'attention sur les décisions cachées du cœur par lesquelles la trahison se prépare avant d'être accomplie. Elle affronte ainsi le mystère du mal né non seulement de l'hostilité extérieure, mais encore de l'infidélité intérieure.

Théologiquement, le jour affronte le mystère de la trahison au sein même de l'intimité. Judas n'est pas un persécuteur extérieur, mais l'un des Douze, et son marchandage révèle comment la proximité des choses saintes peut coexister avec un cœur endurci. Le jour avertit donc que le péché peut prendre la forme d'un calcul d'échange, où la relation avec Dieu est subordonnée à l'intérêt, au pouvoir ou à la déception.

Dans l'économie de la semaine, ce jour donne à la trahison toute sa gravité. Le marché de Judas n'apparaît pas comme une simple défaillance personnelle, mais comme un avertissement: les dons de Dieu peuvent être instrumentalisés lorsque l'amour se refroidit. Les fidèles sont ainsi conduits à percevoir plus clairement le prix de l'infidélité et la fermeté du Seigneur qui offre encore sa miséricorde.

Pastoralement, le Mercredi saint invite à un examen de conscience honnête. Il demande où les disciples sont tentés d'instrumentaliser la religion, d'échanger la fidélité contre un avantage ou de laisser le ressentiment mûrir en infidélité, et il presse à revenir au repentir avant que les jours sacrés ne déploient la miséricorde encore offerte par le Seigneur trahi.
$desc$),
('holy-thursday-evening-mass-of-the-lords-supper', 'Jeudi saint : Messe du soir de la Cène du Seigneur', $desc$
Le Jeudi saint : Messe du soir de la Cène du Seigneur commémore la Dernière Cène, au cours de laquelle le Christ a donné son Corps et son Sang aux disciples et a confié à l'Église le mémorial de son sacrifice. La fête rappelle aussi le commandement de la charité fraternelle et l'humble service signifié par le lavement des pieds. Elle se tient au point où le don de soi du Christ est placé sacramentellement entre les mains des siens tandis que commence la nuit de sa livraison.

Sa théologie est inépuisablement riche: l'institution de l'Eucharistie, le commandement de la charité fraternelle et le sacerdoce sacrificiel se tiennent ensemble dans un unique mystère d'amour livré. Le Christ ne transmet pas seulement le pain et le vin devenus son Corps et son Sang, mais encore la forme même selon laquelle l'Église doit vivre - une communion enracinée dans le service sacrificiel. Le lavement des pieds, sans être le centre de la liturgie, manifeste la figure de l'autorité née du Christ eucharistique.

La fête révèle encore le lien étroit entre le culte et la vie. La communion eucharistique ne peut être séparée de l'amour du prochain, de la vigilance avec le Christ et de la disponibilité à l'accompagner dans son heure. Même au cœur de l'intimité du repas, l'ombre de la trahison et l'approche de Gethsémani montrent que l'amour divin se donne jusqu'au bout pour le salut du monde.

Pour les fidèles, le Jeudi saint est un retour annuel aux sources de la vie ecclésiale. Il invite à l'adoration du Seigneur eucharistique, à la gratitude pour le ministère ordonné, à la conversion au service humble et à une conscience plus profonde du fait que la communion avec le Christ à l'autel doit se déployer en charité, en vigilance et en disponibilité à l'accompagner dans la nuit de sa livraison.
$desc$),
('friday-of-the-passion-of-the-lord', 'Vendredi de la Passion du Seigneur', $desc$
Le Vendredi de la Passion du Seigneur compte parmi les observances chrétiennes les plus anciennes et les plus austères. Dès les premiers siècles, les croyants ont gardé ce jour dans le jeûne, l'écoute de l'Écriture, la prière et la vénération de la Croix, se tenant en silence devant le mystère de la mort du Seigneur. La fête se place au cœur du mystère pascal en contemplant le sacrifice par lequel le péché du monde est enlevé.

Théologiquement, le Vendredi saint contemple la Croix non comme un échec tragique, mais comme l'heure de l'obéissance rédemptrice où l'Agneau de Dieu enlève le péché du monde. La Passion selon saint Jean, les solennelles intercessions embrassant le monde entier et l'adoration de la sainte Croix proclament ensemble que le Christ règne précisément depuis le bois du sacrifice. Ici justice divine et miséricorde divine se rencontrent sans confusion ni compromis.

La Croix révélée en ce jour est à la fois jugement et miséricorde. La violence humaine et l'amour divin se rencontrent dans le Christ crucifié, dont le côté ouvert devient source de rédemption. En contemplant sa Passion, l'Église apprend que la victoire est obtenue non par la force, mais par l'obéissance du Fils qui aime jusqu'à l'extrême.

Pour les croyants d'aujourd'hui, le Vendredi de la Passion du Seigneur demeure l'école la plus profonde de compassion, de repentir et d'espérance. Il apprend aux fidèles à porter les blessures du monde à la Croix, à renoncer à toute banalisation du péché et à croire qu'aucune souffrance honnêtement unie à celle du Christ ne peut rester hors de la portée de la rédemption.
$desc$),
('holy-saturday', 'Samedi saint', $desc$
Le Samedi saint est l'antique jour du grand silence de l'Église, entre la mort du Seigneur et la nuit de sa résurrection. Il est marqué par le jeûne, le recueillement et l'attente auprès du tombeau, tandis que la foi demeure attachée à la promesse d'une victoire encore invisible. La fête contemple le repos du corps du Christ au sépulcre et l'extension de son œuvre salvifique jusque dans le royaume des morts.

Théologiquement, le Samedi saint est la liturgie de l'absence et de l'action cachée. Le Christ repose au tombeau selon la chair, descend aux enfers et soumet même le royaume de la mort à la portée de sa présence rédemptrice. Le jour enseigne que la victoire divine peut être à l'œuvre dans une immobilité totale, lorsque toute activité visible cesse et que la foi ne vit plus que de la promesse.

Ce jour donne une forme chrétienne à l'attente. Rien, extérieurement, ne semble se produire, et pourtant l'œuvre de la rédemption n'est pas suspendue; elle est cachée. Le Samedi saint enseigne que l'action de Dieu se déploie souvent sous la surface des événements visibles et que l'espérance peut demeurer fidèle dans l'obscurité, le deuil et l'abandon apparent.

Pastoralement, le Samedi saint parle avec force à toutes les formes d'attente humaine, de deuil et d'abandon apparent. Il invite les fidèles à veiller là où Dieu semble caché, à se souvenir des morts dans l'espérance et à apprendre que la foi chrétienne comprend la patience de l'entre-deux, dans la certitude que le silence du tombeau n'est pas le dernier mot de l'histoire.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- TRANSLATIONS LA
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('palm-sunday-of-the-passion-of-the-lord', 'Dominica in Palmis de Passione Domini', $desc$
Dominica in Palmis de Passione Domini ingressum Christi in Ierusalem commemorat atque hanc acclamationem cum proclamatione Passionis coniungit. Ab antiquis temporibus cultus christianus ramos susceptionis et Evangelium passionis simul tenuit, docens Messiam urbem suam in humilitate intrare et ad Crucem libere procedere. Festum igitur unum idemque mysterium sub duobus aspectibus inseparabilibus contemplatur: regalem acclamationem et oboedientem sui oblationem.

Theologia huius diei consulto paradoxica est. Idem Christus qui hosannis excipitur deinde in narratione Passionis ad derelictionem, iudicium et crucifixionem procedens auditur, ut Ecclesia regnum messianicum intellegat esse oblationem oboedientem potius quam dominationem mundanam. Dominica haec ostendit gloriam et humiliationem ad unum mysterium salutis pertinere, fidelesque format ut Christum ultra momenta fervoris usque ad sumptuosum discipulatum sequantur.

Ipsa actio ritualis sensum diei altius manifestat. Processio vel sollemnis introitus, benedictio ramorum et lectio Passionis ostendunt eum quem turba laudat eundem esse Dominum qui reiectionem pro salute mundi suscipit. Vox populi mutabilis speculum fit quo credentes instabilitatem devotionis superficialis et constantiam amoris Christi recognoscunt.

Christianis hodiernis haec Dominica in Palmis instabilitatem superficialis devotionis detegit atque ad conversionem cordis vocat. Quaerit utrum credentes cum Christo permaneant cum laus in scandalum vertitur, et communitates docet dies sanctissimos anni non ut spectatores ritus dramatis, sed ut discipuli parati viam Crucis ingredi celebrari debere.
$desc$),
('monday-of-holy-week', 'Feria II Hebdomadae Sanctae', $desc$
Feria II Hebdomadae Sanctae Ecclesiam invitat ut cum Christo in ultimis diebus ante Passionem eius maneat. Traditio evangelica huic diei adiuncta ad Bethaniam ducit, ubi Dominus amicitia recipitur et in mysterium appropinquans ungitur. Festum ita interiorem hebdomadae dramatis ingressum per contemplationem magis quam per apertum conflictum aperit.

Evangelium huius diei unctionem Bethaniae tradere solet, qua Maria pretiosum unguentum super Dominum effundit gesto amoris sepulturam eius praeveniente. Theologice dies gratuitam devotionem opponit spiritui calculosae proditionis: verus discipulus pretium Christi agnoscit et se ipsum coram mysterio mortis eius imminentis effundit. Amor intellegit quod cynismus percipere non potest.

Bethania in limine Passionis posita revelat verum cultum numquam perire. Fragrantia unguenti imago fit amoris qui corpus Christi ad sepulturam praeparat et devotionis qua fideles eum sine reservatione honorare discunt. Sic dies docet adorationem ipsam iam sacrificii rationem continere.

Pastoraliter hic dies fideles vocat ut examinent quid in vita sua reservatum, custoditum vel nimis pretiosum ad Christo offerendum existiment. Bethania fit schola amoris profusi, docens praeparationem ad Hebdomadam Sanctam non solam severitatem moralem esse, sed cultum generosum, ministerium concretum et promptitudinem ob devotionem male intellegi.
$desc$),
('tuesday-of-holy-week', 'Feria III Hebdomadae Sanctae', $desc$
Feria III Hebdomadae Sanctae Ecclesiam altius in interius drama quod Passionem Domini circumstat introducit. Evangelium discipulorum communionem sub penetranti Christi verbo statuit, dum proditio et negatio ante eventum praenuntiantur. Festum igitur gravi veritate de fragilitate notatur quae etiam iuxta mensam Domini inveniri potest.

Evangelium proditionis Iudae praedictionem et Petri negationem iuxta se ponit. Vis theologica diei in eo est quod peccatum non solum ut aperta proditio, sed etiam ut infirmitas, timor et vana fiducia intra ipsum discipulorum circulum detegitur. Christus inter infidelitates lucidum et regium se ostendit, eiusque praescientia indicat Passionem non esse tantum insidias inimicorum, sed oboedientiam qua se libere tradit.

Festum ostendit discipulatum purificationem cordis postulare. Fervor Petri et proditio Iudae multum inter se differunt, sed utrumque revelat quomodo homo per superbiam, timorem vel calculum gratiae resistere possit. Dum hunc diem contemplantur, fideles discunt constantiam non ex sola sui fiducia, sed ex misericordia Christi provenire, qui fragilitatem eorum ante ipsos novit.

Fidelibus Feria III Hebdomadae Sanctae severa misericordia est. Adversus securitatem improvidam monet, a sola verbali fidelitate diffidere docet, atque orationem pro perseverantia fovet, ut discipuli non propriae constantiae sed stabili amoris Christi niti discant, qui fragilitatem eorum ante ipsos novit.
$desc$),
('wednesday-of-holy-week', 'Feria IV Hebdomadae Sanctae', $desc$
Feria IV Hebdomadae Sanctae, quae tradito nomine saepe Dies Proditionis appellatur, pactum Iudae cum principibus sacerdotum contemplatur atque quasi obscurum limen ante sacros Passionis dies stat. Festum attentionem ad occultas cordis decisiones convertit quibus proditio antequam perficiatur concipitur. Ita mysterium mali respicit quod non tantum ex hostilitate externa, sed etiam ex infidelitate intima nascitur.

Theologice dies mysterium proditionis ex intima familiaritate ortae respicit. Iudas non est persecutor externus, sed unus ex Duodecim, et mercatus eius ostendit quomodo propinquitas rerum sanctarum cum corde obdurato coexistere possit. Hinc dies monet peccatum formam calculosae permutationis sumere posse, qua relatio ad Deum interesse, potentiae aut frustrationi subiicitur.

In oeconomia hebdomadae hic dies proditioni plenam gravitatem tribuit. Pactum Iudae non tamquam simplex defectus privatus ostenditur, sed tamquam monitionem quod dona Dei instrumenta fieri possunt ubi caritas refrigescit. Sic fideles clarius percipiunt et pretium infidelitatis et constantiam Domini qui misericordiam adhuc offert.

Pastoraliter Feria IV Hebdomadae Sanctae ad sincerum conscientiae examen invitat. Quaerit ubi discipuli religione uti velint ad utilitatem, ubi fidelitatem pro commodo mutare tententur, vel ubi amaritudo in infidelitatem maturescat, eosque urget ad paenitentiam reverti antequam dies sacri misericordiam a Domino prodito adhuc oblatam explicent.
$desc$),
('holy-thursday-evening-mass-of-the-lords-supper', 'Feria V in Cena Domini', $desc$
Feria V in Cena Domini novissimam Cenam commemorat, in qua Christus Corpus et Sanguinem suum discipulis tradidit atque Ecclesiae memoriale sacrificii sui commisit. Festum etiam mandatum caritatis fraternae et humile ministerium in lotione pedum significatum recolere facit. In eo puncto stat ubi Christi sui donatio sacramentaliter in manus suorum traditur, dum nox traditionis incipit.

Theologia huius diei inexhausta est: institutio Eucharistiae, mandatum caritatis fraternae et sacerdotium sacrificiale in uno mysterio amoris se tradentis consistunt. Christus non tantum panem et vinum in Corpus et Sanguinem suum conversos tradit, sed ipsam etiam formam qua Ecclesia vivere debet - communionem in servitio sacrificii radicatam. Lotio pedum, quamvis centrum liturgiae non sit, figuram auctoritatis ex Christo eucharistico ortam manifestat.

Festum etiam arctum nexum inter cultum et vitam ostendit. Communio eucharistica ab amore proximi, vigilia cum Christo et promptitudine eum in hora sua comitandi separari non potest. Etiam intra intimam cenam umbra proditionis et appropinquans Gethsemani demonstrant amorem divinum usque in finem pro salute mundi se tradere.

Fidelibus Feria V in Cena Domini annuus reditus ad fontes vitae ecclesialis est. Invitat ad adorationem Domini eucharistici, ad gratiam pro ministerio ordinato, ad conversionem ad humile servitium, et ad altiorem conscientiam communionis cum Christo ad altare necessario in caritatem, vigilantiam et promptitudinem comitandi eum in nocte traditionis suae effluere debere.
$desc$),
('friday-of-the-passion-of-the-lord', 'Feria VI in Passione Domini', $desc$
Feria VI in Passione Domini inter antiquissimas atque austerissimas observantias christiani cultus numeratur. Ab antiquis saeculis fideles hunc diem ieiunio, Scriptura, oratione et Crucis veneratione custodierunt, in silentio coram mysterio mortis Domini consistentes. Festum in ipso corde mysterii paschalis stat, sacrificium contemplans quo peccatum mundi tollitur.

Theologice Feria VI in Passione Domini Crucem contemplatur non ut tragicum defectum, sed ut horam oboedientiae redemptricis, qua Agnus Dei peccatum mundi tollit. Passio secundum Ioannem, sollemnes intercessiones totum mundum complectentes et adoratio sanctae Crucis una proclamant Christum ex ipso ligno sacrificii regnare. Hic iustitia divina et misericordia divina sine confusione neque pacto conveniunt.

Crux hoc die patefacta simul iudicium et misericordia est. Violentia humana et amor divinus in Christo crucifixo conveniunt, cuius latus apertum fons redemptionis efficitur. Passionem eius contemplando Ecclesia discit victoriam non vi, sed oboedientia Filii qui usque in finem diligit, obtineri.

Credentibus hodiernis Feria VI in Passione Domini profundissima schola compassionis, paenitentiae et spei manet. Fideles docet vulnera mundi ad Crucem deferre, omnem peccati levationem reicere, atque confidere nullam passionem quae sincere Passioni Christi coniungitur extra redemptionis ambitum manere posse.
$desc$),
('holy-saturday', 'Sabbatum Sanctum', $desc$
Sabbatum Sanctum est antiquus dies magni Ecclesiae silentii, inter mortem Domini et noctem resurrectionis eius positus. Ieiunio, recollectione et expectatione iuxta sepulcrum notatur, dum fides promissioni victoriae nondum visae adhaeret. Festum quietem corporis Christi in sepulcro et extensionem operis eius salutaris usque ad regnum mortuorum contemplatur.

Theologice Sabbatum Sanctum est liturgia absentiae et actionis absconditae. Christus secundum carnem in sepulcro quiescit, ad inferos descendit, atque ipsum mortis regnum praesentiae suae redemptrici subiicit. Dies docet victoriam divinam etiam in summa immobilitate operari posse, cum omnis actio visibilis cessat et fides sola promissione sustentatur.

Hic dies christianam formae expectationi tribuit. Nihil exterius fieri videtur, et tamen opus redemptionis non suspenditur; absconditum est. Sabbatum Sanctum docet actionem Dei saepe sub superficie eventuum visibilium explicari et spem in tenebris, luctu et apparente derelictione fidelem manere posse.

Pastoraliter Sabbatum Sanctum vehementer loquitur ad omnes formas humanae expectationis, luctus et apparentis derelictionis. Fideles invitat ut illic vigiles maneant ubi Deus absconditus esse videtur, mortuorum in spe meminerint, et discant fidem christianam patientem huius medii temporis tolerantiam complecti, certi silentium sepulcri ultimam historiae vocem non esse.
$desc$)
) AS x(slug, name, description)
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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('palm-sunday-of-the-passion-of-the-lord', $desc$
In the Roman General Calendar this celebration falls on the Sunday before Easter and opens Holy Week as a Sunday of the Passion. It uses red vestments, includes the procession or solemn entrance with palms, and culminates in the chanting or reading of the Passion Gospel.
$desc$),
('monday-of-holy-week', $desc$
In the Roman General Calendar this day is kept as a privileged feria of Holy Week on Easter minus six days. Purple vestments are used, and the Mass ordinarily proclaims the anointing at Bethany as the scriptural tone for the first weekday after Palm Sunday.
$desc$),
('tuesday-of-holy-week', $desc$
In the Roman General Calendar this privileged feria occurs on Easter minus five days. Purple is used, and the liturgy ordinarily presents the Lord's prediction of Judas's betrayal together with Peter's denial as the Church advances toward the Triduum.
$desc$),
('wednesday-of-holy-week', $desc$
In the Roman General Calendar this privileged feria falls on Easter minus four days and is often known in catechetical language as Spy Wednesday. Purple vestments are used, and the Gospel focuses on Judas's agreement to betray the Lord immediately before the Evening Mass of the Lord's Supper.
$desc$),
('holy-thursday-evening-mass-of-the-lords-supper', $desc$
In the Roman General Calendar this celebration is the evening Mass on Holy Thursday and marks the liturgical beginning of the Paschal Triduum. It is celebrated in white, the Gloria is sung with bells, the Eucharist is carried to the place of repose, and the altar is stripped at the close.
$desc$),
('friday-of-the-passion-of-the-lord', $desc$
In the Roman General Calendar this observance falls on Easter minus two days and belongs to the Paschal Triduum. Red vestments are used; there is no Mass, but the celebration includes the Passion according to John, the solemn intercessions, adoration of the Cross, and Holy Communion from the sacrament consecrated the previous evening.
$desc$),
('holy-saturday', $desc$
In the Roman General Calendar Holy Saturday is observed on Easter minus one day as part of the Paschal Triduum. The day remains without Mass and is marked by quiet expectation, with the Roman General celebration of the Easter Vigil beginning only after nightfall and belonging to the next liturgical stage.
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
('palm-sunday-of-the-passion-of-the-lord', $desc$
Dans le Calendrier romain général, cette célébration tombe le dimanche précédant Pâques et ouvre la Semaine sainte comme dimanche de la Passion. Elle se célèbre en rouge, comprend la procession ou l'entrée solennelle avec les rameaux, et s'achève par la proclamation de l'Évangile de la Passion.
$desc$),
('monday-of-holy-week', $desc$
Dans le Calendrier romain général, ce jour est une férie privilégiée de la Semaine sainte située à six jours de Pâques. Le violet est employé, et la messe proclame ordinairement l'onction de Béthanie comme tonalité scripturaire du premier jour de semaine après les Rameaux.
$desc$),
('tuesday-of-holy-week', $desc$
Dans le Calendrier romain général, cette férie privilégiée se situe à cinq jours de Pâques. Le violet est employé, et la liturgie présente ordinairement l'annonce de la trahison de Judas ainsi que du reniement de Pierre, tandis que l'Église s'avance vers le Triduum.
$desc$),
('wednesday-of-holy-week', $desc$
Dans le Calendrier romain général, cette férie privilégiée tombe à quatre jours de Pâques et reçoit souvent, dans le langage catéchétique, le nom de mercredi de la trahison. Le violet est employé, et l'Évangile met l'accent sur l'accord de Judas pour livrer le Seigneur immédiatement avant la Messe du soir de la Cène.
$desc$),
('holy-thursday-evening-mass-of-the-lords-supper', $desc$
Dans le Calendrier romain général, cette célébration est la messe du soir du Jeudi saint et marque le commencement liturgique du Triduum pascal. Elle est célébrée en blanc; le Gloria y est chanté avec les cloches, l'Eucharistie est portée au lieu de la réserve et l'autel est dépouillé à la fin.
$desc$),
('friday-of-the-passion-of-the-lord', $desc$
Dans le Calendrier romain général, cette observance tombe deux jours avant Pâques et appartient au Triduum pascal. Le rouge est employé; il n'y a pas de messe, mais la célébration comprend la Passion selon saint Jean, la grande prière universelle, l'adoration de la Croix et la communion avec le sacrement consacré la veille.
$desc$),
('holy-saturday', $desc$
Dans le Calendrier romain général, le Samedi saint est observé la veille de Pâques comme partie du Triduum pascal. Le jour demeure sans messe et dans une attente silencieuse, tandis que la célébration romaine générale de la Vigile pascale ne commence qu'après la nuit tombée et relève déjà de l'étape liturgique suivante.
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
('palm-sunday-of-the-passion-of-the-lord', $desc$
In Calendario Romano Generali haec celebratio in dominica ante Pascha occurrit atque Hebdomadam Sanctam ut dominicam Passionis aperit. Ruber color adhibetur, processio vel sollemnis introitus cum palmis fit, et celebratio ad Evangelium Passionis proclamandum perducitur.
$desc$),
('monday-of-holy-week', $desc$
In Calendario Romano Generali hic dies servatur ut feria privilegiata Hebdomadae Sanctae sex diebus ante Pascha. Color violaceus adhibetur, et Missa ordinarie unctionem Bethaniae proponit ut scripturisticum primi post Dominicam in Palmis feriae argumentum.
$desc$),
('tuesday-of-holy-week', $desc$
In Calendario Romano Generali haec feria privilegiata quinque diebus ante Pascha occurrit. Violaceus adhibetur, et liturgia ordinarie praedictionem proditionis Iudae una cum negatione Petri proponit, dum Ecclesia ad Triduum progreditur.
$desc$),
('wednesday-of-holy-week', $desc$
In Calendario Romano Generali haec feria privilegiata quattuor diebus ante Pascha celebratur et saepe Dies Proditionis appellatur. Violaceus adhibetur, et Evangelium pactum Iudae ad Dominum tradendum immediate ante Missam vespertinam in Cena Domini effert.
$desc$),
('holy-thursday-evening-mass-of-the-lords-supper', $desc$
In Calendario Romano Generali haec celebratio est Missa vespertina Feriae V in Cena Domini atque liturgicum initium Tridui Paschalis significat. Albo celebratur; Gloria cum tintinnabulis canitur, Eucharistia ad locum repositionis defertur, et altare in fine spoliatur.
$desc$),
('friday-of-the-passion-of-the-lord', $desc$
In Calendario Romano Generali haec observantia duobus diebus ante Pascha occurrit et ad Triduum Paschale pertinet. Ruber adhibetur; Missa non celebratur, sed actio liturgica Passionem secundum Ioannem, sollemnes intercessiones, adorationem Crucis et Communionem e sacramento pridie consecrato continet.
$desc$),
('holy-saturday', $desc$
In Calendario Romano Generali Sabbatum Sanctum pridie Pascha ut pars Tridui Paschalis observatur. Dies sine Missa manet et quieta expectatione signatur, dum celebratio Vigiliae Paschalis in hoc calendario nonnisi post noctis initium incipit atque ad sequentem statum liturgicum pertinet.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

-- =========================================================
-- Lent core block (Roman General Calendar)
-- - Ash Wednesday
-- - 1st to 5th Sundays of Lent
-- =========================================================

-- FEASTS
