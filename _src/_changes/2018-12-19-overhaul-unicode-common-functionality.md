---
layout: qmk-title
title: "Overhaul Unicode Common functionality"
date: 2018-12-19 00:00:00 -0500
category: core
commit: fdeec29
pr: 4325
---

This is a significant overhaul to the core ("common") Unicode code. 

Specifically, a lot of cleanup and fixes were implemented to make input more reliable. 

* Move input mode initialization to a proper function and call it from `matrix_init_quantum`
* Move all the keycode processing to unicode common file
* Add keycodes for selecting the unicode input method
* Add optional audio feedback to keycodes
* Remove UC_OSX_RALT input method
* Make keycodes used by UC_OSX and UC_WINC configurable
* Add optional ability to cycle through input modes (configurable)
* Overhauled, refined and corrected the documentation
