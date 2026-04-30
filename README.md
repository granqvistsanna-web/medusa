# Medusa

A novella-in-progress. Medusa's own account.

## Layout

```
synopsis.md          one-page pitch
bible/               world rules, pantheon, timeline, locations, themes
characters/          one sheet per named character
outline/             act structure and per-chapter beats
chapters/            prose (chNN-slug.md)
notes/               research, open questions, changelog, cuttings
templates/           scaffolding used by slash commands
.claude/             agents and slash commands
```

## Working with Claude Code

See `CLAUDE.md` for house style and workflow. Common commands:

- `/new-character <name>` — scaffold a character sheet.
- `/new-chapter <n> <slug>` — scaffold a chapter from outline.
- `/draft-scene <chapter> <beat>` — draft prose from an outline beat.
- `/continuity-check [chapter]` — run the continuity-editor agent.
- `/status` — word counts, chapter progress, open questions.

## Publishing with GitHub Pages

This repo includes a GitHub Pages workflow for a reader-facing book site.
The site is staged by `scripts/prepare-pages.sh` from `synopsis.md` and
chapters marked `published: true`; notes, templates, character sheets, and
bible files stay out of the Pages build.

On GitHub, set **Settings → Pages → Build and deployment → Source** to
**GitHub Actions**. The workflow publishes on pushes to
`claude/book-writing-workflow-UFzuf`, or manually from the Actions tab.

To build the staged Pages source locally:

```sh
bash scripts/prepare-pages.sh ./_pages
```
