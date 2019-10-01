---
layout: qmk-title
title: "Convert split_common to use generic GPIO api"
date: 2019-01-03 00:00:00 -0500
category: split
commit: 38e01a7
pr: 4757
---

This is a small but important step to converting the Split Keyboard code to be ARM compatible, by using hardware agnostic functions (instead of the AVR specific addresses).
