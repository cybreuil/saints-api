import json
import os
from pathlib import Path

from openai import OpenAI

client = OpenAI(api_key=os.environ["OPENAI_API_KEY"])

SAINTS = [
    "Saint François d'Assise",
    "Saint Benoît",
    "Sainte Thérèse de Lisieux",
    "Saint Augustin",
]

OUTPUT_DIR = Path("saints")
OUTPUT_DIR.mkdir(exist_ok=True)

SYSTEM_PROMPT = """
Tu es un historien spécialisé dans l'histoire du christianisme.

Règles :
- N'invente aucun fait historique.
- Signale les traditions incertaines comme telles.
- Style catholique, historique et accessible.
- Utilise des titres de sections.
- Longueur : 700 à 1000 mots.
"""


def ask(prompt: str) -> str:
    response = client.responses.create(
        model="gpt-5",
        input=[
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user", "content": prompt},
        ],
    )

    return response.output_text


def generate_bio_fr(saint_name):
    prompt = f"""
Rédige une biographie complète de {saint_name}.

Structure :

# Jeunesse
# Vocation
# Œuvre et mission
# Épreuves
# Mort
# Héritage spirituel

Longueur : 700 à 1000 mots.
"""
    return ask(prompt)


def translate(text, language):
    prompt = f"""
Traduis fidèlement le texte suivant en {language}.

Conserve les titres et la structure.
Ne résume pas.

TEXTE :

{text}
"""
    return ask(prompt)


def generate_summary(bio_fr):
    prompt = f"""
Résume cette biographie en 120 mots maximum.

BIO :

{bio_fr}
"""
    return ask(prompt)


for saint in SAINTS:
    print(f"Traitement : {saint}")

    bio_fr = generate_bio_fr(saint)

    summary_fr = generate_summary(bio_fr)

    bio_en = translate(bio_fr, "anglais")

    bio_la = translate(bio_fr, "latin ecclésiastique")

    slug = (
        saint.lower()
        .replace("saint ", "")
        .replace("sainte ", "")
        .replace("'", "-")
        .replace(" ", "-")
    )

    data = {
        "name": saint,
        "slug": slug,
        "summary_fr": summary_fr,
        "bio_fr": bio_fr,
        "bio_en": bio_en,
        "bio_la": bio_la,
    }

    with open(OUTPUT_DIR / f"{slug}.json", "w", encoding="utf-8") as f:
        json.dump(data, f, ensure_ascii=False, indent=2)

print("Terminé.")
