---
layout: default
title: Medusa
permalink: /
---

<section class="intro">
  <div>
    <p class="kicker">Published chapters</p>
    <h1>Medusa</h1>
    <p class="lede">A mortal girl becomes the monster the gods need her to be, and learns too late that the only story left to her is the one told by the boy sent to kill her.</p>
    {% assign chapters = site.pages | where: "layout", "chapter" | sort: "chapter" %}
    <dl class="site-stats" aria-label="Published chapter stats">
      <div>
        <dt>Chapters</dt>
        <dd>{{ chapters.size }}</dd>
      </div>
      <div>
        <dt>Story</dt>
        <dd>Novella</dd>
      </div>
      <div>
        <dt>POV</dt>
        <dd>Medusa</dd>
      </div>
    </dl>
  </div>
  <img class="cover-art" src="{{ '/assets/cover.svg' | relative_url }}" alt="Medusa cover artwork">
</section>

<section class="chapter-band" aria-labelledby="published-chapters">
  <div class="section-heading">
    <p class="kicker">Current release</p>
    <h2 id="published-chapters">Published chapters</h2>
  </div>

  {% if chapters.size > 0 %}
  <div class="chapter-grid">
    {% for chapter in chapters %}
    <a class="chapter-card" href="{{ chapter.url | relative_url }}">
      <span class="chapter-kicker">Chapter {{ chapter.chapter }}</span>
      <strong>{{ chapter.title }}</strong>
      {% if chapter.setting %}<span>{{ chapter.setting }}</span>{% endif %}
      <span class="chapter-meta">{% if chapter.status %}{{ chapter.status }}{% else %}published{% endif %}</span>
    </a>
    {% endfor %}
  </div>
  {% else %}
  <p class="empty-state">No chapters have been marked for publication yet.</p>
  {% endif %}
</section>

<section class="read-more" aria-labelledby="read-more">
  <h2 id="read-more">Read more</h2>
  <p><a href="{{ '/synopsis.html' | relative_url }}">Synopsis</a></p>
</section>
