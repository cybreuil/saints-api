#!/usr/bin/env node
const fs = require("fs");
const path = require("path");

const inputPath = process.argv[2];
const outputSqlPath =
	process.argv[3] || "data/seeds/seed_from_general_roman.sql";

if (!inputPath) {
	console.error(
		"Usage: node extract_romcal_general_roman.js <GeneralRoman.ts> [output.sql]",
	);
	process.exit(1);
}

const content = fs.readFileSync(inputPath, "utf8");

// 1) Isoler le bloc "inputs: Inputs = { ... };"
const start = content.indexOf("inputs: Inputs = {");
if (start === -1) {
	console.error("inputs block not found");
	process.exit(1);
}
const from = content.indexOf("{", start);
let depth = 0;
let to = -1;
for (let i = from; i < content.length; i++) {
	const ch = content[i];
	if (ch === "{") depth++;
	if (ch === "}") depth--;
	if (depth === 0) {
		to = i;
		break;
	}
}
if (to === -1) {
	console.error("Could not parse inputs object boundaries");
	process.exit(1);
}
const inputsBlock = content.slice(from + 1, to); // sans accolades externes

// 2) Extraire chaque entrée top-level "key: { ... },"
const entries = [];
let i = 0;
while (i < inputsBlock.length) {
	// trouver clé top-level
	const keyMatch = inputsBlock
		.slice(i)
		.match(/^\s*([a-zA-Z0-9_]+)\s*:\s*\{/m);
	if (!keyMatch) break;

	// position absolue du match
	const relIdx = inputsBlock.slice(i).indexOf(keyMatch[0]);
	const absIdx = i + relIdx;

	const key = keyMatch[1];
	const openBraceIdx = inputsBlock.indexOf("{", absIdx);

	// trouver fermeture de cet objet
	let d = 0;
	let endObj = -1;
	for (let j = openBraceIdx; j < inputsBlock.length; j++) {
		const ch = inputsBlock[j];
		if (ch === "{") d++;
		if (ch === "}") d--;
		if (d === 0) {
			endObj = j;
			break;
		}
	}
	if (endObj === -1) break;

	const objText = inputsBlock.slice(openBraceIdx, endObj + 1);
	entries.push({ key, objText });

	i = endObj + 1;
}

// helpers
function extractFixedDate(objText) {
	const m = objText.match(
		/dateDef\s*:\s*\{\s*month\s*:\s*(\d+)\s*,\s*date\s*:\s*(\d+)\s*\}/s,
	);
	if (!m) return null;
	return { month: Number(m[1]), day: Number(m[2]) };
}
function extractPrecedence(objText) {
	const m = objText.match(/precedence\s*:\s*Precedences\.([A-Za-z0-9_]+)/);
	return m ? m[1] : null;
}
function extractColor(objText) {
	const m = objText.match(/colors\s*:\s*Colors\.([A-Za-z0-9_]+)/);
	return m ? m[1] : null;
}
function isOptional(precedenceCode) {
	return (
		precedenceCode &&
		precedenceCode.toLowerCase().includes("optionalmemorial")
	);
}
function rankFromPrecedence(code) {
	if (!code) return "MEM_OPT";
	const c = code.toLowerCase();
	if (c.includes("solemnity")) return "SOLEMNITY";
	if (c.includes("feast")) return "FEAST";
	if (c.includes("generalmemorial")) return "MEM_OBL";
	if (c.includes("optionalmemorial")) return "MEM_OPT";
	return "MEM_OPT";
}
function defaultColorFromCode(colorCode) {
	if (!colorCode) return "WHITE";
	return colorCode.toUpperCase();
}
function titleFromSlug(slug) {
	return slug.replace(/_/g, " ").replace(/\b\w/g, (m) => m.toUpperCase());
}
function sql(s) {
	return `'${String(s).replace(/'/g, "''")}'`;
}

// 3) Générer SQL
const lines = [];
lines.push("-- Generated from GeneralRoman.ts inputs");
lines.push("BEGIN;");
lines.push("");
lines.push("-- Assumes calendar code 'ROMAN_GENERAL_1969' exists");
lines.push(
	"WITH cal AS (SELECT id FROM calendars WHERE code = 'ROMAN_GENERAL_1969') SELECT 1;",
);
lines.push("");

for (const e of entries) {
	const date = extractFixedDate(e.objText);
	if (!date) continue; // skip movable/dateFn for this MVP
	const precedence = extractPrecedence(e.objText);
	const rankCode = rankFromPrecedence(precedence);
	const colorCode = defaultColorFromCode(extractColor(e.objText));
	const optional = isOptional(precedence);

	const slug = e.key;
	const defaultName = titleFromSlug(slug);

	lines.push(`-- ${slug}`);
	lines.push(`INSERT INTO feasts (slug, default_name, feast_type)
VALUES (${sql(slug)}, ${sql(defaultName)}, 'saint')
ON CONFLICT (slug) DO NOTHING;`);

	lines.push(`INSERT INTO feast_translations (feast_id, locale_code, name, description)
SELECT f.id, 'en', ${sql(defaultName)}, NULL
FROM feasts f
WHERE f.slug = ${sql(slug)}
ON CONFLICT (feast_id, locale_code) DO NOTHING;`);

	lines.push(`INSERT INTO feast_dates (feast_id, calendar_id, date_kind, month, day, movable_base, movable_offset_days, notes)
SELECT f.id, c.id, 'fixed', ${date.month}, ${date.day}, NULL, NULL, ${sql(`source=GeneralRoman.ts precedence=${precedence || "NA"}`)}
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
WHERE f.slug = ${sql(slug)};`);

	lines.push(`INSERT INTO celebrations (feast_id, calendar_id, rank_id, color_id, is_optional, notes)
SELECT f.id, c.id, r.id, lc.id, ${optional ? "TRUE" : "FALSE"}, ${sql(`source=GeneralRoman.ts precedence=${precedence || "NA"}`)}
FROM feasts f
JOIN calendars c ON c.code = 'ROMAN_GENERAL_1969'
JOIN liturgical_ranks r ON r.calendar_id = c.id AND r.code = ${sql(rankCode)}
LEFT JOIN liturgical_colors lc ON lc.code = ${sql(colorCode)}
WHERE f.slug = ${sql(slug)}
ON CONFLICT (feast_id, calendar_id) DO NOTHING;`);
	lines.push("");
}

lines.push("COMMIT;");

fs.writeFileSync(outputSqlPath, lines.join("\n"), "utf8");
console.log(`SQL written to ${outputSqlPath}`);
console.log(`Entries parsed: ${entries.length} (fixed-date entries exported).`);
