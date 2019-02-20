---
layout: qmk-title
title: "Fix ARM Audio issues and its EEPROM persistence"
date: 2019-02-14 00:00:00 -0500
category: core
commit: 85022f8
pr: 4936
---

Added EEPROM support for Audio on ARM! 

Additionally, added a few checks for edge cases, so that Audio Clicky doesn't click when turning off audio (so it doesn't get stuck on).