---
description: Run continuity-editor against a chapter (or the most recently modified chapter).
argument-hint: [chapter-id]
---

Run a continuity audit on chapter `$1`. If no chapter is given, audit the most recently modified file in `chapters/`.

Steps:

1. If `$1` is provided, resolve to `chapters/$1-*.md`. Otherwise, find the most recently modified `.md` file in `chapters/` excluding `README.md`.
2. Delegate to the `continuity-editor` subagent via the Agent tool. The prompt must include:
   - The resolved chapter file path
   - Instruction to check against CLAUDE.md, bible/, characters/, and all prior chapters
   - Instruction to return a markdown punch list with severities (`block`, `warn`, `note`) and a one-line verdict

3. Present the punch list to the user verbatim.
4. For each `block`-severity issue, suggest a delegation:
   - world/rule issues → `worldbuilder`
   - character-voice issues → `character-designer`
   - prose issues → `line-editor` (or the user directly, if voice is at stake)
5. Do not attempt fixes without user approval.
