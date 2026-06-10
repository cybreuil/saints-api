#!/usr/bin/env bash
set -euo pipefail

# Usage:
# ./scripts/convert_images_native.sh --src public/saints-pic --out public/saints-pic-webp
# Options:
# --src=PATH       (required)
# --out=PATH       (required)
# --sizes=1600,1024,640,320
# --quality=80     (quality for webp master; smaller variants get smaller quality automatically)
# --min-kb=0       (skip files <= this KB)
# --dry=true       (dry run default)
# --force=false    (force writing even if webp larger than original)
# Example real run:
# ./scripts/convert_images_native.sh --src public/saints-pic --out public/saints-pic-webp --dry=false

# Parse args (simple)
for arg in "$@"; do
  case $arg in
    --src=*) SRC="${arg#*=}"; shift ;;
    --out=*) OUT="${arg#*=}"; shift ;;
    --sizes=*) SIZES="${arg#*=}"; shift ;;
    --quality=*) QUALITY="${arg#*=}"; shift ;;
    --min-kb=*) MINKB="${arg#*=}"; shift ;;
    --dry=*) DRY="${arg#*=}"; shift ;;
    --force=*) FORCE="${arg#*=}"; shift ;;
    *) echo "Unknown arg: $arg"; exit 1 ;;
  esac
done

: "${SRC:?--src is required}"
: "${OUT:?--out is required}"
SIZES="${SIZES:-1600,1024,640,320}"
QUALITY="${QUALITY:-80}"
MINKB="${MINKB:-0}"
DRY="${DRY:-true}"
FORCE="${FORCE:-false}"

# tools
if command -v vipsthumbnail >/dev/null 2>&1; then
  TOOL="vips"
  echo "Using libvips (vipsthumbnail)"
elif command -v magick >/dev/null 2>&1; then
  TOOL="magick"
  echo "vipsthumbnail not found, using ImageMagick (magick)"
elif command -v convert >/dev/null 2>&1; then
  TOOL="magick"
  echo "Using ImageMagick (convert)"
else
  echo "Neither vipsthumbnail nor magick found. Install libvips or ImageMagick (pacman -S vips or pacman -S imagemagick)."
  exit 2
fi

IFS=',' read -ra SIZE_ARR <<< "$SIZES"

# create out base
mkdir -p "$OUT"

REPORT="conversion_report.csv"
echo "input,orig_kb,size,quality,out_kb,wrote,note" > "$REPORT"

shopt -s globstar nullglob
EXTS=(jpg jpeg png tiff bmp webp JPG JPEG PNG TIFF BMP)
for ext in "${EXTS[@]}"; do
  for srcfile in "$SRC"/**/*."$ext"; do
    # guard
    [ -f "$srcfile" ] || continue
    rel="${srcfile#$SRC/}"
    orig_bytes=$(stat -c%s "$srcfile")
    orig_kb=$((orig_bytes/1024))
    if [ "$MINKB" -ne 0 ] && [ "$orig_kb" -le "$MINKB" ]; then
      echo "SKIP small <=${MINKB}KB: $rel ($orig_kb KB)"
      continue
    fi

    for idx in "${!SIZE_ARR[@]}"; do
      size=${SIZE_ARR[$idx]}
      # quality heuristic
      if [ "$idx" -eq 0 ]; then
        q="$QUALITY"
      else
        # decrease quality for smaller sizes (simple heuristic)
        q=$(( QUALITY - (idx * 10) ))
        if [ "$q" -lt 40 ]; then q=40; fi
      fi

      # out path
      base="${rel%.*}"
      if [ "$idx" -eq 0 ]; then
        out_rel="${base}.webp"
      else
        out_rel="${base}-${size}.webp"
      fi
      outpath="$OUT/$out_rel"
      outdir=$(dirname "$outpath")
      mkdir -p "$outdir"

      # create temporary output in /tmp
      tmpout=$(mktemp --suffix=.webp)

      if [ "$TOOL" = "vips" ]; then
        # vipsthumbnail handles resizing and writing; try passing quality via [Q=...] suffix
        # Note: vipsthumbnail converts format based on output extension.
        # Use vips via vipsthumbnail with -s size and -o out
        # For quality set using [] in -o param if supported.
        # Some vips builds accept out.webp[Q=80]
        # first try vipsthumbnail with quality token, fallback to simple vipsthumbnail then cwebp if needed.
        if vipsthumbnail --version >/dev/null 2>&1; then
          # try with quality hint
          out_with_q="${tmpout}[Q=${q}]"
          if vipsthumbnail "$srcfile" -s "$size" -o "$out_with_q" >/dev/null 2>&1; then
            mv "$tmpout" "${tmpout}.done" 2>/dev/null || true
            # vipsthumbnail wrote directly to tmpout (or tmpout.done) - ensure file exists
            # sometimes vipsthumbnail writes to path without [] expansion; use tmpout path as reasonable fallback
          else
            # fallback: create jpeg/png temp then use cwebp if available, else magick fallback
            if command -v cwebp >/dev/null 2>&1; then
              tmppng=$(mktemp --suffix=.png)
              vipsthumbnail "$srcfile" -s "$size" -o "$tmppng"
              cwebp -q "$q" "$tmppng" -o "$tmpout" >/dev/null 2>&1 || true
              rm -f "$tmppng"
            else
              # final fallback: vipsthumbnail direct to tmpout
              vipsthumbnail "$srcfile" -s "$size" -o "$tmpout"
            fi
          fi
        fi
      fi

      if [ "$TOOL" = "magick" ]; then
        # ImageMagick: resize and convert. no upscaling due to '>' in geometry.
        # -resize '${size}x${size}>' keeps aspect ratio and prevents upscaling
        if command -v magick >/dev/null 2>&1; then
          magick "$srcfile" -resize "${size}x${size}>" -quality "$q" "$tmpout" >/dev/null 2>&1
        else
          # old convert
          convert "$srcfile" -resize "${size}x${size}>" -quality "$q" "$tmpout" >/dev/null 2>&1
        fi
      fi

      # ensure tmpout exists
      if [ ! -f "$tmpout" ]; then
        echo "ERROR: temporary output not created for $rel size $size"
        echo "$rel,$orig_kb,$size,$q, ,no,error_tmp" >> "$REPORT"
        rm -f "$tmpout" || true
        continue
      fi

      out_bytes=$(stat -c%s "$tmpout")
      out_kb=$((out_bytes/1024))

      wrote="no"
      note=""
      if [ "$FORCE" = "true" ] || [ "$out_kb" -lt "$orig_kb" ]; then
        if [ "$DRY" = "true" ]; then
          echo "DRY WRITE $out_rel : orig ${orig_kb}KB -> out ${out_kb}KB q=${q} size=${size}"
        else
          mv -f "$tmpout" "$outpath"
          echo "WROTE $out_rel : orig ${orig_kb}KB -> out ${out_kb}KB q=${q} size=${size}"
        fi
        wrote="yes"
      else
        note="skipped_bigger_than_original"
        echo "SKIP $out_rel : orig ${orig_kb}KB <= out ${out_kb}KB q=${q} size=${size}"
        rm -f "$tmpout"
      fi

      # append report
      echo "\"$rel\",$orig_kb,$size,$q,$out_kb,$wrote,$note" >> "$REPORT"

    done # sizes
  done # files for ext
done # exts

echo "Done. See $REPORT. Dry=${DRY} Force=${FORCE}"
