---
layout: qmk-title
title: "RETRO_TAPPING"
date: 2017-10-31 11:15:00 -0400
category: core
commit: 04b9b6
pr: 1922
---

Holding and releasing a dual function key without pressing another key will result in nothing happening. With retro tapping enabled, releasing the key without pressing another will send the original keycode even if it is outside the tapping term.

For instance, holding and releasing LT(2, KC_SPACE) without hitting another key will result in nothing happening. With this enabled, it will send KC_SPACE instead.


* add RETRO_TAP: tap anyway, even after TAP_TERM, if no interruption

* consistent variable name

* add option doc

* change name for consistency

* make RETRO_TAPPING default to off