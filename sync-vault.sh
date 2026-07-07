#!/usr/bin/env bash
# Mirror the local Obsidian vault into content/ for publishing.
# After running: git add -A && git commit -m "sync vault" && git push
set -euo pipefail

VAULT="/Users/wmbt7052/Documents/UEAltelier-wiki/UEaltelier"
REPO_URL="https://github.com/edwinmeng163-oss/UEAtelier"
DEST="$(cd "$(dirname "$0")" && pwd)/content"

mkdir -p "$DEST"
# drop stale pages so renamed/deleted notes disappear from the site
find "$DEST" -name '*.md' -delete

find "$VAULT" -name '*.md' ! -path '*/.obsidian/*' -print0 | while IFS= read -r -d '' f; do
  rel="${f#"$VAULT"/}"
  out="$DEST/$rel"
  mkdir -p "$(dirname "$out")"
  # frontmatter carries a machine-local source_repo path; publish the GitHub URL instead
  sed "s|^source_repo:.*|source_repo: \"$REPO_URL\"|" "$f" > "$out"
done

# vault Welcome.md becomes the site landing page (nothing links to [[Welcome]])
if [ -f "$DEST/Welcome.md" ]; then
  { printf -- '---\ntitle: Welcome\n---\n'; cat "$DEST/Welcome.md"; } > "$DEST/index.md"
  rm "$DEST/Welcome.md"
fi

echo "Synced $(find "$DEST" -name '*.md' | wc -l | tr -d ' ') pages from vault."
