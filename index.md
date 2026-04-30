---
layout: default
title: Medusa
permalink: /
---

<section class="intro">
  <div>
    <p class="kicker">Publicerade kapitel</p>
    <h1>Medusa</h1>
    <p class="lede">En dödlig flicka blir det monster som gudarna behöver att hon ska bli, och inser för sent att den enda berättelse som finns kvar åt henne är den som berättas av pojken som skickats för att döda henne.</p>
    {% assign chapters = site.pages | where: "layout", "chapter" | sort: "chapter" %}
    <dl class="site-stats" aria-label="Statistik över publicerade kapitel">
      <div>
        <dt>Kapitel</dt>
        <dd>{{ chapters.size }}</dd>
      </div>
      <div>
        <dt>Form</dt>
        <dd>Novell</dd>
      </div>
      <div>
        <dt>Berättarperspektiv</dt>
        <dd>Medusa</dd>
      </div>
    </dl>
  </div>
  <img class="cover-art" src="{{ '/assets/cover.png' | relative_url }}" alt="Omslagsbild för Medusa">
</section>

<section class="chapter-band" aria-labelledby="published-chapters">
  <div class="section-heading">
    <p class="kicker">Aktuell utgåva</p>
    <h2 id="published-chapters">Publicerade kapitel</h2>
  </div>

  {% if chapters.size > 0 %}
  <div class="chapter-grid">
    {% for chapter in chapters %}
    <a class="chapter-card" href="{{ chapter.url | relative_url }}">
      <span class="chapter-kicker">Kapitel {{ chapter.chapter }}</span>
      <strong>{{ chapter.title }}</strong>
      {% if chapter.setting %}<span>{{ chapter.setting }}</span>{% endif %}
      <span class="chapter-meta">{% if chapter.status %}{{ chapter.status }}{% else %}publicerad{% endif %}</span>
    </a>
    {% endfor %}
  </div>
  {% else %}
  <p class="empty-state">Inga kapitel har markerats för publicering än.</p>
  {% endif %}
</section>

<section class="read-more" aria-labelledby="read-more">
  <h2 id="read-more">Läs mer</h2>
  <p><a href="{{ '/synopsis.html' | relative_url }}">Synopsis</a></p>
</section>
