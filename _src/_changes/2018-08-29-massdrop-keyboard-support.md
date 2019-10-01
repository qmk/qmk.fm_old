---
layout: qmk-title
title: "ISSI31FL3733 driver"
date: 2018-08-29 00:00:00 -0500
category: keyboards
commit: 30680c6e
pr: 3780
---

We've added support for Massdrop's CTRL and ALT keyboards. Additionally support for ATSAM ARM has been added, as well.

* Massdrop SAMD51

  Massdrop SAMD51 keyboards initial project upload

* Removing relocated files

  Removing files that were relocated and not deleted from previous location

* LED queue fix and cleaning

  Cleaned some white space or comments.
  Fix for LED I2C command queue.
  Cleaned up interrupts.
  Added debug function for printing numbers to scope through m15 line.

* Factory programmed serial usage

  Ability to use factory programmed serial in hub and keyboard usb descriptors

* USB serial number and bugfix

  Added support for factory programmed serial and usage.
  Incorporated bootloader's conditional compiling to align project closer.
  Fixed issue when USB device attempted to send before enabled.
  General white space and comment cleanup.

* Project cleanup

  Cleaned up project in terms of white space, commented code, and unecessary files.
  NKRO keyboard is now using correct setreport although KBD was fine to use.
  Fixed broken linkage to __xprintf for serial debug statements.

* Fix for extra keys

  Fixed possible USB hang on extra keys report set missing

* I2C cleanup

  I2C cleanup and file renames necessary for master branch merge

* Boot tracing and clocks cleanup

  Added optional boot debug trace mode through debug LED codes.
  General clock code cleanup.

* Relocate ARM/Atmel headers

  Moved ARM/Atmel header folder from drivers to lib and made necessary makefile changes.

* Pull request changes

  Pull request changes

* Keymap and compile flag fix

  Keymap fix for momentary layer.
  Potential compile flag fix for Travis CI failure.

* va_list include fix

  Fix for va_list compile failure

* Include file case fixes

  Fixes for include files with incorrect case

* ctrl and alt67 keyboard readme

  Added ctrl and alt67 keyboard readme files