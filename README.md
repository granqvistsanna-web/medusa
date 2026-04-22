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
