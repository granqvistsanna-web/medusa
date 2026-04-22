---
description: Draft prose for a chapter beat by delegating to the scene-writer subagent.
argument-hint: <chapter-id> [beat-description]
---

Draft prose for chapter `$1`. If a specific beat is given as `$2+`, focus on that beat; otherwise, draft the next undrafted section of the chapter.

Steps:

1. Resolve `$1` to a chapter file under `chapters/` (e.g. `ch07` → `chapters/ch07-*.md`). If ambiguous, list matches and stop.
2. Read the chapter file's frontmatter to see which characters and setting are in play.
3. Delegate to the `scene-writer` subagent via the Agent tool. The prompt must include:
   - The chapter file path
   - The full frontmatter, quoted
   - The specific beat to draft if provided: `$2 $3 $4 $5 $6 $7 $8 $9`
   - Instruction to read CLAUDE.md, synopsis, relevant character sheets and bible entries before drafting
   - Instruction to write into the chapter file below the frontmatter, preserving frontmatter and any prior prose
   - Instruction to return word count, beats covered, and any continuity question, under 100 words

4. When the agent returns, suggest running `/continuity-check $1` before the user locks the chapter.
