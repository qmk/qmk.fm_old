---
title: "All recent changes in QMK"
layout: qmk-title
permalink: /changes/
---

{% for change in site.posts %}
<a href="{{ change.url }}">{{ change.title }}</a>  
{{change.date | date: "%F"}}  <a href="/changes/{{ change.category }}"><img src="https://img.shields.io/badge/-{{ change.category }}-{{ site.data.categories[change.category].color }}.svg" /></a>

{% endfor %}