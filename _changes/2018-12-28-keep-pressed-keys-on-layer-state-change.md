---
layout: qmk-title
title: "Keep pressed keys on layer state change"
date: 2018-12-28 00:00:00 -0500
category: core
commit: 93b004c
pr: 3905
---

This allows pressed keys to stay pressed when a layer change occurs.

Say you're playing a game and you're holding W to run forward. You need to access a menu or skill that's bound to F4. You have that set on a momentary layer, so you try pressing Fn+4 — but as soon as you press Fn, QMK resets the W key and you stop moving forward, even though you're still holding the key.

This fixes the problem by not resetting held keys when the layer state changes. It relies on the _prevent stuck modifiers_ implementation keeping track of which key was pressed on which layer and resetting them accordingly so that no keys end up stuck. As a consequence, it's disabled when `STRICT_LAYER_RELEASE` is defined, for backwards compatibility reasons.
