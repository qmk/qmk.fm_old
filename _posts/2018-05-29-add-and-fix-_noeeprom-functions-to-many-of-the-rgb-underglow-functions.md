---
layout: qmk-title
title: "Add and fix _noeeprom functions to many of the RGB Underglow functions"
date: 2018-05-29 00:00:00 -0500
category: core
commit: 751719
pr: 3070
---

And and fix _noeeprom functions to many of the RGB Underglow functions

* Many functions are unnecessarily calling the eeprom write code. The toggle/enable is command is especially guilty of this, as it writes to EEPROM 3 times.  But rgb mode writes twice, every time it's called. And init resets the rgb eeprom range and then writes back to it twice!
* Fixed the rgblight_sethsv_noeeprom to work as expected, by moving a lot of the code to a helper function.
* Added a noeeprom function for mode, enable, disable, and toggle functions. (didn't bother for increase/decrease stuff, and didn't add new keycodes)
* Add to predefined colors list
* Add new functions to manual/docs

* Update RGB Sleep feature to use _noeeprom (Because that's exactly what it should be doing, actually!)
