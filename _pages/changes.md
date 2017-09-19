---
title: "All recent changes in QMK"
layout: qmk-title
permalink: /changes/
---

<ul>
  {% for change in site.changes %}
    <li>
      <a href="{{ change.url }}">{{ change.title }}</a>
      {{ change.excerpt }}
    </li>
  {% endfor %}
</ul>