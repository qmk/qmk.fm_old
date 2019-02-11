---
layout: qmk-title
title: "QMK DFU bootloader generation"
date: 2017-11-17 00:00:00 -0500
category: core
commit: ec3e06
pr: 2009
---

THe QMK DFU bootloader is a fork of the LUFA DFU bootloader that allows for some additional functionality, such as LED and Audio indication. 

* adds :bootloader target

* update planck and preonic revisions

* remove references to .h files for planck

* update preonic keymap

* only add keyboard.h files that exist

* add production target

* hook things up with the new lufa variables

* update rules for planck/preonic

* back backlight key turn of status led when pressed

* add manufacturer/product strings to bootloader
