---
layout: qmk-title
title: "Updates bootloader settings, adds file size check"
date: 2017-11-27 17:30:00 -0500
category: core
commit: 9fdc27
pr: 
---

We've improved the Bootloader handling.  Not only does it handling jumping to bootloader better, but makes configuration of the settings handled by the compiler, rather than having to set everything.

* pull fuse settings for bootloader jump

* fix 32a chips

* make automatic bootloader selection optional

* quantify bootloaders

* fixs #164, speeds up dfu reset

* fix for chips w/o usb

* missing an n

* fix bootloader sizes, use words for addresses

* fix bmini, pearl, and [[ issue, make things quiet

* ignore avr errors on arm for now

* update settings for the light

* document bootloader stuff

* add bootloader title
