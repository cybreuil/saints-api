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
This solemnity honors the Virgin Mary in her divine motherhood, confessing that the child born of her is truly the eternal Son of the Father made flesh. The title Mother of God does not exalt Mary apart from Christ; rather, it safeguards the truth about Jesus Christ himself, one divine Person who took from her a real human nature and entered human history for our salvation.

The Church received this confession from the Gospel itself. Mary welcomes the Word in faith at the Annunciation, bears him in her womb, and remains inseparably associated with the mysteries of his birth, hidden life, passion, and glory. Her motherhood is therefore both physical and spiritual: she gives flesh to the Redeemer, and she also stands as the model of the disciple who hears the word of God and keeps it with an undivided heart.

The title Theotokos, solemnly affirmed at the Council of Ephesus in 431, became one of the clearest expressions of the mystery of the Incarnation. Christian East and West alike have contemplated Mary as the New Eve, the all-holy Virgin, and the mother who intercedes for the faithful. In her, the Church sees the first-fruits of redemption and a luminous image of what grace desires to accomplish in every believer.

The feast invites Christians to contemplate with gratitude the nearness of God, who chose to come to us through a human mother, and to entrust themselves to Mary's maternal intercession. It encourages a faith that is contemplative, obedient, and peaceful, learning from her to receive Christ, ponder his mysteries, and offer him to the world.$desc$),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'Saints Basil the Great and Gregory Nazianzen, Bishops and Doctors of the Church', $desc$
This feast honors two of the great Cappadocian Fathers, Basil the Great and Gregory Nazianzen, whose friendship, learning, and pastoral courage left an enduring mark on the Church. Both were bishops, monks in spirit, and masters of sacred doctrine, remembered not only for personal holiness but also for the way their lives were placed wholly at the service of the Gospel.

Their witness is inseparable from the Church's confession of the Holy Trinity. In an age marked by fierce doctrinal conflict, Basil and Gregory defended the full divinity of the Son and of the Holy Spirit, helping to give precise theological expression to the faith handed down in baptism and worship. Their teaching shows that doctrine is not a cold abstraction, but the Church's loving fidelity to the God who has revealed himself as Father, Son, and Holy Spirit.

Basil is remembered for his monastic wisdom, pastoral organization, preaching on social charity, and theological writings on creation and the Spirit. Gregory, one of the Church's greatest orators, united contemplative depth with luminous speech, especially in the theological discourses that earned him the title "The Theologian" in the Christian East. Together they embody a rare harmony of friendship, contemplation, ascetic discipline, and ecclesial service.

Their commemoration invites the faithful to cherish sound teaching, to pursue study in a spirit of prayer, and to see holy friendship as a genuine school of sanctity. Basil and Gregory remind the Church that the defense of truth bears fruit when it is joined to humility, sacrifice, and love.$desc$),
('the-most-holy-name-of-jesus', 'The Most Holy Name of Jesus', $desc$
This feast venerates the holy Name of Jesus, the name announced by the angel before his conception and given according to the divine command. In that name the mission of the Incarnate Word is already declared, for Jesus means "the Lord saves." To pronounce this name with faith is to confess that salvation comes not from human power but from the person of Christ.

Sacred Scripture gives the Name of Jesus a singular dignity. Saint Paul teaches that God highly exalted Christ so that at the name of Jesus every knee should bend, while Saint Peter proclaims that there is no other name under heaven by which we must be saved. The Church therefore venerates this Name not as a mere sound, but as a sign of the person of the Savior, of his authority, mercy, and victorious presence.

Devotion to the Holy Name flourished in preaching, liturgy, and popular prayer, especially through figures such as Saint Bernardine of Siena and the Franciscan tradition. It also resonates with the ancient practice of the Jesus Prayer in the Christian East, where the repeated invocation of the Lord's Name becomes an act of repentance, adoration, and interior recollection. Across centuries, Christians have learned to call upon this Name in joy, temptation, illness, and death.

The feast invites believers to guard their speech, to speak the Lord's Name with reverence and love, and to take refuge in it with childlike confidence. It is a school of prayer centered on the person of Jesus himself, whose Name gathers into one word the mystery of the Incarnation, the Cross, and the Resurrection.$desc$),
('the-epiphany-of-the-lord', 'The Epiphany of the Lord', $desc$
The Epiphany celebrates the manifestation of the Lord Jesus to the nations, above all in the coming of the Magi who journey from afar to adore the newborn King. In them the peoples of the earth are represented, drawn by grace toward the light that has risen over Israel and now shines for the whole world.

This feast proclaims the universal horizon of salvation. The child of Bethlehem is not the hope of one people alone, but the Savior in whom the promises made to Israel are opened to every nation. The gifts of the Magi—gold, frankincense, and myrrh—have long been read by Christian tradition as signs of Christ's kingship, divinity, and redeeming passion, while their pilgrimage reveals the path of all who seek God with sincerity.

From early centuries Christians also linked Epiphany with other manifestations of the Lord's glory, especially his baptism in the Jordan and the miracle at Cana. The feast thus gathers a rich theology of revelation: the hidden Christ is made known, the humble child is recognized as Lord, and the light of the Incarnate Word begins to illumine the nations. Its origin in the ancient Christian East and its rapid diffusion throughout the Church testify to the centrality of this mystery.

Epiphany invites every believer to become a seeker and an adorer. It calls the Church to missionary joy, to bring the Gospel to every culture, and to place the treasures of human life at Christ's feet, so that all peoples may find in him their true King and light.$desc$),
('saint-raymond-of-penyafort-priest', 'Saint Raymond of Penyafort, Priest', $desc$
This feast honors Saint Raymond of Penyafort, a priest whose holiness was expressed through preaching, prudent governance, the care of souls, and distinguished service to canon law. As a member of the Order of Preachers, he showed that fidelity to the Gospel includes not only public proclamation but also the patient labor of ordering ecclesial life for the good of the faithful.

Raymond is especially remembered for his dedication to the sacrament of Penance and to the ministry of reconciliation. He understood that justice in the Church must always be joined to mercy, and that clear discipline can serve, rather than hinder, the healing of consciences. In him the Church sees a pastor who used learning not for prestige but for the salvation of souls.

He played an important role in the compilation of the Decretals of Gregory IX, thereby helping to shape the legal tradition of the Latin Church. He also promoted missionary work and encouraged dialogue oriented toward the conversion of hearts. His life shows how intellectual discipline, administrative responsibility, and evangelical charity can belong to a single vocation.

The feast invites confessors, canonists, and all who labor in hidden forms of ecclesial service to recognize their work as a path of holiness. Raymond's witness teaches that order, mercy, and pastoral wisdom are not competing goods but harmonious expressions of the charity of Christ.$desc$),
('saint-hilary-bishop-and-doctor-of-the-church', 'Saint Hilary, Bishop and Doctor of the Church', $desc$
This feast celebrates Saint Hilary of Poitiers, bishop, theologian, and Doctor of the Church, one of the West's great defenders of the divinity of Christ. Living during the Arian crisis, he stood firm in confessing that the Son is eternally one in being with the Father, even at the cost of exile and misunderstanding.

Hilary's writings reveal a mind formed by Scripture and animated by pastoral concern. His great work On the Trinity seeks not only to refute error but to lead believers into reverent contemplation of the mystery of God. For Hilary, theology was never detached speculation: to speak rightly of Christ was to protect the life of faith, prayer, and salvation.

He also left commentaries, hymns, and letters that show the breadth of his ministry. Later generations called him the "Athanasius of the West" because of his courage and lucidity in doctrinal controversy. His witness demonstrates that bishops serve the Church not only by governing, but also by teaching the truth faithfully and suffering for it when necessary.

The feast invites Christians to love the mystery of the Trinity more deeply and to unite intellectual clarity with courage. Hilary reminds the Church that fidelity in doctrine is an act of pastoral charity, for only the true Christ can save and sanctify his people.$desc$),
('saint-anthony-abbot', 'Saint Anthony, Abbot', $desc$
This feast honors Saint Anthony the Abbot, revered as the father of monks and one of the clearest early witnesses to the radical demands of the Gospel. Hearing Christ's call to leave all things and follow him, Anthony embraced a life of poverty, prayer, fasting, and solitude, seeking God in the desert with an undivided heart.

His life reveals the spiritual meaning of the desert as a place of purification and encounter. Anthony's struggles against temptation became a lasting image of the Christian combat against the powers of sin, fear, and illusion. Though withdrawn from the world, he served the Church powerfully through counsel, intercession, and the example of a life wholly given to God.

The Life of Anthony written by Saint Athanasius spread his fame throughout the Christian world and contributed greatly to the growth of monastic life in East and West. In Anthony, countless monks, hermits, and ordinary believers have recognized a master of discernment, a lover of silence, and a living reminder that the human heart is made for communion with God.

The feast invites the faithful to recover interior freedom, simplicity of life, and perseverance in prayer. Anthony teaches that every Christian, whatever his state of life, must pass in some measure through the desert in order to learn trust, detachment, and the joy that comes from seeking God above all.$desc$),
('saint-fabian-pope-and-martyr', 'Saint Fabian, Pope and Martyr', $desc$
This feast honors Saint Fabian, pope and martyr, a shepherd of the Roman Church whose ministry was crowned by the witness of blood. Ancient tradition remembered his election as marked by the descent of a dove, a sign that his pastoral authority was to be exercised under the guidance of the Holy Spirit and in service of ecclesial peace.

Fabian governed the Church during a relatively calm period and is associated with the ordering of ecclesial administration and missionary concern. Yet his life also shows how swiftly peace can give way to persecution, and how the office of governance can become a path to martyrdom. In him pastoral responsibility and personal sacrifice are joined.

He died during the Decian persecution in the third century, and his memory was preserved with honor by the Roman Church from an early period. His tomb in the catacombs and the witness of ancient sources keep alive the remembrance of a bishop who did not flee the hour of trial. The Church venerates him as both pastor and martyr, a father who confirmed the flock by his death.

The feast invites bishops, priests, and all the faithful to persevere in courageous fidelity. Fabian teaches that authority in the Church is authentic only when it is conformed to the self-giving of Christ, the Good Shepherd who lays down his life for his sheep.$desc$),
('saint-sebastian-martyr', 'Saint Sebastian, Martyr', $desc$
This feast honors Saint Sebastian, one of the most beloved martyrs of Christian antiquity, remembered as a witness to Christ within the structures of imperial power. Tradition presents him as a soldier who preferred fidelity to the Lord over advancement, and whose courage under persecution made him a sign of steadfast faith amid worldly pressure.

Sebastian's martyrdom manifests the paradox of Christian strength. Outwardly vulnerable and subjected to violence, the martyr is inwardly victorious because his life is hidden in Christ. For this reason Christian art and devotion have long contemplated Sebastian as a figure of perseverance, bodily suffering, and spiritual triumph.

His cult flourished very early in Rome, where his tomb on the Via Appia became a major place of pilgrimage. In later centuries he was widely invoked as a protector in times of plague and public distress, not because suffering disappeared, but because the martyr's intercession was sought for courage, healing, and hope. His witness thus entered deeply into the prayer of the Christian people.

The feast invites believers to remain faithful where discipleship is costly and to place bodily illness and social anxiety under the mercy of God. Sebastian reminds the Church that no profession, circumstance, or public pressure can prevent a courageous witness to Christ.$desc$),
('saint-agnes-virgin-and-martyr', 'Saint Agnes, Virgin and Martyr', $desc$
This feast honors Saint Agnes, virgin and martyr, whose youthful witness has shone in the Church since ancient times. She is remembered as a young disciple who belonged wholly to Christ and who preferred death to any betrayal of that consecration, thereby uniting virginal love and martyrdom in a single offering.

Agnes shows with particular clarity that holiness is the work of grace rather than age, strength, or social power. Her purity is not mere innocence but a sign of undivided love; her martyrdom is not a tragic defeat but a nuptial victory, the triumph of fidelity to the Bridegroom over fear and coercion. In her, the Church venerates both innocence made strong and courage made tender.

Her memory is deeply rooted in the Roman tradition. She is named in the Roman Canon, praised by early Fathers such as Ambrose, and associated with a long-standing symbolism of the lamb, suggested by her name and by the meekness of her witness. Through liturgy, preaching, art, and popular devotion, Agnes has become a patroness of consecrated virgins and of the young.

The feast invites Christians to cherish purity of heart, integrity, and fearless fidelity. Agnes reminds the Church that the beauty of holiness often appears most powerfully in those whom the world judges weak, and that love for Christ can make even the young capable of heroic witness.$desc$),
('saint-vincent-deacon-and-martyr', 'Saint Vincent, Deacon and Martyr', $desc$
This feast honors Saint Vincent, deacon and martyr, whose witness joined humble service to heroic endurance. As a deacon he belonged to the ministry of the altar and the care of the poor; in martyrdom he showed that such service finds its highest fulfillment when life itself is offered in union with Christ.

The tradition surrounding Vincent emphasizes constancy under torture and the eloquence of a faith that cannot be broken by suffering. He appears in Christian memory as one whose endurance became a kind of preaching, revealing that the Gospel possesses a strength deeper than violence. In him the Church sees the deacon as servant, witness, and athlete of Christ.

Vincent's cult spread widely from Spain throughout the Christian world, nourished by the praise of writers such as Prudentius and Augustine. His fame among both clergy and laity shows how profoundly the early Church loved those martyrs whose steadfastness illuminated the dignity of ministry and the power of grace in weakness.

The feast invites deacons and all who serve the Church in practical works of charity and worship to unite outward ministry with inward fidelity. Vincent teaches that no service rendered to Christ is small, and that perseverance in trial can itself become a proclamation of the Gospel.$desc$),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'Saint Francis de Sales, Bishop and Doctor of the Church', $desc$
This feast honors Saint Francis de Sales, bishop, spiritual master, and Doctor of the Church, whose teaching made holiness appear both demanding and gentle. He is remembered above all for showing that devotion is not reserved to cloisters or exceptional souls, but is the vocation of Christians in every state of life.

His writings and ministry radiate a pastoral wisdom marked by patience, clarity, and charity. Francis knew how to defend the faith without bitterness, to direct souls without harshness, and to call people to conversion without discouragement. In a world often marked by religious conflict, he witnessed to the persuasive power of truth spoken in love.

Works such as Introduction to the Devout Life and Treatise on the Love of God gave lasting expression to his spirituality. They teach recollection in daily life, fidelity in small things, and confidence in God's action within ordinary duties. For this reason Francis became a patron for writers, communicators, and all who seek to speak of God with intelligence and warmth.

The feast invites the faithful to pursue holiness in the circumstances they actually inhabit. Francis de Sales reminds the Church that sanctity grows through patient charity, interior peace, and a steady generosity that transforms ordinary life into a continual offering to God.$desc$),
('the-conversion-of-saint-paul-the-apostle', 'The Conversion of Saint Paul the Apostle', $desc$
This feast celebrates the conversion of Saint Paul on the road to Damascus, the decisive encounter in which the persecutor of the Church was seized by the risen Christ and made an apostle. It honors not merely a change of opinion or moral reform, but the sovereign action of grace that redirected an entire life toward the service of the Gospel.

In Paul's conversion the Church contemplates the freedom and power of divine mercy. Christ reveals himself to Saul with the words, "Why do you persecute me?", showing the mysterious union between the Lord and his Body, the Church. At the same time, the event reveals that election for mission is pure gift: the one who sought to destroy the Church becomes her tireless preacher among the nations.

Christian tradition has long meditated on this mystery as a paradigm of repentance, vocation, and apostolic courage. Paul's letters bear the lasting imprint of that encounter, returning again and again to grace, mercy, and the new creation in Christ. His conversion has also become a powerful sign of hope for reconciliation and unity among Christians.

The feast invites every believer never to despair of grace, whether for oneself or for others. Paul teaches that Christ can overturn even hardened resistance, illumine the mind, heal the heart, and turn past enmity into fruitful service for the kingdom of God.$desc$),
('saints-timothy-and-titus-bishops', 'Saints Timothy and Titus, Bishops', $desc$
This feast honors Saints Timothy and Titus, close collaborators of Saint Paul and early bishops in the apostolic Church. Through them the Church remembers the transmission of the Gospel not only by great founders, but also by faithful disciples entrusted with teaching, governance, and pastoral care.

The New Testament presents both men as companions in mission, recipients of Paul's confidence, and shepherds charged with strengthening local churches. Their names are forever linked to the pastoral letters, which dwell on sound doctrine, perseverance, sobriety, and the qualities needed in those who oversee the Christian community. They embody the continuity between apostolic preaching and stable ecclesial ministry.

Timothy is associated especially with Ephesus and Titus with Crete, yet their significance reaches beyond local history. They represent the many pastors formed through spiritual fatherhood, tested in service, and sent to guard communion. In them the Church sees how apostolic authority is handed on through personal formation, trust, and sacrificial labor.

The feast invites bishops, priests, deacons, catechists, and all workers in the Gospel to cherish ecclesial communion and fidelity in ministry. Timothy and Titus remind believers that the life of the Church is built through cooperation, mentorship, and perseverance in the truth.$desc$),
('saint-angela-merici-virgin', 'Saint Angela Merici, Virgin', $desc$
This feast honors Saint Angela Merici, virgin and foundress, who discerned a new form of apostolic consecration centered on the Christian formation of girls and young women. Her life shows how the Holy Spirit raises up forms of holiness that answer the concrete needs of a time without losing anything of the radical gift of self to Christ.

Angela's witness unites contemplation and practical charity. She understood education as a profoundly evangelical work, capable of shaping hearts, strengthening families, and renewing society from within. By forming women in faith and virtue, she helped open a path for a wider participation of lay and consecrated women in the Church's mission.

Through the Company of Saint Ursula, later associated with the Ursuline tradition, her inspiration bore abundant fruit in catechesis, schools, and works of mercy. She stands among those saints who anticipated later developments in apostolic religious life by demonstrating that consecration can flourish amid ordinary social realities when it is rooted in prayer and ecclesial obedience.

The feast invites educators, catechists, and all who accompany the young to see patient formation as holy work. Angela reminds the Church that wisdom, tenderness, and steadfast hope can transform education into a true service of the Gospel.$desc$),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'Saint Thomas Aquinas, Priest and Doctor of the Church', $desc$
This feast honors Saint Thomas Aquinas, priest, friar, and Doctor of the Church, one of the greatest theologians in Christian history. In him the Church venerates a mind wholly devoted to the contemplation of truth, convinced that every genuine search for wisdom finds its fulfillment in God.

Thomas is especially celebrated for showing the harmony of faith and reason. He teaches that grace perfects nature, that revelation does not abolish the work of intelligence, and that disciplined philosophical inquiry can serve theology when ordered to the truth. His writings therefore remain a school of intellectual humility, clarity, and confidence in the coherence of divine wisdom.

At the same time, Thomas was far more than an academic master. He was a man of prayer, a preacher, and a theologian whose thought was nourished by Scripture and the liturgy. His Eucharistic hymns, his meditations on Christ, and his reverence before the mysteries of faith show the contemplative source from which his teaching flowed.

The feast invites students, teachers, and all the faithful to seek wisdom as a form of discipleship. Thomas reminds the Church that love of truth and love of God belong together, and that sanctity can shine brightly in patient study offered for the service of the whole People of God.$desc$),
('saint-john-bosco-priest', 'Saint John Bosco, Priest', $desc$
This feast honors Saint John Bosco, priest and educator, whose life was dedicated to the young, especially the poor, abandoned, and vulnerable. He saw in boys on the margins not a social burden but a field ready for the grace of Christ, and he gave himself to forming them in faith, work, joy, and hope.

His educational vision, often called the preventive system, rests on reason, religion, and loving-kindness. Rather than relying chiefly on punishment, he sought to create an atmosphere of trust in which young people could grow through friendship, sacramental life, discipline, and encouragement. His pastoral charity reflected the tenderness of the Good Shepherd.

The works he founded, above all the Salesian family, spread widely and continue to shape Catholic education throughout the world. In Don Bosco the Church sees a saint who united practical energy, Marian devotion, confidence in Providence, and a remarkable ability to awaken vocations and form Christian character.

The feast invites families, teachers, catechists, and pastors never to underestimate the spiritual hunger of the young. John Bosco reminds the Church that holiness can be communicated through joy, patience, and faithful presence, and that the education of youth is a privileged work of mercy.$desc$),
('the-baptism-of-the-lord', 'The Baptism of the Lord', $desc$
This feast celebrates the baptism of the Lord Jesus in the Jordan at the hands of John. At that moment the heavens are opened, the Spirit descends like a dove, and the Father's voice declares Jesus to be his beloved Son. The event stands among the great manifestations of Christ, revealing both his identity and the beginning of his public mission.

Although he is without sin, Christ enters the waters in solidarity with sinners. The Fathers of the Church therefore saw in this mystery not a cleansing of Jesus, but the sanctification of the waters and a prefiguration of Christian baptism. The One who has no need of repentance freely takes his place among those he has come to save, anticipating the humility of the Cross.

From ancient times the Church has contemplated this mystery in close relation to the Epiphany, since both feasts proclaim the manifestation of the Lord's glory. The baptism in the Jordan also discloses a profoundly Trinitarian theology: the Son is revealed in the flesh, the Father speaks from heaven, and the Spirit rests upon him. Here the saving economy appears in luminous simplicity.

The feast invites the faithful to renew the grace of their own baptism, to remember that they have been made children of God in the Son, and to live under the anointing of the Holy Spirit. It calls Christians to a humble and mission-ready discipleship shaped by the same beloved sonship revealed at the Jordan.$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- 3) TRANSLATIONS FR
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('solemnity-of-mary-the-holy-mother-of-god', 'Sainte Marie, Mère de Dieu', $desc$
Cette solennité honore la Vierge Marie dans sa maternité divine, en confessant que l'enfant né d'elle est vraiment le Fils éternel du Père fait chair. Le titre de Mère de Dieu n'exalte pas Marie séparément du Christ ; il protège au contraire la vérité sur Jésus-Christ lui-même, unique Personne divine qui a pris d'elle une véritable nature humaine et est entré dans l'histoire pour notre salut.

L'Église reçoit cette confession de l'Évangile lui-même. Marie accueille la Parole dans la foi à l'Annonciation, la porte en son sein, puis demeure intimement associée aux mystères de sa naissance, de sa vie cachée, de sa passion et de sa gloire. Sa maternité est donc à la fois corporelle et spirituelle : elle donne chair au Rédempteur et elle demeure le modèle du disciple qui écoute la parole de Dieu et la garde d'un cœur indivisé.

Le titre de Theotokos, solennellement affirmé au concile d'Éphèse en 431, est devenu l'une des expressions les plus nettes du mystère de l'Incarnation. L'Orient comme l'Occident chrétiens ont contemplé Marie comme la nouvelle Ève, la Toute-Sainte Vierge et la mère qui intercède pour les fidèles. En elle, l'Église reconnaît les prémices de la rédemption et une image lumineuse de ce que la grâce veut accomplir en tout croyant.

La fête invite les chrétiens à contempler avec gratitude la proximité de Dieu, qui a voulu venir jusqu'à nous par une mère humaine, et à se confier à l'intercession maternelle de Marie. Elle encourage une foi contemplative, obéissante et pacifique, apprenant d'elle à recevoir le Christ, à méditer ses mystères et à l'offrir au monde.$desc$),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'Saints Basile le Grand et Grégoire de Nazianze', $desc$
Cette fête honore deux des grands Pères cappadociens, Basile le Grand et Grégoire de Nazianze, dont l'amitié, la science et le courage pastoral ont laissé une empreinte durable dans l'Église. Tous deux furent évêques, moines par l'esprit et maîtres de la doctrine sacrée, rappelés non seulement pour leur sainteté personnelle, mais aussi pour avoir mis toute leur vie au service de l'Évangile.

Leur témoignage est inséparable de la confession de la Sainte Trinité. À une époque de violents conflits doctrinaux, Basile et Grégoire défendirent la pleine divinité du Fils et de l'Esprit Saint, aidant l'Église à exprimer avec précision la foi reçue dans le baptême et la prière. Leur enseignement montre que la doctrine n'est pas une abstraction froide, mais une fidélité aimante au Dieu qui s'est révélé comme Père, Fils et Esprit Saint.

Basile est particulièrement connu pour sa sagesse monastique, son sens de l'organisation pastorale, sa prédication sociale et ses écrits sur la création et l'Esprit. Grégoire, l'un des plus grands orateurs de l'Église, a uni une profondeur contemplative à une parole lumineuse, surtout dans ses Discours théologiques qui lui valurent en Orient le titre de « Théologien ». Ensemble, ils incarnent une rare harmonie entre amitié, contemplation, ascèse et service ecclésial.

Leur commémoration invite les fidèles à aimer la saine doctrine, à poursuivre l'étude dans un esprit de prière et à voir dans l'amitié sainte une véritable école de sainteté. Basile et Grégoire rappellent à l'Église que la défense de la vérité porte du fruit lorsqu'elle est unie à l'humilité, au sacrifice et à la charité.$desc$),
('the-most-holy-name-of-jesus', 'Très Saint Nom de Jésus', $desc$
Cette fête vénère le saint Nom de Jésus, annoncé par l'ange avant sa conception et donné selon le commandement divin. Dans ce Nom, la mission du Verbe incarné est déjà proclamée, puisque Jésus signifie « le Seigneur sauve ». Prononcer ce Nom avec foi, c'est confesser que le salut ne vient pas de la puissance humaine, mais de la personne même du Christ.

L'Écriture sainte attribue au Nom de Jésus une dignité singulière. Saint Paul enseigne que Dieu a souverainement exalté le Christ afin qu'au nom de Jésus tout genou fléchisse, tandis que saint Pierre proclame qu'aucun autre nom sous le ciel n'a été donné par lequel nous devions être sauvés. L'Église vénère donc ce Nom non comme un simple son, mais comme le signe de la personne du Sauveur, de son autorité, de sa miséricorde et de sa présence victorieuse.

La dévotion au Saint Nom s'est développée dans la prédication, la liturgie et la prière populaire, notamment grâce à des figures comme saint Bernardin de Sienne et à la tradition franciscaine. Elle rejoint aussi l'antique pratique orientale de la prière de Jésus, où l'invocation répétée du Nom du Seigneur devient un acte de repentir, d'adoration et de recueillement intérieur. Au long des siècles, les chrétiens ont appris à invoquer ce Nom dans la joie, la tentation, la maladie et la mort.

La fête invite les croyants à garder leur parole, à prononcer le Nom du Seigneur avec révérence et amour, et à y trouver refuge avec une confiance filiale. Elle est une école de prière centrée sur la personne même de Jésus, dont le Nom résume en un seul mot le mystère de l'Incarnation, de la Croix et de la Résurrection.$desc$),
('the-epiphany-of-the-lord', 'Épiphanie du Seigneur', $desc$
L'Épiphanie célèbre la manifestation du Seigneur Jésus aux nations, surtout dans la venue des mages qui entreprennent un long chemin pour adorer le Roi nouveau-né. En eux sont représentés les peuples de la terre, attirés par grâce vers la lumière levée sur Israël et désormais destinée au monde entier.

Cette fête proclame l'horizon universel du salut. L'enfant de Bethléem n'est pas l'espérance d'un seul peuple, mais le Sauveur en qui les promesses faites à Israël s'ouvrent à toutes les nations. Les dons des mages — l'or, l'encens et la myrrhe — sont lus depuis longtemps par la tradition chrétienne comme des signes de la royauté du Christ, de sa divinité et de sa passion rédemptrice, tandis que leur pèlerinage révèle la route de tous ceux qui cherchent Dieu avec sincérité.

Dès les premiers siècles, les chrétiens ont aussi associé l'Épiphanie à d'autres manifestations de la gloire du Seigneur, spécialement son baptême dans le Jourdain et le miracle de Cana. La fête rassemble ainsi une riche théologie de la révélation : le Christ caché est rendu visible, l'enfant humble est reconnu comme Seigneur, et la lumière du Verbe incarné commence à illuminer les nations. Son origine dans l'Orient chrétien ancien et sa rapide diffusion dans toute l'Église témoignent de la centralité de ce mystère.

L'Épiphanie invite chaque croyant à devenir chercheur et adorateur. Elle appelle l'Église à la joie missionnaire, à porter l'Évangile à toute culture et à déposer aux pieds du Christ les trésors de la vie humaine, afin que tous les peuples trouvent en lui leur véritable Roi et leur lumière.$desc$),
('saint-raymond-of-penyafort-priest', 'Saint Raymond de Penyafort, prêtre', $desc$
Cette fête honore saint Raymond de Penyafort, prêtre dont la sainteté s'est exprimée dans la prédication, le gouvernement prudent, le soin des âmes et un éminent service du droit canonique. Comme membre de l'Ordre des Prêcheurs, il a montré que la fidélité à l'Évangile comprend non seulement l'annonce publique, mais aussi le patient labeur qui ordonne la vie ecclésiale pour le bien des fidèles.

Raymond est particulièrement connu pour son dévouement au sacrement de Pénitence et au ministère de la réconciliation. Il comprenait que la justice dans l'Église doit toujours être unie à la miséricorde, et qu'une discipline claire peut servir la guérison des consciences au lieu de l'entraver. En lui, l'Église voit un pasteur qui a employé son savoir non pour le prestige, mais pour le salut des âmes.

Il joua un rôle important dans la compilation des Décrétales de Grégoire IX, contribuant ainsi à façonner la tradition juridique de l'Église latine. Il favorisa aussi l'élan missionnaire et encouragea un dialogue ordonné à la conversion des cœurs. Sa vie montre que la rigueur intellectuelle, la responsabilité administrative et la charité évangélique peuvent appartenir à une même vocation.

La fête invite les confesseurs, les canonistes et tous ceux qui travaillent dans des formes discrètes de service ecclésial à reconnaître leur tâche comme un chemin de sainteté. Le témoignage de Raymond enseigne que l'ordre, la miséricorde et la sagesse pastorale ne s'opposent pas, mais expriment ensemble la charité du Christ.$desc$),
('saint-hilary-bishop-and-doctor-of-the-church', 'Saint Hilaire, évêque et docteur de l''Église', $desc$
Cette fête célèbre saint Hilaire de Poitiers, évêque, théologien et docteur de l'Église, l'un des grands défenseurs occidentaux de la divinité du Christ. Au temps de la crise arienne, il demeura ferme dans la confession du Fils éternellement consubstantiel au Père, au prix même de l'exil et de l'incompréhension.

Les écrits d'Hilaire révèlent une intelligence façonnée par l'Écriture et animée par un profond souci pastoral. Son grand traité Sur la Trinité ne cherche pas seulement à réfuter l'erreur, mais à conduire les croyants vers une contemplation plus révérencieuse du mystère de Dieu. Pour lui, la théologie n'était jamais une spéculation détachée : parler justement du Christ, c'était protéger la vie de foi, de prière et de salut.

Il a aussi laissé des commentaires, des hymnes et des lettres qui montrent l'étendue de son ministère. Les générations postérieures l'ont appelé « l'Athanase de l'Occident » en raison de son courage et de sa lucidité dans la controverse doctrinale. Son témoignage montre que les évêques servent l'Église non seulement par le gouvernement, mais aussi par l'enseignement fidèle de la vérité et, s'il le faut, par la souffrance.

La fête invite les chrétiens à aimer plus profondément le mystère de la Trinité et à unir la clarté intellectuelle au courage. Hilaire rappelle à l'Église que la fidélité doctrinale est un acte de charité pastorale, car seul le vrai Christ peut sauver et sanctifier son peuple.$desc$),
('saint-anthony-abbot', 'Saint Antoine, abbé', $desc$
Cette fête honore saint Antoine abbé, vénéré comme le père des moines et l'un des témoins les plus nets, dans l'Antiquité chrétienne, des exigences radicales de l'Évangile. Ayant entendu l'appel du Christ à tout quitter pour le suivre, Antoine embrassa une vie de pauvreté, de prière, de jeûne et de solitude, cherchant Dieu au désert d'un cœur sans partage.

Sa vie manifeste le sens spirituel du désert comme lieu de purification et de rencontre. Les combats d'Antoine contre la tentation sont devenus une image durable du combat chrétien contre les puissances du péché, de la peur et de l'illusion. Bien qu'éloigné du monde, il servit puissamment l'Église par son conseil, son intercession et l'exemple d'une existence tout entière donnée à Dieu.

La Vie d'Antoine écrite par saint Athanase répandit sa renommée dans tout le monde chrétien et contribua grandement à l'essor du monachisme en Orient comme en Occident. En Antoine, d'innombrables moines, ermites et fidèles ordinaires ont reconnu un maître de discernement, un ami du silence et un rappel vivant que le cœur humain est fait pour la communion avec Dieu.

La fête invite les fidèles à retrouver la liberté intérieure, la simplicité de vie et la persévérance dans la prière. Antoine enseigne que tout chrétien, quel que soit son état de vie, doit traverser en quelque mesure le désert pour apprendre la confiance, le détachement et la joie qui naît de la recherche de Dieu par-dessus tout.$desc$),
('saint-fabian-pope-and-martyr', 'Saint Fabien, pape et martyr', $desc$
Cette fête honore saint Fabien, pape et martyr, pasteur de l'Église romaine dont le ministère fut couronné par le témoignage du sang. La tradition ancienne a retenu de son élection le signe d'une colombe descendue sur lui, image d'une autorité pastorale appelée à s'exercer sous la conduite de l'Esprit Saint et au service de la paix ecclésiale.

Fabien gouverna l'Église durant une période relativement paisible et demeure associé à l'organisation de l'administration ecclésiale ainsi qu'au souci missionnaire. Mais sa vie montre aussi combien vite la paix peut céder à la persécution, et comment la charge de gouvernement peut devenir chemin de martyre. En lui s'unissent responsabilité pastorale et sacrifice personnel.

Il mourut lors de la persécution de Dèce au IIIe siècle, et sa mémoire fut honorée très tôt par l'Église de Rome. Son tombeau dans les catacombes et le témoignage des sources anciennes gardent vivant le souvenir d'un évêque qui ne s'est pas dérobé à l'heure de l'épreuve. L'Église le vénère à la fois comme pasteur et comme martyr, père qui a confirmé son troupeau par sa mort.

La fête invite les évêques, les prêtres et tous les fidèles à persévérer dans une fidélité courageuse. Fabien enseigne que l'autorité dans l'Église n'est authentique que lorsqu'elle se conforme au don de soi du Christ, le Bon Pasteur qui donne sa vie pour ses brebis.$desc$),
('saint-sebastian-martyr', 'Saint Sébastien, martyr', $desc$
Cette fête honore saint Sébastien, l'un des martyrs les plus aimés de l'Antiquité chrétienne, témoin du Christ jusque dans les structures du pouvoir impérial. La tradition le présente comme un soldat qui préféra la fidélité au Seigneur à toute promotion, et dont le courage dans la persécution devint un signe de fermeté de la foi sous la pression du monde.

Le martyre de Sébastien manifeste le paradoxe de la force chrétienne. Extérieurement vulnérable et livré à la violence, le martyr demeure intérieurement vainqueur parce que sa vie est cachée dans le Christ. C'est pourquoi l'art et la dévotion chrétiens ont longuement contemplé Sébastien comme une figure de persévérance, de souffrance corporelle et de triomphe spirituel.

Son culte fleurit très tôt à Rome, où son tombeau sur la Via Appia devint un grand lieu de pèlerinage. Plus tard, on l'invoqua largement comme protecteur dans les temps de peste et de détresse publique, non parce que la souffrance disparaîtrait, mais parce que l'intercession du martyr était recherchée pour obtenir courage, guérison et espérance. Ainsi son témoignage est entré profondément dans la prière du peuple chrétien.

La fête invite les croyants à demeurer fidèles lorsque la condition de disciple devient coûteuse et à remettre la maladie du corps comme l'angoisse sociale sous la miséricorde de Dieu. Sébastien rappelle à l'Église qu'aucune profession, aucune circonstance et aucune pression publique n'empêchent de rendre un témoignage courageux au Christ.$desc$),
('saint-agnes-virgin-and-martyr', 'Sainte Agnès, vierge et martyre', $desc$
Cette fête honore sainte Agnès, vierge et martyre, dont le témoignage juvénile resplendit dans l'Église depuis l'Antiquité. Elle est rappelée comme une jeune disciple appartenant tout entière au Christ et qui préféra la mort à toute trahison de cette consécration, unissant ainsi l'amour virginal et le martyre dans une unique offrande.

Agnès montre avec une clarté particulière que la sainteté est l'œuvre de la grâce plus que de l'âge, de la force ou du pouvoir social. Sa pureté n'est pas une simple innocence, mais le signe d'un amour sans partage ; son martyre n'est pas une défaite tragique, mais une victoire nuptiale, le triomphe de la fidélité à l'Époux sur la peur et la contrainte. En elle, l'Église vénère à la fois l'innocence devenue forte et le courage devenu doux.

Sa mémoire est profondément enracinée dans la tradition romaine. Elle est nommée dans le Canon romain, louée par des Pères anciens comme Ambroise, et liée à un symbolisme durable de l'agneau, suggéré par son nom et par la douceur de son témoignage. Par la liturgie, la prédication, l'art et la dévotion populaire, Agnès est devenue patronne des vierges consacrées et de la jeunesse.

La fête invite les chrétiens à aimer la pureté du cœur, l'intégrité et la fidélité sans crainte. Agnès rappelle à l'Église que la beauté de la sainteté apparaît souvent avec le plus de force en ceux que le monde juge faibles, et que l'amour du Christ peut rendre même les jeunes capables d'un témoignage héroïque.$desc$),
('saint-vincent-deacon-and-martyr', 'Saint Vincent, diacre et martyr', $desc$
Cette fête honore saint Vincent, diacre et martyr, dont le témoignage a uni l'humble service à une endurance héroïque. Comme diacre, il appartenait au ministère de l'autel et au soin des pauvres ; dans le martyre, il a montré qu'un tel service trouve son accomplissement suprême lorsque la vie elle-même est offerte en union au Christ.

La tradition concernant Vincent met en lumière la constance au milieu des supplices et l'éloquence d'une foi que la souffrance ne peut briser. Il demeure dans la mémoire chrétienne comme l'un de ceux dont l'endurance est devenue une sorte de prédication, révélant que l'Évangile possède une force plus profonde que la violence. En lui, l'Église voit le diacre comme serviteur, témoin et athlète du Christ.

Son culte se répandit largement depuis l'Espagne dans tout le monde chrétien, nourri par l'éloge d'auteurs tels que Prudence et Augustin. Sa renommée auprès des clercs comme des laïcs montre combien l'Église ancienne aimait ces martyrs dont la fermeté illuminait à la fois la dignité du ministère et la puissance de la grâce dans la faiblesse.

La fête invite les diacres et tous ceux qui servent l'Église dans les œuvres concrètes de charité et de culte à unir le ministère extérieur à la fidélité intérieure. Vincent enseigne qu'aucun service rendu au Christ n'est insignifiant, et que la persévérance dans l'épreuve peut devenir à elle seule une proclamation de l'Évangile.$desc$),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'Saint François de Sales, évêque et docteur de l''Église', $desc$
Cette fête honore saint François de Sales, évêque, maître spirituel et docteur de l'Église, dont l'enseignement a fait apparaître la sainteté à la fois exigeante et douce. Il est surtout rappelé pour avoir montré que la dévotion n'est pas réservée aux cloîtres ni aux âmes exceptionnelles, mais qu'elle constitue la vocation des chrétiens en tout état de vie.

Ses écrits et son ministère rayonnent d'une sagesse pastorale marquée par la patience, la clarté et la charité. François sut défendre la foi sans amertume, guider les âmes sans dureté et appeler à la conversion sans décourager. Dans un monde souvent traversé par les conflits religieux, il a témoigné de la force persuasive de la vérité dite dans l'amour.

Des œuvres comme l'Introduction à la vie dévote et le Traité de l'amour de Dieu ont donné une expression durable à sa spiritualité. Elles enseignent le recueillement au cœur de la vie quotidienne, la fidélité dans les petites choses et la confiance dans l'action de Dieu au sein des devoirs ordinaires. C'est pourquoi François est devenu patron des écrivains, des communicateurs et de tous ceux qui cherchent à parler de Dieu avec intelligence et chaleur.

La fête invite les fidèles à poursuivre la sainteté dans les circonstances concrètes de leur vie. François de Sales rappelle à l'Église que la sanctité grandit par une charité patiente, une paix intérieure et une générosité constante qui transforme la vie ordinaire en offrande continuelle à Dieu.$desc$),
('the-conversion-of-saint-paul-the-apostle', 'Conversion de saint Paul, apôtre', $desc$
Cette fête célèbre la conversion de saint Paul sur le chemin de Damas, rencontre décisive au cours de laquelle le persécuteur de l'Église fut saisi par le Christ ressuscité et fait apôtre. Elle honore non un simple changement d'opinion ou une réforme morale, mais l'action souveraine de la grâce qui réoriente toute une existence vers le service de l'Évangile.

Dans la conversion de Paul, l'Église contemple la liberté et la puissance de la miséricorde divine. Le Christ se révèle à Saul par ces paroles : « Pourquoi me persécutes-tu ? », montrant l'union mystérieuse entre le Seigneur et son Corps qu'est l'Église. En même temps, l'événement manifeste que l'élection pour la mission est pur don : celui qui voulait détruire l'Église devient son infatigable prédicateur parmi les nations.

La tradition chrétienne a longtemps médité ce mystère comme un paradigme de repentir, de vocation et de courage apostolique. Les lettres de Paul portent durablement l'empreinte de cette rencontre, revenant sans cesse sur la grâce, la miséricorde et la nouveauté de la création dans le Christ. Sa conversion est aussi devenue un puissant signe d'espérance pour la réconciliation et l'unité des chrétiens.

La fête invite chaque croyant à ne jamais désespérer de la grâce, ni pour soi-même ni pour autrui. Paul enseigne que le Christ peut renverser les résistances les plus durcies, illuminer l'intelligence, guérir le cœur et transformer l'hostilité passée en un service fécond pour le Royaume de Dieu.$desc$),
('saints-timothy-and-titus-bishops', 'Saints Timothée et Tite, évêques', $desc$
Cette fête honore les saints Timothée et Tite, proches collaborateurs de saint Paul et premiers évêques de l'Église apostolique. À travers eux, l'Église fait mémoire de la transmission de l'Évangile non seulement par de grands fondateurs, mais aussi par des disciples fidèles chargés d'enseigner, de gouverner et de prendre soin du peuple de Dieu.

Le Nouveau Testament présente les deux hommes comme compagnons de mission, dépositaires de la confiance de Paul et pasteurs appelés à affermir des Églises locales. Leurs noms demeurent liés aux lettres pastorales, qui insistent sur la saine doctrine, la persévérance, la sobriété et les qualités requises chez ceux qui veillent sur la communauté chrétienne. Ils incarnent la continuité entre la prédication apostolique et le ministère ecclésial stable.

Timothée est surtout associé à Éphèse et Tite à la Crète, mais leur portée dépasse leur histoire locale. Ils représentent ces nombreux pasteurs formés par une paternité spirituelle, éprouvés dans le service et envoyés pour garder la communion. En eux, l'Église voit comment l'autorité apostolique se transmet par la formation personnelle, la confiance et le labeur sacrificiel.

La fête invite les évêques, les prêtres, les diacres, les catéchistes et tous les ouvriers de l'Évangile à chérir la communion ecclésiale et la fidélité dans le ministère. Timothée et Tite rappellent aux croyants que la vie de l'Église se construit par la coopération, le mentorat et la persévérance dans la vérité.$desc$),
('saint-angela-merici-virgin', 'Sainte Angèle Merici, vierge', $desc$
Cette fête honore sainte Angèle Merici, vierge et fondatrice, qui discerna une forme nouvelle de consécration apostolique centrée sur la formation chrétienne des filles et des jeunes femmes. Sa vie montre comment l'Esprit Saint suscite des chemins de sainteté capables de répondre aux besoins concrets d'une époque sans rien perdre de la radicalité du don de soi au Christ.

Le témoignage d'Angèle unit contemplation et charité pratique. Elle comprenait l'éducation comme une œuvre profondément évangélique, capable de former les cœurs, d'affermir les familles et de renouveler la société de l'intérieur. En formant les femmes dans la foi et la vertu, elle ouvrit aussi un chemin à une participation plus large des femmes laïques et consacrées à la mission de l'Église.

Par la Compagnie de sainte Ursule, puis par la tradition ursuline qui en est issue, son inspiration porta d'abondants fruits dans la catéchèse, les écoles et les œuvres de miséricorde. Elle se tient parmi ces saints qui ont anticipé des développements ultérieurs de la vie religieuse apostolique en montrant que la consécration peut fleurir au milieu des réalités ordinaires lorsqu'elle demeure enracinée dans la prière et l'obéissance ecclésiale.

La fête invite les éducateurs, les catéchistes et tous ceux qui accompagnent la jeunesse à voir dans la formation patiente une œuvre sainte. Angèle rappelle à l'Église que la sagesse, la tendresse et l'espérance persévérante peuvent faire de l'éducation un véritable service de l'Évangile.$desc$),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'Saint Thomas d''Aquin, prêtre et docteur de l''Église', $desc$
Cette fête honore saint Thomas d'Aquin, prêtre, frère dominicain et docteur de l'Église, l'un des plus grands théologiens de l'histoire chrétienne. En lui, l'Église vénère une intelligence entièrement consacrée à la contemplation de la vérité, convaincue que toute recherche authentique de la sagesse trouve son accomplissement en Dieu.

Thomas est particulièrement célébré pour avoir montré l'harmonie entre la foi et la raison. Il enseigne que la grâce perfectionne la nature, que la révélation n'abolit pas le travail de l'intelligence, et qu'une enquête philosophique rigoureuse peut servir la théologie lorsqu'elle est ordonnée à la vérité. Ses écrits demeurent ainsi une école d'humilité intellectuelle, de clarté et de confiance dans la cohérence de la sagesse divine.

Mais Thomas fut bien davantage qu'un maître universitaire. Il fut un homme de prière, un prédicateur et un théologien dont la pensée se nourrissait de l'Écriture et de la liturgie. Ses hymnes eucharistiques, ses méditations sur le Christ et son attitude de révérence devant les mystères de la foi montrent la source contemplative d'où jaillissait son enseignement.

La fête invite les étudiants, les enseignants et tous les fidèles à chercher la sagesse comme une forme de disciple. Thomas rappelle à l'Église que l'amour de la vérité et l'amour de Dieu vont ensemble, et que la sainteté peut briller dans l'étude patiente offerte au service de tout le peuple de Dieu.$desc$),
('saint-john-bosco-priest', 'Saint Jean Bosco, prêtre', $desc$
Cette fête honore saint Jean Bosco, prêtre et éducateur, dont la vie fut consacrée à la jeunesse, surtout la plus pauvre, la plus abandonnée et la plus vulnérable. Il voyait dans les garçons des marges non un fardeau social, mais un champ prêt à recevoir la grâce du Christ, et il se donna à les former dans la foi, le travail, la joie et l'espérance.

Sa vision éducative, souvent appelée système préventif, repose sur la raison, la religion et l'affection bienveillante. Au lieu de s'appuyer d'abord sur la punition, il cherchait à créer un climat de confiance où les jeunes puissent grandir grâce à l'amitié, à la vie sacramentelle, à la discipline et à l'encouragement. Sa charité pastorale reflétait la tendresse du Bon Pasteur.

Les œuvres qu'il fonda, surtout la famille salésienne, se répandirent largement et continuent de marquer l'éducation catholique dans le monde. En Don Bosco, l'Église voit un saint qui unit énergie pratique, dévotion mariale, confiance en la Providence et remarquable capacité à éveiller des vocations et à former le caractère chrétien.

La fête invite les familles, les enseignants, les catéchistes et les pasteurs à ne jamais sous-estimer la faim spirituelle des jeunes. Jean Bosco rappelle à l'Église que la sainteté peut se communiquer par la joie, la patience et une présence fidèle, et que l'éducation de la jeunesse est une œuvre de miséricorde privilégiée.$desc$),
('the-baptism-of-the-lord', 'Baptême du Seigneur', $desc$
Cette fête célèbre le baptême du Seigneur Jésus dans le Jourdain par les mains de Jean. En ce moment, les cieux s'ouvrent, l'Esprit descend comme une colombe et la voix du Père déclare Jésus son Fils bien-aimé. L'événement compte parmi les grandes manifestations du Christ, révélant à la fois son identité et le commencement de sa mission publique.

Bien qu'il soit sans péché, le Christ entre dans les eaux par solidarité avec les pécheurs. Les Pères de l'Église ont donc vu dans ce mystère non une purification de Jésus, mais la sanctification des eaux et la préfiguration du baptême chrétien. Celui qui n'a pas besoin de conversion prend librement place parmi ceux qu'il est venu sauver, anticipant déjà l'humilité de la Croix.

Dès les temps anciens, l'Église a contemplé ce mystère en étroite relation avec l'Épiphanie, puisque ces deux fêtes proclament la manifestation de la gloire du Seigneur. Le baptême dans le Jourdain dévoile aussi une théologie profondément trinitaire : le Fils se révèle dans la chair, le Père parle depuis le ciel et l'Esprit repose sur lui. L'économie du salut apparaît ici dans une lumineuse simplicité.

La fête invite les fidèles à renouveler la grâce de leur propre baptême, à se souvenir qu'ils ont été faits enfants de Dieu dans le Fils, et à vivre sous l'onction de l'Esprit Saint. Elle appelle à un disciple humble et disponible pour la mission, façonné par cette même filiation bien-aimée manifestée au Jourdain.$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- 4) TRANSLATIONS LA
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('solemnity-of-mary-the-holy-mother-of-god', 'Sancta Dei Genetrix Maria', $desc$
Haec sollemnitas Beatam Virginem Mariam in divina maternitate veneratur, confitens Filium ex ea natum vere esse aeternum Patris Filium carne factum. Titulus Dei Genetricis Mariam a Christo separatam non extollit; potius ipsam veritatem de Iesu Christo custodit, qui una Persona divina est, naturam humanam ex ea vere assumpsit, atque in historiam nostram propter salutem nostram intravit.

Ecclesia hanc confessionem ex ipso Evangelio accipit. Maria Verbum in fide ad Annuntiationem suscipit, in utero portat, atque mysteriis nativitatis, vitae absconditae, passionis et gloriae eius intime sociata manet. Eius igitur maternitas simul corporalis et spiritualis est: Redemptori carnem praebet, et exemplar discipuli permanet qui verbum Dei audit et corde indiviso custodit.

Titulus Theotokos, a Concilio Ephesino anno 431 sollemniter affirmatus, inter clarissimas formulas mysterii Incarnationis numeratur. Oriens et Occidens christianus Mariam contemplati sunt ut Novam Evam, Virginem sanctissimam, matremque pro fidelibus intercedentem. In ea Ecclesia primitias redemptionis et splendidam imaginem agnoscit eorum quae gratia in unoquoque credente efficere desiderat.

Festum christifideles invitat ut Dei propinquitatem grato animo contemplentur, qui per humanam matrem ad nos venire voluit, atque se maternae Mariae intercessioni committant. Fidem contemplativam, oboedientem et pacificam fovet, quae ab ea discit Christum suscipere, mysteria eius meditari, et ipsum mundo offerre.$desc$),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', 'Sancti Basilius Magnus et Gregorius Nazianzenus', $desc$
Haec festivitas duos ex maximis Patribus Cappadocibus honorat, Basilium Magnum et Gregorium Nazianzenum, quorum amicitia, doctrina et pastoralis fortitudo perenne in Ecclesia vestigium reliquerunt. Ambo fuerunt episcopi, spiritu monachi, et magistri doctrinae sacrae, non solum propter sanctitatem privatam, sed quia totam vitam Evangelio serviendam tradiderunt, memorantur.

Eorum testimonium a confessione Sanctissimae Trinitatis separari non potest. Tempore acerbarum controversiarum doctrinalium Basilius et Gregorius plenam divinitatem Filii et Spiritus Sancti strenue defenderunt, fidem in baptismo et cultu traditam pressius exprimere Ecclesiae adiuvantes. Doctrina eorum ostendit veritatem fidei non esse frigidam abstractionem, sed amantem fidelitatem erga Deum qui se revelavit Patrem, Filium et Spiritum Sanctum.

Basilius memoria tenetur ob sapientiam monasticam, ordinationem pastoralem, praedicationem de caritate sociali, atque scripta de creatione et de Spiritu Sancto. Gregorius autem, inter maximos Ecclesiae oratores, profundam contemplationem cum sermone limpido coniunxit, praesertim in Orationibus Theologicis, unde in Oriente nomen "Theologi" obtinuit. Simul rarissimam concordiam amicitiae, contemplationis, asceseos et servitii ecclesialis repraesentant.

Eorum commemoratio fideles invitat ut sanam doctrinam diligant, studium in spiritu orationis persequantur, et sanctam amicitiam tamquam veram scholam sanctitatis agnoscant. Basilius et Gregorius Ecclesiae memoriam ingerunt defensionem veritatis tunc fructuosam esse, cum humilitati, sacrificio et caritati coniungitur.$desc$),
('the-most-holy-name-of-jesus', 'Sanctissimi Nominis Iesu', $desc$
Haec festivitas sanctissimum Nomen Iesu veneratur, ab angelo ante conceptionem annuntiatum et secundum praeceptum divinum impositum. In hoc Nomine ipsa missio Verbi incarnati iam declaratur, quia Iesus significat "Dominus salvat." Hoc Nomen cum fide pronuntiare est profiteri salutem non ex viribus humanis, sed ex ipsa Christi persona procedere.

Sacra Scriptura Nomini Iesu singularem dignitatem tribuit. Sanctus Paulus docet Deum Christum ita exaltasse ut in nomine Iesu omne genu flectatur, dum Sanctus Petrus proclamat nullum aliud nomen sub caelo datum esse in quo nos oporteat salvos fieri. Ecclesia igitur hoc Nomen non velut nudum sonum, sed ut signum ipsius Salvatoris, auctoritatis, misericordiae atque praesentiae victoriosae veneratur.

Devotio erga Sanctissimum Nomen in praedicatione, liturgia et pietate populari floruit, praesertim per sanctum Bernardinum Senensem et traditionem Franciscanam. Eadem quoque consonat antiqua orationi Iesu in Oriente christiano, ubi assidua invocatio Nominis Domini fit actus paenitentiae, adorationis et interioris recollectionis. Per saecula christiani hoc Nomen in gaudio, tentatione, infirmitate atque ipsa morte invocare didicerunt.

Festum credentes invitat ut sermonem suum custodiant, Nomen Domini cum reverentia et amore proferant, atque in eo puerili fiducia refugium inveniant. Schola est orationis in ipsa Iesu persona fundata, cuius Nomen mysterium Incarnationis, Crucis et Resurrectionis uno verbo colligit.$desc$),
('the-epiphany-of-the-lord', 'Epiphania Domini', $desc$
Epiphania manifestationem Domini Iesu gentibus celebrat, praesertim in adventu Magorum qui longum iter suscipiunt ut Regem recens natum adorent. In eis populi terrae repraesentantur, gratia ad lumen super Israel ortum attracti, quod iam universo mundo splendet.

Hoc festum universalem salutis amplitudinem proclamat. Infans Bethlehemiticus non unius tantum populi spes est, sed Salvator in quo promissiones Israel datae omnibus gentibus aperiuntur. Dona Magorum—aurum, thus et myrrha—iam diu a traditione christiana intellecta sunt ut signa regiae Christi dignitatis, divinitatis atque passionis redemptricis, dum eorum peregrinatio viam omnium ostendit qui Deum sincero corde quaerunt.

Iam a primis saeculis christiani Epiphaniam cum aliis manifestationibus gloriae Domini coniunxerunt, praesertim cum baptismo in Iordane et miraculo Canae. Sic festum locupletem theologiam revelationis complectitur: Christus absconditus manifestatur, infans humilis ut Dominus agnoscitur, et lumen Verbi incarnati gentes illuminare incipit. Origo eius in antiquo Oriente christiano et celeris diffusio per universam Ecclesiam centralitatem huius mysterii demonstrant.

Epiphania unumquemque credentem invitat ut quaesitor et adorator fiat. Ecclesiam vocat ad gaudium missionarium, ut Evangelium omni culturae afferat et thesauros vitae humanae ad pedes Christi deponat, quo omnes populi in ipso verum Regem suum et lumen inveniant.$desc$),
('saint-raymond-of-penyafort-priest', 'Sanctus Raymundus de Peniafort, Presbyter', $desc$
Haec festivitas sanctum Raymundum de Peniafort honorat, presbyterum cuius sanctitas in praedicatione, prudenti regimine, cura animarum et egregio iuris canonici servitio enituit. Ut filius Ordinis Praedicatorum ostendit fidelitatem erga Evangelium non solum publicam annuntiationem complecti, sed etiam patientem laborem quo vita ecclesialis ad utilitatem fidelium ordinatur.

Raymundus praesertim memoratur propter studium sacramenti Paenitentiae et ministerii reconciliationis. Intellexit enim iustitiam in Ecclesia semper misericordiae esse coniungendam, atque disciplinam perspicuam conscientiarum curationi prodesse posse. In eo Ecclesia pastorem contemplatur qui doctrinam suam non ad gloriam propriam, sed ad salutem animarum adhibuit.

Partem magni momenti egit in collectione Decretalium Gregorii IX, ita traditionem iuridicam Ecclesiae Latinae conformandam adiuvans. Missionarium quoque zelum promovit atque colloquium ad conversionem cordium ordinatum fovit. Vita eius demonstrat rigorem intellectualem, responsabilitatem administrativam et caritatem evangelicam ad unam eandemque vocationem pertinere posse.

Festum confessarios, canonistas atque omnes qui in occultioribus formis servitii ecclesialis laborant invitat ut opus suum iter sanctitatis agnoscant. Raymundi testimonium docet ordinem, misericordiam et sapientiam pastoralem non esse bona adversa, sed consonas Christi caritatis expressiones.$desc$),
('saint-hilary-bishop-and-doctor-of-the-church', 'Sanctus Hilarius, Episcopus et Ecclesiae Doctor', $desc$
Haec festivitas sanctum Hilarium Pictaviensem celebrat, episcopum, theologum et Ecclesiae Doctorem, unum ex maximis in Occidente defensoribus divinitatis Christi. Tempore crisis Arianae constanter confessus est Filium Patri ab aeterno consubstantialem esse, etiam exsilium et contradictionem sustinens.

Scripta Hilarii mentem ostendunt Sacra Scriptura formatam et pastorali cura animatam. Magnum opus eius De Trinitate non tantum errorem refellere, sed fideles ad reverentiorem mysterii Dei contemplationem ducere studet. Apud Hilarium theologia numquam fuit mera speculatio seiuncta: recte de Christo loqui significabat vitam fidei, orationis et salutis custodire.

Commentarios, hymnos et epistulas quoque reliquit, quibus amplitudo ministerii eius manifestatur. Posteriores generationes eum "Athanasius Occidentis" appellaverunt propter fortitudinem et perspicuitatem in controversia doctrinali. Eius testimonium demonstrat episcopos Ecclesiae servire non solum regendo, sed etiam veritatem fideliter docendo atque, si opus sit, pro ea patiendo.

Festum christifideles invitat ut mysterium Trinitatis altius diligant et claritatem intellectualem cum fortitudine coniungant. Hilarius Ecclesiae commemorat fidelitatem doctrinalem actum esse caritatis pastoralis, quia solus verus Christus populum suum salvare et sanctificare potest.$desc$),
('saint-anthony-abbot', 'Sanctus Antonius, Abbas', $desc$
Haec festivitas sanctum Antonium Abbatem honorat, ut patrem monachorum et unum e clarissimis in antiquitate christiana testibus radicalium Evangelii exigentiarum veneratum. Vocem Christi audiens omnia relinquenda et ipsum sequendum esse, Antonius vitam paupertatis, orationis, ieiunii et solitudinis amplexus est, Deum corde indiviso in deserto quaerens.

Vita eius sensum spiritualem deserti ut loci purificationis et occursus manifestat. Certamina Antonii contra tentationem imago permanens facta sunt pugnae christianae contra peccatum, timorem et deceptionem. Quamvis a mundo recessisset, Ecclesiae tamen potentissime servivit consilio, intercessione et exemplo vitae Deo penitus dicatae.

Vita Antonii a sancto Athanasio conscripta famam eius per orbem christianum diffudit atque magnopere ad incrementum vitae monasticae in Oriente et Occidente contulit. In Antonio innumeri monachi, eremitae et fideles communes magistrum discretionis, amicum silentii, ac vivum monitorem agnoverunt cor humanum ad communionem cum Deo factum esse.

Festum fideles invitat ut libertatem interiorem, simplicitatem vitae et perseverantiam in oratione recuperent. Antonius docet omnem christianum, quocumque vitae statu sit, aliquo modo desertum ingredi debere ut fiduciam, abrenuntiationem et gaudium discat quod ex Deo super omnia quaerendo nascitur.$desc$),
('saint-fabian-pope-and-martyr', 'Sanctus Fabianus, Papa et Martyr', $desc$
Haec festivitas sanctum Fabianum, papam et martyrem, honorat, pastorem Ecclesiae Romanae cuius ministerium sanguinis testimonio coronatum est. Traditio antiqua electionem eius columba descendente signatam memoravit, ut indicaretur auctoritatem pastoralem sub ductu Spiritus Sancti atque in servitium pacis ecclesialis exercendam esse.

Fabianus Ecclesiam tempore relative tranquillo rexit atque cum ordinatione administrationis ecclesiasticae et sollicitudine missionaria coniungitur. Sed vita eius simul ostendit quam cito pax in persecutionem mutari possit, et quomodo ipsum regimen Ecclesiae in viam martyrii converti valeat. In eo coniunguntur responsabilitas pastoralis et sacrificium personale.

Sub persecutione Deciana saeculo tertio mortem oppetiit, eiusque memoria a Romana Ecclesia iam inde a priscis temporibus honorata est. Sepulcrum eius in catacumbis et testimonium fontium antiquorum memoriam vivam servant episcopi qui ab hora tentationis non fugit. Ecclesia eum ut pastorem simul et martyrem veneratur, patrem qui gregem suum morte confirmavit.

Festum episcopos, presbyteros atque omnes fideles invitat ad perseverantiam in forti fidelitate. Fabianus docet auctoritatem in Ecclesia tunc esse authenticam, cum se conformet donationi Christi Boni Pastoris, qui animam suam pro ovibus ponit.$desc$),
('saint-sebastian-martyr', 'Sanctus Sebastianus, Martyr', $desc$
Haec festivitas sanctum Sebastianum honorat, unum ex martyribus christianis antiquissimis maxime dilectis, testem Christi etiam intra structuras potestatis imperialis. Traditio eum exhibet ut militem qui fidelitatem Domino omni promotioni anteposuit, cuiusque fortitudo sub persecutione signum perseverantis fidei sub pressione mundi effecta est.

Martyrium Sebastiani paradoxon roboris christiani manifestat. Exterius vulnerabilis et violentiae expositus, martyr tamen intus victor permanet, quia vita eius in Christo abscondita est. Hinc ars et pietas christiana Sebastianum diu contemplatae sunt ut figuram perseverantiae, doloris corporalis et triumphi spiritualis.

Cultus eius Romae iam mature floruit, ubi sepulcrum eius in Via Appia magnum peregrinationis locum effecit. Posterioribus saeculis late invocabatur ut protector temporibus pestilentiae et publicae calamitatis, non quia dolor tolleretur, sed quia intercessio martyris ad obtinendum animum fortem, sanationem et spem quaerebatur. Ita testimonium eius intime in orationem populi christiani intravit.

Festum credentes invitat ut fideles maneant, cum discipulatus pretiosus fit, et ut corporis aegritudinem simul ac socialem anxietatem divinae misericordiae committant. Sebastianus Ecclesiam monet nullam professionem, nullam condicionem, nullamve pressionem publicam impedire posse quin testimonium fortiter Christo reddatur.$desc$),
('saint-agnes-virgin-and-martyr', 'Sancta Agnes, Virgo et Martyr', $desc$
Haec festivitas sanctam Agnetem, virginem et martyrem, honorat, cuius iuvenile testimonium ab antiquitate in Ecclesia splenduit. Commemoratur ut puella discipula quae tota Christo pertinuit et mortem potius quam huius consecrationis proditionem elegit, virginalem amorem et martyrium in una oblatione coniungens.

Agnes singulari claritate ostendit sanctitatem magis opus gratiae esse quam aetatis, virium aut potestatis socialis. Puritas eius non mera innocentia est, sed signum amoris indivisi; martyrium eius non tragica clades, sed victoria sponsalis, triumphi fidelitatis erga Sponsum super timorem et coactionem. In ea Ecclesia veneratur simul innocentiam roboratam et fortitudinem suavem.

Memoria eius alte in traditione Romana radicata est. In Canone Romano nominatur, a Patribus antiquis sicut Ambrosio laudatur, atque cum durabili symbolismo agni conectitur, quem nomen eius et mansuetudo testificationis suggerunt. Per liturgiam, praedicationem, artem et pietatem popularem Agnes patrona virginum consecratarum et iuvenum effecta est.

Festum christifideles invitat ut cordis puritatem, integritatem et intrepidam fidelitatem diligant. Agnes Ecclesiae memoriam renovat pulchritudinem sanctitatis saepe potentissime apparere in iis quos mundus infirmos iudicat, atque amorem Christi etiam iuvenes ad testimonium heroicum aptos reddere posse.$desc$),
('saint-vincent-deacon-and-martyr', 'Sanctus Vincentius, Diaconus et Martyr', $desc$
Haec festivitas sanctum Vincentium, diaconum et martyrem, honorat, cuius testimonium humile servitium cum heroica constantia coniunxit. Ut diaconus ministerio altaris et curae pauperum addictus erat; in martyrio ostendit tale servitium supremum complementum attingere, cum ipsa vita in unione cum Christo offertur.

Traditio de Vincentio constantiam inter tormenta et eloquentiam fidei extollit, quam passio frangere non valuit. In memoria christiana permanet velut unus ex iis quorum tolerantia quasi quaedam praedicatio facta est, revelans Evangelium vim altiorem quam violentiam possidere. In eo Ecclesia diaconum contemplatur ut servum, testem et athletam Christi.

Cultus eius ex Hispania late per orbem christianum diffusus est, laudibus scriptorum sicut Prudentii et Augustini nutritus. Fama eius apud clericos et laicos ostendit quam vehementer antiqua Ecclesia martyres amaverit quorum firmitas dignitatem ministerii atque potentiam gratiae in infirmitate illustrabat.

Festum diaconos atque omnes qui Ecclesiae in operibus caritatis et cultus serviunt invitat ut ministerium exterius interiori fidelitati coniungant. Vincentius docet nullum servitium Christo praestitum esse exile, et perseverantiam in tribulatione ipsum fieri posse Evangelii praeconium.$desc$),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', 'Sanctus Franciscus Salesius, Episcopus et Ecclesiae Doctor', $desc$
Haec festivitas sanctum Franciscum Salesium honorat, episcopum, magistrum spiritualem et Ecclesiae Doctorem, cuius doctrina sanctitatem simul exigentem et suavem ostendit. Praecipue memoratur quod demonstravit devotionem non claustris aut animabus extraordinariis reservatam esse, sed vocationem christianorum in omni vitae statu constituere.

Scripta eius et ministerium sapientia pastorali, patientia, perspicuitate et caritate refulgent. Franciscus fidem sine amaritudine defendere, animas sine asperitate dirigere, et ad conversionem sine desperatione vocare novit. In mundo saepius contentionibus religiosis agitato, vim persuasivam veritatis in caritate prolatae testatus est.

Opera sicut Introductio ad vitam devotam et Tractatus de Amore Dei spiritualitati eius perennem formam dederunt. Ea recollectionem in vita cotidiana, fidelitatem in rebus parvis, et fiduciam in Dei operatione intra officia ordinaria docent. Quam ob rem Franciscus patronus scriptorum, communicatorum et omnium factus est qui de Deo cum intelligentia et humanitate loqui student.

Festum fideles invitat ut sanctitatem in ipsis vitae suae circumstantiis persequantur. Franciscus Salesius Ecclesiae commemorat sanctitatem per patientem caritatem, interiorem pacem et constantem liberalitatem crescere, quae vitam ordinariam in oblationem Deo continuam transformat.$desc$),
('the-conversion-of-saint-paul-the-apostle', 'Conversio Sancti Pauli Apostoli', $desc$
Haec festivitas conversionem sancti Pauli in via Damasci celebrat, illud decisivum occursum quo persecutor Ecclesiae a Christo resuscitato apprehensus est et apostolus factus. Non simplicem opinionis mutationem vel morum emendationem honorat, sed supremam gratiae actionem quae totam vitam ad Evangelii ministerium redire fecit.

In conversione Pauli Ecclesia libertatem et potentiam divinae misericordiae contemplatur. Christus Saulo se revelat verbis: "Saule, Saule, quid me persequeris?", ita mysticam unionem inter Dominum et Corpus eius, quod est Ecclesia, manifestans. Simul eventus ostendit electionem ad missionem purum esse donum: qui Ecclesiam delere cupiebat, fit indefessus eius praedicator inter gentes.

Traditio christiana diu hoc mysterium velut exemplar paenitentiae, vocationis et apostolicae fortitudinis meditata est. Epistulae Pauli permanentem huius occursus impressionem gerunt, assidue ad gratiam, misericordiam et novam creaturam in Christo redeuntes. Conversio eius signum etiam spei validae pro reconciliatione et unitate christianorum facta est.

Festum unumquemque credentem invitat ne umquam de gratia desperet, sive pro se sive pro aliis. Paulus docet Christum posse durissimam resistantiam evertere, mentem illuminare, cor sanare, et pristinam inimicitiam in fecundum Regni Dei ministerium convertere.$desc$),
('saints-timothy-and-titus-bishops', 'Sancti Timotheus et Titus, Episcopi', $desc$
Haec festivitas sanctos Timotheum et Titum honorat, proximos sancti Pauli cooperatores atque episcopos Ecclesiae apostolicae primitivae. Per eos Ecclesia meminit Evangelium non solum a magnis fundatoribus, sed etiam a fidelibus discipulis tradi, quibus doctrina, regimen et cura populi Dei committuntur.

Novum Testamentum ambos exhibet ut socios itinerum missionariorum, depositarios fiduciae Pauli, et pastores ad Ecclesias locales confirmandas missos. Eorum nomina inseparabiliter cum epistulis pastoralibus coniunguntur, quae de sana doctrina, perseverantia, sobrietate et qualitatibus eorum qui communitati christianae praesunt agunt. Continuitatem inter praedicationem apostolicam et stabile ministerium ecclesiale incarnant.

Timotheus praesertim Epheso, Titus autem Cretae sociatur, sed vis eorum testimonii historiam localem longe transcendit. Repraesentant multos pastores per paternitatem spiritualem formatos, in servitio probatos, et ad communionem custodiendam missos. In eis Ecclesia conspicit quomodo auctoritas apostolica per formationem personalem, fiduciam et laborem sacrificialem tradatur.

Festum episcopos, presbyteros, diaconos, catechistas omnesque Evangelii operarios invitat ut communionem ecclesialem et fidelitatem in ministerio diligant. Timotheus et Titus credentibus memorant vitam Ecclesiae cooperatione, institutione mutua et perseverantia in veritate aedificari.$desc$),
('saint-angela-merici-virgin', 'Sancta Angela Merici, Virgo', $desc$
Haec festivitas sanctam Angelam Merici, virginem et fundatricem, honorat, quae novam formam consecrationis apostolicae ad christianam puellarum iuvenumque institutionem destinatam discrevit. Vita eius ostendit quomodo Spiritus Sanctus vias sanctitatis suscitet quae necessitatibus concretis temporis respondeant, nihil tamen de radicali sui donatione Christo amittentes.

Testimonium Angelae contemplationem cum caritate practica coniungit. Educationem intellexit opus penitus evangelicum esse, quod corda formare, familias confirmare et societatem ab intus renovare valeat. Dum mulieres in fide et virtute instituit, viam quoque aperuit ad latiorem participationem mulierum laicarum et consecratarum in missione Ecclesiae.

Per Compagniam Sanctae Ursulae, atque per traditionem Ursulinam ex ea ortam, inspiratio eius uberrimos fructus tulit in catechesi, scholis et operibus misericordiae. Inter sanctos numeratur qui posteriores progressus vitae religiosae apostolicae praevenerunt, demonstrantes consecrationem inter communes vitae condiciones florere posse, si in oratione et obedientia ecclesiali radicetur.

Festum educatores, catechistas omnesque qui iuvenes comitantur invitat ut patientem institutionem sanctum opus agnoscant. Angela Ecclesiae memoriam renovat sapientiam, lenitatem et spem perseverantem educationem in verum Evangelii ministerium convertere posse.$desc$),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', 'Sanctus Thomas de Aquino, Presbyter et Ecclesiae Doctor', $desc$
Haec festivitas sanctum Thomam de Aquino honorat, presbyterum, fratrem Ordinis Praedicatorum et Ecclesiae Doctorem, unum ex maximis theologis historiae christianae. In eo Ecclesia mentem contemplatur totam veritatis contemplationi dicatam, persuasam omnem authenticam sapientiae quaestionem in Deo consummari.

Thomas praesertim celebratur quod harmoniam inter fidem et rationem illustravit. Docet gratiam naturam perficere, revelationem laborem intellectus non abolere, atque investigationem philosophicam disciplinatam theologiae servire posse, si ad veritatem ordinetur. Scripta eius igitur schola permanent humilitatis intellectualis, perspicuitatis et fiduciae in divinae sapientiae cohaerentia.

Attamen Thomas multo plus quam magister scholaris fuit. Vir orationis, praedicator, et theologus erat cuius cogitatio ex Scriptura et liturgia alimoniam sumebat. Hymni eucharistici, meditationes de Christo et reverentia coram fidei mysteriis fontem contemplativum ostendunt ex quo doctrina eius manabat.

Festum discipulos, magistros atque omnes fideles invitat ut sapientiam velut formam discipulatus quaerant. Thomas Ecclesiae memorat amorem veritatis et amorem Dei simul consistere, atque sanctitatem in studio patienti pro utilitate totius Populi Dei oblato splendide fulgere posse.$desc$),
('saint-john-bosco-priest', 'Sanctus Ioannes Bosco, Presbyter', $desc$
Haec festivitas sanctum Ioannem Bosco honorat, presbyterum et educatorem, cuius vita iuvenibus, praesertim pauperibus, derelictis et vulnerabilibus, dedicata fuit. In pueris ad marginem societatis positis non onus sociale, sed agrum gratiae Christi recipiendae paratum videbat, eosque in fide, labore, gaudio et spe formandos suscepit.

Visio educativa eius, saepe systema praeventivum appellata, in ratione, religione et benignitate consistit. Pro poenae timore praecipue nitendo, ambitum fiduciae creare conabatur, in quo iuvenes per amicitiam, vitam sacramentalem, disciplinam et hortamentum crescere possent. Caritas eius pastoralis mansuetudinem Boni Pastoris referebat.

Opera ab eo condita, maxime familia Salesiana, late diffusa sunt et adhuc educationem catholicam per orbem informant. In Don Bosco Ecclesia sanctum contemplatur qui industriam practicam, devotionem Marianam, fiduciam in Providentia et miram facultatem vocationes excitandi atque mores christianos formandi coniunxit.

Festum familias, magistros, catechistas et pastores invitat ne umquam esuriem spiritualem iuvenum parvi aestiment. Ioannes Bosco Ecclesiae commemorat sanctitatem per gaudium, patientiam et fidelem praesentiam communicari posse, atque educationem iuventutis praecipuum misericordiae opus esse.$desc$),
('the-baptism-of-the-lord', 'Baptisma Domini', $desc$
Haec festivitas baptismum Domini Iesu in Iordane per manus Ioannis celebrat. Tunc caeli aperiuntur, Spiritus velut columba descendit, et vox Patris Iesum Filium suum dilectum declarat. Eventus inter magnas Christi manifestationes numeratur, eius simul identitatem et initium missionis publicae revelans.

Quamvis sine peccato sit, Christus in aquas ingreditur solidarietate cum peccatoribus motus. Patres igitur Ecclesiae in hoc mysterio non Iesu purificationem, sed aquarum sanctificationem et baptismi christiani praefigurationem agnoverunt. Qui conversione non indiget, libere locum suum inter eos accipit quos salvare venit, iam humilitatem Crucis praeveniens.

Ab antiquissimis temporibus Ecclesia hoc mysterium arcte cum Epiphania contemplata est, quia utraque festivitas manifestationem gloriae Domini proclamat. Baptismus in Iordane etiam theologiam alte trinitariam pandit: Filius in carne revelatur, Pater e caelo loquitur, et Spiritus super eum requiescit. Hic oeconomia salutis in luminosa simplicitate apparet.

Festum fideles invitat ut gratiam proprii baptismi renovent, meminerint se in Filio filios Dei effectos esse, et sub unctione Spiritus Sancti vivant. Ad humilem discipulatum missioni paratum vocat, eadem dilecta filiatione formatum quae in Iordane manifestata est.$desc$)
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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('solemnity-of-mary-the-holy-mother-of-god', $desc$
In the Roman General Calendar this celebration is kept on 1 January as a Solemnity with white vestments, on the octave day of Christmas. The modern Roman observance places strong emphasis on the title of Mary as Mother of God while retaining, in the Gospel and in the octave setting, the mystery of the Lord's circumcision and naming.

Since 1968 the day has also been observed as the World Day of Peace. As the first day of the civil year, this Roman General celebration gives the Christmas octave a Marian and intercessory focus, joining contemplation of the Incarnation to prayer for peace among peoples.$desc$),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', $desc$
The Roman General Calendar keeps this observance on 2 January as an obligatory memorial with white vestments. It brings together Basil and Gregory in a single celebration, presenting their friendship and doctrinal witness together in the days immediately following the Christmas octave.

Their pairing is a distinctive feature of the modern Roman calendar, which adopted a shared memorial close to the traditional remembrance of Basil's death and in resonance with Eastern custom. The texts highlight both the mystery of the Trinity and the pastoral fruitfulness of theological friendship.$desc$),
('the-most-holy-name-of-jesus', $desc$
In the Roman General Calendar the Holy Name of Jesus is observed on 3 January as an optional memorial with white vestments. Its placement near the beginning of the year keeps attention on the naming of the child Jesus within the Christmas season and on the saving power of his Name.

After having disappeared as a separate universal observance in the postconciliar reform, it was restored to the Roman General Calendar in 2002. The current celebration therefore preserves a long devotional tradition while leaving room for local pastoral choice through its optional character.$desc$),
('the-epiphany-of-the-lord', $desc$
The Roman General Calendar celebrates the Epiphany of the Lord on 6 January as a Solemnity of the Lord with white vestments. In many places particular adaptations transfer its observance to the Sunday falling between 2 and 8 January, but the universal Roman text retains 6 January as the normative date.

Within the modern Roman rite this celebration stands as one of the principal manifestations of the Lord in the Christmas season. It is also associated with the traditional proclamation of the date of Easter and serves as the hinge between the Christmas octave cycle and the celebrations that unfold the Lord's manifestation in the days that follow.$desc$),
('saint-raymond-of-penyafort-priest', $desc$
This Roman General celebration falls on 7 January as an optional memorial with white vestments. It honors Raymond as priest and canonist in a concise observance placed immediately after Epiphany.

The post-1969 Roman calendar moved the memorial from its older January placement to a date nearer his death. Its optional rank reflects the modern calendar's more selective distribution of saints' days while preserving his importance for confessors, canonists, and those engaged in ecclesial governance.$desc$),
('saint-hilary-bishop-and-doctor-of-the-church', $desc$
In the Roman General Calendar Saint Hilary is observed on 13 January as an optional memorial with white vestments. The Roman texts present him chiefly as bishop and Doctor of the Church, emphasizing his doctrinal witness at the start of Ordinary Time.

The present calendar retained a January observance close to the traditional remembrance of his death, while simplifying the older calendar tradition surrounding his feast. Its optional character leaves pastoral space, yet the day remains a notable Roman commemoration of Trinitarian doctrine and episcopal courage.$desc$),
('saint-anthony-abbot', $desc$
The Roman General Calendar keeps Saint Anthony on 17 January as an obligatory memorial with white vestments. His observance is one of the stable landmarks of January and gives the Roman sanctoral cycle an early monastic accent.

Because the memorial is obligatory, the modern Roman rite gives broad prominence to Anthony's witness as father of monks. Popular customs connected with blessing animals and seeking his intercession for rural life often cluster around this date in many places of Roman Catholic practice.$desc$),
('saint-fabian-pope-and-martyr', $desc$
This Roman General observance is kept on 20 January as an optional memorial with red vestments. Saint Fabian shares the date with Saint Sebastian, and each may be commemorated separately under the rubrics of the modern Roman calendar.

The optional rank reflects the present calendar's restraint in multiplying obligatory saints' days, while the red color underscores Fabian's martyrdom. The shared date preserves an ancient Roman association without merging the two saints into a single joint feast.$desc$),
('saint-sebastian-martyr', $desc$
In the Roman General Calendar Saint Sebastian is observed on 20 January as an optional memorial with red vestments, sharing the day with Saint Fabian. The modern Roman books allow his remembrance within the same calendar date while maintaining his distinct identity and texts.

This arrangement preserves Sebastian's strong Roman cult while keeping the observance at an optional rank. The day frequently carries devotional resonance in communities that invoke him in sickness or in prayer for steadfastness under trial.$desc$),
('saint-agnes-virgin-and-martyr', $desc$
The Roman General Calendar keeps Saint Agnes on 21 January as an obligatory memorial with red vestments. The celebration presents her as virgin and martyr in one of the most venerable Roman commemorations of the month.

Unlike older Roman usage that also knew a secondary octave remembrance, the current Roman General Calendar keeps only this principal observance. Its obligatory rank gives notable prominence to her witness, and Roman custom continues to associate the day with the blessing of lambs for the pallia of metropolitan archbishops.$desc$),
('saint-vincent-deacon-and-martyr', $desc$
This celebration is assigned in the Roman General Calendar to 22 January as an optional memorial with red vestments. It offers a concise remembrance of Vincent as deacon and martyr within the sequence of January martyr commemorations.

Its optional status is characteristic of the modern Roman sanctoral discipline, which honors Vincent universally while allowing freedom when pastoral or local calendars call for another emphasis. The red color keeps the focus firmly on his witness unto death.$desc$),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', $desc$
The Roman General Calendar observes Saint Francis de Sales on 24 January as an obligatory memorial with white vestments. The modern Roman placement situates him before the feast of the Conversion of Saint Paul and highlights him as bishop, spiritual writer, and Doctor of the Church.

This date differs from older Roman usage that associated him with the day of his burial. In the present calendar the transfer gives him a stable place in late January and supports his continuing pastoral resonance for spiritual direction, writing, and Christian communication.$desc$),
('the-conversion-of-saint-paul-the-apostle', $desc$
In the Roman General Calendar the Conversion of Saint Paul is celebrated on 25 January as a feast with white vestments. The rank of feast gives this observance a prominence above memorials while distinguishing it from the solemnities of the season.

In contemporary Roman Catholic practice the day also marks the customary close of the Week of Prayer for Christian Unity. The Roman General celebration thus joins the biblical account of Paul's conversion with an ecumenical intention that has become pastorally significant in the modern calendar.$desc$),
('saints-timothy-and-titus-bishops', $desc$
The Roman General Calendar keeps Saints Timothy and Titus on 26 January as an obligatory memorial with white vestments. Their shared observance follows immediately after the Conversion of Saint Paul and creates a deliberate sequence from the apostle to his closest collaborators.

This combined memorial is a feature of the present Roman arrangement. By uniting the two bishops on one day, the modern calendar emphasizes apostolic continuity, pastoral ministry, and the fruit of Paul's missionary formation.$desc$),
('saint-angela-merici-virgin', $desc$
This Roman General observance is assigned to 27 January as an optional memorial with white vestments. It presents Angela Merici simply and clearly as virgin and foundress in the latter part of the January sanctoral cycle.

The present date is the result of the modern Roman reform, which placed the memorial nearer the anniversary of her death than older Roman usage had done. Its optional rank accords with the calendar's pastoral selectivity while preserving her universal significance for Christian education.$desc$),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', $desc$
The Roman General Calendar observes Saint Thomas Aquinas on 28 January as an obligatory memorial with white vestments. In the modern Roman rite he is honored as priest and Doctor of the Church with texts that stress both learning and holiness.

This January date reflects the present Roman choice to celebrate him on the day associated with the translation of his relics rather than on the anniversary of his death in March. The transfer allows his memorial to be kept outside Lent and gives him a fixed place in the ordinary sanctoral cycle.$desc$),
('saint-john-bosco-priest', $desc$
In the Roman General Calendar Saint John Bosco is kept on 31 January as an obligatory memorial with white vestments. The observance closes the month with a distinctly pastoral focus on the education and sanctification of the young.

Because the memorial is obligatory, the modern Roman calendar gives broad visibility to his witness and to the Salesian charism that grew from it. The date coincides with the day of his death and has become a widely recognized point of reference in Catholic schools and youth ministry.$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'fr', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('solemnity-of-mary-the-holy-mother-of-god', $desc$
Dans le calendrier romain général, cette célébration est gardée le 1er janvier comme solennité, avec couleur blanche, au jour octave de Noël. L'observance romaine moderne met fortement en valeur le titre de Marie Mère de Dieu tout en conservant, par l'Évangile et par le cadre de l'octave, le mystère de la circoncision et de l'imposition du nom au Seigneur.

Depuis 1968, ce jour est aussi observé comme Journée mondiale de la paix. Premier jour de l'année civile, cette célébration du calendrier romain général donne à l'octave de Noël une tonalité mariale et d'intercession, joignant la contemplation de l'Incarnation à la prière pour la paix entre les peuples.$desc$),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', $desc$
Le calendrier romain général garde cette observance au 2 janvier comme mémoire obligatoire, avec couleur blanche. Il réunit Basile et Grégoire dans une même célébration, présentant ensemble leur amitié et leur témoignage doctrinal dans les jours qui suivent immédiatement l'octave de Noël.

Ce regroupement est un trait caractéristique du calendrier romain moderne, qui a adopté une mémoire commune proche du souvenir traditionnel de la mort de Basile et en résonance avec l'usage oriental. Les textes mettent en relief à la fois le mystère de la Trinité et la fécondité pastorale d'une amitié théologique.$desc$),
('the-most-holy-name-of-jesus', $desc$
Dans le calendrier romain général, le Très Saint Nom de Jésus est observé le 3 janvier comme mémoire facultative avec couleur blanche. Sa place au début de l'année maintient l'attention sur le nom donné à l'enfant Jésus dans le temps de Noël et sur la puissance salvifique de ce Nom.

Après avoir disparu comme célébration universelle distincte lors de la réforme postconciliaire, elle fut rétablie dans le calendrier romain général en 2002. L'observance actuelle conserve ainsi une longue tradition dévotionnelle tout en laissant une marge de choix pastoral par son caractère facultatif.$desc$),
('the-epiphany-of-the-lord', $desc$
Le calendrier romain général célèbre l'Épiphanie du Seigneur le 6 janvier comme solennité du Seigneur avec couleur blanche. Dans de nombreux lieux, des adaptations particulières transfèrent l'observance au dimanche compris entre le 2 et le 8 janvier, mais le texte romain universel garde le 6 janvier comme date normative.

Dans le rite romain moderne, cette célébration compte parmi les principales manifestations du Seigneur durant le temps de Noël. Elle demeure aussi liée à la proclamation traditionnelle de la date de Pâques et sert de charnière entre le cycle de l'octave de Noël et les célébrations qui développent la manifestation du Seigneur dans les jours suivants.$desc$),
('saint-raymond-of-penyafort-priest', $desc$
Cette célébration du calendrier romain général tombe le 7 janvier comme mémoire facultative avec couleur blanche. Elle honore Raymond comme prêtre et canoniste dans une observance brève placée immédiatement après l'Épiphanie.

Le calendrier romain postérieur à 1969 a déplacé la mémoire depuis son ancienne date de janvier vers un jour plus proche de sa mort. Son rang facultatif reflète la distribution plus sélective des fêtes de saints dans le calendrier moderne, tout en conservant son importance pour les confesseurs, les canonistes et ceux qui servent le gouvernement ecclésial.$desc$),
('saint-hilary-bishop-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, saint Hilaire est observé le 13 janvier comme mémoire facultative avec couleur blanche. Les textes romains le présentent avant tout comme évêque et docteur de l'Église, en soulignant son témoignage doctrinal au début du temps ordinaire.

Le calendrier actuel a maintenu une observance de janvier proche du souvenir traditionnel de sa mort, tout en simplifiant les usages plus anciens autour de sa fête. Son caractère facultatif laisse une certaine souplesse pastorale, mais la journée demeure une notable commémoration romaine de la doctrine trinitaire et du courage épiscopal.$desc$),
('saint-anthony-abbot', $desc$
Le calendrier romain général garde saint Antoine le 17 janvier comme mémoire obligatoire avec couleur blanche. Son observance est l'un des points fixes du mois de janvier et donne très tôt au sanctoral romain une tonalité monastique.

Parce que la mémoire est obligatoire, le rite romain moderne donne une large place au témoignage d'Antoine comme père des moines. Dans de nombreux lieux de pratique catholique romaine, des coutumes populaires liées à la bénédiction des animaux et à son intercession pour la vie rurale se rattachent encore à cette date.$desc$),
('saint-fabian-pope-and-martyr', $desc$
Cette observance du calendrier romain général est gardée le 20 janvier comme mémoire facultative avec couleur rouge. Saint Fabien partage la date avec saint Sébastien, et chacun peut être commémoré distinctement selon les rubriques du calendrier romain moderne.

Le rang facultatif traduit la retenue du calendrier actuel dans la multiplication des mémoires obligatoires, tandis que la couleur rouge souligne son martyre. La date commune conserve une ancienne association romaine sans fusionner les deux saints en une seule fête.$desc$),
('saint-sebastian-martyr', $desc$
Dans le calendrier romain général, saint Sébastien est observé le 20 janvier comme mémoire facultative avec couleur rouge, en partageant le jour avec saint Fabien. Les livres romains modernes permettent son souvenir à cette même date tout en maintenant son identité propre et ses textes distincts.

Cette disposition conserve la force du culte romain de Sébastien tout en laissant l'observance au rang facultatif. La journée garde souvent une résonance dévotionnelle dans les communautés qui l'invoquent dans la maladie ou dans la prière pour la fermeté au milieu de l'épreuve.$desc$),
('saint-agnes-virgin-and-martyr', $desc$
Le calendrier romain général garde sainte Agnès le 21 janvier comme mémoire obligatoire avec couleur rouge. La célébration la présente comme vierge et martyre dans l'une des commémorations romaines les plus vénérables du mois.

Contrairement à l'ancien usage romain, qui connaissait aussi un souvenir octaval secondaire, le calendrier romain général actuel ne garde que cette observance principale. Son rang obligatoire donne un relief notable à son témoignage, et la coutume romaine continue d'associer ce jour à la bénédiction des agneaux destinés aux palliums des archevêques métropolitains.$desc$),
('saint-vincent-deacon-and-martyr', $desc$
Cette célébration est assignée dans le calendrier romain général au 22 janvier comme mémoire facultative avec couleur rouge. Elle offre un souvenir sobre de Vincent comme diacre et martyr dans la suite des commémorations martyriales de janvier.

Son statut facultatif est caractéristique de la discipline moderne du sanctoral romain, qui honore Vincent universellement tout en laissant une liberté lorsque le calendrier pastoral ou local appelle un autre accent. La couleur rouge maintient clairement l'attention sur son témoignage jusqu'à la mort.$desc$),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', $desc$
Le calendrier romain général observe saint François de Sales le 24 janvier comme mémoire obligatoire avec couleur blanche. Le placement romain moderne le situe avant la fête de la Conversion de saint Paul et le met en valeur comme évêque, écrivain spirituel et docteur de l'Église.

Cette date diffère de l'ancien usage romain qui le rattachait au jour de sa sépulture. Dans le calendrier actuel, ce transfert lui donne une place stable à la fin de janvier et soutient sa résonance pastorale durable pour la direction spirituelle, l'écriture et la communication chrétienne.$desc$),
('the-conversion-of-saint-paul-the-apostle', $desc$
Dans le calendrier romain général, la Conversion de saint Paul est célébrée le 25 janvier comme fête avec couleur blanche. Le rang de fête donne à cette observance une importance supérieure à celle des mémoires, tout en la distinguant des solennités du temps.

Dans la pratique catholique romaine contemporaine, ce jour marque aussi habituellement la clôture de la Semaine de prière pour l'unité des chrétiens. La célébration du calendrier romain général unit ainsi le récit biblique de la conversion de Paul à une intention œcuménique devenue pastoralement significative dans le calendrier moderne.$desc$),
('saints-timothy-and-titus-bishops', $desc$
Le calendrier romain général garde les saints Timothée et Tite le 26 janvier comme mémoire obligatoire avec couleur blanche. Leur observance commune suit immédiatement la Conversion de saint Paul et crée une séquence voulue allant de l'apôtre à ses plus proches collaborateurs.

Cette mémoire réunie est un trait de l'organisation romaine actuelle. En associant les deux évêques en un seul jour, le calendrier moderne met en valeur la continuité apostolique, le ministère pastoral et le fruit de la formation missionnaire de Paul.$desc$),
('saint-angela-merici-virgin', $desc$
Cette observance du calendrier romain général est assignée au 27 janvier comme mémoire facultative avec couleur blanche. Elle présente simplement et clairement Angèle Merici comme vierge et fondatrice dans la seconde partie du cycle des saints de janvier.

La date actuelle résulte de la réforme romaine moderne, qui a placé la mémoire plus près de l'anniversaire de sa mort que ne le faisait l'usage romain antérieur. Son rang facultatif correspond à la sélectivité pastorale du calendrier tout en conservant sa portée universelle pour l'éducation chrétienne.$desc$),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', $desc$
Le calendrier romain général observe saint Thomas d'Aquin le 28 janvier comme mémoire obligatoire avec couleur blanche. Dans le rite romain moderne, il est honoré comme prêtre et docteur de l'Église à travers des textes qui soulignent à la fois la science et la sainteté.

Cette date de janvier correspond au choix actuel du calendrier romain de le célébrer au jour lié à la translation de ses reliques plutôt qu'à l'anniversaire de sa mort en mars. Ce transfert permet de garder sa mémoire hors du Carême et lui donne une place fixe dans le sanctoral ordinaire.$desc$),
('saint-john-bosco-priest', $desc$
Dans le calendrier romain général, saint Jean Bosco est gardé le 31 janvier comme mémoire obligatoire avec couleur blanche. L'observance clôt le mois sur un accent nettement pastoral tourné vers l'éducation et la sanctification de la jeunesse.

Parce que la mémoire est obligatoire, le calendrier romain moderne donne une grande visibilité à son témoignage et au charisme salésien qui en est issu. La date coïncide avec le jour de sa mort et constitue un repère largement reconnu dans les écoles catholiques et la pastorale des jeunes.$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'la', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('solemnity-of-mary-the-holy-mother-of-god', $desc$
In Calendario Romano Generali haec celebratio die 1 Ianuarii agitur ut Sollemnitas colore albo, in octava Nativitatis Domini. Observantia Romana hodierna titulum Mariae ut Dei Genetricis vehementer illustrat, servato tamen per Evangelium et rationem octavae mysterio circumcisionis et impositionis nominis Domini.

Ab anno 1968 idem dies etiam uti Dies Mundialis Pacis celebratur. Quia initium anni civilis est, haec celebratio Romani Generalis octavae Nativitatis notam Marianam et intercessoriam tribuit, contemplationem Incarnationis cum oratione pro pace inter populos coniungens.$desc$),
('saints-basil-the-great-and-gregory-nazianzen-bishops-and-doctors-of-the-church', $desc$
Calendarium Romanum Generale hanc observantiam die 2 Ianuarii servat ut memoria obligatoria colore albo. Basilium et Gregorium in una celebratione coniungit, amicitiam eorum atque testimonium doctrinale simul in diebus proxime post octavam Nativitatis proponens.

Haec coniunctio proprium quiddam est calendarii Romani recentioris, quod memoriam communem recepit prope traditum recordationis tempus mortis Basilii et in consonantia cum more orientali. Textus simul mysterium Trinitatis et pastoralem fructum amicitiae theologicae extollunt.$desc$),
('the-most-holy-name-of-jesus', $desc$
In Calendario Romano Generali Sanctissimum Nomen Iesu die 3 Ianuarii colitur ut memoria ad libitum colore albo. Locus eius in initio anni attentionem retinet ad nomen puero Iesu impositum intra tempus Nativitatis atque ad virtutem salutarem huius Nominis.

Postquam ut distincta observantia universalis in reformatione postconciliari abolita erat, anno 2002 in Calendarium Romanum Generale restituta est. Celebratio igitur hodierna longam traditionem devotionalem servat, simul ob indolem facultativam electioni pastorali spatium relinquens.$desc$),
('the-epiphany-of-the-lord', $desc$
Calendarium Romanum Generale Epiphaniam Domini die 6 Ianuarii celebrat ut Sollemnitatem Domini colore albo. In multis locis adaptationes particulares observantiam ad dominicam inter diem 2 et 8 Ianuarii transferunt, sed textus Romanus universalis diem 6 Ianuarii tamquam normativum retinet.

In ritu Romano hodierno haec celebratio inter praecipuas Domini manifestationes temporis Nativitatis stat. Cum traditionali quoque denuntiatione diei Paschatis coniungitur et quasi cardo fungitur inter cyclum octavae Nativitatis et celebrationes quae manifestationem Domini in sequentibus diebus explicant.$desc$),
('saint-raymond-of-penyafort-priest', $desc$
Haec celebratio Romani Generalis die 7 Ianuarii occurrit ut memoria ad libitum colore albo. Raymundum ut presbyterum et canonistam honorat in observantia brevi statim post Epiphaniam posita.

Calendarium Romanum post annum 1969 memoriam a vetere die Ianuarii ad tempus morti eius propius transtulit. Eius gradus facultativus selectiorem distributionem festorum sanctorum in calendario moderno refert, servata tamen eius gravitate pro confessariis, canonistis et iis qui regimini ecclesiali deserviunt.$desc$),
('saint-hilary-bishop-and-doctor-of-the-church', $desc$
In Calendario Romano Generali sanctus Hilarius die 13 Ianuarii agitur ut memoria ad libitum colore albo. Textus Romani eum praecipue exhibent ut episcopum et Ecclesiae Doctorem, testimonium eius doctrinale ineunte Tempore per Annum illustrantes.

Calendarium praesens observantiam Ianuariam prope traditionale mortis eius memoriale retinuit, veteres autem consuetudines circa festum simpliciores reddidit. Indoles facultativa spatium pastorale relinquit, dies tamen manet notabilis commemoratio Romana doctrinae trinitariae et fortitudinis episcopalis.$desc$),
('saint-anthony-abbot', $desc$
Calendarium Romanum Generale sanctum Antonium die 17 Ianuarii servat ut memoria obligatoria colore albo. Eius observantia inter stabilia Ianuarii signa numeratur atque sanctorali Romano mature notam monasticam tribuit.

Quia memoria obligatoria est, ritus Romanus recentior latiorem eminentiam testimonio Antonii tamquam patris monachorum concedit. Consuetudines populares de benedictione animalium et de intercessione pro vita rustica circa hunc diem in multis locis practicae catholicae Romanae adhuc coalescunt.$desc$),
('saint-fabian-pope-and-martyr', $desc$
Haec observantia Romani Generalis die 20 Ianuarii servatur ut memoria ad libitum colore rubro. Sanctus Fabianus eandem diem cum sancto Sebastiano participat, et uterque seorsum commemorari potest iuxta rubricas calendarii Romani moderni.

Gradus facultativus moderationem calendarii praesentis in multiplicandis memoriis obligatoriis exprimit, dum color ruber Fabiani martyrium in lucem ponit. Dies communis antiquam associationem Romanam conservat sine utriusque sancti in unum festum conflatione.$desc$),
('saint-sebastian-martyr', $desc$
In Calendario Romano Generali sanctus Sebastianus die 20 Ianuarii observatur ut memoria ad libitum colore rubro, diem cum sancto Fabiano communicans. Libri Romani hodierni eius recordationem eadem data admittunt, identitate tamen et textibus propriis servatis.

Haec dispositio valentem cultum Romanum Sebastiani conservat, observantia tamen gradu facultativo manente. Dies saepe peculiarem resonantiam devotionalem habet in communitatibus quae eum in infirmitate vel in oratione pro constantia sub probatione invocant.$desc$),
('saint-agnes-virgin-and-martyr', $desc$
Calendarium Romanum Generale sanctam Agnetem die 21 Ianuarii servat ut memoria obligatoria colore rubro. Celebratio eam ut virginem et martyrem proponit in una ex venerabilissimis commemorationibus Romanis mensis.

Secus ac vetus usus Romanus, qui etiam memoriam octavalem secundariam noverat, praesens Calendarium Romanum Generale hanc solam observantiam principalem retinet. Gradus huius memoriae obligatoriae testimonio eius insignem eminentiam tribuit, et mos Romanus adhuc hunc diem cum benedictione agnorum ad pallia archiepiscoporum metropolitanorum destinatorum coniungit.$desc$),
('saint-vincent-deacon-and-martyr', $desc$
Haec celebratio in Calendario Romano Generali die 22 Ianuarii attribuitur ut memoria ad libitum colore rubro. Sobriam Vincentii ut diaconi et martyris commemorationem praebet intra seriem recordationum martyrum mensis Ianuarii.

Status eius facultativus disciplinam hodiernam sanctoralis Romani bene exprimit, quae Vincentium universaliter honorat, libertate tamen relicta cum pastoralis vel localis calendarii ratio alium accentum postulat. Color ruber attentionem in testimonium eius usque ad mortem firmiter collocat.$desc$),
('saint-francis-de-sales-bishop-and-doctor-of-the-church', $desc$
Calendarium Romanum Generale sanctum Franciscum Salesium die 24 Ianuarii observat ut memoria obligatoria colore albo. Collocatio Romana hodierna eum ante festum Conversionis Sancti Pauli sistit atque ut episcopum, scriptorem spiritualem et Ecclesiae Doctorem illustrat.

Haec data differt a vetere usu Romano qui eum diei sepulturae eius iungebat. In calendario praesenti translatio locum stabilem in exeunte Ianuario ei tribuit atque permanentem eius vim pastoralem in directione spirituali, scriptione et communicatione christiana sustinet.$desc$),
('the-conversion-of-saint-paul-the-apostle', $desc$
In Calendario Romano Generali Conversio Sancti Pauli die 25 Ianuarii celebratur ut festum colore albo. Gradus festi hanc observantiam supra memorias extollit, eam tamen a sollemnitatibus temporis distinguit.

In usu catholico Romano hodierno idem dies finem consuetum Hebdomadae Orationis pro Unitate Christianorum etiam notat. Celebratio igitur Romani Generalis narrationem biblicam conversionis Pauli cum intentione oecumenica coniungit, quae in calendario moderno momentum pastorale obtinuit.$desc$),
('saints-timothy-and-titus-bishops', $desc$
Calendarium Romanum Generale sanctos Timotheum et Titum die 26 Ianuarii servat ut memoria obligatoria colore albo. Observantia eorum communis statim post Conversionem Sancti Pauli sequitur et seriem deliberatam efficit ab apostolo ad proximos eius cooperatores procedentem.

Haec memoria coniuncta propria est ordinationis Romanae praesentis. Dum duos episcopos uno die sociat, calendarium modernum continuitatem apostolicam, ministerium pastorale et fructum formationis missionariae Pauli extollit.$desc$),
('saint-angela-merici-virgin', $desc$
Haec observantia Romani Generalis die 27 Ianuarii assignatur ut memoria ad libitum colore albo. Angelam Merici simpliciter ac perspicue tamquam virginem et fundatricem in altera parte cycli Ianuarii sanctorum proponit.

Data praesens ex moderna reformatione Romana orta est, quae memoriam ad anniversarium mortis eius propius collocavit quam vetus usus Romanus. Gradus facultativus selectivitati pastorali calendarii respondet, servata tamen eius universali significatione pro educatione christiana.$desc$),
('saint-thomas-aquinas-priest-and-doctor-of-the-church', $desc$
Calendarium Romanum Generale sanctum Thomam Aquinatem die 28 Ianuarii observat ut memoria obligatoria colore albo. In ritu Romano hodierno honoratur ut presbyter et Ecclesiae Doctor textibus quae simul doctrinam et sanctitatem efferunt.

Haec data Ianuaria respondet electioni praesentis calendarii Romani, quod eum die translationi reliquiarum eius conexo celebrare mavult quam anniversario mortis mense Martio. Haec translatio efficit ut memoria eius extra Quadragesimam servari possit atque ei locum fixum in communi sanctorali tribuit.$desc$),
('saint-john-bosco-priest', $desc$
In Calendario Romano Generali sanctus Ioannes Bosco die 31 Ianuarii servatur ut memoria obligatoria colore albo. Observantia mensem claudit accentu plane pastorali ad educationem et sanctificationem iuvenum directo.

Quia memoria obligatoria est, calendarium Romanum modernum latiorem visibilitatem testimonio eius et charismati Salesiano ex eo orto tribuit. Data cum die mortis eius coincidit et late agnoscitur in scholis catholicis atque in ministerio iuvenili.$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('the-baptism-of-the-lord', $desc$
In the Roman General Calendar the Baptism of the Lord is celebrated as a Feast of the Lord with white vestments on the Sunday after 6 January, or on the following Monday where Epiphany is transferred. It marks the liturgical close of the Christmas season in the modern Roman rite.

The present Roman arrangement gives the Jordan event a distinct celebration rather than leaving it only as an Epiphany motif. By placing it immediately before the resumption of Ordinary Time, the calendar underscores it as the threshold from the Lord's hidden life to his public ministry.$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'fr', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('the-baptism-of-the-lord', $desc$
Dans le calendrier romain général, le Baptême du Seigneur est célébré comme fête du Seigneur, avec couleur blanche, le dimanche après le 6 janvier, ou le lundi suivant lorsque l'Épiphanie est transférée. Il marque dans le rite romain moderne la clôture liturgique du temps de Noël.

L'organisation romaine actuelle donne à l'événement du Jourdain une célébration distincte au lieu de le laisser seulement comme motif de l'Épiphanie. En le plaçant immédiatement avant la reprise du temps ordinaire, le calendrier le souligne comme seuil entre la vie cachée du Seigneur et son ministère public.$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'la', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('the-baptism-of-the-lord', $desc$
In Calendario Romano Generali Baptisma Domini celebratur ut Festum Domini colore albo dominica post diem 6 Ianuarii, vel feria secunda sequenti ubi Epiphania transfertur. In ritu Romano hodierno finem liturgicum temporis Nativitatis constituit.

Ordinatio Romana praesens eventui Iordanico celebrationem propriam tribuit nec eum tantum ut argumentum Epiphaniae relinquit. Eum statim ante resumptum Tempus per Annum collocando, calendarium illum quasi limen ostendit inter vitam absconditam Domini et ministerium eius publicum.$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;


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
This feast commemorates Mary and Joseph bringing the infant Jesus to the Temple and offering him to the Lord according to the law, where Simeon and Anna recognize in him the promised salvation of Israel and the light of the nations. It contemplates the meeting of the Incarnate Word with the worship of the old covenant and the humble obedience of the Holy Family.

Theologically, the feast unites the mysteries of Incarnation, manifestation, and sacrifice. The child carried into the sanctuary is the firstborn consecrated to God, yet he is also the Lord who comes to his Temple. Simeon's prophecy already joins glory to contradiction, and Mary's future share in her Son's redemptive suffering is foreshadowed.

The observance is attested in Jerusalem by late antiquity and spread widely through East and West; the blessing and procession of candles gave rise to the popular name Candlemas, while older Western usage also linked the day with Mary's purification. These historical forms all express the same central mystery: Christ revealed as light, offering, and fulfillment.

For Christian life, the feast invites the faithful to present themselves anew to God in union with Christ and to receive from him the light that guides ordinary discipleship. It speaks of patient hope, hidden fidelity, and consecrated self-offering, teaching the Church to recognize God's visitation under humble signs.
$desc$),
('saint-blaise-bishop-and-martyr', 'Saint Blaise, Bishop and Martyr', $desc$
This feast honors Saint Blaise as a bishop and martyr whose memory has long joined pastoral fidelity with the Church's prayer for healing. His cult became especially beloved through the blessing of throats, a custom that keeps before the faithful the conviction that the martyrs' intercession reaches the concrete frailty of daily life.

The feast celebrates steadfast faith under persecution. In Blaise the Church venerates a shepherd who remained faithful to Christ unto death and who came to symbolize compassionate care for the suffering. The crossed candles used in the traditional blessing recall both the light of faith and the Church's maternal solicitude for body and soul together.

Devotion to Blaise, bishop of Sebaste in Armenia, spread from the Christian East into the medieval West, where he was counted among the Fourteen Holy Helpers and widely invoked against illness. The associated blessing became one of the most enduring examples of liturgy nourishing popular piety.

Today the feast reminds believers that Christian worship does not ignore human weakness but places it confidently before God. Through Blaise's memory, the faithful are encouraged to seek healing with faith, endure suffering with hope, and unite care for bodily life with the deeper desire for holiness.
$desc$),
('saint-ansgar-bishop', 'Saint Ansgar, Bishop', $desc$
This feast commemorates Saint Ansgar, the missionary bishop traditionally called the Apostle of the North, whose life was spent carrying the Gospel to lands where the Church was still fragile and newly planted. His memory honors the patient labor by which Christian faith takes root among peoples who have not yet fully received it.

The theological center of the feast is the Church's missionary vocation. Ansgar's life shows that evangelization demands perseverance, humility, and confidence in grace even when visible results are few. His episcopal ministry extended beyond the care of an established flock to the founding and strengthening of communities.

A Benedictine monk who became archbishop of Hamburg-Bremen, Ansgar was entrusted with the evangelization of Scandinavia in the ninth century. His efforts met reversals and political upheaval, yet later generations recognized in him a foundational witness to the Christianization of Northern Europe.

For the Church today, Ansgar stands as a sign that missionary work is measured not only by immediate success but by fidelity. He encourages pastors, catechists, and all who labor in difficult fields to persevere when the fruit remains hidden.
$desc$),
('saint-agatha-virgin-and-martyr', 'Saint Agatha, Virgin and Martyr', $desc$
The feast of Saint Agatha commemorates one of the most revered virgin-martyrs of ancient Christianity. Her name in the Roman Canon witnesses to the depth and antiquity of her veneration, and her memory continues to present the Church with a shining example of fidelity to Christ maintained through violence, humiliation, and death.

The feast celebrates the integrity of consecrated virginity and the paradox of martyrdom, in which apparent defeat becomes victory through union with the Passion of Christ. Agatha's witness proclaims that assaults upon human dignity cannot extinguish the freedom of one whose life is wholly given to the Lord.

Her cult is attested very early, and she came to be loved especially in Sicily, where her witness remained a living source of civic and ecclesial devotion. The durability of her memory in East and West reflects the Church's enduring esteem for the great women martyrs of the early centuries.

Today Agatha's feast speaks to all who suffer coercion, abuse, or pressure to betray conscience. It offers consecrated persons, young people, and all the faithful a powerful image of courageous purity and spiritual freedom.
$desc$),
('saints-paul-miki-and-companions-martyrs', 'Saints Paul Miki and Companions, Martyrs', $desc$
This feast commemorates the twenty-six martyrs of Nagasaki: priests, religious, and lay faithful, adults and boys, Japanese Christians and foreign missionaries united in one act of witness. Their common remembrance manifests the catholicity of the Church, in which holiness is not confined to one nation, language, or state of life.

Theologically, the feast celebrates martyrdom as the supreme confession of Christ and as a sign that the Gospel truly takes root within every culture. The shared death of Paul Miki and his companions reveals an ecclesial communion stronger than ethnic difference or social distinction.

The martyrs were executed at Nagasaki in 1597 during a violent persecution of Christians in Japan. Their canonization in the nineteenth century gave universal recognition to a witness already treasured by the Church in Asia and made them enduring symbols of missionary martyrdom.

For Christians today, this feast gives courage to communities living under hostility or repression and reminds the wider Church that mission and martyrdom have often advanced together. It is also a school of solidarity that honors the many vocations through which Christ is confessed.
$desc$),
('saint-jerome-emiliani-priest', 'Saint Jerome Emiliani, Priest', $desc$
The feast of Saint Jerome Emiliani honors a priest whose conversion bore fruit in generous service to orphans, abandoned children, and the poor. His memory celebrates charity organized not merely as private compassion but as a stable and enduring form of Christian discipleship.

At the heart of the feast are the corporal and spiritual works of mercy. Jerome saw in neglected children the face of Christ and responded with fatherly tenderness, practical wisdom, and institutional care. His example teaches that authentic Christian charity protects dignity and creates structures in which the forgotten can flourish.

In sixteenth-century northern Italy, amid war, famine, and plague, Jerome founded the community that became the Clerics Regular of Somasca. His work left a lasting mark on the Church's service to youth, and he came to be regarded in a special way as a patron of orphans and abandoned children.

Today his feast calls the faithful to defend children who are poor, displaced, neglected, or left without stable care. It also reminds the Church that works of mercy belong to the heart of evangelization.
$desc$),
('saint-josephine-bakhita-virgin', 'Saint Josephine Bakhita, Virgin', $desc$
This feast commemorates Saint Josephine Bakhita, a woman whose life passed from slavery and humiliation into the freedom of baptism and consecrated life. Her memory has become a luminous sign of the inviolable dignity of the human person and of grace's power to heal what violence seeks to destroy.

Theologically, the feast celebrates redemption as liberation in Christ. Bakhita's story shows that the deepest identity of the human person does not lie in wounds inflicted by others but in the love of God that recreates and calls each soul by name. Her religious consecration reveals freedom as joyful belonging to the Lord.

Born in what is now Sudan, sold repeatedly into slavery, and eventually brought to Italy, Bakhita embraced the Christian faith and entered the Canossian Daughters of Charity. Her canonization made her witness known throughout the world, especially as a voice against slavery, trafficking, and exploitation.

For the Church today, Bakhita stands beside all who suffer degradation, displacement, and coercion. She teaches that mercy does not erase history but transfigures it, and she inspires prayer and action for those still trapped in systems of violence.
$desc$),
('saint-scholastica-virgin', 'Saint Scholastica, Virgin', $desc$
The feast of Saint Scholastica honors a consecrated woman remembered as a mother within the Benedictine tradition and as a witness to the fruitfulness of women's monastic life. Her memory celebrates holiness formed through prayer, stability, charity, and the common search for God.

Theologically, the feast lifts up consecrated virginity lived in community. Scholastica represents a life ordered wholly toward divine friendship, where obedience, silence, and fraternal charity become the setting for contemplation. The traditional memory of her final meeting with Benedict especially highlights the primacy of love.

Her cult grew within the Benedictine family and then throughout the Western Church as monasticism shaped Christian civilization. The Church has long revered her as an enduring symbol of holy women who built communities of prayer beside the great monasteries of men.

Today Scholastica's feast encourages contemplative life, especially among women, and reminds all the faithful that charity and prayer are never opposed. In a restless age, her witness proposes stability of heart and persevering friendship with God.
$desc$),
('our-lady-of-lourdes', 'Our Lady of Lourdes', $desc$
This feast commemorates Our Lady of Lourdes and the Marian apparitions associated with the grotto of Massabielle in 1858, events recognized by the Church as worthy of belief and fruitful for devotion. It honors Mary's maternal solicitude for the pilgrim Church and the conversion, prayer, and penance long linked with Lourdes.

Theologically, the feast belongs within the wider mystery of Mary's intercession. The Mother of the Lord leads the faithful more deeply to Christ through repentance, trust, and perseverance amid suffering. Lourdes has become associated not only with prayer for bodily healing but also with spiritual healing through reconciliation and renewed hope.

After ecclesiastical approval, devotion to Lourdes spread rapidly and the shrine became one of the most important pilgrimage sites of the modern Catholic world. The humble figure of Bernadette Soubirous and the repeated call to penance gave this devotion a strongly evangelical character.

For believers today, the feast is a school of hope for the sick, the poor, and all who carry hidden wounds. It teaches confidence in Mary's care while insisting that authentic Marian devotion always leads to deeper faith, prayer, and conversion.
$desc$),
('saints-cyril-monk-and-methodius-bishop', 'Saints Cyril, Monk, and Methodius, Bishop', $desc$
This feast honors Saints Cyril and Methodius, brothers whose apostolic work among the Slavic peoples made them enduring witnesses to the Church's missionary creativity and catholic unity. Their shared memory reflects the inseparability of their labor as monk-scholar and bishop-pastor.

Theologically, the feast celebrates inculturation rightly understood. By devising an alphabet and translating biblical and liturgical texts, Cyril and Methodius showed that the one faith can take flesh in many languages without losing its unity. Their work reveals the evangelical dignity of vernacular expression.

Sent from Byzantium to Great Moravia in the ninth century, they labored amid tensions between East and West yet remained striking figures of communion. Rome approved their mission and their Slavonic liturgy, and later generations honored them as apostles of the Slavs.

Today their feast speaks powerfully wherever the Church seeks to proclaim Christ across cultural boundaries. It encourages translators, missionaries, catechists, and all who serve unity without uniformity.
$desc$),
('the-seven-holy-founders-of-the-servite-order', 'The Seven Holy Founders of the Servite Order', $desc$
This feast commemorates the seven holy founders of the Servite Order, remembered together because their sanctity was lived in common. Their shared witness honors a form of discipleship in which friendship, penance, prayer, and devotion to the Mother of God became the seed of a new religious family.

The theological center of the feast is contemplation of Christ through the sorrows of Mary. The founders embraced a life shaped by compassion for the suffering of the Lord and his Mother, showing that Marian devotion, when rightly lived, draws souls into deeper conformity to the Passion.

These Florentine laymen renounced wealth and public standing in the thirteenth century to live a life of prayer and penance that gave birth to the Order of the Servants of Mary. Their collective canonization later underscored the distinctive character of their witness.

For the Church today, the feast proposes fraternity and shared conversion as genuine paths of sanctity. It also nourishes devotion to Our Lady of Sorrows by linking contemplation with service and renunciation.
$desc$),
('saint-peter-damian-bishop-and-doctor-of-the-church', 'Saint Peter Damian, Bishop and Doctor of the Church', $desc$
The feast of Saint Peter Damian honors a monk, bishop, and Doctor of the Church whose life joined love of truth to deep concern for the holiness of the clergy and the reform of ecclesial life. His memory keeps before the Church the demanding union of contemplation, doctrine, and courageous correction.

Theologically, the feast celebrates reform born of conversion rather than mere administration. Peter Damian insisted that doctrine, discipline, and personal sanctity cannot be separated without harm to the whole Body of Christ. His witness shows that the Church is renewed by fidelity to prayer, asceticism, truth, and charity.

A Camaldolese monk who later became cardinal bishop of Ostia, Peter Damian played a major role in the eleventh-century reform movement and left a substantial body of theological and spiritual writing. Later recognition of him as a Doctor of the Church acknowledged the enduring value of his witness.

Today his feast invites Christians to pray for the purification of the Church and for leaders capable of holiness as well as wisdom. He remains a powerful patron for all who must speak truth within ecclesial life.
$desc$),
('the-chair-of-saint-peter-the-apostle', 'The Chair of Saint Peter the Apostle', $desc$
This feast honors the chair of Saint Peter as the symbol of the apostle's teaching and pastoral office within the Church. Rather than recalling a single episode from Peter's life, it celebrates the enduring ministry of unity and apostolic authority entrusted to him by Christ for the strengthening of his brethren.

Theologically, the chair signifies stability in the apostolic faith. The feast contemplates the Petrine office as a service to communion, doctrine, and pastoral governance, not as private privilege. In honoring Peter's chair, the Church confesses that Christ continues to care for his flock through an office ordered to preserving believers in the truth.

Ancient Roman tradition already knew commemorations associated with Peter's cathedra, and over time the feast came to embody both historical memory and theological reflection on the succession of bishops in the apostolic sees. The artistic expression of the Cathedra Petri further fixed this image in Catholic imagination.

For Christian life, the feast is an invitation to pray for the pope and for the Church's fidelity to the apostolic faith. It also reminds the faithful that authority in the Church is meant for service, confirmation, and unity.
$desc$),
('saint-polycarp-bishop-and-martyr', 'Saint Polycarp, Bishop and Martyr', $desc$
The feast of Saint Polycarp honors a bishop of the apostolic age whose martyrdom is preserved in one of the earliest surviving Christian accounts outside the New Testament. His memory stands close to the sources of the Church's life and shows how the faith of the apostles was handed on in witness as well as in teaching.

Theologically, the feast celebrates continuity between apostolic doctrine and episcopal fidelity. Polycarp's witness reveals a pastor who guarded the faith he had received and sealed it with his blood. In him the Church venerates both the serenity of old age offered to God and the courage by which a shepherd refuses to deny Christ.

As bishop of Smyrna and, according to ancient tradition, a disciple of the Apostle John, Polycarp occupies a unique place between the New Testament generation and the developing Church of the second century. The Martyrdom of Polycarp shaped later Christian reflection on martyrdom.

Today the feast reminds believers that Christian tradition is living and personal, not merely textual. It encourages pastors to guard the faith with meekness and firmness and strengthens all who face pressure to compromise.
$desc$),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 'Saint Gregory of Narek, Abbot and Doctor of the Church', $desc$
The feast of Saint Gregory of Narek honors the Armenian monk and mystical writer whose prayerful teaching has become a treasure for Christians far beyond his own tradition. His memory reveals the depth of the Church's esteem for sanctity expressed in the Christian East and for the language of repentance transfigured into praise.

Theologically, the feast centers on divine mercy sought by a soul that knows both its sin and its hope. Gregory's Book of Lamentations gives voice to a penitence that is intensely personal yet fully ecclesial, teaching that contrition and confidence belong together before God.

Living in the monastery of Narek in the tenth century, Gregory composed biblical, theological, and liturgical works that shaped Armenian spirituality for generations. Later recognition of him as a Doctor of the Church highlighted both the universality and the ecumenical significance of his witness.

For the faithful today, Gregory offers words for prayer in times of shame, struggle, and longing for mercy. He also reminds the wider Church that spiritual riches are received from many traditions within historic Christianity.
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
Cette fête commémore la présentation de l'Enfant Jésus au Temple par Marie et Joseph et son offrande au Seigneur selon la Loi, lorsque Syméon et Anne reconnaissent en lui le salut attendu d'Israël et la lumière des nations. Elle contemple la rencontre du Verbe incarné avec le culte de l'ancienne Alliance et l'obéissance humble de la Sainte Famille.

Sur le plan théologique, la fête unit les mystères de l'Incarnation, de la manifestation et de l'offrande. L'enfant porté dans le sanctuaire est le premier-né consacré à Dieu, mais il est aussi le Seigneur qui vient à son Temple. La prophétie de Syméon associe déjà gloire et contradiction, tandis que la participation future de Marie à la souffrance rédemptrice de son Fils est annoncée d'avance.

La célébration est attestée dès l'Antiquité à Jérusalem et s'est largement répandue en Orient et en Occident ; la bénédiction et la procession des cierges lui ont donné le nom populaire de Chandeleur, tandis qu'un ancien usage occidental la reliait aussi à la purification de Marie. Toutes ces formes historiques expriment un même mystère central : le Christ révélé comme lumière, offrande et accomplissement.

Pour la vie chrétienne, cette fête invite les fidèles à se présenter eux-mêmes à Dieu en union avec le Christ et à recevoir de lui la lumière qui guide la fidélité quotidienne. Elle parle d'espérance patiente, d'offrande de soi et de sainteté vécue dans l'obéissance cachée.
$desc$),
('saint-blaise-bishop-and-martyr', 'Saint Blaise, évêque et martyr', $desc$
Cette fête honore saint Blaise comme évêque et martyr, dont la mémoire unit depuis longtemps la fidélité pastorale à la prière de l'Église pour la guérison. Son culte est devenu particulièrement aimé à travers la bénédiction des gorges, coutume qui rappelle que l'intercession des martyrs rejoint la fragilité concrète de la vie quotidienne.

La fête célèbre avant tout la fermeté de la foi au temps de la persécution. En Blaise, l'Église vénère un pasteur demeuré fidèle au Christ jusqu'à la mort et devenu signe de compassion pour les souffrants. Les cierges croisés de la bénédiction traditionnelle évoquent à la fois la lumière de la foi et la sollicitude maternelle de l'Église pour la personne tout entière.

La dévotion à Blaise, évêque de Sébaste en Arménie, se répandit de l'Orient chrétien vers l'Occident médiéval, où il fut compté parmi les Quatorze Saints Auxiliaires et largement invoqué contre la maladie. La bénédiction qui lui est associée demeure l'un des exemples les plus durables du lien entre liturgie et piété populaire.

Aujourd'hui, cette fête rappelle que le culte chrétien n'ignore pas la faiblesse humaine mais la présente avec confiance devant Dieu. Par la mémoire de Blaise, les fidèles sont encouragés à demander la guérison avec foi, à supporter l'épreuve avec espérance et à unir le souci du corps au désir plus profond de la sainteté.
$desc$),
('saint-ansgar-bishop', 'Saint Anschaire, évêque', $desc$
Cette fête commémore saint Anschaire, l'évêque missionnaire traditionnellement appelé l'Apôtre du Nord, dont la vie fut dépensée à porter l'Évangile vers des terres où l'Église demeurait fragile et naissante. Sa mémoire honore le labeur patient par lequel la foi chrétienne prend racine parmi des peuples qui ne l'ont pas encore pleinement reçue.

Le centre théologique de la fête est la vocation missionnaire de l'Église. La vie d'Anschaire montre que l'évangélisation exige persévérance, humilité et confiance dans la grâce, même lorsque les résultats visibles sont maigres. Son ministère épiscopal dépassa le soin d'un troupeau déjà établi pour fonder et fortifier des communautés.

Moine bénédictin devenu archevêque de Hambourg-Brême, Anschaire reçut la charge d'évangéliser la Scandinavie au IXe siècle. Ses efforts furent marqués par les revers et les troubles politiques, mais les générations suivantes reconnurent en lui un témoin fondateur de la christianisation de l'Europe du Nord.

Pour l'Église d'aujourd'hui, Anschaire demeure le signe que l'œuvre missionnaire ne se mesure pas seulement aux succès immédiats, mais à la fidélité. Il encourage les pasteurs, les catéchistes et tous ceux qui travaillent dans des terrains difficiles à persévérer lorsque le fruit reste caché.
$desc$),
('saint-agatha-virgin-and-martyr', 'Sainte Agathe, vierge et martyre', $desc$
La fête de sainte Agathe commémore l'une des vierges-martyres les plus vénérées de l'Antiquité chrétienne. Son nom dans le Canon romain témoigne de l'ancienneté de sa vénération, et sa mémoire continue de proposer à l'Église un exemple lumineux de fidélité au Christ maintenue à travers la violence, l'humiliation et la mort.

La fête célèbre l'intégrité de la virginité consacrée et le paradoxe du martyre, où une défaite apparente devient victoire dans l'union à la Passion du Christ. Le témoignage d'Agathe proclame que les atteintes à la dignité humaine ne peuvent éteindre la liberté de celle qui s'est entièrement donnée au Seigneur.

Son culte est attesté très tôt, et elle fut particulièrement aimée en Sicile, où son témoignage demeura une source vivante de dévotion civique et ecclésiale. La permanence de sa mémoire en Orient comme en Occident reflète l'estime durable de l'Église pour les grandes femmes martyres des premiers siècles.

Aujourd'hui, la fête d'Agathe parle à tous ceux qui souffrent de contrainte, d'abus ou de pressions contre leur conscience. Elle offre aux personnes consacrées, aux jeunes et à tous les fidèles une image puissante de pureté courageuse et de liberté spirituelle.
$desc$),
('saints-paul-miki-and-companions-martyrs', 'Saints Paul Miki et ses compagnons, martyrs', $desc$
Cette fête commémore les vingt-six martyrs de Nagasaki : prêtres, religieux et laïcs, adultes et jeunes, chrétiens japonais et missionnaires venus d'ailleurs, unis dans un même témoignage. Leur mémoire commune manifeste la catholicité de l'Église, où la sainteté n'est enfermée ni dans une nation, ni dans une langue, ni dans un seul état de vie.

Sur le plan théologique, la fête célèbre le martyre comme confession suprême du Christ et comme signe que l'Évangile prend réellement racine dans toute culture. La mort partagée de Paul Miki et de ses compagnons révèle une communion ecclésiale plus forte que les différences ethniques ou sociales.

Les martyrs furent exécutés à Nagasaki en 1597 durant une persécution violente contre les chrétiens du Japon. Leur canonisation au XIXe siècle donna une reconnaissance universelle à un témoignage déjà chéri par l'Église en Asie.

Pour les chrétiens d'aujourd'hui, cette fête donne courage aux communautés vivant sous l'hostilité ou la répression et rappelle à l'Église entière que la mission et le martyre ont souvent avancé ensemble. Elle est aussi une école de solidarité qui honore les diverses vocations par lesquelles le Christ est confessé.
$desc$),
('saint-jerome-emiliani-priest', 'Saint Jérôme Emilien, prêtre', $desc$
La fête de saint Jérôme Emilien honore un prêtre dont la conversion a porté du fruit dans un service généreux envers les orphelins, les enfants abandonnés et les pauvres. Sa mémoire célèbre une charité organisée non comme une simple compassion privée, mais comme une forme stable et durable de la vie chrétienne.

Au cœur de la fête se trouvent les œuvres de miséricorde corporelles et spirituelles. Jérôme reconnut dans les enfants délaissés le visage même du Christ et répondit par une tendresse paternelle, une sagesse pratique et des institutions de soin et d'éducation. Son exemple enseigne que la charité chrétienne authentique protège la dignité et crée des structures où les oubliés peuvent vivre et grandir.

Dans l'Italie du Nord du XVIe siècle, au milieu de la guerre, de la famine et de la peste, Jérôme fonda la communauté devenue les Clercs réguliers de Somasque. Son œuvre marqua durablement le service de l'Église envers la jeunesse, et il fut tenu d'une manière particulière pour patron des orphelins et des enfants abandonnés.

Aujourd'hui, sa fête appelle les fidèles à défendre les enfants pauvres, déplacés, négligés ou privés de soutien stable. Elle rappelle aussi que les œuvres de miséricorde appartiennent au cœur même de l'évangélisation.
$desc$),
('saint-josephine-bakhita-virgin', 'Sainte Joséphine Bakhita, vierge', $desc$
Cette fête commémore sainte Joséphine Bakhita, dont la vie est passée de l'esclavage et de l'humiliation à la liberté du baptême et de la vie consacrée. Sa mémoire est devenue un signe lumineux de la dignité inviolable de la personne humaine et de la puissance de la grâce.

Sur le plan théologique, la fête célèbre la rédemption comme libération dans le Christ. L'histoire de Bakhita montre que l'identité la plus profonde de l'être humain ne réside pas dans les blessures infligées par autrui, mais dans l'amour de Dieu qui recrée et appelle chaque âme par son nom. Sa consécration religieuse révèle une liberté de joyeuse appartenance au Seigneur.

Née dans l'actuel Soudan, vendue à plusieurs reprises comme esclave puis conduite en Italie, Bakhita accueillit la foi chrétienne et entra chez les Filles de la Charité canossiennes. Sa canonisation fit connaître son témoignage au monde entier, en particulier comme voix contre l'esclavage, la traite des personnes et l'exploitation.

Pour l'Église d'aujourd'hui, Bakhita se tient auprès de tous ceux qui subissent dégradation, déplacement ou contrainte. Elle enseigne que la miséricorde n'efface pas l'histoire mais la transfigure, et elle inspire la prière et l'action pour ceux qui demeurent prisonniers des systèmes de violence.
$desc$),
('saint-scholastica-virgin', 'Sainte Scholastique, vierge', $desc$
La fête de sainte Scholastique honore une femme consacrée que la tradition bénédictine regarde comme une mère et comme un témoin de la fécondité de la vie monastique féminine. Sa mémoire célèbre une sainteté façonnée par la prière, la stabilité, la charité et la recherche commune de Dieu.

Sur le plan théologique, la fête met en lumière la virginité consacrée vécue en communauté. Scholastique représente une existence entièrement ordonnée à l'amitié divine, où obéissance, silence et charité fraternelle deviennent le lieu de la contemplation. Le souvenir traditionnel de sa dernière rencontre avec Benoît souligne la primauté de l'amour.

Son culte grandit au sein de la famille bénédictine puis dans toute l'Église d'Occident à mesure que le monachisme modelait la civilisation chrétienne. L'Église l'a durablement vénérée comme le symbole des femmes saintes qui ont bâti des communautés de prière.

Aujourd'hui, la fête de Scholastique encourage la vie contemplative, en particulier chez les femmes, et rappelle à tous les fidèles que charité et prière ne s'opposent jamais. Dans un âge agité, son témoignage propose la stabilité intérieure et l'amitié persévérante avec Dieu.
$desc$),
('our-lady-of-lourdes', 'Notre-Dame de Lourdes', $desc$
Cette fête commémore Notre-Dame de Lourdes et les apparitions mariales associées à la grotte de Massabielle en 1858, événements reconnus par l'Église comme dignes de foi et féconds pour la dévotion. Elle honore la sollicitude maternelle de Marie pour l'Église en pèlerinage ainsi que l'appel à la conversion, à la prière et à la pénitence lié à Lourdes.

Théologiquement, la fête s'inscrit dans le mystère plus large de l'intercession de Marie. La Mère du Seigneur conduit les fidèles plus profondément au Christ par la pénitence, la confiance et la persévérance dans l'épreuve. Lourdes est devenue particulièrement associée à la guérison corporelle demandée dans la prière, mais aussi à la guérison spirituelle par la réconciliation et l'espérance.

Après l'approbation ecclésiastique, la dévotion à Lourdes se répandit rapidement et le sanctuaire devint l'un des grands lieux de pèlerinage du catholicisme moderne. La figure humble de Bernadette Soubirous et l'appel répété à la pénitence ont donné à cette dévotion un caractère fortement évangélique.

Pour les croyants d'aujourd'hui, cette fête est une école d'espérance pour les malades, les pauvres et tous ceux qui portent des blessures cachées. Elle enseigne la confiance en Marie tout en rappelant qu'une authentique dévotion mariale conduit toujours à une foi plus profonde, à la prière et à la conversion.
$desc$),
('saints-cyril-monk-and-methodius-bishop', 'Saints Cyrille, moine, et Méthode, évêque', $desc$
Cette fête honore les saints Cyrille et Méthode, frères dont l'œuvre apostolique auprès des peuples slaves en a fait des témoins durables de la créativité missionnaire et de l'unité catholique. Leur mémoire commune reflète le caractère inséparable de leur mission.

Sur le plan théologique, la fête célèbre l'inculturation dans son sens juste. En élaborant un alphabet et en traduisant les textes bibliques et liturgiques, Cyrille et Méthode montrèrent que l'unique foi peut prendre chair dans de nombreuses langues sans perdre son unité. Leur œuvre manifeste la dignité évangélique des langues vernaculaires.

Envoyés de Byzance en Grande-Moravie au IXe siècle, ils travaillèrent au milieu des tensions entre Orient et Occident tout en demeurant des figures de communion. Rome approuva leur mission et leur liturgie slavonne, et les générations suivantes les honorèrent comme apôtres des Slaves.

Aujourd'hui, leur fête parle avec force partout où l'Église cherche à annoncer le Christ à travers les frontières culturelles. Elle encourage traducteurs, missionnaires, catéchistes et tous ceux qui servent l'unité sans uniformité.
$desc$),
('the-seven-holy-founders-of-the-servite-order', 'Les Sept saints fondateurs de l''Ordre des Servites', $desc$
Cette fête commémore les sept saints fondateurs de l'Ordre des Servites, retenus ensemble parce que leur sainteté fut vécue en commun. Leur témoignage partagé honore une forme de vie chrétienne où l'amitié, la pénitence, la prière et la dévotion envers la Mère de Dieu devinrent la semence d'une nouvelle famille religieuse.

Le centre théologique de la fête est la contemplation du Christ à travers les douleurs de Marie. Les fondateurs embrassèrent une existence marquée par la compassion envers le Seigneur souffrant et envers sa Mère, montrant que la dévotion mariale conduit à une plus profonde conformité à la Passion.

Ces laïcs florentins renoncèrent à leurs biens et à leur position au XIIIe siècle pour mener une vie de prière et de pénitence qui donna naissance à l'Ordre des Serviteurs de Marie. Leur canonisation collective souligna plus tard le caractère singulier de leur témoignage.

Pour l'Église d'aujourd'hui, cette fête propose la fraternité et la conversion partagée comme de véritables chemins de sainteté. Elle nourrit aussi la dévotion à Notre-Dame des Douleurs en unissant contemplation, service et renoncement.
$desc$),
('saint-peter-damian-bishop-and-doctor-of-the-church', 'Saint Pierre Damien, évêque et docteur de l''Église', $desc$
La fête de saint Pierre Damien honore un moine, évêque et docteur de l'Église dont la vie unit l'amour de la vérité au souci profond de la sainteté du clergé et de la réforme de la vie ecclésiale. Sa mémoire garde devant l'Église l'union exigeante de la contemplation, de la doctrine et de la correction courageuse.

Sur le plan théologique, la fête célèbre une réforme née de la conversion plutôt que de la seule administration. Pierre Damien affirma avec force que la doctrine, la discipline et la sainteté personnelle ne peuvent être séparées sans dommage pour tout le Corps du Christ. Son témoignage montre que l'Église est renouvelée par la fidélité à la prière, à l'ascèse, à la vérité et à la charité.

Moine camaldule devenu cardinal-évêque d'Ostie, Pierre Damien joua un rôle majeur dans le mouvement réformateur du XIe siècle et laissa une œuvre théologique et spirituelle abondante. Sa reconnaissance comme docteur de l'Église a souligné la valeur durable de son témoignage.

Aujourd'hui, sa fête invite les chrétiens à prier pour la purification de l'Église et pour des pasteurs unissant sagesse et sainteté. Il demeure un puissant patron pour tous ceux qui doivent dire la vérité dans la vie ecclésiale.
$desc$),
('the-chair-of-saint-peter-the-apostle', 'La Chaire de saint Pierre, Apôtre', $desc$
Cette fête honore la chaire de saint Pierre comme symbole de la mission d'enseignement et de gouvernement pastoral confiée à l'apôtre dans l'Église. Plutôt que de rappeler un seul épisode de sa vie, elle célèbre le ministère durable d'unité et d'autorité apostolique que le Christ lui a confié.

Théologiquement, la chaire signifie la stabilité dans la foi apostolique. La fête contemple le ministère pétrinien comme un service de communion, de doctrine et de gouvernement pastoral, et non comme un privilège privé. En honorant la chaire de Pierre, l'Église confesse que le Christ continue de prendre soin de son troupeau.

L'antique tradition romaine connaissait déjà des commémorations liées à la cathedra de Pierre, et la fête en vint peu à peu à porter à la fois une mémoire historique et une réflexion théologique sur la succession des évêques dans les sièges apostoliques. L'expression artistique de la Cathedra Petri a encore fixé cette image dans l'imaginaire catholique.

Pour la vie chrétienne, cette fête est une invitation à prier pour le pape et pour la fidélité de l'Église à la foi apostolique. Elle rappelle aussi que l'autorité dans l'Église est ordonnée au service, à la confirmation et à l'unité.
$desc$),
('saint-polycarp-bishop-and-martyr', 'Saint Polycarpe, évêque et martyr', $desc$
La fête de saint Polycarpe honore un évêque de l'âge apostolique dont le martyre est conservé dans l'un des plus anciens récits chrétiens subsistant hors du Nouveau Testament. Sa mémoire demeure très proche des sources de la vie de l'Église et montre comment la foi des apôtres s'est transmise par le témoignage autant que par l'enseignement.

Sur le plan théologique, la fête célèbre la continuité entre la doctrine apostolique et la fidélité épiscopale. Le témoignage de Polycarpe révèle un pasteur qui a gardé la foi reçue et l'a scellée de son sang. En lui, l'Église vénère à la fois la sérénité d'une vieillesse offerte à Dieu et le courage d'un berger qui refuse de renier le Christ.

Évêque de Smyrne et, selon l'ancienne tradition, disciple de l'apôtre Jean, Polycarpe occupe une place unique entre la génération du Nouveau Testament et l'Église du IIe siècle. Le Martyre de Polycarpe a façonné la réflexion chrétienne ultérieure sur le martyre.

Aujourd'hui, cette fête rappelle que la tradition chrétienne est vivante et personnelle, et non seulement textuelle. Elle encourage les pasteurs à garder la foi avec douceur et fermeté et soutient tous ceux qui subissent la pression du compromis.
$desc$),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 'Saint Grégoire de Narek, abbé et docteur de l''Église', $desc$
La fête de saint Grégoire de Narek honore le moine et écrivain mystique arménien dont l'enseignement priant est devenu un trésor pour des chrétiens bien au-delà de sa propre tradition. Sa mémoire manifeste la profondeur de l'estime de l'Église pour la sainteté exprimée en Orient chrétien et pour le langage de la pénitence transfiguré en louange.

Sur le plan théologique, la fête est centrée sur la miséricorde divine recherchée par une âme qui connaît à la fois son péché et son espérance. Le Livre des Lamentations de Grégoire donne voix à une pénitence intensément personnelle et pleinement ecclésiale, enseignant que la contrition et la confiance vont ensemble devant Dieu.

Vivant au monastère de Narek au Xe siècle, Grégoire composa des œuvres bibliques, théologiques et liturgiques qui ont façonné la spiritualité arménienne durant des générations. Sa reconnaissance comme docteur de l'Église a mis en lumière l'universalité et la portée œcuménique de son témoignage.

Pour les fidèles d'aujourd'hui, Grégoire offre des mots de prière dans les temps de honte, de lutte et de désir de miséricorde. Il rappelle aussi à l'Église entière que les richesses spirituelles se reçoivent de plusieurs traditions de la chrétienté historique.
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
Hoc festum commemorat infantem Iesum a Maria et Ioseph in Templo praesentatum atque Domino secundum Legem oblatum, ubi Simeon et Anna in eo salutem promissam Israël et lumen gentium agnoscunt. Contemplatur occursum Verbi incarnati cum cultu veteris Foederis et humilem Sanctae Familiae oboedientiam.

Theologice festum mysteria Incarnationis, manifestationis et oblationis coniungit. Puer in sanctuarium delatus est primogenitus Deo consecratus, sed simul ipse Dominus est qui ad templum suum venit. Prophetia Simeonis iam gloriam cum contradictione coniungit, atque futura Mariae in redemptiva Filii passione participatio praesignatur.

Haec observantia iam antiquitus Hierosolymis testatur atque late in Oriente et Occidente diffusa est; benedictio et processio candelarum nomen populare Candelariae genuerunt, dum antiquior usus occidentalis eam etiam cum purificatione Mariae sociavit. Hae formae historicae idem mysterium centrale exprimunt: Christum ut lumen, oblationem et plenitudinem revelatum.

Ad vitam christianam quod attinet, festum fideles invitat ut se ipsos cum Christo Deo denuo offerant et lumen ab eo accipiant quo fidelitas cotidiana dirigitur. De patienti spe, de oblatione sui et de sanctitate in oboedientia abscondita exercita loquitur.
$desc$),
('saint-blaise-bishop-and-martyr', 'Sancti Blasii, Episcopi et Martyris', $desc$
Hoc festum sanctum Blasium ut episcopum et martyrem honorat, cuius memoria fidelitatem pastoralem cum Ecclesiae prece pro sanitate coniungit. Eius cultus praesertim per benedictionem gutturis valde carus factus est, quae fideles monet intercessionem martyrum ad fragilitatem vitae cotidianae pertinere.

Festum ante omnia constantiam fidei tempore persecutionis celebrat. In Blasio Ecclesia pastorem veneratur qui Christo usque ad mortem fidelis permansit atque signum compassionis erga patientes factus est. Candelae cruciatae in benedictione tradita simul lumen fidei et maternalem Ecclesiae sollicitudinem pro tota persona significant.

Devotio erga Blasium, episcopum Sebastenum in Armenia, ab Oriente christiano ad Occidentem mediaevalem pervenit, ubi inter Quattuordecim Auxiliatores relatus est et contra morbos frequenter invocabatur. Benedictionis ritus ei sociatus manet inter firmissima exempla quomodo liturgia pietatem popularem aluerit.

Hodie festum monet cultum christianum infirmitatem humanam non neglegere, sed eam fiducialiter Deo offerre. Per memoriam Blasii fideles excitantur ut sanitatem cum fide petant, dolorem cum spe tolerent, atque curam corporis cum desiderio sanctitatis coniungant.
$desc$),
('saint-ansgar-bishop', 'Sancti Anscharii, Episcopi', $desc$
Hoc festum sanctum Anscharium commemorat, episcopum missionarium qui Apostolus Septentrionis appellari solet, cuius vita in Evangelio ad terras adhuc fragilis Ecclesiae ferendo consumpta est. Eius memoria patientem operam honorat qua fides christiana inter populos nondum plene evangelizatos radices agit.

Centrum theologicum festi est vocatio missionaria Ecclesiae. Vita Anscharii ostendit evangelizationem perseverantiam, humilitatem et fiduciam in gratia exigere, etiam cum fructus visibiles pauci sint. Ministerium eius episcopale curam gregis iam constituti transcendit, ut communitates fundaret atque confirmaret.

Monachus Benedictinus qui archiepiscopus Hamburgensis-Bremensis factus est, Anscharius evangelizationi Scandinaviae saeculo nono destinatus est. Eius labores turbis et regressibus obnoxii fuerunt; tamen posteri in eo testem fundamentalem christianizationis Europae septentrionalis agnoverunt.

Pro Ecclesia hodierna, Anscharius signum manet opus missionarium non tantum ex successu statim apparente metiendum esse, sed ex fidelitate. Pastores, catechistas et omnes in agris difficilibus laborantes ad perseverandum cohortatur.
$desc$),
('saint-agatha-virgin-and-martyr', 'Sanctae Agathae, Virginis et Martyris', $desc$
Festum sanctae Agathae unam ex praeclarissimis virginibus martyribus antiquitatis christianae commemorat. Nomen eius in Canone Romano positum antiquam venerationem testatur, atque memoria eius Ecclesiae splendidum exemplum fidelitatis Christo per violentiam, ignominiam et mortem servatae proponit.

Festum integritatem virginitatis consecratae et paradoxum martyrii celebrat, quo clades apparens in victoria mutatur per communionem cum Passione Christi. Testimonium Agathae proclamat impetus in dignitatem humanam libertatem eius exstinguere non posse quae se totam Domino tradidit.

Cultus eius valde mature testatur, et in Sicilia praecipue dilecta fuit, ubi testimonium eius vivus fons devotionis civilis et ecclesialis permansit. Perseverantia memoriae eius in Oriente et Occidente perpetuam Ecclesiae aestimationem erga magnas feminas martyres primorum saeculorum ostendit.

Hodie festum Agathae omnibus loquitur qui coactionem, abusum vel pressiones contra conscientiam patiuntur. Personis consecratis, iuvenibus et cunctis fidelibus imago fortis castitatis et libertatis spiritualis offertur.
$desc$),
('saints-paul-miki-and-companions-martyrs', 'Sanctorum Pauli Miki et Sociorum, Martyrum', $desc$
Hoc festum viginti sex martyres Nagasakienses commemorat: sacerdotes, religiosos et laicos, adultos et pueros, christianos Iaponenses atque missionarios externos uno testimonio coniunctos. Eorum memoria communis catholicitatem Ecclesiae manifestat, in qua sanctitas neque natione neque lingua neque uno vitae statu circumscribitur.

Theologice festum martyrium tamquam summam confessionem Christi celebrat atque signum quod Evangelium in omni cultura vere radices agat. Mors communis Pauli Miki et sociorum communionem ecclesialem ethnicis vel socialibus differentiis fortiorem revelat.

Martyres anno 1597 Nagasakii necati sunt, tempore gravis persecutionis contra christianos in Iaponia. Canonizatio eorum saeculo undevicesimo testimonium iam ab Ecclesia in Asia dilectum universaliter agnovit atque eos symbola martyrii missionarii fecit.

Christianis hodiernis hoc festum animum addit communitatibus sub hostilitate vel oppressione viventibus et universam Ecclesiam monet missionem ac martyrium saepe simul processisse. Simul est schola solidarietatis quae varias vocationes quibus Christus confitetur honorat.
$desc$),
('saint-jerome-emiliani-priest', 'Sancti Hieronymi Aemiliani, Presbyteri', $desc$
Festum sancti Hieronymi Aemiliani presbyterum honorat cuius conversio in largum ministerium erga orphanos, pueros derelictos et pauperes effloruit. Eius memoria caritatem celebrat non ut solam compassionem privatam, sed ut stabilem ac diuturnam vitae christianae expressionem.

In corde festi sunt opera misericordiae corporalia et spiritualia. Hieronymus in pueris neglectis ipsam Christi faciem agnovit atque paterna teneritudine, prudentia practica et institutionibus curae respondit. Exemplo suo docet veram caritatem christianam dignitatem tueri et structuras condere in quibus obliti florere possint.

In Italia septentrionali saeculi sexti decimi, inter bella, famem et pestem, Hieronymus communitatem fundavit quae Clerici Regulares Somaschi postea facti sunt. Eius opus Ecclesiae ministerium erga iuvenes diuturno modo informavit, atque ut patronus orphanorum et puerorum derelictorum haberi coepit.

Hodie festum fideles vocat ad defendendos pueros pauperes, profugos, neglectos vel cura stabili carentes. Simul monet opera misericordiae ad ipsum cor evangelizationis pertinere.
$desc$),
('saint-josephine-bakhita-virgin', 'Sanctae Iosephinae Bakhita, Virginis', $desc$
Hoc festum sanctam Iosephinam Bakhita commemorat, cuius vita a servitute et ignominia ad libertatem baptismi et vitae consecratae pervenit. Eius memoria lucidum signum est inviolabilis dignitatis personae humanae atque potentiae gratiae.

Theologice festum redemptionem ut liberationem in Christo celebrat. Historia Bakhitae ostendit intimam hominis identitatem non in vulneribus ab aliis inflictis consistere, sed in amore Dei qui recreat et unamquamque animam nominat. Eius consecratio religiosa libertatem in laeta ad Dominum pertinentia ostendit.

Nata in regione quae hodie Sudan vocatur, pluries ut serva vendita atque tandem in Italiam perducta, Bakhita fidem christianam amplexa est et Filias Caritatis Canossianas ingressa est. Canonizatio eius testimonium per orbem divulgavit, praesertim contra servitutem, mercaturam hominum et exploitationem.

Pro Ecclesia hodierna, Bakhita iuxta omnes stat qui degradationem, migrationem coactam vel oppressionem patiuntur. Docet misericordiam historiam non delere sed transfigurare, atque ad orationem et actionem inspirat.
$desc$),
('saint-scholastica-virgin', 'Sanctae Scholasticae, Virginis', $desc$
Festum sanctae Scholasticae feminam consecratam honorat quam traditio Benedictina ut matrem suam memorat atque ut testem fecunditatis vitae monasticae feminarum veneratur. Eius memoria sanctitatem celebrat oratione, stabilitate, caritate et communi Dei quaesitione formatam.

Theologice festum virginitatem consecratam in communitate viventem extollit. Scholastica vitam totam ad amicitiam divinam ordinatam repraesentat, in qua oboedientia, silentium et caritas fraterna locum contemplationis constituunt. Tradita memoria ultimi eius cum Benedicto occursus primatum amoris illustrat.

Cultus eius intra familiam Benedictinam et per Ecclesiam occidentalem crevit, dum monachatus civilizationem christianam formabat. Ecclesia eam diu tamquam symbolum sanctarum mulierum venerata est quae communitates orationis condiderunt.

Hodie festum Scholasticae vitam contemplativam, praesertim inter feminas, confirmat atque omnes fideles monet caritatem et orationem numquam adversari. In aetate inquieta, testimonium eius stabilitatem cordis et perseverantem amicitiam cum Deo proponit.
$desc$),
('our-lady-of-lourdes', 'Beatae Mariae Virginis de Lourdes', $desc$
Hoc festum Beatam Mariam Virginem de Lourdes commemorat et apparitiones mariales ad speluncam Massabielle anno 1858 relatas, eventus quos Ecclesia fide dignos ac devotioni fructuosos iudicavit. Honorat maternalem Mariae sollicitudinem erga Ecclesiam peregrinantem necnon vocationem ad conversionem, orationem et paenitentiam cum Lourdes coniunctam.

Theologice festum in latiore mysterio intercessionis Mariae collocatur. Mater Domini fideles per paenitentiam, fiduciam et constantiam in dolore ad Christum altius ducit. Lourdes praesertim cum sanatione coniunctum est, non tantum corporali sed etiam spirituali, per reconciliationem et spem renovatam.

Post approbationem ecclesiasticam devotio erga Lourdes celeriter diffusa est et sanctuarium unus ex maximis locis peregrinationis catholicismi moderni factum est. Humilis persona Bernadettae Soubirous atque repetita vocatio ad paenitentiam hanc devotionem indole evangelica imbuerunt.

Credentibus hodiernis hoc festum schola spei est pro aegrotis, pauperibus et omnibus qui occultas plagas ferunt. Docet fiduciam in Mariae cura, simul insistens veram devotionem Marianam semper ad fidem, orationem et conversionem ducere.
$desc$),
('saints-cyril-monk-and-methodius-bishop', 'Sanctorum Cyrilli, Monachi, et Methodii, Episcopi', $desc$
Hoc festum sanctos Cyrillum et Methodium honorat, fratres quorum opus apostolicum inter populos Slavos eos durabiles testes missionariae Ecclesiae creativitatis atque unitatis catholicae fecit. Memoria eorum communis inseparabilem missionis eorum rationem refert.

Theologice festum inculturationem recte intellectam celebrat. Alphabetum excogitando et textus biblicos ac liturgicos transferendo Cyrillus et Methodius ostenderunt unam fidem in multis linguis incarnari posse sine unitatis dispendio. Eorum opus dignitatem evangelicam sermonis vernaculi patefacit.

A Byzantio ad Moraviam Magnam saeculo nono missi, inter Orientem et Occidentem tensionibus circumdati laboraverunt, manentes tamen figurae communionis. Roma missionem eorum et liturgiam Slavonicam comprobavit, atque posteri eos tamquam apostolos Slavorum venerati sunt.

Hodie festum eorum ubique resonat ubi Ecclesia Christum per fines culturales annuntiare studet. Interpretes, missionarios, catechistas et omnes qui unitati sine uniformitate serviunt confirmat.
$desc$),
('the-seven-holy-founders-of-the-servite-order', 'Septem Sanctorum Fundatorum Ordinis Servorum Mariae', $desc$
Hoc festum septem sanctos Fundatores Ordinis Servorum Mariae commemorat, simul retentos quia sanctitas eorum communiter exercita est. Eorum testimonium participatum talem discipulatus formam honorat in qua amicitia, paenitentia, oratio et devotio erga Matrem Dei semen novae familiae religiosae factae sunt.

Centrum theologicum festi est contemplatio Christi per dolores Mariae. Fundatores vitam susceperunt compassione erga Dominum patientem et eius Matrem formatam, ostendentes devotionem Marianam ad altiorem conformitatem cum Passione ducere.

Hi viri Florentini saeculo tertio decimo bonis et statu renuntiaverunt ut vitam orationis et paenitentiae agerent, ex qua Ordo Servorum Mariae ortus est. Canonizatio eorum collectiva singularitatem testimonii confirmavit.

Pro Ecclesia hodierna, festum fraternitatem et conversionem communem tamquam veras vias sanctitatis proponit. Simul devotionem erga Matrem Dolorosam nutrit contemplationem, ministerium et renuntiationem coniungendo.
$desc$),
('saint-peter-damian-bishop-and-doctor-of-the-church', 'Sancti Petri Damiani, Episcopi et Ecclesiae Doctoris', $desc$
Festum sancti Petri Damiani monachum, episcopum et Ecclesiae Doctorem honorat, cuius vita veritatis amorem cum studio sanctitatis cleri et reformationis vitae ecclesialis coniunxit. Eius memoria contemplationis, doctrinae et fortis correctionis coniunctionem ante oculos ponit.

Theologice festum reformationem ex conversione natam celebrat. Petrus Damianus docuit doctrinam, disciplinam et personalem sanctitatem separari non posse sine damno totius Corporis Christi. Eius testimonium ostendit Ecclesiam per fidelitatem orationi, ascesi, veritati et caritati renovari.

Monachus Camaldulensis qui postea cardinalis episcopus Ostiensis factus est, Petrus Damianus magnam partem in motu reformatorio saeculi undecimi egit atque amplam doctrinalem et spiritualem scriptionem reliquit. Posterior honor Doctoris Ecclesiae permanentem vim testimonii eius declaravit.

Hodie festum christianos invitat ut pro purificatione Ecclesiae et pro pastoribus simul sapientibus et sanctis orent. Potens patronus manet omnium qui veritatem intra vitam ecclesialem dicere debent.
$desc$),
('the-chair-of-saint-peter-the-apostle', 'Cathedrae Sancti Petri Apostoli', $desc$
Hoc festum cathedram sancti Petri honorat ut symbolum ministerii docendi et regendi pastoralis apostolo in Ecclesia commissi. Potius quam unum aliquem vitae Petri eventum recolat, ministerium durabile unitatis et auctoritatis apostolicae celebrat.

Theologice cathedra stabilitatem in fide apostolica significat. Festum ministerium Petrinum contemplatur ut servitium communionis, doctrinae et regiminis pastoralis, non ut privatum privilegium. Dum cathedram Petri honorat, Ecclesia confitetur Christum gregi suo adhuc providere.

Antiqua traditio Romana iam commemorationes ad cathedram Petri relatas noverat, et paulatim festum simul memoriam historicam atque meditationem theologicam de successione episcoporum tulit. Imago Cathedrae Petri etiam per artem in mente catholica altius fixa est.

Ad vitam christianam, festum invitat ut pro Romano Pontifice et pro fidelitate Ecclesiae erga fidem apostolicam oretur. Simul admonet auctoritatem in Ecclesia ad ministerium, confirmationem et unitatem ordinari.
$desc$),
('saint-polycarp-bishop-and-martyr', 'Sancti Polycarpi, Episcopi et Martyris', $desc$
Festum sancti Polycarpi episcopum aetatis apostolicae honorat, cuius martyrium in una ex antiquissimis narrationibus christianis extra Novum Testamentum servatis traditur. Eius memoria ad ipsos fontes vitae Ecclesiae proxime accedit atque ostendit quomodo fides apostolorum testimonio aeque ac doctrina transmissa sit.

Theologice festum continuitatem inter doctrinam apostolicam et fidelitatem episcopalem celebrat. Testimonium Polycarpi pastorem revelat qui fidem acceptam custodivit eamque sanguine obsignavit. In eo Ecclesia et serenitatem senectutis Deo oblatae et fortitudinem pastoris veneratur.

Ut episcopus Smyrnensis et, secundum veterem traditionem, discipulus Ioannis Apostoli, Polycarpus singularem locum inter generationem Novi Testamenti et Ecclesiam saeculi secundi obtinet. Martyrium Polycarpi meditationem christianam de martyrio posteris formavit.

Hodie festum fideles monet traditionem christianam vivam et personalem esse, non meram textualem. Pastores ad fidem cum mansuetudine et firmitate custodiendam hortatur atque omnes sub pressione compromissi confirmat.
$desc$),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', 'Sancti Gregorii Narekensis, Abbatis et Ecclesiae Doctoris', $desc$
Festum sancti Gregorii Narekensis monachum et scriptorem mysticum Armenium honorat, cuius doctrina orans thesaurus facta est christianis longe ultra propriam traditionem. Eius memoria profundam Ecclesiae aestimationem erga sanctitatem in Oriente christiano expressam atque erga sermonem paenitentiae in laudem conversum manifestat.

Theologice festum misericordiam divinam petitam ab anima celebrat quae simul peccatum suum et spem suam novit. Liber Lamentationum Gregorii voci dat paenitentiae valde personali atque ecclesiali, docens contritionem et fiduciam coram Deo simul ambulare.

Gregorius in monasterio Narek saeculo decimo vivens opera biblica, theologica et liturgica composuit quae spiritualitatem Armeniam per multas generationes formaverunt. Posterior honor Doctoris Ecclesiae universalitatem et momentum oecumenicum testimonii eius illustravit.

Fidelibus hodiernis Gregorius verba orationis offert temporibus pudoris, certaminis et desiderii misericordiae. Simul universam Ecclesiam monet spirituales divitias ex pluribus traditionibus christianitatis historicae recipiendas esse.
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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('the-presentation-of-the-lord', $desc$
In the Roman General Calendar this celebration is kept on 2 February as a Feast of the Lord with white vestments. The blessing and procession of candles remain its most distinctive ritual feature, so the Christological theme of light visibly shapes the opening of Mass.

The current Roman books use the title Presentation of the Lord, while preserving the long Western association with Candlemas. Since 1997 the same day has also served as the World Day for Consecrated Life.
$desc$),
('saint-blaise-bishop-and-martyr', $desc$
Saint Blaise is observed on 3 February as an optional memorial with red vestments. In modern Roman practice the day is often marked pastorally by the traditional blessing of throats, frequently with crossed candles.

Its optional rank leaves wide room for local custom while preserving one of the best-known popular blessings associated with the sanctoral.
$desc$),
('saint-ansgar-bishop', $desc$
Saint Ansgar is also assigned to 3 February in the Roman General Calendar, where he is kept as an optional memorial with white vestments. Because he shares the date with Saint Blaise, pastoral choice often determines which saint is more explicitly commemorated.

The modern Roman calendar presents Ansgar chiefly as a missionary bishop and witness to the evangelization of Northern Europe.
$desc$),
('saint-agatha-virgin-and-martyr', $desc$
Saint Agatha is celebrated on 5 February as an obligatory memorial with red vestments. The modern Roman observance preserves one of the Church's most ancient and stable commemorations of a virgin martyr.

Her yearly memorial is reinforced by the continued mention of her name in the Roman Canon.
$desc$),
('saints-paul-miki-and-companions-martyrs', $desc$
Saints Paul Miki and Companions are celebrated on 6 February as an obligatory memorial with red vestments. The Roman General Calendar commemorates them together as a single group of martyrs tied to the anniversary of their execution at Nagasaki.

Their inclusion highlights the global horizon of the modern sanctoral and gives liturgical visibility to the history of the Church in Japan.
$desc$),
('saint-jerome-emiliani-priest', $desc$
Saint Jerome Emiliani is kept on 8 February as an optional memorial with white vestments. In current Roman usage his observance often stands beside that of Saint Josephine Bakhita on the same day, giving pastors flexibility in emphasis.

The Roman texts highlight charity toward orphans, youth, and the abandoned.
$desc$),
('saint-josephine-bakhita-virgin', $desc$
Saint Josephine Bakhita is observed on 8 February as an optional memorial with white vestments. Her relatively recent insertion into the universal Roman calendar gives this day a distinctive modern resonance.

In contemporary Roman pastoral life, the date is closely associated with prayer and awareness regarding human trafficking.
$desc$),
('saint-scholastica-virgin', $desc$
Saint Scholastica is celebrated on 10 February as an obligatory memorial with white vestments. The current Roman observance gives stable liturgical expression to her longstanding place within the Benedictine and wider Western tradition.

Its tone is shaped by consecrated life, prayer, and charity rather than by martyrdom.
$desc$),
('our-lady-of-lourdes', $desc$
Our Lady of Lourdes is kept on 11 February as an optional memorial with white vestments. In the Roman General Calendar this observance is strongly marked by prayer for the sick and by themes of hope, healing, and Marian consolation.

The same date also serves as the World Day of the Sick in modern Roman practice.
$desc$),
('saints-cyril-monk-and-methodius-bishop', $desc$
Saints Cyril and Methodius are celebrated together on 14 February as an obligatory memorial with white vestments. The present Roman observance gives their shared apostolic work a single annual celebration.

Their place in the modern calendar is also colored by their recognition as patrons of Europe.
$desc$),
('the-seven-holy-founders-of-the-servite-order', $desc$
The Seven Holy Founders of the Servite Order are kept on 17 February as an optional memorial with white vestments. Their shared celebration preserves the unusual corporate character of their sanctity and canonization.

The optional rank leaves ample room for Servite and local devotional customs.
$desc$),
('saint-peter-damian-bishop-and-doctor-of-the-church', $desc$
Saint Peter Damian is observed on 21 February as an optional memorial with white vestments. His Roman celebration presents him explicitly as both bishop and Doctor of the Church.

The observance is especially apt in contexts concerned with clerical holiness, ecclesial renewal, and theological study.
$desc$),
('the-chair-of-saint-peter-the-apostle', $desc$
The Chair of Saint Peter the Apostle is celebrated on 22 February as a feast with white vestments. Its festal rank distinguishes it clearly from the surrounding memorials.

The current Roman calendar keeps a single February celebration of Peter's chair, whereas older Roman usage distinguished separate commemorations associated with Rome and Antioch.
$desc$),
('saint-polycarp-bishop-and-martyr', $desc$
Saint Polycarp is celebrated on 23 February as an obligatory memorial with red vestments. The current Roman date places the observance near the traditional anniversary of his martyrdom and differs from the placement once found in the older Roman calendar.

The memorial remains one of the clearest links in the sanctoral to the post-apostolic Church.
$desc$),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', $desc$
Saint Gregory of Narek is kept on 27 February as an optional memorial with white vestments. His addition to the modern Roman calendar gave the Latin Church an annual observance for a major Armenian spiritual writer and Doctor of the Church.

The celebration has a distinctly ecumenical tone within the Roman sanctoral.
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
('the-presentation-of-the-lord', $desc$
Dans le calendrier romain général, cette célébration est fixée au 2 février comme fête du Seigneur avec les ornements blancs. La bénédiction et la procession des cierges en demeurent le trait rituel le plus caractéristique, de sorte que le thème du Christ lumière marque visiblement l'ouverture de la messe.

Les livres romains actuels emploient le titre de Présentation du Seigneur, et depuis 1997 ce même jour est aussi devenu la Journée mondiale de la vie consacrée.
$desc$),
('saint-blaise-bishop-and-martyr', $desc$
Saint Blaise est célébré le 3 février comme mémoire facultative avec les ornements rouges. Dans la pratique romaine moderne, le jour est souvent marqué pastoralement par la bénédiction traditionnelle des gorges, fréquemment donnée avec des cierges croisés.

Son rang facultatif laisse une large place aux usages locaux tout en conservant l'une des bénédictions populaires les plus connues du sanctoral.
$desc$),
('saint-ansgar-bishop', $desc$
Saint Anschaire est lui aussi assigné au 3 février dans le calendrier romain général, où il est retenu comme mémoire facultative avec les ornements blancs. Comme il partage cette date avec saint Blaise, le choix pastoral détermine souvent lequel des deux saints sera plus explicitement mis en valeur.

Le calendrier romain moderne présente surtout Anschaire comme évêque missionnaire et témoin de l'évangélisation de l'Europe du Nord.
$desc$),
('saint-agatha-virgin-and-martyr', $desc$
Sainte Agathe est célébrée le 5 février comme mémoire obligatoire avec les ornements rouges. L'observance romaine moderne maintient ainsi l'une des commémorations les plus anciennes et les plus stables d'une vierge martyre.

Sa mémoire annuelle est encore renforcée par la mention continue de son nom dans le Canon romain.
$desc$),
('saints-paul-miki-and-companions-martyrs', $desc$
Les saints Paul Miki et ses compagnons sont célébrés le 6 février comme mémoire obligatoire avec les ornements rouges. Le calendrier romain général les commémore ensemble comme un seul groupe de martyrs lié à l'anniversaire de leur exécution à Nagasaki.

Leur inscription souligne l'horizon mondial du sanctoral moderne et donne une visibilité liturgique à l'histoire de l'Église au Japon.
$desc$),
('saint-jerome-emiliani-priest', $desc$
Saint Jérôme Emilien est célébré le 8 février comme mémoire facultative avec les ornements blancs. Dans l'usage romain actuel, son observance se tient souvent à côté de celle de sainte Joséphine Bakhita le même jour, ce qui laisse une certaine souplesse pastorale.

Les textes romains mettent en relief la charité envers les orphelins, la jeunesse et les abandonnés.
$desc$),
('saint-josephine-bakhita-virgin', $desc$
Sainte Joséphine Bakhita est observée le 8 février comme mémoire facultative avec les ornements blancs. Son insertion relativement récente dans le calendrier romain universel donne à cette date une résonance moderne très particulière.

Dans la vie pastorale contemporaine, ce jour est étroitement associé à la prière et à la sensibilisation contre la traite des êtres humains.
$desc$),
('saint-scholastica-virgin', $desc$
Sainte Scholastique est célébrée le 10 février comme mémoire obligatoire avec les ornements blancs. L'observance romaine actuelle donne une expression liturgique stable à sa place ancienne dans la tradition bénédictine et plus largement occidentale.

Sa tonalité est marquée par la vie consacrée, la prière et la charité plutôt que par le martyre.
$desc$),
('our-lady-of-lourdes', $desc$
Notre-Dame de Lourdes est célébrée le 11 février comme mémoire facultative avec les ornements blancs. Dans le calendrier romain général, cette observance est fortement marquée par la prière pour les malades et par les thèmes d'espérance, de guérison et de consolation mariale.

Cette date est aussi la Journée mondiale du malade dans la pratique romaine moderne.
$desc$),
('saints-cyril-monk-and-methodius-bishop', $desc$
Les saints Cyrille et Méthode sont célébrés ensemble le 14 février comme mémoire obligatoire avec les ornements blancs. L'observance romaine actuelle donne à leur œuvre apostolique commune une seule célébration annuelle.

Leur place dans le calendrier moderne est aussi marquée par leur reconnaissance comme patrons de l'Europe.
$desc$),
('the-seven-holy-founders-of-the-servite-order', $desc$
Les Sept saints fondateurs de l'Ordre des Servites sont célébrés le 17 février comme mémoire facultative avec les ornements blancs. Leur célébration commune conserve le caractère collectif très particulier de leur sainteté et de leur canonisation.

Le rang facultatif laisse une large place aux usages servites et locaux.
$desc$),
('saint-peter-damian-bishop-and-doctor-of-the-church', $desc$
Saint Pierre Damien est observé le 21 février comme mémoire facultative avec les ornements blancs. La célébration romaine le présente explicitement comme évêque et docteur de l'Église.

L'observance est particulièrement éloquente dans les contextes de sainteté du clergé, de renouveau ecclésial et d'étude théologique.
$desc$),
('the-chair-of-saint-peter-the-apostle', $desc$
La Chaire de saint Pierre, Apôtre, est célébrée le 22 février comme fête avec les ornements blancs. Son rang festif la distingue nettement des mémoires qui l'entourent.

Le calendrier romain actuel retient une unique célébration de la chaire de Pierre en février, là où un usage plus ancien distinguait Rome et Antioche.
$desc$),
('saint-polycarp-bishop-and-martyr', $desc$
Saint Polycarpe est célébré le 23 février comme mémoire obligatoire avec les ornements rouges. La date romaine actuelle place l'observance près de l'anniversaire traditionnel de son martyre et diffère de la position que lui donnait l'ancien calendrier romain.

Cette mémoire demeure l'un des liens les plus nets du sanctoral avec l'Église postapostolique.
$desc$),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', $desc$
Saint Grégoire de Narek est célébré le 27 février comme mémoire facultative avec les ornements blancs. Son ajout au calendrier romain moderne a donné à l'Église latine une observance annuelle d'un grand écrivain spirituel arménien et docteur de l'Église.

Cette célébration porte dans le sanctoral romain une tonalité nettement œcuménique.
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
('the-presentation-of-the-lord', $desc$
In Calendario Romano Generali haec celebratio die secunda Februarii ut Festum Domini cum vestibus albis agitur. Benedictio et processio candelarum manent ritus eius proprii manifestissimi, ita ut thema Christi lucis iam ab initio Missae emineat.

Libri Romani hodierni titulo Praesentationis Domini utuntur, et ab anno 1997 idem dies etiam Dies Mundialis Vitae Consecratae factus est.
$desc$),
('saint-blaise-bishop-and-martyr', $desc$
Sanctus Blasius die tertia Februarii ut memoria ad libitum cum vestibus rubris celebratur. In usu Romano moderno dies saepe pastorali modo per traditionalem gutturis benedictionem, frequenter cum candelis cruciatis, notatur.

Gradus ad libitum amplum locum consuetudinibus localibus relinquit, dum una ex notissimis benedictionibus popularibus sanctoralis servatur.
$desc$),
('saint-ansgar-bishop', $desc$
Sanctus Anscharius eidem diei tertiae Februarii in Calendario Romano Generali assignatur, ubi ut memoria ad libitum cum vestibus albis servatur. Quia diem cum sancto Blasio communicat, electio pastoralis saepe decernit uter explicitius commemoretur.

Calendarium Romanum modernum Anscharium praecipue exhibet ut episcopum missionarium et testem evangelizationis Europae septentrionalis.
$desc$),
('saint-agatha-virgin-and-martyr', $desc$
Sancta Agatha die quinta Februarii ut memoria obligatoria cum vestibus rubris celebratur. Observantia Romana moderna sic unam ex antiquissimis firmissimisque commemorationibus virginis martyris servat.

Memoria annua etiam mentione nominis eius in Canone Romano roboratur.
$desc$),
('saints-paul-miki-and-companions-martyrs', $desc$
Sancti Paulus Miki et Socii die sexta Februarii ut memoria obligatoria cum vestibus rubris celebrantur. Calendarium Romanum Generale eos simul commemorat tamquam unum coetum martyrum anniversario supplicii Nagasakiensis coniunctum.

Eorum receptio amplitudinem mundanam sanctoralis moderni illustrat atque historiae Ecclesiae in Iaponia visibilitatem liturgicam tribuit.
$desc$),
('saint-jerome-emiliani-priest', $desc$
Sanctus Hieronymus Aemilianus die octava Februarii ut memoria ad libitum cum vestibus albis servatur. In usu Romano hodierno eius observantia saepe iuxta memoriam sanctae Iosephinae Bakhita eodem die stat, unde aliqua flexibilitas pastoralis datur.

Textus Romani caritatem erga orphanos, iuvenes et derelictos praecipue extollunt.
$desc$),
('saint-josephine-bakhita-virgin', $desc$
Sancta Iosephina Bakhita die octava Februarii ut memoria ad libitum cum vestibus albis observatur. Eius recentior insertio in calendarium Romanum universale huic diei resonantiam modernam propriam tribuit.

In vita pastorali contemporanea dies arcte cum oratione et conscientia contra mercaturam hominum conectitur.
$desc$),
('saint-scholastica-virgin', $desc$
Sancta Scholastica die decima Februarii ut memoria obligatoria cum vestibus albis celebratur. Observantia Romana hodierna locum eius diuturnum intra traditionem Benedictinam et latius occidentalem stabiliter exprimit.

Indoles celebrationis ex vita consecrata, oratione et caritate potius quam ex martyrio sumitur.
$desc$),
('our-lady-of-lourdes', $desc$
Beata Maria Virgo de Lourdes die undecima Februarii ut memoria ad libitum cum vestibus albis servatur. In Calendario Romano Generali haec observantia valde notatur oratione pro infirmis atque thematibus spei, sanationis et consolationis Marianae.

Eadem dies etiam Dies Mundialis Infirmi est in usu Romano moderno.
$desc$),
('saints-cyril-monk-and-methodius-bishop', $desc$
Sancti Cyrillus et Methodius simul die decima quarta Februarii ut memoria obligatoria cum vestibus albis celebrantur. Observantia Romana praesens operi eorum apostolico communi unam annuam celebrationem tribuit.

Locus eorum in calendario moderno etiam agnitione tamquam patronorum Europae coloratur.
$desc$),
('the-seven-holy-founders-of-the-servite-order', $desc$
Septem Sancti Fundatores Ordinis Servorum Mariae die decima septima Februarii ut memoria ad libitum cum vestibus albis servantur. Eorum celebratio communis indolem collectivam sanctitatis et canonizationis eorum singulariter conservat.

Gradus ad libitum consuetudinibus Serviticis et localibus amplum locum relinquit.
$desc$),
('saint-peter-damian-bishop-and-doctor-of-the-church', $desc$
Sanctus Petrus Damianus die vicesima prima Februarii ut memoria ad libitum cum vestibus albis observatur. Celebratio Romana eum expresse tamquam episcopum et Ecclesiae Doctorem proponit.

Observantia praesertim in contextibus sanctitatis cleri, renovationis ecclesialis et studii theologici apta est.
$desc$),
('the-chair-of-saint-peter-the-apostle', $desc$
Cathedra sancti Petri Apostoli die vicesima secunda Februarii ut festum cum vestibus albis celebratur. Gradus festivi vis eam a memoriis circumstantibus clare distinguit.

Calendarium Romanum hodiernum unam celebrationem Februariam servat, cum usus antiquior Romae et Antiochiae distinctionem noverit.
$desc$),
('saint-polycarp-bishop-and-martyr', $desc$
Sanctus Polycarpus die vicesima tertia Februarii ut memoria obligatoria cum vestibus rubris celebratur. Dies Romanus hodiernus observantiam prope anniversarium traditum martyrii collocat atque a sede vetustiore differt.

Haec memoria unum ex clarissimis vinculis sanctoralis cum Ecclesia postapostolica manet.
$desc$),
('saint-gregory-of-narek-abbot-and-doctor-of-the-church', $desc$
Sanctus Gregorius Narekensis die vicesima septima Februarii ut memoria ad libitum cum vestibus albis servatur. Additio eius ad calendarium Romanum modernum Ecclesiae Latinae annuam observantiam magni scriptoris Armenii et Ecclesiae Doctoris dedit.

Celebratio in sanctorali Romano indolem distincte oecumenicam gerit.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

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
This feast commemorates Saint Casimir, a young prince whose holiness was expressed not through political triumph but through purity, prayer, and detachment from worldly ambition. His memory presents a form of sanctity in which royal dignity is purified by humility and placed at the service of Christ.

At the heart of the feast lies the Gospel truth that true kingship consists in obedient service before God. Casimir's chastity, simplicity of life, and devotion to the Blessed Virgin Mary reveal an interior freedom that no courtly privilege could surpass.

Devotion to Casimir arose quickly after his death in 1484, especially in Poland and Lithuania, where he came to be cherished as patron and model. His canonization confirmed a reputation for sanctity remarkable precisely because it flowered in youth and amid public expectation.

For the Church today, Casimir remains a compelling witness for young people and for those entrusted with authority. He reminds believers that holiness can flourish even in the midst of privilege and responsibility.
$desc$),
('saints-perpetua-and-felicity-martyrs', 'Saints Perpetua and Felicity, Martyrs', $desc$
This feast commemorates Saints Perpetua and Felicity, two women whose martyrdom has been treasured since the earliest centuries as one of Christianity's most vivid testimonies of courage. Their shared memory keeps together a noblewoman and an enslaved woman, revealing the new fraternity created in Christ.

Theologically, the feast centers on martyrdom as complete conformity to the crucified Lord. Perpetua and Felicity show that in baptism earthly distinctions lose their ultimate claim, because all are made children of God and called to the same fidelity.

Their death at Carthage in 203 is known through the Passio Sanctarum Perpetuae et Felicitatis, one of the most precious surviving texts of early Christian literature. Their names entered the Roman Canon, a sign of the exceptional reverence accorded them by the ancient Church.

Today the feast speaks with particular force to Christians suffering persecution and to all who wonder what fidelity may demand. It also honors the witness of women whose motherhood, vulnerability, and courage were places where grace shone brightly.
$desc$),
('saint-john-of-god-religious', 'Saint John of God, Religious', $desc$
The feast of Saint John of God honors a man whose dramatic conversion issued in wholehearted service to the sick, the poor, and the abandoned. His memory celebrates the charity by which Christ is recognized and served in those whose suffering makes them easy to neglect.

At the theological center of the feast stands the Lord's identification with the afflicted: what is done for the sick is done for Christ himself. John of God's life shows that care for the body is never alien to the Gospel but can become one of its most luminous expressions.

Born in Portugal and transformed in Granada, John gathered companions who became the Brothers Hospitallers, giving institutional form to his compassion. His holiness has long been associated with the Church's care for hospitals, caregivers, and those who suffer in body or mind.

For Christians today, his feast encourages all who work in medicine, chaplaincy, and works of mercy. It also reminds the whole Church that conversion is proved by love made practical.
$desc$),
('saint-frances-of-rome-religious', 'Saint Frances of Rome, Religious', $desc$
This feast commemorates Saint Frances of Rome, whose holiness was forged within marriage, motherhood, prayer, and service to the poor before flowering also in a more explicit form of religious life. Her memory is a powerful witness that sanctity can ripen amid household duties as truly as within the cloister.

The theological center of the feast is the universal call to holiness lived in ordinary states of life. Frances united contemplation with demanding domestic responsibilities and showed that charity can transfigure family life rather than compete with it.

Living in Rome during the upheavals of the early fifteenth century, Frances combined fidelity to her family with the foundation of a community of oblate women devoted to prayer and charitable works. Her canonization confirmed a reputation for holiness rooted equally in practical service and mystical depth.

Today her feast offers hope to spouses, parents, widows, and lay faithful seeking God amid work, fatigue, and responsibility. Frances shows that grace can fill the home, the street, and the places of hidden daily sacrifice.
$desc$),
('saint-patrick-bishop', 'Saint Patrick, Bishop', $desc$
The feast of Saint Patrick honors the missionary bishop whose preaching became inseparable from the Christian identity of Ireland. His life is remembered as a striking example of grace turning personal suffering into apostolic fruit for an entire people.

Theologically, Patrick's witness reveals how divine providence can transform captivity into mission. The land of his enslavement became the field of his evangelical return, and the wounds of his earlier life were not erased but redeemed.

Patrick's own Confessio and Letter to Coroticus make him unusually present to later generations in his own voice. Through those texts the Church hears a bishop who combines humility, scriptural conviction, zeal for souls, and deep dependence on God.

Today Patrick remains a patron of missionaries and a point of reference for communities shaped by Irish faith across the world. His feast invites Christians to bring the Gospel into places marked by pain, estrangement, or resistance.
$desc$),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 'Saint Cyril of Jerusalem, Bishop and Doctor of the Church', $desc$
This feast commemorates Saint Cyril of Jerusalem, bishop and Doctor of the Church, whose teaching remains one of the clearest windows into the faith and worship of the early Church. His memory honors a pastor who formed catechumens and newly baptized Christians with patience, doctrinal clarity, and liturgical depth.

Theologically, the feast centers on mystagogy: the Church's task of leading believers into the mysteries they celebrate. Cyril's Catechetical Lectures unfold the Creed, baptism, and Eucharist in a way that joins doctrine to sacramental experience.

As bishop of Jerusalem in the fourth century, Cyril suffered exile amid theological conflict yet continued to hand on the apostolic faith. His writings later made him a classic guide for liturgical theology and Christian initiation.

For the Church today, Cyril is especially timely wherever catechumens, converts, and adult believers are being formed in the faith. He reminds pastors and teachers that doctrine reaches its fullest clarity when taught from within the worshiping life of the Church.
$desc$),
('saint-joseph-spouse-of-the-blessed-virgin-mary', 'Saint Joseph, Spouse of the Blessed Virgin Mary', $desc$
This feast honors Saint Joseph, the just man chosen to be the virginal spouse of Mary and the guardian of Jesus. His memory contemplates a holiness expressed not in recorded words or public miracles, but in silent obedience, protective love, and unwavering readiness to carry out the will of God.

Theologically, Joseph's vocation reveals a fatherhood entirely at the service of the mystery of the Incarnation. In him the Church sees how righteousness is lived through listening, trust, labor, and fidelity in hidden things.

Devotion to Joseph developed gradually in the Latin Church and eventually led to his universal patronage of the Church. The growth of his cult reflects the Church's deepening contemplation of the hidden years of Nazareth and of the dignity of work and family life.

Today Joseph remains a beloved model for fathers, workers, spouses, and all who bear responsibility without acclaim. He teaches that silence can be strong, obedience fruitful, and ordinary labor holy.
$desc$),
('saint-turibius-of-mongrovejo-bishop', 'Saint Turibius of Mongrovejo, Bishop', $desc$
The feast of Saint Turibius of Mongrovejo commemorates a bishop whose pastoral zeal helped shape the Church in the Americas during a decisive missionary age. His memory honors an episcopal charity that refused distance, choosing instead to seek out the flock across immense and difficult territory.

Theologically, the feast highlights the bishop as shepherd, teacher, and defender of human dignity. Turibius understood his office not as administration from afar but as personal presence, catechesis, sacramental care, and protection of the vulnerable.

As archbishop of Lima in the late sixteenth century, he undertook exhausting visitations, promoted the formation of clergy, and convened the Third Council of Lima, which influenced the evangelization of Latin America for generations.

Today his feast speaks especially to bishops, pastors, and missionaries called to combine clarity of doctrine with proximity to the poor and marginalized.
$desc$),
('the-annunciation-of-the-lord', 'The Annunciation of the Lord', $desc$
This feast commemorates the Annunciation, the moment when the eternal Word took flesh in the womb of the Virgin Mary at her free assent to the angelic message. It celebrates the beginning of the Incarnation itself: the Son of God truly entering human history and human nature.

Theologically, the feast stands at the heart of the mystery of salvation. Mary's fiat reveals the obedience of faith, while the conception of Christ marks the union of divine and human natures in the one person of the Word.

The celebration was known in both East and West from ancient centuries and came to be fixed nine months before Christmas. Its place in devotion was further strengthened by the Angelus and by the Church's meditation on the sanctity of life from conception.

For believers today, the Annunciation remains a school of attentiveness and surrender to God. Mary's yes continues to teach the Church how grace is welcomed and how vocation is received.
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
Cette fête commémore saint Casimir, jeune prince dont la sainteté ne s'est pas exprimée par des succès politiques, mais par la pureté, la prière et le détachement des ambitions du monde. Sa mémoire présente une forme de sainteté où la dignité royale est purifiée par l'humilité et mise au service du Christ.

Au cœur de la fête se trouve cette vérité évangélique selon laquelle la véritable royauté consiste à servir dans l'obéissance devant Dieu. La chasteté de Casimir, sa simplicité de vie et sa dévotion à la Bienheureuse Vierge Marie manifestent une liberté intérieure qu'aucun privilège de cour ne saurait dépasser.

La dévotion à Casimir se développa rapidement après sa mort en 1484, surtout en Pologne et en Lituanie, où il fut aimé comme patron et modèle. Sa canonisation confirma une réputation de sainteté d'autant plus remarquable qu'elle avait fleuri dans la jeunesse et sous la pression des attentes publiques.

Pour l'Église d'aujourd'hui, Casimir demeure un témoin puissant pour les jeunes et pour ceux qui exercent l'autorité. Il rappelle que la sainteté peut fleurir même au milieu des privilèges et des responsabilités.
$desc$),
('saints-perpetua-and-felicity-martyrs', 'Saintes Perpétue et Félicité, martyres', $desc$
Cette fête commémore les saintes Perpétue et Félicité, dont le martyre est chéri depuis les premiers siècles comme l'un des témoignages les plus saisissants du courage chrétien. Leur mémoire garde unies une femme noble et une femme esclave, manifestant la fraternité nouvelle créée dans le Christ.

Sur le plan théologique, la fête est centrée sur le martyre comme configuration totale au Seigneur crucifié. Perpétue et Félicité montrent qu'en vertu du baptême les distinctions terrestres perdent leur prétention ultime, puisque tous deviennent enfants de Dieu et sont appelés à la même fidélité.

Leur mort à Carthage en 203 nous est connue par la Passion des saintes Perpétue et Félicité, l'un des textes les plus précieux de la littérature chrétienne ancienne. Leurs noms entrèrent dans le Canon romain, signe de la vénération exceptionnelle que leur portait l'Église ancienne.

Aujourd'hui, cette fête parle avec une force particulière aux chrétiens persécutés et à tous ceux qui s'interrogent sur le prix de la fidélité. Elle honore aussi le témoignage de femmes dont la maternité, la vulnérabilité et le courage furent des lieux où la grâce a brillé.
$desc$),
('saint-john-of-god-religious', 'Saint Jean de Dieu, religieux', $desc$
La fête de saint Jean de Dieu honore un homme dont la conversion saisissante s'est traduite par un service total des malades, des pauvres et des abandonnés. Sa mémoire célèbre cette charité par laquelle le Christ est reconnu et servi dans ceux que la souffrance rend faciles à oublier.

Au centre théologique de la fête se trouve l'identification du Seigneur avec ceux qui sont éprouvés : ce qui est fait aux malades est fait au Christ lui-même. La vie de Jean de Dieu montre que le soin du corps n'est jamais étranger à l'Évangile, mais peut en devenir l'une des expressions les plus lumineuses.

Né au Portugal et transformé à Grenade, Jean rassembla des compagnons qui devinrent les Frères hospitaliers, donnant une forme institutionnelle à sa compassion. Sa sainteté est depuis longtemps liée au soin de l'Église envers les hôpitaux, les soignants et les personnes atteintes dans leur corps ou leur esprit.

Pour les chrétiens d'aujourd'hui, sa fête encourage tous ceux qui servent dans la médecine, l'aumônerie et les œuvres de miséricorde. Elle rappelle aussi à toute l'Église que la conversion se prouve par un amour devenu concret.
$desc$),
('saint-frances-of-rome-religious', 'Sainte Françoise de Rome, religieuse', $desc$
Cette fête commémore sainte Françoise de Rome, dont la sainteté s'est forgée dans le mariage, la maternité, la prière et le service des pauvres avant de s'épanouir aussi dans une forme plus explicite de vie religieuse. Sa mémoire témoigne avec force que la sainteté peut mûrir au cœur des devoirs domestiques aussi véritablement qu'au cloître.

Le centre théologique de la fête est l'appel universel à la sainteté vécu dans les états de vie ordinaires. Françoise unit la contemplation à d'exigeantes responsabilités familiales et montre que la charité peut transfigurer la vie domestique au lieu de lui faire concurrence.

Vivant à Rome au temps des troubles du début du XVe siècle, Françoise demeura fidèle à sa famille tout en fondant une communauté de femmes oblates vouées à la prière et aux œuvres de charité. Sa canonisation confirma une réputation de sainteté enracinée tout ensemble dans le service concret et la profondeur mystique.

Aujourd'hui, sa fête offre de l'espérance aux époux, aux parents, aux veuves et aux fidèles laïcs qui cherchent Dieu dans le travail, la fatigue et les responsabilités. Françoise montre que la grâce peut remplir la maison, la rue et les lieux du sacrifice quotidien caché.
$desc$),
('saint-patrick-bishop', 'Saint Patrick, évêque', $desc$
La fête de saint Patrick honore l'évêque missionnaire dont la prédication est devenue inséparable de l'identité chrétienne de l'Irlande. Sa vie est gardée en mémoire comme un exemple saisissant de la manière dont la grâce peut transformer une souffrance personnelle en fruit apostolique pour tout un peuple.

Théologiquement, le témoignage de Patrick révèle comment la providence divine peut faire d'une captivité une mission. La terre de son esclavage devint le champ de son retour évangélique, et les blessures de sa vie passée ne furent pas effacées mais rachetées.

La Confession de Patrick et sa Lettre à Coroticus le rendent exceptionnellement proche des générations ultérieures par sa propre voix. À travers ces textes, l'Église entend un évêque qui unit humilité, conviction scripturaire, zèle pour les âmes et profonde dépendance à Dieu.

Aujourd'hui, Patrick demeure un patron des missionnaires et un point de référence pour les communautés marquées par la foi irlandaise à travers le monde. Sa fête invite les chrétiens à porter l'Évangile dans les lieux marqués par la douleur, l'éloignement ou la résistance.
$desc$),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 'Saint Cyrille de Jérusalem, évêque et docteur de l''Église', $desc$
Cette fête commémore saint Cyrille de Jérusalem, évêque et docteur de l'Église, dont l'enseignement demeure l'une des fenêtres les plus claires sur la foi et le culte de l'Église ancienne. Sa mémoire honore un pasteur qui forma les catéchumènes et les nouveaux baptisés avec patience, clarté doctrinale et profondeur liturgique.

Sur le plan théologique, la fête est centrée sur la mystagogie, c'est-à-dire la mission de l'Église qui conduit les croyants dans les mystères qu'ils célèbrent. Les Catéchèses de Cyrille déploient le Symbole, le baptême et l'Eucharistie en unissant étroitement la doctrine à l'expérience sacramentelle.

Évêque de Jérusalem au IVe siècle, Cyrille connut l'exil au milieu des conflits théologiques sans cesser de transmettre fidèlement la foi apostolique. Ses écrits ont fait de lui un guide classique pour la théologie liturgique et l'initiation chrétienne.

Pour l'Église d'aujourd'hui, Cyrille est particulièrement actuel partout où l'on forme des catéchumènes, des convertis et des adultes dans la foi. Il rappelle aux pasteurs et aux enseignants que la doctrine atteint sa plus grande clarté lorsqu'elle est enseignée du dedans de la vie liturgique de l'Église.
$desc$),
('saint-joseph-spouse-of-the-blessed-virgin-mary', 'Saint Joseph, époux de la Bienheureuse Vierge Marie', $desc$
Cette fête honore saint Joseph, l'homme juste choisi pour être l'époux virginal de Marie et le gardien de Jésus. Sa mémoire contemple une sainteté exprimée non par des paroles rapportées ou des miracles publics, mais par l'obéissance silencieuse, l'amour protecteur et la disponibilité constante à accomplir la volonté de Dieu.

Théologiquement, la vocation de Joseph révèle une paternité entièrement au service du mystère de l'Incarnation. En lui, l'Église voit comment la justice se vit dans l'écoute, la confiance, le travail et la fidélité aux choses cachées.

La dévotion envers Joseph se développa progressivement dans l'Église latine et conduisit finalement à son patronage universel sur l'Église. La croissance de son culte reflète une contemplation plus profonde des années cachées de Nazareth ainsi que de la dignité du travail et de la vie familiale.

Aujourd'hui, Joseph demeure un modèle aimé des pères, des travailleurs, des époux et de tous ceux qui portent des responsabilités sans éclat. Il enseigne que le silence peut être fort, l'obéissance féconde et le travail ordinaire sanctifié.
$desc$),
('saint-turibius-of-mongrovejo-bishop', 'Saint Turibe de Mogrovejo, évêque', $desc$
La fête de saint Turibe de Mogrovejo commémore un évêque dont le zèle pastoral contribua à façonner l'Église dans les Amériques à une époque missionnaire décisive. Sa mémoire honore une charité épiscopale qui refusa la distance et choisit d'aller chercher le troupeau à travers des territoires immenses et difficiles.

Sur le plan théologique, la fête met en lumière l'évêque comme pasteur, enseignant et défenseur de la dignité humaine. Turibe comprit sa charge non comme une administration lointaine, mais comme présence personnelle, catéchèse, soin sacramentel et protection des plus vulnérables.

Comme archevêque de Lima à la fin du XVIe siècle, il entreprit d'épuisantes visites pastorales, promut la formation du clergé et convoqua le troisième concile de Lima, qui influença l'évangélisation de l'Amérique latine durant des générations.

Aujourd'hui, sa fête parle particulièrement aux évêques, aux pasteurs et aux missionnaires appelés à unir la clarté doctrinale à la proximité envers les pauvres et les marginaux.
$desc$),
('the-annunciation-of-the-lord', 'Annonciation du Seigneur', $desc$
Cette fête commémore l'Annonciation, l'instant où le Verbe éternel prit chair dans le sein de la Vierge Marie à son libre consentement au message de l'ange. Elle célèbre le commencement même de l'Incarnation : le Fils de Dieu entrant réellement dans l'histoire humaine et dans la nature humaine.

Au centre théologique de la fête se tient le mystère même du salut. Le fiat de Marie révèle l'obéissance de la foi, tandis que la conception du Christ marque l'union des natures divine et humaine dans l'unique personne du Verbe.

La célébration est connue en Orient comme en Occident depuis les siècles anciens et fut fixée neuf mois avant Noël. Sa place dans la dévotion s'est encore renforcée par l'Angélus et par la méditation de l'Église sur la sainteté de la vie dès la conception.

Pour les croyants d'aujourd'hui, l'Annonciation demeure une école d'attention et d'abandon à Dieu. Le oui de Marie continue d'enseigner à l'Église comment accueillir la grâce et recevoir la vocation.
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
Hoc festum sanctum Casimirum commemorat, iuvenem principem cuius sanctitas non in prosperitate politica sed in castitate, oratione et a mundanis ambitionibus alienatione apparuit. Eius memoria talem sanctitatis formam proponit in qua dignitas regalis humilitate purificatur et Christo servit.

In corde festi veritas evangelica stat veram regalitatem in obsequioso servitio coram Deo consistere. Castitas Casimiri, simplicitas vitae et devotio erga beatam Virginem Mariam libertatem interiorem manifestant quam nulla aulae privilegia superare possunt.

Devotio erga Casimirum cito post mortem eius anno 1484 increvit, praesertim in Polonia et Lithuania, ubi ut patronus et exemplar dilectus est. Canonizatio eius famam sanctitatis confirmavit eo admirabiliorem quod in iuventute et inter publicas exspectationes floruerat.

Pro Ecclesia hodierna, Casimirus validum testimonium manet iuvenibus atque iis qui auctoritatem exercent. Monet sanctitatem etiam inter privilegia et officia florere posse.
$desc$),
('saints-perpetua-and-felicity-martyrs', 'Sanctae Perpetua et Felicitas, Martyres', $desc$
Hoc festum sanctas Perpetuam et Felicitatem commemorat, quarum martyrium ab antiquissimis saeculis inter vividissima testimonia fortitudinis christianae custoditur. Earum memoria unam matronam nobilem et alteram servam simul retinet, novam fraternitatem in Christo creatam manifestans.

Theologice festum in martyrio tamquam plena configuratione ad Dominum crucifixum consistit. Perpetua et Felicitas ostendunt distinctiones terrenas in baptismo ultimam vim amittere, cum omnes filii Dei fiant atque ad eandem fidelitatem vocentur.

Mors earum Carthagine anno 203 nota est per Passionem Sanctarum Perpetuae et Felicitatis, unum e pretiosissimis textibus litterarum christianarum antiquarum. Nomina earum in Canonem Romanum recepta sunt, signum eximiae venerationis quam antiqua Ecclesia eis tribuit.

Hodie festum praesertim christianis persecutionem patientibus ac cunctis de pretio fidelitatis cogitantibus magna vi loquitur. Simul testimonium mulierum honorat quarum maternitas, vulnerabilitas et fortitudo loca gratiae fuerunt.
$desc$),
('saint-john-of-god-religious', 'Sanctus Ioannes a Deo, Religiosus', $desc$
Festum sancti Ioannis a Deo virum honorat cuius admiranda conversio in plenissimum ministerium erga aegrotos, pauperes et derelictos effluxit. Eius memoria caritatem celebrat qua Christus in iis qui facile neglegi possunt agnoscitur et ministratur.

In centro theologico festi stat identificatio Domini cum afflictis: quod infirmis fit, ipsi Christo fit. Vita Ioannis a Deo demonstrat curam corporis Evangelio numquam alienam esse, sed unam ex eius luculentissimis expressionibus fieri posse.

Natus in Lusitania et Granatae transformatus, Ioannes socios collegit qui Fratres Hospitalarios effecerunt, compassioni suae formam institutionalem tribuens. Eius sanctitas iam diu cum cura Ecclesiae pro hospitalibus, curatoribus et iis qui corpore vel mente patiuntur coniungitur.

Christianis hodiernis festum eius omnes in medicina, cappellania et operibus misericordiae laborantes confirmat. Simul universam Ecclesiam monet conversionem amore in res practicas verso probari.
$desc$),
('saint-frances-of-rome-religious', 'Sancta Francisca Romana, Religiosa', $desc$
Hoc festum sanctam Franciscam Romanam commemorat, cuius sanctitas intra matrimonium, maternitatem, orationem et ministerium pauperum formata est antequam etiam in manifestiore forma vitae religiosae effloresceret. Eius memoria testimonium est sanctitatem in domesticis officiis non minus vere quam in claustro maturescere posse.

Centrum theologicum festi est universalis vocatio ad sanctitatem in ordinariis vitae statibus exercita. Francisca contemplationem cum gravibus officiis familiaribus coniunxit atque ostendit caritatem vitam domesticam transfigurare posse potius quam cum ea contendere.

Romae temporibus turbidis initii saeculi quinti decimi vivens, Francisca fidelitatem erga familiam cum fundatione communitatis oblatarum orationi et operibus caritatis addictarum coniunxit. Canonizatio eius famam sanctitatis confirmavit quae simul in ministerio concreto et in altitudine mystica radicabatur.

Hodie festum eius spem praebet coniugibus, parentibus, viduis atque fidelibus laicis Deum inter laborem, lassitudinem et responsabilitates quaerentibus. Francisca ostendit gratiam domum, viam et loca absconditi sacrificii quotidiani replere posse.
$desc$),
('saint-patrick-bishop', 'Sanctus Patricius, Episcopus', $desc$
Festum sancti Patricii episcopum missionarium honorat cuius praedicatio cum identitate christiana Hiberniae inseparabilis facta est. Vita eius tamquam insigne exemplum servatur quo gratia dolorem personalem in fructum apostolicum pro universo populo convertit.

Theologice testimonium Patricii ostendit quomodo providentia divina captivitatem in missionem transformare possit. Terra servitutis eius campus reditus evangelici facta est, neque vulnera vitae prioris abolita sed redempta sunt.

Ipsa Confessio Patricii necnon Epistula ad Coroticum eum posteris propria voce singulariter praesentem faciunt. Per illa scripta Ecclesia audit episcopum humilitatem, convictionem scripturalem, zelum animarum et profundam in Deo dependentiam coniungentem.

Hodie Patricius patronus missionariorum manet et punctum referentiae communitatibus fide Hibernica per orbem formatis. Festum eius christianos invitat ut Evangelium in loca dolore, alienatione vel resistentia signata afferant.
$desc$),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', 'Sanctus Cyrillus Hierosolymitanus, Episcopus et Ecclesiae Doctor', $desc$
Hoc festum sanctum Cyrillum Hierosolymitanum, episcopum et Ecclesiae Doctorem, commemorat, cuius doctrina inter clarissimas fenestras in fidem et cultum Ecclesiae antiquae numeratur. Eius memoria pastorem honorat qui catechumenos et neophytos patientia, doctrinali perspicuitate et profunditate liturgica formavit.

Theologice festum circa mystagogiam versatur, id est munus Ecclesiae credentes in mysteria quae celebrant introducendi. Catecheses Cyrilli Symbolum, baptismum et Eucharistiam ita explicant ut doctrina et experientia sacramentalis inseparabiliter coniungantur.

Ut episcopus Hierosolymorum saeculo quarto, Cyrillus inter conflictus theologicos exsilia passus est, fidem tamen apostolicam fideliter tradere non destitit. Eius scripta eum classicum ducem theologiae liturgicae et initiationis christianae fecerunt.

Pro Ecclesia hodierna, Cyrillus maxime opportunus est ubicumque catechumeni, conversi et adulti in fide formantur. Pastores et doctores monet doctrinam maximam claritatem attingere cum ex ipsa vita liturgica traditur.
$desc$),
('saint-joseph-spouse-of-the-blessed-virgin-mary', 'Sanctus Ioseph, Sponsus Beatae Mariae Virginis', $desc$
Hoc festum sanctum Ioseph honorat, virum iustum electum ut sponsus virginalis Mariae et custos Iesu esset. Eius memoria sanctitatem contemplatur quae non in verbis relatis aut miraculis publicis, sed in silentiosa oboedientia, amore tutelari et constanti promptitudine ad voluntatem Dei perficiendam exprimitur.

Theologice vocatio Ioseph paternitatem revelat totam in ministerium mysterii Incarnationis positam. In eo Ecclesia videt quomodo iustitia in auscultatione, fiducia, labore et fidelitate in rebus occultis vivatur.

Devotio erga Ioseph in Ecclesia Latina paulatim crevit et ad universale Ecclesiae patrocinium pervenit. Incrementum cultus eius profundiori contemplationi annorum occultorum Nazareth atque dignitatis laboris et vitae familiaris respondet.

Hodie Ioseph exemplar manet patribus, operariis, coniugibus et omnibus qui officia sine plausu sustinent carum. Docet silentium posse esse forte, oboedientiam fecundam, et laborem ordinarium sanctum.
$desc$),
('saint-turibius-of-mongrovejo-bishop', 'Sanctus Turibius de Mongrovejo, Episcopus', $desc$
Festum sancti Turibii de Mongrovejo commemorat episcopum cuius zelus pastoralis Ecclesiam in Americis tempore missionario maximi momenti efformare adiuvit. Eius memoria caritatem episcopalem honorat quae distantiam recusavit et gregem per immensas ac difficiles regiones quaerere elegit.

Theologice festum episcopum ut pastorem, doctorem et defensorem dignitatis humanae illustrat. Turibius officium suum non quasi remota administratio, sed quasi praesentia personalis, catechesis, cura sacramentalis atque tutela vulnerabilium intellexit.

Ut archiepiscopus Limanus exeunte saeculo sexto decimo, visitationes pastorales laboriosissimas suscepit, formationem cleri promovit et Concilium Limense Tertium convocavit, quod evangelizationem Americae Latinae per multas generationes informavit.

Hodie festum eius maxime episcopis, pastoribus et missionariis loquitur vocatis ut doctrinalem claritatem cum proximitate ad pauperes et marginatos coniungant.
$desc$),
('the-annunciation-of-the-lord', 'Annuntiatio Domini', $desc$
Hoc festum Annuntiationem commemorat, momentum quo Verbum aeternum in utero Virginis Mariae ad liberum eius consensum nuntio angelico datum carnem assumpsit. Celebrat ipsum initium Incarnationis: Filium Dei vere in historiam humanam et in naturam humanam ingredientem.

In centro theologico festi stat mysterium salutis. Fiat Mariae oboedientiam fidei revelat, dum conceptio Christi unionem naturae divinae et humanae in una Verbi persona signat.

Celebratio ab antiquis saeculis in Oriente et Occidente nota fuit atque novem mensibus ante Nativitatem fixa est. Locus eius in devotione per Angelum Domini et per Ecclesiae considerationem sanctitatis vitae ab ipsa conceptione roboratus est.

Credentibus hodiernis Annuntiatio schola attentionis et Dei voluntati se tradendi manet. Fiat Mariae Ecclesiam adhuc docet quomodo gratia recipiatur et quomodo vocatio accipiatur.
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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-casimir', $desc$
In the Roman General Calendar Saint Casimir is observed on 4 March as an optional memorial with white vestments. Because the date almost always falls during Lent, the celebration is usually shaped by the Lenten discipline governing optional memorials.

In practice the saint may be omitted or commemorated with his proper collect while the Mass and Office remain largely of the Lenten day.
$desc$),
('saints-perpetua-and-felicity-martyrs', $desc$
Saints Perpetua and Felicity are celebrated on 7 March as an obligatory memorial with red vestments. Because the date normally falls during Lent, the Roman observance is often adapted according to the Lenten norms for saints' days.

Their names in the Roman Canon give the celebration unusual resonance even when the weekday Lenten framework remains prominent.
$desc$),
('saint-john-of-god-religious', $desc$
Saint John of God is kept on 8 March as an optional memorial with white vestments. In most years the day falls in Lent, so the celebration is ordinarily modest and subject to the current Roman rules for optional memorials in that season.

This Lenten setting gives a fitting pastoral accent to a saint known for mercy toward the sick and abandoned.
$desc$),
('saint-frances-of-rome-religious', $desc$
Saint Frances of Rome is observed on 9 March as an optional memorial with white vestments. Because the date usually falls in Lent, the celebration commonly yields in large measure to the weekday office and Mass of the season.

That restraint suits a saint whose witness was formed in hidden domestic fidelity and quiet service.
$desc$),
('saint-patrick-bishop', $desc$
Saint Patrick is kept on 17 March as an optional memorial with white vestments. When the date falls in Lent, the modern Roman observance is generally celebrated with the sobriety proper to the season, though places of Irish heritage often mark it more prominently.

The universal Roman calendar thus keeps Patrick in a modest rank while leaving room for much stronger celebration in particular calendars.
$desc$),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', $desc$
Saint Cyril of Jerusalem is observed on 18 March as an optional memorial with white vestments. His date in the heart of Lent gives his Roman observance a natural connection with catechumens and the Church's preparation for Easter.

Even a restrained Lenten commemoration of Cyril can carry strong catechetical value because of his classic teaching on baptism and the Eucharist.
$desc$),
('saint-turibius-of-mongrovejo-bishop', $desc$
Saint Turibius of Mongrovejo is kept on 23 March as an optional memorial with white vestments. The current Roman date differs from older placements and intentionally brings the observance close to the actual anniversary of his death.

Because the day normally falls in Lent, the memorial is generally simple in practice, yet it gives the Roman calendar an important Latin American missionary bishop within the season.
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
('saint-casimir', $desc$
Dans le calendrier romain général, saint Casimir est observé le 4 mars comme mémoire facultative avec les ornements blancs. Comme cette date tombe presque toujours pendant le Carême, la célébration est généralement modelée par la discipline quadragésimale qui régit les mémoires facultatives.

En pratique, le saint peut être omis ou commémoré par sa collecte propre tandis que la messe et l'office demeurent largement ceux du jour de Carême.
$desc$),
('saints-perpetua-and-felicity-martyrs', $desc$
Les saintes Perpétue et Félicité sont célébrées le 7 mars comme mémoire obligatoire avec les ornements rouges. Parce que cette date tombe normalement pendant le Carême, l'observance romaine est souvent adaptée selon les normes quadragésimales applicables aux fêtes des saints.

Leurs noms dans le Canon romain donnent à la célébration une résonance particulière même lorsque le cadre liturgique du jour de Carême demeure dominant.
$desc$),
('saint-john-of-god-religious', $desc$
Saint Jean de Dieu est célébré le 8 mars comme mémoire facultative avec les ornements blancs. La date tombant la plupart du temps pendant le Carême, la célébration reste habituellement modeste et soumise aux règles romaines actuelles pour les mémoires facultatives de cette saison.

Ce contexte quadragésimal donne un accent pastoral très juste à un saint connu pour sa miséricorde envers les malades et les abandonnés.
$desc$),
('saint-frances-of-rome-religious', $desc$
Sainte Françoise de Rome est observée le 9 mars comme mémoire facultative avec les ornements blancs. Comme la date tombe habituellement pendant le Carême, la célébration cède souvent en grande partie la place à la messe et à l'office du jour.

Cette retenue convient à une sainte dont le témoignage s'est formé dans la fidélité domestique cachée et le service discret.
$desc$),
('saint-patrick-bishop', $desc$
Saint Patrick est célébré le 17 mars comme mémoire facultative avec les ornements blancs. Lorsque cette date tombe pendant le Carême, l'observance romaine moderne est généralement marquée par la sobriété propre à la saison, même si les lieux d'héritage irlandais la célèbrent souvent avec davantage d'ampleur.

Le calendrier romain universel garde ainsi Patrick à un rang modeste tout en laissant la possibilité d'une célébration beaucoup plus forte dans des calendriers particuliers.
$desc$),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', $desc$
Saint Cyrille de Jérusalem est observé le 18 mars comme mémoire facultative avec les ornements blancs. Sa date, au cœur du Carême, donne à son observance romaine un lien naturel avec les catéchumènes et la préparation de l'Église à Pâques.

Même une commémoration quadragésimale discrète de Cyrille peut porter une forte valeur catéchétique en raison de son enseignement sur le baptême et l'Eucharistie.
$desc$),
('saint-turibius-of-mongrovejo-bishop', $desc$
Saint Turibe de Mogrovejo est célébré le 23 mars comme mémoire facultative avec les ornements blancs. La date romaine actuelle diffère d'emplacements plus anciens et rapproche volontairement l'observance de l'anniversaire réel de sa mort.

Comme ce jour tombe normalement pendant le Carême, la mémoire est en pratique généralement simple, mais elle donne au calendrier romain la figure importante d'un évêque missionnaire d'Amérique latine.
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
('saint-casimir', $desc$
In Calendario Romano Generali sanctus Casimirus die quarto Martii ut memoria ad libitum cum vestibus albis observatur. Quia haec dies fere semper intra Quadragesimam cadit, celebratio plerumque disciplina Quadragesimali formatur quae memorias ad libitum moderatur.

Re vera sanctus omitti potest vel per propriam collectam commemorari, dum Missa et Officium magna ex parte de feria Quadragesimae manent.
$desc$),
('saints-perpetua-and-felicity-martyrs', $desc$
Sanctae Perpetua et Felicitas die septima Martii ut memoria obligatoria cum vestibus rubris celebrantur. Quia haec dies plerumque intra Quadragesimam incidit, observantia Romana saepe iuxta normas quadragesimales de sanctorum diebus aptatur.

Nomina earum in Canone Romano celebrationi peculiarem resonantiam dant etiam cum compages liturgica feriae Quadragesimalis praevaleat.
$desc$),
('saint-john-of-god-religious', $desc$
Sanctus Ioannes a Deo die octava Martii ut memoria ad libitum cum vestibus albis servatur. Cum dies in plurimis annis intra Quadragesimam cadat, celebratio ordinarie modesta est et normis Romanis de memoriis ad libitum huius temporis subicitur.

Haec collocatio quadragesimalis congruum accentum pastoralem tribuit sancto misericordia erga aegrotos et derelictos noto.
$desc$),
('saint-frances-of-rome-religious', $desc$
Sancta Francisca Romana die nona Martii ut memoria ad libitum cum vestibus albis observatur. Quia dies regulariter intra Quadragesimam occurrit, celebratio saepe magna ex parte Missae atque Officio feriae cedit.

Haec moderatio sanctae convenit cuius testimonium in fidelitate domestica abscondita et quieto ministerio formatum est.
$desc$),
('saint-patrick-bishop', $desc$
Sanctus Patricius die decima septima Martii ut memoria ad libitum cum vestibus albis celebratur. Cum haec dies intra Quadragesimam incidat, observantia Romana moderna sobriam indolem temporis plerumque retinet, quamvis loca traditionis Hibernicae eam saepe maiore sollemnitate agant.

Calendarium Romanum universale ita Patricium modesto gradu servat, relicto tamen spatio celebrationi fortiori in calendariis particularibus.
$desc$),
('saint-cyril-of-jerusalem-bishop-and-doctor-of-the-church', $desc$
Sanctus Cyrillus Hierosolymitanus die decima octava Martii ut memoria ad libitum cum vestibus albis observatur. Dies eius in medio Quadragesimae observantiae Romanae naturalem nexum cum catechumenis et Ecclesiae praeparatione ad Pascha tribuit.

Etiam temperata commemoratio quadragesimalis Cyrilli magnum valorem catecheticum ferre potest propter doctrinam eius de baptismo et Eucharistia.
$desc$),
('saint-turibius-of-mongrovejo-bishop', $desc$
Sanctus Turibius de Mongrovejo die vicesima tertia Martii ut memoria ad libitum cum vestibus albis servatur. Dies Romanus hodiernus a collocationibus vetustioribus differt atque observantiam anniversario ipsius mortis propius admovet.

Quia dies normaliter intra Quadragesimam cadit, memoria in usu simplicior esse solet; nihilominus magnum episcopum missionarium Americae Latinae in calendario Romano reddit praesentem.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-joseph-spouse-of-the-blessed-virgin-mary', $desc$
In the Roman General Calendar Saint Joseph is celebrated as a solemnity with white vestments, ordinarily associated with 19 March. The current Roman system treats it as an almost fixed observance, but transfers it when necessary so that Holy Week and the Easter Octave are not displaced.

Because of its solemn rank, the celebration stands out within Lent and remains one of the principal annual observances of Saint Joseph in the modern Roman rite.
$desc$),
('the-annunciation-of-the-lord', $desc$
The Annunciation of the Lord is celebrated in the Roman General Calendar as a solemnity with white vestments, ordinarily on 25 March. In the present Roman calendar it is transferred when Holy Week or the Easter Octave would impede its celebration, preserving the feast's full character without conflict with the Paschal mysteries.

The Roman observance highlights the date's traditional placement nine months before Christmas and gives the mystery of the Incarnation one of its most prominent annual celebrations.
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
('saint-joseph-spouse-of-the-blessed-virgin-mary', $desc$
Dans le calendrier romain général, saint Joseph est célébré comme solennité avec les ornements blancs, ordinairement liée au 19 mars. Le système romain actuel le traite comme une observance presque fixe, mais le transfère lorsque cela est nécessaire afin de ne pas déplacer la Semaine sainte ou l'octave de Pâques.

En raison de son rang de solennité, cette célébration se détache fortement à l'intérieur du Carême et demeure l'une des principales observances annuelles de saint Joseph dans le rite romain moderne.
$desc$),
('the-annunciation-of-the-lord', $desc$
L'Annonciation du Seigneur est célébrée dans le calendrier romain général comme solennité avec les ornements blancs, ordinairement le 25 mars. Dans le calendrier romain actuel, elle est transférée lorsque la Semaine sainte ou l'octave de Pâques empêcherait sa célébration, afin d'en préserver tout le caractère sans conflit avec les mystères pascals.

L'observance romaine met en relief la place traditionnelle de cette date neuf mois avant Noël et donne au mystère de l'Incarnation l'une de ses plus grandes célébrations annuelles.
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
('saint-joseph-spouse-of-the-blessed-virgin-mary', $desc$
In Calendario Romano Generali sanctus Ioseph ut sollemnitas cum vestibus albis celebratur, ordinarie cum die undevicesima Martii coniuncta. Ratio Romana hodierna eam quasi observantiam fere fixam tractat, sed transfert ubi necesse est, ne Hebdomada Sancta vel Octava Paschae impediatur.

Propter gradum sollemnitatis haec celebratio intra Quadragesimam eminenter apparet atque una ex praecipuis annuis observantiis sancti Ioseph in ritu Romano moderno manet.
$desc$),
('the-annunciation-of-the-lord', $desc$
Annuntiatio Domini in Calendario Romano Generali ut sollemnitas cum vestibus albis celebratur, ordinarie die vicesima quinta Martii. In calendario Romano praesenti transfertur si Hebdomada Sancta vel Octava Paschae celebrationem impediret, ut plena indoles festi sine conflictu cum mysteriis paschalibus servetur.

Observantia Romana traditionale huius diei locum novem mensibus ante Nativitatem extollit atque mysterio Incarnationis unam ex praecipuis annuis celebrationibus tribuit.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

-- =========================================================
-- Roman General Calendar - April (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
