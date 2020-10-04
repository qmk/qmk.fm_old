---
title: "QMK Toolbox"
lang: "pl"
layout: qmk-editable
permalink: /pl/toolbox/
---
# QMK Toolbox

[Zobacz na GitHub](https://github.com/qmk/qmk_toolbox)

To jest zbi�r narz�dzi do flashowania spakowanych w jednej aplikacji. Obs�uguje automatyczne wykrywanie i automatyczne flashowanie oprogramowania do klawiatur.

![](https://i.imgur.com/7bFh7vJ.png)

## Programowanie

QMK Toolbox obs�uguje nast�puj�ce programy �aduj�ce:

 - Atmel/LUFA/QMK DFU via [dfu-programmer](http://dfu-programmer.github.io/)
 - Caterina (Arduino, Pro Micro) via [avrdude](http://nongnu.org/avrdude/)
 - Halfkay (Teensy, Ergodox EZ) via [Teensy Loader](https://pjrc.com/teensy/loader_cli.html)
 - ARM DFU (STM32, Kiibohd) via [dfu-util](http://dfu-util.sourceforge.net/)
 - Atmel SAM-BA (Massdrop) via [Massdrop Loader](https://github.com/massdrop/mdloader)
 - BootloadHID (Atmel, PS2AVRGB) via [bootloadHID](https://www.obdev.at/products/vusb/bootloadhid.html)

Oraz nast�puj�ce programatory ISP:

 - USBTiny (kieszonkowy AVR)
 - AVRISP (Arduino ISP)
 - USBasp (AVR ISP)

Je�li jest zainteresowanie innymi, mo�na je doda�, je�li znane s� ich polecenia.

## Konsola HID

Zestaw narz�dzi nas�uchuje r�wnie� komunikat�w HID na stronie u�ycia `0xFF31` i u�ycia` 0x0074`, zgodnych z [`hid_listen`] PJRC (https://www.pjrc.com/teensy/hid_listen.html).

Je�li masz ustawione `CONSOLE_ENABLE = yes` w` rules.mk` swojej klawiatury, mo�esz wypisywa� komunikaty za pomoc� `xprintf ()`, przydatne do debugowania:

![](https://i.imgur.com/03xuJhU.png)

Wi�cej informacji mo�na znale�� w [Dokumentach QMK](https://docs.qmk.fm/#/newbs_testing_debugging?id=debugging).

## Instalacja

### Zale�no�ci

Podczas korzystania z narz�dzia QMK Toolbox w systemie Windows przy pierwszym uruchomieniu zostanie wy�wietlony monit o zainstalowanie niezb�dnych sterownik�w. Mo�esz pobra� najnowsz� wersj� instalatora sterownika QMK [tutaj](https://github.com/qmk/qmk_driver_installer/releases).

### Pobieranie

Dost�pna jest wersja dla systemu Windows i macOS, kt�r� mo�na pobra� [najnowsz� wersj� tutaj](https://github.com/qmk/qmk_toolbox/releases).

Dla u�ytkownik�w Homebrew jest r�wnie� dost�pny z Cask:

```
$ brew tap homebrew/cask-drivers
$ brew cask install qmk-toolbox
```

