---
layout: qmk-title
title: "Velocikey: Match RGB animation speed to typing speed"
date: 2019-02-21 00:00:00 -0500
category: core
commit: c1c5922
pr: 3754
---

[Velocikey](https://docs.qmk.fm/#/feature_velocikey) feature for RGB Light has been added! 

This allows you to increase and decrease the RGB animation speed based on keyboard activity (typing). 

Add `VELOCIKEY_ENABLE=yes` to your `rules.mk`.  

The following light effects will all be controlled by Velocikey when it is enabled:

* RGB Breathing
* RGB Rainbow Mood
* RGB Rainbow Swirl
* RGB Snake
* RGB Knight
