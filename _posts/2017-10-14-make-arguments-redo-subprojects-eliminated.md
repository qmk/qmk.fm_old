---
layout: qmk-title
title: "Make arguments redo, subprojects eliminated"
date: 2017-10-14 17:30:00 -0500
category: core
commit: 800ec55
pr: 1710
---

## Make arguments

Rather than using `-` to separate rules in QMK, we're now using `:`, so a basic build command will look like this:

    make planck:default
    make planck:default:dfu

In addition, subprojects no longer exist, and revisions/folder organisations are now referenced with their path, like this:

    make planck/rev4:default

There can be up to **5 folders of depth** this way (not including `keyboards/`), allowing for quite a lot of organisation within projects.

Upon compliation, folders/keymaps are combined with `_`, keeping the `planck_rev4_default.hex` filename format.

## rules.mk

If a `rules.mk` file exists in a keyboard folder, it's assumed to be a project folder that can be compiled, otherwise it's just an organisational folder (e.g. `converter`, `handwired`). Default revisions can be set via the `rules.mk`:

    DEFAULT_FOLDER = project/revision

The full path minus `keyboards/` is needed here. For example, this is found in `keyboards/planck/rules.mk`:

    DEFAULT_FOLDER = planck/rev4

This allows `make planck:default` to default to the `planck/rev4` revision, but can be overrided with `make planck/rev3:default`.

Each level's `rules.mk` file is included, from most broad to most specific, e.g.:

1. `planck/rules.mk`
2. `planck/rev4/rules.mk`

## config.h

Each level's `config.h` is included if it exists, from most broad to most specific, e.g.:

1. `planck/config.h`
2. `planck/rev4/config.h`
3. `planck/keymaps/<keymap>/config.h`

Each `config.h` file should now use this line at the top, rather than including files in other directories:

    #include "config_common.h"

Be sure to use a different `#ifdef CONFIG_H` line for each file, or things won't be included correctly. Some examples:

    #ifdef PLANCK_CONFIG_H
    #define PLANCK_CONFIG_H

    #endif

    #ifdef PLANCK_REV4_CONFIG_H
    #define PLANCK_REV4_CONFIG_H

    #endif

## Paths

All folder levels are added to the path.

## folder.c

All `<folder>.c` files are now included automatically if they exist. e.g.:

    keyboards/planck/planck.c
    keyboards/planck/rev4/rev4.c

are both added.

## folder.h

Each folder level's `<folder>.h` file should be including the parent's `<folder>.h`, and in some instances, it should include their children's as well - the easiest way to do this with a conditional is like this in the `folder1.h` file:

    #ifdef KEYBOARD_folder1_folder2
      #include "folder2.h"
    #endif

For example, `/keyboards/planck/planck.h` has this:

    #ifdef KEYBOARD_planck_rev4
      #include "rev4.h"
    #endif

## Keymaps

Keymaps can exist at any level, but are only available if that folder is in the project path, for example, `/keyboards/planck/keymaps` and `/keyboards/planck/rev4/keymaps` are accessible to both `planck/rev4` and `planck` (because `planck/rev4` is the default folder), but only `/keyboards/planck/keymaps` is accessible to `planck/rev3`.

Generally, keymaps should exist in the broadest folder available.

## Layouts

Layouts are included automatically and can be added to any `rules.mk` file, e.g.:

    LAYOUTS = ortho_4x12

## Chibios

`bootloader_defs.h` and the `boards` directory (and necessary files) can exist at any folder level, and are included automatically. Your board's `board.mk` will need to use `$(BOARD_PATH)` in the path, e.g.:

    BOARDSRC = $(BOARD_PATH)/boards/GENERIC_STM32_F303XC/board.c
    BOARDINC = $(BOARD_PATH)/boards/GENERIC_STM32_F303XC
