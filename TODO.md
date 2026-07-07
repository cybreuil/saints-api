Full structure in rust ?
Rest api design ! json responses ! maybe a web server like actix-web or rocket ?
- GET /saints - list all saints
- GET /saints/{id} - get details of a specific saint
- POST /saints - create a new saint
- PUT /saints/{id} - update an existing saint
- DELETE /saints/{id} - delete a saint
- GET /feasts - list all feasts
- etc

Maybe no modification alowed ? i should maybe prerssxent this as a definitive list of saints and feasts, with no option to add or remove entries. This would make it more of a reference API rather than a CRUD API.

maybe romcal on node ? or scrap it ?

fix sql
+++ ALL LIST OF MODERN REGIONAL CALENDAR ON WIKIPEDIA
https://en.wikipedia.org/wiki/National_calendars_of_the_Roman_Rite

full list of saints
https://en.wikipedia.org/wiki/List_of_Catholic_saints

+ ajouter accompagnements / liens avec probleme de tous les jours: saint des troubles du sommeil, saint des voyageurs, etc sans forcement passer par le patronage officiel, mais en se basant sur les traditions populaires et les croyances associées à certains saints. (terme intercession me parait plus approprié que patronage dans ce cas)

+ ajouter une table liaison peinture, pour avoir plusieurs saints par peinture ?

+ need double check dates birth death...

+ need couble check on companions saints, need normalization

+ need double check on indexs : 
ORDER BY default_name ASC 
/for exemple

+ maybe should split logic for saint of today & saint of the day / actually are on same route with query param, but maybe should be split into two routes for clarity ?

Need mapping query errors on apierrors
+ need checking on differences between rome & vatican for places

+ cache control

+++ logique celebration en table pour l'année ?
Une autre possibilité (que beaucoup de projets liturgiques utilisent)

Au démarrage de l'application (ou via un cron annuel), tu génères toutes les célébrations mobiles de l'année et tu les stockes dans une table du type :

celebration_occurrences
-----------------------
celebration_id
date
calendar_id

Par exemple :

2026-04-05  Easter
2026-04-06  Monday in Easter Octave
2026-05-14  Ascension
2026-06-04  Corpus Christi

Ensuite ton endpoint devient simplement :

SELECT ...
FROM celebration_occurrences
WHERE date = $1;

C'est extrêmement rapide et toute la logique de calcul est déplacée dans une étape de génération.

++ Need gerer heritage des celebrations en fonction des calendriers

+ Check ash wednesday / bernadette soubirous
