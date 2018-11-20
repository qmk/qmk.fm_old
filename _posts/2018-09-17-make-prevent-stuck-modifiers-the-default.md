---
layout: qmk-title
title: "Make `PREVENT_STUCK_MODIFIERS` the default"
date: 2018-09-17 00:00:00 -0500
category: core
commit: 7434494
pr: 3107
---

This changes the default behavior of QMK to use the `PREVENT_STUCK_MODIFIERS` behavior by default.  This way, modifiers are remembered correctly. 

* Remove chording as it is not documented, not used, and needs work.

* Make Leader Key an optional feature.

* Switch from `PREVENT_STUCK_MODIFIERS` to `STRICT_LAYER_RELEASE`

* Remove `#define PREVENT_STUCK_MODIFIERS` from keymaps.
