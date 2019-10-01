---
layout: qmk-title
title: "Improve consistency in UNICODEMAP code and docs, update docs/understanding_qmk"
date: 2019-01-07 00:00:00 -0500
category: core
commit: cd9262d
pr: 4774
---


Rename some constants and functions pertaining to UNICODEMAP so they're consistent with the rest of the system. Also update the documentation accordingly. See below for details.

These changes should be non-breaking. I've taken care to update all usages of the renamed symbols.
