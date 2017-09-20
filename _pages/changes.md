---
title: "All recent changes in QMK"
layout: qmk-title
permalink: /changes/
---

{% for change in site.posts %}
<p>
  {{change.date | date: "%F"}}  - <a href="{{ change.url }}">{{ change.title }}</a> <a href="/changes/{{ change.category }}"><img src="https://img.shields.io/badge/-{{ change.category }}-{{ site.data.categories[change.category].color }}.svg" /></a>
</p>
{% endfor %}