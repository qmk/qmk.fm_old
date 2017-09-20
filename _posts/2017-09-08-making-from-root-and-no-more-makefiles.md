---
layout: qmk-title
title: "Making from root and no more Makefiles"
date: 2017-09-08 13:47:00 -0500
category: core
---

After merging in the implementation of [#1659](https://github.com/qmk/qmk_firmware/issues/1659), the only way to compile QMK is in the root directory, with the full command:

    make <keyboard>[-<subproject>]-<keymap>-<target>

where the subproject is optional. Errors associated with trying to build anywhere else may be:

    QMK Firmware v0.5.125
    error: pathspec 'keyboards/<keyboard>/lib/chibios' did not match any file(s) known to git.
    Did you forget to 'git add'?
    make: *** [<keyboard>-allsp-allkm] Error 1

or

    make: *** No rule to make target `default'.  Stop.

In addition to this change, the only `Makefile` that should exist is the one in the QMK root - all others have been/should be converted to `rules.mk`, which is now included in its stead, at every level:

* `/keyboards/<keyboard>/rules.mk`
* `/keyboards/<keyboard>/<subproject>/rules.mk`
* `/keyboards/<keyboard>/keymaps/<keymap>/rules.mk`

If you see any `Makefile` in any of these locations, you can feel free to delete it.