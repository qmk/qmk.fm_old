---
layout: qmk-title
title: "Update to arm_atsam wait and timer routines"
date: 2019-01-07 00:00:00 -0500
category: core
commit: 6e984a8
pr: 4680
---

This update is to get the arm_atsam branch timer and wait functions aligned with common QMK functions. It also includes a much simpler, rewritten method to microsecond delays to tighten timings. This update affects Massdrop's CTRL and ALT keyboards, and they have both been thoroughly tested.

Microsecond (us) delays are now handled by a busy wait loop according to MCU frequency. This replaces the system counter method which had an overhead of around 12us. The new method has an overhead less than 0.5us.
`TC5` device and supporting routines removed as it was the old us delay counter.
`wait_ms()` is now properly a macro to `CLK_delay_ms()`.
`wait_us()` is now properly a macro to `CLK_delay_us()`.
Removed `CLK_get_us()` as it has no use.
All calls to `CLK_get_ms()` have been replaced by `timer_read64()` with corrected typing.
All calls to `CLK_delay_ms()` have been replaced by `wait_ms()`.
All calls to `CLK_delay_us()` have been replaced by `wait_us()` and timings verified and updated as needed after review on scope.
Corrected typing of variables using 64bit ms timer readings if needed.
