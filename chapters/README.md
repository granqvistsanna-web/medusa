# Kapitel

En fil per kapitel. Namngivning: `chNN-slug.md` (nollutfylld, kebab-case slug).

## Obligatorisk header

Varje kapitelfil börjar med ett frontmatter-block:

```yaml
---
chapter: 6
title: Natten
pov: Medusa
tense: preteritum
setting: Athenas tempel, Athen
time: Natt
characters: [Medusa, Poseidon]
beats:
  - Fragment; beskriv inte kroppen
  - Lamporna, olivträdet, ljudet av havet där inget hav borde nå
  - En direkt mening i slutet
word_target: 1600
status: utkast  # utkast | reviderad | låst
published: false  # true när kapitlet ska visas på webbsidan
---
```

Sedan prosan.

## Status

- `utkast` — första genomgången. Continuity-check ännu inte körd.
- `reviderad` — redaktionellt genomgången; continuity-check ren.
- `låst` — rörs endast för korrigering av slagfel utan agentens godkännande.

## Webbpublicering

Sätt `published: true` i ett kapitels frontmatter för att inkludera det i den statiska webbsidan som genereras under `_pages/`.

## Innan låsning

Kör `/continuity-check chNN` och lös varje fråga i `notes/open-questions.md`.
