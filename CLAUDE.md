# Medusa — Novella

A literary fantasy novella retelling the myth of Medusa from her own point of view.

## Form & voice

- **Length:** Novella, ~25-40k words, ~12-18 chapters.
- **POV:** First person, Medusa. Close, interior, unreliable where her feelings colour memory.
- **Tense:** Past tense, with occasional present-tense framing scenes (older Medusa, after the curse, reflecting).
- **Register:** Literary, lyrical, grounded in sensory detail. No anachronisms. Avoid modern idiom.
- **Gods:** They speak in a register slightly elevated from mortals — plainer syntax, heavier weight. Do not make them theatrical.

## Canon & liberties

- Primary source: Ovid's *Metamorphoses* IV. Hesiod's *Theogony* for the sisters.
- We take the Ovidian version: Medusa was mortal, a priestess of Athena, and her transformation followed Poseidon's assault in the temple.
- Liberties with geography, chronology, and minor figures are allowed if logged in `bible/timeline.md` or `bible/world.md`.

## Workflow

Before drafting a scene or chapter:

1. Re-read `synopsis.md` and the relevant section of `outline/`.
2. Re-read the sheets of every character in the scene (`characters/*.md`).
3. Skim `bible/` entries for any location, object, or divine figure that appears.
4. Draft the scene. Keep a `notes/open-questions.md` entry for anything you had to invent.
5. Run `/continuity-check <chapter>` before marking a chapter done.

Never contradict the bible silently. If a scene requires a change, update the bible entry in the same commit and note it in `notes/changelog.md`.

## Agents

Delegate to the right subagent via the Agent tool:

- `worldbuilder` — anything touching lore, geography, divine rules.
- `character-designer` — create or revise character sheets.
- `plotter` — synopsis, outlines, structural decisions.
- `scene-writer` — prose drafting from a beat.
- `continuity-editor` — consistency sweeps across chapters and bible.
- `line-editor` — prose polish, rhythm, word choice.

## House style

- No em-dashes inside dialogue attribution; use commas.
- Prefer concrete images to abstract nouns.
- No modern psychology vocabulary in narration (no "trauma", "dissociation", "boundaries"). Show the feeling instead.
- Divine names capitalised; epithets lowercase unless a name (e.g. "the Grey-Eyed" in capitals when used as address, lowercase in reference).
- Italicise Greek words on first use only.
