---
layout: qmk-title
title: "Use a single endpoint for HID reports"
date: 2018-11-16 00:00:00 -0500
category: core
commit: 39bd760
pr: 3951
---

Unify multiple HID interfaces into a single Endpoint.

This reduces the number of USB endpoints required, which frees them up
for other things.

NKRO and EXTRAKEY always use the shared endpoint.

By default, MOUSEKEY also uses it. This means it won't work as a Boot
Procotol mouse in some BIOSes, etc. If you really think your
keyboard needs to work as a mouse in your BIOS, set
MOUSE_SHARED_EP = no in your rules.mk.

By default, the core keyboard does not use the shared endpoint, as not
all BIOSes are standards compliant and that's one place you don't want
to find out your keyboard doesn't work.. If you are really confident,
you can set KEYBOARD_SHARED_EP = yes to use the shared endpoint here
too.
