---
layout: qmk-title
title: "Change rgblight_get_mode & rgb_matrix_get_mode's return type to uint8_t"
date: 2019-01-01 00:00:00 -0500
category: core
commit: b768859
pr: 4747
---

`rgblight_get_mode()`'s return type right now is `uint32_t`, but upon inspection of its implementation, it's actually returning `rgblight_config_t.mode`, which is an `uint8_t`.  The return type should match `rgblight_config_t.mode`'s.  

I've grep'd through all the keymaps, there does seem to be a few places where `rgblight_get_mode`'s return value is being saved into another uint32_t variable.  These are probably be OK as they're just upcasting.

Also updating `rgb_matrix_get_mode` to return `uint8_t` for similar reason.
