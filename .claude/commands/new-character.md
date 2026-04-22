---
description: Scaffold a new character sheet from templates/_template.md and delegate to character-designer to fill it in.
argument-hint: <name> [role]
---

You will create a new character sheet for `$1` and hand off to the character-designer agent.

Steps:

1. Compute the filename: `characters/` + lowercased `$1` with spaces replaced by hyphens + `.md`. If the file already exists, stop and report.
2. Copy `characters/_template.md` to that path, replacing `{{NAME}}` with `$1`.
3. Delegate to the `character-designer` subagent via the Agent tool with a prompt that includes:
   - The character's name: `$1`
   - Their role, if provided: `$2`
   - Instruction to read synopsis, bible/, and existing character sheets before filling the template
   - Instruction to return a brief summary of the sheet created, under 150 words

4. After the agent returns, print a one-line summary for the user with the new file path and the key decisions made.
