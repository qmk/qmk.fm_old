---
layout: qmk-title
title: "Refactor quantum/split_common/i2c.c, quantum/split_common/serial.c"
date: 2018-12-14 00:00:00 -0500
category: split
commit:  8f79094
pr: 4522
---

This PR allows for both i2c and serial support for Split Keyboards (aka Split Common code) to be enabled at the same time, without causing any overlap/issues.  

It also adds some compiler optimization to properly handle this. 