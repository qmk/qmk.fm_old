---
layout: qmk-title
title: "STM32 EEPROM Emulation"
date: 2018-08-29 00:00:00 -0500
category: core
commit: 621ce29
pr: 3741
---

* STM32 EEPROM Emulation

  - Added EEPROM emulation libaries from libmaple and Arduino_STM32. https://github.com/rogerclarkmelbourne/Arduino_STM32 and https://github.com/leaflabs/libmaple.
  - Renamed teensy EEPROM library and added conditional selection of library.
  - Remapped EEPROM memory map for 16 byte blocks (as is with STM32f3xx MCUs).
  - Added EEPROM initialization in main.c of Chibios.
  - Added EEPROM format to clear the emulated pages when EEPROM is marked as invalid.

* Fixed ifdef
