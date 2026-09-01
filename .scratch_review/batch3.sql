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
Among the Twelve chosen personally by Christ, Thomas is remembered above all for a single dramatic scene in the Upper Room, so that his feast honors not merely his apostolic labors but the particular grace of his encounter with the Risen Lord. He is the apostle of honest doubt, the disciple who refused to believe secondhand testimony and demanded to see and touch before he would confess.

Theologically Thomas stands for every believer who struggles toward faith through the trial of doubt. Confronted by the wounds of the crucified and risen Christ, he uttered the Gospel's most complete confession of divinity, "My Lord and my God," and his story proclaims that Christ meets sincere questioning not with rebuke but with patient, tangible mercy, drawing the doubter into the deepest possible act of adoration.

Ancient tradition, supported by early Christian writers and by the enduring witness of the Saint Thomas Christians of India who trace their origins to his preaching, holds that Thomas carried the Gospel eastward as far as India, where he was martyred; his relics have been venerated at Mylapore, at Edessa, and later at Ortona in Italy. These traditions helped spread his cult across both Eastern and Western Christianity.

Saint Thomas invites believers who have not seen and yet are called to believe to bring their honest questions to Christ rather than suppress them, trusting that he draws near to the sincere seeker and leads every doubt toward the fullness of adoring faith.
$desc$),
('saint-elizabeth-of-portugal', 'Saint Elizabeth of Portugal', $desc$
Elizabeth of Portugal is honored as a queen whose royal station became the instrument rather than the obstacle of her holiness, a woman who bore the burdens of court, marriage, and public life without letting them dim her charity. She is remembered especially as a peacemaker who repeatedly stepped between warring men to reconcile them.

Her sanctity celebrates the vocation to holiness within marriage, motherhood, and public responsibility, and above all the grace of peacemaking amid violence and family discord. Her life proclaims that political power, so often an occasion of pride, can be placed wholly at the service of reconciliation and the poor, and that widowhood need not close a life of service but can open it more fully to prayer and simplicity.

Born a princess of Aragon and named for her great-aunt Saint Elizabeth of Hungary, whose charity she consciously imitated, she was given in marriage to King Denis of Portugal, endured his infidelities with patience, and brokered peace between him and their rebellious son as well as between Portugal and Castile. Widowed, she became a Franciscan tertiary and retired near a Poor Clare monastery she had founded, dying in 1336; she was canonized in 1625.

Her example speaks to those who exercise authority or bear the wounds of family conflict, urging them to seek reconciliation patiently and to let no worldly position keep them from a life of prayer, humility, and care for the poor.
$desc$),
('saint-anthony-zaccaria-priest', 'Saint Anthony Zaccaria, Priest', $desc$
Anthony Zaccaria was a physician who turned to the priesthood, and he is remembered as one of the vigorous reformers whose zeal helped rekindle the spiritual life of sixteenth-century Italy on the eve of the Catholic Reformation. His short career shows a man consumed by the desire to renew a lukewarm Church.

His charism celebrates the reforming preacher and founder, the priest who labors to revive fervor through frequent recourse to the sacraments and bold proclamation of Christ crucified. He championed frequent, even daily, Communion at a time when this was rare, promoted the devotion of the Forty Hours, and anticipated by centuries the Eucharistic and catechetical emphases the Church would later make her own.

Trained first in medicine at Padua, Anthony founded the Clerics Regular of Saint Paul, popularly called the Barnabites after their Milanese church of Saint Barnabas, together with the Angelic Sisters and an association for lay people. Worn out by his labors, he died young in 1539 and was canonized in 1897, his brief life a proof that neither youth nor a late vocation limits the fruitfulness of grace wholly given to souls.

His witness urges the faithful to draw more frequently and fervently on the Eucharist as the true source of renewal, and to proclaim Christ crucified with the same directness and courage that marked his own short but fruitful ministry.
$desc$),
('saint-maria-goretti-virgin-and-martyr', 'Saint Maria Goretti, Virgin and Martyr', $desc$
Maria Goretti is one of the youngest saints of the modern era, a martyr not for openly confessing the faith but for defending purity to the point of death, and for the forgiveness she extended to the man who killed her. Her brief life has made her a powerful sign of innocence and mercy.

Her martyrdom celebrates the dignity of chastity and the heroism possible even in a child, showing that fidelity to the moral demands of the Gospel can itself be a cause worth dying for. Her dying forgiveness of her attacker proclaims with singular clarity the Gospel's command to love one's enemies, revealing mercy as the crown of authentic holiness rather than an afterthought to it.

A poor farm girl of the Pontine marshes, Maria was attacked in 1902 at the age of eleven by a young neighbor, Alessandro Serenelli, and fatally stabbed as she resisted him, forgiving him explicitly before she died. Serenelli, converted years later partly through a dream in which Maria offered him lilies, lived to witness her canonization in 1950, a ceremony remarkable for the vast crowd that included the saint's own mother.

Her witness speaks especially to the young, commending chastity as a genuine and costly form of holiness, and it assures every wounded heart that forgiveness, however difficult, remains possible through the same grace that sustained Maria to her last breath.
$desc$),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', 'Saint Augustine Zhao Rong, Priest, and Companions, Martyrs', $desc$
This celebration gathers into a single memory the many martyrs of China, bishops, priests, religious, and lay faithful of every age, who over several centuries sealed their fidelity to Christ with their blood. It honors not one saint but a great company drawn from the whole life of the Church in that land.

Their martyrdom celebrates the Gospel's genuine taking root in Chinese soil, borne by native Christians and by the missionaries who served alongside them, and it affirms that the faith was truly their own and not merely an import sustained by foreigners. It proclaims too that holiness flowers as readily among catechists, mothers, and children as among clergy and religious, and that martyrdom endures into the modern age.

The one hundred and twenty commemorated together died between the mid-seventeenth century and the Boxer Uprising of 1900, which claimed the greatest number; among them was Augustine Zhao Rong, once a soldier who had guarded the imprisoned Bishop Gabriel-Taurin Dufresse before embracing the faith he had witnessed and dying for it in turn. Pope John Paul II canonized this vast company together in Rome during the Jubilee Year 2000, giving renewed visibility to the long history of martyrdom in China.

Their witness calls the faithful to pray for the Church in China and for persecuted Christians everywhere, and to recognize that fidelity to Christ unto death remains as real and costly a possibility now as in every age before.
$desc$),
('saint-benedict-abbot', 'Saint Benedict, Abbot', $desc$
Benedict of Nursia is honored as the father of Western monasticism, whose Rule shaped not only the cloister but, through it, the whole civilization of Europe. He is remembered less for dramatic deeds than for the quiet, enduring wisdom of a way of life ordered entirely toward the search for God.

His holiness celebrates the resolve to seek God above all else, ordering prayer, work, and common life around that single pursuit summed up in the motto ora et labora. His Rule proclaims a balanced, humane, and profoundly Christ-centered path to sanctity, showing that stability, obedience, and ordered daily fidelity are themselves genuine ways of following Christ, accessible far beyond the monastery walls.

Born around 480 at Norcia, Benedict withdrew from a dissolute Rome to a life of prayer, gathered disciples, and eventually founded the monastery of Monte Cassino, where he composed his celebrated Rule and died around 547; Pope Paul VI declared him Patron of Europe in 1964 in recognition of the monastic order's civilizing role after the fall of the Roman Empire. Devotion to him spread widely through both monastic and lay Christianity.

His witness invites the faithful, whatever their state in life, to seek a right ordering of prayer and work, and to rediscover in stability, silence, and simple fidelity a path of holiness open to all.
$desc$),
('saint-henry', 'Saint Henry', $desc$
Henry is honored as an emperor remembered less for the power he wielded than for the piety with which he wielded it, a ruler who governed as a servant of the Church rather than merely as a master of men. His sanctity is a standing rebuke to the notion that high office and holiness cannot coexist.

His life celebrates the vocation to holiness within civil authority and within marriage, proclaiming that governance animated by faith can become an instrument of the Church's mission, and that a marriage, even a childless one, can be lived as a shared path of sanctification. In him worldly responsibility and personal devotion were not rivals but a single offering.

Henry II, Holy Roman Emperor in the early eleventh century, was renowned for his generous endowment of churches and monasteries and above all for founding the diocese of Bamberg, which he enriched and cherished; tradition holds that he and his wife Cunigunde consecrated their union wholly to God. He died in 1024 and was canonized in 1146, the only German king to be numbered among the saints.

His witness invites those who hold authority in any sphere to regard their responsibilities as a real field for holiness, and it invites married couples to recognize that their union, however it is lived, can be offered entirely to God.
$desc$),
('saint-camillus-de-lellis-priest', 'Saint Camillus de Lellis, Priest', $desc$
Camillus de Lellis was a former soldier and inveterate gambler whose conversion gave the Church one of her great pioneers of Christian care for the sick. His dramatic reversal, from a life ruined by dissipation to one spent at the bedside of the dying, is itself part of what his memory proclaims.

His charism celebrates the grace of seeing and serving Christ himself in the person of the suffering, and it insists that compassionate, competent, and loving care for the body is a genuine work of the Gospel, not a distraction from spiritual concerns. His life shows that no depth of ruin places a soul beyond the reach of grace, nor beyond becoming, in turn, an instrument of grace for others.

After years as a mercenary undone by gambling, Camillus experienced a profound conversion, was ordained a priest, and founded the Ministers of the Sick, known as the Camillians, whose members wear a red cross and vow to serve the sick even at the risk of their own lives. A reformer of hospital practice and nursing, he died in 1614, was canonized in 1746, and was later named patron of the sick, of nurses, and of hospitals.

His witness speaks to all who care for the sick, whether professionally or within their own families, calling them to see in that care a true and demanding discipleship, and to ask his intercession for patience and tenderness before every instance of human suffering.
$desc$),
('saint-bonaventure-bishop-and-doctor-of-the-church', 'Saint Bonaventure, Bishop and Doctor of the Church', $desc$
Bonaventure was a Franciscan friar who rose to lead his order and to rank among the greatest theologians of the medieval Church. He is remembered as the "Seraphic Doctor," a title that captures the union of penetrating intellect and ardent mystical love that runs through all his work.

His theology celebrates the harmony of mind and heart, the conviction that learning about God must never be severed from the love of God. His writings proclaim that true theology is inseparable from prayer and contemplation, and that the rigorous pursuit of truth finds its proper completion only in the soul's ascent toward union with the God it studies.

Bonaventure entered the Friars Minor, studied and taught in Paris beside his friend Thomas Aquinas, and was elected Minister General, guiding the order through a period of bitter internal division while continuing to write on theology and the spiritual life; created a cardinal bishop, he died in 1274 while attending the Second Council of Lyon, and Pope Sixtus V declared him a Doctor of the Church in 1588. His life bridged the university lecture hall and the government of a great religious family.

His witness reminds the faithful that authentic learning about God is meant to deepen the love of God, and it commends the pursuit of a wisdom that, like his own, unites careful thought with humble and burning prayer.
$desc$),
('our-lady-of-mount-carmel', 'Our Lady of Mount Carmel', $desc$
This celebration honors the Blessed Virgin Mary under the title given her by the Carmelite Order, whose origins lie among hermits who settled on Mount Carmel in the Holy Land. It is at once a feast of Mary and a feast of the contemplative spirit that the mountain and its prophet Elijah have long symbolized.

The devotion celebrates Mary as model and protectress of the contemplative life and of all who seek her total configuration to Christ, and it commemorates the Brown Scapular, said to have been given by Our Lady to Saint Simon Stock as a sign of her maternal protection and a pledge of perseverance for those who wear it in faith and live accordingly. It proclaims Mary's continual closeness to those striving for holiness through prayer, simplicity, and trust in her intercession.

The hermits who gathered on Carmel from the twelfth century regarded Mary as their patroness from the Order's earliest days, drawing on the mountain's biblical associations with Elijah, and the Scapular devotion, attested from the fourteenth century, spread widely through Carmelite preaching to become one of the most beloved Marian sacramentals in the Church. The title and its observance passed from the Order into the wider life of the Church over the following centuries.

This commemoration invites the faithful to entrust themselves to Mary's maternal protection amid the trials of daily life, and to let the Scapular, where it is worn, be not a superstitious charm but a sincere sign of consecration to her and to her Son.
$desc$),
('saint-apollinaris-bishop-and-martyr', 'Saint Apollinaris, Bishop and Martyr', $desc$
Apollinaris is venerated as the first bishop of Ravenna and a martyr of the Church's earliest centuries, a figure whose historical details have largely faded but whose fidelity unto death has never been forgotten. His memory anchors the ancient Church of Ravenna to the apostolic age.

His witness celebrates the apostolic foundations of the local churches of Italy and the courage of those first pastors who planted and defended the faith at the cost of their lives. It proclaims the unbroken continuity between the apostolic preaching of the first generation and the flourishing communities that grew from it, even where little survives of a martyr's story beyond the bare fact of his constancy.

Tradition holds that Apollinaris was a disciple of Saint Peter, sent by him to Ravenna, where he governed as bishop, suffered repeated persecution and exile for his preaching, and was at last martyred, giving the city a foundation story that bound it directly to the see of Rome; his name is preserved in the great basilicas of Ravenna that bear it. His cult long flourished in Ravenna and beyond, even as later generations stripped away legendary accretions to preserve the core memory of an apostolic bishop and martyr.

His witness invites the faithful to give thanks for the founders of their own local churches, often half-remembered, and to recognize that every Christian community rests upon a foundation of faith paid for by those who went before.
$desc$),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 'Saint Lawrence of Brindisi, Priest and Doctor of the Church', $desc$
Lawrence of Brindisi was a Capuchin friar whose extraordinary gifts of language and preaching served both the pulpit and the courts and battlefields of Europe. He is a striking example of contemplative religious life joined to vigorous engagement with the wider world.

His life celebrates the vocation of the preacher-diplomat, whose eloquence was matched by skill in reconciling princes and defending Christendom, showing that intellectual and linguistic gifts, wholly consecrated to God, can serve the Gospel in the most public arenas. His example proclaims that the cloister and the councils of nations are not opposed but can be held together in a single fruitful calling.

Lawrence mastered numerous languages, including Hebrew, which he used in preaching and in missions to Jews and Protestants alike, and he served as Minister General of the Capuchins; famously he rode at the head of a Christian army against the Ottoman advance in Hungary, armed only with a crucifix. He died in 1619 while on a diplomatic mission, and Pope John XXIII declared him a Doctor of the Church in 1959, granting him the title "Apostolic Doctor" for his tireless labors.

His witness speaks to all who are gifted with learning or eloquence, urging them to place such talents entirely at the service of the Gospel, confident that no field of human endeavor lies beyond the reach of a truly consecrated life.
$desc$),
('saint-mary-magdalene', 'Saint Mary Magdalene', $desc$
Mary Magdalene holds a singular place among the disciples as the first witness of the Risen Christ and the first sent to announce his Resurrection to the apostles. For this the ancient tradition of the Church gave her the title "Apostle to the Apostles," and her celebration honors that unrepeatable privilege.

Her feast celebrates the encounter in the garden, where the Risen Lord called her by name and sent her to proclaim what she had seen, so that the Gospel of the Resurrection was entrusted first to a faithful witness of love. Her story proclaims that the Resurrection is announced through personal encounter before it is formulated into doctrine, and that fidelity in remaining at the cross and the tomb is rewarded with the deepest intimacy with the Lord.

Long venerated as a disciple who followed Jesus, ministered to him from her own means, and stood faithful through the crucifixion and burial, Mary Magdalene has been honored in Christian tradition as a privileged witness of the Resurrection. The reform of the liturgical books clarified her identity apart from other Gospel women with whom popular tradition had sometimes confused her.

Her witness speaks to all engaged in ministry and apostolate, and especially to women, holding her up as the model of the first evangelist of the Resurrection and inviting each believer to seek the same personal encounter with the Risen Christ that turned her grief into joyful proclamation.
$desc$),
('saint-bridget-religious', 'Saint Bridget, Religious', $desc$
Bridget of Sweden is honored as a noblewoman whose long life passed through marriage, motherhood, widowhood, and the founding of a religious order, holiness maturing through each successive season. She is remembered as one of the great mystics and reformers of the medieval North.

Her sanctity celebrates the holiness accessible within every state of life, and in particular the gift of mystical revelation placed at the service of the whole Church, for her visions of the Passion nourished devotion far beyond her own community. Her life proclaims that profound contemplative graces can flower in a soul first formed by married love and household duty, and that widowhood can open the door to a still more radical consecration.

Bridget bore eight children, among them Saint Catherine of Sweden, and after her husband's death gave herself to prayer, pilgrimage, and the recording of her revelations, eventually founding the Bridgettine Order and settling in Rome, where she labored for the return of the popes from Avignon and died in 1373; canonized in 1391, she was named a co-patroness of Europe by Pope John Paul II in 1999, alongside Saint Catherine of Siena and Saint Teresa Benedicta of the Cross. Her influence reached from the domestic hearth to the affairs of Christendom.

Her witness speaks to all who discern holiness across the changing seasons of family life, assuring them that God can draw a single, coherent vocation to sanctity through marriage, motherhood, widowhood, and religious consecration in turn.
$desc$),
('saint-sharbel-makhluf-priest', 'Saint Sharbel Makhluf, Priest', $desc$
Sharbel Makhluf was a Lebanese Maronite monk whose hidden life of prayer became, after his death, a source of extraordinary favors for pilgrims of every faith. He is a modern witness to the enduring power of a life lived entirely out of the world's sight.

His holiness celebrates the eremitic and monastic vocation, the conviction that a life poured out in silence, penance, and unceasing prayer remains fully fruitful for the whole Church even when it yields no visible activity. His example proclaims that sanctity of the most radical kind can be lived in deliberate obscurity, chosen for the sake of closer union with God.

Born Youssef Antoun Makhlouf, he entered a Maronite monastery, was ordained a priest, and after some years withdrew to the hermitage of Saints Peter and Paul near Annaya, where he lived an austere and largely silent life of prayer and manual labor until his death on Christmas Eve of 1898; extraordinary phenomena and healings reported at his tomb spread devotion from Lebanon across the world, and he was canonized in 1977. His fame, unsought in life, came entirely after his death.

His witness calls the faithful, amid the noise and haste of modern life, to prize silence, penance, and hidden prayer as genuine and powerful ways of drawing near to God and interceding for others.
$desc$),
('saint-james-apostle', 'Saint James, Apostle', $desc$
James, called "the Greater" to distinguish him from the other apostle of the same name, was the brother of Saint John the Evangelist and one of the inner circle whom Jesus drew closest to himself. His celebration honors a witness marked by both privileged nearness to Christ and the earliest of apostolic martyrdoms.

His feast celebrates his presence at the Transfiguration and in Gethsemane and, above all, his distinction as the first of the Twelve to seal his witness with his blood. His death proclaims the cost of discipleship that Christ himself had foretold when he asked James and John whether they could drink the cup he would drink, and it stands as the Gospel's earliest fulfillment, among the apostles, of that costly promise.

James was beheaded by order of King Herod Agrippa I around the year 44, as recorded in the Acts of the Apostles; a strong tradition, especially cherished in Spain, holds that his body was later carried to Compostela, where the shrine of Santiago de Compostela grew into one of Christendom's greatest pilgrimage destinations and James became the nation's patron. The routes of the Camino that converge upon his tomb have drawn pilgrims for more than a thousand years.

His witness speaks to the countless modern pilgrims who still walk the Camino in his honor, reminding them that following Christ closely may mean drinking his cup, and inviting them to ask for the courage that carried James to the first apostolic martyrdom.
$desc$),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 'Saints Joachim and Anne, Parents of the Blessed Virgin Mary', $desc$
Joachim and Anne are honored as the parents of the Blessed Virgin Mary and thus, according to the flesh, the grandparents of Jesus Christ. Their joint commemoration draws attention to the family from which the Mother of God came, and to the generations of quiet faith that prepared for the Incarnation.

Their memory celebrates the hidden holiness of family life and the fidelity of those who, through ordinary domestic virtue, formed the human setting into which Mary was born and raised. Honored as models of grandparents and of the whole extended family, they proclaim that God's saving plan unfolds not only through great public deeds but through generations of humble faithfulness within the home.

Their names and story come not from the canonical Scriptures, which are silent about Mary's parents, but from the ancient Protoevangelium of James, which preserved a devotion attested from the earliest centuries and especially strong in the Christian East, where their cultus long predates its Western flowering. For centuries the West cultivated devotions to Saint Anne and Saint Joachim in varying forms, while the Christian East preserved an especially ancient and lively cult of both.

Their memorial invites grandparents and elders to see their own quiet, often unseen influence as a real share in God's work of handing on the faith, and it invites every family to entrust its generations, past and present, to their intercession.
$desc$),
('saints-martha-mary-and-lazarus', 'Saints Martha, Mary and Lazarus', $desc$
This celebration honors together the three siblings of Bethany, Martha, Mary, and Lazarus, whose home Jesus visited often and whose friendship the Gospels present as a model of intimacy with Christ. It is a feast of a household rather than of a single saint, honoring a family whose door was always open to the Lord.

Their memory celebrates hospitality, deep personal faith, and the hope of resurrection, each embodied in one of the three: Martha's generous service and her confession, "I believe that you are the Christ, the Son of God"; Mary's contemplative attentiveness at the Lord's feet; and Lazarus, called forth from the tomb as a foretaste of Christ's own victory over death. Together they proclaim that friendship with Jesus, lived through service, faith, and hope even before death, is a genuine path of discipleship.

The Gospel of John records the family's close bond with Jesus, his tears at the tomb, and his raising of Lazarus after four days, the sign that most directly precipitated the plot against his life. Western devotion long gave special prominence to Martha, while later reflection highlighted the household of Bethany as a whole, an enduring image of family life placed at the service of Christ.

Their witness invites the faithful to welcome Christ into their own homes through hospitality and service, to sit attentively at his feet in prayer, and to trust him, even in grief, as the one who calls the dead back to life.
$desc$),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 'Saint Peter Chrysologus, Bishop and Doctor of the Church', $desc$
Peter Chrysologus was a fifth-century bishop of Ravenna whose homilies were so vivid and precise that he earned the surname "Chrysologus," the golden-worded. He is remembered as one of the great preachers of the patristic age, honored for the enduring quality of his sermons.

His ministry celebrates the art of preaching at its finest, brief, luminous, and steeped in Scripture, able to open the mysteries of the faith to ordinary people in words they could grasp and keep. His surviving sermons proclaim that the pulpit, placed at the service of clarity and charity rather than display, remains one of the Church's most powerful instruments for forming the faith of her people.

Peter governed the Church of Ravenna when it was an imperial capital of considerable weight, and his short, carefully wrought homilies, of which a substantial number survive, reveal a pastor keenly attentive to the concrete needs of his flock; he died around the year 450, and Pope Benedict XIII declared him a Doctor of the Church in 1729, more than a millennium after his death. His writings gave later ages a window into the preaching and piety of the early Church.

His witness calls preachers and teachers of the faith to strive for the same clarity and warmth that marked his sermons, and it invites every believer to return often and attentively to the words of Scripture as the surest source of a faith readily understood and firmly held.
$desc$),
('saint-ignatius-of-loyola-priest', 'Saint Ignatius of Loyola, Priest', $desc$
Ignatius of Loyola was a Basque soldier whose battlefield wound became, in the providence of God, the very injury that opened him to sanctity. From a life of worldly ambition he was turned toward Christ, and he founded one of the most influential religious orders in the history of the Church.

His spiritual legacy celebrates the discernment of spirits and the total offering of one's talents and ambitions to the greater glory of God, the aim he made famous in the phrase Ad maiorem Dei gloriam. His teaching proclaims that God can be found and served in all things, and that the ordered examination of one's own thoughts, desires, and consolations is itself a genuine path to knowing and following the divine will.

Wounded at the siege of Pamplona in 1521, Ignatius passed a long convalescence during which his reading turned his ambitions from worldly glory to the following of Christ, leading him to compose the Spiritual Exercises and, with a small band of companions including Saint Francis Xavier, to found the Society of Jesus in 1540. An order that became a great engine of missionary expansion, education, and reform, its founder died in Rome in 1556 and was canonized in 1622.

His witness invites the faithful to seek God actively in every circumstance of ordinary life, and to make their own, whatever their vocation, the Ignatian resolve to place every talent and ambition wholly at the service of God's greater glory.
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
Parmi les Douze choisis personnellement par le Christ, Thomas demeure avant tout dans les mémoires pour une scène décisive au Cénacle, en sorte que sa célébration honore moins ses travaux apostoliques que la grâce singulière de sa rencontre avec le Ressuscité. Il est l'apôtre du doute sincère, le disciple qui refusa de croire sur la parole d'autrui et exigea de voir et de toucher avant de confesser.

Théologiquement, Thomas représente tout croyant qui chemine vers la foi à travers l'épreuve du doute. Placé devant les plaies du Crucifié ressuscité, il prononça la confession la plus complète de toute l'Écriture, « Mon Seigneur et mon Dieu », et son histoire proclame que le Christ répond à une interrogation sincère non par le reproche mais par une miséricorde patiente et tangible, conduisant celui qui doute jusqu'au plus haut acte d'adoration.

Une tradition ancienne, appuyée par les écrivains des premiers siècles et par le témoignage durable des chrétiens de saint Thomas en Inde qui font remonter leur origine à sa prédication, rapporte qu'il porta l'Évangile jusqu'en Inde, où il subit le martyre ; ses reliques furent vénérées à Mylapore, à Édesse, puis à Ortona, en Italie. Ces traditions contribuèrent à répandre son culte dans l'Orient comme dans l'Occident chrétiens.

Saint Thomas invite les croyants qui, sans avoir vu, sont appelés à croire, à porter leurs questions sincères devant le Christ plutôt qu'à les étouffer, confiants qu'il s'approche de celui qui cherche loyalement et conduit tout doute vers la plénitude d'une foi adorante.
$desc$),
('saint-elizabeth-of-portugal', 'Sainte Élisabeth du Portugal', $desc$
Élisabeth du Portugal est honorée comme une reine dont le rang royal devint l'instrument, et non l'obstacle, de sa sainteté, une femme qui porta les charges de la cour, du mariage et de la vie publique sans jamais laisser s'éteindre sa charité. On la vénère surtout comme une artisane de paix, qui sut à maintes reprises s'interposer entre des hommes en guerre pour les réconcilier.

Sa sainteté célèbre la vocation à la sainteté dans le mariage, la maternité et la responsabilité publique, et par-dessus tout la grâce de la réconciliation au milieu de la violence et des discordes familiales. Sa vie proclame que le pouvoir politique, si souvent occasion d'orgueil, peut être mis tout entier au service de la paix et des pauvres, et que le veuvage, loin de fermer une vie de service, peut l'ouvrir plus pleinement à la prière et à la simplicité.

Née princesse d'Aragon et nommée en souvenir de sa grand-tante sainte Élisabeth de Hongrie, dont elle imita sciemment la charité, elle fut donnée en mariage au roi Denis de Portugal, supporta ses infidélités avec patience et sut ramener la paix entre lui et leur fils révolté, comme entre le Portugal et la Castille. Devenue veuve, elle prit l'habit du tiers-ordre franciscain et se retira près d'un monastère de Clarisses qu'elle avait fondé, mourant en 1336 ; elle fut canonisée en 1625.

Son exemple parle à ceux qui exercent l'autorité ou portent les blessures des conflits familiaux, les invitant à rechercher patiemment la réconciliation et à ne laisser aucune position mondaine les détourner d'une vie de prière, d'humilité et de service des pauvres.
$desc$),
('saint-anthony-zaccaria-priest', 'Saint Antoine-Marie Zaccaria, prêtre', $desc$
Antoine-Marie Zaccaria fut un médecin devenu prêtre, et on le tient pour l'un de ces réformateurs vigoureux dont le zèle contribua à raviver la vie spirituelle de l'Italie du seizième siècle, à la veille de la réforme catholique. Sa courte carrière révèle un homme consumé par le désir de renouveler une Église tiède.

Son charisme célèbre le prédicateur réformateur et le fondateur, ce prêtre qui travaille à raviver la ferveur par le recours fréquent aux sacrements et l'annonce hardie du Christ crucifié. Il promut la communion fréquente, voire quotidienne, à une époque où cela était rare, encouragea la dévotion des Quarante Heures, et anticipa de plusieurs siècles les accents eucharistiques et catéchétiques que l'Église ferait plus tard siens.

Formé d'abord à la médecine à Padoue, Antoine fonda les Clercs réguliers de Saint-Paul, appelés Barnabites d'après leur église milanaise de Saint-Barnabé, ainsi que les Angéliques et une association de laïcs. Épuisé par ses labeurs, il mourut jeune en 1539 et fut canonisé en 1897, sa brève existence prouvant que ni la jeunesse ni une vocation tardive ne limitent la fécondité de la grâce tout entière livrée aux âmes.

Son témoignage presse les fidèles de puiser plus souvent et plus ardemment à l'Eucharistie comme à la vraie source du renouveau, et d'annoncer le Christ crucifié avec la même franchise et le même courage qui marquèrent son ministère bref mais fécond.
$desc$),
('saint-maria-goretti-virgin-and-martyr', 'Sainte Maria Goretti, vierge et martyre', $desc$
Maria Goretti est l'une des plus jeunes saintes de l'époque moderne, martyre non pour avoir confessé ouvertement la foi mais pour avoir défendu la pureté jusqu'à la mort, et pour le pardon qu'elle accorda à celui qui la tua. Sa brève existence a fait d'elle un signe puissant d'innocence et de miséricorde.

Son martyre célèbre la dignité de la chasteté et l'héroïsme possible même chez une enfant, montrant que la fidélité aux exigences morales de l'Évangile peut elle-même être une cause pour laquelle mourir. Le pardon qu'elle offrit en mourant à son agresseur proclame avec une clarté singulière le commandement évangélique d'aimer ses ennemis, révélant la miséricorde comme le couronnement de la sainteté véritable et non comme un ajout tardif.

Pauvre fille de ferme des marais Pontins, Maria fut attaquée en 1902, à l'âge de onze ans, par un jeune voisin, Alessandro Serenelli, et frappée mortellement alors qu'elle lui résistait, lui pardonnant explicitement avant de mourir. Serenelli, converti des années plus tard, en partie à la suite d'un songe où Maria lui offrait des lys, vécut assez pour assister à sa canonisation en 1950, cérémonie remarquable par la foule immense où figurait la propre mère de la sainte.

Son témoignage parle surtout aux jeunes, leur présentant la chasteté comme une forme réelle et coûteuse de sainteté, et il assure tout cœur blessé que le pardon, si difficile soit-il, demeure possible par cette même grâce qui soutint Maria jusqu'à son dernier souffle.
$desc$),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', 'Saint Augustin Zhao Rong, prêtre, et ses compagnons, martyrs', $desc$
Cette célébration rassemble en une seule mémoire les nombreux martyrs de Chine, évêques, prêtres, religieux et fidèles laïcs de tout âge, qui, au cours de plusieurs siècles, scellèrent de leur sang leur fidélité au Christ. Elle n'honore pas un saint isolé mais une grande cohorte tirée de toute la vie de l'Église en cette terre.

Leur martyre célèbre l'enracinement véritable de l'Évangile dans le sol chinois, porté par les chrétiens du pays comme par les missionnaires qui les servaient, et il affirme que la foi fut réellement la leur et non un simple import entretenu par des étrangers. Il proclame aussi que la sainteté fleurit aussi bien chez les catéchistes, les mères et les enfants que chez les clercs et les religieux, et que le martyre se prolonge jusqu'à l'époque moderne.

Les cent vingt qu'on commémore ensemble moururent entre le milieu du dix-septième siècle et la révolte des Boxers de 1900, qui fit le plus grand nombre de victimes ; parmi eux, Augustin Zhao Rong, jadis soldat chargé de garder l'évêque Gabriel-Taurin Dufresse emprisonné, avant d'embrasser la foi dont il avait été témoin et de mourir pour elle à son tour. Le pape Jean-Paul II canonisa cette vaste cohorte à Rome durant l'Année jubilaire 2000, donnant une visibilité renouvelée à la longue histoire du martyre en Chine.

Leur témoignage invite les fidèles à prier pour l'Église en Chine et pour les chrétiens persécutés partout, et à reconnaître que la fidélité au Christ jusqu'à la mort demeure une possibilité aussi réelle et coûteuse aujourd'hui qu'en tout âge passé.
$desc$),
('saint-benedict-abbot', 'Saint Benoît, abbé', $desc$
Benoît de Nursie est honoré comme le père du monachisme occidental, dont la Règle a façonné non seulement le cloître mais, à travers lui, toute la civilisation de l'Europe. On se souvient de lui moins pour des actions éclatantes que pour la sagesse tranquille et durable d'un mode de vie ordonné tout entier à la recherche de Dieu.

Sa sainteté célèbre la résolution de chercher Dieu par-dessus tout, ordonnant la prière, le travail et la vie commune autour de cet unique but résumé dans la devise ora et labora. Sa Règle propose un chemin de sainteté équilibré, humain et profondément christocentrique, montrant que la stabilité, l'obéissance et la fidélité quotidienne bien ordonnée sont elles-mêmes de véritables manières de suivre le Christ, accessibles bien au-delà des murs du monastère.

Né vers 480 à Nursie, Benoît quitta une Rome dissolue pour une vie de prière, rassembla des disciples et fonda enfin le monastère du Mont-Cassin, où il composa sa célèbre Règle et mourut vers 547 ; le pape Paul VI le proclama patron de l'Europe en 1964, en reconnaissance du rôle civilisateur de l'ordre monastique après la chute de l'Empire romain. Sa dévotion s'est largement répandue dans le monde monastique comme parmi les fidèles laïcs.

Son témoignage invite les fidèles, quel que soit leur état de vie, à rechercher un juste ordre entre la prière et le travail, et à redécouvrir dans la stabilité, le silence et la simple fidélité un chemin de sainteté ouvert à tous.
$desc$),
('saint-henry', 'Saint Henri', $desc$
Henri est honoré comme un empereur dont on retient moins la puissance exercée que la piété avec laquelle il l'exerça, un souverain qui gouverna en serviteur de l'Église plutôt qu'en maître des hommes. Sa sainteté est un démenti permanent à l'idée que la haute charge et la sainteté ne pourraient coexister.

Sa vie célèbre la vocation à la sainteté dans l'autorité civile et dans le mariage, proclamant qu'un gouvernement animé par la foi peut devenir un instrument de la mission de l'Église, et qu'un mariage, même sans enfant, peut être vécu comme un chemin partagé de sanctification. En lui, la responsabilité du monde et la dévotion personnelle ne furent point rivales mais une seule offrande.

Henri II, empereur du Saint-Empire au début du onzième siècle, fut renommé pour ses dotations généreuses d'églises et de monastères et surtout pour la fondation du diocèse de Bamberg, qu'il enrichit et chérit ; la tradition rapporte que lui et son épouse Cunégonde consacrèrent tout entière leur union à Dieu. Il mourut en 1024 et fut canonisé en 1146, seul roi de Germanie à être compté parmi les saints.

Son témoignage invite ceux qui détiennent l'autorité en quelque domaine à regarder leurs responsabilités comme un vrai champ de sainteté, et il invite les époux à reconnaître que leur union, quelle que soit sa forme, peut être offerte tout entière à Dieu.
$desc$),
('saint-camillus-de-lellis-priest', 'Saint Camille de Lellis, prêtre', $desc$
Camille de Lellis fut un ancien soldat et un joueur invétéré dont la conversion donna à l'Église l'un de ses grands pionniers du soin chrétien des malades. Son revirement spectaculaire, d'une vie ruinée par la débauche à une existence passée au chevet des mourants, fait lui-même partie de ce que sa mémoire proclame.

Son charisme célèbre la grâce de voir et de servir le Christ lui-même dans la personne du souffrant, et il affirme que le soin compatissant, compétent et aimant du corps est une véritable œuvre de l'Évangile, non une distraction des choses spirituelles. Sa vie montre qu'aucun abîme de déchéance ne place une âme hors de portée de la grâce, ni ne l'empêche de devenir à son tour un instrument de grâce pour autrui.

Après des années de vie de mercenaire ruiné par le jeu, Camille connut une conversion profonde, fut ordonné prêtre et fonda les Ministres des Infirmes, appelés Camilliens, dont les membres portent une croix rouge et font vœu de servir les malades même au péril de leur vie. Réformateur des pratiques hospitalières, il mourut en 1614, fut canonisé en 1746, et fut plus tard proclamé patron des malades, des infirmiers et des hôpitaux.

Son témoignage parle à tous ceux qui soignent les malades, par métier ou au sein de leur famille, les appelant à voir dans ce soin un disciple véritable et exigeant, et à implorer son intercession pour la patience et la tendresse devant toute souffrance humaine.
$desc$),
('saint-bonaventure-bishop-and-doctor-of-the-church', 'Saint Bonaventure, évêque et docteur de l''Église', $desc$
Bonaventure fut un frère franciscain qui parvint à gouverner son ordre et à compter parmi les plus grands théologiens de l'Église médiévale. On se souvient de lui comme du « Docteur séraphique », titre qui saisit l'union de l'intelligence pénétrante et de l'amour mystique ardent qui traverse toute son œuvre.

Sa théologie célèbre l'harmonie de l'esprit et du cœur, la conviction que l'étude de Dieu ne doit jamais être séparée de l'amour de Dieu. Ses écrits proclament que la vraie théologie est inséparable de la prière et de la contemplation, et que la recherche rigoureuse de la vérité ne trouve son plein achèvement que dans l'ascension de l'âme vers l'union avec le Dieu qu'elle étudie.

Bonaventure entra chez les Frères mineurs, étudia et enseigna à Paris aux côtés de son ami Thomas d'Aquin, et fut élu ministre général, guidant l'ordre à travers une période de graves divisions internes tout en continuant d'écrire sur la théologie et la vie spirituelle ; fait cardinal-évêque, il mourut en 1274 pendant le deuxième concile de Lyon, et le pape Sixte-Quint le déclara docteur de l'Église en 1588. Sa vie fit le pont entre la chaire universitaire et le gouvernement d'une grande famille religieuse.

Son témoignage rappelle aux fidèles que l'étude authentique de Dieu est faite pour approfondir l'amour de Dieu, et il recommande la poursuite d'une sagesse qui, comme la sienne, unit la pensée attentive à une prière humble et brûlante.
$desc$),
('our-lady-of-mount-carmel', 'Notre-Dame du Mont-Carmel', $desc$
Cette célébration honore la Bienheureuse Vierge Marie sous le titre que lui a donné l'Ordre du Carmel, dont les origines remontent à des ermites établis sur le mont Carmel, en Terre sainte. Elle est à la fois une fête de Marie et une fête de l'esprit contemplatif que la montagne et son prophète Élie symbolisent depuis longtemps.

La dévotion célèbre Marie comme modèle et protectrice de la vie contemplative et de tous ceux qui cherchent à se configurer pleinement au Christ, et elle commémore le scapulaire brun, que la tradition dit remis par Notre-Dame à saint Simon Stock comme signe de sa protection maternelle et gage de persévérance pour qui le porte dans la foi et vit en conséquence. Elle proclame la proximité constante de Marie envers ceux qui tendent à la sainteté par la prière, la simplicité et la confiance en son intercession.

Les ermites rassemblés sur le Carmel dès le douzième siècle tinrent Marie pour leur patronne dès les premiers jours de l'Ordre, s'appuyant sur les liens bibliques de la montagne avec Élie ; la dévotion du scapulaire, attestée à partir du quatorzième siècle, se répandit largement par la prédication carmélitaine pour devenir l'un des sacramentaux mariaux les plus aimés de l'Église. Le titre et sa célébration passèrent de l'Ordre à la vie plus large de l'Église au fil des siècles suivants.

Cette commémoration invite les fidèles à se confier à la protection maternelle de Marie au milieu des épreuves quotidiennes, et à faire du scapulaire, là où on le porte, non un talisman superstitieux mais un signe sincère de consécration à elle et à son Fils.
$desc$),
('saint-apollinaris-bishop-and-martyr', 'Saint Apollinaire, évêque et martyr', $desc$
Apollinaire est vénéré comme le premier évêque de Ravenne et un martyr des premiers siècles de l'Église, figure dont les détails historiques se sont largement effacés mais dont la fidélité jusqu'à la mort n'a jamais été oubliée. Sa mémoire rattache l'antique Église de Ravenne à l'âge apostolique.

Son témoignage célèbre les fondations apostoliques des Églises locales d'Italie et le courage de ces premiers pasteurs qui plantèrent et défendirent la foi au prix de leur vie. Il proclame la continuité ininterrompue entre la prédication apostolique de la première génération et les communautés florissantes qui en naquirent, là même où il ne subsiste guère de l'histoire d'un martyr que le seul fait de sa constance.

La tradition rapporte qu'Apollinaire fut un disciple de saint Pierre, envoyé par lui à Ravenne, où il gouverna comme évêque, subit persécutions et exils répétés pour sa prédication, et fut enfin martyrisé, donnant à la cité un récit de fondation qui la reliait directement au siège de Rome ; son nom demeure dans les grandes basiliques de Ravenne qui le portent. Son culte s'épanouit longtemps à Ravenne et au-delà, tandis que les générations postérieures s'efforcèrent d'écarter les accrétions légendaires pour garder vive la mémoire essentielle d'un évêque apostolique et martyr.

Son témoignage invite les fidèles à rendre grâce pour les fondateurs de leurs propres Églises locales, souvent à demi oubliés, et à reconnaître que toute communauté chrétienne repose sur un fondement de foi payé par ceux qui les ont précédés.
$desc$),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 'Saint Laurent de Brindes, prêtre et docteur de l''Église', $desc$
Laurent de Brindes fut un frère capucin dont les dons extraordinaires de langues et de prédication servirent aussi bien la chaire que les cours et les champs de bataille de l'Europe. Il offre un exemple frappant de vie religieuse contemplative jointe à un engagement vigoureux dans le vaste monde.

Sa vie célèbre la vocation du prédicateur-diplomate, dont l'éloquence s'accompagnait de l'art de réconcilier les princes et de défendre la chrétienté, montrant que les dons de l'intelligence et de la langue, tout entiers consacrés à Dieu, peuvent servir l'Évangile sur les scènes les plus publiques. Son exemple proclame que le cloître et les conseils des nations ne s'opposent pas mais peuvent tenir ensemble en une seule vocation féconde.

Laurent maîtrisa de nombreuses langues, dont l'hébreu, qu'il mit au service de la prédication et de missions auprès des juifs comme des protestants, et il fut ministre général des Capucins ; il chevaucha même, célèbrement, à la tête d'une armée chrétienne contre l'avancée ottomane en Hongrie, n'ayant pour arme qu'un crucifix. Il mourut en 1619 au cours d'une mission diplomatique, et le pape Jean XXIII le déclara docteur de l'Église en 1959, lui accordant le titre de « Docteur apostolique » pour ses labeurs infatigables.

Son témoignage parle à tous ceux que distinguent le savoir ou l'éloquence, les pressant de mettre ces talents tout entiers au service de l'Évangile, assurés qu'aucun champ de l'activité humaine n'échappe à la portée d'une vie réellement consacrée.
$desc$),
('saint-mary-magdalene', 'Sainte Marie-Madeleine', $desc$
Marie-Madeleine occupe une place unique parmi les disciples comme premier témoin du Christ ressuscité et première envoyée pour annoncer sa Résurrection aux apôtres. C'est pourquoi l'antique tradition de l'Église lui donna le titre d'« Apôtre des apôtres », et sa célébration honore ce privilège incomparable.

Sa fête célèbre la rencontre au jardin, où le Ressuscité l'appela par son nom et l'envoya proclamer ce qu'elle avait vu, en sorte que l'Évangile de la Résurrection fut confié d'abord à un témoin fidèle de l'amour. Son histoire proclame que la Résurrection s'annonce par une rencontre personnelle avant de se formuler en doctrine, et que la fidélité à demeurer au pied de la croix et près du tombeau est récompensée par la plus profonde intimité avec le Seigneur.

Longtemps vénérée comme une disciple qui suivit Jésus, le servit de ses biens et lui resta fidèle à travers la crucifixion et la mise au tombeau, Marie-Madeleine est honorée dans la tradition chrétienne comme un témoin privilégié de la Résurrection. La réforme des livres liturgiques a clarifié son identité en la distinguant d'autres femmes de l'Évangile auxquelles la tradition populaire l'avait parfois confondue.

Son témoignage parle à tous ceux qui s'adonnent au ministère et à l'apostolat, et spécialement aux femmes, la présentant comme le modèle de la première évangéliste de la Résurrection et invitant chaque croyant à chercher cette même rencontre personnelle avec le Christ ressuscité qui changea son deuil en joyeuse annonce.
$desc$),
('saint-bridget-religious', 'Sainte Brigitte, religieuse', $desc$
Brigitte de Suède est honorée comme une femme de haute naissance dont la longue vie traversa le mariage, la maternité, le veuvage et la fondation d'un ordre religieux, la sainteté mûrissant à chaque saison successive. On se souvient d'elle comme de l'une des grandes mystiques et réformatrices du Nord médiéval.

Sa sainteté célèbre la sainteté accessible dans tout état de vie, et en particulier le don de la révélation mystique mis au service de l'Église entière, car ses visions de la Passion nourrirent la dévotion bien au-delà de sa propre communauté. Sa vie proclame que des grâces contemplatives profondes peuvent fleurir dans une âme d'abord formée par l'amour conjugal et les devoirs domestiques, et que le veuvage peut ouvrir la porte d'une consécration plus radicale encore.

Brigitte eut huit enfants, parmi lesquels sainte Catherine de Suède, et après la mort de son mari se livra à la prière, au pèlerinage et à la mise par écrit de ses révélations, fondant enfin l'Ordre du Très-Saint-Sauveur, ou brigittin, et s'établissant à Rome, où elle œuvra pour le retour des papes d'Avignon et mourut en 1373 ; canonisée en 1391, elle fut proclamée co-patronne de l'Europe par le pape Jean-Paul II en 1999, aux côtés de sainte Catherine de Sienne et de sainte Thérèse-Bénédicte de la Croix. Son influence s'étendit du foyer domestique aux affaires de la chrétienté.

Son témoignage parle à tous ceux qui discernent la sainteté à travers les saisons changeantes de la vie de famille, leur assurant que Dieu peut tracer une seule vocation cohérente à la sainteté par le mariage, la maternité, le veuvage et la consécration religieuse tour à tour.
$desc$),
('saint-sharbel-makhluf-priest', 'Saint Charbel Makhlouf, prêtre', $desc$
Charbel Makhlouf fut un moine maronite libanais dont la vie cachée de prière devint, après sa mort, une source de faveurs extraordinaires pour des pèlerins de toute confession. Il est un témoin moderne de la puissance durable d'une vie vécue tout entière loin des regards du monde.

Sa sainteté célèbre la vocation érémitique et monastique, la conviction qu'une vie répandue dans le silence, la pénitence et la prière incessante demeure pleinement féconde pour l'Église entière, même lorsqu'elle ne produit aucune activité visible. Son exemple proclame qu'une sainteté du genre le plus radical peut se vivre dans une obscurité délibérée, choisie en vue d'une union plus étroite avec Dieu.

Né Youssef Antoun Makhlouf, il entra dans un monastère maronite, fut ordonné prêtre et, après quelques années, se retira à l'ermitage des saints Pierre et Paul, près d'Annaya, où il mena une vie austère et presque toujours silencieuse de prière et de travail manuel jusqu'à sa mort, la veille de Noël 1898 ; les phénomènes extraordinaires et les guérisons rapportés à son tombeau répandirent la dévotion du Liban au monde entier, et il fut canonisé en 1977. Sa renommée, qu'il n'avait pas cherchée de son vivant, vint tout entière après sa mort.

Son témoignage appelle les fidèles, au milieu du bruit et de la hâte de la vie moderne, à priser le silence, la pénitence et la prière cachée comme des voies véritables et puissantes pour s'approcher de Dieu et intercéder pour les autres.
$desc$),
('saint-james-apostle', 'Saint Jacques, apôtre', $desc$
Jacques, dit « le Majeur » pour le distinguer de l'autre apôtre du même nom, était le frère de saint Jean l'Évangéliste et l'un du cercle intime que Jésus tint le plus proche de lui. Sa célébration honore un témoin marqué à la fois par cette proximité privilégiée avec le Christ et par le plus ancien des martyres apostoliques.

Sa fête célèbre sa présence à la Transfiguration et à Gethsémani et, par-dessus tout, sa distinction d'être le premier des Douze à sceller son témoignage de son sang. Sa mort proclame le prix du disciple que le Christ lui-même avait annoncé lorsqu'il demanda à Jacques et à Jean s'ils pouvaient boire la coupe qu'il allait boire, et elle est, parmi les apôtres, le premier accomplissement évangélique de cette promesse coûteuse.

Jacques fut décapité sur l'ordre du roi Hérode Agrippa Ier vers l'an 44, comme le rapportent les Actes des Apôtres ; une forte tradition, spécialement chère à l'Espagne, tient que son corps fut plus tard porté à Compostelle, où le sanctuaire de Saint-Jacques-de-Compostelle devint l'un des plus grands lieux de pèlerinage de la chrétienté et Jacques le patron de la nation. Les chemins de Compostelle qui convergent vers son tombeau attirent des pèlerins depuis plus de mille ans.

Son témoignage parle aux innombrables pèlerins d'aujourd'hui qui parcourent encore le Camino en son honneur, leur rappelant que suivre le Christ de près peut signifier boire sa coupe, et les invitant à demander le courage qui porta Jacques au premier martyre apostolique.
$desc$),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 'Saints Joachim et Anne, parents de la Bienheureuse Vierge Marie', $desc$
Joachim et Anne sont honorés comme les parents de la Bienheureuse Vierge Marie et donc, selon la chair, les grands-parents de Jésus Christ. Leur commémoration commune attire l'attention sur la famille d'où vint la Mère de Dieu, et sur les générations de foi discrète qui préparèrent l'Incarnation.

Leur mémoire célèbre la sainteté cachée de la vie de famille et la fidélité de ceux qui, par une ordinaire vertu domestique, façonnèrent le cadre humain où Marie naquit et grandit. Vénérés comme modèles des grands-parents et de toute la famille élargie, ils proclament que le dessein de salut de Dieu se déploie non seulement par de grands actes publics mais par des générations d'humble fidélité au sein du foyer.

Leurs noms et leur histoire viennent non des Écritures canoniques, muettes sur les parents de Marie, mais de l'antique Protévangile de Jacques, qui préserva une dévotion attestée dès les premiers siècles et particulièrement vive en Orient chrétien, où leur culte précède de loin son épanouissement en Occident. Pendant des siècles, l'Occident développa les dévotions envers sainte Anne et saint Joachim sous des formes diverses, tandis que l'Orient chrétien conserva un culte particulièrement ancien et vivant de l'un et de l'autre.

Leur mémoire invite les grands-parents et les anciens à voir dans leur influence discrète, souvent invisible, une part réelle de l'œuvre de Dieu qui transmet la foi, et elle invite chaque famille à confier ses générations, passées et présentes, à leur intercession.
$desc$),
('saints-martha-mary-and-lazarus', 'Saints Marthe, Marie et Lazare', $desc$
Cette célébration honore ensemble les trois frère et sœurs de Béthanie, Marthe, Marie et Lazare, dont Jésus fréquentait souvent la maison et dont l'Évangile présente l'amitié comme un modèle d'intimité avec le Christ. C'est une fête d'un foyer plutôt que d'un seul saint, honorant une famille dont la porte s'ouvrait toujours au Seigneur.

Leur mémoire célèbre l'hospitalité, la foi personnelle profonde et l'espérance de la résurrection, chacune incarnée par l'un des trois : le service généreux de Marthe et sa confession, « Je crois que tu es le Christ, le Fils de Dieu » ; l'attention contemplative de Marie aux pieds du Seigneur ; et Lazare, appelé hors du tombeau comme un avant-goût de la victoire du Christ sur la mort. Ensemble ils proclament que l'amitié avec Jésus, vécue par le service, la foi et l'espérance jusqu'en face de la mort, est un vrai chemin de disciple.

L'Évangile de Jean rapporte le lien étroit de la famille avec Jésus, ses larmes au tombeau et la résurrection de Lazare après quatre jours, le signe qui précipita le plus directement le complot contre sa vie. La tradition occidentale accorda longtemps une place particulière à Marthe, tandis qu'une réflexion plus récente mit davantage en lumière tout le foyer de Béthanie comme image durable d'une vie familiale mise au service du Christ.

Leur témoignage invite les fidèles à accueillir le Christ dans leur propre maison par l'hospitalité et le service, à s'asseoir avec attention à ses pieds dans la prière, et à se confier à lui, même dans le deuil, comme à celui qui rappelle les morts à la vie.
$desc$),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 'Saint Pierre Chrysologue, évêque et docteur de l''Église', $desc$
Pierre Chrysologue fut un évêque de Ravenne du cinquième siècle dont les homélies étaient si vives et si justes qu'elles lui valurent le surnom de « Chrysologue », l'homme aux paroles d'or. On se souvient de lui comme de l'un des grands prédicateurs de l'âge patristique, honoré pour la qualité durable de ses sermons.

Son ministère célèbre l'art de la prédication à son sommet, bref, lumineux et tout imprégné d'Écriture, capable d'ouvrir aux gens simples les mystères de la foi en des mots qu'ils pouvaient saisir et retenir. Ses sermons conservés proclament que la chaire, mise au service de la clarté et de la charité plutôt que de l'étalage, demeure l'un des plus puissants instruments de l'Église pour former la foi de son peuple.

Pierre gouverna l'Église de Ravenne alors que celle-ci était une capitale impériale d'un poids considérable, et ses homélies courtes et soigneusement ciselées, dont un grand nombre subsiste, révèlent un pasteur vivement attentif aux besoins concrets de son troupeau ; il mourut vers l'an 450, et le pape Benoît XIII le déclara docteur de l'Église en 1729, plus de mille ans après sa mort. Ses écrits offrirent aux âges suivants une fenêtre sur la prédication et la piété de l'Église ancienne.

Son témoignage appelle les prédicateurs et les maîtres de la foi à rechercher la même clarté et la même chaleur qui marquèrent ses sermons, et il invite tout croyant à revenir souvent et attentivement aux paroles de l'Écriture comme à la source la plus sûre d'une foi aisément comprise et fermement tenue.
$desc$),
('saint-ignatius-of-loyola-priest', 'Saint Ignace de Loyola, prêtre', $desc$
Ignace de Loyola fut un soldat basque dont la blessure de guerre devint, par la providence de Dieu, la plaie même qui l'ouvrit à la sainteté. D'une vie d'ambition mondaine il fut retourné vers le Christ, et il fonda l'un des ordres religieux les plus influents de l'histoire de l'Église.

Son héritage spirituel célèbre le discernement des esprits et l'offrande totale des talents et des ambitions à la plus grande gloire de Dieu, le but qu'il rendit fameux par la formule Ad maiorem Dei gloriam. Son enseignement proclame que Dieu peut être trouvé et servi en toutes choses, et que l'examen ordonné de ses propres pensées, désirs et consolations est lui-même un vrai chemin pour connaître et suivre la volonté divine.

Blessé au siège de Pampelune en 1521, Ignace passa une longue convalescence durant laquelle ses lectures détournèrent ses ambitions de la gloire du monde vers la suite du Christ, le conduisant à composer les Exercices spirituels et, avec une petite troupe de compagnons dont saint François Xavier, à fonder la Compagnie de Jésus en 1540. Ordre qui devint un grand moteur d'expansion missionnaire, d'éducation et de réforme, son fondateur mourut à Rome en 1556 et fut canonisé en 1622.

Son témoignage invite les fidèles à chercher Dieu activement en toute circonstance de la vie ordinaire, et à faire leur, quelle que soit leur vocation, la résolution ignacienne de mettre tout talent et toute ambition entièrement au service de la plus grande gloire de Dieu.
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
Inter Duodecim a Christo ipso electos, Thomas ante omnia ob unicam illam in Cenaculo scaenam in memoria manet, ita ut celebratio eius non tam labores apostolicos quam singularem gratiam occursus cum Resuscitato honoret. Est apostolus sincerae dubitationis, discipulus qui aliorum testimonio credere renuit et videre ac tangere postulavit priusquam confiteretur.

Theologice Thomas quemlibet credentem repraesentat qui per dubitationis probationem ad fidem contendit. Coram vulneribus Crucifixi resuscitati positus, plenissimam totius Scripturae confessionem protulit, « Dominus meus et Deus meus », eiusque historia proclamat Christum sincerae interrogationi non obiurgatione sed patienti ac tangibili misericordia respondere, dubitantem ad altissimum adorationis actum perducentem.

Antiqua traditio, a scriptoribus priorum saeculorum et a perenni testimonio christianorum sancti Thomae in India, qui originem suam ad eius praedicationem referunt, suffulta, tenet eum Evangelium usque in Indiam pertulisse, ubi martyrium subiit; reliquiae eius Mailapuri, Edessae ac postea Ortonae in Italia venerationi fuerunt. Hae traditiones cultum eius per Orientem atque Occidentem christianum late diffuderunt.

Sanctus Thomas invitat credentes qui non viderunt et tamen credere vocantur, ut sinceras quaestiones suas ad Christum afferant potius quam premant, fidentes eum accedere ad eum qui fideliter quaerit et omne dubium ad plenitudinem adorantis fidei perducere.
$desc$),
('saint-elizabeth-of-portugal', 'Sancta Elisabeth Lusitaniae', $desc$
Elisabeth Lusitaniae honoratur ut regina cuius regia dignitas non obstaculum sed instrumentum sanctitatis facta est, mulier quae aulae, coniugii et vitae publicae onera portavit numquam sinens caritatem suam exstingui. Praecipue colitur ut pacis artifex, quae saepe inter viros bellantes se interposuit ut eos reconciliaret.

Sanctitas eius vocationem ad sanctitatem in coniugio, maternitate et publica responsabilitate celebrat, ac super omnia gratiam reconciliationis inter violentiam et domesticas discordias. Vita eius proclamat potestatem politicam, tam saepe superbiae occasionem, totam in servitium pacis et pauperum poni posse, viduitatemque, non claudentem vitam servitii, eam plenius ad orationem ac simplicitatem aperire.

Nata princeps Aragoniae et de proavia sua sancta Elisabeth Hungariae nominata, cuius caritatem consulto imitata est, regi Dionysio Lusitaniae in matrimonium data est, infidelitates eius patienter tulit et pacem inter ipsum et filium rebellem necnon inter Lusitaniam et Castellam composuit. Vidua, habitum tertii Ordinis franciscani suscepit et prope monasterium Clarissarum quod condiderat secessit, anno 1336 obiens; anno 1625 in album sanctorum relata est.

Exemplum eius loquitur iis qui auctoritatem exercent aut vulnera domesticarum contentionum ferunt, hortans ut patienter reconciliationem quaerant neve ulla mundana condicio eos a vita orationis, humilitatis et curae pauperum avertat.
$desc$),
('saint-anthony-zaccaria-priest', 'Sanctus Antonius Maria Zaccaria, presbyter', $desc$
Antonius Maria Zaccaria medicus fuit qui ad sacerdotium conversus est, et inter strenuos illos reformatores numeratur quorum zelus vitam spiritualem Italiae saeculi decimi sexti, ineunte reformatione catholica, refovere adiuvit. Brevis eius cursus virum ostendit desiderio renovandae tepidae Ecclesiae consumptum.

Charisma eius praedicatorem reformatorem et fundatorem celebrat, sacerdotem qui fervorem excitare laborat per frequentem sacramentorum usum et audacem Christi crucifixi annuntiationem. Communionem frequentem, immo cotidianam, tempore quo rara erat, promovit, devotionem Quadraginta Horarum fovit, et per saecula praevenit eos eucharisticos catecheticosque accentus quos Ecclesia postea sibi proprios fecit.

Medicinae primum Patavii eruditus, Antonius Clericos regulares sancti Pauli condidit, ab ecclesia Mediolanensi sancti Barnabae Barnabitas vulgo dictos, una cum Angelicis Sororibus et laicorum consociatione. Laboribus confectus, iuvenis anno 1539 obiit et anno 1897 canonizatus est, brevi vita comprobans neque iuventutem neque seram vocationem gratiae fecunditatem animabus totam traditae circumscribere.

Testimonium eius fideles urget ut saepius ferventiusque ex Eucharistia velut vero fonte renovationis hauriant, et Christum crucifixum ea ipsa libertate atque animo annuntient qui breve sed fecundum eius ministerium notaverunt.
$desc$),
('saint-maria-goretti-virgin-and-martyr', 'Sancta Maria Goretti, virgo et martyr', $desc$
Maria Goretti una est ex iuvenissimis aetatis recentioris sanctis, martyr non ob fidem palam confessam sed ob castitatem usque ad mortem defensam, atque ob veniam ei concessam qui eam interfecit. Brevis eius vita signum potens innocentiae ac misericordiae eam fecit.

Martyrium eius dignitatem castitatis celebrat et heroismum etiam in puella possibilem, ostendens fidelitatem erga morales Evangelii postulationes ipsam esse posse causam pro qua moriatur. Venia agonizans agresori data cum singulari claritate mandatum evangelicum diligendi inimicos proclamat, misericordiam ut coronam verae sanctitatis potius quam ut posterius additamentum revelans.

Pauper agri filia paludum Pontinarum, Maria anno 1902, undecim annos nata, a iuvene vicino Alexandro Serenelli oppugnata est et, dum ei resistit, letaliter confossa, ei ante mortem expresse ignoscens. Serenelli, post annos conversus, partim ob somnium in quo Maria lilia ei offerebat, tam diu vixit ut canonizationi eius anno 1950 interesset, caerimoniae ingenti turba insigni, in qua ipsa sanctae mater aderat.

Testimonium eius praesertim iuvenibus loquitur, castitatem ut veram ac pretiosam sanctitatis formam commendans, omnique cordi vulnerato affirmat veniam, quantumvis difficilem, possibilem manere per eandem gratiam quae Mariam usque ad extremum spiritum sustinuit.
$desc$),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', 'Sanctus Augustinus Zhao Rong et Socii, martyres', $desc$
Haec celebratio in unam memoriam colligit plurimos martyres Sinarum, episcopos, presbyteros, religiosos et fideles laicos omnis aetatis, qui per plura saecula fidelitatem suam erga Christum sanguine obsignaverunt. Non unum sanctum honorat sed magnam cohortem ex tota vita Ecclesiae in illa terra haustam.

Martyrium eorum veram Evangelii radicationem in solo Sinico celebrat, a christianis indigenis atque a missionariis qui eis serviebant portatam, et affirmat fidem vere eorum propriam fuisse neque merum importum ab exteris sustentatum. Proclamat quoque sanctitatem tam facile florere apud catechistas, matres et pueros quam apud clericos et religiosos, martyriumque usque ad aetatem recentiorem perdurare.

Centum viginti qui simul commemorantur inter medium saeculum decimum septimum et Boxerorum seditionem anni 1900, quae plurimos abstulit, mortui sunt; inter eos Augustinus Zhao Rong, olim miles qui episcopum Gabrielem Taurinum Dufresse in carcere custodiverat priusquam fidem cuius testis fuerat amplecteretur et vicissim pro ea moreretur. Ioannes Paulus II Papa hanc vastam cohortem simul Romae Anno iubilaeo 2000 canonizavit, ita diuturnae historiae martyrii in Sinis novam visibilitatem tribuens.

Testimonium eorum fideles vocat ut pro Ecclesia in Sinis proque christianis ubique persecutionem patientibus orent, atque agnoscant fidelitatem erga Christum usque ad mortem tam realem ac pretiosam possibilitatem hodie manere quam omni aetate praeterita.
$desc$),
('saint-benedict-abbot', 'Sanctus Benedictus, abbas', $desc$
Benedictus Nursinus ut pater monachismi occidentalis honoratur, cuius Regula non solum claustrum sed, per illud, totam Europae civilitatem effinxit. Minus ob facta insignia quam ob quietam ac perennem sapientiam vivendi rationis totius ad Dei quaesitionem ordinatae in memoria manet.

Sanctitas eius firmum propositum Deum super omnia quaerendi celebrat, orationem, laborem et vitam communem circa illud unicum studium ordinans, motto ora et labora comprehensum. Regula eius viam ad sanctitatem aequabilem, humanam et penitus in Christo centratam proponit, ostendens stabilitatem, oboedientiam et ordinatam cotidianam fidelitatem ipsas esse veras rationes Christum sequendi, longe extra monasterii muros patentes.

Circa annum 480 Nursiae natus, Benedictus a dissoluta Roma ad vitam orationis secessit, discipulos congregavit et tandem monasterium Casini Montis condidit, ubi celebrem Regulam composuit et circa annum 547 obiit; Paulus VI Papa eum anno 1964 Europae Patronum declaravit, munus civilizans ordinis monastici post Imperii Romani occasum agnoscens. Devotio erga eum late in vita monastica atque laicali percrevit.

Testimonium eius fideles invitat, quocumque statu vitae, ut rectum ordinem inter orationem et laborem quaerant, atque in stabilitate, silentio et simplici fidelitate viam sanctitatis omnibus patentem rursus inveniant.
$desc$),
('saint-henry', 'Sanctus Henricus', $desc$
Henricus honoratur ut imperator cuius minus potestas exercita quam pietas qua eam exercuit in memoria est, princeps qui ut Ecclesiae servus potius quam ut hominum dominus gubernavit. Sanctitas eius perpetua est refutatio opinionis altum munus et sanctitatem coexistere non posse.

Vita eius vocationem ad sanctitatem in auctoritate civili et in coniugio celebrat, proclamans gubernationem fide animatam instrumentum missionis Ecclesiae fieri posse, coniugiumque, etiam sine prole, ut communem sanctificationis viam vivi posse. In eo mundi responsabilitas et personalis devotio non aemulae fuerunt sed una oblatio.

Henricus II, sacri Romani Imperii imperator ineunte saeculo undecimo, ob liberalem ecclesiarum et monasteriorum dotationem ac praesertim ob dioecesim Bambergensem conditam, quam ditavit et dilexit, celeberrimus fuit; traditio tenet eum coniugemque Cunegundem unionem suam totam Deo consecravisse. Anno 1024 obiit et anno 1146 canonizatus est, solus Germaniae rex inter sanctos numeratus.

Testimonium eius invitat eos qui auctoritatem in quovis ambitu tenent ut responsabilitates suas ut verum sanctitatis campum aspiciant, atque coniuges invitat ut agnoscant unionem suam, quocumque modo vivatur, totam Deo offerri posse.
$desc$),
('saint-camillus-de-lellis-priest', 'Sanctus Camillus de Lellis, presbyter', $desc$
Camillus de Lellis miles quondam et aleae inveteratus lusor fuit, cuius conversio Ecclesiae unum e magnis christianae curae aegrotorum antesignanis dedit. Mira eius conversio, a vita luxu perdita ad exsistentiam apud morientium lectos actam, ipsa pars est eius quod memoria eius proclamat.

Charisma eius gratiam videndi et serviendi ipsi Christo in persona patientis celebrat, atque affirmat curam corporis misericordem, peritam et amantem verum esse Evangelii opus, non a rebus spiritualibus distractionem. Vita eius ostendit nullum ruinae profundum animam extra gratiae portum ponere, neque prohibere quominus ipsa vicissim gratiae instrumentum aliis fiat.

Post annos vitae mercennariae alea perditae, Camillus altam conversionem expertus est, presbyter ordinatus, et Ministros Infirmorum, Camillianos dictos, condidit, quorum sodales crucem rubram gerunt et vovent se aegrotis etiam cum vitae periculo servituros. Reformator usus valetudinariorum, anno 1614 obiit, anno 1746 canonizatus, ac postea patronus aegrotorum, infirmariorum et nosocomiorum declaratus est.

Testimonium eius omnibus loquitur qui aegrotis curam praestant, sive ex officio sive intra familias suas, eos vocans ut in ea cura verum et arduum discipulatum videant, atque eius intercessionem pro patientia et teneritudine ante omnem humanam passionem implorent.
$desc$),
('saint-bonaventure-bishop-and-doctor-of-the-church', 'Sanctus Bonaventura, episcopus et Ecclesiae doctor', $desc$
Bonaventura frater franciscanus fuit qui ad ordinem suum regendum ascendit et inter maximos Ecclesiae medievalis theologos numeratur. Ut « Doctor Seraphicus » in memoria manet, quod titulus coniunctionem acuti ingenii et ardentis mystici amoris capit quae totum eius opus permeat.

Theologia eius harmoniam mentis et cordis celebrat, persuasionem doctrinam de Deo numquam ab amore Dei seiungendam esse. Scripta eius proclamant veram theologiam ab oratione et contemplatione inseparabilem esse, rigorosamque veri quaesitionem propriam consummationem tantum in ascensu animae ad unionem cum Deo quem studet invenire.

Bonaventura Ordinem Fratrum Minorum ingressus est, Lutetiae iuxta amicum suum Thomam Aquinatem studuit et docuit, atque Minister Generalis electus est, ordinem per tempus gravium internarum divisionum regens dum de theologia et vita spirituali scribere pergit; cardinalis episcopus creatus, anno 1274 in Concilio Lugdunensi Secundo obiit, et Sixtus V Papa eum anno 1588 Ecclesiae Doctorem declaravit. Vita eius cathedram universitatis et regimen magnae religiosae familiae coniunxit.

Testimonium eius fideles admonet veram de Deo eruditionem ad altiorem Dei amorem ducere debere, atque quaesitionem sapientiae commendat quae, sicut sua, accuratam cogitationem cum humili et flagranti oratione coniungit.
$desc$),
('our-lady-of-mount-carmel', 'Beata Maria Virgo de Monte Carmelo', $desc$
Haec celebratio Beatam Mariam Virginem sub titulo ei ab Ordine Carmelitano dato honorat, cuius origines ad eremitas in monte Carmelo in Terra Sancta commorantes recurrunt. Simul est festum Mariae et festum contemplativi spiritus quem mons eiusque propheta Elias iam diu significant.

Devotio Mariam celebrat ut exemplar ac patronam vitae contemplativae et omnium qui plenam sui ad Christum configurationem quaerunt, atque scapulare fuscum commemorat, quod traditio ait a Domina Nostra sancto Simoni Stock traditum esse ut signum maternae protectionis et pignus perseverantiae iis qui illud cum fide gerunt et convenienter vivunt. Proclamat continuam Mariae propinquitatem erga eos qui ad sanctitatem per orationem, simplicitatem et fiduciam in intercessione eius contendunt.

Eremitae in Carmelo a saeculo duodecimo congregati Mariam ut patronam iam ab Ordinis primordiis habuerunt, biblicis montis cum Elia coniunctionibus innixi; devotio scapularis, a saeculo decimo quarto testata, per praedicationem carmelitanam late diffusa est ut unum ex amatissimis Ecclesiae sacramentalibus marianis fieret. Titulus eiusque celebratio ab Ordine ad ampliorem Ecclesiae vitam saeculis sequentibus transierunt.

Haec commemoratio fideles invitat ut se maternae Mariae protectioni inter cotidianas probationes committant, atque scapulare, ubi geritur, non superstitiosum phylacterium sed sincerum signum consecrationis ei eiusque Filio faciant.
$desc$),
('saint-apollinaris-bishop-and-martyr', 'Sanctus Apollinaris, episcopus et martyr', $desc$
Apollinaris ut primus Ravennae episcopus et martyr priorum Ecclesiae saeculorum veneratur, figura cuius historica adiuncta magna ex parte evanuerunt sed cuius fidelitas usque ad mortem numquam oblita est. Memoria eius antiquam Ravennae Ecclesiam aetati apostolicae adnectit.

Testimonium eius apostolica fundamenta Ecclesiarum localium Italiae celebrat atque fortitudinem illorum primorum pastorum qui fidem vitae suae pretio plantaverunt ac defenderunt. Proclamat non interruptam continuitatem inter apostolicam praedicationem primae generationis et florentes communitates quae ex ea creverunt, ibi etiam ubi de martyris historia vix aliquid superest praeter solum constantiae eius factum.

Traditio tenet Apollinarem discipulum sancti Petri fuisse, ab eo Ravennam missum, ubi ut episcopus gubernavit, repetitas persecutiones et exsilia ob praedicationem passus est, ac tandem martyrium subiit, urbi originis narrationem praebens quae eam directe sedi Romae coniungebat; nomen eius in magnis Ravennae basilicis quae illud ferunt manet. Cultus eius diu Ravennae et extra eam floruit, dum aetates posteriores legendarias accretiones removere conabantur ut nucleus memoriae episcopi apostolici et martyris clarius servaretur.

Testimonium eius fideles invitat ut pro fundatoribus propriarum Ecclesiarum localium, saepe semiobliteratis, gratias agant, atque agnoscant omnem christianam communitatem super fundamento fidei niti a praecessoribus persoluto.
$desc$),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', 'Sanctus Laurentius a Brundusio, presbyter et Ecclesiae doctor', $desc$
Laurentius a Brundusio frater capuccinus fuit cuius eximia linguarum et praedicationis dona tam suggestum quam aulas et proelia Europae servierunt. Insigne praebet exemplum vitae religiosae contemplativae strenuae cum mundi latioris implicationi coniunctae.

Vita eius vocationem praedicatoris-legati celebrat, cuius eloquentia arti principum reconciliandorum et christianitatis defendendae par erat, ostendens ingenii et linguae dona, tota Deo consecrata, Evangelio in publicis maxime scaenis servire posse. Exemplum eius proclamat claustrum et nationum consilia non opponi sed in una fecunda vocatione simul teneri posse.

Laurentius multas linguas, inter quas hebraicam, edidicit, quibus in praedicatione et in missionibus ad Iudaeos et protestantes usus est, ac Minister Generalis Capuccinorum fuit; celebriter etiam ante exercitum christianum contra Ottomanicam progressionem in Hungaria equitavit, uno crucifixo armatus. Anno 1619 dum legatione fungitur obiit, et Ioannes XXIII Papa eum anno 1959 Ecclesiae Doctorem declaravit, titulo « Doctoris Apostolici » ob indefessos labores ei concesso.

Testimonium eius omnibus loquitur quos eruditio vel eloquentia insignit, eos urgens ut talenta talia tota in servitium Evangelii ponant, confisos nullum humanae industriae campum extra veri consecratae vitae ambitum iacere.
$desc$),
('saint-mary-magdalene', 'Sancta Maria Magdalena', $desc$
Maria Magdalena singularem inter discipulos locum tenet ut prima testis Christi resuscitati et prima missa ut apostolis Resurrectionem eius annuntiaret. Ideo antiqua Ecclesiae traditio ei titulum « Apostolae Apostolorum » dedit, celebratioque eius illud incomparabile privilegium honorat.

Festum eius occursum in horto celebrat, ubi Resuscitatus eam nomine vocavit et misit ut nuntiaret quae viderat, ita ut Evangelium Resurrectionis prius fideli amoris testi commissum sit. Historia eius proclamat Resurrectionem per personalem occursum annuntiari priusquam in doctrinam formetur, atque fidelitatem in manendo sub cruce et prope sepulcrum altissima cum Domino intimitate remunerari.

Diu ut discipula venerata quae Iesum secuta est, ei de bonis suis ministravit et per crucifixionem sepulturamque fidelis mansit, Maria Magdalena in traditione christiana tamquam privilegiata Resurrectionis testis honoratur. Recognitio librorum liturgicorum identitatem eius ab aliis Evangelii mulieribus, quibuscum popularis traditio eam interdum confuderat, clarius distinxit.

Testimonium eius omnibus loquitur qui ministerio et apostolatui incumbunt, praesertim mulieribus, eam ut exemplar primae Resurrectionis evangelistae proponens, et unumquemque credentem invitans ut illum ipsum personalem cum Christo resuscitato occursum quaerat qui luctum eius in laetam annuntiationem convertit.
$desc$),
('saint-bridget-religious', 'Sancta Birgitta, religiosa', $desc$
Birgitta Suecica honoratur ut nobilis femina cuius longa vita coniugium, maternitatem, viduitatem et religiosi ordinis fundationem percurrit, sanctitate per singulas successivas aetates maturescente. Ut una e magnis mysticis et reformatricibus medievalis Septentrionis in memoria manet.

Sanctitas eius sanctitatem in omni vitae statu accessibilem celebrat, ac praesertim donum mysticae revelationis toti Ecclesiae servientis, nam visiones eius Passionis devotionem longe ultra propriam communitatem aluerunt. Vita eius proclamat profundas contemplativas gratias in anima prius amore coniugali et domesticis officiis formata florere posse, viduitatemque ianuam consecrationis adhuc radicalioris aperire.

Birgitta octo liberos peperit, inter quos sanctam Catharinam Suecicam, et post mariti mortem se orationi, peregrinationi et revelationum suarum consignationi dedidit, tandem Ordinem Sanctissimi Salvatoris, Birgittinum dictum, condens et Romae commorans, ubi pro reditu Pontificum ab Avenione laboravit et anno 1373 obiit; anno 1391 canonizata, a Ioanne Paulo II Papa anno 1999 Europae compatrona una cum sancta Catharina Senensi et sancta Teresia Benedicta a Cruce declarata est. Influxus eius a domestico foco ad christianitatis negotia pertinuit.

Testimonium eius omnibus loquitur qui sanctitatem per mutantes vitae familiaris aetates discernunt, eis affirmans Deum unam cohaerentem ad sanctitatem vocationem per coniugium, maternitatem, viduitatem et religiosam consecrationem vicissim ducere posse.
$desc$),
('saint-sharbel-makhluf-priest', 'Sanctus Charbel Makhluf, presbyter', $desc$
Charbel Makhluf monachus maronita libanensis fuit cuius abscondita orationis vita, post mortem eius, fons extraordinariorum beneficiorum peregrinis cuiusvis religionis facta est. Recens testis est perennis virtutis vitae totius extra mundi conspectum actae.

Sanctitas eius vocationem eremiticam et monasticam celebrat, persuasionem vitam in silentio, paenitentia et incessabili oratione effusam plene toti Ecclesiae fecundam manere, etiam cum nullam visibilem industriam producit. Exemplum eius proclamat sanctitatem generis maxime radicalis in deliberata obscuritate, propter arctiorem cum Deo unionem electa, vivi posse.

Iosephus Antonius Makhlouf natus, monasterium maronitam ingressus est, presbyter ordinatus, et post aliquot annos ad eremum sanctorum Petri et Pauli prope Annaya secessit, ubi austeram ac fere semper tacitam vitam orationis et laboris manualis egit usque ad mortem in pervigilio Nativitatis anni 1898; extraordinaria phaenomena et sanationes ad sepulcrum eius relata devotionem a Libano in totum orbem diffuderunt, et anno 1977 canonizatus est. Fama eius, in vita non quaesita, tota post mortem venit.

Testimonium eius fideles vocat, inter strepitum et festinationem vitae recentioris, ut silentium, paenitentiam et absconditam orationem ut veras potentesque vias appropinquandi ad Deum et pro aliis intercedendi aestiment.
$desc$),
('saint-james-apostle', 'Sanctus Iacobus, Apostolus', $desc$
Iacobus, « Maior » dictus ut ab altero apostolo eiusdem nominis distinguatur, frater erat sancti Ioannis Evangelistae et unus ex intimo circulo quem Iesus sibi proximum tenuit. Celebratio eius testem honorat insignitum simul illa privilegiata cum Christo propinquitate et antiquissimo apostolicorum martyriorum.

Festum eius praesentiam eius in Transfiguratione et in Gethsemani celebrat ac, super omnia, insigne quod primus e Duodecim testimonium suum sanguine obsignavit. Mors eius pretium discipulatus proclamat quod Christus ipse praedixerat cum Iacobum et Ioannem interrogavit num calicem quem ipse bibiturus esset bibere possent, atque, inter apostolos, prima est evangelica illius pretiosae promissionis impletio.

Iacobus iussu regis Herodis Agrippae I circa annum 44 decollatus est, ut in Actibus Apostolorum refertur; fortis traditio, Hispaniae praecipue cara, tenet corpus eius postea Compostellam translatum esse, ubi sanctuarium Sancti Iacobi Compostellani in unum e maximis christianitatis peregrinationis locis crevit et Iacobus nationis patronus factus est. Viae Compostellanae quae ad sepulcrum eius conveniunt peregrinos plus quam mille annos allexerunt.

Testimonium eius innumeris hodiernis peregrinis loquitur qui adhuc Viam in eius honorem peragrant, eos admonens Christum prope sequi calicem eius bibere posse significare, et invitans ut fortitudinem petant quae Iacobum ad primum apostolicum martyrium duxit.
$desc$),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', 'Sancti Ioachim et Anna', $desc$
Ioachim et Anna ut parentes Beatae Mariae Virginis honorantur ideoque, secundum carnem, avi Iesu Christi. Communis eorum commemoratio attentionem ad familiam ex qua Mater Dei venit convertit, atque ad generationes quietae fidei quae Incarnationem praeparaverunt.

Memoria eorum absconditam vitae familiaris sanctitatem celebrat et fidelitatem illorum qui, per ordinariam virtutem domesticam, humanum ambitum finxerunt in quo Maria nata et educata est. Ut exemplaria avorum et totius amplioris familiae venerati, proclamant salvificum Dei consilium non solum per magna facta publica sed per generationes humilis fidelitatis intra domum explicari.

Nomina eorum et historia non ex canonicis Scripturis, quae de Mariae parentibus silent, sed ex antiquo Protoevangelio Iacobi veniunt, quod devotionem a primis saeculis testatam servavit, in Oriente christiano praesertim vividam, ubi cultus eorum longe florem suum occidentalem praecedit. Per saecula Occidens devotionem erga sanctam Annam et sanctum Ioachim variis formis excoluit, dum Oriens christianus cultum utriusque antiquissimum ac vividum servavit.

Memoria eorum avos et seniores invitat ut in quieto suo, saepe invisibili, influxu veram partem operis Dei fidem tradentis videant, atque unamquamque familiam invitat ut generationes suas, praeteritas et praesentes, intercessioni eorum committat.
$desc$),
('saints-martha-mary-and-lazarus', 'Sanctae Martha, Maria et Lazarus', $desc$
Haec celebratio simul honorat tres fratres Bethaniae, Martham, Mariam et Lazarum, quorum domum Iesus saepe visitabat et quorum amicitiam Evangelia ut exemplar intimitatis cum Christo exhibent. Festum est domus potius quam unius sancti, familiam honorans cuius ianua Domino semper patebat.

Memoria eorum hospitalitatem, profundam personalem fidem et resurrectionis spem celebrat, singula in uno e tribus incarnata: Marthae generosum servitium eiusque confessionem, « Credo quia tu es Christus Filius Dei »; Mariae contemplativam ad pedes Domini attentionem; et Lazarum, e sepulcro vocatum ut praegustationem victoriae Christi de morte. Simul proclamant amicitiam cum Iesu, per servitium, fidem et spem etiam coram morte vixam, veram esse discipulatus viam.

Evangelium Ioannis arctum familiae cum Iesu vinculum refert, lacrimas eius ad sepulcrum et Lazari post quatuor dies suscitationem, signum quod directissime insidias contra vitam eius praecipitavit. Traditio occidentalis diu Marthae peculiarem locum tribuit, dum recentior consideratio totam Bethaniae domum magis illustravit ut imaginem permanentem vitae familiaris in servitium Christi positae.

Testimonium eorum fideles invitat ut Christum in propriam domum per hospitalitatem et servitium excipiant, ut attente ad pedes eius in oratione sedeant, atque ei, etiam in luctu, confidant ut ei qui mortuos ad vitam revocat.
$desc$),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', 'Sanctus Petrus Chrysologus, episcopus et Ecclesiae doctor', $desc$
Petrus Chrysologus episcopus Ravennae saeculi quinti fuit cuius homiliae tam vividae ac tam accuratae erant ut cognomen « Chrysologi », aureis verbis praediti, ei conciliarent. Ut unus e magnis praedicatoribus aetatis patristicae in memoria manet, ob perennem sermonum suorum praestantiam honoratus.

Ministerium eius artem praedicandi in fastigio suo celebrat, brevem, lucidam et Scriptura penitus imbutam, quae fidei mysteria hominibus simplicibus verbis quae capere et retinere possent aperire valebat. Sermones eius superstites proclamant suggestum, claritati et caritati potius quam ostentationi servientem, unum e potentissimis Ecclesiae instrumentis manere ad fidem populi sui formandam.

Petrus Ecclesiam Ravennae rexit cum ea caput imperiale magni ponderis esset, eiusque breves ac diligenter elaboratae homiliae, quarum magnus numerus superest, pastorem concretis gregis sui necessitatibus vehementer intentum revelant; circa annum 450 obiit, et Benedictus XIII Papa eum anno 1729 Ecclesiae Doctorem declaravit, plus quam mille annos post mortem eius. Scripta eius aetatibus sequentibus fenestram in praedicationem et pietatem Ecclesiae antiquae praebuerunt.

Testimonium eius praedicatores et fidei magistros vocat ut eandem claritatem eundemque calorem qui sermones eius notaverunt quaerant, atque omnem credentem invitat ut saepe et attente ad Scripturae verba ut ad certissimum fontem fidei facile intellectae firmiterque tentae redeat.
$desc$),
('saint-ignatius-of-loyola-priest', 'Sanctus Ignatius de Loyola, presbyter', $desc$
Ignatius de Loyola miles vasco fuit cuius bellicum vulnus, Dei providentia, ipsa plaga facta est quae eum ad sanctitatem aperuit. A vita mundanae ambitionis ad Christum conversus est, et unum ex ordinibus religiosis in Ecclesiae historia influentissimis condidit.

Hereditas eius spiritualis discretionem spirituum celebrat ac totalem talentorum et ambitionum oblationem ad maiorem Dei gloriam, finem quem formula Ad maiorem Dei gloriam celebrem fecit. Doctrina eius proclamat Deum in omnibus rebus inveniri et servari posse, atque ordinatum propriarum cogitationum, desideriorum et consolationum examen ipsum esse veram viam ad divinam voluntatem cognoscendam et sequendam.

Ad obsidionem Pampilonae anno 1521 vulneratus, Ignatius longam convalescentiam egit qua lectiones eius ambitiones a mundi gloria ad Christi sequelam averterunt, eum ducentes ut Exercitia Spiritualia componeret et, cum parva sociorum manu inter quos sanctus Franciscus Xaverius, Societatem Iesu anno 1540 conderet. Ordinis qui magna machina missionalis expansionis, educationis et reformationis factus est, fundator Romae anno 1556 obiit et anno 1622 canonizatus est.

Testimonium eius fideles invitat ut Deum active in omni ordinariae vitae adiuncto quaerant, atque, quaecumque sit eorum vocatio, ignatianum propositum suum faciant omne talentum omnemque ambitionem totam in servitium maioris Dei gloriae ponendi.
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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-thomas-apostle', $desc$
In the Roman General Calendar, this celebration falls on July 3 as a feast with white vestments. The postconciliar Roman calendar moved it from December 21 to July 3, following an ancient eastern association with the translation of his relics.
$desc$),
('saint-elizabeth-of-portugal', $desc$
In the Roman General Calendar, this celebration falls on July 4 as an optional memorial with white vestments. As an optional memorial, it may be observed wherever this witness speaks with particular force to local devotion or pastoral need.
$desc$),
('saint-anthony-zaccaria-priest', $desc$
In the Roman General Calendar, this celebration falls on July 5 as an optional memorial with white vestments. As an optional memorial, it may be observed wherever this witness speaks with particular force to local devotion or pastoral need.
$desc$),
('saint-maria-goretti-virgin-and-martyr', $desc$
In the Roman General Calendar, this celebration falls on July 6 as an optional memorial with red vestments. As an optional memorial, it may be observed wherever this witness speaks with particular force to local devotion or pastoral need.
$desc$),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', $desc$
In the Roman General Calendar, this celebration falls on July 9 as an optional memorial with red vestments. It entered the modern Roman calendar after the canonization of the one hundred and twenty martyrs in 2000.
$desc$),
('saint-benedict-abbot', $desc$
In the Roman General Calendar, this celebration falls on July 11 as an obligatory memorial with white vestments. The current Roman date reflects the tradition of the translation of his relics and allows his observance to stand outside Lent.
$desc$),
('saint-henry', $desc$
In the Roman General Calendar, this celebration falls on July 13 as an optional memorial with white vestments. As an optional memorial, it may be observed wherever this witness speaks with particular force to local devotion or pastoral need.
$desc$),
('saint-camillus-de-lellis-priest', $desc$
In the Roman General Calendar, this celebration falls on July 14 as an optional memorial with white vestments. As an optional memorial, it may be observed wherever this witness speaks with particular force to local devotion or pastoral need.
$desc$),
('saint-bonaventure-bishop-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on July 15 as an obligatory memorial with white vestments. As an obligatory memorial, it gives the Roman rite a stable yearly remembrance of this witness.
$desc$),
('our-lady-of-mount-carmel', $desc$
In the Roman General Calendar, this celebration falls on July 16 as an optional memorial with white vestments. In Roman usage this day is closely associated with the Brown Scapular and Carmelite devotion.
$desc$),
('saint-apollinaris-bishop-and-martyr', $desc$
In the Roman General Calendar, this celebration falls on July 20 as an optional memorial with red vestments. After disappearing from the 1969 general calendar, it was restored in the third edition of the Roman Missal as an optional memorial.
$desc$),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on July 21 as an optional memorial with white vestments. Its observance in the Roman rite gained further prominence after his proclamation as a Doctor of the Church in 1959.
$desc$),
('saint-mary-magdalene', $desc$
In the Roman General Calendar, this celebration falls on July 22 as a feast with white vestments. Pope Francis raised it from a memorial to a feast in 2016 to underscore her role as the first herald of the Resurrection.
$desc$),
('saint-bridget-religious', $desc$
In the Roman General Calendar, this celebration falls on July 23 as an optional memorial with white vestments. In contemporary Roman devotion the day also resonates with her title as one of the co-patronesses of Europe.
$desc$),
('saint-sharbel-makhluf-priest', $desc$
In the Roman General Calendar, this celebration falls on July 24 as an optional memorial with white vestments. Its presence in the Roman calendar makes a specifically Maronite witness more widely known in the Latin Church.
$desc$),
('saint-james-apostle', $desc$
In the Roman General Calendar, this celebration falls on July 25 as a feast with white vestments. Its rank gives this celebration a prominence above a memorial within Ordinary Time.
$desc$),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', $desc$
In the Roman General Calendar, this celebration falls on July 26 as an obligatory memorial with white vestments. The present Roman observance keeps Joachim and Anne together on one day, whereas older Western usage often commemorated them separately.
$desc$),
('saints-martha-mary-and-lazarus', $desc$
In the Roman General Calendar, this celebration falls on July 29 as an obligatory memorial with white vestments. In 2021 the Roman observance was broadened from Martha alone to include Mary and Lazarus as well.
$desc$),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on July 30 as an optional memorial with white vestments. As an optional memorial, it may be observed wherever this witness speaks with particular force to local devotion or pastoral need.
$desc$),
('saint-ignatius-of-loyola-priest', $desc$
In the Roman General Calendar, this celebration falls on July 31 as an obligatory memorial with white vestments. At the close of July it provides the Roman rite with a stable annual remembrance of Ignatian discernment and Jesuit spiritual heritage.
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
('saint-thomas-apostle', $desc$
Dans le calendrier romain général, cette célébration tombe le 3 juillet comme une fête avec la couleur liturgique blanche. Le calendrier romain postconciliaire l'a déplacée du 21 décembre au 3 juillet, en suivant une ancienne association orientale avec la translation de ses reliques.
$desc$),
('saint-elizabeth-of-portugal', $desc$
Dans le calendrier romain général, cette célébration tombe le 4 juillet comme une mémoire facultative avec la couleur liturgique blanche. Comme mémoire facultative, elle peut être observée là où ce témoignage répond plus particulièrement à la dévotion ou aux besoins pastoraux locaux.
$desc$),
('saint-anthony-zaccaria-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 5 juillet comme une mémoire facultative avec la couleur liturgique blanche. Comme mémoire facultative, elle peut être observée là où ce témoignage répond plus particulièrement à la dévotion ou aux besoins pastoraux locaux.
$desc$),
('saint-maria-goretti-virgin-and-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 6 juillet comme une mémoire facultative avec la couleur liturgique rouge. Comme mémoire facultative, elle peut être observée là où ce témoignage répond plus particulièrement à la dévotion ou aux besoins pastoraux locaux.
$desc$),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', $desc$
Dans le calendrier romain général, cette célébration tombe le 9 juillet comme une mémoire facultative avec la couleur liturgique rouge. Elle est entrée dans le calendrier romain moderne après la canonisation des cent vingt martyrs en 2000.
$desc$),
('saint-benedict-abbot', $desc$
Dans le calendrier romain général, cette célébration tombe le 11 juillet comme une mémoire obligatoire avec la couleur liturgique blanche. La date romaine actuelle reflète la tradition de la translation de ses reliques et permet de le célébrer hors du Carême.
$desc$),
('saint-henry', $desc$
Dans le calendrier romain général, cette célébration tombe le 13 juillet comme une mémoire facultative avec la couleur liturgique blanche. Comme mémoire facultative, elle peut être observée là où ce témoignage répond plus particulièrement à la dévotion ou aux besoins pastoraux locaux.
$desc$),
('saint-camillus-de-lellis-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 14 juillet comme une mémoire facultative avec la couleur liturgique blanche. Comme mémoire facultative, elle peut être observée là où ce témoignage répond plus particulièrement à la dévotion ou aux besoins pastoraux locaux.
$desc$),
('saint-bonaventure-bishop-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 15 juillet comme une mémoire obligatoire avec la couleur liturgique blanche. Comme mémoire obligatoire, elle donne au rite romain un repère annuel stable pour cette mémoire.
$desc$),
('our-lady-of-mount-carmel', $desc$
Dans le calendrier romain général, cette célébration tombe le 16 juillet comme une mémoire facultative avec la couleur liturgique blanche. Dans l'usage romain, cette journée est étroitement liée au scapulaire brun et à la dévotion carmélitaine.
$desc$),
('saint-apollinaris-bishop-and-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 20 juillet comme une mémoire facultative avec la couleur liturgique rouge. Après avoir disparu du calendrier général de 1969, cette mémoire a été rétablie comme mémoire facultative dans la troisième édition du Missel romain.
$desc$),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 21 juillet comme une mémoire facultative avec la couleur liturgique blanche. Son observance dans le rite romain a reçu un relief nouveau après sa proclamation comme docteur de l'Église en 1959.
$desc$),
('saint-mary-magdalene', $desc$
Dans le calendrier romain général, cette célébration tombe le 22 juillet comme une fête avec la couleur liturgique blanche. Le pape François l'a élevée de mémoire à fête en 2016 pour souligner son rôle de première messagère de la Résurrection.
$desc$),
('saint-bridget-religious', $desc$
Dans le calendrier romain général, cette célébration tombe le 23 juillet comme une mémoire facultative avec la couleur liturgique blanche. Dans la dévotion romaine contemporaine, cette journée résonne aussi avec son titre de co-patronne de l'Europe.
$desc$),
('saint-sharbel-makhluf-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 24 juillet comme une mémoire facultative avec la couleur liturgique blanche. Sa présence au calendrier romain fait mieux connaître dans l'Église latine un témoin proprement maronite.
$desc$),
('saint-james-apostle', $desc$
Dans le calendrier romain général, cette célébration tombe le 25 juillet comme une fête avec la couleur liturgique blanche. Son rang donne à cette célébration une importance supérieure à celle d'une simple mémoire dans le Temps ordinaire.
$desc$),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', $desc$
Dans le calendrier romain général, cette célébration tombe le 26 juillet comme une mémoire obligatoire avec la couleur liturgique blanche. L'observance romaine actuelle garde Joachim et Anne réunis le même jour, alors que l'usage occidental plus ancien les commémorait souvent séparément.
$desc$),
('saints-martha-mary-and-lazarus', $desc$
Dans le calendrier romain général, cette célébration tombe le 29 juillet comme une mémoire obligatoire avec la couleur liturgique blanche. En 2021, l'observance romaine a été élargie de Marthe seule à Marthe, Marie et Lazare ensemble.
$desc$),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 30 juillet comme une mémoire facultative avec la couleur liturgique blanche. Comme mémoire facultative, elle peut être observée là où ce témoignage répond plus particulièrement à la dévotion ou aux besoins pastoraux locaux.
$desc$),
('saint-ignatius-of-loyola-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 31 juillet comme une mémoire obligatoire avec la couleur liturgique blanche. À la fin de juillet, elle donne au rite romain un repère stable pour la mémoire annuelle du discernement ignatien et de l'héritage spirituel jésuite.
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
('saint-thomas-apostle', $desc$
In Calendario Romano Generali haec celebratio die 3 Iulii ut festum vestibus albis celebratur. Calendarium Romanum post Concilium celebrationem a die 21 Decembris ad diem 3 Iulii transtulit, antiquam consuetudinem orientalem de translatione reliquiarum secutum.
$desc$),
('saint-elizabeth-of-portugal', $desc$
In Calendario Romano Generali haec celebratio die 4 Iulii ut memoria ad libitum vestibus albis celebratur. Quia memoria ad libitum est, facilius celebratur ubi huius testis cultus aut vis pastoralis peculiarius eminet.
$desc$),
('saint-anthony-zaccaria-priest', $desc$
In Calendario Romano Generali haec celebratio die 5 Iulii ut memoria ad libitum vestibus albis celebratur. Quia memoria ad libitum est, facilius celebratur ubi huius testis cultus aut vis pastoralis peculiarius eminet.
$desc$),
('saint-maria-goretti-virgin-and-martyr', $desc$
In Calendario Romano Generali haec celebratio die 6 Iulii ut memoria ad libitum vestibus rubris celebratur. Quia memoria ad libitum est, facilius celebratur ubi huius testis cultus aut vis pastoralis peculiarius eminet.
$desc$),
('saint-augustine-zhao-rong-priest-and-companions-martyrs', $desc$
In Calendario Romano Generali haec celebratio die 9 Iulii ut memoria ad libitum vestibus rubris celebratur. In calendarium Romanum modernum recepta est post canonizationem centum viginti martyrum anno 2000.
$desc$),
('saint-benedict-abbot', $desc$
In Calendario Romano Generali haec celebratio die 11 Iulii ut memoria obligatoria vestibus albis celebratur. Dies hodiernus Romanus traditionem translationis reliquiarum refert et celebrationem eius extra Quadragesimam statuit.
$desc$),
('saint-henry', $desc$
In Calendario Romano Generali haec celebratio die 13 Iulii ut memoria ad libitum vestibus albis celebratur. Quia memoria ad libitum est, facilius celebratur ubi huius testis cultus aut vis pastoralis peculiarius eminet.
$desc$),
('saint-camillus-de-lellis-priest', $desc$
In Calendario Romano Generali haec celebratio die 14 Iulii ut memoria ad libitum vestibus albis celebratur. Quia memoria ad libitum est, facilius celebratur ubi huius testis cultus aut vis pastoralis peculiarius eminet.
$desc$),
('saint-bonaventure-bishop-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 15 Iulii ut memoria obligatoria vestibus albis celebratur. Quia memoria obligatoria est, ritui Romano stabilem annuam huius memoriae commemorationem praebet.
$desc$),
('our-lady-of-mount-carmel', $desc$
In Calendario Romano Generali haec celebratio die 16 Iulii ut memoria ad libitum vestibus albis celebratur. In usu Romano hic dies arcte cum scapulari fusco et devotione Carmelitana coniungitur.
$desc$),
('saint-apollinaris-bishop-and-martyr', $desc$
In Calendario Romano Generali haec celebratio die 20 Iulii ut memoria ad libitum vestibus rubris celebratur. Postquam e calendario generali anni 1969 omissus erat, in tertia editione Missalis Romani ut memoria ad libitum restitutus est.
$desc$),
('saint-lawrence-of-brindisi-priest-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 21 Iulii ut memoria ad libitum vestibus albis celebratur. Observantia eius in ritu Romano novum pondus accepit post declarationem eius ut Doctoris Ecclesiae anno 1959.
$desc$),
('saint-mary-magdalene', $desc$
In Calendario Romano Generali haec celebratio die 22 Iulii ut festum vestibus albis celebratur. Franciscus Papa anno 2016 eam a memoria ad gradum festi evexit, ut munus eius primae Resurrectionis praeconis extolleret.
$desc$),
('saint-bridget-religious', $desc$
In Calendario Romano Generali haec celebratio die 23 Iulii ut memoria ad libitum vestibus albis celebratur. In devotione Romana hodierna hic dies etiam cum titulo eius compatronae Europae resonat.
$desc$),
('saint-sharbel-makhluf-priest', $desc$
In Calendario Romano Generali haec celebratio die 24 Iulii ut memoria ad libitum vestibus albis celebratur. Praesentia eius in calendario Romano efficit ut testis proprie Maronita latius in Ecclesia Latina cognoscatur.
$desc$),
('saint-james-apostle', $desc$
In Calendario Romano Generali haec celebratio die 25 Iulii ut festum vestibus albis celebratur. Hic gradus celebrationi maiorem quam simplici memoriae in Tempore per annum dignitatem tribuit.
$desc$),
('saints-joachim-and-anne-parents-of-the-blessed-virgin-mary', $desc$
In Calendario Romano Generali haec celebratio die 26 Iulii ut memoria obligatoria vestibus albis celebratur. Observantia Romana hodierna Ioachim et Annam eodem die coniunctos servat, cum usus occidentalior antiquior eos saepe separatim commemoraret.
$desc$),
('saints-martha-mary-and-lazarus', $desc$
In Calendario Romano Generali haec celebratio die 29 Iulii ut memoria obligatoria vestibus albis celebratur. Anno 2021 observantia Romana a sola Martha ad Martham, Mariam et Lazarum simul extensa est.
$desc$),
('saint-peter-chrysologus-bishop-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 30 Iulii ut memoria ad libitum vestibus albis celebratur. Quia memoria ad libitum est, facilius celebratur ubi huius testis cultus aut vis pastoralis peculiarius eminet.
$desc$),
('saint-ignatius-of-loyola-priest', $desc$
In Calendario Romano Generali haec celebratio die 31 Iulii ut memoria obligatoria vestibus albis celebratur. In fine mensis Iulii ritui Romano stabilem praebet memoriam discretionis Ignatianae atque patrimonii spiritualis Societatis Iesu.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

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
SELECT f.id, 'en', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 'Saint Alphonsus Liguori, Bishop and Doctor of the Church', $desc$
Saint Alphonsus Liguori is honored as a bishop and Doctor of the Church, though he is remembered above all as a moral theologian who placed the whole weight of his learning at the service of ordinary sinners rather than the spiritually elite. His pastoral genius made him one of the Church's most influential guides for confessors and preachers.

The heart of his legacy is a moral theology that steered a middle course between excessive rigorism and dangerous laxity, the system later known as equiprobabilism. His insistence that the sacraments, especially penance and the Eucharist, be administered with both fidelity to the law and tender mercy toward the penitent flows from a deeper conviction: that grace seeks out the weak and the burdened rather than waiting for them to become strong.

Alphonsus founded the Congregation of the Most Holy Redeemer in 1732 to evangelize the rural poor neglected by more urban forms of pastoral care, and his vast writings, especially on prayer and devotion to Mary, shaped Catholic piety for generations after his death in 1787. He was declared a Doctor of the Church in 1871 in recognition of his enduring influence on moral theology and pastoral practice.

His witness calls confessors and pastors to imitate his balance of firm truth and compassionate accompaniment, and it reminds the whole Church that sound doctrine exists to serve, not to burden, souls seeking reconciliation with God.
$desc$),
('saint-eusebius-of-vercelli-bishop', 'Saint Eusebius of Vercelli, Bishop', $desc$
Saint Eusebius of Vercelli stands among the fourth century's staunchest defenders of Nicene orthodoxy against the Arian crisis that convulsed the Church. He is remembered as a bishop who joined the rigors of ascetical life to the labors of episcopal governance, an unusual pairing that would prove influential in the centuries after him.

His witness testifies that fidelity to right doctrine and personal holiness are not separable pursuits but mutually reinforcing dimensions of ministry. By gathering his clergy into a common life of prayer under a shared rule, he anticipated later forms of canonical religious life for priests, uniting the defense of the divinity of Christ with a discipline of conversion in his own household.

Eusebius was banished by the Emperor Constantius II for his opposition to Arian formulas at the Council of Milan in 355, spending years in harsh exile in the East before being restored to his see, where he died around 371. His memory endured in the Piedmont region he had shepherded and eventually entered the universal calendar as a witness to courageous fidelity under imperial pressure.

His example encourages bishops and all the faithful to hold fast to revealed truth even when doing so carries real cost, trusting that the Church's unity in faith outlasts the passing pressures of any age.
$desc$),
('saint-peter-julian-eymard-priest', 'Saint Peter Julian Eymard, Priest', $desc$
Saint Peter Julian Eymard, a nineteenth-century French priest known as the Apostle of the Eucharist, gave his life to a single conviction: that the Blessed Sacrament is the source from which all Christian holiness and apostolic charity must flow. His whole vocation gathered itself around adoration of the Real Presence.

For Eymard, Eucharistic adoration was never a private devotion added onto pastoral life but the very heart of it. His founding of the Congregation of the Blessed Sacrament and the Servants of the Blessed Sacrament gave institutional form to a spirituality centered on continuous adoration, reparation, and the reception of Communion as the wellspring of the Christian life.

Born in 1811, Eymard served as a diocesan priest and later a Marist before founding his own congregations in 1856 and 1858, dedicated exclusively to Eucharistic worship, work that met with both admiration and initial ecclesiastical caution before gaining full approval. He died in 1868 and was canonized in 1962, during the Second Vatican Council's own renewed emphasis on the Eucharist as source and summit of the Christian life.

His witness invites the faithful to rediscover Eucharistic adoration as the source of apostolic energy, reminding the Church that mission flows most fruitfully from contemplative rest before the presence of Christ.
$desc$),
('saint-jean-vianney-priest', 'Saint Jean Vianney, Priest', $desc$
Saint John Vianney, the Curé of Ars, is honored throughout the world as the patron of parish priests, a man whose life reveals the dignity and the demands of ordinary parish ministry. His fame rests not on learning or eloquence but on a holiness that transfigured the humblest of pastoral assignments.

Though possessing modest intellectual gifts by seminary standards, he transformed a small, spiritually indifferent village into a center of pilgrimage through relentless prayer, extraordinary penance, and above all countless hours spent hearing confessions. His ministry embodies the truth that pastoral fruitfulness depends less on human talent than on personal holiness and total availability to souls in need of mercy.

Jean-Baptiste Vianney was ordained in 1815 despite great academic struggle and assigned in 1818 to the obscure parish of Ars, where he remained until his death in 1859, drawing tens of thousands of penitents from across France by the end of his life. Pope Pius XI declared him patron of parish priests in 1929, cementing his place as a model of pastoral charity exercised in the humblest of circumstances.

His witness calls priests to renew their confidence in the sacrament of confession and their availability to the faithful, while inviting all Christians to appreciate the hidden, often unglamorous fidelity that sustains genuine pastoral care.
$desc$),
('the-dedication-of-the-basilica-of-saint-mary-major', 'The Dedication of the Basilica of Saint Mary Major', $desc$
This commemoration honors the dedication of the oldest Marian basilica in the West, raised in Rome in the wake of the Council of Ephesus. It is a feast of a building, yet a building whose very stones proclaim a doctrine: that Mary is truly the Mother of God.

The observance is inseparable from that doctrinal moment. The basilica was raised as a monument in stone to the truth, defined at Ephesus in 431, that the one Mary bore in her womb was, in his one Person, true God and true man. Its splendid mosaics, among the oldest and most theologically rich Marian art in Christendom, continue to instruct the faithful in the mysteries of the Incarnation and Mary's unique place within it.

Tradition recounts a miraculous summer snowfall on the Esquiline Hill that marked out where the church should rise, giving the basilica its popular title, Our Lady of the Snows; historically, Pope Sixtus III dedicated it around 434-440, in the years immediately following Ephesus. It remains one of Rome's four papal major basilicas and houses a relic long venerated as part of the crib of Bethlehem.

The commemoration invites the faithful to honor sacred architecture as a bearer of doctrine across centuries, and to renew devotion to Mary as Mother of God in the very city where that title was first solemnly vindicated.
$desc$),
('the-transfiguration-of-the-lord', 'The Transfiguration of the Lord', $desc$
The Transfiguration commemorates the moment when Jesus revealed his divine glory to Peter, James, and John on the mountain, appearing radiant with Moses and Elijah at his side. It stands among the principal Gospel manifestations of Christ's divine sonship.

Theologically the feast anticipates the glory of the Resurrection even as it strengthens the disciples, and through them the whole Church, to face the scandal of the Cross that Jesus had just foretold. The presence of Moses and Elijah signifies that the Law and the Prophets find their fulfillment in Christ, while the Father's voice, "This is my beloved Son, listen to him," echoes the words spoken at the Baptism and points forward to the definitive revelation accomplished in the Paschal mystery.

The feast has ancient roots in the Christian East, where it was kept from an early date among the Twelve Great Feasts, and it entered the Western calendar more gradually before being extended to the universal Church by Pope Callixtus III in 1456 in thanksgiving for the deliverance of Belgrade from the Ottoman advance. Its place in high summer also situates it, in agricultural societies, near the traditional blessing of first fruits.

Pastorally, the Transfiguration invites believers to hold together, as the disciples were asked to do, the mystery of suffering and the promise of glory, trusting that every trial faced in union with Christ is already illumined by the light glimpsed on the mountain.
$desc$),
('saint-sixtus-ii-pope-and-companions-martyrs', 'Saint Sixtus II, Pope, and Companions, Martyrs', $desc$
This commemoration honors Pope Sixtus II and several deacons martyred together during the persecution of the Emperor Valerian in 258. Theirs is a martyrdom of the sanctuary, for the pope was seized and killed while presiding at the Eucharistic liturgy in a Roman cemetery, with his deacons standing at his side rather than fleeing.

Their joint death illustrates the deep bond between the bishop of Rome and his closest collaborators, a bond of shared sacramental ministry that even mortal danger could not sever. It also prefigures the martyrdom of the deacon Lawrence, who served under Sixtus and followed him in death only days afterward, so that the two commemorations of early August belong together as a single testimony.

Valerian's edict of 258 specifically targeted the Christian clergy, ordering the immediate execution of bishops, priests, and deacons; Sixtus II was among the first Roman bishops to die under it, and his name was later inserted into the Roman Canon among the martyrs invoked at Mass. His memory has been kept continuously in Rome since antiquity.

The commemoration holds up the courage of those who remained faithful to their sacramental office even at the cost of life, encouraging clergy and faithful alike to see ministry itself as a form of witness that death cannot silence.
$desc$),
('saint-cajetan-priest', 'Saint Cajetan, Priest', $desc$
Saint Cajetan was a sixteenth-century Italian priest who devoted himself to the renewal of clerical life and to works of charity toward the poor and the sick. He belongs to that generation of reformers who sought to purify the Church from within, decades before the Council of Trent gave such impulses their conciliar expression.

At the center of his life stood the conviction that reform of the clergy begins with a return to apostolic simplicity: common life, unadorned trust in Providence rather than fixed income, and unflagging care for the abandoned, especially the sick in hospitals and the poor crushed by usurious debt. For Cajetan, institutional reform and practical charity were a single work of the Gospel.

He co-founded the Theatines in 1524, one of the first congregations of clerks regular, alongside Gian Pietro Carafa, the future Pope Paul IV, and he later founded charitable pawnshops offering low-interest loans to shield the poor from exploitation, a forerunner of the Catholic monti di pietà. He died in Naples in 1547 and was canonized in 1671.

His witness invites priests and the whole Church to see how the reform of institutions and love of the economically vulnerable belong together, rather than standing as separate or competing concerns.
$desc$),
('saint-dominic-priest', 'Saint Dominic, Priest', $desc$
Saint Dominic founded the Order of Preachers, one of the most influential religious families in the history of the Church, placing preaching and doctrinal formation at the very center of consecrated life. His charism married contemplative depth to active mission in a way that reshaped medieval Christianity.

His founding insight was that the struggle against heresy and religious ignorance required not merely refutation but a new form of religious life combining rigorous study, communal poverty, and itinerant preaching. The Dominican motto, to contemplate and to hand on to others the fruits of contemplation, captures a synthesis that continues to shape Catholic intellectual and pastoral life.

Dominic founded his order in 1216 in response to the Albigensian crisis in southern France, securing papal approval from Honorius III, and he sent his first friars to the great university cities of Europe to root preaching in serious theological formation. He died in Bologna in 1221 and was canonized in 1234, leaving behind an order that would produce some of the Church's greatest theologians, including Saint Thomas Aquinas.

His witness calls the faithful to esteem sound preaching and theological study as forms of charity toward souls hungry for truth, and it honors every effort to unite deep prayer with the courageous proclamation of the Gospel.
$desc$),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 'Saint Teresa Benedicta of the Cross, Virgin and Martyr', $desc$
Saint Teresa Benedicta of the Cross is the name in religion of Edith Stein, the Jewish-born philosopher and Carmelite nun murdered at Auschwitz in 1942. Her life gathers together, with rare intensity, the searching of modern philosophy, the depths of contemplative prayer, and the horror of the twentieth century's greatest crime.

Her journey from atheism through rigorous philosophical inquiry led her to baptism in 1922 and eventually to Carmel, where she took the name Teresa Benedicta of the Cross in recognition of the cross she perceived as her particular vocation, borne in solidarity with her Jewish people under Nazi persecution. Her death in the gas chambers, arrested precisely because of her Jewish ancestry despite her religious profession, binds the Shoah to the mystery of Christian martyrdom in a way the Church regards as deeply significant.

Stein was arrested in 1942 in reprisal for a Dutch bishops' letter condemning Nazi racial policies and deported to Auschwitz, where she died on the ninth of August that year. She was canonized in 1998 by Pope John Paul II, who later named her a co-patroness of Europe, holding her forward as a bridge between Judaism and Christianity and between rigorous intellectual life and total surrender to God.

Her witness invites reflection on the harmony of searching reason and living faith, and it stands as a solemn summons to resist every ideology of hatred, especially antisemitism, with the witness of charity even unto death.
$desc$),
('saint-lawrence-deacon-and-martyr', 'Saint Lawrence, Deacon and Martyr', $desc$
Saint Lawrence ranks among the most ancient and beloved of the Roman martyrs, a deacon of the Roman Church whose fidelity gave rise to one of Christianity's most enduring images of courage. His remembrance spread so widely and so early that he came to occupy an exceptional place among the Roman martyrs.

According to enduring tradition, when the civil authorities ordered him to hand over the treasures of the Church, he presented instead the poor whom he served as the Church's true riches, a gesture that reveals with striking clarity the deacon's vocation to charity as itself a sacred wealth. His reported martyrdom, roasted alive on a gridiron, became one of the most vivid emblems of steadfast faith in the whole martyrological tradition.

Lawrence died in 258, days after Pope Sixtus II under the same Valerianic persecution, and devotion to him grew with extraordinary speed; Saint Augustine and Saint Ambrose both preached on his courage, and churches in Rome and beyond were dedicated in his honor within a few generations. His feast has been kept with high solemnity in Rome since antiquity.

His witness lifts up the diaconal ministry of charity as an essential and irreplaceable expression of the Church's life, encouraging deacons and all the faithful to recognize the poor as bearers of a wealth no persecution can seize.
$desc$),
('saint-clare-virgin', 'Saint Clare, Virgin', $desc$
Saint Clare of Assisi, foundress of the Poor Clares, was among Saint Francis's earliest and most devoted followers, and she gave the Franciscan movement its enduring form of contemplative enclosure lived in radical poverty. Her life is a mirror held up to the poor and crucified Christ.

She is remembered for her fierce insistence on the privilege of poverty, a way of life she defended before popes themselves as essential to her community's fidelity to the Gospel, refusing every offer of relaxed rules or guaranteed income for her sisters. Her spirituality, centered on gazing upon Christ crucified as in a mirror, orients the whole contemplative life toward configuration to the poor and suffering Lord.

Clare fled her wealthy family's home in 1212 to join Francis's nascent movement, founding what became the Order of Poor Ladies at San Damiano, where she lived and governed for over forty years until her death in 1253, only two days after receiving papal confirmation of her Rule, the first religious rule known to have been written by a woman for women. She was canonized just two years later, in 1255.

Her witness calls religious and laity alike to consider how radical poverty, far from impoverishing the human spirit, can free it for a more single-hearted contemplation of Christ, and it honors the enduring gift of enclosed contemplative life within the Church.
$desc$),
('saint-jane-frances-de-chantal-religious', 'Saint Jane Frances de Chantal, Religious', $desc$
Saint Jane Frances de Chantal was a French widow, mother, and foundress whose spiritual friendship with Saint Francis de Sales became one of the great collaborations in the history of Catholic spirituality. Her holiness unfolded quietly, woven through the successive states of an ordinary yet remarkable life.

Her sanctity embraced several vocations in sequence: devoted wife, grieving widow, attentive mother, and finally consecrated foundress, showing that holiness is not confined to a single state of life but can run through the changing circumstances Providence allows. Her partnership with Francis de Sales in founding the Visitation gave institutional shape to a spirituality of gentleness, interior devotion, and accessibility to those, including the sick and elderly, excluded from stricter forms of religious life.

Widowed in 1601 after the accidental death of her husband, Jane Frances met Francis de Sales in 1604, and together they founded the Order of the Visitation of Holy Mary in 1610, a community meant to unite contemplative prayer with active charity apart from the austere penances of older orders. She died in 1641 and was canonized in 1767, leaving behind an order that still carries her spirit of gentle, interior devotion.

Her witness encourages the faithful, especially those navigating bereavement or vocational change, to trust that God can draw forth new and fruitful callings even from the most painful turns of a life's story.
$desc$),
('saints-pontian-pope-and-hippolytus-priest-martyrs', 'Saints Pontian, Pope, and Hippolytus, Priest, Martyrs', $desc$
This commemoration honors two third-century Roman martyrs whose story is remarkable for reconciling a pope and a onetime rival within a single act of witness. What began as bitter division ended as shared testimony, sealed in blood.

Pontian, the legitimate bishop of Rome, and Hippolytus, a learned priest and theologian who had for years led a schismatic community opposed to the Roman see, were condemned together to the mines of Sardinia under imperial persecution. Tradition holds that the two were reconciled before their deaths, so that division within the Church's leadership gave way, under the pressure of suffering, to restored unity, an image the Church treasures as a sign that shared martyrdom can heal even the deepest ecclesial wounds.

Pontian resigned the papacy in 235 to allow the election of a successor once he was condemned to hard labor, an early and significant precedent for papal resignation; Hippolytus, whose extensive theological and liturgical writings remain influential, died in the same exile. Their remains were later returned to Rome for honorable burial, testifying to the Church's full restoration of their communion.

Their witness speaks powerfully of the possibility of reconciliation even after serious ecclesial division, encouraging the faithful to seek unity in charity above the vindication of past disputes.
$desc$),
('saint-maximus-the-confessor', 'Saint Maximus the Confessor', $desc$
Saint Maximus the Confessor was a seventh-century monk and theologian who suffered greatly in defense of the full humanity of Christ. His title, the Confessor, marks him as one who bore witness to the faith through suffering short of death, and few have borne it at greater personal cost.

He is remembered for his defense of the teaching that Christ possesses both a divine and a human will, acting in perfect harmony, against the Monothelite position favored by imperial authority, which held that Christ had only a single divine will. His insistence, on the principle that what is not assumed is not healed, safeguarded the reality of Christ's human freedom and, with it, the full scope of the redemption offered to humanity's own power to will and choose.

For his opposition to imperial religious policy, Maximus suffered the amputation of his right hand and the removal of his tongue around 662, brutal punishments meant to silence both his writing and his preaching, and he died shortly afterward in exile in the Caucasus. His theological positions were vindicated at the Third Council of Constantinople in 680-681, which formally condemned Monothelitism.

His witness honors theologians and all believers who endure real suffering for the sake of doctrinal precision, reminding the Church that seemingly abstract questions about Christ's humanity carry immense consequences for human salvation.
$desc$),
('saint-maximilian-kolbe-priest-and-martyr', 'Saint Maximilian Kolbe, Priest and Martyr', $desc$
Saint Maximilian Kolbe was a twentieth-century Franciscan priest who offered his own life in exchange for that of a fellow prisoner at Auschwitz. His whole life had been consecrated to the Immaculate, and his final self-offering is inseparable from the Marian spirituality that shaped him.

His death was an act of substitutionary sacrifice in the starkest imaginable circumstances: when the camp authorities selected ten prisoners to die by starvation in reprisal for an escape, Kolbe volunteered to take the place of a married man with a family, a choice the Church reads as a luminous image of Christ's own self-offering. His lifelong Marian consecration, expressed through the Militia Immaculatae he founded, shaped a spirituality in which total surrender to Mary prepared him for the total surrender of his life.

Kolbe died on the fourteenth of August, 1941, having survived two weeks of starvation before being killed by lethal injection. The man whose life he saved, Franciszek Gajowniczek, survived the war and was present when Pope John Paul II canonized Kolbe in 1982 and declared him a martyr of charity.

His witness holds before the Church the possibility of heroic, freely chosen self-sacrifice for another, and it stands as an enduring sign that love proves stronger than the machinery of hatred and death.
$desc$),
('the-assumption-of-the-blessed-virgin-mary', 'The Assumption of the Blessed Virgin Mary', $desc$
The Assumption of the Blessed Virgin Mary celebrates Mary's being taken body and soul into heavenly glory, a mystery that stands at the summit of Christian hope for the destiny of the redeemed.

The solemnity proclaims the dogma, defined by Pope Pius XII in 1950, that Mary, at the end of her earthly life, was assumed body and soul into heavenly glory, a privilege flowing from her unique participation in her Son's victory over sin and death. As the first among the redeemed to share fully and bodily in the promise of the Resurrection, Mary stands as the pledge and image of what awaits every faithful Christian, binding the Church's Marian devotion inseparably to her hope in the resurrection of the body.

Belief in Mary's bodily assumption is attested in both East and West from the early centuries, celebrated liturgically as the Dormition in the Byzantine tradition and gradually incorporated into the Roman calendar by the seventh century, long before its formal definition. Pope Pius XII's constitution Munificentissimus Deus gave definitive doctrinal expression to a belief already deeply rooted in the Church's ancient liturgical and devotional life.

The solemnity invites the faithful to entrust their own hope of bodily resurrection to Mary's intercession, and it remains, in many cultures, an occasion for processions, blessings of the harvest, and communal festivity that binds devotion to Mary with gratitude for the goodness of creation.
$desc$),
('saint-stephen-of-hungary', 'Saint Stephen of Hungary', $desc$
Saint Stephen of Hungary was the first Christian king of his people, credited with establishing both the Church and a Christian civil order across his realm. He is honored as a model of Christian statesmanship, in whom royal power became an instrument of the Gospel.

He understood royal authority as inseparable from responsibility for the spiritual welfare of his people, founding dioceses, monasteries, and churches while codifying laws that protected the weak and fostered the practice of the faith throughout a still largely pagan land. His reign illustrates how legitimate political power, rightly exercised, can serve rather than rival the mission of the Church.

Crowned King of Hungary around the year 1000 with a crown traditionally linked to Pope Sylvester II, Stephen labored tirelessly to secure both the political unity and the Christian evangelization of his kingdom until his death in 1038; he was canonized in 1083 alongside his son Emeric, a rare instance of a ruler and his heir honored together as saints.

His witness offers political leaders a model of authority exercised in service of the common good and the flourishing of the faith, and it encourages the faithful to see in legitimate civil governance a field open to sanctification rather than an obstacle to it.
$desc$),
('saint-john-eudes-priest', 'Saint John Eudes, Priest', $desc$
Saint John Eudes was a seventeenth-century French priest who pioneered devotion to the Sacred Heart of Jesus and the Immaculate Heart of Mary, giving liturgical shape to a piety that would later spread through the whole Church. His theological instinct anticipated one of Catholicism's most cherished devotions.

He composed liturgical texts in honor of the Hearts of Jesus and Mary decades before the private revelations to Saint Margaret Mary Alacoque gave the devotion its wider popular expression. His preaching and pastoral labor throughout Normandy also placed great weight on the reform of clerical formation, a concern that bore fruit in one of his most lasting institutional achievements.

Eudes founded the Congregation of Jesus and Mary, known as the Eudists, in 1643, dedicated especially to the establishment of seminaries for the proper formation of priests, and he later founded the Order of Our Lady of Charity to care for women in difficult circumstances. He died in 1680 and was canonized in 1925, with Pope Pius XI hailing him as father, doctor, and apostle of the liturgical cult of the Hearts of Jesus and Mary.

His witness invites the faithful to deepen devotion to the Sacred and Immaculate Hearts as a school of love, uniting contemplation of Christ's mercy with imitation of Mary's interior union with her Son.
$desc$),
('saint-bernard-abbot-and-doctor-of-the-church', 'Saint Bernard, Abbot and Doctor of the Church', $desc$
Saint Bernard of Clairvaux was one of the most influential monastic reformers and mystical theologians of the Middle Ages, an abbot whose eloquence shaped both the interior life of monks and the wider affairs of the Church. He is often called the Marian Doctor for the tenderness of his devotion to the Mother of God.

His mystical theology centered on love as the path by which the soul is drawn into union with God, expressed above all in his celebrated sermons on the Song of Songs, while his reform gave the Cistercian order its byword of austere fervor. In him contemplative depth and warm affective piety were woven together in a manner that would influence centuries of spiritual writing.

Bernard entered Cîteaux in 1112 and founded Clairvaux in 1115, from which the Cistercian reform spread rapidly across Europe; he also intervened decisively in the wider life of the Church, preaching the Second Crusade and helping to resolve a papal schism. He died in 1153 and was canonized in 1174, later being declared a Doctor of the Church in 1830.

His witness invites the faithful to seek God not merely through argument but through the transforming experience of love, and it holds up monastic life as a wellspring of theology capable of enriching the whole Church.
$desc$),
('saint-pius-x-pope', 'Saint Pius X, Pope', $desc$
Saint Pius X is remembered above all for his pastoral reforms concerning the Eucharist and for his resistance to theological modernism. His motto, to restore all things in Christ, guided a wide-ranging program of renewal that touched the ordinary life of every Catholic.

His most enduring pastoral legacy was to lower the age for First Communion to the age of reason and to encourage frequent, even daily, Communion, decisions that reshaped ordinary Catholic practice by restoring immediate access to the Eucharist as nourishment for everyday discipleship rather than a rare and solemn exception. He likewise promoted the reform of Gregorian chant and of catechetical instruction, seeking a Church whose worship and teaching were both accessible and doctrinally sound.

Born Giuseppe Sarto in 1835, he was elected pope in 1903 and undertook a significant codification of canon law, later completed under his successor, along with a firm response to modernist currents he judged incompatible with the Church's doctrinal integrity. He died in 1914, shortly after the outbreak of the First World War, and was canonized in 1954.

His witness invites the faithful to treasure ready access to the Eucharist as central to Christian life, and it commends careful discernment between authentic doctrinal development and currents that would dissolve the coherence of the faith.
$desc$),
('the-queenship-of-the-blessed-virgin-mary', 'The Queenship of the Blessed Virgin Mary', $desc$
The Queenship of Mary celebrates the exaltation of the Mother of God, who shares in the royal dignity of her risen Son.

The celebration proclaims that Mary, assumed body and soul into heaven, reigns with Christ as Queen of heaven and earth, a queenship rooted not in worldly power but in her unique cooperation with the redemption and her perfect conformity to her Son, the King of the universe. Her royal dignity is thus inseparable from her humility, since it was precisely as the lowly handmaid of the Lord that she was exalted above every creature.

Devotion to Mary's queenship has ancient roots in Christian art and hymnody, but the feast in its present form was instituted by Pope Pius XII in 1954, in the encyclical Ad Caeli Reginam, marking the centenary of the dogma of the Immaculate Conception and deliberately linked to the Assumption defined just four years earlier.

The memorial invites the faithful to approach Mary with the confidence due a mother who reigns as queen, entrusting to her every need of the Church and the world, while recalling that all true royal dignity in the Kingdom of God is exercised, as hers was, through humble service.
$desc$),
('saint-rose-of-lima-virgin', 'Saint Rose of Lima, Virgin', $desc$
Saint Rose of Lima was the first canonized saint of the Americas, a laywoman renowned for extraordinary penance and mystical prayer in colonial Peru. Her holiness marked a singular flowering of sanctity in the newly evangelized New World.

She embraced a radical penitential asceticism, undertaken as a Dominican tertiary living within her family home rather than in a convent, out of a conviction that intense suffering, freely accepted, could be united to Christ's own passion for the salvation of souls. Her care for the poor, the sick, and the indigenous peoples of Lima accompanied her contemplative life, showing that rigorous asceticism and practical charity are not opposed but can flow from a single, consuming love of God.

Born Isabel Flores de Oliva in Lima in 1586, she took the religious name Rose and lived as a Dominican tertiary until her death in 1617; she was canonized in 1671 by Pope Clement X, the first person born in the Americas to be so honored, and was later named patroness of Latin America, the Philippines, and the Indies.

Her witness honors the vocation of lay penitents and tertiaries within the Church, and it stands as a sign of the sanctity that took root in the newly evangelized lands of the Americas from the Church's earliest missionary encounter with the continent.
$desc$),
('saint-bartholomew-apostle', 'Saint Bartholomew, Apostle', $desc$
Saint Bartholomew was one of the Twelve chosen by Christ, traditionally identified with the Nathanael of John's Gospel, and so belongs to the apostolic foundation of the Church.

Jesus himself praised him as an Israelite in whom there is no duplicity, a description the Church reads as a model of the guileless faith to which every believer is called. Tradition holds that Bartholomew carried the Gospel to distant lands, including Armenia and India, and that he suffered a particularly severe martyrdom, traditionally by flaying, a fate later immortalized in Christian art, most famously in Michelangelo's Last Judgment.

Little historical detail survives beyond the Gospel references that name him among the Twelve, but ancient tradition consistently associates him with missionary labor in Armenia, where he is venerated as a founding apostle of that ancient Christian nation, and his relics have been objects of devotion in Rome and elsewhere since antiquity.

His witness invites believers to imitate the transparency of heart for which Christ commended him, and it honors the missionary courage of apostles who carried the Gospel to the ends of the known world at the cost of their own lives.
$desc$),
('saint-louis', 'Saint Louis', $desc$
Saint Louis, King Louis IX of France, is remembered as a model of Christian kingship marked by justice, personal austerity, and devotion to the poor. In him sanctity was exercised not apart from temporal power but in its very midst, sanctifying the demanding office of a medieval monarch.

He understood his royal office as a trust to be exercised for the good of his subjects rather than for personal aggrandizement, reforming the administration of justice, tending personally to the sick and the destitute, and setting the honesty of a Christian ruler above the calculations of statecraft. His life gave the later Middle Ages its enduring ideal of the just and pious king.

Louis IX reigned as King of France from 1226 until his death in 1270 during the Eighth Crusade near Tunis, and he was canonized in 1297 by Pope Boniface VIII, becoming one of the few kings of France honored as a saint and a touchstone for the ideal of Christian monarchy for centuries afterward.

His witness offers those who exercise public authority a model of governance ordered to justice and care for the vulnerable, and it reminds the whole Church that worldly power, when animated by genuine faith, can become a real instrument of holiness.
$desc$),
('saint-joseph-calasanz-priest', 'Saint Joseph Calasanz, Priest', $desc$
Saint Joseph Calasanz founded the first free public schools in Europe dedicated to the education of poor children, and he is honored as a pioneer of Christian education. His life bound the mission of the Church to the classroom, seeing in the instruction of the young a work of the Gospel.

He was convinced that education was among the most powerful instruments for lifting children out of poverty and ignorance, and that this work belonged properly to the mission of the Church, since the formation of intellect and conscience together prepares children for both temporal flourishing and eternal salvation. His insistence on free, quality schooling for the poor anticipated by centuries later movements toward universal education.

Calasanz founded the Piarist order in Rome in 1597 to establish and staff schools for poor children, facing significant institutional difficulties and even a temporary suppression of his congregation late in his life before it was ultimately restored; he died in 1648, and the Piarists were later vindicated and flourished across Europe. He was canonized in 1767.

His witness honors the dignity of teaching as a form of charity and evangelization, and it encourages the Church to keep the education of the poor among the essential dimensions of its mission in the world.
$desc$),
('saint-monica', 'Saint Monica', $desc$
Saint Monica is honored as the mother whose persevering prayer and tears accompanied the long conversion of her son, Saint Augustine of Hippo. Her story has long been linked in Christian memory with that of her son Augustine, whose conversion she sought with untiring prayer.

Hers is a model of maternal faith exercised through decades of patient intercession, enduring a difficult marriage and years of anguish over her son's wayward youth and adherence to Manichaean error before witnessing, near the very end of her life, his baptism and conversion to the Catholic faith. Her example shows that persevering prayer, sustained even when its answer seems endlessly deferred, remains one of the most powerful forms of participation in another soul's salvation.

Monica followed her son from North Africa to Italy, praying constantly for his conversion, and was present in Milan for his baptism by Saint Ambrose in 387; she died later that same year at Ostia, in a scene of shared mystical contemplation with Augustine that he later recounted movingly in his Confessions, among the most celebrated passages in Christian literature.

Her witness comforts every parent who prays for a wayward child, holding up the hope that grace can accomplish, in God's own time, what human effort and worry alone cannot achieve.
$desc$),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 'Saint Augustine of Hippo, Bishop and Doctor of the Church', $desc$
Saint Augustine of Hippo is among the most influential theologians in the history of Western Christianity, whose writings shaped Catholic doctrine on grace, the Trinity, and the nature of the Church for over a millennium and a half. His conversion, inseparable from the prayers of his mother Monica, has made his story one of the best-loved testimonies to the triumph of grace.

His life turned upon a dramatic conversion from restless ambition and disordered love, movingly recounted in his Confessions, to a life wholly given to God, a journey he summed up in his famous conviction that the human heart remains restless until it rests in God. His theological legacy, especially his teaching on grace developed against the Pelagian controversy, established the framework within which the Western Church would understand human freedom, sin, and divine mercy for centuries.

Baptized by Saint Ambrose in Milan in 387 through the prayers of his mother, Augustine returned to North Africa, was ordained a priest and then bishop of Hippo in 395, and produced an immense body of writing, including the City of God, before his death in 430 as the Vandals besieged his city, at the twilight of Roman Africa.

His witness invites believers to trust that no life is too disordered for grace to reach, and it commends sustained reflection on grace and freedom as an enduring service the Church owes to every generation.
$desc$),
('the-passion-of-saint-john-the-baptist-martyr', 'The Passion of Saint John the Baptist, Martyr', $desc$
This commemoration, commonly called the Beheading of Saint John the Baptist, marks the martyrdom of the last and greatest of the Old Testament prophets, the herald of Christ. He who first pointed to the Lamb of God now precedes him even into death.

It recalls the Gospel account of Herod's unlawful marriage to Herodias, John's fearless denunciation of that union as contrary to the law of God, and his beheading at the request of Herodias's daughter, a death exacted through royal vanity and a reckless oath rather than any process of law. John's martyrdom for defending the sanctity of marriage against political convenience crowns his whole mission: having pointed to Christ throughout his life, he now prefigures the Lord's own unjust condemnation.

The Gospels of Mark and Matthew provide the narrative on which this ancient commemoration rests, and it has been kept in the Roman calendar since antiquity as a companion to the celebration of John's nativity on June 24, the only figure apart from Christ and Mary whose death and birth the Roman Rite both commemorate.

The commemoration honors the courage to speak uncomfortable moral truth to those in power, whatever the personal cost, and it holds up John's fidelity even unto death as the fitting close of the herald's mission to prepare the way of the Lord.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- FR translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'fr', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 'Saint Alphonse de Liguori, évêque et docteur de l''Église', $desc$
Saint Alphonse de Liguori est honoré comme évêque et docteur de l'Église, mais on le connaît surtout comme un théologien moraliste qui mit tout le poids de sa science au service des pécheurs ordinaires plutôt que des âmes déjà avancées. Son génie pastoral fit de lui l'un des guides les plus influents de l'Église pour les confesseurs et les prédicateurs.

Le cœur de son héritage est une théologie morale traçant une voie médiane entre un rigorisme excessif et un laxisme dangereux, le système que l'on appellera équiprobabilisme. Son insistance à administrer les sacrements, surtout la pénitence et l'Eucharistie, avec à la fois fidélité à la loi et tendre miséricorde envers le pénitent, jaillit d'une conviction plus profonde : la grâce recherche les faibles et les accablés plutôt que d'attendre qu'ils deviennent forts.

Alphonse fonda en 1732 la Congrégation du Très Saint Rédempteur pour évangéliser les pauvres des campagnes négligés par des formes plus urbaines de soin pastoral, et son immense œuvre écrite, notamment sur la prière et la dévotion à Marie, forma la piété catholique pendant des générations après sa mort en 1787. Il fut proclamé docteur de l'Église en 1871 en reconnaissance de son influence durable sur la théologie morale et la pratique pastorale.

Son témoignage appelle confesseurs et pasteurs à imiter chez lui l'équilibre entre vérité ferme et accompagnement compatissant, et il rappelle à toute l'Église que la saine doctrine existe pour servir, non pour accabler, les âmes en quête de réconciliation avec Dieu.
$desc$),
('saint-eusebius-of-vercelli-bishop', 'Saint Eusèbe de Verceil, évêque', $desc$
Saint Eusèbe de Verceil compte parmi les plus fermes défenseurs de l'orthodoxie nicéenne au IVe siècle, face à la crise arienne qui bouleversa l'Église. On le retient comme un évêque qui unit les rigueurs de la vie ascétique aux labeurs du gouvernement épiscopal, alliance peu commune qui devait marquer les siècles suivants.

Son témoignage atteste que fidélité à la vraie doctrine et sainteté personnelle ne sont pas des voies séparées, mais des dimensions qui se renforcent mutuellement. En réunissant son clergé dans une vie commune de prière sous une règle partagée, il anticipa des formes ultérieures de vie religieuse canoniale pour prêtres, unissant la défense de la divinité du Christ à une discipline de conversion dans sa propre maison.

Eusèbe fut banni par l'empereur Constance II pour son opposition aux formules ariennes au concile de Milan en 355, passant des années d'exil rigoureux en Orient avant d'être rétabli sur son siège, où il mourut vers 371. Sa mémoire perdura dans la région piémontaise qu'il avait gouvernée et entra finalement dans le calendrier universel comme témoignage de fidélité courageuse sous la pression impériale.

Son exemple encourage les évêques et tous les fidèles à tenir ferme à la vérité révélée même lorsque cela comporte un coût réel, confiants que l'unité de l'Église dans la foi survit aux pressions passagères de toute époque.
$desc$),
('saint-peter-julian-eymard-priest', 'Saint Pierre-Julien Eymard, prêtre', $desc$
Saint Pierre-Julien Eymard, prêtre français du XIXe siècle appelé l'Apôtre de l'Eucharistie, consacra sa vie à une seule conviction : le Saint-Sacrement est la source d'où doivent jaillir toute sainteté chrétienne et toute charité apostolique. Sa vocation tout entière se rassembla autour de l'adoration de la présence réelle.

Pour Eymard, l'adoration eucharistique ne fut jamais une dévotion privée ajoutée à la vie pastorale, mais son cœur même. La fondation de la Congrégation du Saint-Sacrement et des Servantes du Saint-Sacrement donna forme institutionnelle à une spiritualité centrée sur l'adoration continue, la réparation et la réception de la communion comme source de la vie chrétienne.

Né en 1811, Eymard fut prêtre diocésain puis mariste avant de fonder ses propres congrégations en 1856 et 1858, consacrées exclusivement au culte eucharistique, œuvre qui rencontra à la fois admiration et prudence ecclésiastique initiale avant d'obtenir pleine approbation. Il mourut en 1868 et fut canonisé en 1962, au moment même où le concile Vatican II renouvelait l'accent mis sur l'Eucharistie comme source et sommet de la vie chrétienne.

Son témoignage invite les fidèles à redécouvrir l'adoration eucharistique comme source de l'énergie apostolique, rappelant à l'Église que la mission jaillit le plus fructueusement du repos contemplatif devant la présence du Christ.
$desc$),
('saint-jean-vianney-priest', 'Saint Jean-Marie Vianney, prêtre', $desc$
Saint Jean-Marie Vianney, le Curé d'Ars, est honoré dans le monde entier comme le patron des curés, un homme dont la vie révèle la dignité et les exigences du ministère paroissial ordinaire. Sa renommée ne tient ni au savoir ni à l'éloquence, mais à une sainteté qui transfigura la plus humble des charges pastorales.

Malgré des dons intellectuels modestes selon les critères du séminaire, il transforma un petit village spirituellement indifférent en un centre de pèlerinage par une prière incessante, une pénitence extraordinaire et surtout d'innombrables heures passées à confesser. Son ministère incarne la vérité selon laquelle la fécondité pastorale dépend moins du talent humain que de la sainteté personnelle et de la disponibilité totale envers les âmes en quête de miséricorde.

Jean-Baptiste Vianney fut ordonné en 1815 malgré de grandes difficultés scolaires et affecté en 1818 à l'obscure paroisse d'Ars, où il demeura jusqu'à sa mort en 1859, attirant des dizaines de milliers de pénitents de toute la France à la fin de sa vie. Le pape Pie XI le déclara patron des curés en 1929, consacrant sa place de modèle de charité pastorale exercée dans les circonstances les plus humbles.

Son témoignage appelle les prêtres à renouveler leur confiance dans le sacrement de la confession et leur disponibilité envers les fidèles, tout en invitant tous les chrétiens à apprécier la fidélité cachée, souvent sans éclat, qui soutient un authentique soin pastoral.
$desc$),
('the-dedication-of-the-basilica-of-saint-mary-major', 'Dédicace de la basilique Sainte-Marie-Majeure', $desc$
Cette commémoration honore la dédicace de la plus ancienne basilique mariale d'Occident, élevée à Rome au lendemain du concile d'Éphèse. C'est la fête d'un édifice, mais d'un édifice dont les pierres mêmes proclament une doctrine : Marie est véritablement Mère de Dieu.

La célébration est indissociable de ce moment doctrinal. La basilique fut élevée comme un monument de pierre à la vérité, définie à Éphèse en 431, selon laquelle celui que Marie porta en son sein était, en sa personne unique, vrai Dieu et vrai homme. Ses splendides mosaïques, parmi les plus anciennes et les plus riches théologiquement de l'art marial chrétien, continuent d'instruire les fidèles sur les mystères de l'Incarnation et la place unique de Marie en son sein.

La tradition rapporte une neige miraculeuse tombée en plein été sur l'Esquilin, indiquant l'emplacement où l'église devait s'élever, donnant à la basilique son titre populaire de Notre-Dame des Neiges ; historiquement, le pape Sixte III la dédia vers 434-440, dans les années qui suivirent immédiatement Éphèse. Elle demeure l'une des quatre basiliques papales majeures de Rome et conserve une relique vénérée de longue date comme provenant de la crèche de Bethléem.

Cette commémoration invite les fidèles à honorer l'architecture sacrée comme porteuse de doctrine à travers les siècles, et à renouveler la dévotion à Marie Mère de Dieu dans la ville même où ce titre fut solennellement défendu pour la première fois.
$desc$),
('the-transfiguration-of-the-lord', 'Transfiguration du Seigneur', $desc$
La Transfiguration commémore le moment où Jésus révéla sa gloire divine à Pierre, Jacques et Jean sur la montagne, apparaissant resplendissant aux côtés de Moïse et d'Élie. Elle compte parmi les grandes manifestations évangéliques de la gloire filiale du Christ.

Sur le plan théologique, la fête anticipe la gloire de la Résurrection tout en fortifiant les disciples, et par eux toute l'Église, pour affronter le scandale de la Croix que Jésus venait d'annoncer. La présence de Moïse et d'Élie signifie que la Loi et les Prophètes trouvent leur accomplissement dans le Christ, tandis que la voix du Père, « Celui-ci est mon Fils bien-aimé, écoutez-le », fait écho aux paroles prononcées au Baptême et annonce la révélation définitive accomplie dans le mystère pascal.

La fête a des racines anciennes en Orient chrétien, où elle fut comptée dès une date ancienne parmi les Douze Grandes Fêtes, et elle entra plus graduellement dans le calendrier occidental avant d'être étendue à l'Église universelle par le pape Calixte III en 1456, en action de grâce pour la délivrance de Belgrade de l'avancée ottomane. Sa place en plein été la situe aussi, dans les sociétés agricoles, près de la bénédiction traditionnelle des premiers fruits.

Sur le plan pastoral, la Transfiguration invite les croyants à tenir ensemble, comme il fut demandé aux disciples, le mystère de la souffrance et la promesse de la gloire, confiants que toute épreuve affrontée en union avec le Christ est déjà illuminée par la lumière entrevue sur la montagne.
$desc$),
('saint-sixtus-ii-pope-and-companions-martyrs', 'Saint Sixte II, pape, et ses compagnons, martyrs', $desc$
Cette commémoration honore le pape Sixte II et plusieurs diacres martyrisés ensemble durant la persécution de l'empereur Valérien en 258. C'est un martyre du sanctuaire, car le pape fut saisi et mis à mort alors qu'il présidait la liturgie eucharistique dans un cimetière romain, ses diacres demeurant à ses côtés plutôt que de fuir.

Leur mort commune illustre le lien profond entre l'évêque de Rome et ses plus proches collaborateurs, un lien de ministère sacramentel partagé qu'aucun danger mortel ne put rompre. Elle préfigure aussi le martyre du diacre Laurent, qui servait sous Sixte et le suivit dans la mort quelques jours plus tard, de sorte que les deux commémorations du début d'août forment un seul témoignage.

L'édit de Valérien de 258 visait spécifiquement le clergé chrétien, ordonnant l'exécution immédiate des évêques, prêtres et diacres ; Sixte II fut parmi les premiers évêques de Rome à mourir sous ce décret, et son nom fut plus tard inséré dans le Canon romain parmi les martyrs invoqués à la messe. Sa mémoire s'est perpétuée à Rome depuis l'Antiquité.

Cette commémoration honore le courage de ceux qui restèrent fidèles à leur charge sacramentelle au prix même de leur vie, encourageant clergé et fidèles à voir dans le ministère lui-même une forme de témoignage que la mort ne peut faire taire.
$desc$),
('saint-cajetan-priest', 'Saint Gaétan, prêtre', $desc$
Saint Gaétan fut un prêtre italien du XVIe siècle qui se consacra au renouveau de la vie cléricale et aux œuvres de charité envers les pauvres et les malades. Il appartient à cette génération de réformateurs qui cherchèrent à purifier l'Église de l'intérieur, des décennies avant que le concile de Trente ne donne à ces élans leur expression conciliaire.

Au centre de sa vie se tenait la conviction que la réforme du clergé commence par un retour à la simplicité apostolique : vie commune, confiance dépouillée en la Providence plutôt qu'en un revenu fixe, et soin inlassable des délaissés, en particulier les malades dans les hôpitaux et les pauvres accablés de dettes usuraires. Pour Gaétan, réforme des institutions et charité concrète formaient une seule œuvre de l'Évangile.

Il cofonda en 1524 les Théatins, l'une des premières congrégations de clercs réguliers, avec Gian Pietro Carafa, futur pape Paul IV, et il fonda plus tard des monts-de-piété charitables offrant des prêts à faible intérêt pour protéger les pauvres de l'exploitation, préfigurant la tradition catholique des monti di pietà. Il mourut à Naples en 1547 et fut canonisé en 1671.

Son témoignage invite les prêtres et toute l'Église à voir comment la réforme des institutions et l'amour des plus vulnérables sur le plan économique vont ensemble, plutôt que de se poser en préoccupations séparées ou rivales.
$desc$),
('saint-dominic-priest', 'Saint Dominique, prêtre', $desc$
Saint Dominique fonda l'Ordre des Prêcheurs, l'une des familles religieuses les plus influentes de l'histoire de l'Église, plaçant la prédication et la formation doctrinale au cœur même de la vie consacrée. Son charisme unit profondeur contemplative et mission active d'une manière qui remodela la chrétienté médiévale.

Son intuition fondatrice fut que la lutte contre l'hérésie et l'ignorance religieuse exigeait non seulement la réfutation, mais une forme nouvelle de vie religieuse alliant étude rigoureuse, pauvreté communautaire et prédication itinérante. La devise dominicaine, contempler et transmettre aux autres les fruits de la contemplation, résume une synthèse qui continue de façonner la vie intellectuelle et pastorale catholique.

Dominique fonda son ordre en 1216 en réponse à la crise albigeoise du sud de la France, obtenant l'approbation du pape Honorius III, et il envoya ses premiers frères dans les grandes villes universitaires d'Europe pour enraciner la prédication dans une sérieuse formation théologique. Il mourut à Bologne en 1221 et fut canonisé en 1234, laissant un ordre qui devait produire quelques-uns des plus grands théologiens de l'Église, dont saint Thomas d'Aquin.

Son témoignage appelle les fidèles à estimer la saine prédication et l'étude théologique comme des formes de charité envers les âmes assoiffées de vérité, et il honore tout effort d'unir la prière profonde à la proclamation courageuse de l'Évangile.
$desc$),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 'Sainte Thérèse-Bénédicte de la Croix, vierge et martyre', $desc$
Sainte Thérèse-Bénédicte de la Croix est le nom en religion d'Edith Stein, la philosophe d'origine juive devenue carmélite, assassinée à Auschwitz en 1942. Sa vie rassemble, avec une rare intensité, la recherche de la philosophie moderne, les profondeurs de la prière contemplative et l'horreur du plus grand crime du XXe siècle.

Son cheminement, de l'athéisme jusqu'à une rigoureuse enquête philosophique, la conduisit au baptême en 1922 puis au Carmel, où elle prit le nom de Thérèse-Bénédicte de la Croix, reconnaissant dans la croix sa vocation particulière, portée en solidarité avec son peuple juif sous la persécution nazie. Sa mort dans les chambres à gaz, arrêtée précisément en raison de son ascendance juive malgré sa profession religieuse, unit la Shoah au mystère du martyre chrétien d'une manière que l'Église tient pour profondément significative.

Edith Stein fut arrêtée en 1942 en représailles à une lettre des évêques néerlandais condamnant les politiques raciales nazies, et déportée à Auschwitz, où elle mourut le 9 août de cette année-là. Elle fut canonisée en 1998 par le pape Jean-Paul II, qui la nomma plus tard copatronne de l'Europe, la proposant comme un pont entre le judaïsme et le christianisme, et entre la vie intellectuelle rigoureuse et le don total à Dieu.

Son témoignage invite à méditer l'harmonie de la raison qui cherche et de la foi qui vit, et il demeure un rappel solennel de l'appel de l'Église à résister à toute idéologie de haine, spécialement l'antisémitisme, par le témoignage de la charité jusqu'à la mort.
$desc$),
('saint-lawrence-deacon-and-martyr', 'Saint Laurent, diacre et martyr', $desc$
Saint Laurent compte parmi les plus anciens et les plus aimés des martyrs romains, un diacre de l'Église de Rome dont la fidélité donna naissance à l'une des images les plus durables du courage chrétien. Sa mémoire se répandit si largement et si tôt qu'il en vint à occuper une place exceptionnelle parmi les martyrs romains.

Selon une tradition tenace, sommé par les autorités civiles de livrer les trésors de l'Église, il présenta à leur place les pauvres qu'il servait comme les vraies richesses de l'Église, geste qui révèle avec éclat la vocation du diacre à la charité comme une richesse sacrée. Son martyre, brûlé vif sur un gril d'après la tradition, devint l'un des emblèmes les plus vifs de la foi inébranlable dans toute la tradition martyrologique.

Laurent mourut en 258, quelques jours après le pape Sixte II sous la même persécution de Valérien, et la dévotion à son égard grandit avec une rapidité extraordinaire ; saint Augustin et saint Ambroise prêchèrent tous deux sur son courage, et des églises furent dédiées en son honneur à Rome et au-delà en l'espace de quelques générations. Sa fête est gardée avec grande solennité à Rome depuis l'Antiquité.

Son témoignage met en lumière le ministère diaconal de la charité comme une expression essentielle et irremplaçable de la vie de l'Église, encourageant les diacres et tous les fidèles à reconnaître dans les pauvres les porteurs d'une richesse qu'aucune persécution ne peut saisir.
$desc$),
('saint-clare-virgin', 'Sainte Claire, vierge', $desc$
Sainte Claire d'Assise, fondatrice des Clarisses, fut l'une des premières et des plus dévouées disciples de saint François, et elle donna au mouvement franciscain sa forme durable de clôture contemplative vécue dans une pauvreté radicale. Sa vie est un miroir tendu vers le Christ pauvre et crucifié.

On la retient pour son insistance ardente sur le privilège de la pauvreté, mode de vie qu'elle défendit devant les papes eux-mêmes comme essentiel à la fidélité de sa communauté à l'Évangile, refusant toute offre de règle adoucie ou de revenu garanti pour ses sœurs. Sa spiritualité, centrée sur la contemplation du Christ crucifié comme dans un miroir, oriente toute la vie contemplative vers la configuration au Seigneur pauvre et souffrant.

Claire s'enfuit de la maison de sa riche famille en 1212 pour rejoindre le mouvement naissant de François, fondant ce qui devint l'Ordre des Pauvres Dames à Saint-Damien, où elle vécut et gouverna plus de quarante ans jusqu'à sa mort en 1253, deux jours seulement après avoir reçu la confirmation pontificale de sa Règle, la première règle religieuse connue écrite par une femme pour des femmes. Elle fut canonisée deux ans plus tard, en 1255.

Son témoignage invite religieux et laïcs à considérer comment la pauvreté radicale, loin d'appauvrir l'esprit humain, peut le libérer pour une contemplation du Christ plus indivise, et il honore le don durable de la vie contemplative cloîtrée dans l'Église.
$desc$),
('saint-jane-frances-de-chantal-religious', 'Sainte Jeanne-Françoise de Chantal, religieuse', $desc$
Sainte Jeanne-Françoise de Chantal fut une veuve, mère et fondatrice française dont l'amitié spirituelle avec saint François de Sales devint l'une des grandes collaborations de l'histoire de la spiritualité catholique. Sa sainteté se déploya sans bruit, tissée à travers les états successifs d'une vie ordinaire et pourtant remarquable.

Sa sainteté embrassa plusieurs vocations tour à tour : épouse dévouée, veuve éprouvée, mère attentive et enfin fondatrice consacrée, montrant que la sainteté ne se limite pas à un seul état de vie mais peut traverser les circonstances changeantes que la Providence permet. Sa collaboration avec François de Sales pour fonder la Visitation donna forme institutionnelle à une spiritualité de douceur, de dévotion intérieure et d'accueil de celles, malades ou âgées, que les formes plus austères de vie religieuse excluaient.

Devenue veuve en 1601 après la mort accidentelle de son mari, Jeanne-Françoise rencontra François de Sales en 1604, et ensemble ils fondèrent l'Ordre de la Visitation de Sainte-Marie en 1610, communauté destinée à unir la prière contemplative à la charité active sans les austères pénitences des ordres plus anciens. Elle mourut en 1641 et fut canonisée en 1767, laissant un ordre qui porte encore son esprit de dévotion douce et intérieure.

Son témoignage encourage les fidèles, surtout ceux qui traversent un deuil ou un changement de vocation, à croire que Dieu peut faire naître des appels nouveaux et féconds même des tournants les plus douloureux d'une existence.
$desc$),
('saints-pontian-pope-and-hippolytus-priest-martyrs', 'Saints Pontien, pape, et Hippolyte, prêtre, martyrs', $desc$
Cette commémoration honore deux martyrs romains du IIIe siècle dont l'histoire est remarquable pour avoir réconcilié un pape et un ancien rival dans un même acte de témoignage. Ce qui avait commencé comme une amère division s'acheva en témoignage partagé, scellé dans le sang.

Pontien, l'évêque légitime de Rome, et Hippolyte, prêtre et théologien savant qui avait pendant des années dirigé une communauté schismatique opposée au siège de Rome, furent condamnés ensemble aux mines de Sardaigne sous la persécution impériale. La tradition rapporte que les deux se réconcilièrent avant leur mort, de sorte que la division au sein de la direction de l'Église céda, sous la pression de la souffrance, à l'unité retrouvée, image que l'Église chérit comme un signe que le martyre partagé peut guérir jusqu'aux plus profondes blessures ecclésiales.

Pontien renonça à la papauté en 235 pour permettre l'élection d'un successeur une fois condamné aux travaux forcés, précédent précoce et significatif de renonciation pontificale ; Hippolyte, dont les vastes écrits théologiques et liturgiques demeurent influents, mourut dans le même exil. Leurs restes furent plus tard ramenés à Rome pour une sépulture honorable, attestant la pleine restauration de leur communion par l'Église.

Leur témoignage parle avec force de la possibilité de la réconciliation même après une grave division ecclésiale, encourageant les fidèles à chercher l'unité dans la charité au-dessus de la revendication des querelles passées.
$desc$),
('saint-maximus-the-confessor', 'Saint Maxime le Confesseur', $desc$
Saint Maxime le Confesseur fut un moine et théologien du VIIe siècle qui souffrit grandement pour la défense de la pleine humanité du Christ. Son titre, le Confesseur, le désigne comme celui qui témoigna de la foi par une souffrance en deçà de la mort, et peu l'ont portée à un tel prix personnel.

On le retient pour sa défense de l'enseignement selon lequel le Christ possède à la fois une volonté divine et une volonté humaine, agissant en parfaite harmonie, contre la position monothélite favorisée par l'autorité impériale, qui soutenait que le Christ n'avait qu'une seule volonté divine. Son insistance, sur le principe que ce qui n'est pas assumé n'est pas guéri, sauvegarda la réalité de la liberté humaine du Christ et, avec elle, toute l'étendue de la rédemption offerte au pouvoir humain de vouloir et de choisir.

Pour son opposition à la politique religieuse impériale, Maxime subit l'amputation de sa main droite et l'ablation de sa langue vers 662, châtiments brutaux destinés à faire taire son écriture comme sa parole, et il mourut peu après en exil dans le Caucase. Ses positions théologiques furent confirmées au troisième concile de Constantinople en 680-681, qui condamna formellement le monothélisme.

Son témoignage honore les théologiens et tous les croyants qui endurent une souffrance réelle pour la précision de la doctrine, rappelant à l'Église que des questions en apparence abstraites sur l'humanité du Christ portent d'immenses conséquences pour le salut de l'homme.
$desc$),
('saint-maximilian-kolbe-priest-and-martyr', 'Saint Maximilien Kolbe, prêtre et martyr', $desc$
Saint Maximilien Kolbe fut un prêtre franciscain du XXe siècle qui offrit sa propre vie en échange de celle d'un compagnon de captivité à Auschwitz. Toute sa vie avait été consacrée à l'Immaculée, et son ultime offrande de soi est inséparable de la spiritualité mariale qui le forma.

Sa mort fut un acte de sacrifice substitutif dans les circonstances les plus terribles que l'on puisse imaginer : lorsque les autorités du camp désignèrent dix prisonniers pour mourir de faim en représailles d'une évasion, Kolbe se porta volontaire pour prendre la place d'un homme marié et père de famille, choix que l'Église lit comme une image lumineuse de l'offrande que le Christ fit de lui-même. Sa consécration mariale de toute une vie, exprimée dans la Milice de l'Immaculée qu'il avait fondée, façonna une spiritualité où le don total à Marie le prépara au don total de sa vie.

Kolbe mourut le 14 août 1941, ayant survécu à deux semaines de famine avant d'être achevé par une injection mortelle. L'homme dont il sauva la vie, Franciszek Gajowniczek, survécut à la guerre et fut présent lorsque le pape Jean-Paul II canonisa Kolbe en 1982 et le déclara martyr de la charité.

Son témoignage place devant l'Église la possibilité d'un sacrifice de soi héroïque et librement choisi pour autrui, et il demeure un signe durable que l'amour se révèle plus fort que la machinerie de la haine et de la mort.
$desc$),
('the-assumption-of-the-blessed-virgin-mary', 'Assomption de la Bienheureuse Vierge Marie', $desc$
L'Assomption de la Bienheureuse Vierge Marie célèbre l'élévation de Marie, corps et âme, dans la gloire céleste, mystère qui se tient au sommet de l'espérance chrétienne sur la destinée des rachetés.

La solennité proclame le dogme, défini par le pape Pie XII en 1950, selon lequel Marie, au terme de sa vie terrestre, fut élevée corps et âme dans la gloire céleste, privilège découlant de sa participation unique à la victoire de son Fils sur le péché et la mort. Première parmi les rachetés à partager pleinement et corporellement la promesse de la Résurrection, Marie se tient comme le gage et l'image de ce qui attend tout chrétien fidèle, liant indissolublement la dévotion mariale de l'Église à son espérance en la résurrection de la chair.

La croyance en l'assomption corporelle de Marie est attestée en Orient comme en Occident dès les premiers siècles, célébrée liturgiquement comme la Dormition dans la tradition byzantine et peu à peu intégrée au calendrier romain dès le VIIe siècle, bien avant sa définition formelle. La constitution Munificentissimus Deus de Pie XII donna expression doctrinale définitive à une croyance déjà profondément enracinée dans la vie liturgique et dévotionnelle ancienne de l'Église.

La solennité invite les fidèles à confier à l'intercession de Marie leur propre espérance de résurrection corporelle, et elle demeure, en bien des cultures, une occasion de processions, de bénédictions des récoltes et de fêtes communautaires qui lient la dévotion à Marie à la reconnaissance envers la bonté de la création.
$desc$),
('saint-stephen-of-hungary', 'Saint Étienne de Hongrie', $desc$
Saint Étienne de Hongrie fut le premier roi chrétien de son peuple, à qui l'on attribue l'établissement à la fois de l'Église et d'un ordre civil chrétien dans tout son royaume. On l'honore comme un modèle d'art de gouverner chrétien, en qui le pouvoir royal devint un instrument de l'Évangile.

Il comprit l'autorité royale comme inséparable de la responsabilité du bien spirituel de son peuple, fondant des diocèses, des monastères et des églises tout en codifiant des lois qui protégeaient les faibles et favorisaient la pratique de la foi dans un pays encore largement païen. Son règne montre comment un pouvoir politique légitime, bien exercé, peut servir la mission de l'Église plutôt que de la concurrencer.

Couronné roi de Hongrie vers l'an 1000 avec une couronne traditionnellement liée au pape Sylvestre II, Étienne travailla sans relâche à assurer l'unité politique et l'évangélisation chrétienne de son royaume jusqu'à sa mort en 1038 ; il fut canonisé en 1083 avec son fils Émeric, cas rare d'un souverain et de son héritier honorés ensemble comme saints.

Son témoignage offre aux responsables politiques un modèle d'autorité exercée au service du bien commun et de l'épanouissement de la foi, et il encourage les fidèles à voir dans le gouvernement civil légitime un champ ouvert à la sanctification plutôt qu'un obstacle à celle-ci.
$desc$),
('saint-john-eudes-priest', 'Saint Jean Eudes, prêtre', $desc$
Saint Jean Eudes fut un prêtre français du XVIIe siècle qui fut un pionnier de la dévotion au Sacré-Cœur de Jésus et au Cœur immaculé de Marie, donnant forme liturgique à une piété qui devait plus tard se répandre dans toute l'Église. Son intuition théologique anticipa l'une des dévotions les plus chères au catholicisme.

Il composa des textes liturgiques en l'honneur des Cœurs de Jésus et de Marie des décennies avant que les révélations privées à sainte Marguerite-Marie Alacoque ne donnent à la dévotion son expression populaire plus large. Sa prédication et son labeur pastoral en Normandie mirent aussi un grand poids sur la réforme de la formation cléricale, souci qui porta fruit dans l'une de ses réalisations institutionnelles les plus durables.

Eudes fonda la Congrégation de Jésus et Marie, connue sous le nom d'Eudistes, en 1643, dédiée en particulier à l'établissement de séminaires pour la juste formation des prêtres, et il fonda plus tard l'Ordre de Notre-Dame de Charité pour prendre soin des femmes en difficulté. Il mourut en 1680 et fut canonisé en 1925, le pape Pie XI le saluant comme père, docteur et apôtre du culte liturgique des Cœurs de Jésus et de Marie.

Son témoignage invite les fidèles à approfondir la dévotion aux Cœurs sacré et immaculé comme une école d'amour, unissant la contemplation de la miséricorde du Christ à l'imitation de l'union intérieure de Marie avec son Fils.
$desc$),
('saint-bernard-abbot-and-doctor-of-the-church', 'Saint Bernard, abbé et docteur de l''Église', $desc$
Saint Bernard de Clairvaux fut l'un des plus influents réformateurs monastiques et théologiens mystiques du Moyen Âge, un abbé dont l'éloquence façonna à la fois la vie intérieure des moines et les grandes affaires de l'Église. On l'appelle souvent le Docteur marial pour la tendresse de sa dévotion à la Mère de Dieu.

Sa théologie mystique fit de l'amour le chemin par lequel l'âme est attirée dans l'union avec Dieu, exprimé surtout dans ses célèbres sermons sur le Cantique des cantiques, tandis que sa réforme donna à l'ordre cistercien sa réputation de ferveur austère. En lui, profondeur contemplative et piété affective chaleureuse se tissèrent ensemble d'une manière qui devait influencer des siècles d'écriture spirituelle.

Bernard entra à Cîteaux en 1112 et fonda Clairvaux en 1115, d'où la réforme cistercienne se répandit rapidement à travers l'Europe ; il intervint aussi de façon décisive dans la vie plus large de l'Église, prêchant la deuxième croisade et contribuant à résoudre un schisme pontifical. Il mourut en 1153 et fut canonisé en 1174, avant d'être proclamé docteur de l'Église en 1830.

Son témoignage invite les fidèles à chercher Dieu non seulement par l'argument, mais par l'expérience transformante de l'amour, et il présente la vie monastique comme une source de théologie capable d'enrichir toute l'Église.
$desc$),
('saint-pius-x-pope', 'Saint Pie X, pape', $desc$
Saint Pie X est retenu avant tout pour ses réformes pastorales touchant l'Eucharistie et pour sa résistance au modernisme théologique. Sa devise, tout restaurer dans le Christ, guida un vaste programme de renouveau qui atteignit la vie ordinaire de chaque catholique.

Son héritage pastoral le plus durable fut d'abaisser l'âge de la première communion à l'âge de raison et d'encourager la communion fréquente, voire quotidienne, décisions qui remodelèrent la pratique catholique ordinaire en rétablissant l'accès immédiat à l'Eucharistie comme nourriture de la vie chrétienne de chaque jour plutôt que comme exception rare et solennelle. Il promut de même la réforme du chant grégorien et de l'instruction catéchétique, cherchant une Église dont le culte et l'enseignement fussent à la fois accessibles et doctrinalement sûrs.

Né Giuseppe Sarto en 1835, il fut élu pape en 1903 et entreprit une importante codification du droit canonique, achevée plus tard sous son successeur, ainsi qu'une ferme réponse aux courants modernistes qu'il jugeait incompatibles avec l'intégrité doctrinale de l'Église. Il mourut en 1914, peu après le déclenchement de la Première Guerre mondiale, et fut canonisé en 1954.

Son témoignage invite les fidèles à chérir l'accès aisé à l'Eucharistie comme central dans la vie chrétienne, et il recommande un discernement attentif entre l'authentique développement doctrinal et les courants qui dissoudraient la cohérence de la foi.
$desc$),
('the-queenship-of-the-blessed-virgin-mary', 'La Royauté de la Bienheureuse Vierge Marie', $desc$
La Royauté de Marie célèbre l'exaltation de la Mère de Dieu, qui participe à la dignité royale de son Fils ressuscité.

La célébration proclame que Marie, élevée corps et âme au ciel, règne avec le Christ comme Reine du ciel et de la terre, royauté enracinée non dans un pouvoir mondain mais dans sa coopération unique à la rédemption et sa parfaite conformité à son Fils, le Roi de l'univers. Sa dignité royale est ainsi inséparable de son humilité, puisque c'est précisément comme l'humble servante du Seigneur qu'elle fut exaltée au-dessus de toute créature.

La dévotion à la royauté de Marie a d'anciennes racines dans l'art et l'hymnographie chrétiens, mais la fête sous sa forme actuelle fut instituée par le pape Pie XII en 1954, dans l'encyclique Ad Caeli Reginam, marquant le centenaire du dogme de l'Immaculée Conception et délibérément liée à l'Assomption définie quatre ans plus tôt.

La mémoire invite les fidèles à s'approcher de Marie avec la confiance due à une mère qui règne comme reine, lui confiant tout besoin de l'Église et du monde, tout en rappelant que toute vraie dignité royale dans le Royaume de Dieu s'exerce, comme la sienne, par l'humble service.
$desc$),
('saint-rose-of-lima-virgin', 'Sainte Rose de Lima, vierge', $desc$
Sainte Rose de Lima fut la première sainte canonisée des Amériques, une laïque renommée pour sa pénitence extraordinaire et sa prière mystique dans le Pérou colonial. Sa sainteté marqua une floraison singulière au sein du Nouveau Monde récemment évangélisé.

Elle embrassa un ascétisme pénitentiel radical, mené comme tertiaire dominicaine vivant dans la maison familiale plutôt qu'au couvent, par conviction que la souffrance intense, librement acceptée, pouvait être unie à la passion même du Christ pour le salut des âmes. Son soin des pauvres, des malades et des populations indigènes de Lima accompagna sa vie contemplative, montrant qu'ascétisme rigoureux et charité concrète ne s'opposent pas mais peuvent jaillir d'un unique et dévorant amour de Dieu.

Née Isabel Flores de Oliva à Lima en 1586, elle prit le nom de religion de Rose et vécut comme tertiaire dominicaine jusqu'à sa mort en 1617 ; elle fut canonisée en 1671 par le pape Clément X, première personne née dans les Amériques à recevoir cet honneur, et fut plus tard nommée patronne de l'Amérique latine, des Philippines et des Indes.

Son témoignage honore la vocation des pénitents laïcs et des tertiaires au sein de l'Église, et il demeure un signe de la sainteté qui prit racine dans les terres nouvellement évangélisées des Amériques dès la première rencontre missionnaire de l'Église avec ce continent.
$desc$),
('saint-bartholomew-apostle', 'Saint Barthélemy, apôtre', $desc$
Saint Barthélemy fut l'un des Douze choisis par le Christ, traditionnellement identifié au Nathanaël de l'évangile de Jean, et il appartient ainsi au fondement apostolique de l'Église.

Jésus lui-même le loua comme un Israélite en qui il n'y a pas de duplicité, description que l'Église lit comme un modèle de la foi sans détour à laquelle tout croyant est appelé. La tradition tient que Barthélemy porta l'Évangile en des terres lointaines, dont l'Arménie et l'Inde, et qu'il subit un martyre particulièrement cruel, par écorchement selon la tradition, sort immortalisé plus tard dans l'art chrétien, notamment dans le Jugement dernier de Michel-Ange.

Peu de détails historiques subsistent au-delà des mentions évangéliques qui le nomment parmi les Douze, mais l'ancienne tradition l'associe constamment à un labeur missionnaire en Arménie, où il est vénéré comme un apôtre fondateur de cette antique nation chrétienne, et ses reliques sont objets de dévotion à Rome et ailleurs depuis l'Antiquité.

Son témoignage invite les croyants à imiter la transparence du cœur pour laquelle le Christ le loua, et il honore le courage missionnaire des apôtres qui portèrent l'Évangile jusqu'aux confins du monde connu au prix de leur vie.
$desc$),
('saint-louis', 'Saint Louis', $desc$
Saint Louis, le roi Louis IX de France, est retenu comme un modèle de la royauté chrétienne marqué par la justice, l'austérité personnelle et la dévotion aux pauvres. En lui, la sainteté s'exerça non pas à l'écart du pouvoir temporel mais en son cœur même, sanctifiant la charge exigeante d'un monarque médiéval.

Il comprit son office royal comme un dépôt à exercer pour le bien de ses sujets plutôt que pour son propre agrandissement, réformant l'administration de la justice, soignant en personne les malades et les indigents, et plaçant l'honnêteté du roi chrétien au-dessus des calculs de la politique. Sa vie donna au Moyen Âge finissant son idéal durable du roi juste et pieux.

Louis IX régna comme roi de France de 1226 jusqu'à sa mort en 1270, pendant la huitième croisade près de Tunis, et il fut canonisé en 1297 par le pape Boniface VIII, devenant l'un des rares rois de France honorés comme saints et une pierre de touche de l'idéal de la monarchie chrétienne pour les siècles suivants.

Son témoignage offre à ceux qui exercent l'autorité publique un modèle de gouvernement ordonné à la justice et au soin des plus vulnérables, et il rappelle à toute l'Église que le pouvoir mondain, animé par une foi authentique, peut devenir un véritable instrument de sainteté.
$desc$),
('saint-joseph-calasanz-priest', 'Saint Joseph Calasanz, prêtre', $desc$
Saint Joseph Calasanz fonda les premières écoles publiques gratuites d'Europe consacrées à l'éducation des enfants pauvres, et on l'honore comme un pionnier de l'éducation chrétienne. Sa vie lia la mission de l'Église à la salle de classe, voyant dans l'instruction des jeunes une œuvre de l'Évangile.

Il était convaincu que l'éducation comptait parmi les instruments les plus puissants pour arracher les enfants à la pauvreté et à l'ignorance, et que cette œuvre relevait proprement de la mission de l'Église, puisque la formation conjointe de l'intelligence et de la conscience prépare les enfants à l'épanouissement temporel comme au salut éternel. Son exigence d'une scolarité gratuite et de qualité pour les pauvres anticipa de plusieurs siècles les mouvements ultérieurs vers l'éducation universelle.

Calasanz fonda l'ordre des Piaristes à Rome en 1597 pour établir et desservir des écoles destinées aux enfants pauvres, affrontant de sérieuses difficultés institutionnelles et même une suppression temporaire de sa congrégation à la fin de sa vie avant qu'elle ne soit rétablie ; il mourut en 1648, et les Piaristes furent plus tard réhabilités et prospérèrent à travers l'Europe. Il fut canonisé en 1767.

Son témoignage honore la dignité de l'enseignement comme une forme de charité et d'évangélisation, et il encourage l'Église à maintenir l'éducation des pauvres parmi les dimensions essentielles de sa mission dans le monde.
$desc$),
('saint-monica', 'Sainte Monique', $desc$
Sainte Monique est honorée comme la mère dont la prière persévérante et les larmes accompagnèrent la longue conversion de son fils, saint Augustin d'Hippone. Son histoire demeure inséparablement liée, dans la mémoire chrétienne, à celle de son fils Augustin, dont elle poursuivit la conversion par une prière infatigable.

Elle est un modèle de foi maternelle exercée à travers des décennies de patiente intercession, supportant un mariage difficile et des années d'angoisse devant la jeunesse égarée de son fils et son adhésion à l'erreur manichéenne, avant de voir, tout près du terme de sa vie, son baptême et sa conversion à la foi catholique. Son exemple montre que la prière persévérante, soutenue même quand sa réponse semble indéfiniment différée, demeure l'une des formes les plus puissantes de participation au salut d'une autre âme.

Monique suivit son fils d'Afrique du Nord en Italie, priant sans cesse pour sa conversion, et fut présente à Milan pour son baptême par saint Ambroise en 387 ; elle mourut plus tard cette même année à Ostie, dans une scène de contemplation mystique partagée avec Augustin qu'il rapporta plus tard avec émotion dans ses Confessions, parmi les pages les plus célèbres de la littérature chrétienne.

Son témoignage console tout parent qui prie pour un enfant égaré, tenant haut l'espérance que la grâce peut accomplir, au temps de Dieu, ce que l'effort et l'inquiétude humains ne sauraient à eux seuls obtenir.
$desc$),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 'Saint Augustin d''Hippone, évêque et docteur de l''Église', $desc$
Saint Augustin d'Hippone compte parmi les théologiens les plus influents de l'histoire du christianisme occidental, dont les écrits façonnèrent la doctrine catholique sur la grâce, la Trinité et la nature de l'Église pendant plus d'un millénaire et demi. Sa conversion, inséparable des prières de sa mère Monique, a fait de son histoire l'un des témoignages les plus aimés du triomphe de la grâce.

Sa vie tourna autour d'une conversion dramatique, d'une ambition inquiète et d'un amour désordonné vers une vie tout entière donnée à Dieu, cheminement qu'il résuma dans sa célèbre conviction que le cœur humain demeure inquiet tant qu'il ne repose pas en Dieu. Son héritage théologique, en particulier son enseignement sur la grâce élaboré contre la controverse pélagienne, établit le cadre dans lequel l'Église d'Occident comprendra pendant des siècles la liberté humaine, le péché et la miséricorde divine.

Baptisé par saint Ambroise à Milan en 387 grâce aux prières de sa mère, Augustin regagna l'Afrique du Nord, fut ordonné prêtre puis évêque d'Hippone en 395, et produisit une œuvre immense, dont la Cité de Dieu, avant sa mort en 430, alors que les Vandales assiégeaient sa ville, au crépuscule de l'Afrique romaine.

Son témoignage invite les croyants à croire qu'aucune vie n'est trop désordonnée pour que la grâce l'atteigne, et il recommande une réflexion soutenue sur la grâce et la liberté comme un service durable que l'Église doit à chaque génération.
$desc$),
('the-passion-of-saint-john-the-baptist-martyr', 'Passion de saint Jean-Baptiste, martyr', $desc$
Cette commémoration, communément appelée la Décollation de saint Jean-Baptiste, marque le martyre du dernier et du plus grand des prophètes de l'Ancien Testament, le héraut du Christ. Celui qui montra le premier l'Agneau de Dieu le précède désormais jusque dans la mort.

Elle rappelle le récit évangélique du mariage illégitime d'Hérode avec Hérodiade, la dénonciation intrépide par Jean de cette union comme contraire à la loi de Dieu, et sa décapitation à la demande de la fille d'Hérodiade, mort exigée par la vanité royale et un serment imprudent plutôt que par un quelconque procès. Le martyre de Jean pour la défense de la sainteté du mariage contre la convenance politique couronne toute sa mission : ayant désigné le Christ tout au long de sa vie, il préfigure désormais la condamnation injuste du Seigneur lui-même.

Les évangiles de Marc et de Matthieu fournissent le récit sur lequel repose cette ancienne commémoration, gardée dans le calendrier romain depuis l'Antiquité en pendant de la célébration de la nativité de Jean le 24 juin, seule figure hormis le Christ et Marie dont le rite romain commémore à la fois la mort et la naissance.

Cette commémoration honore le courage de dire l'inconfortable vérité morale aux puissants, quel qu'en soit le prix personnel, et elle présente la fidélité de Jean jusqu'à la mort comme la juste conclusion de la mission du héraut qui prépara le chemin du Seigneur.
$desc$)
) AS x(slug, name, description)
ON f.slug = x.slug
ON CONFLICT (feast_id, locale_code) DO NOTHING;

-- LA translations
INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'la', x.name, x.description
FROM feasts f
JOIN (VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', 'Sanctus Alphonsus Maria de Ligorio, episcopus et Ecclesiae doctor', $desc$
Sanctus Alphonsus Maria de Ligorio ut episcopus et Ecclesiae doctor colitur, at praesertim ut theologus moralis in memoria est, qui totum doctrinae suae pondus in servitium peccatorum communium potius quam animarum iam provectarum posuit. Ingenium eius pastorale eum inter gravissimos Ecclesiae duces confessariorum et praedicatorum numerari fecit.

Cor hereditatis eius est theologia moralis mediam viam inter nimium rigorem et periculosam laxitatem tenens, systema quod postea aequiprobabilismus dictum est. Quod instabat ut sacramenta, praesertim paenitentia et Eucharistia, cum fide erga legem simul et tenera erga paenitentem misericordia administrarentur, ex altiore persuasione manat: gratiam infirmos et oneratos quaerere potius quam exspectare dum fortes fiant.

Alphonsus anno 1732 Congregationem Sanctissimi Redemptoris condidit ad pauperes agrorum evangelizandos, ab urbanioribus curae pastoralis formis neglectos, et immensa eius scripta, praesertim de oratione et de pietate erga Mariam, pietatem catholicam per generationes post mortem eius anno 1787 formaverunt. Ecclesiae doctor anno 1871 declaratus est ob perennem in theologiam moralem et praxim pastoralem influxum.

Eius testimonium confessarios et pastores vocat ad imitandum illud aequilibrium inter firmam veritatem et misericordem comitationem, et totam Ecclesiam admonet sanam doctrinam ad serviendum, non ad onerandum, exsistere pro animis reconciliationem cum Deo quaerentibus.
$desc$),
('saint-eusebius-of-vercelli-bishop', 'Sanctus Eusebius Vercellensis, episcopus', $desc$
Sanctus Eusebius Vercellensis inter firmissimos orthodoxiae Nicaenae saeculo quarto defensores stat, contra crisim arianam quae Ecclesiam commovit. Ut episcopus recolitur qui rigores vitae asceticae cum laboribus regiminis episcopalis coniunxit, coniunctione insolita quae saecula sequentia signaret.

Testimonium eius attestatur fidem erga rectam doctrinam et sanctitatem personalem non esse vias seiunctas sed dimensiones se mutuo confirmantes. Clerum suum in vitam communem orationis sub regula communi congregans, formas posteriores vitae religiosae canonicalis presbyterorum praesignavit, defensionem divinitatis Christi cum disciplina conversionis in domo propria coniungens.

Eusebius ab imperatore Constantio II ob oppositionem formulis arianis in Concilio Mediolanensi anno 355 exsul missus est, annos in duro exsilio in Oriente agens antequam sedi suae restitueretur, ubi circa annum 371 obiit. Memoria eius in regione Pedemontana quam pavit perduravit ac tandem in calendarium universale intravit tamquam testimonium fidelitatis fortis sub pressione imperiali.

Exemplum eius episcopos et fideles omnes hortatur ut veritati revelatae firmiter adhaereant etiam cum id verum pretium secum fert, confisi unitatem Ecclesiae in fide pressionibus transeuntibus cuiuslibet aetatis superstitem esse.
$desc$),
('saint-peter-julian-eymard-priest', 'Sanctus Petrus Iulianus Eymard, presbyter', $desc$
Sanctus Petrus Iulianus Eymard, presbyter Gallus saeculi undevicesimi qui Apostolus Eucharistiae appellatus est, vitam suam uni persuasioni dedidit: Sanctissimum Sacramentum esse fontem ex quo omnis sanctitas christiana et omnis caritas apostolica manare debeant. Tota eius vocatio circa adorationem praesentiae realis se congregavit.

Eymardo adoratio eucharistica numquam fuit pietas privata vitae pastorali adiuncta, sed ipsum cor eius. Fundatio Congregationis Sanctissimi Sacramenti et Ancillarum Sanctissimi Sacramenti formam institutionalem spiritualitati dedit in adoratione continua, reparatione et communionis receptione tamquam scaturigine vitae christianae fundatae.

Anno 1811 natus, Eymard presbyter dioecesanus deinde Marista fuit antequam proprias congregationes annis 1856 et 1858 conderet, culturae eucharisticae unice dicatas, opus quod simul admirationem et primaevam ecclesiasticam cautionem invenit priusquam plenam approbationem obtineret. Anno 1868 obiit et anno 1962 canonizatus est, eo ipso tempore quo Concilium Vaticanum II Eucharistiam ut fontem et culmen vitae christianae denuo extollebat.

Eius testimonium fideles invitat ut adorationem eucharisticam tamquam fontem energiae apostolicae rursus inveniant, Ecclesiae in memoriam revocans missionem uberrime ex quiete contemplativa coram praesentia Christi scaturire.
$desc$),
('saint-jean-vianney-priest', 'Sanctus Ioannes Maria Vianney, presbyter', $desc$
Sanctus Ioannes Maria Vianney, Curatus Arsensis, per totum orbem ut patronus parochorum colitur, vir cuius vita dignitatem et exigentias ministerii paroecialis ordinarii revelat. Fama eius neque doctrinae neque eloquentiae innititur, sed sanctitati quae humillimum munus pastorale transfiguravit.

Quamvis dotes intellectuales modestas secundum seminarii mensuram haberet, parvum vicum spiritu indifferentem in peregrinationis centrum convertit oratione indefessa, paenitentia extraordinaria et super omnia innumeris horis confessionibus audiendis impensis. Ministerium eius illam veritatem incarnat, fecunditatem pastoralem minus ex humano ingenio quam ex sanctitate personali et plena erga animas misericordiam quaerentes praesentia pendere.

Ioannes Baptista Vianney anno 1815 ordinatus est quamvis magnis in studiis laboribus premeretur, et anno 1818 obscurae paroeciae Arsensi assignatus, ubi usque ad mortem anno 1859 mansit, decem milia paenitentium ex tota Gallia sub finem vitae attrahens. Papa Pius XI eum anno 1929 parochorum patronum declaravit, locum eius tamquam exemplaris caritatis pastoralis in humillimis adiunctis exercitae confirmans.

Eius testimonium presbyteros vocat ut fiduciam in sacramento confessionis et promptitudinem erga fideles renovent, dum christianos omnes invitat ut absconditam fidelitatem, saepe sine splendore, aestiment, quae veram curam pastoralem sustinet.
$desc$),
('the-dedication-of-the-basilica-of-saint-mary-major', 'Dedicatio Basilicae Sanctae Mariae Maioris', $desc$
Haec commemoratio dedicationem antiquissimae basilicae Marianae in Occidente honorat, Romae post Concilium Ephesinum erectae. Festum aedificii est, sed aedificii cuius ipsi lapides doctrinam proclamant: Mariam vere esse Dei Genitricem.

Celebratio ab illo momento doctrinali seiungi non potest. Basilica ut monumentum lapideum veritati erecta est, Ephesi anno 431 definitae, secundum quam ille quem Maria in sinu gestavit erat, in una sua persona, verus Deus et verus homo. Splendida eius musiva, inter antiquissima et theologice ditissima artis Marianae christianae, fideles adhuc de mysteriis Incarnationis et de unico Mariae in eis loco erudiunt.

Traditio narrat nivem miraculosam media aestate in colle Esquilino cecidisse, locum indicantem ubi ecclesia surgere deberet, unde basilicae titulum popularem Dominae Nostrae ad Nives dedit; historice papa Sixtus III eam circa annos 434-440 dedicavit, annis proxime post Ephesum. Manet una ex quattuor basilicis papalibus maioribus Romae ac reliquiam servat diu ut pars praesepii Bethlehemitici venerata.

Haec commemoratio fideles invitat ut architecturam sacram tamquam doctrinae latricem per saecula honorent, et ut pietatem erga Mariam Dei Genitricem renovent in ipsa urbe ubi titulus ille primum sollemniter vindicatus est.
$desc$),
('the-transfiguration-of-the-lord', 'Transfiguratio Domini', $desc$
Transfiguratio momentum commemorat quo Iesus gloriam suam divinam Petro, Iacobo et Ioanni in monte revelavit, cum Moyse et Elia ad latus resplendens apparens. Inter praecipuas evangelicas manifestationes gloriae filialis Christi numeratur.

Theologice festum gloriam Resurrectionis praeoccupat dum discipulos, et per eos totam Ecclesiam, roborat ad scandalum Crucis quam Iesus modo praenuntiaverat sustinendum. Praesentia Moysis et Eliae significat Legem et Prophetas complementum suum in Christo invenire, dum vox Patris, « Hic est Filius meus dilectus, ipsum audite », verba in Baptismo prolata resonat et ad revelationem definitivam in mysterio paschali peractam praenuntiat.

Festum radices antiquas in Oriente christiano habet, ubi iam a data antiqua inter Duodecim Magna Festa numeratum est, atque in calendarium occidentale gradatim intravit priusquam a papa Callisto III anno 1456 ad Ecclesiam universalem extenderetur, in gratiarum actionem pro liberatione Belgradi ab impetu Ottomanico. Locus eius alta aestate eam etiam, in societatibus agricolis, prope traditam primitiarum benedictionem collocat.

Pastoraliter Transfiguratio credentes invitat ut simul teneant, sicut discipulis petitum est, mysterium passionis et promissionem gloriae, confisi omnem probationem in unione cum Christo sustentam iam luce in monte perspecta illuminari.
$desc$),
('saint-sixtus-ii-pope-and-companions-martyrs', 'Sanctus Sixtus II et Socii, martyres', $desc$
Haec commemoratio papam Sixtum II et plures diaconos honorat una sub persecutione imperatoris Valeriani anno 258 martyrio affectos. Martyrium sanctuarii est, nam papa comprehensus et occisus est dum liturgiae eucharisticae in coemeterio Romano praesidebat, diaconis ad latus eius manentibus potius quam fugientibus.

Mors eorum communis altum vinculum inter episcopum Romanum et proximos collaboratores illustrat, vinculum communis ministerii sacramentalis quod nullum mortis periculum rumpere potuit. Praesignat etiam martyrium diaconi Laurentii, qui sub Sixto ministrabat et eum in morte paucis diebus post secutus est, ita ut duae commemorationes initii Augusti unum testimonium efficiant.

Edictum Valeriani anno 258 clerum christianum speciatim petebat, executionem statim episcoporum, presbyterorum et diaconorum iubens; Sixtus II inter primos episcopos Romanos sub hoc decreto mortuos fuit, et nomen eius postea in Canonem Romanum inter martyres in Missa invocatos insertum est. Memoria eius Romae ab antiquitate continenter servata est.

Haec commemoratio fortitudinem eorum honorat qui muneri sacramentali fideles manserunt vel ipsius vitae pretio, clerum et fideles hortans ut in ipso ministerio formam testimonii videant quam mors silere non potest.
$desc$),
('saint-cajetan-priest', 'Sanctus Caietanus, presbyter', $desc$
Sanctus Caietanus presbyter Italus saeculi sedecimi fuit qui se renovationi vitae clericalis et operibus caritatis erga pauperes et aegrotos dedidit. Ad illam reformatorum generationem pertinet qui Ecclesiam ab intus purgare studuerunt, decenniis antequam Concilium Tridentinum his impulsibus expressionem conciliarem daret.

In centro vitae eius illa persuasio stabat, reformationem cleri a reditu ad simplicitatem apostolicam incipere: vita communis, nuda in Providentiam fiducia potius quam in reditu certo, et indefessa cura derelictorum, praesertim aegrotorum in nosocomiis et pauperum aere usurario oppressorum. Caietano reformatio institutionum et caritas concreta unum opus Evangelii erant.

Anno 1524 Theatinos condidit, unam ex primis congregationibus clericorum regularium, una cum Ioanne Petro Carafa, futuro papa Paulo IV, ac postea montes pietatis caritativos condidit mutua tenui fenore praebentes ad pauperes ab exploitatione defendendos, traditionem catholicam montium pietatis praesignans. Neapoli anno 1547 obiit et anno 1671 canonizatus est.

Eius testimonium presbyteros et totam Ecclesiam invitat ut videant quomodo reformatio institutionum et amor erga tenues secundum res oeconomicas simul pertineant, potius quam ut sollicitudines seiunctae vel rivales stent.
$desc$),
('saint-dominic-priest', 'Sanctus Dominicus, presbyter', $desc$
Sanctus Dominicus Ordinem Praedicatorum condidit, unam ex familiis religiosis in historia Ecclesiae influentissimis, praedicationem et formationem doctrinalem in ipso corde vitae consecratae collocans. Charisma eius profunditatem contemplativam cum missione activa coniunxit modo qui christianitatem mediaevalem transformaret.

Intuitio eius fundatrix fuit certamen contra haeresim et ignorantiam religiosam non solam refutationem exigere, sed novam formam vitae religiosae studium rigorosum, paupertatem communitariam et praedicationem itinerantem coniungentem. Motto Dominicanum, contemplari et contemplata aliis tradere, synthesim complectitur quae vitam intellectualem et pastoralem catholicam adhuc format.

Dominicus ordinem suum anno 1216 condidit ut responsum crisi Albigensi in Gallia meridionali, approbationem a papa Honorio III obtinens, et primos fratres in magnas urbes universitarias Europae misit ut praedicationem in seria formatione theologica radicaret. Bononiae anno 1221 obiit et anno 1234 canonizatus est, ordinem relinquens qui aliquos ex maximis Ecclesiae theologis, inter quos sanctum Thomam de Aquino, produceret.

Eius testimonium fideles vocat ut sanam praedicationem et studium theologicum tamquam formas caritatis erga animas veritatis esurientes aestiment, et omnem conatum orationem profundam cum audaci Evangelii proclamatione coniungendi honorat.
$desc$),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', 'Sancta Teresia Benedicta a Cruce, virgo et martyr', $desc$
Sancta Teresia Benedicta a Cruce nomen religiosum est Edith Stein, philosophae origine Iudaeae quae monialis Carmelitana facta est et Auschwitz anno 1942 occisa. Vita eius, insigni intensitate, inquisitionem philosophiae recentis, profunditates orationis contemplativae et horrorem maximi saeculi vicesimi sceleris in unum colligit.

Iter eius, ab atheismo per rigorosam philosophicam inquisitionem, eam ad baptismum anno 1922 deinde ad Carmelum duxit, ubi nomen Teresiae Benedictae a Cruce assumpsit, in cruce vocationem suam propriam agnoscens, in solidarietate cum populo suo Iudaeo sub persecutione nazista portatam. Mors eius in cameris gaseosis, ob originem Iudaeam comprehensa quamvis professionem religiosam haberet, Shoah cum mysterio martyrii christiani coniungit modo quem Ecclesia altissime significantem habet.

Edith Stein anno 1942 comprehensa est in ultionem epistulae episcoporum Neerlandicorum politicas rationes nazistas raciales damnantis, et Auschwitz deportata, ubi die nono Augusti eius anni obiit. Anno 1998 a papa Ioanne Paulo II canonizata est, qui eam postea Europae compatronam nominavit, eam tamquam pontem inter Iudaismum et Christianismum et inter vitam intellectualem rigorosam et plenam Deo deditionem proponens.

Eius testimonium ad meditandum invitat harmoniam rationis quaerentis et fidei viventis, et sollemnis manet admonitio vocationis Ecclesiae omni odii ideologiae, praesertim antisemitismo, testimonio caritatis usque ad mortem resistendi.
$desc$),
('saint-lawrence-deacon-and-martyr', 'Sanctus Laurentius, diaconus et martyr', $desc$
Sanctus Laurentius inter antiquissimos et dilectissimos martyres Romanos numeratur, diaconus Ecclesiae Romanae cuius fidelitas unam ex perennissimis imaginibus fortitudinis christianae peperit. Memoria eius tam late tamque mature diffusa est ut inter martyres Romanos locum singularem obtineret.

Secundum traditionem tenacem, cum a potestatibus civilibus iuberetur thesauros Ecclesiae tradere, pauperes quibus serviebat pro veris Ecclesiae divitiis exhibuit, gestu qui claritate insigni diaconi vocationem ad caritatem tamquam sacras divitias revelat. Martyrium eius, super craticulam vivus assatus secundum traditionem, una ex vividissimis imaginibus fidei constantis in tota traditione martyrologica evasit.

Laurentius anno 258 obiit, paucis diebus post papam Sixtum II sub eadem Valeriani persecutione, et devotio erga eum celeritate extraordinaria crevit; sanctus Augustinus et sanctus Ambrosius ambo de eius fortitudine praedicaverunt, et ecclesiae in honorem eius Romae et ultra intra paucas generationes dedicatae sunt. Festum eius magna cum sollemnitate Romae ab antiquitate servatur.

Eius testimonium ministerium diaconale caritatis tamquam essentialem et insubstituibilem vitae Ecclesiae expressionem extollit, diaconos et fideles omnes hortans ut in pauperibus latores divitiarum agnoscant quas nulla persecutio rapere potest.
$desc$),
('saint-clare-virgin', 'Sancta Clara, virgo', $desc$
Sancta Clara Assisiensis, Clarissarum fundatrix, inter primas et devotissimas sancti Francisci sequaces fuit, et motui Franciscano formam eius perennem clausurae contemplativae in paupertate radicali vivendae dedit. Vita eius speculum est ad Christum pauperem et crucifixum tensum.

Recolitur ob ardentem instantiam in privilegio paupertatis, vivendi modus quem coram ipsis pontificibus tamquam essentialem fidelitati communitatis suae erga Evangelium defendit, omnem oblationem regulae mitigatae vel reditus garantiti pro sororibus suis recusans. Spiritualitas eius, in contemplatione Christi crucifixi tamquam in speculo centrata, totam vitam contemplativam ad configurationem cum Domino paupere et patiente dirigit.

Clara anno 1212 e domo ditis familiae suae fugit ut motui nascenti Francisci se iungeret, condens id quod Ordo Dominarum Pauperum apud Sanctum Damianum factus est, ubi per quadraginta amplius annos vixit et rexit usque ad mortem anno 1253, duobus tantum diebus post confirmationem pontificiam Regulae suae acceptam, primae regulae religiosae quam mulier pro mulieribus scripsisse noscitur. Duobus post annis, anno 1255, canonizata est.

Eius testimonium religiosos et laicos pariter vocat ad considerandum quomodo paupertas radicalis, longe a spiritu humano depauperando, eum ad indivisiorem Christi contemplationem liberare possit, et perenne donum vitae contemplativae clausae in Ecclesia honorat.
$desc$),
('saint-jane-frances-de-chantal-religious', 'Sancta Ioanna Francisca de Chantal, religiosa', $desc$
Sancta Ioanna Francisca de Chantal vidua, mater et fundatrix Galla fuit cuius amicitia spiritualis cum sancto Francisco Salesio una ex magnis collaborationibus historiae spiritualitatis catholicae facta est. Sanctitas eius sine strepitu explicata est, per successivos status vitae ordinariae ac tamen insignis intexta.

Sanctitas eius plures vocationes deinceps complexa est: uxor devota, vidua afflicta, mater sedula ac tandem fundatrix consecrata, ostendens sanctitatem uni statui vitae non circumscribi sed per adiuncta mutabilia quae Providentia permittit percurrere posse. Societas eius cum Francisco Salesio in Visitatione condenda formam institutionalem dedit spiritualitati mansuetudinis, devotionis internae et accessus earum, aegrotarum et senum, quas austeriores vitae religiosae formae excludebant.

Anno 1601 vidua facta post mortem mariti fortuitam, Ioanna Francisca anno 1604 Francisco Salesio occurrit, et simul Ordinem Visitationis Sanctae Mariae anno 1610 condiderunt, communitatem ad orationem contemplativam cum caritate activa sine austeris ordinum antiquiorum paenitentiis coniungendam destinatam. Anno 1641 obiit et anno 1767 canonizata est, ordinem relinquens qui adhuc spiritum eius mansuetae et internae devotionis fert.

Eius testimonium fideles hortatur, praesertim eos qui luctum vel vocationis mutationem transeunt, ut confidant Deum novas et fecundas vocationes etiam ex dolentissimis vitae flexibus elicere posse.
$desc$),
('saints-pontian-pope-and-hippolytus-priest-martyrs', 'Sancti Pontianus et Hippolytus, martyres', $desc$
Haec commemoratio duos martyres Romanos saeculi tertii honorat quorum historia insignis est quod papam et olim aemulum in uno testimonii actu reconciliavit. Quod tamquam amara divisio coeperat, in communi testimonio, sanguine signato, finem habuit.

Pontianus, legitimus episcopus Romanus, et Hippolytus, presbyter et theologus doctus qui per annos communitati schismaticae sedi Romanae oppositae praefuerat, simul ad metalla Sardiniae sub persecutione imperiali damnati sunt. Traditio tenet duos ante mortem reconciliatos esse, ita ut divisio intra Ecclesiae regimen, sub pressione passionis, unitati restitutae cederet, imago quam Ecclesia tamquam signum servat martyrium commune etiam altissima vulnera ecclesialia sanare posse.

Pontianus anno 235 pontificatui renuntiavit ut electionem successoris permitteret postquam ad opera dura damnatus est, praecedens praecox et grave renuntiationis pontificiae; Hippolytus, cuius ampla scripta theologica et liturgica adhuc influunt, in eodem exsilio obiit. Reliquiae eorum postea Romam ad honestam sepulturam relatae sunt, plenam communionis eorum ab Ecclesia restaurationem testantes.

Testimonium eorum de possibilitate reconciliationis etiam post gravem divisionem ecclesialem valide loquitur, fideles hortans ut unitatem in caritate super vindicationem litium praeteritarum quaerant.
$desc$),
('saint-maximus-the-confessor', 'Sanctus Maximus Confessor', $desc$
Sanctus Maximus Confessor monachus et theologus saeculi septimi fuit qui pro defensione plenae humanitatis Christi valde passus est. Titulus eius, Confessor, eum designat qui fidei testimonium per passionem citra mortem reddidit, et pauci eam maiore pretio personali tulerunt.

Recolitur ob defensionem doctrinae secundum quam Christus et voluntatem divinam et voluntatem humanam possidet, in perfecta harmonia agentes, contra positionem monotheletam ab auctoritate imperiali faventem, quae Christum unam tantum voluntatem divinam habere tenebat. Quod instabat, secundum principium id quod non est assumptum non est sanatum, realitatem libertatis humanae Christi tutatus est ac, cum ea, plenam amplitudinem redemptionis humanae potestati volendi et eligendi oblatae.

Ob oppositionem politicae religiosae imperiali, Maximus amputationem dexterae manus et ablationem linguae circa annum 662 passus est, poenas brutales ad scriptionem eius et praedicationem silendas destinatas, et paulo post in exsilio in Caucaso obiit. Positiones eius theologicae in Concilio Constantinopolitano Tertio annis 680-681 vindicatae sunt, quod monothelismum formaliter damnavit.

Eius testimonium theologos et credentes omnes honorat qui veram passionem pro doctrinae subtilitate perferunt, Ecclesiae in memoriam revocans quaestiones in speciem abstractas de humanitate Christi immensas pro hominis salute consequentias ferre.
$desc$),
('saint-maximilian-kolbe-priest-and-martyr', 'Sanctus Maximilianus Maria Kolbe, presbyter et martyr', $desc$
Sanctus Maximilianus Maria Kolbe presbyter Franciscanus saeculi vicesimi fuit qui vitam suam pro alterius captivi vita apud Auschwitz obtulit. Tota vita eius Immaculatae consecrata fuerat, et extrema sui oblatio a spiritualitate Mariana quae eum formavit separari non potest.

Mors eius actus sacrificii vicarii fuit in adiunctis quam terribilioribus cogitari possit: cum potestates castri decem captivos ad fame moriendum in ultionem fugae designassent, Kolbe se sponte obtulit ut locum viri coniugati et patrisfamilias sumeret, electionem quam Ecclesia tamquam luminosam imaginem oblationis quam Christus sui ipsius fecit legit. Consecratio eius Mariana totius vitae, in Militia Immaculatae quam condiderat expressa, spiritualitatem formavit in qua plena Mariae deditio eum ad plenam vitae suae deditionem paravit.

Kolbe die 14 Augusti 1941 obiit, cum duas hebdomadas famis superavisset priusquam iniectione letali occideretur. Vir cuius vitam servavit, Franciscus Gajowniczek, bellum superstes fuit et praesens erat cum papa Ioannes Paulus II Kolbe anno 1982 canonizavit eumque martyrem caritatis declaravit.

Eius testimonium coram Ecclesia possibilitatem heroici et libere electi sui sacrificii pro altero ponit, et signum perenne manet amorem fortiorem machinatione odii et mortis se probare.
$desc$),
('the-assumption-of-the-blessed-virgin-mary', 'Assumptio Beatae Mariae Virginis', $desc$
Assumptio Beatae Mariae Virginis celebrat Mariam corpore et anima in gloriam caelestem assumptam, mysterium quod in summo spei christianae de sorte redemptorum collocatur.

Sollemnitas dogma proclamat, a papa Pio XII anno 1950 definitum, secundum quod Maria, in fine vitae suae terrestris, corpore et anima in gloriam caelestem assumpta est, privilegium ex unica eius participatione victoriae Filii sui super peccatum et mortem manans. Prima inter redemptos plene et corporaliter promissionem Resurrectionis participans, Maria tamquam pignus et imago eius quod omnem christianum fidelem manet stat, devotionem Marianam Ecclesiae cum spe in resurrectionem carnis indissolubiliter ligans.

Fides in Mariae assumptionem corporalem in Oriente et Occidente a primis saeculis attestatur, liturgice ut Dormitio in traditione byzantina celebrata et in calendarium Romanum saeculo septimo gradatim inserta, diu ante definitionem formalem. Constitutio Munificentissimus Deus Pii XII expressionem doctrinalem definitivam dedit fidei iam in vita liturgica et devotionali antiqua Ecclesiae profunde radicatae.

Sollemnitas fideles invitat ut propriam spem resurrectionis corporalis intercessioni Mariae commendent, et manet, in multis culturis, occasio processionum, benedictionum messis et festivitatis communitariae quae devotionem erga Mariam cum gratiarum actione pro bonitate creationis ligat.
$desc$),
('saint-stephen-of-hungary', 'Sanctus Stephanus Hungariae', $desc$
Sanctus Stephanus Hungariae primus rex christianus populi sui fuit, cui tribuitur institutio tam Ecclesiae quam ordinis civilis christiani per totum regnum suum. Ut exemplar artis christianae regendi honoratur, in quo potestas regia instrumentum Evangelii facta est.

Auctoritatem regiam intellexit ut inseparabilem a responsabilitate boni spiritualis populi sui, dioeceses, monasteria et ecclesias condens dum leges codificabat quae infirmos tutabantur et praxim fidei per terram adhuc late paganam fovebant. Regnum eius ostendit quomodo potestas politica legitima, recte exercita, missioni Ecclesiae servire potius quam cum ea certare possit.

Rex Hungariae circa annum 1000 corona traditionaliter cum papa Silvestro II coniuncta coronatus, Stephanus indefesse laboravit ut tam unitatem politicam quam evangelizationem christianam regni sui firmaret usque ad mortem anno 1038; anno 1083 una cum filio Emerico canonizatus est, casu raro regis et heredis eius simul ut sanctorum honoratorum.

Eius testimonium moderatoribus politicis exemplar auctoritatis ad bonum commune et fidei florem ordinatae offert, et fideles hortatur ut in regimine civili legitimo campum sanctificationi apertum videant potius quam obstaculum ei.
$desc$),
('saint-john-eudes-priest', 'Sanctus Ioannes Eudes, presbyter', $desc$
Sanctus Ioannes Eudes presbyter Gallus saeculi septimi decimi fuit qui devotionem erga Sacrum Cor Iesu et Immaculatum Cor Mariae inchoavit, formam liturgicam pietati dans quae postea per totam Ecclesiam diffunderetur. Intuitio eius theologica unam ex devotionibus catholicismo carissimis praeoccupavit.

Textus liturgicos in honorem Cordium Iesu et Mariae composuit decenniis antequam revelationes privatae sanctae Margaritae Mariae Alacoque devotioni ampliorem expressionem popularem darent. Praedicatio eius et labor pastoralis per Normanniam magnum etiam pondus in reformationem formationis clericalis posuerunt, sollicitudo quae in una ex diuturnioribus eius operibus institutionalibus fructum tulit.

Eudes Congregationem Iesu et Mariae, sub nomine Eudistarum notam, anno 1643 condidit, praesertim institutioni seminariorum ad rectam presbyterorum formationem dicatam, et postea Ordinem Dominae Nostrae a Caritate condidit ad mulieres in adiunctis difficilibus curandas. Anno 1680 obiit et anno 1925 canonizatus est, papa Pio XI eum ut patrem, doctorem et apostolum cultus liturgici Cordium Iesu et Mariae salutante.

Eius testimonium fideles invitat ut devotionem erga Sacrum et Immaculatum Cor tamquam scholam amoris approfundent, contemplationem misericordiae Christi cum imitatione internae unionis Mariae cum Filio suo coniungentes.
$desc$),
('saint-bernard-abbot-and-doctor-of-the-church', 'Sanctus Bernardus, abbas et Ecclesiae doctor', $desc$
Sanctus Bernardus Claravallensis unus ex influentissimis reformatoribus monasticis et theologis mysticis Medii Aevi fuit, abbas cuius eloquentia tam vitam internam monachorum quam magna Ecclesiae negotia formavit. Saepe Doctor Marianus appellatur ob teneritudinem devotionis suae erga Dei Genitricem.

Theologia eius mystica amorem viam fecit qua anima in unionem cum Deo attrahitur, praesertim in celebribus sermonibus in Canticum Canticorum expressam, dum reformatio eius ordini Cisterciensi famam austeri fervoris dedit. In eo profunditas contemplativa et calida pietas affectiva simul intextae sunt modo qui saecula scriptionis spiritualis influeret.

Bernardus anno 1112 Cistercium intravit et anno 1115 Claram Vallem condidit, unde reformatio Cisterciensis celeriter per Europam diffusa est; in ampliorem etiam Ecclesiae vitam decisive intervenit, secundam cruciatam praedicans et schisma pontificium solvere adiuvans. Anno 1153 obiit et anno 1174 canonizatus est, deinde anno 1830 Ecclesiae doctor declaratus.

Eius testimonium fideles invitat ut Deum non solum per argumentum sed per transformantem amoris experientiam quaerant, et vitam monasticam tamquam scaturiginem theologiae totam Ecclesiam ditare valentem extollit.
$desc$),
('saint-pius-x-pope', 'Sanctus Pius X, papa', $desc$
Sanctus Pius X praesertim ob reformationes pastorales Eucharistiam tangentes et ob resistentiam modernismo theologico recolitur. Motto eius, instaurare omnia in Christo, amplum renovationis programma direxit quod vitam ordinariam cuiusque catholici attigit.

Diuturnissima eius hereditas pastoralis fuit aetatem primae communionis ad aetatem rationis demittere et communionem frequentem, immo quotidianam, fovere, decisiones quae praxim catholicam ordinariam transformaverunt accessum immediatum ad Eucharistiam tamquam alimentum discipulatus quotidiani restituentes potius quam exceptionem raram et sollemnem. Reformationem etiam cantus Gregoriani et institutionis catecheticae promovit, Ecclesiam quaerens cuius cultus et doctrina simul accessibiles et doctrinaliter tuti essent.

Iosephus Sarto anno 1835 natus, anno 1903 papa electus est et magnam iuris canonici codificationem suscepit, postea sub successore eius completam, una cum firma responsione currentibus modernistis quos integritati doctrinali Ecclesiae incompatibiles iudicabat. Anno 1914 obiit, paulo post initium Primi Belli Mundani, et anno 1954 canonizatus est.

Eius testimonium fideles invitat ut facilem accessum ad Eucharistiam tamquam centralem vitae christianae aestiment, et cautam discretionem inter authenticum doctrinae progressum et currentes qui fidei cohaerentiam dissolverent commendat.
$desc$),
('the-queenship-of-the-blessed-virgin-mary', 'Beatae Mariae Virginis Reginae', $desc$
Regalitas Mariae exaltationem Dei Genetricis celebrat, quae dignitatem regiam Filii sui resuscitati participat.

Celebratio proclamat Mariam, corpore et anima in caelum assumptam, cum Christo ut Reginam caeli et terrae regnare, regalitatem non in potestate mundana sed in unica cooperatione eius redemptioni et perfecta conformitate cum Filio suo, Rege universi, radicatam. Dignitas eius regia ita ab humilitate eius inseparabilis est, quoniam praecise ut humilis ancilla Domini super omnem creaturam exaltata est.

Devotio erga regalitatem Mariae antiquas radices in arte et hymnodia christiana habet, sed festum in forma sua praesenti a papa Pio XII anno 1954 institutum est, in encyclica Ad Caeli Reginam, centenarium dogmatis Immaculatae Conceptionis signans et cum Assumptione quattuor annos ante definita consulto ligatum.

Memoria fideles invitat ut ad Mariam cum fiducia matri quae ut regina regnat debita accedant, ei omnem Ecclesiae et mundi necessitatem committentes, dum recolunt omnem veram dignitatem regiam in Regno Dei, sicut eius, per humile ministerium exerceri.
$desc$),
('saint-rose-of-lima-virgin', 'Sancta Rosa de Lima, virgo', $desc$
Sancta Rosa de Lima prima sancta Americarum canonizata fuit, laica ob extraordinariam paenitentiam et orationem mysticam in Peruvia coloniali celebris. Sanctitas eius singularem florem sanctitatis intra Novum Orbem nuper evangelizatum signavit.

Asceticismum paenitentialem radicalem amplexa est, ut tertiaria Dominicana in domo familiari potius quam in monasterio vivens, ex persuasione passionem intensam, libere acceptam, passioni ipsi Christi pro animarum salute uniri posse. Cura eius erga pauperes, aegrotos et populos indigenas Limae vitam contemplativam comitata est, ostendens asceticismum rigorosum et caritatem concretam non opponi sed ex unico et devorante Dei amore manare posse.

Isabella Flores de Oliva Limae anno 1586 nata, nomen religiosum Rosae assumpsit et ut tertiaria Dominicana usque ad mortem anno 1617 vixit; anno 1671 a papa Clemente X canonizata est, prima persona in Americis nata quae hunc honorem acciperet, et postea patrona Americae Latinae, Insularum Philippinarum et Indiarum nominata est.

Eius testimonium vocationem paenitentium laicorum et tertiariorum intra Ecclesiam honorat, et signum manet sanctitatis quae in terris Americarum nuper evangelizatis a primo Ecclesiae cum hoc continenti congressu missionali radices egit.
$desc$),
('saint-bartholomew-apostle', 'Sanctus Bartholomaeus, Apostolus', $desc$
Sanctus Bartholomaeus unus ex Duodecim a Christo electis fuit, cum Nathanaele evangelii Ioannis ex traditione identificatus, ideoque ad ipsum fundamentum apostolicum Ecclesiae pertinet.

Iesus ipse eum laudavit ut Israelitam in quo dolus non est, descriptionem quam Ecclesia tamquam exemplar fidei sine fuco ad quam omnis credens vocatur legit. Traditio tenet Bartholomaeum Evangelium in terras remotas, inter quas Armeniam et Indiam, tulisse, et martyrium praesertim crudele passum esse, secundum traditionem per excoriationem, sortem postea in arte christiana immortalatam, notissime in Iudicio Extremo Michaelis Angeli.

Pauca historica adiuncta supersunt ultra mentiones evangelicas quae eum inter Duodecim nominant, sed antiqua traditio eum constanter cum labore missionali in Armenia associat, ubi ut apostolus fundator illius antiquae nationis christianae veneratur, et reliquiae eius obiecta devotionis Romae et alibi ab antiquitate sunt.

Eius testimonium credentes invitat ut transparentiam cordis quam Christus laudavit imitentur, et fortitudinem missionalem apostolorum honorat qui Evangelium ad fines orbis noti vitae suae pretio tulerunt.
$desc$),
('saint-louis', 'Sanctus Ludovicus', $desc$
Sanctus Ludovicus, rex Ludovicus IX Franciae, ut exemplar regalitatis christianae iustitia, austeritate personali et devotione erga pauperes insignitum recolitur. In eo sanctitas non seorsum a potestate temporali sed in ipso eius corde exercita est, exigens munus monarchae mediaevalis sanctificans.

Munus regium intellexit ut depositum pro bono subditorum potius quam pro propria amplificatione exercendum, administrationem iustitiae reformans, aegrotis et egenis in persona ministrans, et honestatem regis christiani super calculos rei publicae collocans. Vita eius Medio Aevo declinanti perenne ideale regis iusti et pii dedit.

Ludovicus IX ut rex Franciae ab anno 1226 usque ad mortem anno 1270 in octava cruciata prope Tunetum regnavit, et anno 1297 a papa Bonifatio VIII canonizatus est, unus ex paucis regibus Franciae ut sancti honoratis factus et lapis Lydius idealis monarchiae christianae per saecula sequentia.

Eius testimonium iis qui auctoritatem publicam exercent exemplar regiminis iustitiae et curae erga vulnerabiles ordinati offert, et totam Ecclesiam admonet potestatem mundanam, cum authentica fide animatur, verum instrumentum sanctitatis fieri posse.
$desc$),
('saint-joseph-calasanz-priest', 'Sanctus Iosephus Calasanctius, presbyter', $desc$
Sanctus Iosephus Calasanctius primas scholas publicas gratuitas Europae educationi puerorum pauperum dicatas condidit, et ut praecursor educationis christianae honoratur. Vita eius missionem Ecclesiae cum schola ligavit, in iuvenum institutione opus Evangelii videns.

Persuasum habebat educationem inter potentissima instrumenta esse ad pueros ex paupertate et ignorantia extrahendos, atque hoc opus proprie ad missionem Ecclesiae pertinere, quoniam formatio simul intellectus et conscientiae pueros tam ad florem temporalem quam ad salutem aeternam parat. Instantia eius in scholis gratuitis et bonis pro pauperibus posteriores motus ad educationem universalem saeculis praeoccupavit.

Calasanctius ordinem Piaristarum Romae anno 1597 condidit ad scholas puerorum pauperum instituendas et ministrandas, gravibus difficultatibus institutionalibus atque etiam temporali congregationis suae suppressione sub finem vitae occurrens antequam restitueretur; anno 1648 obiit, et Piaristae postea vindicati sunt et per Europam floruerunt. Anno 1767 canonizatus est.

Eius testimonium dignitatem docendi tamquam formam caritatis et evangelizationis honorat, et Ecclesiam hortatur ut educationem pauperum inter essentiales missionis suae in mundo dimensiones servet.
$desc$),
('saint-monica', 'Sancta Monica', $desc$
Sancta Monica ut mater honoratur cuius oratio perseverans et lacrimae longam conversionem filii sui, sancti Augustini Hipponensis, comitatae sunt. Historia eius in memoria christiana cum historia filii Augustini arcte coniungitur, cuius conversionem indefessa oratione quaesivit.

Exemplar est fidei maternae per decennia patientis intercessionis exercitae, difficile matrimonium et annos angoris de iuventute aberrante filii et de eius adhaesione errori Manichaeo ferens, priusquam, prope ipsum vitae finem, baptismum eius et conversionem ad fidem catholicam videret. Exemplum eius ostendit orationem perseverantem, etiam cum responsum eius indefinite differri videtur sustentam, unam ex potentissimis formis participationis in alterius animae salute manere.

Monica filium ab Africa Septentrionali in Italiam secuta est, sine cessatione pro eius conversione orans, et Mediolani ad baptismum eius a sancto Ambrosio anno 387 praesens fuit; eodem anno postea Ostiae obiit, in scaena contemplationis mysticae cum Augustino communicatae quam ille postea commote in Confessionibus suis rettulit, inter celeberrimas paginas litterarum christianarum.

Eius testimonium omnem parentem qui pro filio aberrante orat consolatur, spem sublevans gratiam, tempore Dei, perficere posse id quod humanus labor et sollicitudo soli obtinere nequeunt.
$desc$),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', 'Sanctus Augustinus, episcopus et Ecclesiae doctor', $desc$
Sanctus Augustinus Hipponensis inter influentissimos theologos historiae christianitatis occidentalis numeratur, cuius scripta doctrinam catholicam de gratia, de Trinitate et de natura Ecclesiae per millennium et dimidium amplius formaverunt. Conversio eius, precibus matris Monicae arcte coniuncta, historiam eius inter carissima testimonia victoriae gratiae collocavit.

Vita eius circa conversionem dramaticam versa est, ab inquieta ambitione et amore inordinato ad vitam Deo totam datam, iter quod in celebri persuasione sua resumpsit cor humanum inquietum manere donec in Deo requiescat. Hereditas eius theologica, praesertim doctrina de gratia contra controversiam Pelagianam elaborata, cadrum statuit intra quod Ecclesia Occidentalis libertatem humanam, peccatum et misericordiam divinam per saecula intellegeret.

A sancto Ambrosio Mediolani anno 387 per orationes matris suae baptizatus, Augustinus in Africam Septentrionalem rediit, presbyter deinde episcopus Hipponensis anno 395 ordinatus, et immensum opus, inter quod Civitatem Dei, produxit, ante mortem anno 430 dum Vandali urbem eius obsidebant, in crepusculo Africae Romanae.

Eius testimonium credentes invitat ut confidant nullam vitam nimis inordinatam esse quam gratia attingere non possit, et sustentam de gratia et libertate meditationem tamquam durum servitium quod Ecclesia unicuique generationi debet commendat.
$desc$),
('the-passion-of-saint-john-the-baptist-martyr', 'Passio Sancti Ioannis Baptistae', $desc$
Haec commemoratio, communiter Decollatio sancti Ioannis Baptistae appellata, martyrium ultimi et maximi prophetarum Veteris Testamenti, praeconis Christi, signat. Ille qui primus Agnum Dei monstravit eum nunc usque in mortem praecedit.

Narrationem evangelicam recolit matrimonii illegitimi Herodis cum Herodiade, intrepidae Ioannis denuntiationis illius unionis ut legi Dei contrariae, et decollationis eius ad petitionem filiae Herodiadis, mortis vanitate regia et temerario iuramento potius quam ullo iudicio exactae. Martyrium Ioannis pro defensione sanctitatis matrimonii contra commoditatem politicam totam eius missionem coronat: cum Christum per totam vitam monstravisset, nunc iniustam ipsius Domini condemnationem praesignat.

Evangelia Marci et Matthaei narrationem praebent cui haec antiqua commemoratio innititur, in calendario Romano ab antiquitate ut par celebrationi nativitatis Ioannis die 24 Iunii servata, sola figura praeter Christum et Mariam cuius Ritus Romanus et mortem et nativitatem commemorat.

Haec commemoratio fortitudinem incommodam veritatem moralem potentibus dicendi honorat, quolibet pretio personali, et fidelitatem Ioannis usque ad mortem tamquam aptam conclusionem missionis praeconis qui viam Domini paravit extollit.
$desc$)
) AS x(slug, name, description)
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

INSERT INTO celebration_translations (celebration_id, locale_code, description)
SELECT cel.id, 'en', x.description
FROM celebrations cel
JOIN feasts f ON f.id = cel.feast_id
JOIN calendars c ON c.id = cel.calendar_id AND c.code = 'ROMAN_GENERAL'
JOIN (VALUES
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on August 1 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes.
$desc$),
('saint-eusebius-of-vercelli-bishop', $desc$
In the Roman General Calendar, this celebration falls on August 2 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it. It shares this date with another optional memorial in the Roman General Calendar, so local or pastoral choice determines which observance is used.
$desc$),
('saint-peter-julian-eymard-priest', $desc$
In the Roman General Calendar, this celebration falls on August 2 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it. It shares this date with another optional memorial in the Roman General Calendar, so local or pastoral choice determines which observance is used.
$desc$),
('saint-jean-vianney-priest', $desc$
In the Roman General Calendar, this celebration falls on August 4 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes.
$desc$),
('the-dedication-of-the-basilica-of-saint-mary-major', $desc$
In the Roman General Calendar, this celebration falls on August 5 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it. The Roman observance preserves the memory of a specifically Roman basilica within the universal sanctoral cycle.
$desc$),
('the-transfiguration-of-the-lord', $desc$
In the Roman General Calendar, this celebration falls on August 6 as a feast of the Lord with white vestments.

As a feast of the Lord, it outranks memorials and ordinary weekdays and receives the fuller celebration proper to that rank.
$desc$),
('saint-sixtus-ii-pope-and-companions-martyrs', $desc$
In the Roman General Calendar, this celebration falls on August 7 as an optional memorial with red vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it. It shares this date with another optional memorial in the Roman General Calendar, so local or pastoral choice determines which observance is used.
$desc$),
('saint-cajetan-priest', $desc$
In the Roman General Calendar, this celebration falls on August 7 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it. It shares this date with another optional memorial in the Roman General Calendar, so local or pastoral choice determines which observance is used.
$desc$),
('saint-dominic-priest', $desc$
In the Roman General Calendar, this celebration falls on August 8 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes.
$desc$),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', $desc$
In the Roman General Calendar, this celebration falls on August 9 as an optional memorial with red vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it.
$desc$),
('saint-lawrence-deacon-and-martyr', $desc$
In the Roman General Calendar, this celebration falls on August 10 as a feast with red vestments.

As a feast, it outranks memorials and gives the day a fuller proper office and Mass. Among Roman martyrs, this day holds the exceptional rank of feast rather than memorial.
$desc$),
('saint-clare-virgin', $desc$
In the Roman General Calendar, this celebration falls on August 11 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes.
$desc$),
('saint-jane-frances-de-chantal-religious', $desc$
In the Roman General Calendar, this celebration falls on August 12 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it.
$desc$),
('saints-pontian-pope-and-hippolytus-priest-martyrs', $desc$
In the Roman General Calendar, this celebration falls on August 13 as an optional memorial with red vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it. It shares this date with another optional memorial in the Roman General Calendar, so local or pastoral choice determines which observance is used.
$desc$),
('saint-maximus-the-confessor', $desc$
In the Roman General Calendar, this celebration falls on August 13 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it. It shares this date with another optional memorial in the Roman General Calendar, so local or pastoral choice determines which observance is used.
$desc$),
('saint-maximilian-kolbe-priest-and-martyr', $desc$
In the Roman General Calendar, this celebration falls on August 14 as an obligatory memorial with red vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes. Its placement on the eve of the Assumption creates a notable Marian proximity for a saint marked by consecration to the Immaculate.
$desc$),
('the-assumption-of-the-blessed-virgin-mary', $desc$
In the Roman General Calendar, this celebration falls on August 15 as a solemnity with white vestments.

As a solemnity, it belongs to the highest rank of the sanctoral cycle and is celebrated with the full solemn form of the Roman Rite. In many places this solemnity also remains a holy day of obligation by local law.
$desc$),
('saint-stephen-of-hungary', $desc$
In the Roman General Calendar, this celebration falls on August 16 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it.
$desc$),
('saint-john-eudes-priest', $desc$
In the Roman General Calendar, this celebration falls on August 19 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it.
$desc$),
('saint-bernard-abbot-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on August 20 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes.
$desc$),
('saint-pius-x-pope', $desc$
In the Roman General Calendar, this celebration falls on August 21 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes.
$desc$),
('the-queenship-of-the-blessed-virgin-mary', $desc$
In the Roman General Calendar, this celebration falls on August 22 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes. Its position one week after the Assumption is a characteristic feature of the modern Roman arrangement of Marian observances.
$desc$),
('saint-rose-of-lima-virgin', $desc$
In the Roman General Calendar, this celebration falls on August 23 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it.
$desc$),
('saint-bartholomew-apostle', $desc$
In the Roman General Calendar, this celebration falls on August 24 as a feast with white vestments.

As a feast, it outranks memorials and gives the day a fuller proper office and Mass. The feast rank reflects the place ordinarily given to the apostles in the Roman sanctoral cycle.
$desc$),
('saint-louis', $desc$
In the Roman General Calendar, this celebration falls on August 25 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it. It shares this date with another optional memorial in the Roman General Calendar, so local or pastoral choice determines which observance is used.
$desc$),
('saint-joseph-calasanz-priest', $desc$
In the Roman General Calendar, this celebration falls on August 25 as an optional memorial with white vestments.

As an optional memorial, it may be chosen pastorally when no higher-ranking observance prevents it. It shares this date with another optional memorial in the Roman General Calendar, so local or pastoral choice determines which observance is used.
$desc$),
('saint-monica', $desc$
In the Roman General Calendar, this celebration falls on August 27 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes. Its place immediately before the memorial of Saint Augustine preserves the Roman pairing of mother and son on successive days.
$desc$),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', $desc$
In the Roman General Calendar, this celebration falls on August 28 as an obligatory memorial with white vestments.

As an obligatory memorial, it ordinarily provides the proper texts for the day unless a higher-ranking observance intervenes. Its place immediately after Saint Monica preserves the Roman pairing of mother and son on successive days.
$desc$),
('the-passion-of-saint-john-the-baptist-martyr', $desc$
In the Roman General Calendar, this celebration falls on August 29 as an obligatory memorial with red vestments.

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
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 1er août comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur.
$desc$),
('saint-eusebius-of-vercelli-bishop', $desc$
Dans le calendrier romain général, cette célébration tombe le 2 août comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche. Elle partage cette date avec une autre mémoire facultative du calendrier romain général ; le choix de l'observance peut donc être fait selon l'usage local ou pastoral.
$desc$),
('saint-peter-julian-eymard-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 2 août comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche. Elle partage cette date avec une autre mémoire facultative du calendrier romain général ; le choix de l'observance peut donc être fait selon l'usage local ou pastoral.
$desc$),
('saint-jean-vianney-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 4 août comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur.
$desc$),
('the-dedication-of-the-basilica-of-saint-mary-major', $desc$
Dans le calendrier romain général, cette célébration tombe le 5 août comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche. L'observance romaine conserve ainsi la mémoire d'une basilique proprement romaine dans le cycle universel des saints.
$desc$),
('the-transfiguration-of-the-lord', $desc$
Dans le calendrier romain général, cette célébration tombe le 6 août comme une fête du Seigneur avec les ornements blancs.

Comme fête du Seigneur, elle l'emporte sur les mémoires et les féries ordinaires et reçoit la forme de célébration plus ample propre à ce rang.
$desc$),
('saint-sixtus-ii-pope-and-companions-martyrs', $desc$
Dans le calendrier romain général, cette célébration tombe le 7 août comme une mémoire facultative avec les ornements rouges.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche. Elle partage cette date avec une autre mémoire facultative du calendrier romain général ; le choix de l'observance peut donc être fait selon l'usage local ou pastoral.
$desc$),
('saint-cajetan-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 7 août comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche. Elle partage cette date avec une autre mémoire facultative du calendrier romain général ; le choix de l'observance peut donc être fait selon l'usage local ou pastoral.
$desc$),
('saint-dominic-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 8 août comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur.
$desc$),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 9 août comme une mémoire facultative avec les ornements rouges.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche.
$desc$),
('saint-lawrence-deacon-and-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 10 août comme une fête avec les ornements rouges.

Comme fête, elle l'emporte sur les mémoires et donne au jour une messe et un office propres plus développés. Parmi les martyrs romains, ce jour reçoit exceptionnellement le rang de fête plutôt que celui de mémoire.
$desc$),
('saint-clare-virgin', $desc$
Dans le calendrier romain général, cette célébration tombe le 11 août comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur.
$desc$),
('saint-jane-frances-de-chantal-religious', $desc$
Dans le calendrier romain général, cette célébration tombe le 12 août comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche.
$desc$),
('saints-pontian-pope-and-hippolytus-priest-martyrs', $desc$
Dans le calendrier romain général, cette célébration tombe le 13 août comme une mémoire facultative avec les ornements rouges.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche. Elle partage cette date avec une autre mémoire facultative du calendrier romain général ; le choix de l'observance peut donc être fait selon l'usage local ou pastoral.
$desc$),
('saint-maximus-the-confessor', $desc$
Dans le calendrier romain général, cette célébration tombe le 13 août comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche. Elle partage cette date avec une autre mémoire facultative du calendrier romain général ; le choix de l'observance peut donc être fait selon l'usage local ou pastoral.
$desc$),
('saint-maximilian-kolbe-priest-and-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 14 août comme une mémoire obligatoire avec les ornements rouges.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur. Sa place à la veille de l'Assomption crée une proximité mariale marquée pour un saint profondément façonné par la consécration à l'Immaculée.
$desc$),
('the-assumption-of-the-blessed-virgin-mary', $desc$
Dans le calendrier romain général, cette célébration tombe le 15 août comme une solennité avec les ornements blancs.

Comme solennité, elle appartient au plus haut rang du cycle sanctoral et se célèbre avec toute la plénitude propre au rite romain. Dans de nombreux lieux, cette solennité demeure aussi une fête d'obligation en vertu du droit local.
$desc$),
('saint-stephen-of-hungary', $desc$
Dans le calendrier romain général, cette célébration tombe le 16 août comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche.
$desc$),
('saint-john-eudes-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 19 août comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche.
$desc$),
('saint-bernard-abbot-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 20 août comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur.
$desc$),
('saint-pius-x-pope', $desc$
Dans le calendrier romain général, cette célébration tombe le 21 août comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur.
$desc$),
('the-queenship-of-the-blessed-virgin-mary', $desc$
Dans le calendrier romain général, cette célébration tombe le 22 août comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur. Sa place une semaine après l'Assomption est un trait caractéristique de l'ordonnance mariale du calendrier romain moderne.
$desc$),
('saint-rose-of-lima-virgin', $desc$
Dans le calendrier romain général, cette célébration tombe le 23 août comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche.
$desc$),
('saint-bartholomew-apostle', $desc$
Dans le calendrier romain général, cette célébration tombe le 24 août comme une fête avec les ornements blancs.

Comme fête, elle l'emporte sur les mémoires et donne au jour une messe et un office propres plus développés. Le rang de fête correspond à la place ordinairement donnée aux apôtres dans le sanctoral romain.
$desc$),
('saint-louis', $desc$
Dans le calendrier romain général, cette célébration tombe le 25 août comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche. Elle partage cette date avec une autre mémoire facultative du calendrier romain général ; le choix de l'observance peut donc être fait selon l'usage local ou pastoral.
$desc$),
('saint-joseph-calasanz-priest', $desc$
Dans le calendrier romain général, cette célébration tombe le 25 août comme une mémoire facultative avec les ornements blancs.

Comme mémoire facultative, elle peut être choisie selon l'opportunité pastorale lorsqu'aucune célébration de rang supérieur ne l'empêche. Elle partage cette date avec une autre mémoire facultative du calendrier romain général ; le choix de l'observance peut donc être fait selon l'usage local ou pastoral.
$desc$),
('saint-monica', $desc$
Dans le calendrier romain général, cette célébration tombe le 27 août comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur. Sa place immédiatement avant la mémoire de saint Augustin conserve, dans le calendrier romain, l'enchaînement de la mère et du fils sur deux jours successifs.
$desc$),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', $desc$
Dans le calendrier romain général, cette célébration tombe le 28 août comme une mémoire obligatoire avec les ornements blancs.

Comme mémoire obligatoire, elle fournit normalement les textes propres du jour, sauf empêchement par une célébration de rang supérieur. Sa place immédiatement après sainte Monique conserve, dans le calendrier romain, l'enchaînement de la mère et du fils sur deux jours successifs.
$desc$),
('the-passion-of-saint-john-the-baptist-martyr', $desc$
Dans le calendrier romain général, cette célébration tombe le 29 août comme une mémoire obligatoire avec les ornements rouges.

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
('saint-alphonsus-liguori-bishop-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 1 Augusti agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat.
$desc$),
('saint-eusebius-of-vercelli-bishop', $desc$
In Calendario Romano Generali haec celebratio die 2 Augusti agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit. Eandem diem cum alia memoria ad libitum in Calendario Romano Generali communicat; ideo electio secundum usum localem vel pastoralem fieri potest.
$desc$),
('saint-peter-julian-eymard-priest', $desc$
In Calendario Romano Generali haec celebratio die 2 Augusti agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit. Eandem diem cum alia memoria ad libitum in Calendario Romano Generali communicat; ideo electio secundum usum localem vel pastoralem fieri potest.
$desc$),
('saint-jean-vianney-priest', $desc$
In Calendario Romano Generali haec celebratio die 4 Augusti agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat.
$desc$),
('the-dedication-of-the-basilica-of-saint-mary-major', $desc$
In Calendario Romano Generali haec celebratio die 5 Augusti agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit. Observantia Romana memoriam basilicae proprie Romanae intra universum sanctorale servat.
$desc$),
('the-transfiguration-of-the-lord', $desc$
In Calendario Romano Generali haec celebratio die 6 Augusti agitur ut festum Domini cum paramentis albis.

Ut festum Domini, memorias et ferias ordinarias antecedit atque pleniore celebratione fruitur.
$desc$),
('saint-sixtus-ii-pope-and-companions-martyrs', $desc$
In Calendario Romano Generali haec celebratio die 7 Augusti agitur ut memoria ad libitum cum paramentis rubris.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit. Eandem diem cum alia memoria ad libitum in Calendario Romano Generali communicat; ideo electio secundum usum localem vel pastoralem fieri potest.
$desc$),
('saint-cajetan-priest', $desc$
In Calendario Romano Generali haec celebratio die 7 Augusti agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit. Eandem diem cum alia memoria ad libitum in Calendario Romano Generali communicat; ideo electio secundum usum localem vel pastoralem fieri potest.
$desc$),
('saint-dominic-priest', $desc$
In Calendario Romano Generali haec celebratio die 8 Augusti agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat.
$desc$),
('saint-teresa-benedicta-of-the-cross-virgin-and-martyr', $desc$
In Calendario Romano Generali haec celebratio die 9 Augusti agitur ut memoria ad libitum cum paramentis rubris.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit.
$desc$),
('saint-lawrence-deacon-and-martyr', $desc$
In Calendario Romano Generali haec celebratio die 10 Augusti agitur ut festum cum paramentis rubris.

Ut festum, memorias antecedit atque diem propria Missa et Officio plenius exornat. Inter martyres Romanos hic dies eximie gradu festi potius quam memoriae gaudet.
$desc$),
('saint-clare-virgin', $desc$
In Calendario Romano Generali haec celebratio die 11 Augusti agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat.
$desc$),
('saint-jane-frances-de-chantal-religious', $desc$
In Calendario Romano Generali haec celebratio die 12 Augusti agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit.
$desc$),
('saints-pontian-pope-and-hippolytus-priest-martyrs', $desc$
In Calendario Romano Generali haec celebratio die 13 Augusti agitur ut memoria ad libitum cum paramentis rubris.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit. Eandem diem cum alia memoria ad libitum in Calendario Romano Generali communicat; ideo electio secundum usum localem vel pastoralem fieri potest.
$desc$),
('saint-maximus-the-confessor', $desc$
In Calendario Romano Generali haec celebratio die 13 Augusti agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit. Eandem diem cum alia memoria ad libitum in Calendario Romano Generali communicat; ideo electio secundum usum localem vel pastoralem fieri potest.
$desc$),
('saint-maximilian-kolbe-priest-and-martyr', $desc$
In Calendario Romano Generali haec celebratio die 14 Augusti agitur ut memoria obligatoria cum paramentis rubris.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat. Collocatio eius in vigilia Assumptionis insignem propinquitatem Marianam efficit pro sancto Immaculatae consecratione alte formato.
$desc$),
('the-assumption-of-the-blessed-virgin-mary', $desc$
In Calendario Romano Generali haec celebratio die 15 Augusti agitur ut sollemnitas cum paramentis albis.

Ut sollemnitas, ad summum gradum cycli sanctoralis pertinet et forma plenissima Ritus Romani celebratur. In multis locis haec sollemnitas etiam ex iure locali dies festus de praecepto manet.
$desc$),
('saint-stephen-of-hungary', $desc$
In Calendario Romano Generali haec celebratio die 16 Augusti agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit.
$desc$),
('saint-john-eudes-priest', $desc$
In Calendario Romano Generali haec celebratio die 19 Augusti agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit.
$desc$),
('saint-bernard-abbot-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 20 Augusti agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat.
$desc$),
('saint-pius-x-pope', $desc$
In Calendario Romano Generali haec celebratio die 21 Augusti agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat.
$desc$),
('the-queenship-of-the-blessed-virgin-mary', $desc$
In Calendario Romano Generali haec celebratio die 22 Augusti agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat. Locus eius una septimana post Assumptionem proprium signum est ordinationis Marianae calendarii Romani hodierni.
$desc$),
('saint-rose-of-lima-virgin', $desc$
In Calendario Romano Generali haec celebratio die 23 Augusti agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit.
$desc$),
('saint-bartholomew-apostle', $desc$
In Calendario Romano Generali haec celebratio die 24 Augusti agitur ut festum cum paramentis albis.

Ut festum, memorias antecedit atque diem propria Missa et Officio plenius exornat. Gradus festi locum refert qui apostolis in sanctorali Romano ordinarie tribuitur.
$desc$),
('saint-louis', $desc$
In Calendario Romano Generali haec celebratio die 25 Augusti agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit. Eandem diem cum alia memoria ad libitum in Calendario Romano Generali communicat; ideo electio secundum usum localem vel pastoralem fieri potest.
$desc$),
('saint-joseph-calasanz-priest', $desc$
In Calendario Romano Generali haec celebratio die 25 Augusti agitur ut memoria ad libitum cum paramentis albis.

Ut memoria ad libitum, eligi potest ubi nulla celebratio altior impedit. Eandem diem cum alia memoria ad libitum in Calendario Romano Generali communicat; ideo electio secundum usum localem vel pastoralem fieri potest.
$desc$),
('saint-monica', $desc$
In Calendario Romano Generali haec celebratio die 27 Augusti agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat. Locus eius statim ante memoriam sancti Augustini par matris et filii per dies successivos in calendario Romano servat.
$desc$),
('saint-augustine-of-hippo-bishop-and-doctor-of-the-church', $desc$
In Calendario Romano Generali haec celebratio die 28 Augusti agitur ut memoria obligatoria cum paramentis albis.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat. Locus eius statim post sanctam Monicam par matris et filii per dies successivos in calendario Romano servat.
$desc$),
('the-passion-of-saint-john-the-baptist-martyr', $desc$
In Calendario Romano Generali haec celebratio die 29 Augusti agitur ut memoria obligatoria cum paramentis rubris.

Ut memoria obligatoria, textus proprios diei ordinarie praebet, nisi celebratio altior impediat.
$desc$)
) AS x(slug, description)
ON f.slug = x.slug
ON CONFLICT (celebration_id, locale_code) DO NOTHING;

-- =========================================================
-- Roman General Calendar - September (append mode, EN/FR/LA)
-- Calendar: ROMAN_GENERAL
-- =========================================================

-- FEASTS
