---
layout: qmk-title
title: "Only try to read the report ID from SetReport when the keyboard is part of the shared EP"
date: 2018-12-05 08:45:00 -0800
category: core
commit: d6b7ca0
pr: 4551
---

If the keyboard has media keys or NKRO on, SHARED_EP_ENABLE is automatically enabled to merge them into a single endpoint (see #3951). The different interfaces are then identified by a unique report ID. However, the keyboard interface is by default not part of that shared endpoint unless KEYBOARD_SHARED_EP = yes in your rules.mk, and so it does not need a report ID.

The end result is that when LUFA tries to ask the host which LEDs to turn on, it expects there to be a report ID byte first, then the LED state. It will then set the report ID to the actual LED state, and no LEDs come on.
