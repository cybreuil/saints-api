#!/usr/bin/env node
/**
 * scripts/convert_images_ultimate_node.mjs
 *
 * Usage examples:
 *  # Dry-run (ne rien écrire)
 *  node scripts/convert_images_ultimate_node.mjs --src=public/saints-pic --out=public/saints-pic-webp
 *
 *  # Ecrire les fichiers (non dry)
 *  node scripts/convert_images_ultimate_node.mjs --src=public/saints-pic --out=public/saints-pic-webp --dry=false
 *
 *  # Forcer écriture même si webp est plus gros
 *  node scripts/convert_images_ultimate_node.mjs --src=public/saints-pic --out=public/saints-pic-webp --dry=false --force=true
 *
 * Options:
 *  --src (required)
 *  --out (required)
 *  --sizes (comma list) default "1600,1024,640,320"
 *  --qualities (comma list) optional e.g. "80,75,65,60"
 *  --minSide default 600
 *  --minKb skip files <= this KB (default 0)
 *  --targetKb only used for master attempt (default 1000)
 *  --masterQuality default 80 (never go below)
 *  --dry default true
 *  --force default false (force write even if webp larger than original)
 *  --exts default ".jpg,.jpeg,.png,.tiff,.bmp,.webp"
 */

import fs from "fs/promises";
import path from "path";
import process from "process";
import sharp from "sharp";
import fg from "fast-glob";

function parseArgs() {
	const args = {};
	for (const a of process.argv.slice(2)) {
		const [k, v = "true"] = a.split("=");
		args[k.replace(/^--/, "")] = v;
	}
	return args;
}

const argv = parseArgs();

if (!argv.src || !argv.out) {
	console.error("Usage: --src=SRC_FOLDER --out=OUT_FOLDER [--dry=false]");
	process.exit(1);
}

const SRC = path.resolve(argv.src);
const OUT = path.resolve(argv.out);
const sizes = (argv.sizes || "1600,1024,640,320")
	.split(",")
	.map((s) => parseInt(s, 10));
const qualities = (argv.qualities || "")
	.split(",")
	.filter(Boolean)
	.map((q) => parseInt(q, 10));
const minSide = parseInt(
	argv.minSide || argv.minSide === "0" ? argv.minSide : 600,
	10,
);
const minKb = parseInt(argv.minKb || 0, 10);
const targetKb = parseInt(argv.targetKb || 1000, 10); // applied to master only as target
const masterQuality = parseInt(
	argv.masterQuality || argv.masterQuality === "0" ? argv.masterQuality : 80,
	10,
);
const dry = (argv.dry ?? "true").toString().toLowerCase() !== "false";
const forceWrite = (argv.force ?? "false").toString().toLowerCase() === "true";
const exts = (argv.exts || ".jpg,.jpeg,.png,.tiff,.bmp,.webp")
	.split(",")
	.map((e) => e.trim().toLowerCase());

// default qualities if not provided
function defaultQualityForIndex(idx) {
	if (qualities[idx]) return qualities[idx];
	if (idx === 0) return masterQuality;
	// heuristic: reduce by ~10 then ~15 then ~20 etc
	const base = masterQuality;
	const step = 10;
	return Math.max(40, base - step * idx);
}

function ensureDirExists(p) {
	return fs.mkdir(p, { recursive: true }).catch(() => {});
}

function outPathFor(relPath, sizeIndex, size) {
	const base = path.join(OUT, relPath);
	const dir = path.dirname(base);
	const name = path.basename(base, path.extname(base));
	if (sizeIndex === 0) {
		return path.join(dir, `${name}.webp`);
	} else {
		return path.join(dir, `${name}-${size}.webp`);
	}
}

function formatKb(bytes) {
	return Math.round(bytes / 1024);
}

async function processFile(filePath, writer) {
	const rel = path.relative(SRC, filePath);
	const origStat = await fs.stat(filePath);
	const origKb = formatKb(origStat.size);

	if (minKb && origKb <= minKb) {
		console.log(`SKIP small <=${minKb}KB: ${rel} (${origKb}KB)`);
		return;
	}

	try {
		const image = sharp(filePath, { failOnError: false }).rotate();
		const meta = await image.metadata();
		const hasAlpha = !!meta.hasAlpha;

		for (let i = 0; i < sizes.length; i++) {
			let size = sizes[i];
			const quality = defaultQualityForIndex(i);
			// decide actual resizing: do not upscale
			let imgForSize = image.clone();
			if (Math.max(meta.width || 0, meta.height || 0) > size) {
				imgForSize = imgForSize.resize({
					width: size,
					height: size,
					fit: "inside",
					withoutEnlargement: true,
				});
			} else {
				// if original smaller, keep original dims (no resize)
				imgForSize = imgForSize.clone();
			}

			// For master (i === 0) implement iterative downscale if targetKb is set and result > targetKb
			let currentSize = size;
			let finalBuffer = null;
			let finalMode = "lossy";
			let finalOutKb = null;
			let finalSideUsed = currentSize;
			let attempts = 0;

			// function to encode current imgForSize with quality or lossless if alpha considered
			async function encodeCandidate(imgSharper, q) {
				if (hasAlpha) {
					// try lossy with alphaQuality=100 first
					const bLossy = await imgSharper
						.webp({ quality: q, alphaQuality: 100, effort: 6 })
						.toBuffer();
					// try lossless and keep the smallest
					const bLossless = await imgSharper
						.webp({ lossless: true, effort: 6 })
						.toBuffer();
					if (bLossless.length < bLossy.length) {
						return { buf: bLossless, mode: "lossless" };
					} else {
						return { buf: bLossy, mode: "lossy" };
					}
				} else {
					const b = await imgSharper
						.webp({ quality: q, effort: 6 })
						.toBuffer();
					return { buf: b, mode: "lossy" };
				}
			}

			if (i === 0 && targetKb > 0) {
				// master: attempt encode; if >targetKb, reduce side by 10% iteratively down to minSide
				let candidateSharper = imgForSize.clone();
				let candidateInfo = await encodeCandidate(
					candidateSharper,
					quality,
				);
				finalBuffer = candidateInfo.buf;
				finalMode = candidateInfo.mode;
				finalOutKb = formatKb(finalBuffer.length);
				finalSideUsed =
					Math.max(meta.width || 0, meta.height || 0) > size
						? Math.max(
								(await candidateSharper.metadata()).width || 0,
								(await candidateSharper.metadata()).height || 0,
							)
						: Math.max(meta.width || 0, meta.height || 0);

				while (
					finalOutKb > targetKb &&
					currentSize > minSide &&
					attempts < 10
				) {
					attempts++;
					currentSize = Math.max(
						minSide,
						Math.floor(currentSize * 0.9),
					);
					// re-create sharper with smaller size
					candidateSharper = image.clone();
					candidateSharper = candidateSharper.resize({
						width: currentSize,
						height: currentSize,
						fit: "inside",
						withoutEnlargement: true,
					});
					candidateInfo = await encodeCandidate(
						candidateSharper,
						quality,
					);
					// update final
					if (candidateInfo.buf.length < finalBuffer.length) {
						finalBuffer = candidateInfo.buf;
						finalMode = candidateInfo.mode;
					}
					finalOutKb = formatKb(finalBuffer.length);
					finalSideUsed = Math.max(
						(await candidateSharper.metadata()).width || 0,
						(await candidateSharper.metadata()).height || 0,
					);
				}
				// after loop finalBuffer is best attempt at quality (no quality reduction below masterQuality)
			} else {
				// non-master: simply encode at given size/quality (no iterative shrink to meet target)
				const candidateInfo = await encodeCandidate(
					imgForSize,
					quality,
				);
				finalBuffer = candidateInfo.buf;
				finalMode = candidateInfo.mode;
				finalOutKb = formatKb(finalBuffer.length);
				finalSideUsed = Math.max(
					(await imgForSize.metadata()).width || 0,
					(await imgForSize.metadata()).height || 0,
				);
			}

			// Decide on write
			const outPath = outPathFor(rel, i, sizes[i]);
			await ensureDirExists(path.dirname(outPath));
			let wrote = false;
			let note = "";

			if (forceWrite || finalOutKb < origKb) {
				if (dry) {
					console.log(
						`DRY WRITE ${path.relative(OUT, outPath)}: orig ${origKb}KB -> out ${finalOutKb}KB q=${quality} mode=${finalMode} side=${finalSideUsed}`,
					);
				} else {
					await fs.writeFile(outPath, finalBuffer);
					console.log(
						`WROTE ${path.relative(OUT, outPath)}: orig ${origKb}KB -> out ${finalOutKb}KB q=${quality} mode=${finalMode} side=${finalSideUsed}`,
					);
				}
				wrote = true;
			} else {
				note = "skipped_bigger_than_original";
				console.log(
					`SKIP ${path.relative(OUT, outPath)}: orig ${origKb}KB <= out ${finalOutKb}KB (q=${quality})`,
				);
			}

			// Write report row
			writer.push({
				input: rel,
				orig_kb: origKb,
				size: sizes[i],
				quality,
				mode: finalMode,
				out_kb: finalOutKb,
				wrote: wrote ? "yes" : "no",
				note,
			});
		} // end sizes loop
	} catch (e) {
		console.error("ERROR", rel, e);
		writer.push({
			input: rel,
			orig_kb: null,
			size: null,
			quality: null,
			mode: null,
			out_kb: null,
			wrote: "no",
			note: `error:${String(e)}`,
		});
	}
}

function outPathFor(rel, idx, size) {
	const base = path.join(OUT, rel);
	const dir = path.dirname(base);
	const name = path.basename(base, path.extname(base));
	if (idx === 0) return path.join(dir, `${name}.webp`);
	return path.join(dir, `${name}-${size}.webp`);
}

async function main() {
	console.log("SRC:", SRC);
	console.log("OUT:", OUT);
	console.log(
		"sizes:",
		sizes,
		"masterQuality:",
		masterQuality,
		"targetKb(for master):",
		targetKb,
		"minKb(skip):",
		minKb,
		"minSide:",
		minSide,
		"dry:",
		dry,
		"force:",
		forceWrite,
	);

	const patterns = exts.map((ext) => `${SRC.replace(/\\/g, "/")}/**/*${ext}`);
	const files = await fg(patterns, { onlyFiles: true, dot: false });

	console.log(`Found ${files.length} files`);
	const report = [];
	for (const f of files) {
		await processFile(f, report);
	}

	// Write CSV report
	const csvPath = path.resolve("conversion_report.csv");
	const header = [
		"input",
		"orig_kb",
		"size",
		"quality",
		"mode",
		"out_kb",
		"wrote",
		"note",
	];
	const lines = [header.join(",")];
	for (const r of report) {
		const row = header.map((h) => {
			const v = r[h];
			if (v === null || v === undefined) return "";
			// escape commas
			return String(v).replace(/"/g, '""');
		});
		lines.push(row.join(","));
	}
	await fs.writeFile(csvPath, lines.join("\n"), "utf8");
	console.log(`Written report: ${csvPath}`);
	if (dry)
		console.log(
			"Dry run: no files were written. Re-run with --dry=false to write files.",
		);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
