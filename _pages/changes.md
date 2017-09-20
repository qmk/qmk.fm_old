---
title: "All recent changes in QMK"
layout: qmk-title
permalink: /changes/
---

{% for change in site.posts reversed %}
<p>
  {{change.date | date: "%F"}}  - <a href="{{ change.url }}">{{ change.title }}</a>
</p>
{% endfor %}