-- =========================================================
-- SCHÉMA SQL - Site "Ordo"
-- Compatible & optimisé pour PostgreSQL
-- =========================================================

-- Nettoyage des tables existantes (ordre inverse des dépendances)
DROP TABLE IF EXISTS celebration_saints CASCADE;
DROP TABLE IF EXISTS celebrations CASCADE;
DROP TABLE IF EXISTS feast_dates CASCADE;
DROP TABLE IF EXISTS feast_translations CASCADE;
DROP TABLE IF EXISTS saint_translations CASCADE;
DROP TABLE IF EXISTS saint_patronages CASCADE;
DROP TABLE IF EXISTS patronage_translations CASCADE;
DROP TABLE IF EXISTS patronages CASCADE;
DROP TABLE IF EXISTS saint_attributes CASCADE;
DROP TABLE IF EXISTS attribute_translations CASCADE;
DROP TABLE IF EXISTS attributes CASCADE;
DROP TABLE IF EXISTS saints CASCADE;
DROP TABLE IF EXISTS feasts CASCADE;
DROP TABLE IF EXISTS liturgical_color_translations CASCADE;
DROP TABLE IF EXISTS liturgical_colors CASCADE;
DROP TABLE IF EXISTS liturgical_rank_translations CASCADE;
DROP TABLE IF EXISTS liturgical_ranks CASCADE;
DROP TABLE IF EXISTS calendar_translations CASCADE;
DROP TABLE IF EXISTS calendars CASCADE;
DROP TABLE IF EXISTS locales CASCADE;

-- =========================================================
-- 1) Référentiels
-- =========================================================

-- Langues disponibles
CREATE TABLE locales (
    code TEXT PRIMARY KEY CHECK (char_length(code) <= 10),	-- ex: fr, en, la
    native_name TEXT NOT NULL,
    english_name TEXT NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT TRUE
);

-- Calendriers liturgiques (avec héritage hiérarchique)
CREATE TABLE calendars (
    id SERIAL PRIMARY KEY,
    code TEXT UNIQUE NOT NULL,	-- ex: ROMAN_GENERAL_1969, ROMAN_FRANCE_1969, ORTHODOX_RUSSIAN etc
    parent_id INTEGER REFERENCES calendars(id) ON DELETE SET NULL,
    date_system TEXT NOT NULL DEFAULT 'gregorian' CHECK (date_system IN ('gregorian', 'julian')),	-- gregorian, julian
    easter_computation TEXT NOT NULL DEFAULT 'western' CHECK (easter_computation IN ('western', 'eastern')),	-- western, eastern
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Traductions des calendriers
CREATE TABLE calendar_translations (
	calendar_id INTEGER NOT NULL REFERENCES calendars(id) ON DELETE CASCADE,
	locale_code TEXT NOT NULL REFERENCES locales(code) ON DELETE CASCADE,
	name TEXT NOT NULL,
	description TEXT,
	PRIMARY KEY (calendar_id, locale_code)
);

-- Rangs liturgiques (dépendants du calendrier)
CREATE TABLE liturgical_ranks (
    id SERIAL PRIMARY KEY,
    calendar_id INTEGER NOT NULL REFERENCES calendars(id) ON DELETE CASCADE,
	code TEXT NOT NULL,	-- ex: Modern Roman: SOLEMNITY, FEAST, MEM_OBL, MEM_OPT, FERIA / Traditional: CLASS_I, CLASS_II, CLASS_III, CLASS_IV
    precedence SMALLINT NOT NULL CHECK (precedence > 0),
    UNIQUE (calendar_id, code),
    UNIQUE (calendar_id, precedence)
);

-- Traduction des rangs liturgiques
CREATE TABLE liturgical_rank_translations (
	rank_id INTEGER NOT NULL REFERENCES liturgical_ranks(id) ON DELETE CASCADE,
	locale_code TEXT NOT NULL REFERENCES locales(code) ON DELETE CASCADE,
	label TEXT NOT NULL,
	PRIMARY KEY (rank_id, locale_code)
);

-- Couleurs liturgiques
CREATE TABLE liturgical_colors (
    id SERIAL PRIMARY KEY,
    code TEXT UNIQUE NOT NULL,	-- ex: WHITE, RED, GREEN
    hex_color TEXT NOT NULL CHECK (hex_color ~ '^#[0-9A-Fa-f]{6}$')	-- ex: #FFFFFF, #FF0000
);

-- Traductions des couleurs liturgiques
CREATE TABLE liturgical_color_translations (
    color_id INTEGER NOT NULL REFERENCES liturgical_colors(id) ON DELETE CASCADE,
    locale_code TEXT NOT NULL REFERENCES locales(code) ON DELETE CASCADE,
    label TEXT NOT NULL,
    PRIMARY KEY (color_id, locale_code)
);

-- =========================================================
-- 2) Saints
-- =========================================================

CREATE TABLE saints (
    id SERIAL PRIMARY KEY,
    slug TEXT UNIQUE NOT NULL,	-- ex: saint-joseph
    default_name TEXT NOT NULL,
    birth_year SMALLINT,
    birth_month SMALLINT CHECK (birth_month BETWEEN 1 AND 12),
	birth_day SMALLINT CHECK (birth_day BETWEEN 1 AND 31),
	birth_is_approximate BOOLEAN NOT NULL DEFAULT FALSE,	-- true si la date de naissance est approximative (ex: "vers l'an 400'")
    death_year SMALLINT,
	death_month SMALLINT CHECK (death_month BETWEEN 1 AND 12),
	death_day SMALLINT CHECK (death_day BETWEEN 1 AND 31),
	death_is_approximate BOOLEAN NOT NULL DEFAULT FALSE,	-- true si la date de décès est approximative (ex: "vers l'an 500'")
    century SMALLINT CHECK (century > 0),	-- ex: 1 pour Ier siècle, 20 pour XXe siècle
    image_url TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE saint_translations (
    saint_id INTEGER NOT NULL REFERENCES saints(id) ON DELETE CASCADE,
    locale_code TEXT NOT NULL REFERENCES locales(code) ON DELETE CASCADE,
    name TEXT NOT NULL,
    short_description TEXT,
    full_biography TEXT,
    life_label TEXT,   -- C'est la date approximative ex: "Vers le IVe siècle"
    PRIMARY KEY (saint_id, locale_code)
);

-- =========================================================
-- 3) Attributs (normalisés + traduits)
-- =========================================================

CREATE TABLE attributes (
    id SERIAL PRIMARY KEY,
    code TEXT UNIQUE NOT NULL, -- ex: LILY, SWORD, SKULL, BOOK
    category TEXT -- ex: symbol, title, order
    -- symbol = attribut iconographique (ex: LILY, SWORD, SKULL, BOOK, etc )
    -- title = titre honorifique (ex: MARTYR, VIRGIN, CONFESSOR, DOCTOR_OF_THE_CHURCH, etc)
    -- Order = membre d'un ordre religieux (ex: BENEDICTINE, DOMINICAN, JESUIT etc)
);

CREATE TABLE attribute_translations (
    attribute_id INTEGER NOT NULL REFERENCES attributes(id) ON DELETE CASCADE,
    locale_code TEXT NOT NULL REFERENCES locales(code) ON DELETE CASCADE,
    label TEXT NOT NULL,
    description TEXT,
    PRIMARY KEY (attribute_id, locale_code)
);

CREATE TABLE saint_attributes (
    saint_id INTEGER NOT NULL REFERENCES saints(id) ON DELETE CASCADE,
    attribute_id INTEGER NOT NULL REFERENCES attributes(id) ON DELETE CASCADE,
    PRIMARY KEY (saint_id, attribute_id)
);

-- =========================================================
-- 4) Patronages (normalisés + traduits)
-- =========================================================

CREATE TABLE patronages (
    id SERIAL PRIMARY KEY,
    code TEXT UNIQUE NOT NULL -- ex: WORKERS, FRANCE, STUDENTS
);

CREATE TABLE patronage_translations (
    patronage_id INTEGER NOT NULL REFERENCES patronages(id) ON DELETE CASCADE,
    locale_code TEXT NOT NULL REFERENCES locales(code) ON DELETE CASCADE,
    label TEXT NOT NULL,
    description TEXT,
    PRIMARY KEY (patronage_id, locale_code)
);

CREATE TABLE saint_patronages (
    saint_id INTEGER NOT NULL REFERENCES saints(id) ON DELETE CASCADE,
    patronage_id INTEGER NOT NULL REFERENCES patronages(id) ON DELETE CASCADE,
    PRIMARY KEY (saint_id, patronage_id)
);

-- =========================================================
-- 5) Fêtes liturgiques
-- =========================================================

CREATE TABLE feasts (
    id SERIAL PRIMARY KEY,
    slug TEXT UNIQUE NOT NULL, -- exemple: nativity-of-saint-john-the-baptist
    default_name TEXT NOT NULL,
    feast_type TEXT NOT NULL, -- ex: saint, marial, christologique, dedicace, autre ou en anglais: saint, marian, christological, dedication, other
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE feast_translations (
    feast_id INTEGER NOT NULL REFERENCES feasts(id) ON DELETE CASCADE,
    locale_code TEXT NOT NULL REFERENCES locales(code) ON DELETE CASCADE,
    name TEXT NOT NULL,
    description TEXT,
    PRIMARY KEY (feast_id, locale_code)
);

-- =========================================================
-- 6) Dates des fêtes (règles calendaires)
-- =========================================================
-- La date peut varier selon le calendrier (héritage pris en compte côté app)

CREATE TABLE feast_dates (
    id SERIAL PRIMARY KEY,
    feast_id INTEGER NOT NULL REFERENCES feasts(id) ON DELETE CASCADE,
    calendar_id INTEGER NOT NULL REFERENCES calendars(id) ON DELETE CASCADE,

    -- Type de date: fixed (date fixe) ou movable (date mobile selon Pâques ou autre fête mobile)
    date_kind TEXT NOT NULL CHECK (date_kind IN ('fixed', 'movable')),

    -- Pour fixed
    month SMALLINT CHECK (month BETWEEN 1 AND 12),
    day SMALLINT CHECK (day BETWEEN 1 AND 31),

    -- Pour movable (interprété selon calendar.easter_computation)
    movable_base TEXT,	-- ex: EASTER, CHRISTMAS
    movable_offset_days INTEGER,

    -- Période de validité historique (optionnel); On utilisera probablement pas
    valid_from DATE,
    valid_to DATE,

    notes TEXT,

    CHECK (
        (date_kind = 'fixed' AND month IS NOT NULL AND day IS NOT NULL AND movable_base IS NULL AND movable_offset_days IS NULL)
        OR
        (date_kind = 'movable' AND movable_base IS NOT NULL AND month IS NULL AND day IS NULL)
    ),
    CHECK (
        valid_to IS NULL OR valid_from IS NULL OR valid_to >= valid_from
    )
);

-- =========================================================
-- 7) Célébrations (fête + calendrier + rang + couleur)
-- =========================================================
-- Une célébration locale surcharge la célébration parente (résolu côté app)

CREATE TABLE celebrations (
    id SERIAL PRIMARY KEY,
    feast_id INTEGER NOT NULL REFERENCES feasts(id) ON DELETE CASCADE,
    calendar_id INTEGER NOT NULL REFERENCES calendars(id) ON DELETE CASCADE,
    rank_id INTEGER NOT NULL REFERENCES liturgical_ranks(id) ON DELETE RESTRICT,
    color_id INTEGER REFERENCES liturgical_colors(id) ON DELETE RESTRICT,  -- nullable (certaines traditions)

    is_optional BOOLEAN NOT NULL DEFAULT FALSE,
    notes TEXT,

    -- valid_from DATE,
    -- valid_to DATE,

    -- Enlever unique si on veut gerer les anciennes célébrations historiques avec from / to
    UNIQUE (feast_id, calendar_id),
    -- CHECK (
    --     valid_to IS NULL OR valid_from IS NULL OR valid_to >= valid_from
    -- )
);

-- Liaison célébrations <-> saints
CREATE TABLE celebration_saints (
    celebration_id INTEGER NOT NULL REFERENCES celebrations(id) ON DELETE CASCADE,
    saint_id INTEGER NOT NULL REFERENCES saints(id) ON DELETE CASCADE,
    role TEXT, -- ex: principal, compagnon, martyr
    PRIMARY KEY (celebration_id, saint_id)
);

-- =========================================================
-- 8) Index
-- =========================================================

CREATE INDEX idx_calendars_parent ON calendars(parent_id);

CREATE INDEX idx_feast_dates_fixed
    ON feast_dates(calendar_id, month, day)
    WHERE date_kind = 'fixed';

CREATE INDEX idx_feast_dates_movable
    ON feast_dates(calendar_id, movable_base, movable_offset_days)
    WHERE date_kind = 'movable';

CREATE INDEX idx_celebrations_calendar ON celebrations(calendar_id);
CREATE INDEX idx_celebrations_feast ON celebrations(feast_id);
CREATE INDEX idx_celebrations_rank ON celebrations(rank_id);
CREATE INDEX idx_celebrations_color ON celebrations(color_id);

CREATE INDEX idx_saint_translations_locale ON saint_translations(locale_code);
CREATE INDEX idx_feast_translations_locale ON feast_translations(locale_code);
CREATE INDEX idx_patronage_translations_locale ON patronage_translations(locale_code);
CREATE INDEX idx_attribute_translations_locale ON attribute_translations(locale_code);
CREATE INDEX idx_liturgical_color_translations_locale ON liturgical_color_translations(locale_code);

-- =========================================================
-- 9) Seeds minimaux
-- =========================================================

-- Locales
INSERT INTO locales (code, native_name, english_name) VALUES
('fr', 'Français', 'French'),
('en', 'English', 'English'),
('la', 'Latin', 'Latin');

-- Calendriers techniques
INSERT INTO calendars (code, parent_id, date_system, easter_computation) VALUES
('ROMAN_GENERAL_1969', NULL, 'gregorian', 'western'),
('TRIDENTINE_1962', NULL, 'gregorian', 'western'),
('ORTHODOX_RUSSIAN', NULL, 'julian', 'eastern'),
('ORTHODOX_GREEK', NULL, 'gregorian', 'eastern');

-- Calendriers régionaux (héritage)
INSERT INTO calendars (code, parent_id, date_system, easter_computation)
SELECT 'ROMAN_FRANCE', id, 'gregorian', 'western'
FROM calendars
WHERE code = 'ROMAN_GENERAL_1969';

INSERT INTO calendars (code, parent_id, date_system, easter_computation)
SELECT 'ROMAN_ITALY', id, 'gregorian', 'western'
FROM calendars
WHERE code = 'ROMAN_GENERAL_1969';

-- Traductions des calendriers (FR)
INSERT INTO calendar_translations (calendar_id, locale_code, name, description)
SELECT c.id, 'fr', x.name, x.description
FROM calendars c
JOIN (VALUES
    ('ROMAN_GENERAL_1969', 'Calendrier romain général (1969+)', 'Forme ordinaire post-Vatican II'),
    ('TRIDENTINE_1962', 'Calendrier traditionnel (1962)', 'Missel de 1962, forme extraordinaire'),
    ('ROMAN_FRANCE', 'Calendrier romain - France', 'Propre de France'),
    ('ROMAN_ITALY', 'Calendrier romain - Italie', 'Propre d''Italie'),
    ('ORTHODOX_RUSSIAN', 'Calendrier orthodoxe russe', 'Patriarcat de Moscou'),
    ('ORTHODOX_GREEK', 'Calendrier orthodoxe grec', 'Nouveau calendrier')
) AS x(code, name, description)
ON c.code = x.code;

-- Traductions des calendriers (EN)
INSERT INTO calendar_translations (calendar_id, locale_code, name, description)
SELECT c.id, 'en', x.name, x.description
FROM calendars c
JOIN (VALUES
    ('ROMAN_GENERAL_1969', 'General Roman Calendar (1969+)', 'Ordinary Form after Vatican II'),
    ('TRIDENTINE_1962', 'Traditional Calendar (1962)', '1962 Missal, Extraordinary Form'),
    ('ROMAN_FRANCE', 'Roman Calendar - France', 'Proper of France'),
    ('ROMAN_ITALY', 'Roman Calendar - Italy', 'Proper of Italy'),
    ('ORTHODOX_RUSSIAN', 'Russian Orthodox Calendar', 'Moscow Patriarchate'),
    ('ORTHODOX_GREEK', 'Greek Orthodox Calendar', 'New Calendar')
) AS x(code, name, description)
ON c.code = x.code;

-- Traductions des calendriers (LA) - optionnel/minimal
INSERT INTO calendar_translations (calendar_id, locale_code, name, description)
SELECT c.id, 'la', x.name, x.description
FROM calendars c
JOIN (VALUES
    ('ROMAN_GENERAL_1969', 'Calendarium Romanum Generale (1969+)', 'Forma ordinaria post Concilium Vaticanum II'),
    ('TRIDENTINE_1962', 'Calendarium Traditionale (1962)', 'Missale Romanum anni 1962'),
    ('ROMAN_FRANCE', 'Calendarium Romanum - Gallia', 'Proprium Galliae'),
    ('ROMAN_ITALY', 'Calendarium Romanum - Italia', 'Proprium Italiae'),
    ('ORTHODOX_RUSSIAN', 'Calendarium Orthodoxum Russicum', 'Patriarchatus Moscoviae'),
    ('ORTHODOX_GREEK', 'Calendarium Orthodoxum Graecum', 'Calendarium novum')
) AS x(code, name, description)
ON c.code = x.code;

-- Rangs techniques pour calendrier romain actuel
INSERT INTO liturgical_ranks (calendar_id, code, precedence)
SELECT c.id, x.code, x.precedence
FROM calendars c
CROSS JOIN (VALUES
    ('SOLEMNITY', 1),
    ('FEAST', 2),
    ('MEM_OBL', 3),
    ('MEM_OPT', 4),
    ('FERIA', 5)
) AS x(code, precedence)
WHERE c.code = 'ROMAN_GENERAL_1969';

-- Traductions FR des rangs romains actuels
INSERT INTO liturgical_rank_translations (rank_id, locale_code, label)
SELECT r.id, 'fr', x.label
FROM liturgical_ranks r
JOIN calendars c ON c.id = r.calendar_id
JOIN (VALUES
    ('SOLEMNITY', 'Solennité'),
    ('FEAST', 'Fête'),
    ('MEM_OBL', 'Mémoire obligatoire'),
    ('MEM_OPT', 'Mémoire facultative'),
    ('FERIA', 'Férie')
) AS x(code, label)
ON r.code = x.code
WHERE c.code = 'ROMAN_GENERAL_1969';

-- Traductions EN des rangs romains actuels
INSERT INTO liturgical_rank_translations (rank_id, locale_code, label)
SELECT r.id, 'en', x.label
FROM liturgical_ranks r
JOIN calendars c ON c.id = r.calendar_id
JOIN (VALUES
    ('SOLEMNITY', 'Solemnity'),
    ('FEAST', 'Feast'),
    ('MEM_OBL', 'Obligatory Memorial'),
    ('MEM_OPT', 'Optional Memorial'),
    ('FERIA', 'Feria')
) AS x(code, label)
ON r.code = x.code
WHERE c.code = 'ROMAN_GENERAL_1969';

-- Traductions LA des rangs romains actuels
INSERT INTO liturgical_rank_translations (rank_id, locale_code, label)
SELECT r.id, 'la', x.label
FROM liturgical_ranks r
JOIN calendars c ON c.id = r.calendar_id
JOIN (VALUES
    ('SOLEMNITY', 'Sollemnitas'),
    ('FEAST', 'Festum'),
    ('MEM_OBL', 'Memoria obligatoria'),
    ('MEM_OPT', 'Memoria ad libitum'),
    ('FERIA', 'Feria')
) AS x(code, label)
ON r.code = x.code
WHERE c.code = 'ROMAN_GENERAL_1969';

-- Rangs techniques pour calendrier traditionnel 1962
INSERT INTO liturgical_ranks (calendar_id, code, precedence)
SELECT c.id, x.code, x.precedence
FROM calendars c
CROSS JOIN (VALUES
    ('CLASS_I', 1),
    ('CLASS_II', 2),
    ('CLASS_III', 3),
    ('CLASS_IV', 4)
) AS x(code, precedence)
WHERE c.code = 'TRIDENTINE_1962';

-- Traductions FR des rangs 1962
INSERT INTO liturgical_rank_translations (rank_id, locale_code, label)
SELECT r.id, 'fr', x.label
FROM liturgical_ranks r
JOIN calendars c ON c.id = r.calendar_id
JOIN (VALUES
    ('CLASS_I', 'Ire classe'),
    ('CLASS_II', 'IIe classe'),
    ('CLASS_III', 'IIIe classe'),
    ('CLASS_IV', 'IVe classe / férie')
) AS x(code, label)
ON r.code = x.code
WHERE c.code = 'TRIDENTINE_1962';

-- Traductions EN des rangs 1962
INSERT INTO liturgical_rank_translations (rank_id, locale_code, label)
SELECT r.id, 'en', x.label
FROM liturgical_ranks r
JOIN calendars c ON c.id = r.calendar_id
JOIN (VALUES
    ('CLASS_I', 'First Class'),
    ('CLASS_II', 'Second Class'),
    ('CLASS_III', 'Third Class'),
    ('CLASS_IV', 'Fourth Class / Feria')
) AS x(code, label)
ON r.code = x.code
WHERE c.code = 'TRIDENTINE_1962';

-- Traductions LA des rangs 1962
INSERT INTO liturgical_rank_translations (rank_id, locale_code, label)
SELECT r.id, 'la', x.label
FROM liturgical_ranks r
JOIN calendars c ON c.id = r.calendar_id
JOIN (VALUES
    ('CLASS_I', 'Classis I'),
    ('CLASS_II', 'Classis II'),
    ('CLASS_III', 'Classis III'),
    ('CLASS_IV', 'Classis IV / Feria')
) AS x(code, label)
ON r.code = x.code
WHERE c.code = 'TRIDENTINE_1962';

-- Couleurs liturgiques
INSERT INTO liturgical_colors (code, hex_color) VALUES
('WHITE',  '#FFFFFF'),
('RED',    '#FF0000'),
('GREEN',  '#008000'),
('PURPLE', '#800080'),
('ROSE',   '#FF007F'),
('BLACK',  '#000000'),
('GOLD',   '#FFD700');

-- Traductions des couleurs (FR)
INSERT INTO liturgical_color_translations (color_id, locale_code, label)
SELECT lc.id, 'fr', x.label
FROM liturgical_colors lc
JOIN (VALUES
    ('WHITE',  'Blanc'),
    ('RED',    'Rouge'),
    ('GREEN',  'Vert'),
    ('PURPLE', 'Violet'),
    ('ROSE',   'Rose'),
    ('BLACK',  'Noir'),
    ('GOLD',   'Or')
) AS x(code, label)
ON lc.code = x.code;

-- Traductions des couleurs (EN)
INSERT INTO liturgical_color_translations (color_id, locale_code, label)
SELECT lc.id, 'en', x.label
FROM liturgical_colors lc
JOIN (VALUES
    ('WHITE',  'White'),
    ('RED',    'Red'),
    ('GREEN',  'Green'),
    ('PURPLE', 'Purple'),
    ('ROSE',   'Rose'),
    ('BLACK',  'Black'),
    ('GOLD',   'Gold')
) AS x(code, label)
ON lc.code = x.code;

-- Traductions des couleurs (LA)
INSERT INTO liturgical_color_translations (color_id, locale_code, label)
SELECT lc.id, 'la', x.label
FROM liturgical_colors lc
JOIN (VALUES
    ('WHITE',  'Album'),
    ('RED',    'Rubrum'),
    ('GREEN',  'Viride'),
    ('PURPLE', 'Violaceum'),
    ('ROSE',   'Rosaceum'),
    ('BLACK',  'Nigrum'),
    ('GOLD',   'Aureum')
) AS x(code, label)
ON lc.code = x.code;
