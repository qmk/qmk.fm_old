---
layout: qmk-title
title: "Adds a default value for IS_COMMAND for COMMAND feature"
date: 2019-01-26 00:00:00 -0500
category: core
commit: b05c0e4 
pr: 4301
---

This adds a default value for IS_COMMAND to the core code.  This is so that each keyboard doesn't have to define it locally.  It only has to define it, if it is not the default.

THis has some added advantages, like making it easy to fix the the "keyboard_report->mods" value no longer working properly for this, after the endpoint consolidation commit.