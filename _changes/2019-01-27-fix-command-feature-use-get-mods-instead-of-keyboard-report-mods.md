---
layout: qmk-title
title: "Fix Command feature: use get_mods() instead of keyboard_report->mods"
date: 2019-01-26 00:00:00 -0500
category: core
commit: 4d9b11a
pr: 4955
---

This replaces `keyboard_report->mods` with `get_mods()` instead, for the `IS_COMMAND` call, since it was broken due to issues with the Endpoint Consolidation commit.

As discussed in #4838, the Command feature doesn't work when NKRO is turned on since the keyboard report structure is different. get_mods() is the proper way to retrieve mod state. See issue for further details.

We've only replaced occurrences of keyboard_report->mods in IS_COMMAND definitions and Massdrop keyboard code (as per @patrickmt's comment on the issue). It's likely that other occurrences in keyboard code and user keymaps can be replaced as well, but We didn't want to do that in this PR as it could require more extensive testing.

Additionally, We removed an unnecessary IS_COMMAND redefinition in keyboards/clueboard/66/rev4/config.h which we missed in #4301.

Thanks @fauxpark for helping me figure out what was causing the problems with Command!
