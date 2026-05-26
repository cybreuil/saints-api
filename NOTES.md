INFO:
Le Martyrologe Romain fait partie des livres liturgiques de l’Église. Il donne pour chaque jour de l’année une liste de Saints qui est lue le matin dans les Communautés religieuses au cours de l’Office de Prime.
Le premier Saint de la liste de chaque jour est habituellement celui que l’Église honore de façon universelle c’est-à-dire dans toutes les Églises locales (les « diocèses ») du monde. Ce Saint est donné dans les Missels dans la partie dite du « sanctoral », tandis que les agendas et autres calendriers des Postes le reprennent également. Nous le donnons ici dans la rubrique « Le Saint du jour ».

Ce Saint (ou ces Saints s’ils sont plusieurs ensemble, ou s’il y a une « mémoire » en plus) est signalé dans la liste alphabétique récapitulatrice par un petit triangle bleu précédant son nom.

Ce Saint de chaque jour est fêté de façon plus ou moins solennelle selon le degré d’importance (« classe ») qu’indiquent les Missels et, chaque année, le calendrier liturgique de l’Église (l’Ordo). Nous l’indiquons également (« 1re classe », « 2e classe », « 3e classe », « mémoire »).

Les autres Saints qui suivent dans la liste quotidienne sont fêtés dans différents lieux indiqués.

Outre le Martyrologe Romain, il y a les Martyrologes locaux : pour les pays (« Propre de France » par exemple), pour les diocèses (« Propre du diocèse de Nice »), pour les ordres religieux (« Propre de l’Ordre des Prêcheurs » ou Dominicains). Il peut y avoir concurrence entre ces calendriers, et des règles précisent quel Saint l’emporte en fonction de la « classe » du Saint local.

source: cassicia.com


---
V1 images infos english - 
V2 i18n table traduction image
Pour les photos: 
- caravage
- georges de la tour
- zurbaran
- guido reni
- jusepe de ribera
- giambattista tiepolo
- diego velasquez
- bartolome esteban murillo
- del piombo

---
Noli me tangere painting, maybe should add locution to mary magdalene paintings that

---
Pour build cargo build;
Mais pour build en prod: on utilisera
cargo build --release: le build sera plus rapide et opti !

-- archi rework 
src/
  main.rs

  core/
    config.rs
    db.rs
    error.rs

  middleware/
    auth.rs
    logger.rs

  modules/
    saints/
      mod.rs
      model.rs
      dto.rs
      repo.rs
      service.rs
      handlers.rs
      routes.rs

    images/
      mod.rs
      model.rs
      dto.rs
      repo.rs
      service.rs
      handlers.rs
      routes.rs

    places/

+
Middlewares ideas:
Checklist
- [x] Request ID (X-Request-Id)
- [x] Tracing + Logger
- [x] CORS (configurable via env)
- [x] Security headers (DefaultHeaders)
- [x] Body limit (JsonConfig)
- [x] Compression
- [x] ErrorHandlers / central ApiError -> JSON
- [x] Timeout (per-request)
- [x] Rate limiter
- [x] Auth middleware
- [x] Health & /metrics
