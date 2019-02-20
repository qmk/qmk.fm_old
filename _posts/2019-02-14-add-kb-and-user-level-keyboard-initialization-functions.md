---
layout: qmk-title
title: "Add kb and user level keyboard initialization functions"
date: 2019-02-14 00:00:00 -0500
category: core
commit: cc5c6b4
pr: 3113
---

We've added new hooks for keyboard initialization! 

The `matrix_init_*` code currently runs too soon for certain tasks like setting RGB, requiring eeprom writing or using a timer check to properly run code.

* `keyboard_pre_init_*` runs first thing, as part of `keyboard_setup`, so it's configured before most everything.
* `keyboard_post_init_*` runs as the very last task in `keyboard_init`.

Also, this adds `keyboard_setup` to chibios and vusb, since they were not calling this function.