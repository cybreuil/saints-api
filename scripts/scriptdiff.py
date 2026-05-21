# script python to find missing image URLs in seedRomanImages.sql compared to oldseedRomanSaintImages.sql
import re
from pathlib import Path

old_path = Path("data/seeds/oldseedRomanSaintImages.sql")
new_path = Path("data/seeds/seedRomanImages.sql")

pattern = re.compile(r"'/saints/[^']+'")

old_urls = set(pattern.findall(old_path.read_text()))
new_urls = set(pattern.findall(new_path.read_text()))

missing = sorted(old_urls - new_urls)

print("Missing in seedRomanImages.sql:")
for url in missing:
    print(url)
