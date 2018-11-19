---
layout: qmk-title
title: "Add Function level EECONFIG code for EEPROM"
date: 2018-10-01 00:00:00 -0500
category: core
commit: e885c79
pr: 3084
---
* Add Function level EEPROM configuration

  Add kb and user functions for EEPROM, and example of how to use it.

* Bug fixes and demo

* Additional cleanup

* Add EEPROM reset macro to example

* Forgot init function in list

* Move eeconfig_init_quantum function to quantum.c and actually set default layer

* See if removing weak quantum function fixes issue

* Fix travis compile error

* Remove ifdef blocks from EECONFIG so settings are always set

* Fix for ARM EEPROM updates

* Fix merge issues

* Fix potential STM32 EEPROM issues
