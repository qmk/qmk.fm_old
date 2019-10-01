---
title: "Planck"
layout: qmk
permalink: /keyboards/planck/
redirect_from: 
  - /planck/keymap
  - /planck/keymap/
  - /planck/
---

# The Planck Keyboard

{% include badge.html path="planck" %}

The Planck is a 12x4 ortholinear, 47/48-key keyboard kit, made by [olkb](https://olkb.com).

## *Blanck* Keymap Printouts

Here's a couple of printable, foldable (for standing-up), blank 8.5 x 11" sheets for Planck keymaps. Each has a notes section, layer labels, and some helpful tips for customizing.

* [Default keymap with Qwerty](/keyboards/planck/keymap-printout-default-qwerty.pdf)
* [Default keymap with Colemak](/keyboards/planck/keymap-printout-default-colemak.pdf)
* [Default keymap with Dvorak](/keyboards/planck/keymap-printout-default-dvorak.pdf)
* [2 blank keymaps with Qwerty](/keyboards/planck/keymap-printout-blanck-qwerty.pdf)
* [2 blank keymaps with Colemak](/keyboards/planck/keymap-printout-blanck-colemak.pdf)
* [2 blank keymaps with Dvorak](/keyboards/planck/keymap-printout-blanck-dvorak.pdf)
* [2 entirely blank keymaps](/keyboards/planck/keymap-printout-blanck.pdf)
* [3 entirely blank keymaps](/keyboards/planck/keymap-printout-blanck-triple.pdf)

## Planck Default Keymap Footnotes

* **OS**: the Windows/Command key
* **Fn**: an alternate shift key that cycles through the backlight settings.
* **NUHS**: Non-Us HaSh (# and ~) (S+ is shifted variant)
* **NUBS**: Non-Us BackSlash (\\ and \|) (S+ is shifted variant)

* **RESET**: puts your Planck into DFU mode for flashing new firmware - pressing this button (as opposed to the button on the back) will make a "shutdown" noise.
* **Win Mods**: swaps the place of Alt and OS, to resemble common Windows keyboard mod order
* **Mac Mods**: returns Alt and OS to the original place, to resemble common Mac keyboard mod order
* **QWRTY**: puts the keyboard's alpha keys in Qwerty (default) and plays a unique noise
* **CLMK**: puts the keyboard's alpha keys in Colemak and plays a unique noise
* **DVRK**: puts the keyboard's alpha keys in Dvorak and plays a unique noise
* **PLVR**: puts the keyboard in Plover mode and plays a unique noise - press Fn to exit
* **Audio On/Off**: turns on/off all audio on the board
* **Music Voice +/-**: cycles through the voices that are used in all audio feedback and music mode
* **Music On**: enters into a special music mode where all keys in the top 3 rows are music keys - plays an intro noise
* **Midi On**: enters into a special Midi mode that transmits Midi signals to the computer (turned off by default in the firmware - you'll need to compile a different version to get this to work)