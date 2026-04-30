# Chapters

One file per chapter. Naming: `chNN-slug.md` (zero-padded, kebab-case slug).

## Required header

Every chapter file starts with a frontmatter block:

```yaml
---
chapter: 7
title: The night
pov: Medusa
tense: past
setting: Temple of Athena, Athens
time: Night
characters: [Medusa, Poseidon]
beats:
  - Fragments; do not describe the body
  - The lamps, the olive tree, the sound of the sea where no sea should reach
  - One direct sentence at the end
word_target: 1600
status: draft  # draft | revised | locked
published: false  # true when this chapter should appear on the website
---
```

Then the prose.

## Status

- `draft` — first pass. Continuity-check not yet run.
- `revised` — prose editorially passed; continuity-check clean.
- `locked` — touched only for typo fixes without agent approval.

## Website publishing

Set `published: true` in a chapter's frontmatter to include it in the static website generated under `_pages/`.

## Before locking

Run `/continuity-check chNN` and resolve every issue in `notes/open-questions.md`.
