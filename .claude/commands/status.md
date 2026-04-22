---
description: Report manuscript progress — word counts per chapter, total, open questions, chapters needing continuity check.
---

Report the state of the manuscript. Steps:

1. List every `chapters/chNN-*.md` file in order. For each, print:
   - Chapter number and title (from frontmatter)
   - Status (from frontmatter): `draft` / `revised` / `locked`
   - Word count (count words in the body, excluding frontmatter and HTML comments)

2. Print a total word count across all chapters, and compare to a rough target of 30,000.

3. Count and print the number of open items in `notes/open-questions.md` (bullet lines starting with `- **`).

4. List any chapter whose status is `draft` — these need `/continuity-check`.

5. List any outline beat in `outline/beats.md` that is not yet marked with ✓ — the next things to write.

6. Keep the report compact: a table for chapters, then three short sections for the rest. No prose commentary.
