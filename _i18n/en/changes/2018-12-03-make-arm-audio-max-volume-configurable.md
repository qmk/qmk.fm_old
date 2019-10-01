---
layout: qmk-title
title: "Make ARM Audio max volume configurable"
date: 2018-12-03 00:00:00 -0500
category: core
commit: 3a0f3a5
pr: 4540
---

This allows you to set the max volume used by the ARM Audio feature.  This is useful if you (shock!) find the audio to be way too loud. 

Specifically, this value appears to be a logarithmic value, so large changes may be necessary. See the [QMK Documenation](https://docs.qmk.fm/#/feature_audio#arm-audio-volume) for details. 
