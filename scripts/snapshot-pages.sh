#!/usr/bin/env bash
# Regenerate sources/pages/ from the ENCODE portal.
# Page bodies come from the portal JSON (layout blocks), not the rendered site:
# readability extractors such as defuddle drop the first block and link lists.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
out="$root/sources/pages"
portal="https://www.encodeproject.org"
today="$(date +%F)"
mkdir -p "$out"

while read -r path; do
	[[ -z "$path" || "$path" == \#* ]] && continue
	slug="${path#/}"
	slug="${slug%/}"
	slug="${slug//\//__}"
	json="$(curl -fsSL -H 'Accept: application/json' "$portal$path?format=json")"
	{
		printf '# %s\n\n' "$(jq -r .title <<<"$json")"
		printf '> Snapshot of <%s%s>, fetched %s. Regenerate with scripts/snapshot-pages.sh; do not edit.\n\n' \
			"$portal" "$path" "$today"
		jq -r '(.layout.blocks | map({key: .["@id"], value: .body}) | from_entries) as $b
			| .layout.rows | [.. | strings | select(startswith("#block"))] | .[] | $b[.]' <<<"$json" |
			pandoc -f html -t gfm --wrap=none --lua-filter "$root/scripts/portal-page.lua"
	} >"$out/$slug.md"
	echo "$slug"
done <"$root/sources/pages.txt"

# /glossary/ returns no layout blocks. The portal renders it from this static file.
glossary="$portal/static/components/glossary/glossary.json"
{
	printf '# Glossary\n\n'
	printf '> Snapshot of <%s/glossary/>, rendered from <%s>, fetched %s. Regenerate with scripts/snapshot-pages.sh; do not edit.\n' \
		"$portal" "$glossary" "$today"
	curl -fsSL "$glossary" | jq -r '
		map(.section //= "General terms") as $all
		| reduce $all[].section as $s ([]; if index([$s]) then . else . + [$s] end)
		| .[] as $s
		| "\n## \($s)",
			($all | map(select(.section == $s)) | sort_by(.term | ascii_downcase) | .[]
			| "\n### \(.term)\n\n\(.definition)",
				(.file_formats // empty | "\nFile formats: \(.)"),
				(.additional_information // empty
					| "\nAdditional information: \(map("[\(.title)](\(.url))") | join(", "))"))'
} >"$out/glossary.md"
echo glossary
