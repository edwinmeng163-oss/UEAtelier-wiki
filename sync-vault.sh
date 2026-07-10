#!/usr/bin/env bash
# Mirror the local Obsidian vault into content/ for publishing.
# After running: git add -A && git commit -m "sync vault" && git push
set -euo pipefail

VAULT="/Users/wmbt7052/Documents/UEAltelier-wiki/UEaltelier"
REPO_URL="https://github.com/edwinmeng163-oss/UEAtelier"
DEST="$(cd "$(dirname "$0")" && pwd)/content"
export VAULT REPO_URL DEST

mkdir -p "$DEST"
# drop stale pages so renamed/deleted notes disappear from the site
find "$DEST" -name '*.md' -delete

python3 - <<'EOF'
import os, re, pathlib

vault = pathlib.Path(os.environ["VAULT"])
dest = pathlib.Path(os.environ["DEST"])
repo_url = os.environ["REPO_URL"]

n = 0
for src in vault.rglob("*.md"):
    if ".obsidian" in src.parts:
        continue
    rel = src.relative_to(vault)
    text = src.read_text(encoding="utf-8")
    if not text.strip():
        continue

    # frontmatter carries a machine-local source_repo path; publish the GitHub URL
    text = re.sub(r"^source_repo:.*$", f'source_repo: "{repo_url}"', text, count=1, flags=re.M)

    # ensure a title key so tabs/search/backlinks show the note name, not the slug
    title = src.stem
    lines = text.split("\n")
    if lines and lines[0] == "---":
        end = lines.index("---", 1)
        if not any(l.startswith("title:") for l in lines[1:end]):
            lines.insert(1, f'title: "{title}"')
        text = "\n".join(lines)
    else:
        text = f'---\ntitle: "{title}"\n---\n{text}'

    out = dest / rel
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(text, encoding="utf-8")
    n += 1

# vault Welcome.md becomes the site landing page (nothing links to [[Welcome]])
welcome = dest / "Welcome.md"
if welcome.exists():
    welcome.rename(dest / "index.md")

print(f"Synced {n} pages from vault.")
EOF
