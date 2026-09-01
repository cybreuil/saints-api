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
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', 'Saint Gregory the Great, Pope and Doctor of the Church', $desc$
Saint Gregory the Great stands among the most consequential figures of the early medieval Church, a Roman aristocrat who abandoned a promising civil career to become a monk and was later drawn, reluctantly, into the papacy. He is one of only two popes, together with Leo the Great, to bear the title "the Great," a distinction that reflects the breadth of his influence over the Western Church's governance, liturgy, and spirituality.

His enduring self-description as servus servorum Dei, the servant of the servants of God, captures a theology of authority as service that he embodied and bequeathed to his successors. For Gregory the shepherd's office was a burden borne for others, and his Pastoral Rule taught bishops that the care of souls demands both contemplative depth and practical discernment.

Elected in 590 amid plague, famine, and the Lombard threat, he administered the vast papal patrimony for the relief of the poor, negotiated with invaders to spare Rome, and in 596 dispatched Augustine of Canterbury to evangelize the English. His reorganization of Roman worship and chant gave lasting shape to Western liturgy, and the chant tradition later bore his name.

His witness continues to commend to pastors and leaders a competence placed wholly at the service of humility and mercy, a reminder that authority in the Church exists only for the good of those entrusted to it.
$desc$),
('saint-teresa-of-calcutta-virgin', 'Saint Teresa of Calcutta, Virgin', $desc$
Saint Teresa of Calcutta ranks among the most recognizable witnesses of charity in the modern world, an Albanian-born religious sister who spent her life in the direct, unglamorous service of the dying and the destitute on the streets of Calcutta.

At the heart of her vocation lay the conviction that Christ is truly encountered in the disguise of the poorest, the abandoned, and the dying, whom she served as though serving him. Her posthumously revealed decades of interior darkness, endured without abandoning her mission, have become a powerful testimony that faith can persevere even without the felt consolation of God's nearness.

Born Anjezë Gonxhe Bojaxhiu in 1910, she taught for years as a Loreto sister before founding the Missionaries of Charity in 1950 to serve those whom society had discarded. Her work spread worldwide, and she received the Nobel Peace Prize in 1979. She died in 1997 and was canonized by Pope Francis in 2016, remarkably soon after her death.

Her example calls the faithful to seek Christ among the most abandoned, and offers particular consolation to those who labor in spiritual dryness, showing that fidelity in darkness can itself be a hidden holiness.
$desc$),
('the-nativity-of-the-blessed-virgin-mary', 'The Nativity of the Blessed Virgin Mary', $desc$
The Nativity of the Blessed Virgin Mary celebrates the birth of the Mother of God, one of only three birthdays honored in the Church's calendar alongside those of Christ and John the Baptist. That the Church marks Mary's very entrance into the world signals how closely her life is bound to the mystery of redemption.

Her birth is proclaimed not as a private family joy but as the dawning of hope for the whole human race, for she is the one conceived without sin in view of her singular vocation as Mother of the Redeemer, through whom the Sun of Justice would rise upon the world.

The feast has ancient roots in Jerusalem, where a church was built on the traditional site of Mary's birth near the Pool of Bethesda, and it spread to Rome by the seventh century, among the earliest Marian feasts of the Western calendar. Its date, nine months after the Immaculate Conception of December 8, reflects the Church's traditional way of coordinating the great Marian feasts.

The celebration invites the faithful to rejoice in the hope Mary's birth represents for all humanity, seeing in her earliest days a foreshadowing of the grace that would flower fully at the Annunciation and beyond.
$desc$),
('saint-peter-claver-priest', 'Saint Peter Claver, Priest', $desc$
Saint Peter Claver was a seventeenth-century Spanish Jesuit who gave four decades of his life to the enslaved Africans arriving in the great slave-trading port of Cartagena, styling himself "the slave of the slaves forever."

His ministry embodied the Gospel's insistence that Christ is present in the most thoroughly dehumanized, and it stands as a lasting rebuke to any Christian complicity with the institution of slavery. He brought not only food, medicine, and the sacraments but the assertion of a dignity the slave trade sought to deny.

Claver arrived in Cartagena in 1610 and boarded the slave ships as they docked, ministering personally to their captives and baptizing many thousands over his years of labor. He died in 1654, was canonized in 1888, and Pope Leo XIII declared him patron of missionary work among enslaved peoples.

His witness confronts the Church with the memory of its complicity in slavery while summoning the faithful to recognize and resist every contemporary form of human trafficking and exploitation.
$desc$),
('the-most-holy-name-of-mary', 'The Most Holy Name of Mary', $desc$
This celebration honors the name of the Mother of God itself, venerating the very word through which the faithful most often call upon her. It stands in deliberate parallel to the older devotion to the Holy Name of Jesus, underscoring how intimately the Church joins mother and Son.

Behind the devotion lies the ancient conviction that a name carries real spiritual weight. Mary's name, variously interpreted across the centuries, has become for countless generations a refuge invoked in need, so that to call on her name is to entrust oneself to the whole reality of her maternal intercession.

The feast arose in Spain in the late sixteenth century and was extended to the universal Church by Pope Innocent XI in 1683 in thanksgiving for the relief of Vienna from the Ottoman siege, a deliverance attributed to Mary's intercession under this title. Its liturgical history reflects the persistence of Marian devotion in popular prayer and in the Church's public worship.

It invites the faithful to invoke Mary's name with confidence in every necessity, trusting that so simple an act of piety carries within it the fullness of her motherly care.
$desc$),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', 'Saint John Chrysostom, Bishop and Doctor of the Church', $desc$
Saint John Chrysostom is remembered as one of the greatest preachers in Christian history, his very surname—"golden-mouthed"—a tribute to an eloquence placed wholly at the service of the Gospel and of the poor.

He insisted relentlessly that authentic worship cannot be separated from concrete care for the needy, warning that to adorn the altar while neglecting the poor makes a mockery of the Eucharist celebrated upon it. His scriptural homilies, especially on Saint Paul, remain foundational for the Church's biblical and moral theology.

As Archbishop of Constantinople from 397, his fearless preaching against corruption, including that of the imperial court under Empress Eudoxia, led to his exile in 404 on trumped-up charges. He died in exile in 407, and his vindication came when his relics were solemnly returned to Constantinople in 438.

His witness challenges preachers and the whole Church to unite bold proclamation of the truth with unwavering solidarity with the poor, and it honors the courage to speak uncomfortable truths even to the powerful.
$desc$),
('the-exaltation-of-the-holy-cross', 'The Exaltation of the Holy Cross', $desc$
The Exaltation of the Holy Cross celebrates the great paradox at the heart of Christian faith: that the cross, an instrument of shameful execution, has become through Christ's death and resurrection the very sign of glory and salvation—exalted rather than despised.

The feast invites the faithful to look upon the crucified Christ not with mere sorrow but with hope, for it is precisely through the Cross that joy has entered the world. To exalt the Cross is to confess that redemption came by way of self-emptying love, and that the path of suffering embraced in faith opens onto glory.

The observance originated with the dedication of the Basilica of the Holy Sepulchre in Jerusalem in 335, built by order of Constantine on the sites of the crucifixion and resurrection, where his mother Saint Helena was traditionally said to have discovered relics of the true Cross. It gained new depth in the seventh century when the Emperor Heraclius recovered the relic from the Persians and restored it to Jerusalem in a celebrated procession. The feast's liturgical tradition has long given it exceptional prominence among celebrations of the Lord's saving work.

The feast summons believers to take up their own crosses in union with Christ's, trusting that suffering accepted in faith is never the final word but the very road by which glory is reached.
$desc$),
('our-lady-of-sorrows', 'Our Lady of Sorrows', $desc$
Our Lady of Sorrows contemplates the singular suffering endured by Mary throughout her Son's life and above all at the foot of the Cross. The devotion keeps the Mother's compassion inseparably joined to the Passion of her Son.

The devotion gathers Mary's grief around her Seven Sorrows, from Simeon's prophecy of the piercing sword to the burial of her Son, recognizing that her suffering-with Christ gives her a unique share in the work of redemption as the spiritual mother of all believers. Her sorrow is never despair but faith-filled endurance, uniting perfect trust in God with the full reality of a mother's grief.

Devotion to Mary's sorrows flourished especially among the Servite Order from the thirteenth century onward. Once observed on the Friday before Palm Sunday, the feast was assigned its present date and extended to the universal Church in the 1969 reform, placed immediately after the Exaltation of the Cross to make their connection unmistakable.

It invites all who suffer, and grieving parents in particular, to find in Mary a companion who knows sorrow from within, without ever losing the hope that transforms all suffering united to Christ's redemptive Passion.
$desc$),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'Saints Cornelius, Pope, and Cyprian, Bishop, Martyrs', $desc$
This joint memorial honors two mid-third-century martyrs and close friends, Pope Cornelius of Rome and Bishop Cyprian of Carthage, whose common witness addressed one of the earliest and most painful controversies in the Church's life.

Together they defended the readmission to communion of Christians who had lapsed under persecution but sincerely repented, against a rigorist faction that would have excluded them permanently. Their friendship and shared stand show how episcopal collegiality, exercised even across the distance from Rome to Carthage, can safeguard both the truth of the Gospel and the possibility of mercy for the repentant.

Cornelius was exiled and died of the hardships of banishment around 253; Cyprian, a prolific writer whose treatises on Church unity remain influential, was beheaded in the persecution of Valerian in 258. Much of their correspondence survives, offering rare insight into the pastoral and theological struggles of the mid-third-century Church.

Their shared feast commends the balance they sought between fidelity to truth and openness to mercy, and it honors the collaborative exercise of ministry across the wider Church.
$desc$),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 'Saint Robert Bellarmine, Bishop and Doctor of the Church', $desc$
Saint Robert Bellarmine was a Jesuit cardinal and Doctor of the Church renowned for his clear, systematic defense of Catholic teaching amid the upheavals of the Reformation, a controversialist admired even by opponents for his fairness.

His monumental Disputations engaged Protestant objections with rigor and unusual courtesy, becoming the standard reference for Catholic apologetics for generations. Yet the same mind composed simple catechisms for ordinary believers, showing that sophisticated theological argument and the plain instruction of children can spring from a single pastoral heart.

Bellarmine entered the Society of Jesus in 1560, taught at the Roman College, and was made a cardinal in 1599. He later played a delicate role in the Galileo affair, seeking to balance theological caution with openness to scientific inquiry. He died in 1621, was canonized in 1930, and was declared a Doctor of the Church the following year.

His memory honors the vocation of theologians who defend the faith with both rigor and charity, and commends the effort to make sound doctrine accessible to believers at every level of learning.
$desc$),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 'Saint Hildegard of Bingen, Virgin and Doctor of the Church', $desc$
Saint Hildegard of Bingen was a twelfth-century Benedictine abbess whose gifts as mystic, composer, naturalist, and correspondent make her one of the most remarkable figures of the medieval Church.

Her visionary theology, recorded in major works, flowed together with an extensive body of liturgical music still sung today, treatises on medicine and the natural world, and a vast correspondence with popes and emperors. Her confidence in voicing prophetic insight as a woman religious witnesses to the breadth of gifts the Spirit can raise up within the consecrated life.

Given to the Church as a child oblate, she became abbess of her own community at Rupertsberg, wrote prolifically, and undertook preaching journeys highly unusual for a woman of her age. She died in 1179; her long-standing cult was formally confirmed in 2012, the same year Pope Benedict XVI declared her a Doctor of the Church.

Her witness celebrates the union of mystical prayer, artistic creativity, and practical wisdom, and honors the Church's recognition, however belated, of the theological contribution of women religious across the centuries.
$desc$),
('saint-januarius-bishop-and-martyr', 'Saint Januarius, Bishop and Martyr', $desc$
Saint Januarius was a bishop of Benevento martyred in the early fourth century, best known today for the extraordinary devotion he still commands in Naples, of which he is principal patron.

Tradition holds that he was arrested and beheaded in the persecution of Diocletian for his fidelity to Christ, taking his place among the many bishop-martyrs of that age. His cult centers on a reputed relic of his blood, which the faithful believe periodically liquefies—a sign the devout read as a token of the saint's continuing intercession and protection over their city.

The historical details of his martyrdom are sparse and rest largely on later hagiographical tradition, yet devotion to him in Naples is attested from an early period and has continued unbroken for many centuries, making him one of the most beloved local patrons in the Catholic world.

His memory honors the enduring bond between a martyr and the local church that treasures him, showing how universal holiness can take deep and lasting root within a particular city and culture.
$desc$),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 'Saints Andrew Kim Tae-gon, Priest, Paul Chong Ha-sang, and Companions, Martyrs', $desc$
This memorial honors the first native Korean priest, Andrew Kim Tae-gon, the lay catechist Paul Chong Ha-sang, and a great company of companions martyred during the fierce persecutions that struck the Korean Church across the nineteenth century.

The Korean Church was born almost entirely from lay initiative, taking root through laypeople who had encountered Catholic teaching abroad decades before any priest arrived. That a community founded and sustained by ordinary believers produced so vast a multitude of martyrs stands as striking testimony to the endurance of a faith transmitted without institutional support.

Persecution recurred intermittently but often ferociously from 1791 to 1888, claiming thousands of lives. Of these martyrs, 103 were canonized together by Pope John Paul II in 1984 during his visit to Korea—the first canonization celebrated outside Rome in modern times.

Their witness honors the resilience of a Church upheld largely by lay fidelity, and it holds up the courage of ordinary believers as evidence that heroic faith belongs to every state of life.
$desc$),
('saint-matthew-apostle-and-evangelist', 'Saint Matthew, Apostle and Evangelist', $desc$
Saint Matthew, one of the Twelve and the traditional author of the first Gospel, was a tax collector called directly from his customs post to follow Christ—a man despised by his own people summoned to intimate discipleship.

The scene of his call, in which Jesus said simply "Follow me" and Matthew rose at once, embodies the very logic of the Gospel he would write: that Christ came not for the righteous but for sinners, and that no social stigma places anyone beyond the reach of his call.

Tradition identifies Matthew, also called Levi, as the author of the first canonical Gospel, composed with particular care to show Jewish readers how Christ fulfilled the Law and the Prophets. Ancient tradition holds that he preached after Pentecost in various regions and died a martyr, though the details of his death are not preserved with certainty.

His witness speaks powerfully to all who feel defined by their past or their reputation, holding up his abrupt and total response as an image of the transformation offered to every sinner who hears the Lord's invitation.
$desc$),
('saint-pius-of-pietrelcina-priest', 'Saint Pius of Pietrelcina, Priest', $desc$
Saint Pius of Pietrelcina, universally known as Padre Pio, was a twentieth-century Capuchin friar who bore the stigmata for some fifty years and became one of the most sought-after confessors of the modern era.

His visible sharing in the wounds of Christ's Passion, accepted with reluctance toward the attention it drew, was joined to a tireless ministry in the confessional, where he spent countless hours daily. His insistence on the sacrament of reconciliation, exercised with both firmness and deep compassion, placed extraordinary mystical gifts at the service of very ordinary pastoral care.

Born Francesco Forgione in 1887, he received the stigmata in 1918 at the friary of San Giovanni Rotondo, where he remained for the rest of his life and founded a major hospital, the House for the Relief of Suffering. He died in 1968 and was canonized by Pope John Paul II in 2002, becoming one of the most widely venerated saints of the contemporary Church.

His example renews appreciation for the sacrament of confession and reminds the faithful that genuine mystical gifts serve, above all, the ordinary care of souls in need of mercy.
$desc$),
('saints-cosmas-and-damian-martyrs', 'Saints Cosmas and Damian, Martyrs', $desc$
Saints Cosmas and Damian were twin brothers and physicians, martyred in the early fourth century and venerated since antiquity for practicing medicine without ever charging a fee.

Their freely given care, offered to all regardless of means, the Church holds up as an image of the gratuitousness of divine healing itself. Their martyrdom under Diocletian joined this witness of selfless service to the ultimate act of fidelity, uniting bodily healing and spiritual sacrifice in a single life.

The details of their martyrdom rest chiefly on ancient hagiographical tradition, but their veneration spread rapidly through East and West, and their names entered the Roman Canon among the martyrs invoked at Mass—a rare distinction reflecting the depth of their early cult.

Their memory honors physicians and all who practice the healing arts as a form of Christian charity, encouraging them to see their skill as a gift to be placed, like that of these brother physicians, at the service of the poor without regard for gain.
$desc$),
('saint-vincent-de-paul-priest', 'Saint Vincent de Paul, Priest', $desc$
Saint Vincent de Paul was a seventeenth-century French priest whose vast charitable works made him one of history's most influential apostles of practical charity, a founder whose institutional creativity multiplied the reach of Christian mercy.

He was convinced that authentic love of God must be verified in concrete service—to the poor, the sick, galley slaves, abandoned children, and victims of war—and he translated that conviction into lasting institutions rather than occasional almsgiving, teaching that charity must be both affective and effective.

Ordained in 1600, Vincent turned from clerical ambition to total dedication to the poor after ministering to a dying peasant. He founded the Congregation of the Mission in 1625 and, with Saint Louise de Marillac, the Daughters of Charity in 1633. He died in 1660, was canonized in 1737, and was later named patron of all works of charity by Pope Leo XIII.

His witness calls the whole Church to translate compassion into durable structures capable of serving the poor systematically, and he remains a touchstone for every later movement of organized Catholic charity.
$desc$),
('saint-wenceslaus-martyr', 'Saint Wenceslaus, Martyr', $desc$
Saint Wenceslaus was a tenth-century Duke of Bohemia, murdered by his own brother for his Christian piety and his efforts to strengthen the faith in his realm—a ruler venerated almost at once as a martyr.

Renowned for personal devotion and care for the poor, he labored to root Christianity more deeply among a still largely pagan nobility. His murder at his brother Boleslaus's instigation reveals the cost that fidelity to the Gospel can exact even from within one's closest family, when discipleship collides with the ambitions of power.

Wenceslaus ruled Bohemia from around 921 and was assassinated in 935. Quickly honored as a martyr, he became patron of the Czech nation, and his memory endures far beyond central Europe through the English carol "Good King Wenceslas," which celebrates his legendary generosity to the poor.

His witness is a sober reminder that fidelity to Christ can cost even rulers their lives at the hands of those closest to them, and it holds him up as a patron of Christian leadership exercised amid betrayal.
$desc$),
('saint-lawrence-ruiz-and-companions-martyrs', 'Saint Lawrence Ruiz and Companions, Martyrs', $desc$
This memorial honors the first Filipino martyr, Lawrence Ruiz, and his companions—missionaries and laypeople put to death in Japan during the ferocious anti-Christian persecutions of the seventeenth century.

Lawrence was a layman, husband, and father who had accompanied Dominican missionaries to Japan; discovering that a return home would expose him to false accusation, he chose instead to remain and share their martyrdom rather than abandon his companions in the faith. His witness shows that heroic fidelity is not reserved to clergy or religious but can be asked of any believer, often in circumstances beyond his choosing.

Ruiz and fifteen companions, Dominican friars and Japanese laypeople among them, were tortured and executed at Nagasaki between 1633 and 1637 at the height of the Tokugawa persecution. They were canonized together in 1987 by Pope John Paul II, Lawrence Ruiz becoming the first canonized saint of the Philippines.

Their witness honors the vast, often unrecorded multitude of lay believers who have suffered for Christ far from the centers of ecclesiastical attention, proof that heroic holiness belongs to every state of life.
$desc$),
('saints-michael-gabriel-and-raphael-archangels', 'Saints Michael, Gabriel and Raphael, Archangels', $desc$
This feast honors the three archangels named in Scripture, the great princes of the heavenly court whose distinct roles in salvation history the Church has venerated since antiquity. Together they display the variety of angelic service by which God protects, illumines, and guides his people.

Michael—"Who is like God"—is the warrior prince who defends God's people against the power of evil; Gabriel is the messenger who announced the Incarnation to Mary; and Raphael—"God heals"—guided the young Tobiah and restored his father's sight. Together they reveal the manifold ways divine providence acts: through protection, revelation, and healing.

Devotion to Michael has ancient roots in both East and West, with shrines dedicated to him since late antiquity, while the cults of Gabriel and Raphael, drawn respectively from the Gospel of Luke and the Book of Tobit, developed into their own separate feast days. Over time their distinct cults nourished a broader liturgical and devotional awareness of the archangels' shared ministry.

The feast invites the faithful to trust in the protection, guidance, and healing God extends through his angels, and reminds believers that the created order includes powerful spiritual allies wholly devoted to God's saving will.
$desc$),
('saint-jerome-priest-and-doctor-of-the-church', 'Saint Jerome, Priest and Doctor of the Church', $desc$
Saint Jerome was a Doctor of the Church whose translation of the Bible into Latin shaped Western biblical study, liturgy, and devotion for more than a thousand years—a brilliant, famously combative scholar wholly given to the Word of God.

His monumental Vulgate, rendered from the original Hebrew and Greek over decades of labor, became the standard biblical text of the Western Church. His often-quoted conviction that "ignorance of Scripture is ignorance of Christ" expresses the urgency he placed on direct, informed engagement with the sacred text as essential to Christian life.

Jerome studied in Rome, lived for a time as a hermit in the Syrian desert, served briefly as secretary to Pope Damasus I—who commissioned his translation work—and finally settled in Bethlehem, where he completed the Vulgate and wrote extensive commentaries until his death around 420. His fiery temperament and sharp controversies never diminished the towering value of his scholarship.

His witness calls the faithful to serious engagement with Sacred Scripture as the living Word of God, and honors the demanding, sometimes contentious labor that makes the Bible accessible across languages and centuries.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', 'Saint Grégoire le Grand, pape et docteur de l''Église', $desc$
Saint Grégoire le Grand compte parmi les figures les plus décisives de l'Église du haut Moyen Âge : aristocrate romain, il abandonna une carrière civile prometteuse pour se faire moine avant d'être appelé, à contrecœur, au souverain pontificat. Il est l'un des deux seuls papes, avec Léon le Grand, à porter le titre de « le Grand », marque de l'ampleur de son influence sur le gouvernement, la liturgie et la spiritualité de l'Église d'Occident.

Sa description de lui-même comme servus servorum Dei, serviteur des serviteurs de Dieu, résume une théologie de l'autorité comme service qu'il incarna et légua à ses successeurs. Pour Grégoire, la charge du pasteur était un fardeau porté pour autrui, et sa Règle pastorale enseigna aux évêques que le soin des âmes exige à la fois profondeur contemplative et discernement pratique.

Élu en 590 au milieu de la peste, de la famine et de la menace lombarde, il administra le vaste patrimoine pontifical pour le soulagement des pauvres, négocia avec les envahisseurs pour épargner Rome et envoya en 596 Augustin de Cantorbéry évangéliser l'Angleterre. Sa réorganisation du culte et du chant romains donna une forme durable à la liturgie occidentale, et la tradition du chant porta plus tard son nom.

Son témoignage continue de proposer aux pasteurs et aux responsables une compétence entièrement mise au service de l'humilité et de la miséricorde, rappelant que l'autorité dans l'Église n'existe que pour le bien de ceux qui lui sont confiés.
$desc$),
('saint-teresa-of-calcutta-virgin', 'Sainte Teresa de Calcutta, vierge', $desc$
Sainte Teresa de Calcutta compte parmi les témoins de la charité les plus reconnus du monde moderne : religieuse née en Albanie, elle passa sa vie au service direct et sans éclat des mourants et des indigents dans les rues de Calcutta.

Au cœur de sa vocation se trouvait la conviction que le Christ se rencontre véritablement sous le déguisement des plus pauvres, des abandonnés et des mourants, qu'elle servait comme si elle le servait lui-même. Les décennies d'obscurité intérieure révélées après sa mort, endurées sans jamais renoncer à sa mission, sont devenues un puissant témoignage que la foi peut persévérer même privée de la consolation sensible de la présence de Dieu.

Née Anjezë Gonxhe Bojaxhiu en 1910, elle enseigna des années durant comme sœur de Lorette avant de fonder en 1950 les Missionnaires de la Charité pour servir ceux que la société avait rejetés. Son œuvre se répandit dans le monde entier et elle reçut le prix Nobel de la paix en 1979. Elle mourut en 1997 et fut canonisée par le pape François en 2016, peu de temps après sa mort.

Son exemple appelle les fidèles à chercher le Christ chez les plus abandonnés et offre une consolation particulière à ceux qui peinent dans l'aridité spirituelle, montrant que la fidélité dans les ténèbres peut être elle-même une sainteté cachée.
$desc$),
('the-nativity-of-the-blessed-virgin-mary', 'Nativité de la Bienheureuse Vierge Marie', $desc$
La Nativité de la Bienheureuse Vierge Marie célèbre la naissance de la Mère de Dieu, l'un des trois seuls anniversaires de naissance honorés dans le calendrier de l'Église avec ceux du Christ et de Jean-Baptiste. Que l'Église marque l'entrée même de Marie dans le monde dit combien sa vie est liée au mystère de la rédemption.

Sa naissance est proclamée non comme une joie familiale privée mais comme l'aube de l'espérance pour toute la race humaine, car elle est celle qui fut conçue sans péché en vue de sa vocation singulière de Mère du Rédempteur, celle par qui le Soleil de Justice devait se lever sur le monde.

La fête a des racines anciennes à Jérusalem, où une église fut bâtie sur le site traditionnel de la naissance de Marie près de la piscine de Bethesda, et elle gagna Rome dès le VIIe siècle, parmi les plus anciennes fêtes mariales du calendrier occidental. Sa date, neuf mois après l'Immaculée Conception du 8 décembre, reflète la manière traditionnelle dont l'Église coordonne les grandes fêtes mariales.

La célébration invite les fidèles à se réjouir de l'espérance que la naissance de Marie représente pour toute l'humanité, voyant dans ses premiers jours une préfiguration de la grâce qui s'épanouirait pleinement à l'Annonciation et au-delà.
$desc$),
('saint-peter-claver-priest', 'Saint Pierre Claver, prêtre', $desc$
Saint Pierre Claver fut un jésuite espagnol du XVIIe siècle qui consacra quatre décennies de sa vie aux Africains réduits en esclavage arrivant dans le grand port négrier de Carthagène, se qualifiant lui-même de « serviteur des esclaves à jamais ».

Son ministère incarna l'affirmation évangélique que le Christ est présent chez les plus profondément déshumanisés, et il demeure un reproche durable à toute complicité chrétienne avec l'institution de l'esclavage. Il apportait non seulement nourriture, médecine et sacrements, mais la reconnaissance d'une dignité que la traite cherchait à nier.

Claver arriva à Carthagène en 1610 et montait à bord des navires négriers dès leur accostage, servant personnellement leurs captifs et en baptisant plusieurs milliers au fil de ses années de labeur. Il mourut en 1654, fut canonisé en 1888, et le pape Léon XIII le déclara patron de l'œuvre missionnaire auprès des peuples réduits en esclavage.

Son témoignage confronte l'Église au souvenir de sa complicité dans l'esclavage tout en appelant les fidèles à reconnaître et à combattre toute forme contemporaine de traite et d'exploitation humaine.
$desc$),
('the-most-holy-name-of-mary', 'Très Saint Nom de Marie', $desc$
Cette célébration honore le nom même de la Mère de Dieu, vénérant le mot par lequel les fidèles l'invoquent le plus souvent. Elle fait délibérément pendant à la plus ancienne dévotion au Saint Nom de Jésus, soulignant combien intimement l'Église unit la mère et le Fils.

Derrière cette dévotion se trouve la conviction ancienne qu'un nom porte un poids spirituel réel. Le nom de Marie, diversement interprété au fil des siècles, est devenu pour d'innombrables générations un refuge invoqué dans le besoin, de sorte qu'invoquer son nom, c'est se confier à toute la réalité de son intercession maternelle.

La fête naquit en Espagne à la fin du XVIe siècle et fut étendue à l'Église universelle par le pape Innocent XI en 1683, en action de grâce pour la libération de Vienne assiégée par les Ottomans, délivrance attribuée à l'intercession de Marie sous ce titre. Son histoire liturgique manifeste la persistance de la piété mariale dans la prière populaire comme dans le culte public de l'Église.

Elle invite les fidèles à invoquer le nom de Marie avec confiance en toute nécessité, assurés qu'un acte de piété si simple porte en lui la plénitude de sa sollicitude maternelle.
$desc$),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', 'Saint Jean Chrysostome, évêque et docteur de l''Église', $desc$
Saint Jean Chrysostome est tenu pour l'un des plus grands prédicateurs de l'histoire chrétienne ; son surnom même — « bouche d'or » — rend hommage à une éloquence tout entière mise au service de l'Évangile et des pauvres.

Il ne cessa d'affirmer qu'un culte authentique ne peut être séparé du soin concret des indigents, avertissant que parer l'autel en négligeant les pauvres tourne en dérision l'Eucharistie qu'on y célèbre. Ses homélies scripturaires, surtout sur saint Paul, demeurent fondatrices pour la théologie biblique et morale de l'Église.

Archevêque de Constantinople à partir de 397, sa prédication intrépide contre la corruption, y compris celle de la cour impériale sous l'impératrice Eudoxie, lui valut l'exil en 404 sur de fausses accusations. Il mourut en exil en 407, et sa réhabilitation vint lorsque ses reliques furent solennellement ramenées à Constantinople en 438.

Son témoignage met au défi les prédicateurs et l'Église entière d'unir la proclamation audacieuse de la vérité à une solidarité inébranlable avec les pauvres, et il honore le courage de dire des vérités inconfortables même aux puissants.
$desc$),
('the-exaltation-of-the-holy-cross', 'Exaltation de la Sainte Croix', $desc$
L'Exaltation de la Sainte Croix célèbre le grand paradoxe au centre de la foi chrétienne : que la croix, instrument d'une exécution infamante, est devenue par la mort et la résurrection du Christ le signe même de la gloire et du salut — exaltée plutôt que méprisée.

La fête invite les fidèles à regarder le Christ crucifié non avec la seule tristesse mais avec espérance, car c'est précisément par la Croix que la joie est entrée dans le monde. Exalter la Croix, c'est confesser que la rédemption est venue par un amour qui se dépouille, et que le chemin de la souffrance embrassée dans la foi débouche sur la gloire.

La célébration remonte à la dédicace de la basilique du Saint-Sépulcre à Jérusalem en 335, élevée sur ordre de Constantin aux lieux de la crucifixion et de la résurrection, là où sa mère sainte Hélène aurait, selon la tradition, découvert des reliques de la vraie Croix. Elle gagna en profondeur au VIIe siècle lorsque l'empereur Héraclius récupéra la relique des mains des Perses et la restitua à Jérusalem en une procession célèbre. La tradition liturgique lui a donné au fil des siècles une place éminente parmi les célébrations de l'œuvre salvifique du Seigneur.

La fête invite les croyants à porter leurs propres croix en union avec celle du Christ, confiants que la souffrance acceptée dans la foi n'est jamais le dernier mot mais bien la route par laquelle on atteint la gloire.
$desc$),
('our-lady-of-sorrows', 'Notre-Dame des Douleurs', $desc$
Notre-Dame des Douleurs contemple la souffrance singulière endurée par Marie tout au long de la vie de son Fils et surtout au pied de la Croix. Cette dévotion unit inséparablement la compassion de la Mère à la Passion de son Fils.

La dévotion rassemble le deuil de Marie autour de ses sept douleurs, de la prophétie de Siméon annonçant le glaive jusqu'à l'ensevelissement de son Fils, reconnaissant que sa compassion avec le Christ lui donne une part unique à l'œuvre de la rédemption, comme mère spirituelle de tous les croyants. Sa douleur n'est jamais désespoir mais endurance pleine de foi, unissant une confiance parfaite en Dieu à toute la réalité du deuil d'une mère.

La dévotion aux douleurs de Marie fleurit surtout au sein de l'ordre des Servites à partir du XIIIe siècle et se répandit ensuite peu à peu dans toute l'Église. Sa proximité, dans plusieurs traditions liturgiques, avec la fête de l'Exaltation de la Croix rend manifeste le lien profond qui unit la compassion de la Mère à la Passion rédemptrice de son Fils.

Elle invite tous ceux qui souffrent, et particulièrement les parents endeuillés, à trouver en Marie une compagne qui connaît la douleur de l'intérieur, sans jamais perdre l'espérance qui transforme toute souffrance unie à la Passion rédemptrice du Christ.
$desc$),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'Saints Corneille, pape, et Cyprien, évêque, martyrs', $desc$
Cette mémoire commune honore deux martyrs du milieu du IIIe siècle, amis proches, le pape Corneille de Rome et l'évêque Cyprien de Carthage, dont le témoignage commun répondit à l'une des controverses les plus anciennes et les plus douloureuses de la vie de l'Église.

Ensemble, ils défendirent la réadmission à la communion des chrétiens qui avaient failli sous la persécution mais s'étaient sincèrement repentis, contre une faction rigoriste qui les aurait exclus à jamais. Leur amitié et leur position commune montrent comment la collégialité épiscopale, exercée jusque dans la distance de Rome à Carthage, peut sauvegarder à la fois la vérité de l'Évangile et la possibilité de la miséricorde envers le repentant.

Corneille fut exilé et mourut des privations de son bannissement vers 253 ; Cyprien, écrivain prolifique dont les traités sur l'unité de l'Église demeurent influents, fut décapité lors de la persécution de Valérien en 258. Une grande partie de leur correspondance subsiste, offrant un aperçu rare des luttes pastorales et théologiques de l'Église du milieu du IIIe siècle.

Leur fête commune recommande l'équilibre qu'ils cherchèrent entre fidélité à la vérité et ouverture à la miséricorde, et elle honore l'exercice collaboratif du ministère à travers l'Église entière.
$desc$),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 'Saint Robert Bellarmin, évêque et docteur de l''Église', $desc$
Saint Robert Bellarmin fut un cardinal jésuite et docteur de l'Église réputé pour sa défense claire et systématique de la doctrine catholique au milieu des bouleversements de la Réforme, controversiste admiré même de ses adversaires pour son équité.

Ses monumentales Disputes répondirent aux objections protestantes avec rigueur et une courtoisie peu commune, devenant la référence de l'apologétique catholique pour des générations. Le même esprit composa pourtant des catéchismes simples pour les croyants ordinaires, preuve que l'argumentation théologique la plus subtile et l'instruction élémentaire des enfants peuvent jaillir d'un seul cœur de pasteur.

Bellarmin entra dans la Compagnie de Jésus en 1560, enseigna au Collège romain et fut créé cardinal en 1599. Il joua plus tard un rôle délicat dans l'affaire Galilée, cherchant à concilier prudence théologique et ouverture à la recherche scientifique. Il mourut en 1621, fut canonisé en 1930 et déclaré docteur de l'Église l'année suivante.

Sa mémoire honore la vocation des théologiens qui défendent la foi avec rigueur et charité, et elle recommande l'effort de rendre la saine doctrine accessible aux croyants de tout niveau d'instruction.
$desc$),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 'Sainte Hildegarde de Bingen, vierge et docteur de l''Église', $desc$
Sainte Hildegarde de Bingen fut une abbesse bénédictine du XIIe siècle dont les dons de mystique, de compositrice, de naturaliste et d'épistolière font l'une des figures les plus remarquables de l'Église médiévale.

Sa théologie visionnaire, consignée dans des œuvres majeures, s'unissait à une vaste œuvre musicale liturgique encore chantée aujourd'hui, à des traités de médecine et de sciences naturelles, et à une immense correspondance avec papes et empereurs. Son assurance à exprimer une intuition prophétique en tant que religieuse témoigne de l'étendue des dons que l'Esprit peut susciter au sein de la vie consacrée.

Offerte à l'Église comme oblate dès l'enfance, elle devint abbesse de sa propre communauté à Rupertsberg, écrivit abondamment et entreprit des voyages de prédication très inhabituels pour une femme de son temps. Elle mourut en 1179 ; son culte ancien fut officiellement confirmé en 2012, l'année même où le pape Benoît XVI la déclara docteur de l'Église.

Son témoignage célèbre l'union de la prière mystique, de la créativité artistique et de la sagesse pratique, et il honore la reconnaissance par l'Église, si tardive soit-elle, de la contribution théologique des religieuses au fil des siècles.
$desc$),
('saint-januarius-bishop-and-martyr', 'Saint Janvier, évêque et martyr', $desc$
Saint Janvier fut un évêque de Bénévent martyrisé au début du IVe siècle, surtout connu aujourd'hui pour la dévotion extraordinaire qu'il suscite encore à Naples, dont il est le principal patron.

La tradition rapporte qu'il fut arrêté et décapité lors de la persécution de Dioclétien pour sa fidélité au Christ, prenant place parmi les nombreux évêques martyrs de cette époque. Son culte se concentre sur une relique réputée de son sang, dont les fidèles croient qu'elle se liquéfie périodiquement — signe que les dévots lisent comme un gage de l'intercession et de la protection continues du saint sur leur ville.

Les détails historiques de son martyre sont rares et reposent en grande partie sur une tradition hagiographique postérieure, mais la dévotion à son égard à Naples est attestée dès une époque ancienne et s'est poursuivie sans interruption pendant de nombreux siècles, faisant de lui l'un des patrons locaux les plus aimés du monde catholique.

Sa mémoire honore le lien durable entre un martyr et l'église locale qui le chérit, montrant comment la sainteté universelle peut s'enraciner profondément et durablement dans une ville et une culture particulières.
$desc$),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 'Saints André Kim Tae-gon, prêtre, Paul Chong Ha-sang et compagnons, martyrs', $desc$
Cette mémoire honore le premier prêtre coréen, André Kim Tae-gon, le catéchiste laïc Paul Chong Ha-sang et une grande compagnie de compagnons martyrisés durant les féroces persécutions qui frappèrent l'Église de Corée tout au long du XIXe siècle.

L'Église de Corée naquit presque entièrement de l'initiative laïque, prenant racine grâce à des laïcs qui avaient rencontré l'enseignement catholique à l'étranger, des décennies avant l'arrivée d'un prêtre. Qu'une communauté fondée et soutenue par des croyants ordinaires ait produit une si grande multitude de martyrs constitue un témoignage saisissant de l'endurance d'une foi transmise sans soutien institutionnel.

La persécution se répéta de manière intermittente mais souvent féroce de 1791 à 1888, faisant des milliers de victimes. Parmi ces martyrs, 103 furent canonisés ensemble par le pape Jean-Paul II en 1984 lors de sa visite en Corée — la première canonisation célébrée hors de Rome à l'époque moderne.

Leur témoignage honore la résilience d'une Église soutenue en grande partie par la fidélité laïque, et il élève le courage des croyants ordinaires en preuve que la foi héroïque appartient à tout état de vie.
$desc$),
('saint-matthew-apostle-and-evangelist', 'Saint Matthieu, apôtre et évangéliste', $desc$
Saint Matthieu, l'un des Douze et auteur traditionnel du premier Évangile, était un collecteur d'impôts appelé directement de son bureau de péage à suivre le Christ — un homme méprisé des siens convoqué à l'intimité du disciple.

La scène de son appel, où Jésus dit simplement « Suis-moi » et où Matthieu se leva aussitôt, incarne la logique même de l'Évangile qu'il écrirait : que le Christ n'est pas venu pour les justes mais pour les pécheurs, et qu'aucune flétrissure sociale ne place quiconque hors de portée de son appel.

La tradition identifie Matthieu, aussi appelé Lévi, comme l'auteur du premier Évangile canonique, composé avec un soin particulier à montrer aux lecteurs juifs comment le Christ accomplissait la Loi et les Prophètes. La tradition ancienne veut qu'il ait prêché après la Pentecôte en diverses régions et soit mort martyr, bien que les circonstances de sa mort ne soient pas conservées avec certitude.

Son témoignage parle avec force à tous ceux qui se sentent définis par leur passé ou leur réputation, érigeant sa réponse brusque et totale en image de la transformation offerte à tout pécheur qui entend l'invitation du Seigneur.
$desc$),
('saint-pius-of-pietrelcina-priest', 'Saint Pio de Pietrelcina, prêtre', $desc$
Saint Pio de Pietrelcina, universellement connu sous le nom de Padre Pio, fut un frère capucin du XXe siècle qui porta les stigmates durant une cinquantaine d'années et devint l'un des confesseurs les plus recherchés de l'époque moderne.

Sa participation visible aux plaies de la Passion du Christ, acceptée avec réticence à l'égard de l'attention qu'elle attirait, s'unissait à un ministère inlassable au confessionnal, où il passait chaque jour d'innombrables heures. Son insistance sur le sacrement de réconciliation, exercée avec fermeté et profonde compassion, mit des dons mystiques extraordinaires au service d'un soin pastoral très ordinaire.

Né Francesco Forgione en 1887, il reçut les stigmates en 1918 au couvent de San Giovanni Rotondo, où il demeura le reste de sa vie et fonda un grand hôpital, la Maison Soulagement de la Souffrance. Il mourut en 1968 et fut canonisé par le pape Jean-Paul II en 2002, devenant l'un des saints les plus vénérés de l'Église contemporaine.

Son exemple ravive l'estime du sacrement de la confession et rappelle aux fidèles que les vrais dons mystiques servent avant tout le soin ordinaire des âmes en quête de miséricorde.
$desc$),
('saints-cosmas-and-damian-martyrs', 'Saints Côme et Damien, martyrs', $desc$
Saints Côme et Damien étaient des frères jumeaux et médecins, martyrisés au début du IVe siècle et vénérés depuis l'Antiquité pour avoir exercé la médecine sans jamais réclamer d'honoraires.

Leurs soins gratuits, offerts à tous sans égard aux moyens, l'Église les présente comme une image de la gratuité de la guérison divine elle-même. Leur martyre sous Dioclétien joignit ce témoignage de service désintéressé à l'acte ultime de fidélité, unissant guérison des corps et sacrifice spirituel en une seule vie.

Les détails de leur martyre reposent surtout sur une tradition hagiographique ancienne, mais leur vénération se répandit rapidement en Orient et en Occident, et leurs noms entrèrent dans le Canon romain parmi les martyrs invoqués à la messe — distinction rare qui reflète la profondeur de leur culte primitif.

Leur mémoire honore les médecins et tous ceux qui exercent les arts de la guérison comme une forme de charité chrétienne, les encourageant à voir dans leur savoir un don à mettre, comme ces frères médecins, au service des pauvres sans recherche de gain.
$desc$),
('saint-vincent-de-paul-priest', 'Saint Vincent de Paul, prêtre', $desc$
Saint Vincent de Paul fut un prêtre français du XVIIe siècle dont les immenses œuvres charitables firent l'un des plus influents apôtres de la charité pratique de l'histoire, un fondateur dont l'inventivité institutionnelle multiplia la portée de la miséricorde chrétienne.

Il était convaincu que l'amour authentique de Dieu doit se vérifier dans le service concret — des pauvres, des malades, des galériens, des enfants abandonnés et des victimes de la guerre — et il traduisit cette conviction en institutions durables plutôt qu'en aumônes occasionnelles, enseignant que la charité doit être à la fois affective et effective.

Ordonné en 1600, Vincent passa de l'ambition cléricale au dévouement total aux pauvres après avoir assisté un paysan mourant. Il fonda la Congrégation de la Mission en 1625 et, avec sainte Louise de Marillac, les Filles de la Charité en 1633. Il mourut en 1660, fut canonisé en 1737 et fut plus tard proclamé patron de toutes les œuvres de charité par le pape Léon XIII.

Son témoignage appelle l'Église entière à traduire la compassion en structures durables capables de servir les pauvres de manière systématique, et il demeure une pierre de touche pour tout mouvement ultérieur de charité catholique organisée.
$desc$),
('saint-wenceslaus-martyr', 'Saint Venceslas, martyr', $desc$
Saint Venceslas fut un duc de Bohême du Xe siècle, assassiné par son propre frère à cause de sa piété chrétienne et de ses efforts pour affermir la foi dans son domaine — un souverain vénéré presque aussitôt comme martyr.

Renommé pour sa dévotion personnelle et son souci des pauvres, il travailla à enraciner plus profondément le christianisme parmi une noblesse encore largement païenne. Son meurtre, à l'instigation de son frère Boleslav, révèle le prix que la fidélité à l'Évangile peut exiger jusqu'au sein de la famille la plus proche, lorsque le disciple se heurte aux ambitions du pouvoir.

Venceslas régna sur la Bohême à partir de 921 environ et fut assassiné en 935. Honoré aussitôt comme martyr, il devint le patron de la nation tchèque, et sa mémoire perdure bien au-delà de l'Europe centrale à travers le cantique anglais « Good King Wenceslas », qui célèbre sa générosité légendaire envers les pauvres.

Son témoignage rappelle avec gravité que la fidélité au Christ peut coûter la vie même aux gouvernants, aux mains de leurs proches, et il l'érige en patron d'un pouvoir chrétien exercé au milieu de la trahison.
$desc$),
('saint-lawrence-ruiz-and-companions-martyrs', 'Saint Laurent Ruiz et ses compagnons, martyrs', $desc$
Cette mémoire honore le premier martyr philippin, Laurent Ruiz, et ses compagnons — missionnaires et laïcs mis à mort au Japon durant les féroces persécutions antichrétiennes du XVIIe siècle.

Laurent était un laïc, époux et père, qui avait accompagné des missionnaires dominicains au Japon ; découvrant qu'un retour chez lui l'exposerait à une fausse accusation, il choisit de rester et de partager leur martyre plutôt que d'abandonner ses compagnons dans la foi. Son témoignage montre que la fidélité héroïque n'est pas réservée au clergé ou aux religieux mais peut être demandée à tout croyant, souvent dans des circonstances qui le dépassent.

Ruiz et quinze compagnons, parmi lesquels des frères dominicains et des laïcs japonais, furent torturés et exécutés à Nagasaki entre 1633 et 1637, au plus fort de la persécution des Tokugawa. Ils furent canonisés ensemble en 1987 par le pape Jean-Paul II, Laurent Ruiz devenant le premier saint canonisé des Philippines.

Leur témoignage honore la vaste multitude, souvent inconnue, de croyants laïcs qui ont souffert pour le Christ loin des centres de l'attention ecclésiastique, preuve que la sainteté héroïque appartient à tout état de vie.
$desc$),
('saints-michael-gabriel-and-raphael-archangels', 'Saints Michel, Gabriel et Raphaël, archanges', $desc$
Cette fête honore les trois archanges nommés dans l'Écriture, les grands princes de la cour céleste dont l'Église vénère depuis l'Antiquité les rôles distincts dans l'histoire du salut. Ensemble, ils manifestent la diversité du service angélique par lequel Dieu protège, éclaire et guide son peuple.

Michel — « Qui est comme Dieu » — est le prince guerrier qui défend le peuple de Dieu contre la puissance du mal ; Gabriel est le messager qui annonça l'Incarnation à Marie ; et Raphaël — « Dieu guérit » — guida le jeune Tobie et rendit la vue à son père. Ensemble, ils révèlent les multiples manières dont la providence divine agit : par la protection, la révélation et la guérison.

La dévotion à Michel a des racines anciennes en Orient comme en Occident, avec des sanctuaires qui lui sont dédiés depuis l'Antiquité tardive, tandis que les cultes de Gabriel et de Raphaël, tirés respectivement de l'Évangile de Luc et du livre de Tobie, s'étaient développés en fêtes propres. Avec le temps, leurs cultes distincts ont nourri une conscience liturgique et dévotionnelle plus large de leur ministère commun.

La fête invite les fidèles à se confier à la protection, à la conduite et à la guérison que Dieu étend par ses anges, et elle rappelle aux croyants que l'ordre créé compte de puissants alliés spirituels tout entiers voués à la volonté salvifique de Dieu.
$desc$),
('saint-jerome-priest-and-doctor-of-the-church', 'Saint Jérôme, prêtre et docteur de l''Église', $desc$
Saint Jérôme fut un docteur de l'Église dont la traduction de la Bible en latin façonna l'étude scripturaire, la liturgie et la dévotion de l'Occident pendant plus de mille ans — un savant brillant et notoirement combatif, tout entier livré à la Parole de Dieu.

Sa monumentale Vulgate, établie à partir de l'hébreu et du grec originaux au fil de décennies de labeur, devint le texte biblique de référence de l'Église d'Occident. Sa formule souvent citée, « l'ignorance des Écritures est l'ignorance du Christ », exprime l'urgence qu'il attachait à un contact direct et éclairé avec le texte sacré comme essentiel à la vie chrétienne.

Jérôme étudia à Rome, vécut un temps en ermite au désert de Syrie, fut brièvement secrétaire du pape Damase Ier — qui lui commanda son travail de traduction — et s'établit enfin à Bethléem, où il acheva la Vulgate et rédigea d'amples commentaires jusqu'à sa mort vers 420. Son tempérament de feu et ses vives controverses n'ôtèrent rien à la valeur imposante de son érudition.

Son témoignage appelle les fidèles à un contact sérieux avec la Sainte Écriture comme Parole vivante de Dieu, et il honore le labeur exigeant, parfois querelleur, qui rend la Bible accessible à travers les langues et les siècles.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', 'Sanctus Gregorius Magnus, papa et Ecclesiae doctor', $desc$
Sanctus Gregorius Magnus inter maximi momenti figuras Ecclesiae primaevi medii aevi numeratur, patricius Romanus qui, spreta prospera vitae civilis via, monachus factus est et postea, invitus, ad summum pontificatum tractus. Unus est ex duobus solis pontificibus, cum Leone Magno, qui cognomine « Magnus » insigniuntur, quod amplitudinem eius influxus in regimen, liturgiam ac spiritualitatem Ecclesiae occidentalis testatur.

Descriptio sui ipsius tamquam servus servorum Dei theologiam auctoritatis ut servitii complectitur, quam ipse expressit et successoribus tradidit. Gregorio pastoris munus onus erat pro aliis portatum, et eius Regula pastoralis episcopos docuit curam animarum et contemplationis altitudinem et prudentiam practicam simul exigere.

Anno 590 electus inter pestem, famem et Langobardorum minas, ingens patrimonium pontificium in pauperum levamen administravit, cum invasoribus egit ut Romam servaret, et anno 596 Augustinum Cantuariensem ad Anglos evangelizandos misit. Eius cultus divini cantusque Romani ordinatio formam liturgiae occidentali diuturnam dedit, unde cantus traditio postea nomen eius accepit.

Eius testimonium pastoribus ac rectoribus adhuc commendat peritiam humilitati et misericordiae totam servientem, admonens auctoritatem in Ecclesia non existere nisi ad bonum eorum qui ei commissi sunt.
$desc$),
('saint-teresa-of-calcutta-virgin', 'Sancta Teresia Calcuttiensis, virgo', $desc$
Sancta Teresia Calcuttiensis inter notissimos caritatis testes mundi hodierni numeratur : religiosa in Albania nata, vitam in directo et humili servitio morientium et egenorum in viis Calcuttae transegit.

In corde vocationis eius illa persuasio erat Christum vere sub specie pauperrimorum, derelictorum et morientium inveniri, quibus quasi ipsi serviebat. Decennia interioris tenebrae post mortem revelata, sine ullo missionis abandono perlata, potens testimonium facta sunt fidem etiam sine sensibili consolatione praesentiae Dei perseverare posse.

Anjezë Gonxhe Bojaxhiu anno 1910 nata, per annos ut soror Loretana docuit priusquam anno 1950 Missionarias Caritatis conderet ad serviendum iis quos societas abiecerat. Opus eius per totum orbem diffusum est et anno 1979 praemium Nobelianum pacis accepit. Anno 1997 obiit et a Papa Francisco anno 2016 in album sanctorum relata est, haud multo post obitum.

Exemplum eius fideles vocat ad Christum inter derelictissimos quaerendum et peculiarem consolationem iis praebet qui in ariditate spirituali laborant, ostendens fidelitatem in tenebris ipsam absconditam sanctitatem esse posse.
$desc$),
('the-nativity-of-the-blessed-virgin-mary', 'Nativitas Beatae Mariae Virginis', $desc$
Nativitas Beatae Mariae Virginis ortum Matris Dei celebrat, unum ex tribus solis natalibus in calendario Ecclesiae honoratis, cum illis Christi et Ioannis Baptistae. Quod Ecclesia ipsum Mariae in mundum ingressum signat, indicat quam arcte eius vita mysterio redemptionis colligetur.

Ortus eius non ut privata familiae laetitia sed ut aurora spei pro toto genere humano proclamatur, quia illa est quae sine peccato concepta est propter singularem vocationem Matris Redemptoris, per quam Sol Iustitiae super mundum oriturus erat.

Festum antiquas radices Hierosolymis habet, ubi ecclesia super loco tradito nativitatis Mariae prope piscinam Bethesda aedificata est, et Romam saeculo septimo pervenit, inter antiquissima festa Mariana calendarii occidentalis. Dies eius, novem mensibus post Immaculatam Conceptionem diei 8 decembris, modum traditum quo Ecclesia magna festa Mariana componit reddit.

Celebratio fideles invitat ut de spe gaudeant quam Mariae ortus toti humanitati praebet, in primis eius diebus praefigurationem gratiae videntes quae in Annuntiatione et ultra plene floritura erat.
$desc$),
('saint-peter-claver-priest', 'Sanctus Petrus Claver, presbyter', $desc$
Sanctus Petrus Claver iesuita Hispanus saeculi XVII fuit qui quattuor decennia vitae suae Afris in servitutem redactis in magnum portum mercaturae servorum Carthaginensem advenientibus dedit, se ipsum « servum servorum in perpetuum » appellans.

Ministerium eius affirmationem evangelicam expressit Christum in maxime dehumanizatis praesentem esse, et durum manet opprobrium omni christianae cum servitutis institutione conniventiae. Non solum cibum, medicinam et sacramenta afferebat, sed agnitionem dignitatis quam mercatura servorum negare conabatur.

Claver Carthaginem anno 1610 pervenit et naves servorum in ipso adventu conscendebat, captivis eorum personaliter serviens et multa milia per annos laboris baptizans. Anno 1654 obiit, anno 1888 canonizatus est, et Papa Leo XIII eum patronum operis missionalis apud populos in servitutem redactos declaravit.

Testimonium eius Ecclesiam ad memoriam suae in servitute conniventiae adducit, dum fideles vocat ad omnem hodiernam formam mercaturae hominum et oppressionis agnoscendam et impugnandam.
$desc$),
('the-most-holy-name-of-mary', 'Sanctissimi Nominis Mariae', $desc$
Haec celebratio ipsum nomen Matris Dei honorat, verbum illud venerans quo fideles eam saepissime invocant. Consulto respondet antiquiori devotioni Sanctissimi Nominis Iesu, quam arcte Ecclesia matrem et Filium coniungat ostendens.

Post hanc devotionem antiqua persuasio latet nomen verum pondus spirituale ferre. Nomen Mariae, per saecula varie interpretatum, innumeris generationibus refugium in necessitate invocatum factum est, ita ut nomen eius invocare sit se totae realitati intercessionis eius maternae committere.

Festum in Hispania exeunte saeculo XVI ortum est et a Papa Innocentio XI anno 1683 ad universam Ecclesiam extensum, in gratiarum actionem pro liberatione Viennae ab obsidione Ottomanica, quae liberatio intercessioni Mariae sub hoc titulo tributa est. Historia liturgica huius memoriae constantiam pietatis Marianae tam in populari prece quam in publico Ecclesiae cultu manifestat.

Fideles invitat ut nomen Mariae cum fiducia in omni necessitate invocent, certi tam simplicem pietatis actum plenitudinem eius maternae sollicitudinis in se ferre.
$desc$),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', 'Sanctus Ioannes Chrysostomus, episcopus et Ecclesiae doctor', $desc$
Sanctus Ioannes Chrysostomus inter maximos praedicatores historiae christianae habetur ; ipsum cognomen eius — « os aureum » — eloquentiae tribuit toti Evangelio pauperibusque servienti.

Sine intermissione affirmavit cultum authenticum a concreta egenorum cura separari non posse, monens altare ornare pauperibus neglectis Eucharistiam quae super eo celebratur ludibrio habere. Homiliae eius scripturales, praesertim in sanctum Paulum, fundamentales manent theologiae biblicae et morali Ecclesiae.

Archiepiscopus Constantinopolitanus ab anno 397, praedicatio eius intrepida contra corruptionem, etiam aulae imperialis sub Eudoxia imperatrice, ei exsilium anno 404 falsis criminibus attulit. In exsilio anno 407 obiit, et vindicatio eius venit cum reliquiae eius Constantinopolim anno 438 sollemniter reportatae sunt.

Testimonium eius praedicatores totamque Ecclesiam provocat ut audacem veritatis proclamationem cum firma erga pauperes solidarietate coniungant, et audaciam honorat molestas veritates etiam potentibus dicendi.
$desc$),
('the-exaltation-of-the-holy-cross', 'Exaltatio Sanctae Crucis', $desc$
Exaltatio Sanctae Crucis magnum paradoxum in centro fidei christianae celebrat : crucem, ignominiosae mortis instrumentum, per mortem et resurrectionem Christi ipsum signum gloriae et salutis factam esse — exaltatam potius quam despectam.

Festum fideles invitat ut Christum crucifixum non sola tristitia sed spe intueantur, quia per Crucem ipsam gaudium in mundum intravit. Crucem exaltare est confiteri redemptionem per amorem se exinanientem venisse, et viam passionis in fide amplexae in gloriam desinere.

Celebratio ad dedicationem basilicae Sancti Sepulcri Hierosolymis anno 335 refertur, iussu Constantini in locis crucifixionis et resurrectionis exstructae, ubi mater eius sancta Helena, secundum traditionem, reliquias verae Crucis invenisse dicitur. Maiorem altitudinem saeculo septimo accepit cum imperator Heraclius reliquiam a Persis receptam Hierosolymam celebri processione restituit. Traditio liturgica huic festo per saecula locum eminentem inter celebrationes operis salvifici Domini tribuit.

Festum credentes vocat ut proprias cruces in unione cum Christi cruce ferant, confidentes passionem in fide acceptam numquam ultimum verbum esse sed ipsam viam qua ad gloriam pervenitur.
$desc$),
('our-lady-of-sorrows', 'Beata Maria Virgo Perdolens', $desc$
Beata Maria Virgo Perdolens singularem dolorem contemplatur quem Maria per totam Filii sui vitam ac praesertim sub Cruce pertulit. Haec devotio compassionem Matris inseparabiliter cum Passione Filii coniungit.

Devotio luctum Mariae circa septem dolores eius congregat, a prophetia Simeonis de gladio usque ad sepulturam Filii, agnoscens eius compassionem cum Christo ei singularem partem in opere redemptionis dare, ut mater spiritualis omnium credentium. Dolor eius numquam desperatio est sed patientia fide plena, coniungens perfectam in Deum fiduciam cum tota realitate luctus matris.

Devotio ad dolores Mariae praesertim in Ordine Servorum a saeculo XIII floruit et paulatim per totam Ecclesiam diffusa est. Eius vicinitas, in variis traditionibus liturgicis, cum festo Exaltationis Crucis nexum altum inter compassionem Matris et Passionem redemptivam Filii manifestat.

Omnes qui patiuntur, praesertim parentes lugentes, invitat ut in Maria sociam inveniant quae dolorem ab intus novit, numquam amissa spe quae omnem passionem Christi redemptivae Passioni unitam transformat.
$desc$),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', 'Sancti Cornelius et Cyprianus, martyres', $desc$
Haec memoria communis duos martyres medii saeculi III, amicos intimos, honorat, Cornelium papam Romanum et Cyprianum episcopum Carthaginensem, quorum commune testimonium uni ex antiquissimis et acerbissimis Ecclesiae controversiis respondit.

Simul defenderunt readmissionem ad communionem christianorum qui sub persecutione lapsi erant sed sincere paenituerant, contra factionem rigoristam quae eos in perpetuum exclusisset. Amicitia eorum et communis stabilitas ostendunt quomodo collegialitas episcopalis, etiam per distantiam a Roma ad Carthaginem exercita, et veritatem Evangelii et misericordiae erga paenitentem possibilitatem servare possit.

Cornelius in exsilium missus et ex aerumnis bannitionis circa annum 253 obiit ; Cyprianus, scriptor fecundus cuius tractatus de unitate Ecclesiae influentes manent, in persecutione Valeriani anno 258 decollatus est. Magna pars epistularum eorum superest, rarum praebens intuitum in luctas pastorales et theologicas Ecclesiae medii saeculi III.

Festum eorum commune aequilibrium commendat quod inter fidelitatem veritati et apertionem misericordiae quaesiverunt, et collaborativum ministerii exercitium per universam Ecclesiam honorat.
$desc$),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', 'Sanctus Robertus Bellarminus, episcopus et Ecclesiae doctor', $desc$
Sanctus Robertus Bellarminus cardinalis iesuita et Ecclesiae doctor fuit, clarus ob claram et systematicam doctrinae catholicae defensionem inter perturbationes Reformationis, controversista etiam ab adversariis ob aequitatem admiratus.

Monumentales eius Disputationes obiectionibus protestantibus cum rigore et rara comitate responderunt, per generationes norma apologeticae catholicae factae. Idem tamen animus catechismos simplices pro credentibus ordinariis composuit, ostendens et subtilissimam argumentationem theologicam et simplicem puerorum institutionem ex uno corde pastorali oriri posse.

Bellarminus Societatem Iesu anno 1560 ingressus est, in Collegio Romano docuit et anno 1599 cardinalis creatus est. Postea delicatam partem in causa Galilaei egit, prudentiam theologicam cum apertione ad inquisitionem scientificam componere quaerens. Anno 1621 obiit, anno 1930 canonizatus est et anno sequenti Ecclesiae doctor declaratus.

Memoria eius vocationem theologorum honorat qui fidem cum rigore et caritate defendunt, et conatum commendat sanam doctrinam credentibus omnis gradus eruditionis accessibilem reddendi.
$desc$),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', 'Sancta Hildegardis Bingensis, virgo et Ecclesiae doctor', $desc$
Sancta Hildegardis Bingensis abbatissa benedictina saeculi XII fuit, cuius dona mysticae, compositricis, naturae peritae et epistolographae eam unam ex insignissimis figuris Ecclesiae medievalis faciunt.

Theologia eius visionaria, in operibus maioribus consignata, cum ampla musica liturgica adhuc hodie cantata, cum tractatibus de medicina et rebus naturalibus, et cum ingenti correspondentia cum papis et imperatoribus confluebat. Fiducia eius in intuitu prophetico ut religiosa exprimendo testatur amplitudinem donorum quae Spiritus intra vitam consecratam suscitare potest.

Ecclesiae ut oblata puella data, abbatissa propriae communitatis in Rupertsberg facta est, copiose scripsit et itinera praedicationis feminae sui temporis valde inusitata suscepit. Anno 1179 obiit ; cultus eius antiquus anno 2012 officialiter confirmatus est, eodem anno quo Papa Benedictus XVI eam Ecclesiae doctorem declaravit.

Testimonium eius unionem orationis mysticae, creativitatis artisticae et sapientiae practicae celebrat, et agnitionem ab Ecclesia, quamvis seram, contributionis theologicae religiosarum per saecula honorat.
$desc$),
('saint-januarius-bishop-and-martyr', 'Sanctus Ianuarius, episcopus et martyr', $desc$
Sanctus Ianuarius episcopus Beneventanus fuit ineunte saeculo IV martyrizatus, hodie maxime notus ob extraordinariam devotionem quam adhuc Neapoli excitat, cuius est praecipuus patronus.

Traditio tradit eum in persecutione Diocletiani ob fidelitatem Christo comprehensum et decollatum esse, locum inter multos episcopos martyres illius aetatis sumentem. Cultus eius circa famosam reliquiam sanguinis eius versatur, quam fideles periodice liquescere credunt — signum quod devoti ut pignus continuae intercessionis et protectionis sancti super civitatem suam legunt.

Historica martyrii eius adiuncta rara sunt et magna ex parte in posteriore traditione hagiographica nituntur, at devotio erga eum Neapoli ab antiquo tempore attestatur et per multa saecula sine intermissione perduravit, eum unum ex dilectissimis patronis localibus orbis catholici faciens.

Memoria eius diuturnum vinculum inter martyrem et ecclesiam localem quae eum fovet honorat, ostendens quomodo sanctitas universalis in particulari civitate et cultura alte et diuturne radicari possit.
$desc$),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', 'Sancti Andreas Kim Tae-gon et Socii, martyres', $desc$
Haec memoria primum presbyterum Coreanum indigenam, Andream Kim Tae-gon, catechistam laicum Paulum Chong Ha-sang et magnam sociorum multitudinem honorat, in ferocibus persecutionibus quae Ecclesiam Coreanam per totum saeculum XIX percusserunt martyrizatos.

Ecclesia Coreana fere tota ex laicorum incepto nata est, radices agens per laicos qui doctrinam catholicam foris invenerant, decenniis antequam ullus presbyter adveniret. Quod communitas a credentibus ordinariis condita et sustentata tam magnam martyrum multitudinem produxit, insigne testimonium est constantiae fidei sine institutionali fulcimento traditae.

Persecutio intermittenter sed saepe ferociter ab anno 1791 ad annum 1888 rediit, milia vitarum poscens. Ex his martyribus 103 simul a Papa Ioanne Paulo II anno 1984 in eius visitatione Coreana canonizati sunt — prima canonizatio extra Romam temporibus modernis celebrata.

Testimonium eorum constantiam Ecclesiae magna ex parte laica fidelitate sustentatae honorat, et audaciam credentium ordinariorum in argumentum extollit fidem heroicam ad omnem vitae statum pertinere.
$desc$),
('saint-matthew-apostle-and-evangelist', 'Sanctus Matthaeus, Apostolus et evangelista', $desc$
Sanctus Matthaeus, unus ex Duodecim et traditione auctor primi Evangelii, publicanus erat a telonio suo directe ad Christum sequendum vocatus — homo a suis despectus ad intimam discipuli familiaritatem accitus.

Scaena vocationis eius, in qua Iesus simpliciter « Sequere me » dixit et Matthaeus statim surrexit, ipsam logicam Evangelii quod scripturus erat complectitur : Christum non pro iustis sed pro peccatoribus venisse, et nullam socialem notam quemquam extra vocationis eius attingentiam ponere.

Traditio Matthaeum, etiam Levi appellatum, auctorem primi Evangelii canonici identificat, peculiari cura compositi ut lectoribus Iudaeis ostenderet quomodo Christus Legem et Prophetas adimplevisset. Antiqua traditio tenet eum post Pentecosten in variis regionibus praedicasse et martyrem obiisse, quamvis mortis eius adiuncta non certo serventur.

Testimonium eius fortiter loquitur omnibus qui a praeterito vel fama sua definiri se sentiunt, subitam et totam eius responsionem in imaginem transformationis erigens omni peccatori oblatae qui invitationem Domini audit.
$desc$),
('saint-pius-of-pietrelcina-priest', 'Sanctus Pius de Pietrelcina, presbyter', $desc$
Sanctus Pius de Pietrelcina, ubique Padre Pio nominatus, frater capucinus saeculi XX fuit qui stigmata per quinquaginta fere annos tulit et unus ex maxime quaesitis confessariis aetatis modernae factus est.

Visibilis eius participatio in vulneribus Passionis Christi, cum reluctantia erga attentionem quam trahebat accepta, cum indefesso ministerio in confessionali coniungebatur, ubi cotidie innumeras horas transigebat. Insistentia eius in sacramento reconciliationis, cum firmitate et profunda compassione exercita, extraordinaria dona mystica in servitium ordinariae curae pastoralis posuit.

Franciscus Forgione anno 1887 natus, stigmata anno 1918 in conventu Sancti Ioannis Rotundi accepit, ubi per reliquam vitam mansit et magnum nosocomium, Domum Levaminis Doloris, condidit. Anno 1968 obiit et a Papa Ioanne Paulo II anno 2002 canonizatus est, unus ex maxime cultis sanctis Ecclesiae hodiernae factus.

Exemplum eius aestimationem sacramenti confessionis renovat et fideles admonet vera dona mystica ante omnia ordinariae curae animarum misericordiam quaerentium servire.
$desc$),
('saints-cosmas-and-damian-martyrs', 'Sancti Cosmas et Damianus, martyres', $desc$
Sancti Cosmas et Damianus fratres gemini et medici erant, ineunte saeculo IV martyrizati et ab antiquitate venerati quod medicinam sine ulla mercede umquam petita exercuerunt.

Curam eorum gratuitam, omnibus sine respectu facultatum oblatam, Ecclesia ut imaginem gratuitatis ipsius divinae sanationis proponit. Martyrium eorum sub Diocletiano hoc testimonium servitii non quaerentis sui cum ultimo fidelitatis actu coniunxit, sanationem corporum et sacrificium spirituale in una vita uniens.

Adiuncta martyrii eorum praesertim in antiqua traditione hagiographica nituntur, sed veneratio eorum celeriter per Orientem et Occidentem diffusa est, et nomina eorum in Canonem Romanum inter martyres in Missa invocatos intraverunt — rarum insigne quod altitudinem cultus eorum primaevi reddit.

Memoria eorum medicos omnesque qui artes sanandi exercent ut formam caritatis christianae honorat, eos hortans ut peritiam suam ut donum videant, sicut hi fratres medici, pauperibus sine lucri studio serviendam.
$desc$),
('saint-vincent-de-paul-priest', 'Sanctus Vincentius a Paulo, presbyter', $desc$
Sanctus Vincentius a Paulo presbyter Gallus saeculi XVII fuit, cuius immensa opera caritatis eum unum ex influentissimis apostolis caritatis practicae historiae fecerunt, fundatorem cuius inventio institutionalis latitudinem misericordiae christianae multiplicavit.

Persuasum habebat verum Dei amorem in concreto servitio verificari debere — pauperum, aegrotorum, servorum triremium, puerorum derelictorum et bellorum victimarum — et hanc persuasionem in institutiones diuturnas potius quam in occasionales eleemosynas transtulit, docens caritatem et affectivam et effectivam esse debere.

Anno 1600 ordinatus, Vincentius ab ambitione clericali ad totam pauperum dedicationem se convertit postquam agricolae morienti ministravit. Congregationem Missionis anno 1625 condidit et, cum sancta Aloisia de Marillac, Filias Caritatis anno 1633. Anno 1660 obiit, anno 1737 canonizatus est et postea a Papa Leone XIII patronus omnium operum caritatis proclamatus.

Testimonium eius totam Ecclesiam vocat ut compassionem in structuras diuturnas transferat pauperibus systematice servire valentes, et petra angularis manet omni posteriori motui caritatis catholicae ordinatae.
$desc$),
('saint-wenceslaus-martyr', 'Sanctus Wenceslaus, martyr', $desc$
Sanctus Wenceslaus dux Bohemiae saeculi X fuit, a proprio fratre ob pietatem christianam et conatus fidem in regno suo firmandi occisus — princeps fere statim ut martyr veneratus.

Clarus ob personalem devotionem et pauperum curam, laboravit ut christianitatem altius inter nobilitatem adhuc magna ex parte paganam radicaret. Caedes eius, instigante fratre Boleslao, pretium revelat quod fidelitas Evangelio etiam intra intimam familiam exigere potest, cum discipulus cum ambitionibus potestatis colliditur.

Wenceslaus Bohemiam ab anno circiter 921 rexit et anno 935 interfectus est. Statim ut martyr honoratus, patronus nationis Bohemicae factus est, et memoria eius longe ultra Europam mediam per canticum Anglicum « Good King Wenceslas » perdurat, quod legendariam eius erga pauperes liberalitatem celebrat.

Testimonium eius graviter admonet fidelitatem Christo etiam rectoribus vitam eripere posse, manibus proximorum, et eum in patronum regiminis christiani inter proditionem exerciti erigit.
$desc$),
('saint-lawrence-ruiz-and-companions-martyrs', 'Sanctus Laurentius Ruiz et Socii, martyres', $desc$
Haec memoria primum martyrem Philippinensem, Laurentium Ruiz, et socios eius honorat — missionarios et laicos in Iaponia occisos durante ferocibus persecutionibus antichristianis saeculi XVII.

Laurentius laicus erat, coniunx et pater, qui missionarios dominicanos in Iaponiam comitatus erat ; cum reperisset reditum domum se falsae accusationi expositurum, manere et martyrium eorum participare maluit quam socios in fide deserere. Testimonium eius ostendit fidelitatem heroicam non clero vel religiosis reservari sed cuilibet credenti posci posse, saepe in adiunctis quae ipsum superant.

Ruiz et quindecim socii, inter quos fratres dominicani et laici Iaponenses, Nagasaki inter annos 1633 et 1637 in summo persecutionis Tokugawa cruciati et interfecti sunt. Simul anno 1987 a Papa Ioanne Paulo II canonizati sunt, Laurentio Ruiz primo sancto Philippinensi canonizato facto.

Testimonium eorum vastam, saepe ignotam multitudinem credentium laicorum honorat qui pro Christo procul a centris attentionis ecclesiasticae passi sunt, argumentum sanctitatem heroicam ad omnem vitae statum pertinere.
$desc$),
('saints-michael-gabriel-and-raphael-archangels', 'Sancti Michael, Gabriel et Raphael, Archangeli', $desc$
Hoc festum tres archangelos in Scriptura nominatos honorat, magnos principes aulae caelestis quorum distincta munera in historia salutis Ecclesia ab antiquitate veneratur. Una varietatem ministerii angelici manifestant quo Deus populum suum protegit, illuminat atque dirigit.

Michael — « Quis ut Deus » — princeps bellator est qui populum Dei contra potestatem mali defendit ; Gabriel nuntius est qui Incarnationem Mariae annuntiavit ; et Raphael — « Deus sanat » — iuvenem Tobiam duxit et patri eius visum reddidit. Simul multiplices modos revelant quibus providentia divina agit : per protectionem, revelationem et sanationem.

Devotio ad Michaelem antiquas radices in Oriente et Occidente habet, sacrariis ei ab antiquitate serotina dedicatis, dum cultus Gabrielis et Raphaelis, ex Evangelio Lucae et libro Tobiae respective haustus, in propria festa creverant. Decursu temporis cultus eorum distincti latiorem conscientiam liturgicam ac devotam communis archangelorum ministerii aluerunt.

Festum fideles invitat ut protectioni, ductui et sanationi confidant quas Deus per angelos suos extendit, et credentes admonet ordinem creatum potentes socios spirituales continere voluntati salvificae Dei totos deditos.
$desc$),
('saint-jerome-priest-and-doctor-of-the-church', 'Sanctus Hieronymus, presbyter et Ecclesiae doctor', $desc$
Sanctus Hieronymus Ecclesiae doctor fuit cuius translatio Bibliorum in linguam Latinam studium scripturarum, liturgiam et devotionem Occidentis per plus quam mille annos formavit — vir doctus, ingeniosus et notorie pugnax, Verbo Dei totus deditus.

Monumentalis eius Vulgata, ex Hebraeo et Graeco originalibus per decennia laboris confecta, textus biblicus normativus Ecclesiae occidentalis facta est. Sententia eius saepe citata, « ignoratio Scripturarum ignoratio Christi est », urgentiam exprimit quam directo et erudito cum textu sacro contactui ut essentiali vitae christianae attribuebat.

Hieronymus Romae studuit, per tempus ut eremita in deserto Syriaco vixit, breviter secretarius Papae Damasi I fuit — qui ei opus translationis mandavit — et tandem in Bethlehem consedit, ubi Vulgatam perfecit et amplos commentarios usque ad mortem circa annum 420 scripsit. Ardens eius ingenium et acres controversiae nihil de eminenti eruditionis eius valore detraxerunt.

Testimonium eius fideles ad serium cum Sacra Scriptura ut vivo Verbo Dei contactum vocat, et laborem arduum, interdum litigiosum honorat qui Biblia per linguas et saecula accessibilia reddit.
$desc$)
) AS x(slug, name, description)
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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-gregory-the-great-pope-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on September 3 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes. The modern Roman calendar keeps it on the anniversary of Gregory's episcopal consecration rather than on March 12, the day of his death.
$desc$),
('saint-teresa-of-calcutta-virgin', $desc$
In the Roman General Calendar, this celebration falls on September 5 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it.
$desc$),
('the-nativity-of-the-blessed-virgin-mary', $desc$
In the Roman General Calendar, this celebration falls on September 8 as a feast with white vestments.

As a feast, it outranks memorials and gives the day a fuller proper office and Mass. Its fixed date follows the traditional sequence nine months after the celebration of the Immaculate Conception.
$desc$),
('saint-peter-claver-priest', $desc$
In the Roman General Calendar, this celebration falls on September 9 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it.
$desc$),
('the-most-holy-name-of-mary', $desc$
In the Roman General Calendar, this celebration falls on September 12 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it. Omitted from the general calendar in 1969, it was restored to the Roman General Calendar in 2002.
$desc$),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on September 13 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes.
$desc$),
('the-exaltation-of-the-holy-cross', $desc$
In the Roman General Calendar, this celebration falls on September 14 as a feast of the Lord with red vestments.

As a feast of the Lord, it outranks memorials and ordinary weekdays and receives the fuller celebration proper to that rank. As a feast of the Lord on September 14, it can replace the usual Sunday observance of Ordinary Time when the rubrics so require.
$desc$),
('our-lady-of-sorrows', $desc$
In the Roman General Calendar, this celebration falls on September 15 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes. Its placement immediately after the Exaltation of the Holy Cross gives the modern Roman calendar a deliberate sequence of Cross and Compassion.
$desc$),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', $desc$
In the Roman General Calendar, this celebration falls on September 16 as an obligatory memorial with red vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes.
$desc$),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on September 17 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it. It shares this date with another optional memorial in the Roman General Calendar, so local or pastoral choice determines which observance is used.
$desc$),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on September 17 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it. It shares this date with another optional memorial in the Roman General Calendar, so local or pastoral choice determines which observance is used.
$desc$),
('saint-januarius-bishop-and-martyr', $desc$
In the Roman General Calendar, this celebration falls on September 19 as an optional memorial with red vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it.
$desc$),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', $desc$
In the Roman General Calendar, this celebration falls on September 20 as an obligatory memorial with red vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes.
$desc$),
('saint-matthew-apostle-and-evangelist', $desc$
In the Roman General Calendar, this celebration falls on September 21 as a feast with white vestments.

As a feast, it outranks memorials and gives the day a fuller proper office and Mass. The feast rank reflects the place ordinarily given to the apostles and evangelists in the Roman sanctoral cycle.
$desc$),
('saint-pius-of-pietrelcina-priest', $desc$
In the Roman General Calendar, this celebration falls on September 23 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes.
$desc$),
('saints-cosmas-and-damian-martyrs', $desc$
In the Roman General Calendar, this celebration falls on September 26 as an optional memorial with red vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it.
$desc$),
('saint-vincent-de-paul-priest', $desc$
In the Roman General Calendar, this celebration falls on September 27 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes.
$desc$),
('saint-wenceslaus-martyr', $desc$
In the Roman General Calendar, this celebration falls on September 28 as an optional memorial with red vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it. It shares this date with another optional memorial in the Roman General Calendar, so local or pastoral choice determines which observance is used.
$desc$),
('saint-lawrence-ruiz-and-companions-martyrs', $desc$
In the Roman General Calendar, this celebration falls on September 28 as an optional memorial with red vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it. It shares this date with another optional memorial in the Roman General Calendar, so local or pastoral choice determines which observance is used.
$desc$),
('saints-michael-gabriel-and-raphael-archangels', $desc$
In the Roman General Calendar, this celebration falls on September 29 as a feast with white vestments.

As a feast, it outranks memorials and gives the day a fuller proper office and Mass. The modern Roman calendar unites here observances once distributed separately among Michael, Gabriel, and Raphael.
$desc$),
('saint-jerome-priest-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on September 30 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes.
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
('saint-gregory-the-great-pope-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 3 septembre comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur. Le calendrier romain général moderne la place à l'anniversaire de la consécration épiscopale de Grégoire plutôt qu'au 12 mars, jour de sa mort.
$desc$),
('saint-teresa-of-calcutta-virgin', $desc$
Dans le calendrier romain général, cette célébration tombe le 5 septembre comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche.
$desc$),
('the-nativity-of-the-blessed-virgin-mary', $desc$
Dans le calendrier romain général, cette célébration tombe le 8 septembre comme une fête avec les ornements blancs.

Comme fête, elle l'emporte sur les mémoires et donne au jour une messe et un office propres plus développés. Sa date fixe suit la séquence traditionnelle de neuf mois après la célébration de l'Immaculée Conception.
$desc$),
('saint-peter-claver-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 9 septembre comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche.
$desc$),
('the-most-holy-name-of-mary', $desc$
Dans le calendrier romain général, cette célébration tombe le 12 septembre comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche. Retirée du calendrier général en 1969, cette mémoire y a été rétablie en 2002.
$desc$),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 13 septembre comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur.
$desc$),
('the-exaltation-of-the-holy-cross', $desc$
Dans le calendrier romain général, cette célébration tombe le 14 septembre comme une fête du Seigneur avec les ornements rouges.

Comme fête du Seigneur, elle l'emporte sur les mémoires et les féries ordinaires et reçoit la forme de célébration plus ample propre à ce rang. Comme fête du Seigneur au 14 septembre, elle peut remplacer le dimanche ordinaire habituel lorsque les rubriques le prévoient.
$desc$),
('our-lady-of-sorrows', $desc$
Dans le calendrier romain général, cette célébration tombe le 15 septembre comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur. Sa place immédiatement après l'Exaltation de la Sainte Croix donne au calendrier romain moderne une séquence délibérée de la Croix et de la Compassion.
$desc$),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', $desc$
Dans le calendrier romain général, cette célébration tombe le 16 septembre comme une mémoire obligatoire avec les ornements rouges.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur.
$desc$),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 17 septembre comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche. Elle partage cette date avec une autre mémoire facultative du calendrier romain général ; le choix de l'observance peut donc être fait selon l'usage local ou pastoral.
$desc$),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 17 septembre comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche. Elle partage cette date avec une autre mémoire facultative du calendrier romain général ; le choix de l'observance peut donc être fait selon l'usage local ou pastoral.
$desc$),
('saint-januarius-bishop-and-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 19 septembre comme une mémoire facultative avec les ornements rouges.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche.
$desc$),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', $desc$
Dans le calendrier romain général, cette célébration tombe le 20 septembre comme une mémoire obligatoire avec les ornements rouges.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur.
$desc$),
('saint-matthew-apostle-and-evangelist', $desc$
Dans le calendrier romain général, cette célébration tombe le 21 septembre comme une fête avec les ornements blancs.

Comme fête, elle l'emporte sur les mémoires et donne au jour une messe et un office propres plus développés. Le rang de fête correspond à la place ordinairement donnée aux apôtres et aux évangélistes dans le sanctoral romain.
$desc$),
('saint-pius-of-pietrelcina-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 23 septembre comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur.
$desc$),
('saints-cosmas-and-damian-martyrs', $desc$
Dans le calendrier romain général, cette célébration tombe le 26 septembre comme une mémoire facultative avec les ornements rouges.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche.
$desc$),
('saint-vincent-de-paul-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 27 septembre comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur.
$desc$),
('saint-wenceslaus-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 28 septembre comme une mémoire facultative avec les ornements rouges.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche. Elle partage cette date avec une autre mémoire facultative du calendrier romain général ; le choix de l'observance peut donc être fait selon l'usage local ou pastoral.
$desc$),
('saint-lawrence-ruiz-and-companions-martyrs', $desc$
Dans le calendrier romain général, cette célébration tombe le 28 septembre comme une mémoire facultative avec les ornements rouges.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche. Elle partage cette date avec une autre mémoire facultative du calendrier romain général ; le choix de l'observance peut donc être fait selon l'usage local ou pastoral.
$desc$),
('saints-michael-gabriel-and-raphael-archangels', $desc$
Dans le calendrier romain général, cette célébration tombe le 29 septembre comme une fête avec les ornements blancs.

Comme fête, elle l'emporte sur les mémoires et donne au jour une messe et un office propres plus développés. Le calendrier romain moderne réunit ici des observances autrefois réparties entre Michel, Gabriel et Raphaël.
$desc$),
('saint-jerome-priest-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 30 septembre comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur.
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
('saint-gregory-the-great-pope-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 3 Septembris agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat. Calendarium Romanum generale hodiernum eam in anniversario consecrationis episcopalis Gregorii servat potius quam die 12 Martii, quo obiit.
$desc$),
('saint-teresa-of-calcutta-virgin', $desc$
In Calendario Romano Generali haec celebratio die 5 Septembris agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit.
$desc$),
('the-nativity-of-the-blessed-virgin-mary', $desc$
In Calendario Romano Generali haec celebratio die 8 Septembris agitur ut festum cum paramentis albis.

Ut festum, memorias antecedit atque diem propria Missa et Officio plenius exornat. Dies fixus sequitur seriem traditam novem mensium post celebrationem Immaculatae Conceptionis.
$desc$),
('saint-peter-claver-priest', $desc$
In Calendario Romano Generali haec celebratio die 9 Septembris agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit.
$desc$),
('the-most-holy-name-of-mary', $desc$
In Calendario Romano Generali haec celebratio die 12 Septembris agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit. E calendario generali anno 1969 omissa, haec memoria anno 2002 in Calendarium Romanum Generale restituta est.
$desc$),
('saint-john-chrysostom-bishop-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 13 Septembris agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat.
$desc$),
('the-exaltation-of-the-holy-cross', $desc$
In Calendario Romano Generali haec celebratio die 14 Septembris agitur ut festum Domini cum paramentis rubris.

Ut festum Domini, memorias et ferias ordinarias antecedit atque pleniore celebratione fruitur. Ut festum Domini die 14 Septembris, dominicam per annum ordinariam supplere potest ubi rubricae ita statuunt.
$desc$),
('our-lady-of-sorrows', $desc$
In Calendario Romano Generali haec celebratio die 15 Septembris agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat. Collocatio eius statim post Exaltationem Sanctae Crucis calendarium Romanum hodiernum consulto in seriem Crucis et Compassionis disponit.
$desc$),
('saints-cornelius-pope-and-cyprian-bishop-martyrs', $desc$
In Calendario Romano Generali haec celebratio die 16 Septembris agitur ut memoria obligatoria cum paramentis rubris.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat.
$desc$),
('saint-robert-bellarmine-bishop-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 17 Septembris agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit. Eandem diem cum alia memoria ad libitum in Calendario Romano Generali communicat; ideo electio secundum usum localem vel pastoralem fieri potest.
$desc$),
('saint-hildegard-of-bingen-virgin-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 17 Septembris agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit. Eandem diem cum alia memoria ad libitum in Calendario Romano Generali communicat; ideo electio secundum usum localem vel pastoralem fieri potest.
$desc$),
('saint-januarius-bishop-and-martyr', $desc$
In Calendario Romano Generali haec celebratio die 19 Septembris agitur ut memoria ad libitum cum paramentis rubris.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit.
$desc$),
('saints-andrew-kim-tae-gon-priest-paul-chong-ha-sang-and-companions-martyrs', $desc$
In Calendario Romano Generali haec celebratio die 20 Septembris agitur ut memoria obligatoria cum paramentis rubris.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat.
$desc$),
('saint-matthew-apostle-and-evangelist', $desc$
In Calendario Romano Generali haec celebratio die 21 Septembris agitur ut festum cum paramentis albis.

Ut festum, memorias antecedit atque diem propria Missa et Officio plenius exornat. Gradus festi locum refert qui apostolis et evangelistis in sanctorali Romano ordinarie tribuitur.
$desc$),
('saint-pius-of-pietrelcina-priest', $desc$
In Calendario Romano Generali haec celebratio die 23 Septembris agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat.
$desc$),
('saints-cosmas-and-damian-martyrs', $desc$
In Calendario Romano Generali haec celebratio die 26 Septembris agitur ut memoria ad libitum cum paramentis rubris.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit.
$desc$),
('saint-vincent-de-paul-priest', $desc$
In Calendario Romano Generali haec celebratio die 27 Septembris agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat.
$desc$),
('saint-wenceslaus-martyr', $desc$
In Calendario Romano Generali haec celebratio die 28 Septembris agitur ut memoria ad libitum cum paramentis rubris.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit. Eandem diem cum alia memoria ad libitum in Calendario Romano Generali communicat; ideo electio secundum usum localem vel pastoralem fieri potest.
$desc$),
('saint-lawrence-ruiz-and-companions-martyrs', $desc$
In Calendario Romano Generali haec celebratio die 28 Septembris agitur ut memoria ad libitum cum paramentis rubris.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit. Eandem diem cum alia memoria ad libitum in Calendario Romano Generali communicat; ideo electio secundum usum localem vel pastoralem fieri potest.
$desc$),
('saints-michael-gabriel-and-raphael-archangels', $desc$
In Calendario Romano Generali haec celebratio die 29 Septembris agitur ut festum cum paramentis albis.

Ut festum, memorias antecedit atque diem propria Missa et Officio plenius exornat. Calendarium Romanum hodiernum hic observantias congregat quae olim inter Michaelem, Gabrielem et Raphaelem separatae erant.
$desc$),
('saint-jerome-priest-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 30 Septembris agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

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
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 'Saint Thérèse of the Child Jesus, Virgin and Doctor of the Church', $desc$
Few saints have exercised so wide an influence from so hidden a life. Thérèse Martin entered the Carmel of Lisieux at fifteen and died there of tuberculosis at twenty-four, having never left the enclosure, worked a miracle in her lifetime, or held any office. Her feast honors a young cloistered nun whose greatness lies entirely in the depth of her love and the clarity of her spiritual insight rather than in any outward achievement.

At the heart of her holiness stands what she called her "little way": the conviction that sanctity is reached not by heroic feats but by trusting abandonment to God's mercy, offering the smallest daily acts with great love. Against every temptation to earn salvation by one's own strength, she taught the confidence of a child in the arms of a Father, receiving everything as gift. This spirituality of humility and boundless trust has proven a sure path for ordinary believers of every condition.

Thérèse's autobiography, "Story of a Soul," written under obedience and published after her death, spread rapidly across the world and drew countless readers to her doctrine. She was canonized by Pius XI in 1925, named a patroness of the missions despite her enclosure, and in 1997 declared a Doctor of the Church by John Paul II, only the third woman so honored and the youngest of all.

Her promise to "spend her heaven doing good upon earth" and to "let fall a shower of roses" continues to shape popular devotion. She remains a compelling witness that holiness is within reach of all, and that love, more than accomplishment, is the measure of a Christian life.
$desc$),
('the-holy-guardian-angels', 'The Holy Guardian Angels', $desc$
This commemoration turns the Church's attention to the spiritual companions God assigns to watch over human life. Rather than honoring a particular angel or event, it celebrates the whole ministry of the guardian angels, those pure spirits given to protect, guide, and pray for each person on the way to salvation.

The observance rests on the biblical conviction that God entrusts his people to angelic care. Scripture speaks of angels who guard one's ways, of the "little ones" whose angels behold the face of the Father, and of these spirits as ministers sent for the sake of those who inherit salvation. The feast celebrates both God's provident love, which does not leave humanity to walk alone, and the reality of an unseen world ordered wholly to his purposes.

Devotion to guardian angels is ancient, though a proper feast arose only gradually; a dedicated celebration was granted in the sixteenth century and extended to the universal Church by Pope Clement X in 1670. The theology behind it was given careful expression by masters such as Thomas Aquinas, who taught that each person receives an angel as guardian and helper on the way to salvation.

For the faithful today the feast is an invitation to gratitude and confidence, and to the simple practice of prayer to one's angel. It recalls that no life is unaccompanied, and that heavenly protection surrounds even the most ordinary and hidden of days.
$desc$),
('saint-francis-of-assisi', 'Saint Francis of Assisi', $desc$
Among the most beloved figures in Christian history, Francis of Assisi stands as the great herald of gospel poverty and fraternal love. Son of a prosperous cloth merchant, he renounced his inheritance to embrace Lady Poverty, and the feast honors a man whose radical literalism about the Gospel reshaped the medieval Church and continues to inspire people far beyond it.

The saint's life was a sustained attempt to conform himself wholly to the poor and crucified Christ. His poverty was not mere destitution but a joyful stripping away of everything that stood between the soul and God, freeing him to love creation as gift and every creature as brother and sister. In this he gave the Church a living icon of the humility, peace, and reconciliation preached in the Beatitudes.

Born around 1181, Francis gathered his first companions and received papal approval for his rule from Innocent III, founding the Order of Friars Minor; with Clare he began the Poor Ladies, and later the lay penitents. In 1224, on Mount La Verna, he received the stigmata, the first recorded instance of these wounds. He died in 1226 and was canonized by Gregory IX just two years later; he is also remembered for his "Canticle of the Creatures" and for popularizing the Christmas crib.

His witness remains strikingly contemporary, inspiring movements for peace, care for the poor, and stewardship of creation. Named patron of ecology, he still summons Christians to simplicity, humility, and a love that embraces all people and the whole created world.
$desc$),
('saint-faustina-kowalska-virgin', 'Saint Faustina Kowalska, Virgin', $desc$
This memorial honors a Polish religious sister of modest education whose spiritual diary became one of the most influential mystical texts of the twentieth century. Faustina Kowalska is known above all as the "apostle of Divine Mercy," the humble instrument through whom a renewed devotion to God's mercy spread across the world.

The message entrusted to her centers on the boundless mercy of God, revealed in Christ and offered especially to sinners who turn to him with trust. Her spirituality holds up mercy as the greatest attribute of God and calls believers both to receive it confidently and to practice it toward others in deed, word, and prayer. The image she was directed to have painted, with its rays of blood and water and the words "Jesus, I trust in you," gives this teaching visible form.

Born Helena Kowalska in 1905, she entered the Congregation of the Sisters of Our Lady of Mercy and served in humble tasks as cook, gardener, and porter until her death in 1938. Her diary, recording her mystical experiences, was for a time viewed with caution and even placed under restriction, before being vindicated and promoted. John Paul II beatified her in 1993 and canonized her in 2000, the first saint of the new millennium, on the day he established Divine Mercy Sunday.

Her feast invites the faithful to renewed confidence in God's forgiveness and to become themselves channels of mercy in a wounded world. The Divine Mercy devotion she inspired, including the chaplet and the hour of great mercy, remains widely practiced.
$desc$),
('saint-bruno-priest', 'Saint Bruno, Priest', $desc$
This memorial honors the founder of the Carthusians, one of the most austere and contemplative of all religious orders. Bruno was a distinguished scholar and teacher who abandoned an eminent ecclesiastical career for a life of silence and solitude, and the feast celebrates a man whose love of hidden prayer left an enduring mark on the Church.

The charism he embodied is that of pure contemplation: a life ordered wholly to seeking God in solitude, silence, and detachment from the world. The Carthusian ideal weds the solitude of the hermit to the support of community, so that each monk lives largely alone yet within a shared rhythm of prayer. Bruno's witness proclaims that the search for God for his own sake, without visible activity or fruit, is itself a high service to the whole Body of Christ.

Born at Cologne around 1030, Bruno taught at Reims and numbered among his pupils a future pope. Withdrawing from public life, in 1084 he established with a few companions the first hermitage at the Grande Chartreuse in the Alps. Called to Rome by Pope Urban II, one of his former students, he later founded a second charterhouse in Calabria, where he died in 1101. Uniquely, the Carthusians never sought a formal canonization; his cult was confirmed for the order and later extended to the universal Church.

His feast speaks quietly against the noise and restlessness of modern life, commending the value of silence, prayer, and inwardness. The order he founded endures to this day, famously unreformed because, as it is said, it was never deformed.
$desc$),
('our-lady-of-the-rosary', 'Our Lady of the Rosary', $desc$
This memorial celebrates the Blessed Virgin Mary under the title given her through the great prayer of the rosary, that meditative weaving of vocal prayer and reflection on the mysteries of Christ. Distinct among Marian feasts, it commemorates not an event of Mary's life but a form of prayer and a historic deliverance attributed to her intercession.

At its heart the rosary is a contemplation of the mysteries of salvation seen through the eyes of Mary, so that this feast honors her as the one who leads believers to her Son. It celebrates her powerful intercession and her role in the Church's life, drawing the faithful into the joyful, sorrowful, glorious, and luminous events of redemption. The devotion joins simplicity of words to depth of contemplation, making the whole gospel accessible to all.

The feast took shape in thanksgiving for the Christian victory at the naval battle of Lepanto in 1571, a deliverance widely ascribed to the rosary prayed throughout Europe at the urging of Pope Pius V, who instituted a commemoration of Our Lady of Victory. Gregory XIII renamed it the feast of the Holy Rosary, and Clement XI extended it to the universal Church after another victory in 1716, confirming the association of this Marian title with prayerful confidence in times of danger.

The feast, reinforced by later Marian apparitions urging the rosary, continues to sustain one of the most cherished of Catholic devotions. It invites the faithful to take up the beads as a school of contemplation and a means of entrusting the needs of the world to Mary's intercession.
$desc$),
('saint-denis-bishop-and-companions-martyrs', 'Saint Denis, Bishop, and Companions, Martyrs', $desc$
This memorial honors the first bishop of Paris and the companions who shed their blood with him, among the most venerated of the early martyrs of Gaul. Denis stands at the fountainhead of the Church in the French capital, and the feast recalls the courage of those who planted the faith in that land at the cost of their lives.

Their witness is that of martyrdom itself, the supreme testimony in which the disciple follows the Master unto death rather than deny him. In the martyrs the Church sees the seed of new Christians and the triumph of grace over fear, and Denis in particular embodies the apostolic labor of the missionary bishop who gathers, teaches, and finally seals his flock's faith with his own blood.

According to the earliest reliable account, that of Gregory of Tours, Denis was one of several bishops sent from Rome to evangelize Gaul in the third century, and he was beheaded near Paris with the priest Rusticus and the deacon Eleutherius around the year 250. Over time his story was embellished, and he was mistakenly conflated both with Dionysius the Areopagite of the Acts of the Apostles and with a later mystical writer. The great Abbey of Saint-Denis rose over his tomb and became the burial place of the kings of France.

Honored as a patron of Paris and of France, Denis remains a figure of national and ecclesial memory. His feast invites the faithful to gratitude for those who first brought the gospel to their lands, and to the same fidelity that does not shrink from witness whatever the cost.
$desc$),
('saint-john-leonardi-priest', 'Saint John Leonardi, Priest', $desc$
This memorial honors an Italian priest of the Counter-Reformation whose zeal for renewal touched catechesis, the reform of religious life, and the young Church's missionary outreach. John Leonardi devoted himself to the spiritual awakening of ordinary people, and the feast celebrates a pastor whose quiet labors bore lasting fruit.

His life expresses the reforming spirit of the Catholic renewal that followed the Council of Trent: sound doctrine taught plainly, frequent recourse to the sacraments, and priests formed in holiness for the good of the faithful. Leonardi understood that the renewal of the Church begins with well-instructed and devout Christians, and he gave himself especially to the teaching of the faith to the young and the neglected.

Born near Lucca around 1541, he trained first as a pharmacist before becoming a priest. He founded the Clerks Regular of the Mother of God to promote reform and catechesis, and he helped establish and shape what would become the Congregation for the Propagation of the Faith, contributing to the training of missionary clergy; he was also associated with the founding of a college that furthered the missions. He died in Rome in 1609 while caring for the sick during an epidemic. Pius IX beatified him and Pius XI canonized him in 1938.

His feast honors the patient work of catechesis and priestly formation that renews the Church from within. It commends to the faithful today the enduring importance of teaching the faith clearly and of the sacraments as the wellspring of Christian life.
$desc$),
('saint-john-henry-newman-priest-and-doctor-of-the-church', 'Saint John Henry Newman, Priest and Doctor of the Church', $desc$
This memorial honors one of the most influential religious thinkers of the modern age, an English convert whose intellect and holiness bridged two worlds. Newman was a celebrated Anglican clergyman and Oxford scholar who, after long and costly reflection, entered the Catholic Church, and the feast celebrates a mind wholly devoted to following the truth wherever it led.

His genius lay in illuminating how Christian faith is held and how it grows: his study of the development of doctrine showed that the Church's teaching unfolds organically over time while remaining true to itself, and his exploration of conscience, assent, and the relation of faith and reason shaped Catholic thought for generations. Above all he taught that authentic religion engages the whole person, and that to be deep in history is to cease to be Protestant.

Born in London in 1801, Newman became a leader of the Oxford Movement seeking to renew the Church of England before his reception into the Catholic Church in 1845. Ordained a Catholic priest, he founded the English Oratory and later, despite years of misunderstanding, was created a cardinal by Leo XIII in 1879, taking as his motto "heart speaks to heart." Beatified by Benedict XVI in 2010 and canonized by Francis in 2019, he was declared a Doctor of the Church in 2025.

Newman's witness continues to speak to seekers, scholars, and all who wrestle with faith in a skeptical age. His feast commends the honest pursuit of truth, fidelity to conscience rightly formed, and confidence that reason and faith together lead the soul home.
$desc$),
('saint-john-xxiii-pope', 'Saint John XXIII, Pope', $desc$
This memorial honors the beloved pope who summoned the Second Vatican Council and became a symbol of pastoral warmth and openness to the modern world. Elected late in life and expected by many to be a transitional figure, Angelo Roncalli instead set in motion one of the most consequential events in the recent history of the Church, and the feast celebrates a shepherd of disarming goodness.

His witness is that of the good pastor whose confidence rests in God's providence and whose heart is open to all. He wished to read the "signs of the times" and to present the perennial faith in a way the age could receive, opening windows to let in fresh air while keeping the Church faithful to her deposit. His humility, humor, and evident love for people made him a figure of hope far beyond Catholic boundaries.

Born to a peasant family in northern Italy in 1881, Roncalli served as a military chaplain, a Vatican diplomat in Bulgaria, Turkey, and France, and patriarch of Venice before his election in 1958. In 1962 he opened the Second Vatican Council and issued the encyclical "Pacem in Terris," addressed to all people of good will; he died in 1963 before the Council concluded. John Paul II beatified him in 2000, and Francis canonized him in 2014.

Remembered affectionately as "the Good Pope," John XXIII continues to embody the Church's desire to meet the world with confidence and love. His feast commends trust in providence, warmth toward all, and courage to seek renewal without fear.
$desc$),
('saint-callistus-i-pope-and-martyr', 'Saint Callistus I, Pope and Martyr', $desc$
This memorial honors a third-century pope whose remarkable path from slavery to the chair of Peter is among the most striking in early Church history. Callistus governed the Roman Church in a time of controversy and persecution, and the feast recalls a shepherd who upheld the Church's ministry of mercy against rigorist opposition.

His pontificate is remembered above all for the exercise of the Church's power to forgive. Against those who would deny reconciliation to grave sinners, Callistus affirmed that the Church may readmit even the fallen to communion after penance, defending the breadth of divine mercy and the pastoral responsibility of the successors of the apostles. His stance embodies the conviction that no sin lies beyond the reach of God's forgiveness.

Much of what is known comes, ironically, from his opponents, especially Hippolytus. Once a slave, Callistus was entrusted with funds, suffered condemnation to the mines of Sardinia, and was later freed; the pope placed him in charge of an important Christian cemetery on the Appian Way, which still bears his name and became the burial place of many early popes. He was elected pope around 217 and died about 222, venerated as a martyr, apparently killed in a local disturbance. His name is recorded in the ancient Roman canon of the Mass.

His feast honors the early Church's confidence in the power of the keys to bind and loose. It commends to the faithful the same trust in God's mercy and the pastoral generosity that seeks to reconcile rather than to exclude.
$desc$),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 'Saint Teresa of Jesus, Virgin and Doctor of the Church', $desc$
This memorial honors the great Spanish mystic and reformer of Carmel, one of the towering figures of Christian spirituality. Teresa of Ávila combined profound experience of prayer with practical genius and unflagging energy, and the feast celebrates a woman whose writings map the soul's ascent to union with God with unmatched depth and warmth.

Her teaching centers on prayer as an intimate friendship with God and on the interior journey toward union with him. In works such as "The Interior Castle" and "The Way of Perfection" she charts the stages of the spiritual life, describing the movement from vocal prayer to the heights of contemplation with both mystical insight and shrewd human wisdom. Her doctrine holds that the soul is a dwelling place of God, to be entered through humility, self-knowledge, and persevering prayer.

Born in 1515, Teresa entered the Carmelite order but experienced a decisive conversion to deeper prayer in midlife. From 1562 she undertook a sweeping reform, founding the Discalced Carmelites and establishing many convents across Spain despite fierce opposition, aided by John of the Cross. She died in 1582 and was canonized in 1622. In 1970 Paul VI declared her a Doctor of the Church, the first woman ever so honored, a recognition of the enduring authority of her spiritual teaching.

Teresa remains a sure guide for all who seek a deeper life of prayer. Her feast commends her fearless trust, her joyful realism, and her conviction, captured in her famous lines, that God alone suffices and that patience obtains all things.
$desc$),
('saint-hedwig-religious', 'Saint Hedwig, Religious', $desc$
This memorial honors a medieval duchess of Silesia who united the responsibilities of high rank with a life of remarkable charity and penance. Hedwig moved from the splendor of a princely court to the service of the poor and the sick, and the feast celebrates a noblewoman whose holiness shone through the duties and sorrows of her state.

Her witness shows how sanctity may flourish in the midst of worldly power and family life. Wife and mother, then widow, she practiced deep humility, generous almsgiving, and heroic patience amid the trials that befell her house. Her life proclaims that the works of mercy and a spirit of prayer belong to every vocation, and that the great may serve Christ in the least of his brethren.

Born around 1174 into a noble German family, Hedwig married Henry the Bearded, Duke of Silesia, and bore him several children. Together they founded the monastery of Trebnitz, the first house of religious women in the region, and she supported hospitals and the care of the poor. After Henry's death she withdrew to live near the nuns, though she did not take vows, and she endured the deaths of her children, including a son killed fighting the Mongols. She died in 1243 and was canonized by Clement IV in 1267.

Venerated as a patroness of Silesia and a bridge between German and Polish peoples, Hedwig remains a model of charity in high places. Her feast commends the sanctification of ordinary duties, generous service of the needy, and steadfast faith in the face of loss.
$desc$),
('saint-margaret-mary-alacoque-virgin', 'Saint Margaret Mary Alacoque, Virgin', $desc$
This memorial honors the French Visitation nun through whom the devotion to the Sacred Heart of Jesus received its decisive impulse. Margaret Mary Alacoque was a humble and often misunderstood religious whose mystical experiences opened for the whole Church a renewed contemplation of Christ's love, and the feast celebrates this hidden instrument of a great devotion.

The message she transmitted places at its center the Heart of Christ as the symbol of his boundless, wounded love for humanity, a love met too often with indifference. Her spirituality calls for loving reparation, frequent Communion, and consecration to that Heart, holding up the tenderness and mercy of God against every coldness of the human heart. The devotion she inspired has become one of the great treasures of Catholic piety.

Born in Burgundy in 1647, Margaret Mary entered the Visitation convent at Paray-le-Monial, where between 1673 and 1675 she received a series of revelations of the Sacred Heart, including the request for a feast and the practices of the First Fridays. Doubted at first even within her community, she found a firm supporter in her Jesuit confessor Claude de la Colombière, who helped spread the message. She died in 1690, was beatified in 1864, and canonized by Benedict XV in 1920.

The Sacred Heart devotion she helped establish endures in the life of the Church, in its feast, its litanies, and its acts of consecration. Her own feast commends trust in the merciful love of Christ and the call to answer that love with wholehearted devotion.
$desc$),
('saint-ignatius-of-antioch-bishop-and-martyr', 'Saint Ignatius of Antioch, Bishop and Martyr', $desc$
This memorial honors one of the most venerable figures of the apostolic age, bishop of Antioch and martyr, whose letters are among the earliest and most precious witnesses to the faith after the New Testament. Ignatius was condemned to the beasts at Rome, and the feast celebrates a pastor who longed to give his life in imitation of the crucified Christ.

His witness is that of the martyr who understands his death as the fullest union with Christ and the crowning of discipleship. Writing on his journey to execution, he pleaded that no one should hinder his martyrdom, calling himself "God's wheat" to be ground by the teeth of beasts into pure bread. His letters bear early and powerful testimony to the Eucharist as the "medicine of immortality," to the unity of the Church around her bishop, and, in the first surviving use of the phrase, to the "Catholic Church."

Ignatius led the Church of Antioch, according to tradition as its second or third bishop, and was arrested during a persecution under the emperor Trajan in the early second century. Sent under guard to Rome, he wrote seven letters to various Christian communities and to Bishop Polycarp of Smyrna, documents of immense value for the early Church's belief and structure. He was martyred at Rome around the year 107. His remains were later venerated and eventually returned to Antioch.

His feast draws the faithful into the living memory of the age immediately after the apostles. It commends fidelity unto death, love of the Eucharist, and unity with the Church's pastors, the very things for which this ardent bishop gave his life.
$desc$),
('saint-luke-evangelist', 'Saint Luke, Evangelist', $desc$
This feast honors the author of the third Gospel and of the Acts of the Apostles, the evangelist who gave the Church its fullest narrative of Christ's mercy and of the Spirit-driven mission of the early Church. Luke, a companion of Paul, is celebrated for the beauty and tenderness of his writing and for his witness to the universal reach of salvation.

His particular gift is the portrayal of Christ as the compassionate Savior of all, especially the poor, the outcast, and sinners. To Luke the Church owes the parables of the Prodigal Son and the Good Samaritan, the canticles of the infancy, and a special attentiveness to women, to prayer, and to the Holy Spirit. In Acts he traces the gospel's advance from Jerusalem to Rome, showing salvation offered to the whole world, Jew and Gentile alike.

Tradition identifies him as a physician and a Gentile, the "beloved physician" named by Paul, who accompanied the apostle on his journeys, as suggested by the "we" passages of Acts. Writing for a Greek-speaking audience, he composed his two-volume work as a careful and orderly account. Later tradition also honored him as a painter of the Virgin, and he is reckoned a patron of physicians and artists; ancient testimony holds that he died at an advanced age.

Luke's writings remain a wellspring of the Church's understanding of God's mercy. His feast commends the good news he preserved, and invites the faithful to contemplate anew the Savior who seeks out the lost and the Spirit who guides the Church on her mission.
$desc$),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 'Saints John de Brébeuf, Isaac Jogues, Priests, and Companions, Martyrs', $desc$
This memorial honors the Jesuit missionaries and their lay companions who carried the gospel to the peoples of North America in the seventeenth century and sealed their preaching with heroic deaths. Known as the North American Martyrs, they labored among the Huron and Iroquois nations, and the feast celebrates their courage, endurance, and love unto death.

Their witness unites the missionary's zeal with the martyr's sacrifice. They crossed an ocean and immersed themselves in unfamiliar languages and cultures for the sake of souls, enduring hardship, misunderstanding, and finally torture and death rather than abandon the peoples they had come to serve. Their martyrdom bore fruit, most famously in the later conversion associated with Kateri Tekakwitha, the "Lily of the Mohawks."

Between 1642 and 1649, eight missionaries met violent deaths amid warfare between the native nations. Isaac Jogues, having survived captivity and mutilation, returned to the mission and was killed in 1646; John de Brébeuf, a gifted linguist devoted to the Huron, was tortured to death in 1649. Their companions, priests and lay helpers alike, shared similar fates. The group was canonized together by Pius XI in 1930 and honored as patrons of Canada.

Their feast commends the missionary spirit that risks everything to bring Christ to others, and the fortitude that perseveres through suffering. It invites the faithful to gratitude for those who planted the faith on a new continent and to a like generosity in bearing witness today.
$desc$),
('saint-paul-of-the-cross-priest', 'Saint Paul of the Cross, Priest', $desc$
This memorial honors the Italian mystic and preacher who founded the Passionists, an order devoted wholly to keeping alive the memory of Christ's suffering. Paul of the Cross spent his long life proclaiming the Passion as the supreme proof of God's love, and the feast celebrates an apostle of the Cross whose preaching moved countless hearts to conversion.

His whole spirituality flows from meditation on the Passion of Jesus, which he called the greatest and most overwhelming work of divine love. He taught that to contemplate the sufferings of Christ is to be drawn into intimacy with God and to learn the depth of his mercy toward sinners. This memory of the Passion, kept alive in preaching and prayer, he saw as a remedy for the spiritual coldness and forgetfulness of his age.

Born Paul Francis Danei in northern Italy in 1694, he underwent a profound conversion in his youth and, after a period of solitude and mystical experience, founded in 1720 the Congregation of the Passion, whose members add a fourth vow to keep alive the memory of Christ's Passion. A tireless missionary preacher across Italy, he was also a noted spiritual director and gifted with mystical graces. He died in Rome in 1775 and was canonized by Pius IX in 1867.

The order he founded continues its ministry of preaching the Cross throughout the world. His feast commends devotion to the Passion of Christ as a school of love and conversion, and invites the faithful to find in the sufferings of the Savior the measure of God's mercy.
$desc$),
('saint-john-paul-ii-pope', 'Saint John Paul II, Pope', $desc$
This memorial honors one of the most influential popes of the modern era, whose long pontificate reshaped the Church's engagement with the world. Karol Wojtyła, the first non-Italian pope in over four centuries and the first from Poland, became a global witness to human dignity and to hope, and the feast celebrates a shepherd of tireless energy and profound faith.

His teaching placed the human person, redeemed in Christ, at the center of his message: "Be not afraid," he urged, and "open wide the doors to Christ." He proclaimed the dignity and vocation of every person, the sanctity of life, the truth about marriage and the family, and the reconciliation of faith and reason, developing a rich theology of the body and of human freedom rooted in truth. His confidence flowed from deep Marian devotion, summed up in his motto "Totus tuus."

Born in 1920, Wojtyła lived through the Nazi occupation and Communist rule of Poland, was ordained in secret circumstances, and became archbishop of Kraków and a voice at the Second Vatican Council before his election in 1978. Over twenty-six years he traveled the globe, contributed to the fall of Communism in Eastern Europe, survived an assassination attempt in 1981, convened World Youth Days, and issued landmark encyclicals. He died in 2005 and was canonized by Francis in 2014, with Benedict XVI having beatified him in 2011.

His witness continues to inspire, especially the young whom he so loved. His feast commends courageous fidelity, the defense of human dignity, and the fearless proclamation of Christ as the answer to the deepest questions of the human heart.
$desc$),
('saint-john-of-capistrano-priest', 'Saint John of Capistrano, Priest', $desc$
This memorial honors a Franciscan friar of the fifteenth century whose gifts as preacher, reformer, and leader made him one of the most active churchmen of his day. John of Capistrano combined fiery eloquence with practical energy, and the feast celebrates a man who spent himself for the renewal of Christian life and the defense of Christendom.

His witness is that of the reforming preacher who calls a lax and troubled society back to fervor. Trained in law before his conversion, he brought discipline and clarity to the promotion of the observant reform within the Franciscan order, and his sermons drew vast crowds across Europe. His life proclaims the power of the preached word to convert hearts and to rouse a whole people to penance and prayer.

Born in the Italian town of Capestrano in 1386, John studied law and served as a governor before entering the Franciscans, becoming a close associate of Bernardine of Siena. He labored for the reform of his order, undertook missions and diplomatic tasks across central Europe, and in his old age preached the defense of Belgrade against the advancing Ottoman forces, helping to inspire the Christian victory of 1456. He died soon after, in that same year, and was canonized in 1690.

Remembered as a preacher of reform and a rallying figure in a time of crisis, John of Capistrano remains a vigorous example of zeal for the faith. His feast commends the renewing power of preaching, fidelity to religious discipline, and courage in defense of what is held sacred.
$desc$),
('saint-anthony-mary-claret-bishop', 'Saint Anthony Mary Claret, Bishop', $desc$
This memorial honors a nineteenth-century Spanish bishop, missionary, and founder whose immense apostolic activity earned him a place among the great evangelizers of the modern age. Anthony Mary Claret preached, wrote, and organized with extraordinary zeal, and the feast celebrates a pastor consumed by love for the spread of the gospel.

His witness is that of untiring apostolic labor at the service of souls. Convinced that the salvation of others should be the burning concern of every priest, he devoted himself to popular missions, the printed word, and the formation of clergy and laity for evangelization. His spirituality united deep prayer and Marian devotion with ceaseless activity, embodying the ideal of the apostolic missionary who spends himself entirely for the gospel.

Born in Catalonia in 1807, the son of a weaver, Claret was ordained a priest and became a celebrated missionary preacher across Spain and the Canary Islands. In 1849 he founded the Missionary Sons of the Immaculate Heart of Mary, known as the Claretians, and helped establish a great publishing apostolate. Named archbishop of Santiago de Cuba, he reformed the diocese amid opposition and survived an attempt on his life; later, as confessor to Queen Isabella II, he shared her exile. He died in France in 1870 and was canonized by Pius XII in 1950.

The congregation he founded continues his missionary work around the world. His feast commends zeal for evangelization, the apostolate of the written and spoken word, and a life poured out without reserve for the salvation of others.
$desc$),
('saints-simon-and-jude-apostles', 'Saints Simon and Jude, Apostles', $desc$
This feast honors two of the Twelve, joined together in the Church's memory and worship: Simon, called the Zealot, and Jude, also known as Thaddaeus. Though little is recorded of them in the Gospels, they belong to the foundational company chosen by Christ, and the feast celebrates their share in the apostolic mission on which the Church is built.

Their witness is that of the apostle, the one sent to bear the gospel to the ends of the earth and to be a foundation stone of the Church. To be numbered among the Twelve is to stand at the origin of the apostolic tradition, the living link between Christ and every later generation of believers. In honoring these two, the Church honors the whole apostolic college and the enduring mission entrusted to it.

The Scriptures tell us little: Simon is distinguished by the epithet "the Zealot," and Jude is generally identified with the "Judas, not the Iscariot" who at the Last Supper asked the Lord why he would reveal himself only to his own. Later tradition associates the two in a mission to Persia, where they are said to have preached and been martyred together, which is why they share this single feast day. The New Testament Letter of Jude is commonly attributed to this apostle. In the West, Jude has become especially beloved as the patron of desperate and hopeless causes.

Their shared feast commends the apostolic faith once delivered and the ongoing mission of the Church. It invites the faithful to gratitude for the witnesses through whom the gospel was handed on, and to confident recourse to the intercession of Saint Jude in the most difficult of circumstances.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 'Sainte Thérèse de l''Enfant-Jésus, vierge et docteur de l''Église', $desc$
Peu de saints ont exercé une influence aussi vaste à partir d'une vie aussi cachée. Thérèse Martin entra au Carmel de Lisieux à quinze ans et y mourut de la tuberculose à vingt-quatre ans, sans jamais quitter la clôture ni accomplir d'œuvres éclatantes. Cette fête honore une jeune carmélite dont toute la grandeur tient à la profondeur de son amour et à la limpidité de son intuition spirituelle, non à quelque exploit extérieur.

Au cœur de sa sainteté se tient ce qu'elle nomma sa « petite voie » : la conviction que la sainteté ne s'atteint pas par des prouesses héroïques, mais par un abandon confiant à la miséricorde de Dieu, en offrant avec grand amour les plus humbles actes du quotidien. Contre toute prétention à se sauver par ses propres forces, elle enseigna la confiance de l'enfant dans les bras de son Père, recevant tout comme un don. Cette spiritualité d'humilité et de confiance sans bornes s'est révélée un chemin sûr pour les croyants les plus ordinaires.

Son autobiographie, « Histoire d'une âme », écrite par obéissance et publiée après sa mort, se répandit rapidement à travers le monde et attira d'innombrables lecteurs à sa doctrine. Elle fut canonisée par Pie XI en 1925, proclamée patronne des missions malgré sa clôture, et déclarée docteur de l'Église par Jean-Paul II en 1997, troisième femme seulement à recevoir ce titre et la plus jeune de tous.

Sa promesse de « passer son ciel à faire du bien sur la terre » et de « faire tomber une pluie de roses » continue de nourrir la dévotion populaire. Elle demeure un témoin saisissant que la sainteté est à la portée de tous, et que l'amour, plus que les œuvres, est la mesure d'une vie chrétienne.
$desc$),
('the-holy-guardian-angels', 'Les Saints Anges gardiens', $desc$
Cette mémoire tourne l'attention de l'Église vers les compagnons spirituels que Dieu assigne à la garde de chaque vie humaine. Plutôt que d'honorer un ange particulier ou un événement précis, elle célèbre tout le ministère des anges gardiens, ces purs esprits donnés pour protéger, guider et prier pour chacun sur le chemin du salut.

Cette célébration repose sur la conviction biblique que Dieu confie son peuple à la garde des anges. L'Écriture parle des anges qui veillent sur nos voies, des « petits » dont les anges contemplent la face du Père, et de ces esprits comme de serviteurs envoyés pour ceux qui doivent hériter du salut. La fête célèbre à la fois l'amour prévenant de Dieu, qui ne laisse pas l'homme marcher seul, et la réalité d'un monde invisible tout ordonné à ses desseins.

La dévotion aux anges gardiens est ancienne, mais une fête propre se développa progressivement ; une célébration particulière fut accordée au XVIe siècle, puis étendue à l'Église universelle par le pape Clément X en 1670. La théologie qui la sous-tend fut exposée avec soin par des maîtres tels que Thomas d'Aquin, qui enseignait que chaque personne reçoit un ange pour gardien et compagnon sur le chemin du salut.

Pour les fidèles d'aujourd'hui, cette fête invite à la gratitude et à la confiance, ainsi qu'à la simple pratique de la prière à son ange. Elle rappelle qu'aucune vie n'est sans compagnon, et qu'une protection céleste entoure jusqu'aux jours les plus ordinaires et les plus cachés.
$desc$),
('saint-francis-of-assisi', 'Saint François d''Assise', $desc$
Parmi les figures les plus aimées de l'histoire chrétienne, François d'Assise se dresse comme le grand héraut de la pauvreté évangélique et de l'amour fraternel. Fils d'un riche marchand de draps, il renonça à son héritage pour épouser dame Pauvreté, et cette fête honore un homme dont l'attachement radical à l'Évangile transforma l'Église médiévale et continue d'inspirer bien au-delà d'elle.

Toute la vie du saint fut un effort soutenu pour se conformer entièrement au Christ pauvre et crucifié. Sa pauvreté n'était pas simple dénuement, mais dépouillement joyeux de tout ce qui séparait l'âme de Dieu, le rendant libre d'aimer la création comme un don et chaque créature comme un frère ou une sœur. Il donna ainsi à l'Église une icône vivante de l'humilité, de la paix et de la réconciliation prêchées dans les Béatitudes.

Né vers 1181, François rassembla ses premiers compagnons et obtint d'Innocent III l'approbation de sa règle, fondant l'ordre des Frères mineurs ; avec Claire, il donna naissance aux Pauvres Dames, puis aux pénitents laïcs. En 1224, sur le mont de la Verna, il reçut les stigmates, premier cas attesté de ces plaies. Il mourut en 1226 et fut canonisé par Grégoire IX deux ans plus tard ; on lui doit aussi le « Cantique des créatures » et la diffusion de la crèche de Noël.

Son témoignage demeure étonnamment actuel, inspirant les mouvements pour la paix, le service des pauvres et le soin de la création. Proclamé patron de l'écologie, il appelle toujours les chrétiens à la simplicité, à l'humilité et à un amour qui embrasse tous les hommes et le monde créé tout entier.
$desc$),
('saint-faustina-kowalska-virgin', 'Sainte Faustine Kowalska, vierge', $desc$
Cette mémoire honore une religieuse polonaise de modeste instruction dont le journal spirituel devint l'un des textes mystiques les plus influents du XXe siècle. Faustine Kowalska est connue avant tout comme l'« apôtre de la Miséricorde divine », l'humble instrument par lequel une dévotion renouvelée à la miséricorde de Dieu se répandit dans le monde entier.

Le message qui lui fut confié est centré sur la miséricorde sans limites de Dieu, révélée dans le Christ et offerte tout particulièrement aux pécheurs qui se tournent vers lui avec confiance. Sa spiritualité présente la miséricorde comme le plus grand attribut de Dieu et appelle les croyants à la recevoir avec confiance et à la pratiquer envers les autres en actes, en paroles et en prières. L'image qu'elle fut invitée à faire peindre, avec ses rayons de sang et d'eau et l'inscription « Jésus, j'ai confiance en toi », donne à cet enseignement une forme visible.

Née Hélène Kowalska en 1905, elle entra dans la Congrégation des Sœurs de Notre-Dame de la Miséricorde et servit dans d'humbles tâches, comme cuisinière, jardinière et portière, jusqu'à sa mort en 1938. Son journal, où elle consignait ses expériences mystiques, fut un temps regardé avec prudence et même frappé de restriction, avant d'être pleinement reconnu et promu. Jean-Paul II la béatifia en 1993 et la canonisa en 2000, première sainte du nouveau millénaire, le jour où il institua le dimanche de la Miséricorde divine.

Sa fête invite les fidèles à une confiance renouvelée dans le pardon de Dieu et à devenir eux-mêmes des canaux de miséricorde dans un monde blessé. La dévotion à la Miséricorde divine qu'elle inspira, avec le chapelet et l'heure de la grande miséricorde, demeure largement pratiquée.
$desc$),
('saint-bruno-priest', 'Saint Bruno, prêtre', $desc$
Cette mémoire honore le fondateur des Chartreux, l'un des ordres religieux les plus austères et contemplatifs. Bruno était un savant et un maître réputé qui abandonna une brillante carrière ecclésiastique pour une vie de silence et de solitude, et cette fête célèbre un homme dont l'amour de la prière cachée marqua durablement l'Église.

Le charisme qu'il incarna est celui de la pure contemplation : une vie tout entière ordonnée à la recherche de Dieu dans la solitude, le silence et le détachement du monde. L'idéal cartusien unit la solitude de l'ermite au soutien de la communauté, en sorte que chaque moine vit surtout seul, mais au sein d'un rythme partagé de prière. Le témoignage de Bruno proclame que la recherche de Dieu pour lui-même, sans activité ni fruit visibles, est déjà un grand service rendu à tout le Corps du Christ.

Né à Cologne vers 1030, Bruno enseigna à Reims et compta parmi ses disciples un futur pape. Se retirant de la vie publique, il établit en 1084, avec quelques compagnons, le premier ermitage de la Grande Chartreuse, dans les Alpes. Appelé à Rome par le pape Urbain II, l'un de ses anciens élèves, il fonda ensuite une seconde chartreuse en Calabre, où il mourut en 1101. Fait unique, les Chartreux ne sollicitèrent jamais de canonisation formelle ; son culte fut confirmé pour l'ordre puis étendu à l'Église universelle.

Sa fête parle en silence contre le bruit et l'agitation de la vie moderne, recommandant la valeur du silence, de la prière et de l'intériorité. L'ordre qu'il fonda subsiste jusqu'à ce jour, célèbre pour n'avoir jamais été réformé, parce que, dit-on, il ne fut jamais déformé.
$desc$),
('our-lady-of-the-rosary', 'Notre-Dame du Rosaire', $desc$
Cette mémoire célèbre la Bienheureuse Vierge Marie sous le titre que lui vaut la grande prière du rosaire, cet entrelacement méditatif de la prière vocale et de la contemplation des mystères du Christ. Singulière parmi les fêtes mariales, elle ne commémore pas un événement de la vie de Marie, mais une forme de prière et une délivrance historique attribuée à son intercession.

Au fond, le rosaire est une contemplation des mystères du salut vus par les yeux de Marie, en sorte que cette fête l'honore comme celle qui conduit les croyants à son Fils. Elle célèbre sa puissante intercession et son rôle dans la vie de l'Église, introduisant les fidèles dans les mystères joyeux, douloureux, glorieux et lumineux de la rédemption. Cette dévotion joint la simplicité des mots à la profondeur de la contemplation, rendant tout l'Évangile accessible à chacun.

La fête prit forme en action de grâces pour la victoire chrétienne remportée à la bataille navale de Lépante en 1571, délivrance largement attribuée au rosaire prié dans toute l'Europe à l'appel du pape saint Pie V, qui institua une mémoire de Notre-Dame de la Victoire. Grégoire XIII la renomma fête du Saint-Rosaire, et Clément XI l'étendit à l'Église universelle après une nouvelle victoire en 1716, confirmant le lien de ce titre marial avec la confiance priante dans les heures de péril.

Cette fête, renforcée par des apparitions mariales ultérieures pressant de prier le rosaire, continue de soutenir l'une des dévotions catholiques les plus chères. Elle invite les fidèles à prendre en main le chapelet comme une école de contemplation et un moyen de confier à l'intercession de Marie les besoins du monde.
$desc$),
('saint-denis-bishop-and-companions-martyrs', 'Saint Denis, évêque, et ses compagnons, martyrs', $desc$
Cette mémoire honore le premier évêque de Paris et les compagnons qui versèrent leur sang avec lui, parmi les plus vénérés des premiers martyrs de la Gaule. Denis se tient à la source de l'Église de la capitale française, et la fête rappelle le courage de ceux qui plantèrent la foi en ce pays au prix de leur vie.

Leur témoignage est celui du martyre lui-même, le suprême témoignage où le disciple suit le Maître jusqu'à la mort plutôt que de le renier. Dans les martyrs, l'Église voit la semence de nouveaux chrétiens et le triomphe de la grâce sur la peur ; et Denis en particulier incarne le labeur apostolique de l'évêque missionnaire qui rassemble, enseigne, puis scelle enfin de son propre sang la foi de son troupeau.

Selon le plus ancien récit sûr, celui de Grégoire de Tours, Denis fut l'un des évêques envoyés de Rome pour évangéliser la Gaule au IIIe siècle, et il fut décapité près de Paris avec le prêtre Rustique et le diacre Éleuthère, vers l'an 250. Avec le temps, son histoire fut embellie, et on le confondit à tort tant avec Denys l'Aréopagite des Actes des Apôtres qu'avec un écrivain mystique plus tardif. La grande abbaye de Saint-Denis s'éleva sur son tombeau et devint la nécropole des rois de France.

Honoré comme patron de Paris et de la France, Denis demeure une figure de la mémoire nationale et ecclésiale. Sa fête invite les fidèles à la gratitude envers ceux qui portèrent d'abord l'Évangile en leurs terres, et à cette même fidélité qui ne recule pas devant le témoignage, quel qu'en soit le prix.
$desc$),
('saint-john-leonardi-priest', 'Saint Jean Léonardi, prêtre', $desc$
Cette mémoire honore un prêtre italien de la Contre-Réforme dont le zèle pour le renouveau toucha la catéchèse, la réforme de la vie religieuse et l'élan missionnaire de la jeune Église. Jean Léonardi se consacra à l'éveil spirituel du peuple ordinaire, et la fête célèbre un pasteur dont les labeurs discrets portèrent des fruits durables.

Sa vie exprime l'esprit réformateur du renouveau catholique qui suivit le concile de Trente : une doctrine sûre enseignée avec simplicité, un recours fréquent aux sacrements, et des prêtres formés à la sainteté pour le bien des fidèles. Léonardi comprit que le renouveau de l'Église commence par des chrétiens bien instruits et fervents, et il se donna surtout à l'enseignement de la foi aux jeunes et aux délaissés.

Né près de Lucques vers 1541, il se forma d'abord comme apothicaire avant de devenir prêtre. Il fonda les Clercs réguliers de la Mère de Dieu pour promouvoir la réforme et la catéchèse, et il contribua à établir et à façonner ce qui allait devenir la Congrégation pour la propagation de la foi, participant à la formation du clergé missionnaire ; il fut aussi associé à la fondation d'un collège au service des missions. Il mourut à Rome en 1609 en soignant les malades durant une épidémie. Pie IX le béatifia et Pie XI le canonisa en 1938.

Sa fête honore le patient travail de la catéchèse et de la formation des prêtres qui renouvelle l'Église de l'intérieur. Elle rappelle aux fidèles d'aujourd'hui l'importance durable d'un enseignement clair de la foi et des sacrements comme source de la vie chrétienne.
$desc$),
('saint-john-henry-newman-priest-and-doctor-of-the-church', 'Saint John Henry Newman, prêtre et docteur de l''Église', $desc$
Cette mémoire honore l'un des penseurs religieux les plus influents des temps modernes, un converti anglais dont l'intelligence et la sainteté jetèrent un pont entre deux mondes. Newman fut un célèbre clergyman anglican et un maître d'Oxford qui, après une réflexion longue et coûteuse, entra dans l'Église catholique ; la fête célèbre un esprit tout entier voué à suivre la vérité où qu'elle le conduisît.

Son génie consista à éclairer comment la foi chrétienne est tenue et comment elle grandit : son étude du développement de la doctrine montra que l'enseignement de l'Église se déploie organiquement au fil du temps tout en restant fidèle à lui-même, et sa réflexion sur la conscience, l'assentiment et le rapport de la foi et de la raison marqua la pensée catholique pour des générations. Il enseigna surtout que la vraie religion engage la personne tout entière, et qu'être profond dans l'histoire, c'est cesser d'être protestant.

Né à Londres en 1801, Newman fut l'un des chefs du Mouvement d'Oxford qui cherchait à renouveler l'Église d'Angleterre, avant sa réception dans l'Église catholique en 1845. Ordonné prêtre catholique, il fonda l'Oratoire en Angleterre et fut, malgré des années de malentendus, créé cardinal par Léon XIII en 1879, prenant pour devise « le cœur parle au cœur ». Béatifié par Benoît XVI en 2010 et canonisé par François en 2019, il fut proclamé docteur de l'Église en 2025.

Le témoignage de Newman continue de parler aux chercheurs, aux savants et à tous ceux qui luttent avec la foi dans une époque sceptique. Sa fête recommande la quête honnête de la vérité, la fidélité à une conscience droitement formée, et la confiance que la raison et la foi, ensemble, ramènent l'âme à la maison.
$desc$),
('saint-john-xxiii-pope', 'Saint Jean XXIII, pape', $desc$
Cette mémoire honore le pape bien-aimé qui convoqua le concile Vatican II et devint un symbole de chaleur pastorale et d'ouverture au monde moderne. Élu tard dans sa vie et attendu par beaucoup comme une simple figure de transition, Angelo Roncalli mit au contraire en mouvement l'un des événements les plus considérables de l'histoire récente de l'Église, et la fête célèbre un pasteur d'une bonté désarmante.

Son témoignage est celui du bon pasteur dont la confiance repose sur la providence de Dieu et dont le cœur est ouvert à tous. Il voulait lire les « signes des temps » et présenter la foi de toujours d'une manière que l'époque pût recevoir, ouvrant les fenêtres pour laisser entrer un air frais tout en gardant l'Église fidèle à son dépôt. Son humilité, son humour et son amour manifeste des gens firent de lui une figure d'espérance bien au-delà des frontières catholiques.

Né dans une famille paysanne du nord de l'Italie en 1881, Roncalli fut aumônier militaire, diplomate du Vatican en Bulgarie, en Turquie et en France, puis patriarche de Venise avant son élection en 1958. En 1962, il ouvrit le concile Vatican II et publia l'encyclique « Pacem in Terris », adressée à tous les hommes de bonne volonté ; il mourut en 1963 avant la fin du Concile. Jean-Paul II le béatifia en 2000, et François le canonisa en 2014.

Rappelé avec affection comme « le bon pape », Jean XXIII continue d'incarner le désir de l'Église d'aller vers le monde avec confiance et amour. Sa fête recommande l'abandon à la providence, la chaleur envers tous, et le courage de chercher le renouveau sans crainte.
$desc$),
('saint-callistus-i-pope-and-martyr', 'Saint Calixte Ier, pape et martyr', $desc$
Cette mémoire honore un pape du IIIe siècle dont le parcours remarquable, de l'esclavage à la chaire de Pierre, compte parmi les plus frappants de l'histoire de l'Église primitive. Calixte gouverna l'Église de Rome en un temps de controverse et de persécution, et la fête rappelle un pasteur qui soutint le ministère de miséricorde de l'Église contre l'opposition des rigoristes.

Son pontificat est surtout mémorable pour l'exercice du pouvoir de l'Église de pardonner. Contre ceux qui refusaient la réconciliation aux pécheurs graves, Calixte affirma que l'Église peut réadmettre à la communion même ceux qui sont tombés, après pénitence, défendant l'ampleur de la miséricorde divine et la responsabilité pastorale des successeurs des apôtres. Sa position incarne la conviction qu'aucun péché n'échappe à la portée du pardon de Dieu.

L'essentiel de ce que l'on sait vient, paradoxalement, de ses adversaires, en particulier d'Hippolyte. Jadis esclave, Calixte se vit confier des fonds, subit la condamnation aux mines de Sardaigne, puis fut libéré ; le pape le mit à la tête d'un important cimetière chrétien de la voie Appienne, qui porte encore son nom et devint la sépulture de nombreux premiers papes. Élu pape vers 217, il mourut vers 222, vénéré comme martyr, tué semble-t-il lors d'un tumulte local. Son nom figure dans l'antique canon romain de la messe.

Sa fête honore la confiance de l'Église primitive dans le pouvoir des clefs de lier et de délier. Elle recommande aux fidèles cette même confiance en la miséricorde de Dieu et cette générosité pastorale qui cherche à réconcilier plutôt qu'à exclure.
$desc$),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 'Sainte Thérèse de Jésus, vierge et docteur de l''Église', $desc$
Cette mémoire honore la grande mystique et réformatrice espagnole du Carmel, l'une des figures majeures de la spiritualité chrétienne. Thérèse d'Ávila unit une profonde expérience de la prière à un génie pratique et à une énergie infatigable, et la fête célèbre une femme dont les écrits tracent avec une profondeur et une chaleur sans égales l'ascension de l'âme vers l'union avec Dieu.

Son enseignement est centré sur la prière comme amitié intime avec Dieu et sur le cheminement intérieur vers l'union avec lui. Dans des œuvres comme « Le Château intérieur » et « Le Chemin de perfection », elle décrit les étapes de la vie spirituelle, dépeignant le passage de la prière vocale aux sommets de la contemplation avec une intuition mystique et une fine sagesse humaine. Sa doctrine tient que l'âme est une demeure de Dieu, où l'on entre par l'humilité, la connaissance de soi et la prière persévérante.

Née en 1515, Thérèse entra dans l'ordre du Carmel, mais connut à mi-vie une conversion décisive à une prière plus profonde. À partir de 1562, elle entreprit une vaste réforme, fondant les Carmes déchaux et établissant de nombreux couvents à travers l'Espagne malgré de vives oppositions, aidée par Jean de la Croix. Elle mourut en 1582 et fut canonisée en 1622. En 1970, Paul VI la proclama docteur de l'Église, la première femme à recevoir ce titre, en reconnaissance de l'autorité durable de son enseignement spirituel.

Thérèse demeure un guide sûr pour tous ceux qui cherchent une vie de prière plus profonde. Sa fête recommande sa confiance intrépide, son joyeux réalisme et sa conviction, résumée dans ses vers célèbres, que Dieu seul suffit et que la patience obtient tout.
$desc$),
('saint-hedwig-religious', 'Sainte Edwige, religieuse', $desc$
Cette mémoire honore une duchesse médiévale de Silésie qui unit les responsabilités du haut rang à une vie de charité et de pénitence remarquables. Edwige passa de la splendeur d'une cour princière au service des pauvres et des malades, et la fête célèbre une grande dame dont la sainteté rayonna à travers les devoirs et les épreuves de son état.

Son témoignage montre comment la sainteté peut s'épanouir au milieu du pouvoir et de la vie de famille. Épouse et mère, puis veuve, elle pratiqua une profonde humilité, une aumône généreuse et une patience héroïque au sein des épreuves qui frappèrent sa maison. Sa vie proclame que les œuvres de miséricorde et l'esprit de prière appartiennent à toute vocation, et que les grands peuvent servir le Christ dans le plus petit de ses frères.

Née vers 1174 dans une noble famille allemande, Edwige épousa Henri le Barbu, duc de Silésie, et lui donna plusieurs enfants. Ensemble ils fondèrent le monastère de Trebnitz, la première maison de religieuses de la région, et elle soutint des hôpitaux et le soin des pauvres. Après la mort d'Henri, elle se retira pour vivre auprès des moniales, sans toutefois prononcer de vœux, et elle endura la mort de ses enfants, dont un fils tué en combattant les Mongols. Elle mourut en 1243 et fut canonisée par Clément IV en 1267.

Vénérée comme patronne de la Silésie et comme un pont entre les peuples allemand et polonais, Edwige demeure un modèle de charité dans les hauts rangs. Sa fête recommande la sanctification des devoirs ordinaires, le service généreux des indigents et une foi inébranlable devant le deuil.
$desc$),
('saint-margaret-mary-alacoque-virgin', 'Sainte Marguerite-Marie Alacoque, vierge', $desc$
Cette mémoire honore la religieuse française de la Visitation par qui la dévotion au Sacré-Cœur de Jésus reçut son impulsion décisive. Marguerite-Marie Alacoque fut une religieuse humble et souvent incomprise, dont les expériences mystiques ouvrirent à toute l'Église une contemplation renouvelée de l'amour du Christ ; la fête célèbre cet instrument caché d'une grande dévotion.

Le message qu'elle transmit place au centre le Cœur du Christ, symbole de son amour infini et blessé pour l'humanité, un amour trop souvent payé d'indifférence. Sa spiritualité appelle à la réparation aimante, à la communion fréquente et à la consécration à ce Cœur, opposant la tendresse et la miséricorde de Dieu à toute froideur du cœur humain. La dévotion qu'elle inspira est devenue l'un des grands trésors de la piété catholique.

Née en Bourgogne en 1647, Marguerite-Marie entra au couvent de la Visitation à Paray-le-Monial, où, entre 1673 et 1675, elle reçut une série de révélations du Sacré-Cœur, comprenant la demande d'une fête et la pratique des premiers vendredis. Mise en doute d'abord jusque dans sa communauté, elle trouva un ferme soutien en son confesseur jésuite Claude La Colombière, qui aida à répandre le message. Elle mourut en 1690, fut béatifiée en 1864 et canonisée par Benoît XV en 1920.

La dévotion au Sacré-Cœur qu'elle contribua à établir demeure vivante dans la vie de l'Église, dans sa fête, ses litanies et ses actes de consécration. Sa propre fête recommande la confiance en l'amour miséricordieux du Christ et l'appel à répondre à cet amour par une dévotion sans réserve.
$desc$),
('saint-ignatius-of-antioch-bishop-and-martyr', 'Saint Ignace d''Antioche, évêque et martyr', $desc$
Cette mémoire honore l'une des figures les plus vénérables de l'âge apostolique, évêque d'Antioche et martyr, dont les lettres comptent parmi les plus anciens et les plus précieux témoignages de la foi après le Nouveau Testament. Ignace fut condamné aux bêtes à Rome, et la fête célèbre un pasteur qui désirait donner sa vie à l'imitation du Christ crucifié.

Son témoignage est celui du martyr qui comprend sa mort comme la plus pleine union au Christ et le couronnement du disciple. Écrivant sur le chemin de son supplice, il suppliait que nul n'entravât son martyre, se disant « le froment de Dieu » à broyer sous la dent des bêtes pour devenir un pain pur. Ses lettres rendent un témoignage précoce et puissant de l'Eucharistie comme « remède d'immortalité », de l'unité de l'Église autour de son évêque et, dans le premier usage attesté de l'expression, de l'« Église catholique ».

Ignace conduisit l'Église d'Antioche, selon la tradition comme son deuxième ou troisième évêque, et fut arrêté durant une persécution sous l'empereur Trajan, au début du IIe siècle. Conduit sous escorte à Rome, il écrivit sept lettres à diverses communautés chrétiennes et à l'évêque Polycarpe de Smyrne, documents d'une valeur immense pour la foi et la structure de l'Église primitive. Il fut martyrisé à Rome vers l'an 107. Ses restes furent ensuite vénérés et finalement rapportés à Antioche.

Sa fête introduit les fidèles dans la mémoire vivante de l'âge qui suivit immédiatement les apôtres. Elle recommande la fidélité jusqu'à la mort, l'amour de l'Eucharistie et l'unité avec les pasteurs de l'Église, ces choses mêmes pour lesquelles cet évêque ardent donna sa vie.
$desc$),
('saint-luke-evangelist', 'Saint Luc, évangéliste', $desc$
Cette fête honore l'auteur du troisième Évangile et des Actes des Apôtres, l'évangéliste qui donna à l'Église le récit le plus ample de la miséricorde du Christ et de la mission de l'Église primitive conduite par l'Esprit. Luc, compagnon de Paul, est célébré pour la beauté et la tendresse de son écriture et pour son témoignage de la portée universelle du salut.

Son don propre est de dépeindre le Christ comme le Sauveur compatissant de tous, particulièrement des pauvres, des exclus et des pécheurs. À Luc, l'Église doit les paraboles du Fils prodigue et du bon Samaritain, les cantiques de l'enfance et une attention singulière aux femmes, à la prière et à l'Esprit Saint. Dans les Actes, il retrace la marche de l'Évangile de Jérusalem à Rome, montrant le salut offert au monde entier, aux Juifs comme aux païens.

La tradition l'identifie comme médecin et païen d'origine, le « cher médecin » nommé par Paul, qui accompagna l'apôtre dans ses voyages, comme le suggèrent les passages en « nous » des Actes. Écrivant pour un public de langue grecque, il composa son œuvre en deux volumes comme un récit soigneux et ordonné. Une tradition plus tardive l'honora aussi comme peintre de la Vierge ; il est tenu pour patron des médecins et des artistes, et d'anciens témoignages veulent qu'il soit mort à un âge avancé.

Les écrits de Luc demeurent une source de la compréhension que l'Église a de la miséricorde de Dieu. Sa fête recommande la bonne nouvelle qu'il a conservée et invite les fidèles à contempler de nouveau le Sauveur qui cherche les égarés et l'Esprit qui guide l'Église dans sa mission.
$desc$),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 'Saints Jean de Brébeuf, Isaac Jogues, prêtres, et leurs compagnons, martyrs', $desc$
Cette mémoire honore les missionnaires jésuites et leurs compagnons laïcs qui portèrent l'Évangile aux peuples d'Amérique du Nord au XVIIe siècle et scellèrent leur prédication d'une mort héroïque. Connus comme les martyrs de l'Amérique du Nord, ils travaillèrent parmi les nations huronne et iroquoise, et la fête célèbre leur courage, leur endurance et leur amour jusqu'à la mort.

Leur témoignage unit le zèle du missionnaire au sacrifice du martyr. Ils traversèrent un océan et se plongèrent dans des langues et des cultures inconnues pour le salut des âmes, endurant les épreuves, l'incompréhension, et enfin la torture et la mort plutôt que d'abandonner les peuples qu'ils étaient venus servir. Leur martyre porta du fruit, notamment dans la conversion plus tardive associée à Kateri Tekakwitha, le « Lys des Mohawks ».

Entre 1642 et 1649, huit missionnaires connurent une mort violente au milieu des guerres entre les nations autochtones. Isaac Jogues, ayant survécu à la captivité et à des mutilations, retourna à la mission et fut tué en 1646 ; Jean de Brébeuf, linguiste doué et dévoué aux Hurons, fut torturé à mort en 1649. Leurs compagnons, prêtres et auxiliaires laïcs, subirent des sorts semblables. Le groupe fut canonisé ensemble par Pie XI en 1930 et honoré comme patrons du Canada.

Leur fête recommande l'esprit missionnaire qui risque tout pour porter le Christ aux autres, et la force qui persévère à travers la souffrance. Elle invite les fidèles à la gratitude envers ceux qui plantèrent la foi sur un nouveau continent et à une pareille générosité dans le témoignage d'aujourd'hui.
$desc$),
('saint-paul-of-the-cross-priest', 'Saint Paul de la Croix, prêtre', $desc$
Cette mémoire honore le mystique et prédicateur italien qui fonda les Passionistes, un ordre entièrement voué à garder vivante la mémoire de la Passion du Christ. Paul de la Croix passa sa longue vie à proclamer la Passion comme la preuve suprême de l'amour de Dieu, et la fête célèbre un apôtre de la Croix dont la prédication émut d'innombrables cœurs à la conversion.

Toute sa spiritualité découle de la méditation de la Passion de Jésus, qu'il appelait l'œuvre la plus grande et la plus bouleversante de l'amour divin. Il enseignait que contempler les souffrances du Christ, c'est être attiré dans l'intimité de Dieu et apprendre la profondeur de sa miséricorde envers les pécheurs. Cette mémoire de la Passion, entretenue par la prédication et la prière, il la voyait comme un remède à la froideur et à l'oubli spirituels de son temps.

Né Paul-François Danei dans le nord de l'Italie en 1694, il connut une profonde conversion dans sa jeunesse et, après une période de solitude et d'expériences mystiques, fonda en 1720 la Congrégation de la Passion, dont les membres ajoutent un quatrième vœu de garder vivante la mémoire de la Passion du Christ. Missionnaire prédicateur infatigable à travers l'Italie, il fut aussi un directeur spirituel renommé et gratifié de grâces mystiques. Il mourut à Rome en 1775 et fut canonisé par Pie IX en 1867.

L'ordre qu'il fonda poursuit son ministère de prédication de la Croix à travers le monde. Sa fête recommande la dévotion à la Passion du Christ comme école d'amour et de conversion, et invite les fidèles à trouver dans les souffrances du Sauveur la mesure de la miséricorde de Dieu.
$desc$),
('saint-john-paul-ii-pope', 'Saint Jean-Paul II, pape', $desc$
Cette mémoire honore l'un des papes les plus influents de l'ère moderne, dont le long pontificat transforma le rapport de l'Église au monde. Karol Wojtyła, premier pape non italien depuis plus de quatre siècles et premier pape polonais, devint un témoin universel de la dignité humaine et de l'espérance, et la fête célèbre un pasteur d'une énergie inlassable et d'une foi profonde.

Son enseignement plaça au centre de son message la personne humaine, rachetée dans le Christ : « N'ayez pas peur », exhortait-il, et « ouvrez toutes grandes les portes au Christ ». Il proclama la dignité et la vocation de chaque personne, le caractère sacré de la vie, la vérité sur le mariage et la famille, et la réconciliation de la foi et de la raison, développant une riche théologie du corps et de la liberté humaine enracinée dans la vérité. Sa confiance jaillissait d'une profonde dévotion mariale, résumée dans sa devise « Totus tuus ».

Né en 1920, Wojtyła vécut l'occupation nazie et le régime communiste en Pologne, fut ordonné dans des circonstances clandestines, et devint archevêque de Cracovie et une voix au concile Vatican II avant son élection en 1978. Durant vingt-six ans, il parcourut le globe, contribua à la chute du communisme en Europe de l'Est, survécut à un attentat en 1981, institua les Journées mondiales de la jeunesse et publia des encycliques marquantes. Il mourut en 2005 et fut canonisé par François en 2014, Benoît XVI l'ayant béatifié en 2011.

Son témoignage continue d'inspirer, en particulier les jeunes qu'il aima tant. Sa fête recommande la fidélité courageuse, la défense de la dignité humaine et la proclamation intrépide du Christ comme réponse aux questions les plus profondes du cœur humain.
$desc$),
('saint-john-of-capistrano-priest', 'Saint Jean de Capistran, prêtre', $desc$
Cette mémoire honore un frère franciscain du XVe siècle dont les dons de prédicateur, de réformateur et de meneur firent l'un des hommes d'Église les plus actifs de son temps. Jean de Capistran unit une éloquence ardente à une énergie pratique, et la fête célèbre un homme qui se dépensa pour le renouveau de la vie chrétienne et la défense de la chrétienté.

Son témoignage est celui du prédicateur réformateur qui rappelle une société relâchée et troublée à la ferveur. Formé au droit avant sa conversion, il apporta discipline et clarté à la promotion de la réforme de l'observance au sein de l'ordre franciscain, et ses sermons attiraient des foules immenses à travers l'Europe. Sa vie proclame la puissance de la parole prêchée pour convertir les cœurs et soulever tout un peuple à la pénitence et à la prière.

Né dans la ville italienne de Capestrano en 1386, Jean étudia le droit et exerça des fonctions de gouverneur avant d'entrer chez les Franciscains, devenant un proche compagnon de Bernardin de Sienne. Il travailla à la réforme de son ordre, accomplit des missions et des tâches diplomatiques à travers l'Europe centrale, et, dans sa vieillesse, prêcha la défense de Belgrade contre l'avance des forces ottomanes, contribuant à inspirer la victoire chrétienne de 1456. Il mourut peu après, la même année, et fut canonisé en 1690.

Rappelé comme un prédicateur de la réforme et une figure de ralliement en un temps de crise, Jean de Capistran demeure un exemple vigoureux de zèle pour la foi. Sa fête recommande la puissance renouvelante de la prédication, la fidélité à la discipline religieuse et le courage dans la défense de ce que l'on tient pour sacré.
$desc$),
('saint-anthony-mary-claret-bishop', 'Saint Antoine-Marie Claret, évêque', $desc$
Cette mémoire honore un évêque, missionnaire et fondateur espagnol du XIXe siècle dont l'immense activité apostolique lui valut une place parmi les grands évangélisateurs de l'époque moderne. Antoine-Marie Claret prêcha, écrivit et organisa avec un zèle extraordinaire, et la fête célèbre un pasteur consumé par l'amour de la diffusion de l'Évangile.

Son témoignage est celui du labeur apostolique infatigable au service des âmes. Convaincu que le salut d'autrui devait être le souci brûlant de tout prêtre, il se donna aux missions populaires, à la parole imprimée et à la formation du clergé et des laïcs pour l'évangélisation. Sa spiritualité unissait une prière profonde et une dévotion mariale à une activité incessante, incarnant l'idéal du missionnaire apostolique qui se dépense tout entier pour l'Évangile.

Né en Catalogne en 1807, fils d'un tisserand, Claret fut ordonné prêtre et devint un prédicateur missionnaire célèbre à travers l'Espagne et les îles Canaries. En 1849, il fonda les Fils missionnaires du Cœur immaculé de Marie, dits Clarétains, et contribua à établir un grand apostolat de la presse. Nommé archevêque de Santiago de Cuba, il réforma le diocèse au milieu de l'opposition et survécut à un attentat ; plus tard, confesseur de la reine Isabelle II, il partagea son exil. Il mourut en France en 1870 et fut canonisé par Pie XII en 1950.

La congrégation qu'il fonda poursuit son œuvre missionnaire à travers le monde. Sa fête recommande le zèle pour l'évangélisation, l'apostolat de la parole écrite et parlée, et une vie donnée sans réserve pour le salut d'autrui.
$desc$),
('saints-simon-and-jude-apostles', 'Saints Simon et Jude, apôtres', $desc$
Cette fête honore deux des Douze, unis dans la mémoire et le culte de l'Église : Simon, appelé le Zélote, et Jude, aussi nommé Thaddée. Bien que les Évangiles ne rapportent guère de choses à leur sujet, ils appartiennent à la compagnie fondatrice choisie par le Christ, et la fête célèbre leur part à la mission apostolique sur laquelle l'Église est bâtie.

Leur témoignage est celui de l'apôtre, l'envoyé chargé de porter l'Évangile jusqu'aux extrémités de la terre et d'être une pierre de fondation de l'Église. Compter parmi les Douze, c'est se tenir à l'origine de la tradition apostolique, le lien vivant entre le Christ et chaque génération de croyants. En honorant ces deux-là, l'Église honore tout le collège apostolique et la mission durable qui lui est confiée.

Les Écritures nous en disent peu : Simon se distingue par l'épithète « le Zélote », et Jude est généralement identifié au « Judas, non l'Iscariote » qui, à la dernière Cène, demanda au Seigneur pourquoi il se manifesterait seulement aux siens. La tradition postérieure associe les deux dans une mission en Perse, où ils auraient prêché et subi ensemble le martyre, ce qui explique qu'ils partagent ce jour de fête unique. La Lettre de Jude, dans le Nouveau Testament, est communément attribuée à cet apôtre. En Occident, Jude est devenu particulièrement aimé comme patron des causes désespérées.

Leur fête commune recommande la foi apostolique transmise une fois pour toutes et la mission continue de l'Église. Elle invite les fidèles à la gratitude envers les témoins par qui l'Évangile fut transmis, et au recours confiant à l'intercession de saint Jude dans les circonstances les plus difficiles.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', 'Sancta Teresia a Iesu Infante, virgo et Ecclesiae doctor', $desc$
Pauci sancti tam latam vim ex vita tam abscondita exercuerunt. Teresia Martin quinto decimo aetatis anno Carmelum Lexoviensem ingressa est ibique phthisi correpta quarto et vicesimo anno obiit, numquam claustro egressa neque ullum insigne opus patrans. Hoc festum iuvenem monialem claustralem honorat, cuius tota magnitudo in amoris altitudine et spiritalis perspicaciae claritate consistit, non in aliquo externo facinore.

In sanctitatis eius medio stat quam ipsa « parvam viam » nominabat: persuasio sanctitatem non heroicis facinoribus attingi, sed fidenti in Dei misericordiam abandono, dum minima cotidiana opera magno cum amore offeruntur. Contra omnem praesumptionem se propriis viribus salvandi, fiduciam infantis in Patris brachiis docuit, omnia velut donum accipientis. Haec humilitatis et immensae fiduciae spiritalitas via certa etiam simplicissimis credentibus comprobata est.

Eius vitae narratio, « Historia animae » inscripta, ex oboedientia conscripta et post mortem edita, celeriter per orbem diffusa est innumerosque lectores ad doctrinam suam attraxit. A Pio XI anno 1925 canonizata est, missionum patrona declarata quamvis in claustro degeret, et anno 1997 a Ioanne Paulo II Ecclesiae doctor renuntiata, tertia tantum mulier hoc honore insignita omniumque iunior.

Eius promissio « caelum suum in bono faciendo super terram transigendi » et « rosarum imbrem demissuram » pietatem popularem alere pergit. Manet testis illustris sanctitatem omnibus esse pervium, atque amorem, magis quam facinora, mensuram esse vitae christianae.
$desc$),
('the-holy-guardian-angels', 'Sancti Angeli Custodes', $desc$
Haec commemoratio Ecclesiae animum ad spiritales socios convertit quos Deus unicuique vitae humanae custodes assignat. Potius quam angelum aliquem singularem aut eventum honorans, totum angelorum custodum ministerium celebrat, purorum illorum spirituum datorum ut singulos in salutis via protegant, dirigant et pro eis orent.

Haec celebratio in biblica persuasione nititur Deum populum suum angelorum curae committere. Scriptura de angelis loquitur qui vias nostras custodiunt, de « parvulis » quorum angeli faciem Patris contemplantur, deque his spiritibus tamquam ministris missis propter eos qui salutem hereditate accepturi sunt. Festum celebrat simul providentem Dei amorem, qui hominem solum ambulare non sinit, et invisibilis mundi realitatem propositis eius plene ordinati.

Devotio erga angelos custodes antiqua est, sed festum proprium paulatim ortum est; celebratio peculiaris saeculo sexto decimo concessa, deinde a Clemente Papa X anno 1670 ad universam Ecclesiam extensa est. Theologia quae subest a magistris ut Thoma Aquinate diligenter exposita est, qui docuit unamquamque personam angelum in custodem atque adiutorem in via salutis accipere.

Fidelibus hodiernis hoc festum ad gratiarum actionem et fiduciam invitat, atque ad simplicem consuetudinem ad angelum suum orandi. In memoriam revocat nullam vitam sine comite esse, atque caelestem tutelam etiam ordinarissimos absconditissimosque dies circumdare.
$desc$),
('saint-francis-of-assisi', 'Sanctus Franciscus Assisiensis', $desc$
Inter carissimas historiae christianae figuras Franciscus Assisiensis stat velut magnus paupertatis evangelicae fraternique amoris praeco. Filius opulenti pannorum mercatoris, hereditati suae renuntiavit ut dominam Paupertatem amplecteretur, et hoc festum virum honorat cuius radicalis in Evangelium adhaesio Ecclesiam mediaevalem transformavit longeque ultra eam inspirare pergit.

Tota sancti vita continuus fuit conatus se toto Christo pauperi et crucifixo conformandi. Paupertas eius non mera egestas erat, sed laeta exspoliatio omnium quae animam a Deo separabant, eum liberans ut creationem velut donum omnemque creaturam ut fratrem sororemque amaret. Ita Ecclesiae dedit vivam humilitatis, pacis et reconciliationis iconem in Beatitudinibus praedicatarum.

Circa annum 1181 natus, Franciscus primos socios congregavit ab Innocentio III regulae suae approbationem accepit, Ordinem Fratrum Minorum condens; cum Clara Pauperes Dominas incohavit, deinde laicos paenitentes. Anno 1224, in monte Alverniae, stigmata accepit, primum harum plagarum documentum notum. Anno 1226 obiit et a Gregorio IX biennio post canonizatus est; ei quoque debentur « Canticum Creaturarum » et praesepii natalicii diffusio.

Eius testimonium mirum in modum praesens manet, motus pro pace, pauperum servitio creationisque cura inspirans. Oecologiae patronus renuntiatus, christianos etiamnunc ad simplicitatem, humilitatem amoremque vocat qui omnes homines totumque mundum creatum complectitur.
$desc$),
('saint-faustina-kowalska-virgin', 'Sancta Faustina Kowalska, virgo', $desc$
Haec memoria monialem Polonam modicae eruditionis honorat cuius diarium spiritale unus ex textibus mysticis saeculi vicesimi maxime momentosis evasit. Faustina Kowalska ante omnia ut « apostola Divinae Misericordiae » cognoscitur, humile instrumentum per quod renovata erga Dei misericordiam devotio per totum orbem diffusa est.

Nuntius ei creditus in immensa Dei misericordia versatur, in Christo revelata et peccatoribus praesertim oblata qui ad eum cum fiducia se convertunt. Eius spiritalitas misericordiam ut maximum Dei attributum extollit et credentes vocat ut eam fidenter accipiant et erga alios opere, verbo et oratione exerceant. Imago quam pingi iussa est, cum radiis sanguinis et aquae et verbis « Iesu, in te confido », huic doctrinae formam visibilem praebet.

Helena Kowalska anno 1905 nata, Congregationem Sororum Dominae Nostrae a Misericordia ingressa est humilibusque muneribus ut coqua, hortulana et ianitrix inserviit usque ad mortem anno 1938. Diarium eius, mysticas experientias referens, aliquamdiu cum cautela spectatum et etiam restrictione notatum est, priusquam plene comprobaretur et promoveretur. Ioannes Paulus II eam anno 1993 beatificavit atque anno 2000 canonizavit, primam novi millennii sanctam, die quo Dominicam Divinae Misericordiae instituit.

Eius festum fideles ad renovatam in Dei veniam fiduciam invitat utque ipsi misericordiae canales in mundo vulnerato fiant. Devotio Divinae Misericordiae quam inspiravit, cum coronula et hora magnae misericordiae, late usitata manet.
$desc$),
('saint-bruno-priest', 'Sanctus Bruno, presbyter', $desc$
Haec memoria fundatorem Carthusianorum honorat, unius ex austerissimis contemplativissimisque ordinibus religiosis. Bruno vir doctus et magister celeber erat qui splendidam ecclesiasticam curriculam pro vita silentii et solitudinis deseruit, et hoc festum virum celebrat cuius abditae orationis amor Ecclesiam diu signavit.

Charisma quod incarnavit purae contemplationis est: vita tota ad Deum quaerendum in solitudine, silentio et a mundo abstractione ordinata. Ideale Carthusianum eremitae solitudinem cum communitatis auxilio coniungit, ita ut singuli monachi plerumque soli vivant, tamen intra communem orationis rhythmum. Bruonis testimonium proclamat quaesitionem Dei propter ipsum, sine actione fructuve visibili, iam magnum servitium toti Christi Corpori esse praestitum.

Coloniae circa annum 1030 natus, Bruno Remis docuit interque discipulos suos futurum papam numeravit. E vita publica secedens, anno 1084 cum paucis sociis primum eremitorium Maioris Carthusiae in Alpibus condidit. Romam ab Urbano Papa II, uno ex olim discipulis, vocatus, alteram deinde carthusiam in Calabria fundavit, ubi anno 1101 obiit. Singulari modo, Carthusiani numquam sollemnem canonizationem petiverunt; cultus eius ordini confirmatus est deinde ad universam Ecclesiam extensus.

Eius festum tacite contra strepitum inquietudinemque vitae modernae loquitur, silentii, orationis et interioritatis pretium commendans. Ordo quem condidit ad hunc usque diem perdurat, celebris quod numquam reformatus sit, quia, ut aiunt, numquam deformatus est.
$desc$),
('our-lady-of-the-rosary', 'Beata Maria Virgo a Rosario', $desc$
Haec memoria Beatam Mariam Virginem celebrat sub titulo quem ei magna Rosarii oratio tribuit, illa meditativa contextio orationis vocalis et considerationis mysteriorum Christi. Singularis inter festa mariana, non eventum vitae Mariae commemorat, sed orationis formam et historicam liberationem eius intercessioni adscriptam.

In radice sua Rosarium est contemplatio mysteriorum salutis oculis Mariae visorum, ita ut hoc festum eam honoret velut illam quae credentes ad Filium suum ducit. Potentem eius intercessionem munusque in Ecclesiae vita celebrat, fideles in laeta, dolorosa, gloriosa et luminosa redemptionis mysteria introducens. Haec devotio simplicitatem verborum cum altitudine contemplationis coniungit, totum Evangelium omnibus pervium reddens.

Festum in gratiarum actione formam accepit pro christiana victoria in navali proelio Lepantino anno 1571, liberatione late Rosario per Europam orato adscripta hortante Papa sancto Pio V, qui memoriam Dominae Nostrae de Victoria instituit. Gregorius XIII festum Sacri Rosarii renominavit, et Clemens XI ad universam Ecclesiam extendit post aliam victoriam anno 1716, confirmans hunc marialem titulum cum fiducia orantis Ecclesiae temporibus periculi coniungi.

Hoc festum, apparitionibus marianis posterioribus Rosarium orare hortantibus confirmatum, unam ex carissimis catholicis devotionibus sustinere pergit. Fideles invitat ut coronulam sumant velut scholam contemplationis mediumque necessitates mundi Mariae intercessioni committendi.
$desc$),
('saint-denis-bishop-and-companions-martyrs', 'Sanctus Dionysius et Socii, martyres', $desc$
Haec memoria primum Parisiorum episcopum sociosque qui cum eo sanguinem fuderunt honorat, inter venerandissimos primorum Galliae martyrum. Dionysius ad fontem Ecclesiae capitis Franciae stat, et festum eorum fortitudinem in memoriam revocat qui fidem in illa terra vitae suae pretio plantaverunt.

Testimonium eorum ipsius martyrii est, supremum illud testimonium quo discipulus Magistrum usque ad mortem sequitur potius quam eum neget. In martyribus Ecclesia semen novorum christianorum videt gratiaeque super timorem triumphum; et Dionysius praesertim apostolicum laborem episcopi missionarii incarnat qui gregem congregat, docet, tandemque proprio sanguine fidem eius obsignat.

Iuxta antiquissimam fide dignam narrationem, Gregorii Turonensis, Dionysius unus fuit ex episcopis Roma missis ut Galliam saeculo tertio evangelizarent, et prope Parisios cum Rustico presbytero Eleutherioque diacono circa annum 250 decollatus est. Progrediente tempore historia eius ornata est, atque perperam tum cum Dionysio Areopagita Actuum Apostolorum tum cum scriptore mystico posteriore confusus est. Magna abbatia Sancti Dionysii super tumulum eius surrexit et regum Franciae sepultura facta est.

Ut patronus Parisiorum et Franciae honoratus, Dionysius memoriae nationalis et ecclesialis figura manet. Eius festum fideles ad gratitudinem invitat erga eos qui primi Evangelium in terras suas attulerunt, atque ad eandem fidelitatem quae a testimonio non refugit, quantumcumque constet.
$desc$),
('saint-john-leonardi-priest', 'Sanctus Ioannes Leonardi, presbyter', $desc$
Haec memoria presbyterum Italum aetatis Contrareformationis honorat, cuius zelus renovationis catechesim, vitae religiosae reformationem novaeque Ecclesiae missionalem impetum attigit. Ioannes Leonardi se spiritali excitationi populi ordinarii dedicavit, et festum pastorem celebrat cuius abditi labores fructus diuturnos tulerunt.

Vita eius spiritum reformatorem renovationis catholicae exprimit quae Concilium Tridentinum secuta est: sana doctrina simpliciter tradita, frequens ad sacramenta recursus, et presbyteri ad sanctitatem pro fidelium bono formati. Leonardi intellexit Ecclesiae renovationem a christianis bene instructis ferventibusque incipere, seque praesertim fidei institutioni iuvenum et neglectorum dedit.

Prope Lucam circa annum 1541 natus, primum ut pharmacopola institutus est priusquam presbyter fieret. Clericos Regulares Matris Dei ad reformationem catechesimque promovendam condidit, atque adiuvit ad instituendum et formandum id quod Congregatio de Propaganda Fide fieret, ad cleri missionalis institutionem conferens; collegii quoque fundationi missionibus faventis adscriptus est. Romae anno 1609 obiit dum aegrotos per pestilentiam curabat. Pius IX eum beatificavit et Pius XI anno 1938 canonizavit.

Eius festum patiens catechesis et presbyterorum formationis opus honorat quod Ecclesiam ab intra renovat. Fidelibus hodiernis diuturnum momentum commendat fidei clare docendae atque sacramentorum ut fontis vitae christianae.
$desc$),
('saint-john-henry-newman-priest-and-doctor-of-the-church', 'Sanctus Ioannes Henricus Newman, presbyter et Ecclesiae doctor', $desc$
Haec memoria unum ex influentissimis cogitatoribus religiosis aetatis modernae honorat, conversum Anglum cuius ingenium et sanctitas duos mundos coniunxerunt. Newman celeber clericus Anglicanus et Oxoniensis doctor erat qui, post longam et pretiosam considerationem, Ecclesiam catholicam ingressus est; festum mentem celebrat totam veritati sequendae deditam quocumque duceret.

Ingenium eius in illustrando consistebat quomodo fides christiana teneatur et quomodo crescat: studium eius de doctrinae evolutione ostendit Ecclesiae doctrinam organice per tempus explicari dum sibi ipsi fidelis manet, atque eius inquisitio de conscientia, assensu et fidei rationisque relatione cogitationem catholicam per generationes formavit. Ante omnia docuit veram religionem totam personam implicare, atque profundum esse in historia esse desinere protestantem.

Londini anno 1801 natus, Newman dux factus est Motus Oxoniensis Ecclesiam Angliae renovare quaerentis, priusquam anno 1845 in Ecclesiam catholicam reciperetur. Presbyter catholicus ordinatus, Oratorium in Anglia condidit atque, quamvis per annos male intellectus, a Leone XIII anno 1879 cardinalis creatus est, symbolo assumpto « cor ad cor loquitur ». A Benedicto XVI anno 2010 beatificatus et a Francisco anno 2019 canonizatus, anno 2025 Ecclesiae doctor declaratus est.

Newmani testimonium quaerentibus, doctis omnibusque qui cum fide in aetate sceptica luctantur loqui pergit. Eius festum honestam veritatis quaesitionem commendat, fidelitatem erga conscientiam recte formatam, et fiduciam rationem et fidem simul animam domum reducere.
$desc$),
('saint-john-xxiii-pope', 'Sanctus Ioannes XXIII, papa', $desc$
Haec memoria dilectum papam honorat qui Concilium Vaticanum Secundum convocavit et symbolum pastoralis caritatis apertionisque erga mundum modernum factus est. Sero in vita electus et a multis velut mera figura transitoria exspectatus, Angelus Roncalli contra unum ex momentosissimis eventibus recentis historiae Ecclesiae in motum posuit, et festum pastorem inermis bonitatis celebrat.

Testimonium eius boni pastoris est cuius fiducia in Dei providentia nititur et cuius cor omnibus apertum est. « Signa temporum » legere voluit et fidem perennem eo modo proponere quem aetas reciperet, fenestras aperiens ut aer recens intraret dum Ecclesiam depositio suo fidelem servabat. Humilitas eius, festivitas manifestusque hominum amor eum spei figuram longe ultra catholicos fines fecerunt.

In familia rustica Italiae septentrionalis anno 1881 natus, Roncalli capellanus militaris, Vaticani legatus in Bulgaria, Turcia et Francia, deinde patriarcha Venetiarum fuit priusquam anno 1958 eligeretur. Anno 1962 Concilium Vaticanum Secundum aperuit atque encyclicam « Pacem in Terris » edidit, omnibus bonae voluntatis hominibus inscriptam; anno 1963 obiit priusquam Concilium concluderetur. Ioannes Paulus II eum anno 2000 beatificavit, et Franciscus anno 2014 canonizavit.

Affectuose ut « bonus papa » memoratus, Ioannes XXIII Ecclesiae desiderium incarnare pergit mundo cum fiducia et amore occurrendi. Eius festum fiduciam in providentia, caritatem erga omnes, et animum renovationem sine timore quaerendi commendat.
$desc$),
('saint-callistus-i-pope-and-martyr', 'Sanctus Callistus I, papa et martyr', $desc$
Haec memoria papam saeculi tertii honorat cuius insignis via, a servitute ad cathedram Petri, inter maxime notabiles historiae Ecclesiae primaevae numeratur. Callistus Ecclesiam Romanam rexit tempore controversiae et persecutionis, et festum pastorem in memoriam revocat qui misericordiae ministerium Ecclesiae contra rigoristarum oppositionem sustinuit.

Pontificatus eius ante omnia propter exercitium potestatis Ecclesiae ignoscendi memoratur. Contra eos qui reconciliationem gravibus peccatoribus denegarent, Callistus affirmavit Ecclesiam etiam lapsos ad communionem post paenitentiam readmittere posse, amplitudinem divinae misericordiae responsabilitatemque pastoralem successorum apostolorum defendens. Positio eius persuasionem incarnat nullum peccatum ultra veniam Dei iacere.

Pleraque quae nota sunt, mirum in modum, ab adversariis eius veniunt, praesertim ab Hippolyto. Olim servus, Callistus pecuniis praepositus est, damnationem ad metalla Sardiniae passus est, deinde liberatus; papa eum insigni coemeterio christiano viae Appiae praefecit, quod nomen eius adhuc gerit multorumque primorum paparum sepultura factum est. Circa annum 217 papa electus, circa annum 222 obiit, ut martyr veneratus, tumultu quodam locali ut videtur occisus. Nomen eius in antiquo canone Romano Missae recensetur.

Eius festum fiduciam Ecclesiae primaevae in potestate clavium ligandi et solvendi honorat. Fidelibus eandem in Dei misericordiam fiduciam commendat eamque pastoralem generositatem quae reconciliare potius quam excludere quaerit.
$desc$),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', 'Sancta Teresia a Iesu, virgo et Ecclesiae doctor', $desc$
Haec memoria magnam mysticam et reformatricem Hispanam Carmeli honorat, unam ex praecipuis spiritalitatis christianae figuris. Teresia Abulensis profundam orationis experientiam cum ingenio practico et infatigabili industria coniunxit, et festum mulierem celebrat cuius scripta ascensum animae ad unionem cum Deo cum incomparabili profunditate et calore describunt.

Doctrina eius in oratione ut intima cum Deo amicitia et in interiore itinere ad unionem cum eo versatur. In operibus ut « Castellum interius » et « Via perfectionis » gradus vitae spiritalis describit, transitum ab oratione vocali ad contemplationis fastigia cum mystica perspicacia et sagaci humana sapientia depingens. Doctrina eius tenet animam esse Dei habitaculum, quod per humilitatem, sui cognitionem et perseverantem orationem intratur.

Anno 1515 nata, Teresia Ordinem Carmeli ingressa est, sed in media vita conversionem decretoriam ad profundiorem orationem experta est. Ab anno 1562 amplam reformationem suscepit, Carmelitas Discalceatos fundans multaque coenobia per Hispaniam constituens contra vehementem oppositionem, a Ioanne a Cruce adiuta. Anno 1582 obiit et anno 1622 canonizata est. Anno 1970 Paulus VI eam Ecclesiae doctorem declaravit, primam mulierem hoc honore insignitam, in agnitione diuturnae auctoritatis doctrinae eius spiritalis.

Teresia dux certus manet omnibus qui altiorem orationis vitam quaerunt. Eius festum intrepidam eius fiduciam, laetum realismum eiusque persuasionem commendat, celebribus versibus expressam, solum Deum sufficere et patientiam omnia obtinere.
$desc$),
('saint-hedwig-religious', 'Sancta Hedvigis, religiosa', $desc$
Haec memoria ducissam mediaevalem Silesiae honorat quae altioris ordinis responsabilitates cum vita insignis caritatis et paenitentiae coniunxit. Hedvigis a splendore aulae principalis ad pauperum aegrotorumque servitium transiit, et festum nobilem mulierem celebrat cuius sanctitas per officia aerumnasque status sui effulsit.

Testimonium eius ostendit quomodo sanctitas in medio potestatis vitaeque familiaris florere possit. Uxor et mater, deinde vidua, profundam humilitatem, largam eleemosynam et heroicam patientiam inter tribulationes domui suae obvenientes exercuit. Vita eius proclamat opera misericordiae spiritumque orationis ad omnem vocationem pertinere, atque magnos Christo in minimo fratrum eius servire posse.

Circa annum 1174 in nobili familia Germanica nata, Hedvigis Henrico Barbato, duci Silesiae, nupsit eique plures liberos peperit. Simul monasterium Trebnicense condiderunt, primam domum religiosarum mulierum in illa regione, et ipsa xenodochia pauperumque curam sustinuit. Post Henrici mortem prope moniales vivere secessit, quamvis vota non emitteret, mortesque liberorum suorum toleravit, inter quos filium contra Mongolos pugnantem occisum. Anno 1243 obiit et a Clemente IV anno 1267 canonizata est.

Ut patrona Silesiae et pons inter populos Germanicum et Polonum venerata, Hedvigis exemplar caritatis in altis locis manet. Eius festum sanctificationem officiorum ordinariorum, largum egentium servitium et firmam coram luctu fidem commendat.
$desc$),
('saint-margaret-mary-alacoque-virgin', 'Sancta Margarita Maria Alacoque, virgo', $desc$
Haec memoria monialem Gallam ex Visitatione honorat per quam devotio erga Sacratissimum Cor Iesu decretorium impulsum accepit. Margarita Maria Alacoque humilis et saepe male intellecta religiosa erat, cuius mysticae experientiae toti Ecclesiae renovatam amoris Christi contemplationem aperuerunt; festum hoc absconditum magnae devotionis instrumentum celebrat.

Nuntius quem transmisit in medio Cor Christi ponit, symbolum immensi eius vulneratique erga humanitatem amoris, amoris nimis saepe indifferentia repensi. Eius spiritalitas ad amantem reparationem, frequentem communionem et huic Cordi consecrationem vocat, teneritudinem misericordiamque Dei omni humani cordis frigori opponens. Devotio quam inspiravit unus ex magnis thesauris pietatis catholicae facta est.

In Burgundia anno 1647 nata, Margarita Maria coenobium Visitationis Paredii Monialium ingressa est, ubi inter annos 1673 et 1675 seriem revelationum Sacratissimi Cordis accepit, postulationem festi et primorum feriarum sextarum consuetudinem complectentem. Primum etiam intra communitatem suam in dubium vocata, firmum fautorem in confessario suo Iesuita Claudio La Colombière invenit, qui nuntium diffundere adiuvit. Anno 1690 obiit, anno 1864 beatificata et a Benedicto XV anno 1920 canonizata est.

Devotio Sacratissimi Cordis quam constituere adiuvit in Ecclesiae vita viva manet, in festo suo, litaniis et actibus consecrationis. Eius proprium festum fiduciam in amore misericordi Christi commendat vocationemque huic amori integra devotione respondendi.
$desc$),
('saint-ignatius-of-antioch-bishop-and-martyr', 'Sanctus Ignatius Antiochenus, episcopus et martyr', $desc$
Haec memoria unam ex venerandissimis figuris aetatis apostolicae honorat, episcopum Antiochenum et martyrem, cuius epistulae inter antiquissima pretiosissimaque fidei testimonia post Novum Testamentum numerantur. Ignatius bestiis Romae damnatus est, et festum pastorem celebrat qui vitam suam ad imitationem Christi crucifixi dare cupiebat.

Testimonium eius martyris est qui mortem suam ut plenissimam cum Christo unionem et discipuli coronam intellegit. In supplicii sui itinere scribens obsecravit ne quis martyrium suum impediret, se « frumentum Dei » nominans bestiarum dentibus in purum panem molendum. Epistulae eius praecox et potens testimonium ferunt Eucharistiae ut « pharmaci immortalitatis », unitatis Ecclesiae circa episcopum suum, atque, in primo usu locutionis attestato, « Ecclesiae catholicae ».

Ignatius Ecclesiam Antiochenam rexit, iuxta traditionem ut secundus vel tertius eius episcopus, et durante persecutione sub Traiano imperatore, ineunte saeculo secundo, comprehensus est. Sub custodia Romam missus, septem epistulas ad varias communitates christianas et ad Polycarpum episcopum Smyrnensem scripsit, documenta ingentis pretii pro fide structuraque Ecclesiae primaevae. Romae circa annum 107 martyrium passus est. Reliquiae eius postea veneratae sunt et tandem Antiochiam relatae.

Eius festum fideles in vivam memoriam aetatis proxime apostolos secutae introducit. Fidelitatem usque ad mortem, amorem Eucharistiae et unionem cum Ecclesiae pastoribus commendat, illa ipsa pro quibus ardens hic episcopus vitam suam dedit.
$desc$),
('saint-luke-evangelist', 'Sanctus Lucas, evangelista', $desc$
Hoc festum auctorem tertii Evangelii et Actuum Apostolorum honorat, evangelistam qui Ecclesiae plenissimam narrationem misericordiae Christi missionisque Ecclesiae primaevae Spiritu ductae dedit. Lucas, Pauli comes, propter scripturae suae pulchritudinem et teneritudinem propterque testimonium universalis salutis amplitudinis celebratur.

Proprium donum eius est Christum ut compassivum omnium Salvatorem depingere, praesertim pauperum, eiectorum et peccatorum. Luca Ecclesia debet parabolas Filii prodigi et Samaritani boni, cantica infantiae singularemque attentionem erga mulieres, orationem et Spiritum Sanctum. In Actibus Evangelii progressum ab Hierosolymis Romam usque describit, salutem toti mundo oblatam ostendens, Iudaeis pariter ac gentibus.

Traditio eum ut medicum et gentilem origine identificat, « carum medicum » a Paulo nominatum, qui apostolum in itineribus comitatus est, ut « nos » loca Actuum suggerunt. Auditorio Graece loquenti scribens, opus suum in duobus voluminibus ut diligentem ordinatamque narrationem composuit. Traditio posterior eum quoque ut pictorem Virginis honoravit; medicorum artificumque patronus habetur, et antiqua testimonia volunt eum aetate provecta mortuum esse.

Scripta Lucae fons manent intellectus quem Ecclesia de Dei misericordia habet. Eius festum bonum nuntium quem servavit commendat fidelesque invitat denuo Salvatorem contemplari qui perditos quaerit atque Spiritum qui Ecclesiam in missione sua dirigit.
$desc$),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', 'Sancti Ioannes de Brebeuf, Isaac Jogues et Socii, martyres', $desc$
Haec memoria missionarios Iesuitas eorumque laicos socios honorat qui Evangelium ad populos Americae Septentrionalis saeculo septimo decimo attulerunt praedicationemque suam heroica morte obsignaverunt. Ut martyres Americae Septentrionalis cogniti, inter nationes Huronum et Iroquesiorum laboraverunt, et festum eorum animum, tolerantiam amoremque usque ad mortem celebrat.

Testimonium eorum missionarii zelum cum martyris sacrificio coniungit. Oceanum transierunt seseque in ignotas linguas culturasque immerserunt propter animarum salutem, aerumnas, incomprehensionem, tandemque tormenta mortemque tolerantes potius quam populos quos servire venerant desererent. Martyrium eorum fructum tulit, celeberrime in conversione posteriore cum Catharina Tekakwitha, « Lilio Mohaviensium », coniuncta.

Inter annos 1642 et 1649 octo missionarii violentam mortem inter bella nationum indigenarum obierunt. Isaac Jogues, captivitate mutilationibusque superstes, ad missionem rediit et anno 1646 occisus est; Ioannes de Brebeuf, linguista peritus Huronibusque deditus, anno 1649 ad mortem cruciatus est. Socii eorum, presbyteri pariter et laici adiutores, similia fata subierunt. Coetus simul a Pio XI anno 1930 canonizatus et ut patroni Canadae honoratus est.

Eius festum missionarium spiritum commendat qui omnia periclitatur ut Christum aliis afferat, atque fortitudinem quae per passionem perseverat. Fideles invitat ad gratitudinem erga eos qui fidem in novo continente plantaverunt atque ad similem in testimonio hodierno generositatem.
$desc$),
('saint-paul-of-the-cross-priest', 'Sanctus Paulus a Cruce, presbyter', $desc$
Haec memoria mysticum et praedicatorem Italum honorat qui Passionistas condidit, ordinem toti memoriae Passionis Christi vivae servandae dicatum. Paulus a Cruce longam vitam suam in Passione proclamanda ut suprema Dei amoris probatione transegit, et festum apostolum Crucis celebrat cuius praedicatio innumeros animos ad conversionem movit.

Tota eius spiritalitas ex meditatione Passionis Iesu fluit, quam maximum et vehementissimum divini amoris opus vocabat. Docebat Christi passiones contemplari esse in Dei intimitatem attrahi profunditatemque misericordiae eius erga peccatores discere. Hanc Passionis memoriam, praedicatione et oratione servatam, ut remedium spiritalis frigoris oblivionisque aetatis suae videbat.

Paulus Franciscus Danei in Italia septentrionali anno 1694 natus, in iuventute profundam conversionem subiit atque, post tempus solitudinis et mysticarum experientiarum, anno 1720 Congregationem Passionis condidit, cuius membra quartum votum addunt Passionis Christi memoriam vivam servandi. Infatigabilis praedicator missionarius per Italiam, celeber quoque director spiritalis fuit mysticisque gratiis donatus. Romae anno 1775 obiit et a Pio IX anno 1867 canonizatus est.

Ordo quem condidit ministerium suum Crucem praedicandi per orbem exercere pergit. Eius festum devotionem erga Passionem Christi ut scholam amoris et conversionis commendat, fidelesque invitat in Salvatoris passionibus mensuram misericordiae Dei invenire.
$desc$),
('saint-john-paul-ii-pope', 'Sanctus Ioannes Paulus II, papa', $desc$
Haec memoria unum ex influentissimis papis aetatis modernae honorat, cuius longus pontificatus Ecclesiae cum mundo commercium transformavit. Carolus Wojtyła, primus papa non Italus post plura quam quattuor saecula primusque Polonus, testis universalis dignitatis humanae speique factus est, et festum pastorem infatigabilis industriae profundaeque fidei celebrat.

Doctrina eius in medio nuntii sui personam humanam, in Christo redemptam, posuit: « Nolite timere », hortabatur, et « aperite ostia Christo ». Dignitatem vocationemque cuiusque personae, vitae sacritatem, veritatem de matrimonio et familia rationisque fideique reconciliationem proclamavit, divitem theologiam corporis libertatisque humanae in veritate radicatae evolvens. Fiducia eius ex profunda devotione mariana fluebat, symbolo « Totus tuus » summata.

Anno 1920 natus, Wojtyła occupationem nazisticam regimenque communisticum Poloniae pervixit, in clandestinis condicionibus ordinatus est, atque archiepiscopus Cracoviensis voxque in Concilio Vaticano Secundo factus est priusquam anno 1978 eligeretur. Per sex et viginti annos orbem peragravit, ad communismi in Europa Orientali casum contulit, insidias anno 1981 superavit, Dies Mundiales Iuventutis instituit encyclicasque insignes edidit. Anno 2005 obiit et a Francisco anno 2014 canonizatus est, Benedicto XVI eum anno 2011 beatificante.

Eius testimonium inspirare pergit, praesertim iuvenes quos tantopere amavit. Eius festum animosam fidelitatem, dignitatis humanae defensionem intrepidamque Christi proclamationem ut responsi ad altissimas cordis humani quaestiones commendat.
$desc$),
('saint-john-of-capistrano-priest', 'Sanctus Ioannes Capistranensis, presbyter', $desc$
Haec memoria fratrem Franciscanum saeculi quinti decimi honorat cuius dona praedicatoris, reformatoris et ducis eum unum ex activissimis viris ecclesiasticis aetatis suae fecerunt. Ioannes Capistranensis ardentem eloquentiam cum practica industria coniunxit, et festum virum celebrat qui se pro renovatione vitae christianae christianitatisque defensione impendit.

Testimonium eius praedicatoris reformatoris est qui societatem remissam turbatamque ad fervorem revocat. In iure ante conversionem institutus, disciplinam et claritatem promotioni reformationis observantiae intra ordinem Franciscanum attulit, et sermones eius ingentes turbas per Europam trahebant. Vita eius potentiam verbi praedicati proclamat ad corda convertenda totumque populum ad paenitentiam orationemque excitandum.

In oppido Italico Capestrano anno 1386 natus, Ioannes ius studuit muneribusque gubernatoris functus est priusquam Franciscanos ingrederetur, socius propinquus Bernardini Senensis factus. Reformationi ordinis sui laboravit, missiones muneraque diplomatica per Europam centralem suscepit, atque in senectute defensionem Belgradi contra progredientes copias Ottomanicas praedicavit, ad christianam victoriam anni 1456 inspirandam conferens. Paulo post, eodem anno, obiit et anno 1690 canonizatus est.

Ut praedicator reformationis figuraque congregationis tempore discriminis memoratus, Ioannes Capistranensis vigorosum exemplum zeli pro fide manet. Eius festum renovantem praedicationis potentiam, fidelitatem erga disciplinam religiosam animumque in defensione eorum quae sacra habentur commendat.
$desc$),
('saint-anthony-mary-claret-bishop', 'Sanctus Antonius Maria Claret, episcopus', $desc$
Haec memoria episcopum, missionarium et fundatorem Hispanum saeculi noni decimi honorat cuius immensa apostolica industria ei locum inter magnos evangelizatores aetatis modernae comparavit. Antonius Maria Claret praedicavit, scripsit et ordinavit extraordinario zelo, et festum pastorem celebrat amore Evangelii diffundendi consumptum.

Testimonium eius infatigabilis apostolici laboris in animarum servitio est. Persuasus salutem aliorum ardentem uniuscuiusque presbyteri curam esse debere, se missionibus popularibus, verbo impresso clerique laicorumque ad evangelizationem formationi dedit. Spiritalitas eius profundam orationem devotionemque marianam cum incessante industria coniunxit, ideale missionarii apostolici incarnans qui se totum pro Evangelio impendit.

In Catalonia anno 1807 natus, filius textoris, Claret presbyter ordinatus est celeberque praedicator missionarius per Hispaniam et Insulas Fortunatas factus est. Anno 1849 Filios Missionarios Cordis Immaculati Mariae, Claretianos dictos, condidit atque magnum apostolatum preli constituere adiuvit. Archiepiscopus Sancti Iacobi in Cuba nominatus, dioecesim inter oppositionem reformavit insidiasque superavit; postea, reginae Isabellae II confessarius, exsilium eius participavit. In Francia anno 1870 obiit et a Pio XII anno 1950 canonizatus est.

Congregatio quam condidit opus suum missionarium per orbem prosequitur. Eius festum zelum pro evangelizatione, apostolatum verbi scripti et dicti vitamque sine reservatione pro aliorum salute datam commendat.
$desc$),
('saints-simon-and-jude-apostles', 'Sancti Simon et Iudas, Apostoli', $desc$
Hoc festum duos ex Duodecim honorat, in memoria cultuque Ecclesiae coniunctos: Simonem, Zelotem vocatum, et Iudam, Thaddaeum quoque nominatum. Quamvis Evangelia parum de eis referant, ad fundatricem societatem a Christo electam pertinent, et festum partem eorum in missione apostolica celebrat super quam Ecclesia aedificatur.

Testimonium eorum apostoli est, illius missi ut Evangelium ad extremos terrae fines ferat et lapis fundamenti Ecclesiae sit. Inter Duodecim numerari est ad originem traditionis apostolicae stare, vivum vinculum inter Christum et omnem posteriorem credentium generationem. His duobus honorandis, Ecclesia totum collegium apostolicum missionemque diuturnam ei creditam honorat.

Scripturae parum nobis dicunt: Simon epitheto « Zelotae » distinguitur, et Iudas plerumque cum illo « Iuda, non Iscariote » identificatur qui in ultima Cena Dominum rogavit cur se solis suis manifestaturus esset. Traditio posterior duos in missione in Perside coniungit, ubi praedicasse martyriumque simul passi esse dicuntur, quare hunc unum diem festum communicant. Epistula Iudae in Novo Testamento communiter huic apostolo adscribitur. In Occidente, Iudas praesertim ut patronus causarum desperatarum dilectus factus est.

Eius festum commune fidem apostolicam semel traditam missionemque continuam Ecclesiae commendat. Fideles invitat ad gratitudinem erga testes per quos Evangelium traditum est, atque ad fidentem recursum ad intercessionem sancti Iudae in difficillimis rerum condicionibus.
$desc$)
) AS x(slug, name, description)
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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this observance is kept on October 1 as an obligatory memorial with white vestments. The calendar assigns it a stable place in the universal sanctoral cycle.
$desc$),
('the-holy-guardian-angels', $desc$
In the Roman General Calendar, this observance is kept on October 2 as an obligatory memorial with white vestments. In the modern Roman sequence it follows immediately after the feast of the Archangels and gives distinct liturgical expression to devotion toward each believer's angelic guardians.
$desc$),
('saint-francis-of-assisi', $desc$
In the Roman General Calendar, this observance is kept on October 4 as an obligatory memorial with white vestments. The calendar assigns it a stable place in the universal sanctoral cycle.
$desc$),
('saint-faustina-kowalska-virgin', $desc$
In the Roman General Calendar, this observance is kept on October 5 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-bruno-priest', $desc$
In the Roman General Calendar, this observance is kept on October 6 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('our-lady-of-the-rosary', $desc$
In the Roman General Calendar, this observance is kept on October 7 as an obligatory memorial with white vestments. The present calendar preserves it on a fixed date and maintains its association with the Rosary and with thanksgiving for Mary's intercession in the Church's history.
$desc$),
('saint-denis-bishop-and-companions-martyrs', $desc$
In the Roman General Calendar, this observance is kept on October 9 as an optional memorial with red vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-john-leonardi-priest', $desc$
In the Roman General Calendar, this observance is kept on October 9 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-john-henry-newman-priest-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this observance is kept on October 9 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-john-xxiii-pope', $desc$
In the Roman General Calendar, this observance is kept on October 11 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-callistus-i-pope-and-martyr', $desc$
In the Roman General Calendar, this observance is kept on October 14 as an optional memorial with red vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this observance is kept on October 15 as an obligatory memorial with white vestments. The calendar assigns it a stable place in the universal sanctoral cycle.
$desc$),
('saint-hedwig-religious', $desc$
In the Roman General Calendar, this observance is kept on October 16 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-margaret-mary-alacoque-virgin', $desc$
In the Roman General Calendar, this observance is kept on October 16 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-ignatius-of-antioch-bishop-and-martyr', $desc$
In the Roman General Calendar, this observance is kept on October 17 as an obligatory memorial with red vestments. The calendar assigns it a stable place in the universal sanctoral cycle.
$desc$),
('saint-luke-evangelist', $desc$
In the Roman General Calendar, this observance is kept on October 18 as a feast with white vestments. In the present Roman calendar it is observed with the fuller celebration proper to a feast.
$desc$),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', $desc$
In the Roman General Calendar, this observance is kept on October 19 as an optional memorial with red vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-paul-of-the-cross-priest', $desc$
In the Roman General Calendar, this observance is kept on October 19 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-john-paul-ii-pope', $desc$
In the Roman General Calendar, this observance is kept on October 22 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-john-of-capistrano-priest', $desc$
In the Roman General Calendar, this observance is kept on October 23 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-anthony-mary-claret-bishop', $desc$
In the Roman General Calendar, this observance is kept on October 24 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saints-simon-and-jude-apostles', $desc$
In the Roman General Calendar, this observance is kept on October 28 as a feast with white vestments. In the present Roman calendar it is observed with the fuller celebration proper to a feast.
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
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration est observée le 1 octobre comme une mémoire obligatoire avec des ornements blancs. Le calendrier lui assigne une place stable dans le cycle sanctoral universel.
$desc$),
('the-holy-guardian-angels', $desc$
Dans le calendrier romain général, cette célébration est observée le 2 octobre comme mémoire obligatoire avec des ornements blancs. Dans l'ordonnance romaine actuelle, elle suit immédiatement la fête des archanges et donne une expression liturgique propre à la dévotion envers les anges gardiens de chacun.
$desc$),
('saint-francis-of-assisi', $desc$
Dans le calendrier romain général, cette célébration est observée le 4 octobre comme une mémoire obligatoire avec des ornements blancs. Le calendrier lui assigne une place stable dans le cycle sanctoral universel.
$desc$),
('saint-faustina-kowalska-virgin', $desc$
Dans le calendrier romain général, cette célébration est observée le 5 octobre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-bruno-priest', $desc$
Dans le calendrier romain général, cette célébration est observée le 6 octobre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('our-lady-of-the-rosary', $desc$
Dans le calendrier romain général, cette célébration est observée le 7 octobre comme mémoire obligatoire avec des ornements blancs. Le calendrier actuel la maintient à date fixe et conserve son lien avec le Rosaire ainsi qu'avec l'action de grâces pour l'intercession de Marie dans l'histoire de l'Église.
$desc$),
('saint-denis-bishop-and-companions-martyrs', $desc$
Dans le calendrier romain général, cette célébration est observée le 9 octobre comme une mémoire facultative avec des ornements rouges. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-john-leonardi-priest', $desc$
Dans le calendrier romain général, cette célébration est observée le 9 octobre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-john-henry-newman-priest-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration est observée le 9 octobre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-john-xxiii-pope', $desc$
Dans le calendrier romain général, cette célébration est observée le 11 octobre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-callistus-i-pope-and-martyr', $desc$
Dans le calendrier romain général, cette célébration est observée le 14 octobre comme une mémoire facultative avec des ornements rouges. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration est observée le 15 octobre comme une mémoire obligatoire avec des ornements blancs. Le calendrier lui assigne une place stable dans le cycle sanctoral universel.
$desc$),
('saint-hedwig-religious', $desc$
Dans le calendrier romain général, cette célébration est observée le 16 octobre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-margaret-mary-alacoque-virgin', $desc$
Dans le calendrier romain général, cette célébration est observée le 16 octobre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-ignatius-of-antioch-bishop-and-martyr', $desc$
Dans le calendrier romain général, cette célébration est observée le 17 octobre comme une mémoire obligatoire avec des ornements rouges. Le calendrier lui assigne une place stable dans le cycle sanctoral universel.
$desc$),
('saint-luke-evangelist', $desc$
Dans le calendrier romain général, cette célébration est observée le 18 octobre comme une fête avec des ornements blancs. Dans le calendrier romain actuel, elle reçoit le déploiement liturgique propre à une fête.
$desc$),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', $desc$
Dans le calendrier romain général, cette célébration est observée le 19 octobre comme une mémoire facultative avec des ornements rouges. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-paul-of-the-cross-priest', $desc$
Dans le calendrier romain général, cette célébration est observée le 19 octobre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-john-paul-ii-pope', $desc$
Dans le calendrier romain général, cette célébration est observée le 22 octobre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-john-of-capistrano-priest', $desc$
Dans le calendrier romain général, cette célébration est observée le 23 octobre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-anthony-mary-claret-bishop', $desc$
Dans le calendrier romain général, cette célébration est observée le 24 octobre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saints-simon-and-jude-apostles', $desc$
Dans le calendrier romain général, cette célébration est observée le 28 octobre comme une fête avec des ornements blancs. Dans le calendrier romain actuel, elle reçoit le déploiement liturgique propre à une fête.
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
('saint-therese-of-the-child-jesus-virgin-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 1 Octobris ut memoria obligatoria cum colore albo agitur. Calendarium ei locum stabilem in universali cursu sanctorali tribuit.
$desc$),
('the-holy-guardian-angels', $desc$
In Calendario Romano Generali haec celebratio die 2 Octobris ut memoria obligatoria cum colore albo agitur. In hodierno ordine Romano statim post festum Archangelorum ponitur atque devotioni erga angelos custodes singulorum propriam expressionem liturgicam tribuit.
$desc$),
('saint-francis-of-assisi', $desc$
In Calendario Romano Generali haec celebratio die 4 Octobris ut memoria obligatoria cum colore albo agitur. Calendarium ei locum stabilem in universali cursu sanctorali tribuit.
$desc$),
('saint-faustina-kowalska-virgin', $desc$
In Calendario Romano Generali haec celebratio die 5 Octobris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-bruno-priest', $desc$
In Calendario Romano Generali haec celebratio die 6 Octobris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('our-lady-of-the-rosary', $desc$
In Calendario Romano Generali haec celebratio die 7 Octobris ut memoria obligatoria cum colore albo agitur. Hodiernum calendarium eam die fixa servat eiusque nexum cum Rosario atque cum gratiarum actione pro Mariae intercessione in Ecclesiae historia custodit.
$desc$),
('saint-denis-bishop-and-companions-martyrs', $desc$
In Calendario Romano Generali haec celebratio die 9 Octobris ut memoria ad libitum cum colore rubro agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-john-leonardi-priest', $desc$
In Calendario Romano Generali haec celebratio die 9 Octobris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-john-henry-newman-priest-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 9 Octobris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-john-xxiii-pope', $desc$
In Calendario Romano Generali haec celebratio die 11 Octobris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-callistus-i-pope-and-martyr', $desc$
In Calendario Romano Generali haec celebratio die 14 Octobris ut memoria ad libitum cum colore rubro agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-teresa-of-jesus-virgin-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 15 Octobris ut memoria obligatoria cum colore albo agitur. Calendarium ei locum stabilem in universali cursu sanctorali tribuit.
$desc$),
('saint-hedwig-religious', $desc$
In Calendario Romano Generali haec celebratio die 16 Octobris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-margaret-mary-alacoque-virgin', $desc$
In Calendario Romano Generali haec celebratio die 16 Octobris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-ignatius-of-antioch-bishop-and-martyr', $desc$
In Calendario Romano Generali haec celebratio die 17 Octobris ut memoria obligatoria cum colore rubro agitur. Calendarium ei locum stabilem in universali cursu sanctorali tribuit.
$desc$),
('saint-luke-evangelist', $desc$
In Calendario Romano Generali haec celebratio die 18 Octobris ut festum cum colore albo agitur. In hodierno Calendario Romano ampliore sollemnitate festo propria agitur.
$desc$),
('saints-john-de-brebeuf-isaac-jogues-priests-and-companions-martyrs', $desc$
In Calendario Romano Generali haec celebratio die 19 Octobris ut memoria ad libitum cum colore rubro agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-paul-of-the-cross-priest', $desc$
In Calendario Romano Generali haec celebratio die 19 Octobris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-john-paul-ii-pope', $desc$
In Calendario Romano Generali haec celebratio die 22 Octobris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-john-of-capistrano-priest', $desc$
In Calendario Romano Generali haec celebratio die 23 Octobris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-anthony-mary-claret-bishop', $desc$
In Calendario Romano Generali haec celebratio die 24 Octobris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saints-simon-and-jude-apostles', $desc$
In Calendario Romano Generali haec celebratio die 28 Octobris ut festum cum colore albo agitur. In hodierno Calendario Romano ampliore sollemnitate festo propria agitur.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

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
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('all-saints', 'All Saints', $desc$
The Solemnity of All Saints gathers into a single celebration the whole company of the redeemed who now share the glory of God, both the canonized saints whose names fill the calendar and the countless unknown holy men and women whose sanctity is known to God alone. It is a feast of the Church triumphant, a joyful acknowledgment that holiness is the ordinary vocation of every baptized person and that heaven is already full of those who reached it.

At the heart of the celebration stands the doctrine of the communion of saints: the living bond uniting the pilgrim Church on earth, the suffering Church being purified, and the glorified Church in heaven. The Gospel of the Beatitudes proclaimed on this day sets before the faithful the very portrait of the saints, showing that beatitude is found not in worldly success but in poverty of spirit, mercy, purity of heart, and endurance for the sake of righteousness.

A general commemoration of martyrs emerged in the East by the fourth century, and in Rome the dedication of the Pantheon to Mary and all the martyrs by Pope Boniface IV in the early seventh century gave the observance a fixed home. Pope Gregory III later dedicated an oratory in Saint Peter's to all the saints, and by the time of Gregory IV in the ninth century the November 1 date had spread throughout the Western Church, broadening the commemoration beyond martyrs to all the saints.

For believers today the feast is both consolation and challenge: consolation in knowing that the saints intercede and that the goal of the Christian life is genuinely attainable, and challenge in the reminder that each person is called to join their number. It invites an honest examination of life measured against the Beatitudes and renewed confidence in the grace that has already made saints of so many.
$desc$),
('the-commemoration-of-all-the-faithful-departed', 'The Commemoration of All the Faithful Departed', $desc$
Following immediately upon the joy of All Saints, this day turns the Church's prayer toward all who have died and are not yet fully purified, the faithful departed who belong to Christ but await the fullness of his glory. It is a day of intercession rather than mourning, when the living exercise their charity toward the dead through prayer, almsgiving, and above all the offering of the Eucharist.

The commemoration rests on the ancient conviction that the bonds of love are not severed by death and that the living can assist the dead through prayer, a belief rooted in the practice of purification after death and expressed in the doctrine of purgatory. To pray for the dead is an act of hope, professing faith in the resurrection of the body and confidence that God's mercy completes the work of salvation in those who died in his friendship.

The observance was given lasting form by Saint Odilo of Cluny, who around the year 998 fixed November 2 for the commemoration of all the departed throughout the monasteries of his order, from which it spread across the Latin Church. The custom later arose, confirmed by Pope Benedict XV in 1915 amid the carnage of the First World War, of allowing priests to celebrate three Masses on this day, a privilege that expressed the Church's intensified prayer for the multitude of the dead.

The day remains one of the most tender in the Christian year, drawing the faithful to cemeteries, to the lighting of candles, and to prayer for parents, friends, and all the forgotten dead. It teaches a healthy remembrance of mortality and a confident charity that reaches beyond the grave, reminding every believer that the Church embraces the living and the dead in one unbroken communion.
$desc$),
('saint-martin-de-porres-religious', 'Saint Martin de Porres, Religious', $desc$
Saint Martin de Porres was a Dominican lay brother of Lima whose humble service and extraordinary charity made him one of the most beloved saints of the Americas. The son of a Spanish nobleman and a freed woman of African descent, he knew rejection and poverty from childhood, yet grew into a figure of astonishing tenderness toward the sick, the enslaved, and the abandoned.

His life gives flesh to the Gospel teaching that greatness lies in service and that no one is beyond the reach of God's love. Assigned the lowliest tasks in his priory, he transformed menial work into an offering of love, and his care for the poor, his founding of an orphanage, and the wonders attributed to his prayer revealed a holiness that transcended the racial barriers of his society.

Born in Lima in 1579, Martin joined the Dominican convent of the Holy Rosary as a servant and later as a professed lay brother, serving there until his death in 1639. Widely venerated in Peru and beyond, he was beatified by Pope Gregory XVI in 1837 and canonized by Pope John XXIII in 1962, who held him up as a model of interracial justice and Christian charity.

In an age still wounded by racism and social division, Saint Martin speaks with peculiar force as a patron of social justice and of all who work for reconciliation. His example encourages the faithful to find holiness in ordinary duties faithfully done and to see in every poor and rejected person the face of Christ.
$desc$),
('saint-charles-borromeo-bishop', 'Saint Charles Borromeo, Bishop', $desc$
Saint Charles Borromeo was Archbishop of Milan and one of the towering figures of the Catholic Reformation, a bishop whose tireless energy gave concrete shape to the reforms of the Council of Trent. Well-born and elevated young to high office, he chose instead a life of austerity, pastoral labor, and total dedication to the renewal of the Church.

His episcopate embodies the ideal of the reforming pastor: resident in his diocese, personally visiting its remotest parishes, founding seminaries for the proper formation of clergy, and giving himself heroically to the sick during the plague that struck Milan. His life proclaims that the reform of the Church begins with the holiness and diligence of her shepherds.

Born in 1538 into the aristocratic Borromeo family and nephew of Pope Pius IV, Charles played a decisive role in bringing the Council of Trent to its conclusion and in producing the Roman Catechism. As Archbishop of Milan he held provincial councils, issued detailed instructions for pastoral life, and established seminaries, dying worn out by his labors in 1584 at the age of forty-six. He was canonized by Pope Paul V in 1610.

Regarded ever since as a patron of bishops, seminarians, and catechists, Saint Charles remains a model of pastoral zeal and administrative wisdom placed wholly at the service of souls. He challenges those in positions of leadership to spend themselves for their people and to seek reform first of all in their own lives.
$desc$),
('the-dedication-of-the-lateran-basilica', 'The Dedication of the Lateran Basilica', $desc$
This feast commemorates the dedication of the Basilica of Saint John Lateran, the cathedral church of the Bishop of Rome and, as the inscription on its façade proclaims, the mother and head of all the churches of the city and the world. Though many think first of Saint Peter's, it is the Lateran that is the pope's own cathedral, and its dedication is celebrated by the whole Church as a sign of unity around the See of Peter.

To celebrate the dedication of a building throughout the universal Church may seem surprising, but the stone church is a sign of a deeper reality: the living temple built of believers, and the unity of all local churches with the Church of Rome that presides in charity. The feast honors the visible Church as the sacrament of communion and points beyond brick and marble to Christ, the true foundation.

The basilica stands on land once belonging to the Laterani family, given by the Emperor Constantine to the Church in the early fourth century, and was dedicated by Pope Sylvester I around the year 324 as the first great public church of Rome. Repeatedly damaged, sacked, and rebuilt over the centuries, it has remained the cathedral of Rome throughout, and its universal observance spread from the twelfth century as a way of honoring the pope's cathedral.

The feast invites the faithful of every land to recognize their bond with the Bishop of Rome and with the whole Catholic communion. It is an occasion to give thanks for the unity of the Church and to remember that every stone church, however humble, is a sign of the living temple of God built of the faithful themselves.
$desc$),
('saint-leo-the-great-pope-and-doctor-of-the-church', 'Saint Leo the Great, Pope and Doctor of the Church', $desc$
Saint Leo the Great was one of the most consequential popes of antiquity, a pastor and theologian whose defense of orthodox faith and whose vigorous exercise of the Petrine office left a lasting mark on the Church. He guided Rome through a time of political collapse and doctrinal crisis with a clarity and firmness that earned him the title "the Great."

His theological achievement centers on the mystery of the Incarnation, above all his celebrated Tome, which set forth the doctrine that in Christ two natures, divine and human, are united in one person. This teaching became the touchstone of orthodoxy and expressed the deep conviction that the salvation of humanity depends on the true God becoming truly man.

Elected pope in 440, Leo governed the Church for over two decades, asserting the authority of the Roman See and confronting the heresies of his day. His Tome was acclaimed at the Council of Chalcedon in 451, whose fathers cried that Peter had spoken through Leo, and tradition credits him with persuading Attila the Hun to spare Rome in 452. He died in 461 and was later declared a Doctor of the Church, the first pope to bear that title.

Saint Leo endures as a model of the pastor who unites doctrinal courage with pastoral care and administrative skill. His surviving sermons, still read for their clarity and depth, continue to nourish the faith, and his example encourages steadfast confession of the truth of Christ amid confusion and change.
$desc$),
('saint-martin-of-tours-bishop', 'Saint Martin of Tours, Bishop', $desc$
Saint Martin of Tours is among the most venerated saints of the West, a former soldier who became a monk and bishop and whose fame spread the cult of the confessors, holy men who witnessed to Christ not by martyrdom but by a life of heroic virtue. The image of the young soldier dividing his cloak for a beggar has become one of the most enduring in Christian art.

His life witnesses to the radical demands of charity and to the possibility of holiness in every state of life. Reluctant to shed blood as a soldier, he embraced instead the warfare of the spirit, and his tireless evangelization of the countryside, his destruction of pagan shrines, and his gentleness toward sinners embodied a Gospel lived to the full.

Born around 316 in what is now Hungary and raised in Italy, Martin served in the Roman army before being baptized and founding one of the earliest monastic communities in Gaul at Ligugé. Acclaimed Bishop of Tours around 371, he governed his see as a monk-bishop until his death in 397, and his tomb at Tours became one of the great pilgrimage centers of medieval Europe, his life recorded by his contemporary Sulpicius Severus.

Patron of soldiers, of the poor, and of France, Saint Martin remains a beloved figure whose feast once marked the season of Martinmas across Europe. His generosity to the beggar continues to summon the faithful to see Christ in the needy and to give without counting the cost.
$desc$),
('saint-josaphat-bishop-and-martyr', 'Saint Josaphat, Bishop and Martyr', $desc$
Saint Josaphat Kuncevyc was an Eastern-rite archbishop who gave his life for the cause of unity between the Byzantine Christians of Ukraine and the See of Rome. A monk and pastor of great zeal, he became the first saint of the Eastern Catholic Churches to be formally canonized by Rome, and his martyrdom sealed his lifelong labor for communion.

His witness illuminates the difficult and often painful path of Christian unity, the reconciliation of ancient traditions long divided. Deeply attached to the Byzantine liturgy and spirituality, he sought to bring his people into full communion with Rome while preserving their venerable rites, and he died as a martyr precisely for that vision of a Church both Eastern and Catholic.

Born around 1580 in Volhynia, Josaphat became a monk of the Order of Saint Basil and in 1617 Archbishop of Polotsk, where he labored to consolidate the union established at Brest. His reforming zeal provoked fierce opposition, and in 1623 he was murdered by a mob at Vitebsk. He was beatified by Pope Urban VIII in 1643 and canonized by Pope Pius IX in 1867, the first formal canonization of an Eastern Catholic.

In an age still striving for the reconciliation of Christians, Saint Josaphat stands as a patron of ecumenical effort and of the Eastern Catholic Churches. His life reminds the faithful that unity is a costly gift and that fidelity to both tradition and communion may demand the ultimate sacrifice.
$desc$),
('saint-albert-the-great-bishop-and-doctor-of-the-church', 'Saint Albert the Great, Bishop and Doctor of the Church', $desc$
Saint Albert the Great was a Dominican friar, bishop, and one of the most encyclopedic minds of the Middle Ages, celebrated both for his sanctity and for the vast range of his learning. Teacher of Thomas Aquinas, he pioneered the fruitful dialogue between Christian faith and the natural sciences and earned the rare title of "the Great" already in his lifetime.

His intellectual achievement lay in showing that faith and reason are not enemies but allies, and that the study of nature is a path toward its Creator. Steeped in the newly recovered works of Aristotle, he brought philosophy, theology, and the observation of the natural world into a harmonious synthesis, insisting that grace perfects rather than destroys the created order.

Born in Swabia around 1200, Albert joined the Dominicans, taught at Paris and Cologne, and served briefly as Bishop of Regensburg before returning to his scholarship and preaching. His writings ranged across theology, philosophy, botany, zoology, and astronomy, and he defended the orthodoxy of his pupil Thomas after the latter's death. He died at Cologne in 1280, was canonized and declared a Doctor of the Church by Pope Pius XI in 1931, and was named patron of natural scientists.

Saint Albert remains a compelling patron for scientists and scholars and a witness against any false opposition between faith and knowledge. His example encourages believers to pursue truth wherever it is found, confident that all genuine learning leads back to God.
$desc$),
('saint-margaret-of-scotland', 'Saint Margaret of Scotland', $desc$
Saint Margaret of Scotland was a queen whose personal holiness transformed the life of a kingdom, a woman of royal blood who used her position not for power but for the service of God and the poor. Wife of King Malcolm III, she brought to the Scottish court a refinement of faith and a devotion that reached from the palace to the humblest of her subjects.

Her life shows how sanctity can flourish in the married and public state, and how charity and reform can flow from a home. Devoted to prayer, to the Scriptures, and to works of mercy, she reformed the practices of the Scottish Church, cared personally for orphans and the destitute, and made her royal household a school of Christian virtue.

Born around 1045, a granddaughter of an English king and raised in exile in Hungary and England, Margaret came to Scotland after the Norman Conquest and married Malcolm around 1070. She promoted synods to correct abuses, founded churches and monasteries, and established a ferry for pilgrims at what became Queensferry. She died in 1093, shortly after learning of her husband's death, and was canonized by Pope Innocent IV in 1250.

Honored as a patron of Scotland, Saint Margaret remains a model of the sanctified use of wealth and influence. She shows rulers and families alike that authority is rightly exercised in service, and that a life of prayer and charity can leave a lasting imprint on a whole nation.
$desc$),
('saint-gertrude-virgin', 'Saint Gertrude, Virgin', $desc$
Saint Gertrude the Great was a German Benedictine nun and mystic whose intimate experiences of Christ made her one of the great voices of medieval spirituality. A woman of deep learning and deeper prayer, she is especially associated with devotion to the Sacred Heart of Jesus, of which her writings are among the earliest witnesses.

Her spirituality centers on the boundless love of Christ revealed in his Heart and on the union of the soul with him through the liturgy and the Scriptures. Her visions, recorded in her writings, express a tender and confident love, and her teaching on trust in divine mercy and on the infinite value of Christ's love has nourished countless souls.

Born in 1256 and entrusted as a child to the monastery of Helfta, then a flourishing center of learning and mysticism, Gertrude passed her whole life within its walls. A conversion in her twenties turned her from secular studies to wholehearted devotion, and she recorded her mystical experiences in the "Herald of Divine Love." She died around 1302, and though never formally canonized, her cult was confirmed and her feast extended to the universal Church, with Pope Innocent XI approving her veneration.

Saint Gertrude endures as a guide to confident prayer and to devotion to the Heart of Christ. Her writings continue to draw readers toward a personal and loving relationship with the Lord, and her trust in divine mercy remains a consolation for all who feel unworthy of God's love.
$desc$),
('saint-elizabeth-of-hungary-religious', 'Saint Elizabeth of Hungary, Religious', $desc$
Saint Elizabeth of Hungary was a princess and young widow whose radical generosity to the poor made her one of the most beloved saints of the Middle Ages. Renouncing the comforts of her rank, she gave herself wholly to the service of the sick and the destitute and became a shining model of Franciscan charity lived in the world.

Her life proclaims the Gospel of poverty and mercy, the truth that love of Christ is inseparable from love of his poor. Married young and widowed young, she embraced a life of penance and service under Franciscan inspiration, giving away her wealth, tending lepers with her own hands, and building a hospital where she personally cared for the suffering.

Born in 1207, the daughter of the King of Hungary, Elizabeth was married at fourteen to Louis of Thuringia and bore him three children before his death on crusade in 1227. Driven from court, she joined the Third Order of Saint Francis and spent her remaining years in prayer and care for the poor at Marburg, dying in 1231 at the age of twenty-four. So swift was her fame that Pope Gregory IX canonized her in 1235, only four years later.

Patroness of the Third Order Franciscans and of charitable works, Saint Elizabeth remains a model for the young, for widows, and for all who serve the poor. Her cheerful renunciation of privilege and her tender care for the suffering continue to inspire lives of practical charity.
$desc$),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', 'The Dedication of the Basilicas of Saints Peter and Paul, Apostles', $desc$
This observance commemorates the dedication of the two great Roman basilicas raised over the tombs of the apostles Peter and Paul, the twin pillars on whom, according to ancient Roman tradition, the Church of the city was founded. It joins in a single celebration the memory of the Prince of the Apostles and the Apostle of the Gentiles, whose martyrdom consecrated Rome.

To celebrate the dedication of these churches is to profess the apostolic foundation of the Church and the enduring intercession of those who bore witness to Christ by their blood. The basilicas are sacred not chiefly for their grandeur but because they enshrine the relics of the apostles and mark the places sanctified by their preaching and death, drawing pilgrims from every nation to the heart of the Christian faith.

The original Basilica of Saint Peter was built by the Emperor Constantine over the apostle's tomb on the Vatican Hill in the fourth century and rebuilt in its present magnificent form during the sixteenth and seventeenth centuries. The Basilica of Saint Paul Outside the Walls, likewise of Constantinian origin over Paul's burial place on the road to Ostia, was destroyed by fire in 1823 and faithfully rebuilt in the following decades. Their joint commemoration has long been kept in Rome as a sign of the apostles' shared witness.

The feast invites the faithful to renew their bond with the apostolic Church and to give thanks for the witness of Peter and Paul. It is an occasion to reflect on the unity and universality of the Church founded on the apostles, and on the pilgrimage of faith that draws believers toward the tombs of the martyrs.
$desc$),
('the-presentation-of-the-blessed-virgin-mary', 'The Presentation of the Blessed Virgin Mary', $desc$
This memorial celebrates the tradition that the child Mary was offered to God in the Temple by her parents, dedicated to his service from her earliest years. It commemorates less a documented event than a profound truth about Mary's total consecration to God, her whole being given over to his will from the beginning of her life.

The mystery honored here is Mary's complete availability to God, the disposition of a soul wholly consecrated even before she consciously chose it. The celebration contemplates her as the true temple in which the Word would come to dwell, and celebrates the grace that prepared her from the first to be the dwelling place of God among men.

The observance draws upon the apocryphal Protoevangelium of James, which recounts that Anna and Joachim brought their three-year-old daughter to the Temple in fulfillment of a vow. Celebrated in the Christian East from at least the sixth century, the observance entered the West in the later Middle Ages, was at times interrupted, and endures as a celebration of Mary's consecration rather than of a documented historical incident.

The feast invites the faithful to imitate Mary's self-offering by consecrating their own lives to God without reserve. It has long been associated with prayer for those in the consecrated life and remains an occasion to renew one's own dedication, learning from the child of the Temple what it means to belong wholly to the Lord.
$desc$),
('saint-cecilia-virgin-and-martyr', 'Saint Cecilia, Virgin and Martyr', $desc$
Saint Cecilia is one of the most celebrated of the early Roman martyrs, a virgin whose devotion and courage have made her name resound through the centuries. Honored in the ancient Roman canon of the Mass among the martyrs of the city, she is beloved above all as the patron of sacred music, said to have sung to God in her heart even amid her sufferings.

Her witness proclaims the beauty of consecrated virginity and the strength of faith that outlasts persecution. Tradition tells of a young woman who converted her husband and his brother, led them to baptism and martyrdom, and gave her own life rather than renounce Christ, singing praise to God to the end and so becoming the emblem of a heart wholly turned toward heaven.

Cecilia's veneration is very ancient, attested in Rome by the fourth or fifth century, and a church bearing her name has stood in the Trastevere quarter since antiquity, traditionally on the site of her house. The accounts of her passion are legendary in form, and the details of her life cannot be established with certainty, yet the antiquity and constancy of her cult are beyond doubt. Her association with music arose in the later Middle Ages and flowered in the great musical tradition of her feast.

Patroness of musicians, singers, and church music, Saint Cecilia continues to inspire the offering of beauty to God. Her feast remains an occasion to celebrate sacred music as a form of prayer and to honor the courageous purity that made her, in the Church's memory, a bride wholly given to Christ.
$desc$),
('saint-clement-i-pope-and-martyr', 'Saint Clement I, Pope and Martyr', $desc$
Saint Clement I was among the earliest successors of Saint Peter as Bishop of Rome and stands as one of the first witnesses to the exercise of Roman authority in the wider Church. Counted among the Apostolic Fathers, he is remembered both for his martyrdom and for a letter that ranks among the most precious documents of the early Christian centuries.

His importance rests above all on his Letter to the Corinthians, written to a divided community to restore order and obedience, which reveals the early Roman Church intervening with authority in the affairs of another. The letter bears witness to the apostolic succession of ministers and to the concern of the Roman Church for the unity and peace of the whole body of believers.

Clement served as Bishop of Rome around the end of the first century, reckoned traditionally as the third or fourth successor of Peter. His epistle was so esteemed that it was read publicly in some churches alongside the Scriptures. Later tradition recounts his exile and martyrdom by drowning with an anchor, and relics venerated as his were brought to Rome by Saints Cyril and Methodius, whose missionary labors were bound up with his memory.

Saint Clement remains a patron of the unity and good order of the Church and a witness to the antiquity of the Roman primacy. His letter continues to be read as a testimony to the faith and structure of the apostolic age, and his memory encourages the pursuit of peace and concord within the Christian community.
$desc$),
('saint-columban-abbot', 'Saint Columban, Abbot', $desc$
Saint Columban was an Irish monk whose missionary journeys carried the fervor of Celtic monasticism into the heart of continental Europe. A scholar, abbot, and fearless preacher, he founded a series of monasteries that became centers of learning and renewal and left a lasting imprint on the Christian civilization of the West.

His life embodies the ideal of peregrinatio, the voluntary exile of the monk for the love of Christ, and the reforming power of a disciplined common life. Austere in his own observance and bold in confronting kings and bishops alike, he spread a monastic rule and a rigorous penitential discipline that revitalized the faith in lands grown lax.

Born in Ireland around 543 and formed at the monastery of Bangor, Columban set out around 590 with a band of companions for Gaul, where he founded Luxeuil and other houses. His outspoken defense of Irish customs and his rebuke of the Frankish court led to his expulsion, and he journeyed on through Switzerland to northern Italy, founding the great monastery of Bobbio, where he died in 615. His monastic rule long flourished before yielding to that of Saint Benedict.

Honored as one of the fathers of European monasticism, Saint Columban has been invoked as a patron of a united Europe forged from Christian roots. His courage, learning, and missionary zeal continue to inspire, and his life stands as a reminder of the power of consecrated men and women to renew the faith of nations.
$desc$),
('saints-andrew-dung-lac-priest-and-companions-martyrs', 'Saints Andrew Dung-Lac, Priest, and Companions, Martyrs', $desc$
This memorial honors the martyrs of Vietnam, a great company of Vietnamese and missionary Christians who gave their lives for the faith during the persecutions of the seventeenth, eighteenth, and nineteenth centuries. Represented by the priest Andrew Dung-Lac, they include bishops, priests, and laity of every condition who sealed their belief in Christ with their blood.

Their witness proclaims the universality of the Gospel and the readiness of ordinary believers to die rather than deny their faith. Subjected to terrible tortures, they persevered in fidelity to Christ and to the Church, and their steadfastness became the seed of a Christian community that has continued to grow and endure through later trials.

The persecutions in Vietnam claimed many thousands of lives over some three centuries, as successive rulers sought to suppress the Christian faith brought by missionaries and embraced by the people. Among the martyrs was Andrew Dung-Lac, a native priest beheaded in 1839. One hundred and seventeen of these martyrs, drawn from many decades of persecution, were canonized together by Pope John Paul II in 1988, and their common feast was set on November 24.

The martyrs of Vietnam stand as an inspiration to a Church that in every age knows persecution, and as patrons of the Vietnamese people scattered throughout the world. Their memory encourages the faithful to steadfastness under trial and reminds the whole Church of the price that has been paid, and is still being paid, for fidelity to the Gospel.
$desc$),
('saint-catherine-of-alexandria-virgin-and-martyr', 'Saint Catherine of Alexandria, Virgin and Martyr', $desc$
Saint Catherine of Alexandria is one of the most famous virgin martyrs of Christian antiquity, a young woman celebrated for her learning as much as for her courage. Renowned in legend as a princess who confounded pagan philosophers by the force of her arguments, she became one of the most popular saints of the medieval world and a patron of scholars.

Her story exalts the union of faith and wisdom and the invincible constancy of the martyr. Tradition tells of a brilliant and noble maiden who defended the Christian faith before an emperor, converted the very philosophers sent to refute her, and endured torture on a spiked wheel and death by the sword rather than abandon Christ, her name forever linked to the instrument of her passion.

Catherine's cult flourished from the early Middle Ages, especially after her supposed relics were venerated at the monastery on Mount Sinai that bears her name. The historical details of her life cannot be verified, and the accounts of her passion are legendary in character; yet the antiquity and vast popularity of her veneration gave her a durable place in Christian memory. She was counted among the Fourteen Holy Helpers and honored as one of the voices heard by Joan of Arc.

Patroness of philosophers, students, and theologians, Saint Catherine continues to represent the harmony of intellect and faith. Her legend, whatever its historical basis, has long encouraged believers to defend the truth with courage and to place all learning at the service of Christ.
$desc$),
('saint-andrew-apostle', 'Saint Andrew, Apostle', $desc$
Saint Andrew was one of the Twelve and the brother of Simon Peter, honored in tradition as the "first-called" among the apostles. A fisherman of Galilee who left his nets at the word of Christ, he holds a special place as the one who first brought his brother to Jesus and thus became an enduring image of the apostolic call to lead others to the Lord.

His witness proclaims the grace of the apostolic call and the missionary impulse that flows from encountering Christ. Having found the Messiah, Andrew's first act was to seek out his brother and lead him to the Lord, a gesture that makes him a model of evangelization, and his own martyrdom completed his configuration to the Master he had followed.

Andrew appears in the Gospels at the calling of the first disciples and at the feeding of the multitude, and early tradition sends him to preach in Greece and the lands around the Black Sea. He is said to have been crucified at Patras on an X-shaped cross, which has become his emblem. Venerated as the founder of the see later associated with Constantinople, he is honored as patron of Scotland, Greece, and Russia, and his memory has long linked diverse Christian peoples to the apostolic origins of the Church.

As the first to follow Christ and the first to bring another to him, Saint Andrew continues to summon the faithful to answer the call without delay and to share their discovery of the Savior with others. His witness joins personal discipleship to missionary generosity, showing that an encounter with Christ naturally opens outward in invitation, friendship, and proclamation.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('all-saints', 'Tous les Saints', $desc$
La solennité de la Toussaint rassemble en une seule célébration toute la multitude des rachetés qui partagent désormais la gloire de Dieu, aussi bien les saints canonisés dont les noms remplissent le calendrier que la foule innombrable des hommes et des femmes dont la sainteté n'est connue que de Dieu seul. C'est la fête de l'Église triomphante, la reconnaissance joyeuse que la sainteté est la vocation ordinaire de tout baptisé et que le ciel est déjà rempli de ceux qui l'ont atteint.

Au cœur de cette célébration se tient le dogme de la communion des saints : le lien vivant qui unit l'Église en marche sur la terre, l'Église souffrante qui se purifie et l'Église glorieuse du ciel. L'Évangile des Béatitudes, proclamé en ce jour, dresse le portrait même des saints, montrant que le bonheur ne se trouve pas dans la réussite du monde mais dans la pauvreté de cœur, la miséricorde, la pureté et la persévérance pour la justice.

Une commémoration générale des martyrs apparut en Orient dès le IVe siècle, et à Rome la dédicace du Panthéon à Marie et à tous les martyrs par le pape Boniface IV au début du VIIe siècle donna à cette fête un lieu fixe. Le pape Grégoire III dédia plus tard un oratoire à Saint-Pierre en l'honneur de tous les saints, et du temps de Grégoire IV, au IXe siècle, la date du 1er novembre s'était répandue dans tout l'Occident, élargissant la commémoration des martyrs à l'ensemble des saints.

Pour les croyants d'aujourd'hui, cette fête est à la fois consolation et appel : consolation de savoir que les saints intercèdent et que le but de la vie chrétienne est réellement accessible, appel qui rappelle que chacun est invité à grossir leur nombre. Elle convie à un examen sincère de la vie mesurée aux Béatitudes et à une confiance renouvelée dans la grâce qui a déjà fait tant de saints.
$desc$),
('the-commemoration-of-all-the-faithful-departed', 'Commémoration de tous les fidèles défunts', $desc$
Au lendemain même de la joie de la Toussaint, l'Église tourne sa prière vers tous ceux qui sont morts et ne sont pas encore pleinement purifiés, les fidèles défunts qui appartiennent au Christ mais attendent la plénitude de sa gloire. C'est un jour d'intercession plus que de deuil, où les vivants exercent leur charité envers les morts par la prière, l'aumône et surtout l'offrande de l'Eucharistie.

Cette commémoration repose sur la conviction ancienne que les liens de l'amour ne sont pas rompus par la mort et que les vivants peuvent secourir les défunts par la prière, croyance enracinée dans la doctrine de la purification après la mort qu'exprime le dogme du purgatoire. Prier pour les morts est un acte d'espérance, profession de foi en la résurrection de la chair et confiance que la miséricorde de Dieu achève l'œuvre du salut en ceux qui sont morts dans son amitié.

Cette célébration reçut sa forme durable de saint Odilon de Cluny qui, vers l'an 998, fixa au 2 novembre la commémoration de tous les défunts dans les monastères de son ordre, d'où elle se répandit dans toute l'Église latine. Plus tard s'établit la coutume, confirmée par le pape Benoît XV en 1915 au milieu du carnage de la Première Guerre mondiale, de permettre aux prêtres de célébrer trois messes ce jour-là, privilège qui exprimait la prière intensifiée de l'Église pour la multitude des morts.

Ce jour demeure l'un des plus tendres de l'année chrétienne, conduisant les fidèles aux cimetières, à l'allumage des cierges et à la prière pour les parents, les amis et tous les défunts oubliés. Il enseigne un souvenir salutaire de la mort et une charité confiante qui franchit le tombeau, rappelant à chacun que l'Église embrasse les vivants et les morts en une seule communion sans rupture.
$desc$),
('saint-martin-de-porres-religious', 'Saint Martin de Porres, religieux', $desc$
Saint Martin de Porres fut un frère convers dominicain de Lima dont l'humble service et l'extraordinaire charité firent l'un des saints les plus aimés des Amériques. Fils d'un noble espagnol et d'une femme affranchie d'ascendance africaine, il connut dès l'enfance le rejet et la pauvreté, mais devint une figure d'une tendresse étonnante envers les malades, les esclaves et les abandonnés.

Sa vie donne chair à l'enseignement évangélique selon lequel la grandeur est dans le service et nul n'est hors d'atteinte de l'amour de Dieu. Chargé des tâches les plus humbles de son couvent, il transforma le travail servile en offrande d'amour, et son soin des pauvres, la fondation d'un orphelinat et les prodiges attribués à sa prière manifestèrent une sainteté qui transcendait les barrières raciales de sa société.

Né à Lima en 1579, Martin entra au couvent dominicain du Saint-Rosaire comme serviteur puis comme frère convers profès, où il servit jusqu'à sa mort en 1639. Vénéré au Pérou et bien au-delà, il fut béatifié par le pape Grégoire XVI en 1837 et canonisé par le pape Jean XXIII en 1962, qui le proposa comme modèle de justice entre les races et de charité chrétienne.

À une époque encore blessée par le racisme et les divisions sociales, saint Martin parle avec une force singulière comme patron de la justice sociale et de tous ceux qui œuvrent à la réconciliation. Son exemple invite les fidèles à trouver la sainteté dans les devoirs ordinaires fidèlement accomplis et à reconnaître dans tout pauvre et tout rejeté le visage du Christ.
$desc$),
('saint-charles-borromeo-bishop', 'Saint Charles Borromée, évêque', $desc$
Saint Charles Borromée fut archevêque de Milan et l'une des grandes figures de la Réforme catholique, un évêque dont l'énergie infatigable donna forme concrète aux réformes du concile de Trente. De haute naissance et élevé jeune aux plus hautes charges, il choisit pourtant une vie d'austérité, de labeur pastoral et de dévouement total au renouveau de l'Église.

Son épiscopat incarne l'idéal du pasteur réformateur : résidant dans son diocèse, visitant en personne ses paroisses les plus reculées, fondant des séminaires pour la juste formation du clergé et se donnant héroïquement aux malades lors de la peste qui frappa Milan. Sa vie proclame que la réforme de l'Église commence par la sainteté et le zèle de ses pasteurs.

Né en 1538 dans l'aristocratique famille Borromée et neveu du pape Pie IV, Charles joua un rôle décisif dans l'achèvement du concile de Trente et dans la rédaction du Catéchisme romain. Archevêque de Milan, il tint des conciles provinciaux, publia des instructions détaillées pour la vie pastorale et établit des séminaires, mourant épuisé par ses travaux en 1584 à quarante-six ans. Il fut canonisé par le pape Paul V en 1610.

Regardé depuis lors comme patron des évêques, des séminaristes et des catéchistes, saint Charles demeure un modèle de zèle pastoral et de sagesse mis tout entiers au service des âmes. Il appelle ceux qui exercent une charge à se dépenser pour leur peuple et à chercher d'abord la réforme dans leur propre vie.
$desc$),
('the-dedication-of-the-lateran-basilica', 'Dédicace de la basilique du Latran', $desc$
Cette fête commémore la dédicace de la basilique Saint-Jean-de-Latran, église cathédrale de l'évêque de Rome et, comme le proclame l'inscription de sa façade, mère et tête de toutes les églises de la ville et du monde. Bien que l'on songe d'abord à Saint-Pierre, c'est le Latran qui est la cathédrale propre du pape, et sa dédicace est célébrée par toute l'Église comme signe d'unité autour du siège de Pierre.

Célébrer la dédicace d'un édifice dans l'Église universelle peut surprendre, mais l'église de pierre est le signe d'une réalité plus profonde : le temple vivant bâti des croyants et l'unité de toutes les Églises locales avec l'Église de Rome qui préside dans la charité. La fête honore l'Église visible comme sacrement de communion et renvoie, au-delà de la brique et du marbre, au Christ, véritable fondement.

La basilique s'élève sur un terrain ayant appartenu à la famille des Latran, donné par l'empereur Constantin à l'Église au début du IVe siècle, et fut dédiée par le pape Sylvestre Ier vers 324 comme la première grande église publique de Rome. Maintes fois endommagée, saccagée et rebâtie au fil des siècles, elle est demeurée la cathédrale de Rome, et sa célébration universelle se répandit à partir du XIIe siècle en l'honneur de la cathédrale du pape.

La fête invite les fidèles de toute terre à reconnaître leur lien avec l'évêque de Rome et avec toute la communion catholique. Elle est l'occasion de rendre grâce pour l'unité de l'Église et de se rappeler que toute église de pierre, si humble soit-elle, est le signe du temple vivant de Dieu bâti des fidèles eux-mêmes.
$desc$),
('saint-leo-the-great-pope-and-doctor-of-the-church', 'Saint Léon le Grand, pape et docteur de l''Église', $desc$
Saint Léon le Grand fut l'un des papes les plus marquants de l'Antiquité, pasteur et théologien dont la défense de la foi orthodoxe et l'exercice vigoureux de la charge pétrinienne laissèrent une empreinte durable sur l'Église. Il conduisit Rome à travers un temps d'effondrement politique et de crise doctrinale avec une clarté et une fermeté qui lui valurent le titre de « Grand ».

Son œuvre théologique se concentre sur le mystère de l'Incarnation, surtout son célèbre Tome, qui exposa la doctrine selon laquelle dans le Christ deux natures, divine et humaine, sont unies en une seule personne. Cet enseignement devint la pierre de touche de l'orthodoxie et exprima la conviction profonde que le salut des hommes dépend du vrai Dieu devenu vraiment homme.

Élu pape en 440, Léon gouverna l'Église plus de vingt ans, affirmant l'autorité du siège de Rome et affrontant les hérésies de son temps. Son Tome fut acclamé au concile de Chalcédoine en 451, dont les Pères s'écrièrent que Pierre avait parlé par Léon, et la tradition lui attribue d'avoir persuadé Attila d'épargner Rome en 452. Il mourut en 461 et fut proclamé plus tard docteur de l'Église, le premier pape à porter ce titre.

Saint Léon demeure un modèle de pasteur unissant le courage doctrinal au soin pastoral et au sens du gouvernement. Ses sermons, encore lus pour leur clarté et leur profondeur, continuent de nourrir la foi, et son exemple encourage à confesser fermement la vérité du Christ au milieu des troubles et des changements.
$desc$),
('saint-martin-of-tours-bishop', 'Saint Martin de Tours, évêque', $desc$
Saint Martin de Tours compte parmi les saints les plus vénérés de l'Occident, ancien soldat devenu moine et évêque, dont la renommée répandit le culte des confesseurs, ces saints qui rendirent témoignage au Christ non par le martyre mais par une vie de vertu héroïque. L'image du jeune soldat partageant son manteau pour un mendiant est devenue l'une des plus durables de l'art chrétien.

Sa vie témoigne des exigences radicales de la charité et de la possibilité de la sainteté en tout état de vie. Répugnant à verser le sang comme soldat, il embrassa le combat de l'esprit, et son évangelisation infatigable des campagnes, sa destruction des sanctuaires païens et sa douceur envers les pécheurs incarnèrent un Évangile vécu en plénitude.

Né vers 316 dans l'actuelle Hongrie et élevé en Italie, Martin servit dans l'armée romaine avant d'être baptisé et de fonder à Ligugé l'une des premières communautés monastiques de Gaule. Acclamé évêque de Tours vers 371, il gouverna son siège en moine-évêque jusqu'à sa mort en 397, et son tombeau à Tours devint l'un des grands centres de pèlerinage de l'Europe médiévale, sa vie rapportée par son contemporain Sulpice Sévère.

Patron des soldats, des pauvres et de la France, saint Martin demeure une figure aimée dont la fête marquait autrefois la Saint-Martin dans toute l'Europe. Sa générosité envers le mendiant continue d'appeler les fidèles à reconnaître le Christ dans le nécessiteux et à donner sans compter.
$desc$),
('saint-josaphat-bishop-and-martyr', 'Saint Josaphat, évêque et martyr', $desc$
Saint Josaphat Kuncevyc fut un archevêque de rite oriental qui donna sa vie pour l'unité entre les chrétiens byzantins d'Ukraine et le siège de Rome. Moine et pasteur d'un grand zèle, il devint le premier saint des Églises catholiques orientales à être formellement canonisé par Rome, et son martyre scella son labeur de toute une vie pour la communion.

Son témoignage éclaire le chemin difficile et souvent douloureux de l'unité chrétienne, la réconciliation de traditions anciennes longtemps divisées. Profondément attaché à la liturgie et à la spiritualité byzantines, il chercha à conduire son peuple à la pleine communion avec Rome tout en préservant ses rites vénérables, et il mourut martyr précisément pour cette vision d'une Église à la fois orientale et catholique.

Né vers 1580 en Volhynie, Josaphat devint moine de l'Ordre de Saint-Basile et, en 1617, archevêque de Polotsk, où il travailla à consolider l'union conclue à Brest. Son zèle réformateur suscita une vive opposition, et en 1623 il fut assassiné par une foule à Vitebsk. Il fut béatifié par le pape Urbain VIII en 1643 et canonisé par le pape Pie IX en 1867, première canonisation formelle d'un catholique oriental.

À une époque qui aspire encore à la réconciliation des chrétiens, saint Josaphat se dresse comme patron de l'effort œcuménique et des Églises catholiques orientales. Sa vie rappelle aux fidèles que l'unité est un don coûteux et que la fidélité à la fois à la tradition et à la communion peut exiger le sacrifice suprême.
$desc$),
('saint-albert-the-great-bishop-and-doctor-of-the-church', 'Saint Albert le Grand, évêque et docteur de l''Église', $desc$
Saint Albert le Grand fut un frère dominicain, évêque et l'un des esprits les plus encyclopédiques du Moyen Âge, célèbre autant pour sa sainteté que pour l'immense étendue de son savoir. Maître de Thomas d'Aquin, il fut le pionnier d'un dialogue fécond entre la foi chrétienne et les sciences de la nature et mérita le rare titre de « Grand » dès son vivant.

Son œuvre intellectuelle fut de montrer que la foi et la raison ne sont pas ennemies mais alliées, et que l'étude de la nature est un chemin vers son Créateur. Nourri des œuvres d'Aristote récemment retrouvées, il amena la philosophie, la théologie et l'observation du monde naturel à une synthèse harmonieuse, affirmant que la grâce perfectionne l'ordre créé au lieu de le détruire.

Né en Souabe vers 1200, Albert entra chez les Dominicains, enseigna à Paris et à Cologne et fut brièvement évêque de Ratisbonne avant de revenir à l'étude et à la prédication. Ses écrits parcoururent la théologie, la philosophie, la botanique, la zoologie et l'astronomie, et il défendit l'orthodoxie de son disciple Thomas après la mort de celui-ci. Il mourut à Cologne en 1280, fut canonisé et proclamé docteur de l'Église par le pape Pie XI en 1931, puis nommé patron des sciences naturelles.

Saint Albert demeure un patron éclairant pour les savants et les chercheurs et un témoin contre toute fausse opposition entre foi et savoir. Son exemple encourage les croyants à poursuivre la vérité partout où elle se trouve, assurés que tout savoir véritable ramène à Dieu.
$desc$),
('saint-margaret-of-scotland', 'Sainte Marguerite d''Écosse', $desc$
Sainte Marguerite d'Écosse fut une reine dont la sainteté personnelle transforma la vie d'un royaume, une femme de sang royal qui usa de sa position non pour le pouvoir mais pour le service de Dieu et des pauvres. Épouse du roi Malcolm III, elle apporta à la cour d'Écosse un raffinement de la foi et une piété qui rayonnaient du palais jusqu'au plus humble de ses sujets.

Sa vie montre comment la sainteté peut fleurir dans l'état conjugal et public, et comment la charité et la réforme peuvent jaillir d'un foyer. Adonnée à la prière, à l'Écriture et aux œuvres de miséricorde, elle réforma les usages de l'Église d'Écosse, prit soin en personne des orphelins et des indigents et fit de sa maison royale une école de vertu chrétienne.

Née vers 1045, petite-fille d'un roi anglais et élevée en exil en Hongrie et en Angleterre, Marguerite vint en Écosse après la conquête normande et épousa Malcolm vers 1070. Elle promut des synodes pour corriger les abus, fonda églises et monastères et établit un bac pour les pèlerins à l'endroit devenu Queensferry. Elle mourut en 1093, peu après avoir appris la mort de son époux, et fut canonisée par le pape Innocent IV en 1250.

Honorée comme patronne de l'Écosse, sainte Marguerite demeure un modèle du saint usage de la richesse et de l'influence. Elle montre aux gouvernants comme aux familles que l'autorité s'exerce justement dans le service, et qu'une vie de prière et de charité peut marquer durablement toute une nation.
$desc$),
('saint-gertrude-virgin', 'Sainte Gertrude, vierge', $desc$
Sainte Gertrude la Grande fut une moniale bénédictine allemande et une mystique dont les expériences intimes du Christ firent l'une des grandes voix de la spiritualité médiévale. Femme d'un profond savoir et d'une prière plus profonde encore, elle est particulièrement liée à la dévotion au Sacré-Cœur de Jésus, dont ses écrits comptent parmi les premiers témoins.

Sa spiritualité se concentre sur l'amour sans mesure du Christ révélé dans son Cœur et sur l'union de l'âme avec lui par la liturgie et l'Écriture. Ses visions, consignées dans ses écrits, expriment un amour tendre et confiant, et son enseignement sur la confiance en la miséricorde divine et sur la valeur infinie de l'amour du Christ a nourri d'innombrables âmes.

Née en 1256 et confiée dès l'enfance au monastère de Helfta, alors florissant centre de savoir et de mystique, Gertrude y passa toute sa vie. Une conversion survenue dans sa vingtaine la détourna des études profanes vers une dévotion sans partage, et elle consigna ses expériences mystiques dans le « Héraut de l'amour divin ». Elle mourut vers 1302, et bien que jamais formellement canonisée, son culte fut confirmé et sa fête étendue à l'Église universelle, le pape Innocent XI approuvant sa vénération.

Sainte Gertrude demeure un guide vers la prière confiante et la dévotion au Cœur du Christ. Ses écrits continuent d'attirer les lecteurs vers une relation personnelle et aimante avec le Seigneur, et sa confiance en la miséricorde divine reste une consolation pour tous ceux qui se sentent indignes de l'amour de Dieu.
$desc$),
('saint-elizabeth-of-hungary-religious', 'Sainte Élisabeth de Hongrie, religieuse', $desc$
Sainte Élisabeth de Hongrie fut une princesse et une jeune veuve dont la générosité radicale envers les pauvres fit l'une des saintes les plus aimées du Moyen Âge. Renonçant aux commodités de son rang, elle se donna tout entière au service des malades et des indigents et devint un modèle éclatant de la charité franciscaine vécue dans le monde.

Sa vie proclame l'Évangile de la pauvreté et de la miséricorde, la vérité que l'amour du Christ est inséparable de l'amour de ses pauvres. Mariée jeune et veuve jeune, elle embrassa une vie de pénitence et de service sous l'inspiration franciscaine, distribuant ses biens, soignant les lépreux de ses propres mains et bâtissant un hôpital où elle prenait soin en personne des souffrants.

Née en 1207, fille du roi de Hongrie, Élisabeth fut mariée à quatorze ans à Louis de Thuringe et lui donna trois enfants avant sa mort en croisade en 1227. Chassée de la cour, elle entra dans le Tiers-Ordre de saint François et passa ses dernières années dans la prière et le soin des pauvres à Marbourg, mourant en 1231 à vingt-quatre ans. Sa renommée fut si prompte que le pape Grégoire IX la canonisa en 1235, quatre ans seulement après sa mort.

Patronne du Tiers-Ordre franciscain et des œuvres de charité, sainte Élisabeth demeure un modèle pour les jeunes, les veuves et tous ceux qui servent les pauvres. Son renoncement joyeux au privilège et son soin tendre des souffrants continuent d'inspirer des vies de charité concrète.
$desc$),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', 'Dédicace des basiliques des saints Pierre et Paul, apôtres', $desc$
Cette célébration commémore la dédicace des deux grandes basiliques romaines élevées sur les tombeaux des apôtres Pierre et Paul, les deux colonnes sur lesquelles, selon l'antique tradition romaine, l'Église de la ville fut fondée. Elle unit en une seule fête la mémoire du Prince des apôtres et de l'Apôtre des nations, dont le martyre a consacré Rome.

Célébrer la dédicace de ces églises, c'est confesser le fondement apostolique de l'Église et l'intercession durable de ceux qui rendirent témoignage au Christ par leur sang. Les basiliques sont sacrées non d'abord par leur grandeur, mais parce qu'elles renferment les reliques des apôtres et marquent les lieux sanctifiés par leur prédication et leur mort, attirant des pèlerins de toute nation au cœur de la foi chrétienne.

La première basilique Saint-Pierre fut bâtie par l'empereur Constantin sur le tombeau de l'apôtre au Vatican au IVe siècle et reconstruite dans sa forme actuelle aux XVIe et XVIIe siècles. La basilique Saint-Paul-hors-les-Murs, elle aussi d'origine constantinienne sur le lieu de sépulture de Paul sur la voie d'Ostie, fut détruite par un incendie en 1823 et fidèlement rebâtie dans les décennies suivantes. Leur commémoration commune est célébrée de longue date à Rome comme signe du témoignage partagé des apôtres.

La fête invite les fidèles à renouveler leur lien avec l'Église apostolique et à rendre grâce pour le témoignage de Pierre et de Paul. Elle est l'occasion de méditer sur l'unité et l'universalité de l'Église fondée sur les apôtres, et sur le pèlerinage de la foi qui attire les croyants vers les tombeaux des martyrs.
$desc$),
('the-presentation-of-the-blessed-virgin-mary', 'Présentation de la Bienheureuse Vierge Marie', $desc$
Cette mémoire célèbre la tradition selon laquelle l'enfant Marie fut offerte à Dieu au Temple par ses parents, consacrée à son service dès ses premières années. Elle commémore moins un événement attesté qu'une vérité profonde sur la consécration totale de Marie à Dieu, tout son être livré à sa volonté dès le commencement de sa vie.

Le mystère honoré ici est la pleine disponibilité de Marie à Dieu, la disposition d'une âme entièrement consacrée avant même qu'elle ne le choisisse consciemment. Cette célébration la contemple comme le vrai temple où le Verbe viendrait demeurer, et célèbre la grâce qui la prépara dès le premier instant à être la demeure de Dieu parmi les hommes.

Cette célébration puise dans le Protévangile apocryphe de Jacques, qui raconte qu'Anne et Joachim conduisirent leur fille de trois ans au Temple pour accomplir un vœu. Célébrée en Orient chrétien depuis au moins le VIe siècle, elle entra en Occident à la fin du Moyen Âge, connut des interruptions, et demeure une célébration de la consécration de Marie plutôt que d'un fait historiquement attesté.

La fête invite les fidèles à imiter l'offrande de Marie en consacrant leur propre vie à Dieu sans réserve. Elle est depuis longtemps liée à la prière pour ceux qui mènent la vie consacrée et demeure l'occasion de renouveler son propre don, apprenant de l'enfant du Temple ce que signifie appartenir tout entier au Seigneur.
$desc$),
('saint-cecilia-virgin-and-martyr', 'Sainte Cécile, vierge et martyre', $desc$
Sainte Cécile est l'une des plus célèbres martyres de la Rome primitive, une vierge dont la piété et le courage font résonner le nom à travers les siècles. Honorée dans l'antique canon romain de la messe parmi les martyrs de la ville, elle est aimée surtout comme patronne de la musique sacrée, elle qui, dit-on, chantait Dieu dans son cœur au milieu même de ses souffrances.

Son témoignage proclame la beauté de la virginité consacrée et la force d'une foi qui survit à la persécution. La tradition rapporte l'histoire d'une jeune femme qui convertit son époux et le frère de celui-ci, les conduisit au baptême et au martyre, et donna sa propre vie plutôt que de renier le Christ, chantant la louange de Dieu jusqu'au bout et devenant ainsi l'emblème d'un cœur tout tourné vers le ciel.

La vénération de Cécile est très ancienne, attestée à Rome dès le IVe ou le Ve siècle, et une église portant son nom s'élève dans le quartier du Trastevere depuis l'Antiquité, traditionnellement sur le lieu de sa maison. Les récits de sa passion sont de forme légendaire et les détails de sa vie ne peuvent être établis avec certitude, mais l'antiquité et la constance de son culte sont hors de doute. Son association à la musique naquit à la fin du Moyen Âge et s'épanouit dans la grande tradition musicale de sa fête.

Patronne des musiciens, des chanteurs et de la musique d'église, sainte Cécile continue d'inspirer l'offrande de la beauté à Dieu. Sa fête reste l'occasion de célébrer la musique sacrée comme une forme de prière et d'honorer la pureté courageuse qui fit d'elle, dans la mémoire de l'Église, une épouse tout entière donnée au Christ.
$desc$),
('saint-clement-i-pope-and-martyr', 'Saint Clément Ier, pape et martyr', $desc$
Saint Clément Ier fut l'un des premiers successeurs de saint Pierre comme évêque de Rome et se dresse parmi les premiers témoins de l'exercice de l'autorité romaine dans l'Église universelle. Compté parmi les Pères apostoliques, on le rappelle à la fois pour son martyre et pour une lettre qui figure parmi les documents les plus précieux des premiers siècles chrétiens.

Son importance tient surtout à sa Lettre aux Corinthiens, écrite à une communauté divisée pour rétablir l'ordre et l'obéissance, qui montre l'Église de Rome primitive intervenant avec autorité dans les affaires d'une autre Église. La lettre atteste la succession apostolique des ministres et le souci de l'Église de Rome pour l'unité et la paix de tout le corps des croyants.

Clément fut évêque de Rome vers la fin du Ier siècle, compté traditionnellement comme le troisième ou le quatrième successeur de Pierre. Son épître fut si estimée qu'on la lisait publiquement dans certaines Églises à côté des Écritures. La tradition postérieure rapporte son exil et son martyre par noyade avec une ancre, et des reliques vénérées comme les siennes furent portées à Rome par les saints Cyrille et Méthode, dont l'œuvre missionnaire fut liée à sa mémoire.

Saint Clément demeure un patron de l'unité et du bon ordre de l'Église et un témoin de l'antiquité de la primauté romaine. Sa lettre continue d'être lue comme un témoignage de la foi et de la structure de l'âge apostolique, et sa mémoire encourage la recherche de la paix et de la concorde au sein de la communauté chrétienne.
$desc$),
('saint-columban-abbot', 'Saint Colomban, abbé', $desc$
Saint Colomban fut un moine irlandais dont les voyages missionnaires portèrent la ferveur du monachisme celtique au cœur de l'Europe continentale. Savant, abbé et prédicateur intrépide, il fonda une série de monastères devenus des centres de savoir et de renouveau et laissa une empreinte durable sur la civilisation chrétienne de l'Occident.

Sa vie incarne l'idéal de la peregrinatio, l'exil volontaire du moine par amour du Christ, et la force réformatrice d'une vie commune disciplinée. Austère dans sa propre observance et hardi à affronter rois et évêques, il répandit une règle monastique et une rigoureuse discipline pénitentielle qui revivifièrent la foi dans des contrées relâchées.

Né en Irlande vers 543 et formé au monastère de Bangor, Colomban partit vers 590 avec un groupe de compagnons pour la Gaule, où il fonda Luxeuil et d'autres maisons. Sa défense sans détour des usages irlandais et ses reproches à la cour franque entraînèrent son expulsion, et il gagna, à travers la Suisse, l'Italie du Nord, fondant le grand monastère de Bobbio, où il mourut en 615. Sa règle monastique fleurit longtemps avant de céder à celle de saint Benoît.

Honoré comme l'un des pères du monachisme européen, saint Colomban a été invoqué comme patron d'une Europe unie forgée sur des racines chrétiennes. Son courage, son savoir et son zèle missionnaire continuent d'inspirer, et sa vie rappelle le pouvoir des hommes et des femmes consacrés de renouveler la foi des nations.
$desc$),
('saints-andrew-dung-lac-priest-and-companions-martyrs', 'Saints André Dung-Lac, prêtre, et ses compagnons, martyrs', $desc$
Cette mémoire honore les martyrs du Vietnam, une grande multitude de chrétiens vietnamiens et missionnaires qui donnèrent leur vie pour la foi durant les persécutions des XVIIe, XVIIIe et XIXe siècles. Représentés par le prêtre André Dung-Lac, ils comprennent des évêques, des prêtres et des laïcs de toute condition qui scellèrent de leur sang leur foi au Christ.

Leur témoignage proclame l'universalité de l'Évangile et la disposition de croyants ordinaires à mourir plutôt que de renier leur foi. Soumis à d'atroces tortures, ils persévérèrent dans la fidélité au Christ et à l'Église, et leur constance devint la semence d'une communauté chrétienne qui a continué de croître et de subsister à travers les épreuves ultérieures.

Les persécutions au Vietnam firent plusieurs milliers de victimes en quelque trois siècles, tandis que des souverains successifs cherchaient à étouffer la foi chrétienne apportée par les missionnaires et embrassée par le peuple. Parmi les martyrs figurait André Dung-Lac, prêtre autochtone décapité en 1839. Cent dix-sept de ces martyrs, appartenant à de nombreuses décennies de persécution, furent canonisés ensemble par le pape Jean-Paul II en 1988, et leur fête commune fut fixée au 24 novembre.

Les martyrs du Vietnam sont une inspiration pour une Église qui, à chaque époque, connaît la persécution, et des patrons pour le peuple vietnamien dispersé à travers le monde. Leur mémoire encourage les fidèles à la constance dans l'épreuve et rappelle à toute l'Église le prix payé, et encore payé aujourd'hui, pour la fidélité à l'Évangile.
$desc$),
('saint-catherine-of-alexandria-virgin-and-martyr', 'Sainte Catherine d''Alexandrie, vierge et martyre', $desc$
Sainte Catherine d'Alexandrie est l'une des plus célèbres vierges martyres de l'Antiquité chrétienne, une jeune femme réputée pour son savoir autant que pour son courage. Fameuse dans la légende comme une princesse qui confondit les philosophes païens par la force de ses arguments, elle devint l'une des saintes les plus populaires du monde médiéval et une patronne des savants.

Son histoire exalte l'union de la foi et de la sagesse et l'invincible constance de la martyre. La tradition raconte l'histoire d'une jeune fille brillante et noble qui défendit la foi chrétienne devant un empereur, convertit les philosophes mêmes envoyés pour la réfuter, et endura le supplice de la roue garnie de pointes puis la mort par le glaive plutôt que d'abandonner le Christ, son nom à jamais lié à l'instrument de sa passion.

Le culte de Catherine fleurit dès le haut Moyen Âge, surtout après que ses prétendues reliques furent vénérées au monastère du mont Sinaï qui porte son nom. Les détails historiques de sa vie ne peuvent être vérifiés et les récits de sa passion sont de caractère légendaire ; pourtant, l'antiquité et l'immense popularité de sa vénération lui assurèrent une place durable dans la mémoire chrétienne. Elle fut comptée parmi les Quatorze Saints Auxiliaires et honorée comme l'une des voix entendues par Jeanne d'Arc.

Patronne des philosophes, des étudiants et des théologiens, sainte Catherine continue de représenter l'harmonie de l'intelligence et de la foi. Sa légende, quel qu'en soit le fondement historique, a longtemps encouragé les croyants à défendre la vérité avec courage et à mettre tout savoir au service du Christ.
$desc$),
('saint-andrew-apostle', 'Saint André, apôtre', $desc$
Saint André fut l'un des Douze et le frère de Simon-Pierre, honoré par la tradition comme le « premier appelé » parmi les apôtres. Pêcheur de Galilée qui laissa ses filets à la parole du Christ, il tient une place privilégiée comme celui qui amena le premier son frère à Jésus, devenant ainsi une image durable de l'appel apostolique à conduire d'autres au Seigneur.

Son témoignage proclame la grâce de l'appel apostolique et l'élan missionnaire qui jaillit de la rencontre du Christ. Ayant trouvé le Messie, le premier geste d'André fut d'aller chercher son frère et de le conduire au Seigneur, geste qui fait de lui un modèle d'évangélisation, et son propre martyre acheva sa configuration au Maître qu'il avait suivi.

André apparaît dans les Évangiles à l'appel des premiers disciples et à la multiplication des pains, et la tradition ancienne l'envoie prêcher en Grèce et dans les régions de la mer Noire. On dit qu'il fut crucifié à Patras sur une croix en forme d'X, devenue son emblème. Vénéré comme le fondateur du siège associé plus tard à Constantinople, il est honoré comme patron de l'Écosse, de la Grèce et de la Russie, et sa mémoire relie depuis longtemps des peuples chrétiens divers aux origines apostoliques de l'Église.

Premier à suivre le Christ et premier à lui amener un autre, saint André continue d'appeler les fidèles à répondre sans délai et à partager avec d'autres leur découverte du Sauveur. Son témoignage unit la fidélité personnelle du disciple à l'élan missionnaire, montrant qu'une rencontre avec le Christ s'ouvre naturellement en invitation, en amitié et en annonce.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('all-saints', 'Omnium Sanctorum', $desc$
Sollemnitas Omnium Sanctorum in unam celebrationem colligit universam redemptorum multitudinem quae iam gloriam Dei participat, tam sanctos in albo relatos quorum nomina calendarium implent quam innumeros viros et mulieres quorum sanctitas soli Deo nota est. Est festum Ecclesiae triumphantis, laeta confessio sanctitatem esse ordinariam omnis baptizati vocationem et caelum iam plenum esse iis qui ad illud pervenerunt.

In medio celebrationis stat doctrina de communione sanctorum: vivum vinculum quo coniunguntur Ecclesia peregrinans in terra, Ecclesia patiens quae purgatur, et Ecclesia gloriosa in caelo. Evangelium Beatitudinum, hoc die proclamatum, ipsam sanctorum imaginem proponit, ostendens beatitudinem non in mundi successu sed in paupertate spiritus, misericordia, cordis munditia et perseverantia propter iustitiam inveniri.

Generalis martyrum commemoratio in Oriente iam saeculo quarto orta est, et Romae dedicatio Pantheon Mariae et omnibus martyribus a Bonifatio IV papa ineunte saeculo septimo facta huic observantiae certam sedem dedit. Gregorius III papa postea oratorium apud Sanctum Petrum omnibus sanctis dedicavit, et tempore Gregorii IV, saeculo nono, dies prima Novembris per totum Occidentem diffusa erat, commemoratione a martyribus ad omnes sanctos ampliata.

Fidelibus hodiernis hoc festum est simul consolatio et provocatio: consolatio scire sanctos intercedere et finem vitae christianae revera esse assequibilem, provocatio quae admonet unumquemque vocari ut illorum numerum augeat. Invitat ad sinceram vitae examinationem ad Beatitudines mensuratae et ad renovatam fiduciam in gratia quae iam tot sanctos effecit.
$desc$),
('the-commemoration-of-all-the-faithful-departed', 'Commemoratio Omnium Fidelium Defunctorum', $desc$
Statim post gaudium Omnium Sanctorum Ecclesia orationem suam convertit ad omnes qui mortui sunt necdum plene purgati, ad fideles defunctos qui Christi sunt sed plenitudinem gloriae eius exspectant. Est dies intercessionis potius quam luctus, quo vivi caritatem suam erga mortuos exercent per orationem, eleemosynam et praesertim per Eucharistiae oblationem.

Haec commemoratio innititur antiquae persuasioni caritatis vincula morte non abrumpi et vivos defunctis per orationem subvenire posse, fidei in doctrina purificationis post mortem radicatae quam dogma purgatorii exprimit. Orare pro mortuis actus spei est, professio fidei in carnis resurrectione et fiducia Dei misericordiam opus salutis in iis qui in eius amicitia obierunt perficere.

Haec celebratio formam stabilem accepit a sancto Odilone Cluniacensi qui, circa annum 998, diem secundam Novembris omnium defunctorum commemorationi per monasteria ordinis sui statuit, unde per totam Ecclesiam Latinam diffusa est. Postea orta est consuetudo, a Benedicto XV papa anno 1915 inter primi belli mundani stragem confirmata, sacerdotibus permittendi hoc die tres Missas celebrare, privilegium quod intensiorem Ecclesiae pro mortuorum multitudine orationem exprimebat.

Hic dies unus e teneris anni christiani manet, fideles ad coemeteria, ad cereorum accensionem et ad orationem pro parentibus, amicis et omnibus oblitis defunctis ducens. Docet salutarem mortis memoriam et fidentem caritatem quae sepulcrum transcendit, unumquemque admonens Ecclesiam vivos et mortuos in una indivisa communione complecti.
$desc$),
('saint-martin-de-porres-religious', 'Sanctus Martinus de Porres, religiosus', $desc$
Sanctus Martinus de Porres frater laicus dominicanus Limensis fuit, cuius humile ministerium et extraordinaria caritas eum unum ex sanctis Americae dilectissimis effecerunt. Filius nobilis Hispani et mulieris libertae originis Africanae, ab infantia reiectionem et paupertatem novit, sed in figuram mirae teneritudinis erga aegros, servos et derelictos crevit.

Vita eius corpus praebet doctrinae evangelicae qua magnitudo in ministerio est nec quisquam extra amoris Dei attingentiam. Humillimis conventus sui officiis addictus, laborem servilem in oblationem amoris transformavit, et cura eius pauperum, orphanotrophii fundatio et prodigia orationi eius attributa sanctitatem manifestaverunt quae claustra generum societatis suae transcendebat.

Limae anno 1579 natus, Martinus conventum dominicanum Sancti Rosarii ut famulus, deinde ut frater laicus professus ingressus est, ubi usque ad mortem anno 1639 ministravit. In Peru et longe ultra veneratus, a Gregorio XVI papa anno 1837 beatificatus et a Ioanne XXIII papa anno 1962 canonizatus est, qui eum ut exemplar iustitiae inter genera et caritatis christianae proposuit.

Aetate racismo et divisionibus socialibus adhuc vulnerata, sanctus Martinus singulari vi loquitur ut patronus iustitiae socialis et omnium qui reconciliationi student. Exemplum eius fideles invitat ut sanctitatem in ordinariis officiis fideliter impletis inveniant et in omni paupere ac reiecto vultum Christi agnoscant.
$desc$),
('saint-charles-borromeo-bishop', 'Sanctus Carolus Borromeo, episcopus', $desc$
Sanctus Carolus Borromeo archiepiscopus Mediolanensis fuit et una ex praecipuis figuris Reformationis catholicae, episcopus cuius indefessa navitas reformationibus Concilii Tridentini formam concretam dedit. Nobili genere natus et iuvenis ad summa officia evectus, vitam tamen austeritatis, laboris pastoralis et plenae Ecclesiae renovationi deditae elegit.

Episcopatus eius exemplar pastoris reformatoris exprimit: in dioecesi sua residens, paroecias remotissimas per se visitans, seminaria ad rectam cleri formationem fundans, et aegrotis heroice se tradens tempore pestis quae Mediolanum percussit. Vita eius proclamat reformationem Ecclesiae a sanctitate et studio pastorum eius incipere.

Anno 1538 in aristocratica familia Borromea natus et Pii IV papae nepos, Carolus partes decisivas egit in Concilio Tridentino ad finem perducendo et in Catechismo Romano conficiendo. Archiepiscopus Mediolanensis concilia provincialia habuit, praecepta accurata pro vita pastorali edidit et seminaria condidit, laboribus confectus anno 1584 quadraginta sex annorum moriens. A Paulo V papa anno 1610 canonizatus est.

Inde ut patronus episcoporum, seminaristarum et catechistarum habitus, sanctus Carolus exemplar manet studii pastoralis et sapientiae in animarum ministerium totum collocatorum. Eos qui munera regunt provocat ut pro populo suo se impendant et reformationem primum in propria vita quaerant.
$desc$),
('the-dedication-of-the-lateran-basilica', 'Dedicatio Basilicae Lateranensis', $desc$
Hoc festum dedicationem Basilicae Sancti Ioannis in Laterano commemorat, ecclesiae cathedralis episcopi Romani et, ut inscriptio frontis eius proclamat, matris et capitis omnium ecclesiarum Urbis et Orbis. Etsi plures primum de Sancto Petro cogitant, Lateranum est cathedralis propria papae, et eius dedicatio ab universa Ecclesia celebratur ut signum unitatis circa sedem Petri.

Dedicationem aedificii per universam Ecclesiam celebrare mirum videri potest, sed ecclesia lapidea signum est altioris realitatis: templi vivi ex credentibus aedificati et unitatis omnium ecclesiarum localium cum Ecclesia Romana quae in caritate praesidet. Festum honorat Ecclesiam visibilem ut communionis sacramentum et ultra latercium marmorque ad Christum, verum fundamentum, dirigit.

Basilica exstat in solo olim familiae Lateranorum, ab imperatore Constantino ineunte saeculo quarto Ecclesiae dato, et a Silvestro I papa circa annum 324 ut prima magna ecclesia publica Romae dedicata est. Saepe laesa, direpta et reaedificata per saecula, cathedralis Romae permansit, et universalis eius observantia a saeculo duodecimo diffusa est in honorem cathedralis papae.

Festum fideles omnis terrae invitat ut vinculum suum cum episcopo Romano et cum tota communione catholica agnoscant. Occasio est gratias agendi pro Ecclesiae unitate et recordandi omnem ecclesiam lapideam, quantumvis humilem, signum esse vivi templi Dei ex ipsis fidelibus aedificati.
$desc$),
('saint-leo-the-great-pope-and-doctor-of-the-church', 'Sanctus Leo Magnus, papa et Ecclesiae doctor', $desc$
Sanctus Leo Magnus unus ex pontificibus antiquitatis maximi momenti fuit, pastor et theologus cuius defensio fidei orthodoxae et vigorosa exercitatio muneris Petrini duraturam Ecclesiae notam impresserunt. Romam per tempus ruinae politicae et crisis doctrinalis rexit ea claritate et firmitate quae ei titulum «Magni» meruerunt.

Theologicum eius opus in mysterio Incarnationis versatur, praesertim celebre Tomus eius, qui doctrinam exposuit in Christo duas naturas, divinam et humanam, in una persona uniri. Haec doctrina lapis Lydius orthodoxiae facta est et altam persuasionem expressit salutem hominum a vero Deo vere homine facto pendere.

Papa anno 440 electus, Leo Ecclesiam plus quam viginti annos gubernavit, auctoritatem sedis Romanae asserens et haereses temporis sui aggrediens. Tomus eius in Concilio Chalcedonensi anno 451 acclamatus est, cuius Patres exclamaverunt Petrum per Leonem locutum esse, et traditio ei attribuit Attilam persuasisse ut Romae parceret anno 452. Anno 461 obiit et postea Ecclesiae doctor declaratus est, primus papa hunc titulum ferens.

Sanctus Leo exemplar manet pastoris qui audaciam doctrinalem cum cura pastorali et regiminis peritia coniungit. Sermones eius, adhuc propter claritatem et profunditatem lecti, fidem alere pergunt, et exemplum eius hortatur ad veritatem Christi firmiter confitendam inter turbationes et mutationes.
$desc$),
('saint-martin-of-tours-bishop', 'Sanctus Martinus Turonensis, episcopus', $desc$
Sanctus Martinus Turonensis inter sanctos Occidentis maxime veneratos numeratur, olim miles factus monachus et episcopus, cuius fama cultum confessorum diffudit, sanctorum qui Christo testimonium reddiderunt non martyrio sed vita heroicae virtutis. Imago iuvenis militis chlamydem suam mendico dividentis una ex maxime duraturis artis christianae facta est.

Vita eius testatur radicalia caritatis postulata et sanctitatis possibilitatem in omni vitae statu. Sanguinem effundere ut miles renuens, spiritus potius bellum amplexus est, et indefessa eius ruris evangelizatio, delubrorum paganorum destructio et in peccatores mansuetudo Evangelium plene vixerunt.

Circa annum 316 in hodierna Hungaria natus et in Italia educatus, Martinus in exercitu Romano militavit priusquam baptizaretur et unam ex primis communitatibus monasticis Galliae apud Ligugé conderet. Circa annum 371 episcopus Turonensis acclamatus, sedem suam ut monachus-episcopus rexit usque ad mortem anno 397, et sepulcrum eius Turonis unum ex magnis peregrinationis centris Europae mediaevalis factum est, vita eius a coaevo Sulpicio Severo relata.

Patronus militum, pauperum et Galliae, sanctus Martinus figura dilecta manet cuius festum olim tempus Martinalium per totam Europam signabat. Liberalitas eius erga mendicum fideles vocare pergit ut Christum in egeno agnoscant et sine numero donent.
$desc$),
('saint-josaphat-bishop-and-martyr', 'Sanctus Iosaphat, episcopus et martyr', $desc$
Sanctus Iosaphat Kuncevyc archiepiscopus ritus orientalis fuit qui vitam suam pro unitate inter christianos byzantinos Ucrainae et sedem Romanam dedit. Monachus et pastor magni studii, primus sanctus Ecclesiarum catholicarum orientalium factus est formaliter a Roma canonizatus, et martyrium eius laborem totius vitae pro communione obsignavit.

Testimonium eius illustrat difficile et saepe dolorosum iter unitatis christianae, reconciliationem traditionum antiquarum diu divisarum. Liturgiae et spiritualitati byzantinae penitus addictus, populum suum ad plenam communionem cum Roma ducere quaesivit ritibus venerandis eius servatis, et martyr obiit propter illam ipsam visionem Ecclesiae simul orientalis et catholicae.

Circa annum 1580 in Volhynia natus, Iosaphat monachus Ordinis Sancti Basilii et anno 1617 archiepiscopus Polocensis factus est, ubi ad unionem Brestae conclusam consolidandam laboravit. Studium eius reformatorium acrem oppositionem excitavit, et anno 1623 a turba Vitepsci occisus est. Ab Urbano VIII papa anno 1643 beatificatus et a Pio IX papa anno 1867 canonizatus est, prima formalis canonizatio catholici orientalis.

Aetate reconciliationi christianorum adhuc studente, sanctus Iosaphat ut patronus incepti oecumenici et Ecclesiarum catholicarum orientalium stat. Vita eius fideles admonet unitatem donum pretiosum esse et fidelitatem simul traditioni et communioni summum sacrificium exigere posse.
$desc$),
('saint-albert-the-great-bishop-and-doctor-of-the-church', 'Sanctus Albertus Magnus, episcopus et Ecclesiae doctor', $desc$
Sanctus Albertus Magnus frater dominicanus, episcopus et unus ex mentibus maxime encyclopaedicis Medii Aevi fuit, tam propter sanctitatem quam propter immensam doctrinae amplitudinem celebratus. Magister Thomae Aquinatis, dialogi fecundi inter fidem christianam et scientias naturae praecursor fuit et rarum titulum «Magni» iam vivens meruit.

Opus eius intellectuale in eo consistit ut ostenderet fidem et rationem non inimicas sed socias esse, et studium naturae viam ad Creatorem eius esse. Operibus Aristotelis nuper recuperatis imbutus, philosophiam, theologiam et observationem mundi naturalis ad harmonicam synthesim adduxit, affirmans gratiam ordinem creatum perficere non destruere.

In Suevia circa annum 1200 natus, Albertus Dominicanos ingressus est, Parisiis et Coloniae docuit et breviter episcopus Ratisbonensis fuit priusquam ad studium et praedicationem rediret. Scripta eius per theologiam, philosophiam, botanicam, zoologiam et astronomiam percurrerunt, et orthodoxiam discipuli sui Thomae post huius mortem defendit. Coloniae anno 1280 obiit, a Pio XI papa anno 1931 canonizatus et Ecclesiae doctor declaratus, deinde patronus scientiarum naturalium nominatus est.

Sanctus Albertus patronus illustris scientificis et eruditis manet et testis contra omnem falsam oppositionem inter fidem et scientiam. Exemplum eius credentes hortatur ut veritatem ubicumque invenitur quaerant, certi omnem veram doctrinam ad Deum reducere.
$desc$),
('saint-margaret-of-scotland', 'Sancta Margarita Scotiae', $desc$
Sancta Margarita Scotiae regina fuit cuius sanctitas personalis vitam regni transformavit, mulier regii sanguinis quae positione sua non ad potentiam sed ad Dei et pauperum ministerium usa est. Uxor Malcolmi III regis, ad aulam Scotiae fidei elegantiam et pietatem attulit quae a palatio usque ad humillimum subditorum pertingebant.

Vita eius ostendit quomodo sanctitas in statu coniugali et publico florere possit, et quomodo caritas et reformatio ex domo fluere possint. Orationi, Scripturis et operibus misericordiae dedita, mores Ecclesiae Scotiae reformavit, orphanos et egenos per se curavit et domum regiam suam scholam virtutis christianae effecit.

Circa annum 1045 nata, nepta regis Angli et in exsilio in Hungaria et Anglia educata, Margarita post conquisitionem Normannicam in Scotiam venit et Malcolmum circa annum 1070 in matrimonium duxit. Synodos ad abusus corrigendos promovit, ecclesias et monasteria fundavit et traiectum pro peregrinis apud locum qui Queensferry factus est instituit. Anno 1093 obiit, paulo post mortem mariti cognitam, et ab Innocentio IV papa anno 1250 canonizata est.

Ut patrona Scotiae honorata, sancta Margarita exemplar manet sanctificati usus divitiarum et influxus. Regibus et familiis pariter ostendit auctoritatem recte in ministerio exerceri, et vitam orationis et caritatis totam nationem duraturo signo notare posse.
$desc$),
('saint-gertrude-virgin', 'Sancta Gertrudis, virgo', $desc$
Sancta Gertrudis Magna monialis benedictina Germanica et mystica fuit, cuius intimae Christi experientiae eam unam ex magnis vocibus spiritualitatis mediaevalis effecerunt. Mulier profundae doctrinae et profundioris orationis, praesertim cum devotione ad Sacrum Cor Iesu coniungitur, cuius scripta inter primos testes numerantur.

Spiritualitas eius in immenso Christi amore in Corde eius revelato et in unione animae cum illo per liturgiam et Scripturas versatur. Visiones eius, in scriptis relatae, tenerum et fidentem amorem exprimunt, et doctrina eius de fiducia in divina misericordia et de infinito valore amoris Christi innumeras animas aluit.

Anno 1256 nata et infans monasterio Helftensi, tunc florenti doctrinae et mysticae centro, tradita, Gertrudis totam vitam intra eius muros egit. Conversio in vicesimis annis eam a studiis profanis ad plenam devotionem convertit, et experientias mysticas suas in «Legato divinae pietatis» consignavit. Circa annum 1302 obiit, et quamvis numquam formaliter canonizata, cultus eius confirmatus est et festum ad universam Ecclesiam extensum, Innocentio XI papa venerationem eius approbante.

Sancta Gertrudis dux manet ad orationem fidentem et ad devotionem erga Cor Christi. Scripta eius lectores ad personalem et amantem cum Domino relationem trahere pergunt, et fiducia eius in divina misericordia consolatio manet omnibus qui se amore Dei indignos sentiunt.
$desc$),
('saint-elizabeth-of-hungary-religious', 'Sancta Elisabeth Hungariae, religiosa', $desc$
Sancta Elisabeth Hungariae principissa et iuvenis vidua fuit cuius radicalis in pauperes liberalitas eam unam ex sanctis Medii Aevi dilectissimis effecit. Commodis dignitatis suae renuntians, tota se aegrorum et egenorum ministerio tradidit et exemplar splendidum caritatis franciscanae in mundo vitae facta est.

Vita eius Evangelium paupertatis et misericordiae proclamat, veritatem amorem Christi ab amore pauperum eius inseparabilem esse. Iuvenis nupta et iuvenis vidua, vitam paenitentiae et ministerii sub inspiratione franciscana amplexa est, divitias suas distribuens, leprosos propriis manibus curans et nosocomium aedificans ubi patientes per se curabat.

Anno 1207 nata, filia regis Hungariae, Elisabeth quattuordecim annorum Ludovico Thuringiae nupsit eique tres liberos peperit priusquam ille in cruciata anno 1227 moreretur. Ab aula pulsa, Tertium Ordinem Sancti Francisci ingressa est et annos reliquos in oratione et cura pauperum apud Marburgum egit, anno 1231 viginti quattuor annorum moriens. Tam celeris fuit fama eius ut Gregorius IX papa eam anno 1235, quattuor tantum annis post, canonizaret.

Patrona Tertii Ordinis franciscani et operum caritatis, sancta Elisabeth exemplar manet iuvenibus, viduis et omnibus qui pauperibus serviunt. Laeta eius privilegii renuntiatio et tenera patientium cura vitas caritatis concretae inspirare pergunt.
$desc$),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', 'Dedicatio Basilicarum Sanctorum Petri et Pauli', $desc$
Haec observantia dedicationem duarum magnarum basilicarum Romanarum super sepulcra apostolorum Petri et Pauli erectarum commemorat, geminarum columnarum super quas, secundum antiquam traditionem Romanam, Ecclesia Urbis fundata est. In unam celebrationem coniungit memoriam Principis apostolorum et Apostoli gentium, quorum martyrium Romam consecravit.

Dedicationem harum ecclesiarum celebrare est apostolicum Ecclesiae fundamentum et duraturam intercessionem eorum qui Christo sanguine testimonium reddiderunt confiteri. Basilicae sacrae sunt non primum propter magnitudinem suam, sed quia reliquias apostolorum continent et loca praedicatione et morte eorum sanctificata signant, peregrinos ex omni natione ad cor fidei christianae trahentes.

Prima Basilica Sancti Petri ab imperatore Constantino super sepulcrum apostoli in colle Vaticano saeculo quarto aedificata est et in praesentem formam magnificam saeculis sexto decimo et septimo decimo reaedificata. Basilica Sancti Pauli extra Muros, item originis Constantinianae super sepulturam Pauli in via Ostiensi, incendio anno 1823 deleta et decenniis sequentibus fideliter reaedificata est. Coniuncta earum commemoratio Romae diu ut signum communis testimonii apostolorum servatur.

Festum fideles invitat ut vinculum suum cum Ecclesia apostolica renovent et pro testimonio Petri et Pauli gratias agant. Occasio est de unitate et universalitate Ecclesiae super apostolos fundatae meditandi, et de peregrinatione fidei quae credentes ad sepulcra martyrum trahit.
$desc$),
('the-presentation-of-the-blessed-virgin-mary', 'Praesentatio Beatae Mariae Virginis', $desc$
Haec memoria traditionem celebrat qua puella Maria a parentibus in Templo Deo oblata est, ministerio eius a primis annis dedicata. Hic agitur minus de eventu historice comprobato quam de profunda veritate de plena Mariae Deo consecratione, toto eius esse voluntati eius ab initio vitae tradito.

Mysterium hic honoratum est plena Mariae ad Deum disponibilitas, dispositio animae penitus consecratae antequam id conscie eligeret. Haec celebratio eam contemplatur ut verum templum in quo Verbum habitaturum erat, et gratiam celebrat quae eam a primo instanti ad habitationem Dei inter homines esse praeparavit.

Haec celebratio ex apocrypho Protoevangelio Iacobi hauritur, quod narrat Annam et Ioachim filiam suam trium annorum ad Templum ad votum implendum adduxisse. In Oriente christiano a saeculo saltem sexto celebrata, in Occidentem exeunte Medio Aevo transiit, nonnumquam interrupta est, atque manet celebratio consecrationis Mariae potius quam rei historice comprobatae.

Festum fideles invitat ut oblationem Mariae imitentur vitam suam Deo sine reservatione consecrantes. Cum oratione pro iis qui vitam consecratam agunt diu coniunctum est et occasio manet proprium donum renovandi, ab infante Templi discentes quid sit toti Domino pertinere.
$desc$),
('saint-cecilia-virgin-and-martyr', 'Sancta Caecilia, virgo et martyr', $desc$
Sancta Caecilia una ex celeberrimis martyribus Romae primaevae est, virgo cuius pietas et fortitudo nomen eius per saecula resonare fecerunt. In antiquo canone Romano Missae inter martyres Urbis honorata, praesertim ut patrona musicae sacrae diligitur, quae, ut dicitur, Deo in corde suo inter ipsos cruciatus cantabat.

Testimonium eius pulchritudinem virginitatis consecratae et robur fidei quae persecutionem superat proclamat. Traditio narrat historiam iuvenis mulieris quae maritum suum et fratrem eius convertit, eos ad baptismum et martyrium duxit, et vitam suam potius quam Christum negaret dedit, laudem Dei usque ad finem cantans et sic emblema cordis totius ad caelum conversi facta.

Veneratio Caeciliae vetustissima est, Romae iam saeculo quarto vel quinto attestata, et ecclesia nomen eius ferens in regione Transtiberina ab antiquitate exstat, ex traditione in loco domus eius. Narrationes passionis eius forma legendaria sunt et vitae eius adiuncta certo stabiliri non possunt, sed vetustas et constantia cultus eius extra dubium sunt. Associatio eius cum musica exeunte Medio Aevo orta est et in magna traditione musicali festi eius effloruit.

Patrona musicorum, cantorum et musicae ecclesiasticae, sancta Caecilia oblationem pulchritudinis Deo inspirare pergit. Festum eius occasio manet musicam sacram ut orationis formam celebrandi et puritatem fortem honorandi quae eam, in memoria Ecclesiae, sponsam toti Christo datam effecit.
$desc$),
('saint-clement-i-pope-and-martyr', 'Sanctus Clemens I, papa et martyr', $desc$
Sanctus Clemens I inter primos successores sancti Petri ut episcopus Romae fuit et inter primos testes exercitationis auctoritatis Romanae in Ecclesia universali stat. Inter Patres apostolicos numeratus, memoratur simul propter martyrium et propter epistulam quae inter pretiosissima documenta primorum saeculorum christianorum figurat.

Momentum eius maxime in Epistula ad Corinthios innititur, communitati divisae ad ordinem et oboedientiam restituendam scripta, quae Ecclesiam Romanam primaevam cum auctoritate in negotiis alterius Ecclesiae intervenientem ostendit. Epistula successionem apostolicam ministrorum testatur et sollicitudinem Ecclesiae Romanae pro unitate et pace totius corporis credentium.

Clemens episcopus Romae circa finem saeculi primi fuit, ex traditione ut tertius vel quartus successor Petri numeratus. Epistula eius tanti aestimata est ut in quibusdam Ecclesiis publice iuxta Scripturas legeretur. Posterior traditio exsilium eius et martyrium submersione cum ancora narrat, et reliquiae ut eius venerata Romam a sanctis Cyrillo et Methodio, quorum opus missionarium memoriae eius coniunctum fuit, allatae sunt.

Sanctus Clemens patronus unitatis et boni ordinis Ecclesiae manet et testis vetustatis primatus Romani. Epistula eius ut testimonium fidei et structurae aetatis apostolicae legi pergit, et memoria eius ad pacem et concordiam intra communitatem christianam quaerendam hortatur.
$desc$),
('saint-columban-abbot', 'Sanctus Columbanus, abbas', $desc$
Sanctus Columbanus monachus Hibernus fuit cuius itinera missionaria fervorem monachismi celtici in cor Europae continentalis portaverunt. Eruditus, abbas et praedicator intrepidus, seriem monasteriorum condidit quae doctrinae et renovationis centra facta sunt et duraturam notam civilizationi christianae Occidentis reliquit.

Vita eius ideale peregrinationis exprimit, voluntarium monachi exsilium ob amorem Christi, et vim reformatricem vitae communis disciplinatae. In propria observantia austerus et audax ad reges et episcopos pariter aggrediendos, regulam monasticam et rigorosam disciplinam paenitentialem diffudit quae fidem in regionibus remissis revivificaverunt.

In Hibernia circa annum 543 natus et in monasterio Bangorensi formatus, Columbanus circa annum 590 cum comitum manu in Galliam profectus est, ubi Luxovium et alias domos condidit. Aperta eius consuetudinum Hibernicarum defensio et reprehensiones aulae Francicae expulsionem eius attulerunt, et per Helvetiam in Italiam septentrionalem iter fecit, magnum monasterium Bobiense condens, ubi anno 615 obiit. Regula eius monastica diu floruit priusquam illi sancti Benedicti cederet.

Ut unus ex patribus monachismi Europaei honoratus, sanctus Columbanus ut patronus Europae unitae ex radicibus christianis conflatae invocatus est. Fortitudo, doctrina et studium missionarium eius inspirare pergunt, et vita eius admonet potentiam virorum ac mulierum consecratorum fidem nationum renovandi.
$desc$),
('saints-andrew-dung-lac-priest-and-companions-martyrs', 'Sancti Andreas Dung-Lac et Socii, martyres', $desc$
Haec memoria martyres Vietnamiae honorat, magnam multitudinem christianorum Vietnamensium et missionariorum qui vitam suam pro fide inter persecutiones saeculorum septimi decimi, octavi decimi et noni decimi dederunt. A presbytero Andrea Dung-Lac repraesentati, comprehendunt episcopos, presbyteros et laicos omnis condicionis qui fidem suam in Christum sanguine obsignaverunt.

Testimonium eorum universalitatem Evangelii proclamat et promptitudinem credentium ordinariorum potius mori quam fidem suam negare. Atrocibus cruciatibus subiecti, in fidelitate Christo et Ecclesiae perseveraverunt, et constantia eorum semen communitatis christianae facta est quae per posteriores tribulationes crescere et perdurare perrexit.

Persecutiones in Vietnamia multa milia vitarum per tria fere saecula abstulerunt, dum successivi principes fidem christianam a missionariis allatam et a populo amplexam supprimere conabantur. Inter martyres fuit Andreas Dung-Lac, presbyter indigena anno 1839 decollatus. Centum decem et septem ex his martyribus, ex multis decenniis persecutionis desumpti, a Ioanne Paulo II papa anno 1988 simul canonizati sunt, et festum eorum commune die vicesima quarta Novembris statutum est.

Martyres Vietnamiae inspiratio sunt Ecclesiae quae omni aetate persecutionem novit, et patroni populo Vietnamensi per orbem disperso. Memoria eorum fideles ad constantiam in tribulatione hortatur et universae Ecclesiae pretium admonet solutum, et adhuc hodie solvendum, pro fidelitate Evangelio.
$desc$),
('saint-catherine-of-alexandria-virgin-and-martyr', 'Sancta Catharina Alexandrina, virgo et martyr', $desc$
Sancta Catharina Alexandrina una ex celeberrimis virginibus martyribus antiquitatis christianae est, iuvenis mulier tam propter doctrinam quam propter fortitudinem celebrata. In legenda famosa ut principissa quae philosophos paganos vi argumentorum confudit, una ex sanctis mundi mediaevalis popularissimis et patrona eruditorum facta est.

Historia eius unionem fidei et sapientiae et invictam martyris constantiam exaltat. Traditio narrat historiam puellae praeclarae et nobilis quae fidem christianam coram imperatore defendit, ipsos philosophos ad eam refellendam missos convertit, et supplicium rotae aculeis instructae deinde mortem gladio potius quam Christum desereret pertulit, nomine eius in perpetuum instrumento passionis eius coniuncto.

Cultus Catharinae ab alto Medio Aevo floruit, praesertim postquam putatae reliquiae eius in monasterio montis Sinai quod nomen eius fert veneratae sunt. Adiuncta historica vitae eius verificari non possunt et narrationes passionis eius indolis legendariae sunt; tamen vetustas et ingens popularitas venerationis eius locum stabilem in memoria christiana ei pepererunt. Inter Quattuordecim Auxiliatores numerata est et ut una ex vocibus a Ioanna Arcensi auditis honorata.

Patrona philosophorum, studentium et theologorum, sancta Catharina harmoniam intellectus et fidei repraesentare pergit. Legenda eius, quodcumque eius fundamentum historicum, diu credentes hortata est ut veritatem cum fortitudine defenderent et omnem doctrinam in Christi ministerium collocarent.
$desc$),
('saint-andrew-apostle', 'Sanctus Andreas, Apostolus', $desc$
Sanctus Andreas unus ex Duodecim et frater Simonis Petri fuit, in traditione ut «primus vocatus» inter apostolos honoratus. Piscator Galilaeae qui retia sua ad verbum Christi reliquit, locum peculiarem tenet ut is qui primus fratrem suum ad Iesum adduxit atque ita imago perennis vocationis apostolicae ad alios ad Dominum ducendos factus est.

Testimonium eius gratiam vocationis apostolicae et impetum missionarium qui ex occursu Christi fluit proclamat. Messia invento, primus actus Andreae fuit fratrem suum quaerere et ad Dominum ducere, gestus qui eum exemplar evangelizationis facit, et proprium martyrium configurationem eius Magistro quem secutus erat complevit.

Andreas in Evangeliis ad vocationem primorum discipulorum et ad multiplicationem panum apparet, et antiqua traditio eum ad praedicandum in Graecia et in regionibus circa Pontum Euxinum mittit. In cruce formae X, quae emblema eius facta est, crucifixus esse dicitur. Ut fundator sedis postea Constantinopoli associatae veneratus, ut patronus Scotiae, Graeciae et Russiae honoratur, atque memoria eius diversos populos christianos cum apostolicis Ecclesiae initiis diu coniunxit.

Ut primus qui Christum secutus est et primus qui alium ad eum adduxit, sanctus Andreas fideles vocare pergit ut sine mora respondeant et inventionem Salvatoris cum aliis communicent. Testimonium eius fidelitatem personalem discipuli cum impetu missionario coniungit, ostendens occursum cum Christo naturaliter in invitationem, amicitiam et proclamationem aperiri.
$desc$)
) AS x(slug, name, description)
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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('all-saints', $desc$
In the Roman General Calendar, this observance is kept on November 1 as a solemnity with white vestments. It is one of the principal fixed celebrations of the sanctoral cycle and is observed with first vespers, the Gloria, and the Creed.
$desc$),
('the-commemoration-of-all-the-faithful-departed', $desc$
In the Roman General Calendar, this observance is kept on November 2 as a solemnity with purple vestments. Its modern Roman celebration is marked by intensified intercession for the dead, and priests may celebrate three Masses according to the discipline attached to this day.
$desc$),
('saint-martin-de-porres-religious', $desc$
In the Roman General Calendar, this observance is kept on November 3 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-charles-borromeo-bishop', $desc$
In the Roman General Calendar, this observance is kept on November 4 as an obligatory memorial with white vestments. The calendar assigns it a stable place in the universal sanctoral cycle.
$desc$),
('the-dedication-of-the-lateran-basilica', $desc$
In the Roman General Calendar, this observance is kept on November 9 as a feast with white vestments. The current Roman calendar extends the dedication of the cathedral of the Bishop of Rome to the whole Roman Rite as a sign of ecclesial communion.
$desc$),
('saint-leo-the-great-pope-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this observance is kept on November 10 as an obligatory memorial with white vestments. The calendar assigns it a stable place in the universal sanctoral cycle.
$desc$),
('saint-martin-of-tours-bishop', $desc$
In the Roman General Calendar, this observance is kept on November 11 as an obligatory memorial with white vestments. The calendar assigns it a stable place in the universal sanctoral cycle.
$desc$),
('saint-josaphat-bishop-and-martyr', $desc$
In the Roman General Calendar, this observance is kept on November 12 as an obligatory memorial with red vestments. The calendar assigns it a stable place in the universal sanctoral cycle.
$desc$),
('saint-albert-the-great-bishop-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this observance is kept on November 15 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-margaret-of-scotland', $desc$
In the Roman General Calendar, this observance is kept on November 16 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-gertrude-virgin', $desc$
In the Roman General Calendar, this observance is kept on November 16 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-elizabeth-of-hungary-religious', $desc$
In the Roman General Calendar, this observance is kept on November 17 as an obligatory memorial with white vestments. The calendar assigns it a stable place in the universal sanctoral cycle.
$desc$),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', $desc$
In the Roman General Calendar, this observance is kept on November 18 as an optional memorial with white vestments. In the present calendar it remains a specifically Roman commemoration preserved within the universal sanctoral cycle.
$desc$),
('the-presentation-of-the-blessed-virgin-mary', $desc$
In the Roman General Calendar, this observance is kept on November 21 as an obligatory memorial with white vestments. The present Roman calendar preserves it as a Marian celebration of offering and dedication rather than as a commemoration of a documented historical event.
$desc$),
('saint-cecilia-virgin-and-martyr', $desc$
In the Roman General Calendar, this observance is kept on November 22 as an obligatory memorial with red vestments. The calendar assigns it a stable place in the universal sanctoral cycle.
$desc$),
('saint-clement-i-pope-and-martyr', $desc$
In the Roman General Calendar, this observance is kept on November 23 as an optional memorial with red vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saint-columban-abbot', $desc$
In the Roman General Calendar, this observance is kept on November 23 as an optional memorial with white vestments. The calendar leaves its celebration to pastoral choice within the sanctoral cycle.
$desc$),
('saints-andrew-dung-lac-priest-and-companions-martyrs', $desc$
In the Roman General Calendar, this observance is kept on November 24 as an obligatory memorial with red vestments. The calendar assigns it a stable place in the universal sanctoral cycle.
$desc$),
('saint-catherine-of-alexandria-virgin-and-martyr', $desc$
In the Roman General Calendar, this observance is kept on November 25 as an optional memorial with red vestments. Its optional status in the modern Roman calendar acknowledges the legendary character of the ancient acts while continuing to honor Catherine's enduring place in Christian devotion.
$desc$),
('saint-andrew-apostle', $desc$
In the Roman General Calendar, this observance is kept on November 30 as a feast with white vestments. In the present calendar it regularly falls near the opening of Advent and gives the close of November a distinctly apostolic character.
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
('all-saints', $desc$
Dans le calendrier romain général, cette célébration est observée le 1er novembre comme solennité avec des ornements blancs. Elle compte parmi les principales célébrations fixes du cycle sanctoral et se célèbre avec les premières vêpres, le Gloria et le Credo.
$desc$),
('the-commemoration-of-all-the-faithful-departed', $desc$
Dans le calendrier romain général, cette célébration est observée le 2 novembre comme solennité avec des ornements violets. Sa forme romaine actuelle se caractérise par une intercession intensifiée pour les défunts, et les prêtres peuvent célébrer trois messes selon la discipline propre à ce jour.
$desc$),
('saint-martin-de-porres-religious', $desc$
Dans le calendrier romain général, cette célébration est observée le 3 novembre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-charles-borromeo-bishop', $desc$
Dans le calendrier romain général, cette célébration est observée le 4 novembre comme une mémoire obligatoire avec des ornements blancs. Le calendrier lui assigne une place stable dans le cycle sanctoral universel.
$desc$),
('the-dedication-of-the-lateran-basilica', $desc$
Dans le calendrier romain général, cette célébration est observée le 9 novembre comme fête avec des ornements blancs. Le calendrier romain actuel étend à tout le rite romain la dédicace de la cathédrale de l'évêque de Rome comme signe de communion ecclésiale.
$desc$),
('saint-leo-the-great-pope-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration est observée le 10 novembre comme une mémoire obligatoire avec des ornements blancs. Le calendrier lui assigne une place stable dans le cycle sanctoral universel.
$desc$),
('saint-martin-of-tours-bishop', $desc$
Dans le calendrier romain général, cette célébration est observée le 11 novembre comme une mémoire obligatoire avec des ornements blancs. Le calendrier lui assigne une place stable dans le cycle sanctoral universel.
$desc$),
('saint-josaphat-bishop-and-martyr', $desc$
Dans le calendrier romain général, cette célébration est observée le 12 novembre comme une mémoire obligatoire avec des ornements rouges. Le calendrier lui assigne une place stable dans le cycle sanctoral universel.
$desc$),
('saint-albert-the-great-bishop-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration est observée le 15 novembre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-margaret-of-scotland', $desc$
Dans le calendrier romain général, cette célébration est observée le 16 novembre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-gertrude-virgin', $desc$
Dans le calendrier romain général, cette célébration est observée le 16 novembre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-elizabeth-of-hungary-religious', $desc$
Dans le calendrier romain général, cette célébration est observée le 17 novembre comme une mémoire obligatoire avec des ornements blancs. Le calendrier lui assigne une place stable dans le cycle sanctoral universel.
$desc$),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', $desc$
Dans le calendrier romain général, cette célébration est observée le 18 novembre comme mémoire facultative avec des ornements blancs. Dans le calendrier actuel, elle demeure une commémoration spécifiquement romaine conservée à l'intérieur du cycle sanctoral universel.
$desc$),
('the-presentation-of-the-blessed-virgin-mary', $desc$
Dans le calendrier romain général, cette célébration est observée le 21 novembre comme mémoire obligatoire avec des ornements blancs. Le calendrier romain actuel la garde comme célébration mariale d'offrande et de consécration plutôt que comme commémoration d'un fait historiquement attesté.
$desc$),
('saint-cecilia-virgin-and-martyr', $desc$
Dans le calendrier romain général, cette célébration est observée le 22 novembre comme une mémoire obligatoire avec des ornements rouges. Le calendrier lui assigne une place stable dans le cycle sanctoral universel.
$desc$),
('saint-clement-i-pope-and-martyr', $desc$
Dans le calendrier romain général, cette célébration est observée le 23 novembre comme une mémoire facultative avec des ornements rouges. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saint-columban-abbot', $desc$
Dans le calendrier romain général, cette célébration est observée le 23 novembre comme une mémoire facultative avec des ornements blancs. Le calendrier en laisse la célébration au choix pastoral dans le cycle sanctoral.
$desc$),
('saints-andrew-dung-lac-priest-and-companions-martyrs', $desc$
Dans le calendrier romain général, cette célébration est observée le 24 novembre comme une mémoire obligatoire avec des ornements rouges. Le calendrier lui assigne une place stable dans le cycle sanctoral universel.
$desc$),
('saint-catherine-of-alexandria-virgin-and-martyr', $desc$
Dans le calendrier romain général, cette célébration est observée le 25 novembre comme mémoire facultative avec des ornements rouges. Son caractère facultatif dans le calendrier romain actuel reconnaît la teneur légendaire des actes anciens tout en maintenant la place durable de Catherine dans la dévotion chrétienne.
$desc$),
('saint-andrew-apostle', $desc$
Dans le calendrier romain général, cette célébration est observée le 30 novembre comme fête avec des ornements blancs. Dans le calendrier actuel, elle tombe régulièrement à l'approche de l'Avent et donne à la fin de novembre une tonalité nettement apostolique.
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
('all-saints', $desc$
In Calendario Romano Generali haec celebratio die 1 Novembris ut sollemnitas cum colore albo agitur. Inter praecipuas celebrationes fixas cursus sanctoralis numeratur atque cum I Vesperis, Gloria et Credo celebratur.
$desc$),
('the-commemoration-of-all-the-faithful-departed', $desc$
In Calendario Romano Generali haec celebratio die 2 Novembris ut sollemnitas cum colore violaceo agitur. Forma eius Romana hodierna intensiorem intercessionem pro defunctis exprimit, et sacerdotibus tres Missae celebrandae secundum disciplinam huic diei propriam conceduntur.
$desc$),
('saint-martin-de-porres-religious', $desc$
In Calendario Romano Generali haec celebratio die 3 Novembris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-charles-borromeo-bishop', $desc$
In Calendario Romano Generali haec celebratio die 4 Novembris ut memoria obligatoria cum colore albo agitur. Calendarium ei locum stabilem in universali cursu sanctorali tribuit.
$desc$),
('the-dedication-of-the-lateran-basilica', $desc$
In Calendario Romano Generali haec celebratio die 9 Novembris ut festum cum colore albo agitur. Calendarium Romanum hodiernum dedicationem cathedralis Episcopi Romani ad universum Rituale Romanum extendit ut signum communionis ecclesialis.
$desc$),
('saint-leo-the-great-pope-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 10 Novembris ut memoria obligatoria cum colore albo agitur. Calendarium ei locum stabilem in universali cursu sanctorali tribuit.
$desc$),
('saint-martin-of-tours-bishop', $desc$
In Calendario Romano Generali haec celebratio die 11 Novembris ut memoria obligatoria cum colore albo agitur. Calendarium ei locum stabilem in universali cursu sanctorali tribuit.
$desc$),
('saint-josaphat-bishop-and-martyr', $desc$
In Calendario Romano Generali haec celebratio die 12 Novembris ut memoria obligatoria cum colore rubro agitur. Calendarium ei locum stabilem in universali cursu sanctorali tribuit.
$desc$),
('saint-albert-the-great-bishop-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 15 Novembris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-margaret-of-scotland', $desc$
In Calendario Romano Generali haec celebratio die 16 Novembris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-gertrude-virgin', $desc$
In Calendario Romano Generali haec celebratio die 16 Novembris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-elizabeth-of-hungary-religious', $desc$
In Calendario Romano Generali haec celebratio die 17 Novembris ut memoria obligatoria cum colore albo agitur. Calendarium ei locum stabilem in universali cursu sanctorali tribuit.
$desc$),
('the-dedication-of-the-basilicas-of-saints-peter-and-paul-apostles', $desc$
In Calendario Romano Generali haec celebratio die 18 Novembris ut memoria ad libitum cum colore albo agitur. In praesenti calendario manet commemoratio proprie Romana intra universalem cursum sanctoralem servata.
$desc$),
('the-presentation-of-the-blessed-virgin-mary', $desc$
In Calendario Romano Generali haec celebratio die 21 Novembris ut memoria obligatoria cum colore albo agitur. Calendarium Romanum hodiernum eam servat ut celebrationem marialem oblationis et consecrationis potius quam ut commemorationem rei historice comprobatae.
$desc$),
('saint-cecilia-virgin-and-martyr', $desc$
In Calendario Romano Generali haec celebratio die 22 Novembris ut memoria obligatoria cum colore rubro agitur. Calendarium ei locum stabilem in universali cursu sanctorali tribuit.
$desc$),
('saint-clement-i-pope-and-martyr', $desc$
In Calendario Romano Generali haec celebratio die 23 Novembris ut memoria ad libitum cum colore rubro agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saint-columban-abbot', $desc$
In Calendario Romano Generali haec celebratio die 23 Novembris ut memoria ad libitum cum colore albo agitur. Celebratio eius prudenti iudicio pastorali intra cursum sanctoralem relinquitur.
$desc$),
('saints-andrew-dung-lac-priest-and-companions-martyrs', $desc$
In Calendario Romano Generali haec celebratio die 24 Novembris ut memoria obligatoria cum colore rubro agitur. Calendarium ei locum stabilem in universali cursu sanctorali tribuit.
$desc$),
('saint-catherine-of-alexandria-virgin-and-martyr', $desc$
In Calendario Romano Generali haec celebratio die 25 Novembris ut memoria ad libitum cum colore rubro agitur. Eius indoles ad libitum in calendario Romano hodierno rationem habet actorum antiquorum indolis legendariae, dum tamen locum Catharinae diuturnum in pietate christiana servat.
$desc$),
('saint-andrew-apostle', $desc$
In Calendario Romano Generali haec celebratio die 30 Novembris ut festum cum colore albo agitur. In calendario hodierno proxime ad Adventum incidere solet atque finem Novembris apostolica quadam nota distinguit.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

-- =========================================================
-- Roman General Calendar - December (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- Includes movable rule from source list:
--   - Sunday within Octave of Christmas OR 30 Dec: Holy Family (feast)
-- =========================================================

-- FEASTS
