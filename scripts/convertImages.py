#!/usr/bin/env python3
"""
scripts/convert_images_ultimate.py

Ultimate image conversion:
 - convert images to webp (preserve relative paths) into an output folder
 - generate multiple sizes (defaults: 1600,1024,640,320)
 - master (first size) encoded at quality >= master_quality (default 80)
 - smaller variants encoded with decreasing qualities
 - write each .webp only if smaller than the original file (default) unless --force-write
 - logs results into conversion_report.csv

Usage examples:
  # Dry run (default) - doesn't write files
  python3 scripts/convert_images_ultimate.py --src public/saints-pic --out public/saints-pic-webp

  # Write output (not dry)
  python3 scripts/convert_images_ultimate.py --src public/saints-pic --out public/saints-pic-webp --dry False

  # Force writing webp even if larger
  python3 scripts/convert_images_ultimate.py --src public/saints-pic --out public/saints-pic-webp --dry False --force-write True

Options:
  --src (required)  : source folder containing images
  --out (required)  : output folder where webp files will be created (keeps relative structure)
  --sizes           : comma-separated sizes (longest-side) e.g. 1600,1024,640,320 (first is master)
  --qualities       : comma-separated qualities for each size (if count matches sizes). If omitted defaults to [80,75,65,60]
  --max-dim         : synonym for sizes first value if you want simpler usage (deprecated logic)
  --min-side        : don't downscale below this side (default 600)
  --min-kb          : skip processing files <= this size in KB (default 0 -> process all)
  --target-kb       : optional target size for master (used only for info; script won't lower quality under master_quality)
  --master-quality  : minimum/master quality (default 80)
  --dry             : true/false (default True)
  --force-write     : true/false (default False) - if True, write webp files even if larger than original
  --exts            : file extensions to include (comma list, default common ones)
"""

import argparse
import csv
import io
import json
import sys
from pathlib import Path

from PIL import Image, ImageOps, features


def parse_args():
    p = argparse.ArgumentParser(
        description="Ultimate image conversion to WebP with variants"
    )
    p.add_argument("--src", required=True, help="Source folder")
    p.add_argument("--out", required=True, help="Output folder")
    p.add_argument(
        "--sizes",
        default="1600,1024,640,320",
        help="Comma-separated sizes (longest side). First is master.",
    )
    p.add_argument(
        "--qualities",
        default="",
        help="Comma-separated qualities matching sizes (optional). If omitted default qualities used.",
    )
    p.add_argument(
        "--min-side", type=int, default=600, help="Minimum side when downscaling (px)"
    )
    p.add_argument(
        "--min-kb",
        type=int,
        default=0,
        help="Skip files smaller or equal to this size in KB (0 = process all)",
    )
    p.add_argument(
        "--target-kb",
        type=int,
        default=0,
        help="Target KB for master (informational/logging only).",
    )
    p.add_argument(
        "--master-quality",
        type=int,
        default=80,
        help="Master quality (will not go below this). Default 80.",
    )
    p.add_argument(
        "--dry",
        type=lambda v: v.lower() in ("1", "true", "yes"),
        default=True,
        help="Dry run (default True)",
    )
    p.add_argument(
        "--force-write",
        type=lambda v: v.lower() in ("1", "true", "yes"),
        default=False,
        help="Force writing webp even if larger than original",
    )
    p.add_argument(
        "--exts",
        default=".jpg,.jpeg,.png,.tiff,.bmp,.webp",
        help="Extensions to process",
    )
    return p.parse_args()


def supports_webp():
    try:
        return features.check("webp")
    except Exception:
        return False


def ensure_parent(p: Path):
    p.parent.mkdir(parents=True, exist_ok=True)


def resize_fit_inside(img: Image.Image, max_side: int) -> Image.Image:
    w, h = img.size
    if max(w, h) <= max_side:
        return img.copy()
    ratio = max_side / max(w, h)
    new_w = max(1, int(w * ratio))
    new_h = max(1, int(h * ratio))
    return img.resize((new_w, new_h), Image.LANCZOS)


def to_webp_bytes(img: Image.Image, quality: int = 80, lossless: bool = False) -> bytes:
    buf = io.BytesIO()
    params = {"method": 6}
    if lossless:
        params["lossless"] = True
    else:
        params["quality"] = int(quality)
    img.save(buf, "WEBP", **params)
    return buf.getvalue()


def process_file(
    p: Path, src_base: Path, out_base: Path, sizes: list, qualities: list, opts, writer
):
    rel = p.relative_to(src_base)
    orig_size = p.stat().st_size
    orig_kb = orig_size // 1024
    if opts.min_kb and orig_kb <= opts.min_kb:
        print(f"SKIP (<= {opts.min_kb}KB): {rel} ({orig_kb}KB)")
        return

    try:
        with Image.open(p) as im:
            im = ImageOps.exif_transpose(im)
            if getattr(im, "is_animated", False):
                print(f"SKIP animated: {rel}")
                return
            mode = im.mode
            has_alpha = ("A" in mode) or ("transparency" in im.info)
            if mode == "P" or mode not in ("RGB", "RGBA"):
                im = im.convert("RGBA" if has_alpha else "RGB")
                has_alpha = "A" in im.mode

            # For each requested size
            for idx, size in enumerate(sizes):
                q = (
                    qualities[idx]
                    if idx < len(qualities)
                    else compute_default_quality(idx, len(sizes), opts.master_quality)
                )
                target_side = size
                # skip generating a size larger than original (unless original larger), avoid upscaling
                if max(im.size) < target_side:
                    # if original is smaller than target size, generate at original resolution (no upscaling)
                    resized = im.copy()
                    actual_side = max(resized.size)
                else:
                    resized = resize_fit_inside(im, target_side)
                    actual_side = max(resized.size)

                out_path = (out_base / rel).with_suffix(".webp")
                # if generating multiple sizes, append suffix for non-master
                if idx != 0:
                    out_path = out_path.with_name(
                        f"{out_path.stem}-{target_side}{out_path.suffix}"
                    )

                ensure_parent(out_path)

                # encode: try lossy first; if has alpha and lossless is smaller, we may use it later (we compare bytes)
                try:
                    webp_bytes = to_webp_bytes(resized, quality=q, lossless=False)
                except Exception as e:
                    print(f"ERROR encoding (lossy) {rel} @ {target_side}px q={q}: {e}")
                    writer.writerow(
                        {
                            "input": str(rel),
                            "orig_kb": orig_kb,
                            "size": target_side,
                            "quality": q,
                            "out_kb": None,
                            "wrote": "no",
                            "note": f"encoding_error_lossy:{e}",
                        }
                    )
                    continue

                # if alpha present, also try lossless and pick smaller of lossy/lossless for decision
                chosen_bytes = webp_bytes
                chosen_mode = "lossy"
                if has_alpha:
                    try:
                        webp_lossless = to_webp_bytes(resized, lossless=True)
                        if len(webp_lossless) < len(webp_bytes):
                            chosen_bytes = webp_lossless
                            chosen_mode = "lossless"
                    except Exception:
                        pass

                out_kb = len(chosen_bytes) // 1024
                wrote = False
                note = ""

                # Decide whether to write:
                # By default write only if output < original OR --force-write is True
                if opts.force_write or out_kb < orig_kb:
                    if opts.dry:
                        print(
                            f"DRY WRITE {out_path.relative_to(out_base)} (orig {orig_kb}KB -> {out_kb}KB) q={q} mode={chosen_mode} side={actual_side}"
                        )
                    else:
                        out_path.write_bytes(chosen_bytes)
                        print(
                            f"WROTE {out_path.relative_to(out_base)} (orig {orig_kb}KB -> {out_kb}KB) q={q} mode={chosen_mode} side={actual_side}"
                        )
                    wrote = True
                else:
                    note = "skipped_bigger_than_original"
                    print(
                        f"SKIP WRITE {out_path.relative_to(out_base)} (orig {orig_kb}KB <= out {out_kb}KB) q={q} side={actual_side}"
                    )

                writer.writerow(
                    {
                        "input": str(rel),
                        "orig_kb": orig_kb,
                        "size": target_side,
                        "quality": q,
                        "mode": chosen_mode,
                        "out_kb": out_kb,
                        "wrote": "yes" if wrote else "no",
                        "note": note,
                    }
                )
    except Exception as e:
        print(f"ERROR processing {p}: {e}")
        writer.writerow(
            {
                "input": str(rel),
                "orig_kb": None,
                "size": None,
                "quality": None,
                "mode": None,
                "out_kb": None,
                "wrote": "no",
                "note": f"exception:{e}",
            }
        )


def compute_default_quality(index: int, total: int, master_quality: int) -> int:
    """Compute decreasing qualities: master_quality, then -5/-10 steps."""
    if index == 0:
        return master_quality
    # simple heuristic: decrease by steps
    step = 10 if total >= 4 else 5
    q = max(40, master_quality - step * index)
    return q


def main():
    opts = parse_args()
    src = Path(opts.src).resolve()
    out = Path(opts.out).resolve()
    if not src.exists():
        print("Source not found:", src)
        sys.exit(1)
    if not supports_webp():
        print(
            "Warning: Pillow WebP support not detected. Install libwebp and reinstall Pillow.",
            file=sys.stderr,
        )

    sizes = [int(s.strip()) for s in opts.sizes.split(",") if s.strip()]
    if not sizes:
        print("No sizes provided")
        sys.exit(1)

    qualities = []
    if opts.qualities:
        qualities = [int(q.strip()) for q in opts.qualities.split(",") if q.strip()]

    exts = [e.strip().lower() for e in opts.exts.split(",") if e.strip()]
    files = []
    for ext in exts:
        files.extend(sorted(src.rglob(f"*{ext}")))
    print(f"Found {len(files)} files in {src}")

    report_path = Path("conversion_report.csv")
    with report_path.open("w", newline="", encoding="utf-8") as csvf:
        fieldnames = [
            "input",
            "orig_kb",
            "size",
            "quality",
            "mode",
            "out_kb",
            "wrote",
            "note",
        ]
        writer = csv.DictWriter(csvf, fieldnames=fieldnames)
        writer.writeheader()

        for f in files:
            process_file(f, src, out, sizes, qualities, opts, writer)

    print(f"Done. Report: {report_path}")
    if opts.dry:
        print("Dry run ON: to write files run with --dry False")


if __name__ == "__main__":
    main()
