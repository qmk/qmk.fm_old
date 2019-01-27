---
layout: qmk-title
title: "Fix RGBLIGHT_SLEEP function"
date: 2019-01-25 00:00:00 -0500
category: core
commit: 7aba1fd 
pr: 4865
---

This fixxes the `RGBLIGHT_SLEEP` option, so that the lights properly maintain the previous setting in all cases.

Previously, it would effectively force the lights to be on, regardless of the previous status.  This is entirely drashna's fault (as admitted by him, and this excerpt is written by him) since it was never properly tested with the lights off.