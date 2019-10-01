---
layout: qmk-title
title: "Fix up RGB Matrix code"
date: 2018-12-03 00:00:00 -0500
category: core
commit: da1afe1
pr: 4503
---

This commit fixes up some of the code, and expands the functionality of the [RGB Matrix](https://docs.qmk.fm/#/feature_rgb_matrix) code. Including adding support for running RGB Light and RGB Matrix at the same time. 

Specifically, this commit does this: 
* Adds `rgb_matrix_*` functions, separate from the `rgblight_*` functions
  * Adds defines so that if rgblight is not enabled, it uses the `rgb_matrix_*` functions
  * This allows for both features to be used separately and independantly, though does not add keycodes for them.
* Adds `*_noeeprom` versions of the `rgb_matrix_*` functions, so it does not write to EEPROM
* Sets `increment` and `decrement` as static functions, so they can coexist in different files without compiler errors occurring. 