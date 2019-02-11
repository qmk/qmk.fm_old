---
layout: qmk-title
title: "Simplify split_common significantly"
date: 2019-01-17 00:00:00 -0500
category: split
commit: 28929ad
pr: 4772
---

Split_common no longer has a separate main loop for the slave, it reuses the keyboard_task main loop like ergodox infinity. This eliminates a lot of the code and makes it a bit easier to reason about. It also means that the slave will behave slightly differently depending on what flags are enabled - many of the options lie outside the is_keyboard_master gate in keyboard_task, and I expect that will have to change as they're tested.

The master/slave transport stuff has also been slighly refactored - instead of i2c_* and serial_* functions and a bunch of ifdefs to change the calling code, it's all been renamed generically, so there's no transport-specific ifdefs in the guts of the matrix code.
