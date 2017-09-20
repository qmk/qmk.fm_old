---
title: "All recent changes in QMK"
layout: qmk-title
permalink: /changes/
---

{% for change in site.posts %}
### <a href="{{ change.url }}">{{ change.title }}</a>
{{change.date | date: "%F"}}
<a href="https://github.com/qmk/qmk_firmware/commit/{{ change.commit }}">
    <img src="https://img.shields.io/badge/commit-{{ change.commit }}-lightgrey.svg" />
</a>
<a href="/changes/{{ change.category }}">
    <img src="https://img.shields.io/badge/category-{{ change.category }}-{{ site.data.categories[change.category].color }}.svg" />
</a>
{{ change.excerpt }}

{% endfor %}