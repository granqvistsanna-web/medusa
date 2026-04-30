#!/usr/bin/env bash
set -euo pipefail

dest="${1:-./_pages}"

rm -rf "$dest"
mkdir -p "$dest"

escape_yaml() {
  printf '%s' "$1" | sed 's/"/\\"/g'
}

title_from_markdown() {
  local source="$1"
  local title

  title="$(sed -n 's/^# //p' "$source" | head -n 1)"
  if [[ -n "$title" ]]; then
    printf '%s' "$title"
  else
    basename "$source" .md | sed 's/-/ /g'
  fi
}

copy_markdown_page() {
  local source="$1"
  local target="$2"
  local title

  mkdir -p "$(dirname "$target")"

  if [[ "$(head -n 1 "$source")" == "---" ]]; then
    cp "$source" "$target"
    return
  fi

  title="$(title_from_markdown "$source")"
  {
    printf '%s\n' "---"
    printf 'layout: default\n'
    printf 'title: "%s"\n' "$(escape_yaml "$title")"
    printf '%s\n\n' "---"
    cat "$source"
  } > "$target"
}

published_chapter() {
  local source="$1"

  awk '
    NR == 1 && $0 == "---" { in_frontmatter = 1; next }
    in_frontmatter && $0 == "---" { exit }
    in_frontmatter && $0 ~ /^published:[[:space:]]*true([[:space:]]*(#.*)?)?$/ { found = 1 }
    END { exit found ? 0 : 1 }
  ' "$source"
}

copy_chapter_page() {
  local source="$1"
  local target="$2"

  published_chapter "$source" || return 0
  mkdir -p "$(dirname "$target")"

  {
    printf '%s\n' "---"
    printf 'layout: chapter\n'
    awk '
      NR == 1 && $0 == "---" { in_frontmatter = 1; next }
      in_frontmatter && $0 == "---" { exit }
      in_frontmatter && $0 !~ /^layout:/ { print }
    ' "$source"
    printf '%s\n\n' "---"
    awk '
      NR == 1 && $0 == "---" { in_frontmatter = 1; next }
      in_frontmatter && $0 == "---" { in_frontmatter = 0; next }
      !in_frontmatter { print }
    ' "$source"
  } > "$target"
}

cp _config.yml "$dest/_config.yml"
cp -R _layouts "$dest/_layouts"
cp -R assets "$dest/assets"

copy_markdown_page index.md "$dest/index.md"
copy_markdown_page synopsis.md "$dest/synopsis.md"

mkdir -p "$dest/chapters"
for chapter in chapters/ch*.md; do
  [[ -e "$chapter" ]] || continue
  copy_chapter_page "$chapter" "$dest/$chapter"
done

cat > "$dest/chapters/index.md" <<'CHAPTER_INDEX'
---
layout: default
title: Chapters
permalink: /chapters/
---

# Chapters

{% assign chapters = site.pages | where_exp: "p", "p.chapter" | sort: "chapter" %}
{% if chapters.size > 0 %}
<div class="chapter-grid">
  {% for chapter in chapters %}
  <a class="chapter-card" href="{{ chapter.url | relative_url }}">
    <span class="chapter-kicker">Chapter {{ chapter.chapter }}</span>
    <strong>{{ chapter.title }}</strong>
    {% if chapter.setting %}<span>{{ chapter.setting }}</span>{% endif %}
    <span class="chapter-meta">{% if chapter.status %}{{ chapter.status }}{% else %}published{% endif %}</span>
  </a>
  {% endfor %}
</div>
{% else %}
No chapters have been marked for publication yet.
{% endif %}
CHAPTER_INDEX
