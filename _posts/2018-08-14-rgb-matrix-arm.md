---
layout: qmk-title
title: "Rgb matrix arm"
date: 2018-08-14 00:00:00 -0500
category: core
commit: ad2bb5
pr: 3648
---

We've added ARM support for the RGB Matrix.

* Addition of I2C master driver for STM32, Generalization of ISSI3731 driver
  - Addition of an i2c_master driver for STM32 to replicate expectations of AVR driver.
  - Moved ISSI3731 driver one level up to make it accesible by both architectures.
  - Renamed ISSI3731 functions to a more general name for preparation of other ISSI drivers.
- Added compiler directives where necessary to differenciate each architecture.
