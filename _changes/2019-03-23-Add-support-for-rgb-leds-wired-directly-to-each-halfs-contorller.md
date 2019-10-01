---
layout: qmk-title
title: "Add support for RGB LEDs wired directly to each half's controller"
date: 2019-03-23 00:00:00 -0500
category: core
commit: f077204
pr: 5392
---

This adds support for controller the RGB Light stripes wired to the different controllers on Split Keyboards.

I2C already supported this, but added to serial support, and additional improvement to existing code. 

Use `RGBLED_SPLIT` to set the LED locations. 