---
layout: qmk-title
title: "Add MOD_MASK_* macros to core code"
date: 2019-01-25 00:00:00 -0500
category: core
commit:  2f009d7
pr: 4337
---

This adds the Mod MASK ans pre-existing defines in the core code, so you can easily reference them without having to manually define them.

These are different from `MOD_*`, and cannot be used interchangeably.  For details, see these links: 

* `MOD_MASK_*`: https://github.com/qmk/qmk_firmware/pull/4337#issuecomment-447507781
* `MOD_*`: https://github.com/qmk/qmk_firmware/pull/4337#issuecomment-447507781