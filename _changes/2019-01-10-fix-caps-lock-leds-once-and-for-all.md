---
layout: qmk-title
title: "Fix Caps Lock LEDs once and for all"
date: 2019-01-11 00:00:00 -0500
category: core
commit: 2c41093
pr: 4824
---

The status LEDs don't light up/light up incorrectly on Linux in certain circumstances. This is because, if NKRO is enabled it will send two LED states, one for the 6KRO interface, and one for the NKRO interface. QMK interprets the NKRO report ID as the LED state and turn on the num lock and scroll lock LEDs.

If we have two bytes, that probably means the first is a report ID. The 6KRO interface may or may not have one, but the NKRO interface always does, so we need to check this regardless of whether `KEYBOARD_SHARED_EP` is defined.
