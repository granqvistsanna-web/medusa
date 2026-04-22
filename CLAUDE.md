# Medusa — Novella

A literary fantasy novella retelling the myth of Medusa from her own point of view.

## Form & voice

- **Language:** Swedish. Kapitel, beats och prosa skrivs på svenska. Bibel och arbetsnoteringar får vara på engelska.
- **Length:** Novella, ~25–30k words, 19 chapters. See `outline/act-structure.md`.
- **POV:** First person plural — "vi" — Medusa retrospectively, with the sisters woven in. The plural holds through ch 1–18, begins to crack in ch 16, breaks definitively in ch 19 where the voice becomes "jag" for the first time. This break is the structural turn of the book.
- **Tense:** Present throughout. A retrospective frame allows small markers ("då", "nu tänker jag", "jag visste redan") but no longer reflective passages.
- **Register:** Agota Kristof. Korta deklarativa meningar. Inga känsloord. Inga liknelser. Platta konstateranden. Det outhärdliga får samma vikt som det ordinära. No anachronisms. Avoid modern idiom.
- **Gods:** They speak in a register slightly plainer than mortals — fewer words, heavier weight. Do not make them theatrical.
- **Names that are never spoken:** Poseidon. Perseus. (Possibly — decision deferred; see `notes/open-questions.md`.)
- **Names that are spoken:** Athena, Stheno, Euryale, Phorkys, Ione, Medusa herself.
- **The hair:** changes but is never described directly. "Mitt hår är inte längre hår."
- **Monster attributes:** only the stone-gaze. No wings, no fangs.

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
- Prefer concrete actions and facts to abstract nouns. Count things. Name objects.
- No modern psychology vocabulary in narration (no "trauma", "dissociation", "boundaries"). Do not name the feeling. Say what the hand was doing.
- No similes. Metaphors only where they have already hardened into idiom.
- Divine names capitalised; epithets lowercase unless used as a name (e.g. "den Gråögda" as address, gråögd in reference).
- Italicise Greek words on first use only.
- Chapter length: 1–4 pages as a rule. Ch 16 is the exception (6–8 pages).
