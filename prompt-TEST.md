Je veux que tu réalises une révision éditoriale et théologique de toutes les descriptions de la table feasts de mon API liturgique.

Contexte du modèle de données

J'ai deux tables principales :

feasts : contient les informations intrinsèques et générales d'une fête ou d'un jour liturgique, notamment son nom et sa description.
celebrations : contient les informations propres à une célébration dans un calendrier ou une tradition donnée : date, rang liturgique, couleur liturgique, degré de célébration, etc.

La règle fondamentale est donc :

feasts doit rester aussi indépendant que possible d'un calendrier, d'un lectionnaire, d'une réforme liturgique ou d'une région particulière. celebrations décrit l'implémentation concrète de cette fête dans une tradition liturgique donnée.

Problème à corriger

Certaines descriptions de feasts mélangent l'identité générale de la fête avec des éléments qui ne sont vrais que dans le calendrier liturgique romain actuel.

Exemple problématique :

"Le Cinquième dimanche de Carême tourne directement l'Église vers le mystère de la mort et de la vie à l'approche de la Semaine sainte. Là où il est proclamé, l'épisode évangélique de la résurrection de Lazare donne à ce dimanche une intensité grave et pleine d'espérance..."

Cette description suppose que Lazare est constitutif du Cinquième dimanche de Carême. Or cela dépend notamment du cycle liturgique et de la forme du calendrier considérée. Dans le rite romain actuel, Jean 11 (Lazare) est notamment associé au Cinquième dimanche de Carême de l'année A, tandis que les usages antérieurs au concile Vatican II et les autres traditions liturgiques peuvent présenter une autre organisation des lectures et une autre accentuation théologique.

Il ne faut donc PAS transformer accidentellement un élément du lectionnaire actuel en propriété universelle de la fête.

Règles éditoriales

Pour chaque description de feasts, applique les règles suivantes.

1. Distinguer l'essentiel de l'accidentel

Détermine d'abord ce qui constitue réellement l'identité liturgique générale de la fête.

La description doit privilégier :

la signification liturgique fondamentale ;
le mystère chrétien célébré ;
la place générale de la fête dans l'année liturgique ;
son sens théologique lorsque celui-ci est stable ;
son sens spirituel et pastoral lorsqu'il est suffisamment universel.

Évite de présenter comme universels des éléments qui dépendent :

d'une année liturgique particulière ;
d'un cycle de lectures particulier ;
du lectionnaire actuel ;
d'une réforme liturgique donnée ;
d'une forme particulière du rite romain ;
d'une région ;
d'un calendrier diocésain ;
d'une tradition liturgique particulière. 2. Ne jamais déduire l'identité d'une fête uniquement de l'Évangile du jour

Si une description dit par exemple :

"ce dimanche est celui de Lazare" ;
"ce jour est centré sur l'épisode de X" ;
"l'Évangile de ce jour raconte X" ;

vérifie si cela est réellement constitutif de la fête ou si cela provient seulement du lectionnaire utilisé.

Si c'est lié à un lectionnaire particulier, reformule de manière générale.

Par exemple, au lieu de :

"Le Cinquième dimanche de Carême célèbre la résurrection de Lazare."

préférer quelque chose comme :

"Le Cinquième dimanche de Carême approfondit l'espérance chrétienne face au péché, à la mort et à la promesse de la vie nouvelle, dans la proximité du mystère pascal."

Puis, seulement si cela est pertinent historiquement, signaler que certains usages liturgiques ont associé ce dimanche au récit de Lazare.

3. Prendre en compte l'histoire liturgique lorsque cela change réellement le sens

Si une fête a une histoire liturgique importante, la description peut mentionner brièvement son évolution.

Dans ce cas, explique clairement :

ce qui appartenait à l'usage ancien ;
ce qui a été modifié par une réforme ;
ce qui appartient au calendrier romain actuel ;
éventuellement ce qui varie selon les traditions ou régions.

Mais ne transforme pas chaque description en article historique.

L'histoire doit être mentionnée uniquement lorsqu'elle permet de comprendre une différence réelle entre les usages liturgiques.

4. Cas particulier du rite romain avant et après Vatican II

Sois particulièrement attentif aux différences entre :

le calendrier romain antérieur aux réformes liturgiques du XXe siècle ;
le calendrier romain issu de la réforme liturgique postérieure au concile Vatican II ;
les usages actuels qui conservent des livres liturgiques antérieurs à la réforme.

Ne suppose jamais qu'une caractéristique du calendrier romain actuel était également présente avant la réforme.

Inversement, ne suppose pas qu'une pratique ancienne a disparu partout simplement parce qu'elle n'est plus présente dans le calendrier romain actuel.

Lorsque la différence est importante, formule-la explicitement et avec prudence.

5. Ne pas sur-historiciser

N'ajoute pas automatiquement une section historique à chaque fête.

Si le sens général de la fête est suffisamment stable à travers les différentes périodes, écris simplement une description générale.

Exemple de logique :

Si le sens est essentiellement stable → description générale.
Si le sens est stable mais que les lectures changent → rester général, sans parler des lectures.
Si une réforme a profondément modifié la nature, le rang ou le sens de la célébration → mention historique concise.
Si plusieurs traditions donnent à la fête des accents différents → le signaler uniquement si cette différence est pertinente.
Si une particularité régionale existe mais n'a pas d'impact sur l'identité générale → ne pas la mentionner. 6. Ne pas confondre feast et celebration

Utilise cette distinction comme principe directeur :

feast = "Qu'est-ce que cette fête signifie dans la tradition liturgique ?"

celebration = "Comment cette fête est-elle célébrée dans tel calendrier, telle forme liturgique, telle période ou telle tradition ?"

Par conséquent, les informations comme :

date exacte ;
jour de la semaine ;
rang ;
couleur liturgique ;
priorité ;
degré de célébration ;
concurrence avec une autre célébration ;
lectures précises ;
particularités d'un calendrier ;
règles propres à une forme du rite ;

ne doivent généralement PAS être introduites dans la description générale de feasts, sauf si elles sont nécessaires pour comprendre l'identité historique de la fête.

7. Attention aux lectures liturgiques

Une référence à une lecture biblique peut être conservée dans une description uniquement si elle est historiquement et liturgiquement constitutive de la fête dans le contexte considéré.

Sinon, ne présente pas une lecture particulière comme faisant partie de l'identité universelle de la fête.

Par exemple :

Mauvais :
"Le jour célèbre le récit de Lazare."

Meilleur :
"Le jour met en lumière l'espérance de la vie nouvelle et la victoire du Christ sur la mort."

Et si l'histoire liturgique le justifie :
"Dans le calendrier romain actuel, ce dimanche peut notamment être associé au récit de Lazare dans le cycle A ; cette association ne doit toutefois pas être présentée comme définissant universellement le dimanche."

8. Variations régionales et traditionnelles

Ne mentionne une variation régionale que lorsqu'elle est réellement significative.

Ne transforme pas une exception locale en caractéristique générale.

Si plusieurs traditions chrétiennes célèbrent une fête sous des formes très différentes, indique-le de manière concise et neutre.

9. Style

Les descriptions doivent être :

théologiquement sérieuses ;
historiquement prudentes ;
encyclopédiques mais lisibles ;
naturelles en français ;
sans répétitions ;
sans affirmations absolues lorsque les sources liturgiques varient ;
sans jargon inutile ;
sans inventer de faits historiques.

Évite les formulations artificiellement emphatiques ou pseudo-théologiques.

Évite également les répétitions du type :

"Cette fête invite les fidèles..."
"Cette fête nous rappelle..."
"Cette fête nous enseigne..."

à chaque paragraphe.

Une description doit être informative avant d'être homilétique.

Méthode de travail

Pour CHAQUE entrée de feasts :

Lis le nom et la description existante.
Identifie les affirmations qui dépendent potentiellement d'un calendrier, d'un lectionnaire, d'une époque ou d'une région.
Sépare les éléments théologiques généraux des éléments circonstanciels.
Vérifie mentalement si ces éléments sont valables :
dans le calendrier romain actuel ;
dans les usages romains antérieurs à Vatican II ;
dans la mesure pertinente, dans les autres traditions liturgiques.
Si l'information est dépendante d'un contexte particulier, soit :
supprime-la de la description générale ;
soit reformule-la comme une évolution historique lorsque cette évolution est importante.
Réécris ensuite la description.
Ne modifie pas les données de celebrations sauf si je te le demande explicitement.
Ne change pas le sens théologique d'une fête simplement pour rendre la description plus moderne.
Ne fabrique aucune information historique pour combler un manque.
Format attendu

Pour chaque entrée modifiée, donne :

le nom de la fête ;
la description actuelle ;
les problèmes identifiés ;
la nouvelle description ;
éventuellement une courte note historique expliquant une différence entre usages, uniquement si elle est nécessaire.

Si la description actuelle est déjà suffisamment générale et historiquement correcte, ne la réécris pas inutilement.

Règle essentielle

En cas de doute entre une formulation précise mais dépendante d'un contexte liturgique particulier et une formulation plus générale mais historiquement robuste, privilégie la formulation générale dans feasts.

Les détails propres à une période, une forme du rite, un calendrier, un lectionnaire ou une région doivent être rattachés à celebrations ou à une future structure historique/spécifique, et non incorporés implicitement dans la description générale de la fête.

Avant de modifier massivement les données, commence par analyser 10 entrées représentatives et montre-moi les corrections proposées afin que je puisse valider ta méthode.
