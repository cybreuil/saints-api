Table locales {
  code text [pk]
  native_name text
  english_name text
  is_active boolean
}

Table calendars {
  id serial [pk]
  code text [unique]
  parent_id int [ref: > calendars.id]
  date_system text
  easter_computation text
  is_active boolean
  created_at timestamptz
}

Table calendar_translations {
  calendar_id int [ref: > calendars.id]
  locale_code text [ref: > locales.code]
  name text
  description text
  indexes {
    (calendar_id, locale_code) [unique]
  }
}

Table liturgical_ranks {
  id serial [pk]
  calendar_id int [ref: > calendars.id]
  code text
  precedence smallint
  indexes {
    (calendar_id, code) [unique]
    (calendar_id, precedence) [unique]
  }
}

Table liturgical_rank_translations {
  rank_id int [ref: > liturgical_ranks.id]
  locale_code text [ref: > locales.code]
  label text
  indexes {
    (rank_id, locale_code) [unique]
  }
}

Table liturgical_colors {
  id serial [pk]
  code text [unique]
  hex_color text
}

Table liturgical_color_translations {
  color_id int [ref: > liturgical_colors.id]
  locale_code text [ref: > locales.code]
  label text
  indexes {
    (color_id, locale_code) [unique]
  }
}

Table places {
  id serial [pk]
  code text [unique]
  country_code text
  latitude double
  longitude double
}

Table place_translations {
  place_id int [ref: > places.id]
  locale_code text [ref: > locales.code]
  name text
  description text
  indexes {
    (place_id, locale_code) [unique]
  }
}

Table saints {
  id serial [pk]
  slug text [unique]
  default_name text
  birth_year smallint
  birth_month smallint
  birth_day smallint
  birth_is_approximate boolean
  death_year smallint
  death_month smallint
  death_day smallint
  death_is_approximate boolean
  century smallint
  place_of_birth_id int [ref: > places.id]
  place_of_death_id int [ref: > places.id]
  place_of_activity_id int [ref: > places.id]
  image_url text
  created_at timestamptz
}

Table saint_translations {
  saint_id int [ref: > saints.id]
  locale_code text [ref: > locales.code]
  name text
  short_description text
  full_biography text
  life_label text
  indexes {
    (saint_id, locale_code) [unique]
  }
}

Table attributes {
  id serial [pk]
  code text [unique]
  category text
}

Table attribute_translations {
  attribute_id int [ref: > attributes.id]
  locale_code text [ref: > locales.code]
  label text
  description text
  indexes {
    (attribute_id, locale_code) [unique]
  }
}

Table saint_attributes {
  saint_id int [ref: > saints.id]
  attribute_id int [ref: > attributes.id]
  indexes {
    (saint_id, attribute_id) [unique]
  }
}

Table patronages {
  id serial [pk]
  code text [unique]
}

Table patronage_translations {
  patronage_id int [ref: > patronages.id]
  locale_code text [ref: > locales.code]
  label text
  description text
  indexes {
    (patronage_id, locale_code) [unique]
  }
}

Table saint_patronages {
  saint_id int [ref: > saints.id]
  patronage_id int [ref: > patronages.id]
  indexes {
    (saint_id, patronage_id) [unique]
  }
}

Table feasts {
  id serial [pk]
  slug text [unique]
  default_name text
  feast_type text
  created_at timestamptz
}

Table feast_translations {
  feast_id int [ref: > feasts.id]
  locale_code text [ref: > locales.code]
  name text
  description text
  indexes {
    (feast_id, locale_code) [unique]
  }
}

Table feast_dates {
  id serial [pk]
  feast_id int [ref: > feasts.id]
  calendar_id int [ref: > calendars.id]
  date_kind text
  month smallint
  day smallint
  movable_base text
  movable_offset_days int
  valid_from date
  valid_to date
  notes text
}

Table celebrations {
  id serial [pk]
  feast_id int [ref: > feasts.id]
  calendar_id int [ref: > calendars.id]
  rank_id int [ref: > liturgical_ranks.id]
  color_id int [ref: > liturgical_colors.id]
  is_optional boolean
  notes text
  indexes {
    (feast_id, calendar_id) [unique]
  }
}

Table celebration_saints {
  celebration_id int [ref: > celebrations.id]
  saint_id int [ref: > saints.id]
  role text
  indexes {
    (celebration_id, saint_id) [unique]
  }
}
