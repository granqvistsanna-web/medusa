---
description: Scaffold a new chapter file from templates/chapter.md with beats copied from outline/beats.md.
argument-hint: <chapter-number> <slug> [title]
---

You will create a new chapter file for chapter `$1` with slug `$2`.

Steps:

1. Zero-pad `$1` to two digits (e.g. `7` → `07`). The filename is `chapters/ch{NN}-$2.md`.
2. If the file exists, stop and report.
3. Read `templates/chapter.md` and `outline/beats.md`.
4. Create the chapter file, filling the frontmatter:
   - `chapter: $1`
   - `title: $3` if provided, otherwise the heading from `outline/beats.md` for this chapter
   - `beats:` copied from the matching section of `outline/beats.md`
   - `characters:` inferred from the beats (include Medusa always)
   - `setting:` and `time:` inferred from the beats
   - `word_target:` 1500 (or 800 if this is a frame chapter — check the act structure)
   - `status: draft`
5. Leave the body empty except for the HTML comment from the template.
6. Print the file path, the beats that were copied in, and a suggestion: "Draft with `/draft-scene ch{NN} <beat>`."
