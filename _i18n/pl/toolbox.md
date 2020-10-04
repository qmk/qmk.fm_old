---
title: "QMK Toolbox"
lang: "pl"
layout: qmk-editable
permalink: /pl/toolbox/
---
# QMK Toolbox

[Zobacz na GitHub](https://github.com/qmk/qmk_toolbox)

To jest zbiór narzêdzi do flashowania spakowanych w jednej aplikacji. Obs³uguje automatyczne wykrywanie i automatyczne flashowanie oprogramowania do klawiatur.

![](https://i.imgur.com/7bFh7vJ.png)

## Programowanie

QMK Toolbox obs³uguje nastêpuj¹ce programy ³aduj¹ce:

 - Atmel/LUFA/QMK DFU via [dfu-programmer](http://dfu-programmer.github.io/)
 - Caterina (Arduino, Pro Micro) via [avrdude](http://nongnu.org/avrdude/)
 - Halfkay (Teensy, Ergodox EZ) via [Teensy Loader](https://pjrc.com/teensy/loader_cli.html)
 - ARM DFU (STM32, Kiibohd) via [dfu-util](http://dfu-util.sourceforge.net/)
 - Atmel SAM-BA (Massdrop) via [Massdrop Loader](https://github.com/massdrop/mdloader)
 - BootloadHID (Atmel, PS2AVRGB) via [bootloadHID](https://www.obdev.at/products/vusb/bootloadhid.html)

Oraz nastêpuj¹ce programatory ISP:

 - USBTiny (kieszonkowy AVR)
 - AVRISP (Arduino ISP)
 - USBasp (AVR ISP)

Jeœli jest zainteresowanie innymi, mo¿na je dodaæ, jeœli znane s¹ ich polecenia.

## Konsola HID

Zestaw narzêdzi nas³uchuje równie¿ komunikatów HID na stronie u¿ycia `0xFF31` i u¿ycia` 0x0074`, zgodnych z [`hid_listen`] PJRC (https://www.pjrc.com/teensy/hid_listen.html).

Jeœli masz ustawione `CONSOLE_ENABLE = yes` w` rules.mk` swojej klawiatury, mo¿esz wypisywaæ komunikaty za pomoc¹ `xprintf ()`, przydatne do debugowania:

![](https://i.imgur.com/03xuJhU.png)

Wiêcej informacji mo¿na znaleŸæ w [Dokumentach QMK](https://docs.qmk.fm/#/newbs_testing_debugging?id=debugging).

## Instalacja

### Zale¿noœci

Podczas korzystania z narzêdzia QMK Toolbox w systemie Windows przy pierwszym uruchomieniu zostanie wyœwietlony monit o zainstalowanie niezbêdnych sterowników. Mo¿esz pobraæ najnowsz¹ wersjê instalatora sterownika QMK [tutaj](https://github.com/qmk/qmk_driver_installer/releases).

### Pobieranie

Dostêpna jest wersja dla systemu Windows i macOS, któr¹ mo¿na pobraæ [najnowsz¹ wersjê tutaj](https://github.com/qmk/qmk_toolbox/releases).

Dla u¿ytkowników Homebrew jest równie¿ dostêpny z Cask:

```
$ brew tap homebrew/cask-drivers
$ brew cask install qmk-toolbox
```

