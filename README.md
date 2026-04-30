# Medusa

En novell under arbete. Medusas egen berättelse.

## Filstruktur

```
synopsis.md          synopsis på en sida
bible/               världsregler, panteon, tidslinje, platser, teman
characters/          ett blad per namngiven karaktär
outline/             aktstruktur och kapitelvisa beats
chapters/            prosa (chNN-slug.md)
notes/               anteckningar, öppna frågor, changelog, strykningar
templates/           mallar som används av slash-kommandon
.claude/             agenter och slash-kommandon
```

## Arbeta med Claude Code

Se `CLAUDE.md` för stilregler och arbetsgång. Vanliga kommandon:

- `/new-character <namn>` — skapa ett nytt karaktärsblad.
- `/new-chapter <n> <slug>` — skapa ett nytt kapitel från översikten.
- `/draft-scene <kapitel> <beat>` — skriv prosa från en outline-beat.
- `/continuity-check [kapitel]` — kör continuity-editor-agenten.
- `/status` — ordräkning, kapitelläge, öppna frågor.

## Publicering med GitHub Pages

Repot innehåller ett GitHub Pages-arbetsflöde för en läsarvänd webbsida.
Sidan iordningställs av `scripts/prepare-pages.sh` från `synopsis.md` och
de kapitel som markerats `published: true`; anteckningar, mallar, karaktärsblad och
bibelfiler hålls utanför Pages-bygget.

I GitHub: ställ in **Settings → Pages → Build and deployment → Source** till
**GitHub Actions**. Arbetsflödet publicerar vid push till
`claude/book-writing-workflow-UFzuf`, eller manuellt från Actions-fliken.

För att bygga den iordningställda Pages-källan lokalt:

```sh
bash scripts/prepare-pages.sh ./_pages
```
