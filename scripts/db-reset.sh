#!/usr/bin/env bash
# Use bash to run this script

set -euo pipefail
# -e: exit on error
# -u: treat unset variables as an error
# -o pipefail: fail if any command in a pipeline fails

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
# Compute the absolute path of the project root:
# 1) take the script's directory
# 2) go one level up
# 3) print the absolute path

# Auto-load .env if it exists
if [[ -f "$ROOT_DIR/.env" ]]; then
  set -a
  # -a: export all sourced variables automatically
  source "$ROOT_DIR/.env"
  set +a
fi

# Ensure DATABASE_URL is set
if [[ -z "${DATABASE_URL:-}" ]]; then
  echo "ERROR: DATABASE_URL is not set (in .env or exported)"
  exit 1
fi

run_sql() {
  local sql_file="$1"
  echo "Running: $sql_file"
  psql -v ON_ERROR_STOP=1 "$DATABASE_URL" -f "$sql_file"
}

# 1) Create tables
run_sql "$ROOT_DIR/data/createTables.sql"
echo "✅ Tables dropped and created."

# 2) Seeds (order matters)
run_sql "$ROOT_DIR/data/seeds/seedPlaces.sql"
echo "✅ Places seeded."

run_sql "$ROOT_DIR/data/seeds/Roman_General/seedRomanSaints.sql"
echo "✅ Roman saints seeded."

run_sql "$ROOT_DIR/data/seeds/Roman_General/seedRomanImages.sql"
echo "✅ Roman images seeded."

run_sql "$ROOT_DIR/data/seeds/Roman_General/seedRomanSaintImages.sql"
echo "✅ Roman saint images seeded."

run_sql "$ROOT_DIR/data/seeds/Roman_General/seedRoman.sql"
echo "✅ ROMAN seeded."

run_sql "$ROOT_DIR/data/seeds/Roman_General/seedRomanSeasons.sql"
echo "✅ Roman seasons seeded."

run_sql "$ROOT_DIR/data/seeds/Roman_General/seedRomanSaintAttributes.sql"
echo "✅ ROMAN saint attributes seeded."

run_sql "$ROOT_DIR/data/seeds/Roman_General/seedRomanSaintPatronages.sql"
echo "✅ ROMAN saint patronages seeded."

# run_sql "$ROOT_DIR/data/seeds/seedROMAN_links.sql"
# echo "✅ ROMAN links seeded."

echo "✅ DB seeded."
