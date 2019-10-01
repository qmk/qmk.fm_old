---
layout: qmk-title
title: "Per Key Leader Timing Option"
date: 2018-12-15 00:00:00 -0500
category: core
commit: 3ec4a00
pr: 4026
---

This adds a "per key" timing option to the Leader Key function.

Specifically, this option resets the timer each time you hit a key in the sequence.  This way, you can keep the timeout period short, but are still able to use more complex leader sequences. 