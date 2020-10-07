---
title: "QMK Toolbox"
lang: "pl"
layout: qmk-editable
permalink: /pl/toolbox/
---
# QMK Toolbox

[Zobacz na GitHub](https://github.com/qmk/qmk_toolbox)

To jest zbiór narzędzi do flashowania spakowanych w jednej aplikacji. Obsługuje automatyczne wykrywanie i automatyczne flashowanie oprogramowania do klawiatur.

![](https://i.imgur.com/7bFh7vJ.png)

## Programowanie

QMK Toolbox obsługuje następujące programy ładujące:

 - Atmel/LUFA/QMK DFU via [dfu-programmer](http://dfu-programmer.github.io/)
 - Caterina (Arduino, Pro Micro) via [avrdude](http://nongnu.org/avrdude/)
 - Halfkay (Teensy, Ergodox EZ) via [Teensy Loader](https://pjrc.com/teensy/loader_cli.html)
 - ARM DFU (STM32, Kiibohd) via [dfu-util](http://dfu-util.sourceforge.net/)
 - Atmel SAM-BA (Massdrop) via [Massdrop Loader](https://github.com/massdrop/mdloader)
 - BootloadHID (Atmel, PS2AVRGB) via [bootloadHID](https://www.obdev.at/products/vusb/bootloadhid.html)

Oraz następujące programatory ISP:

 - USBTiny (kieszonkowy AVR)
 - AVRISP (Arduino ISP)
 - USBasp (AVR ISP)

Jeśli jest zainteresowanie innymi, można je dodać, jeśli znane są ich polecenia.

## Konsola HID

Zestaw narzędzi nasłuchuje również komunikatów HID na stronie użycia `0xFF31` i użycia` 0x0074`, zgodnych z [`hid_listen`] PJRC (https://www.pjrc.com/teensy/hid_listen.html).

Jeśli masz ustawione `CONSOLE_ENABLE = yes` w` rules.mk` swojej klawiatury, możesz wypisywać komunikaty za pomocą `xprintf ()`, przydatne do debugowania:

![](https://i.imgur.com/03xuJhU.png)

Więcej informacji można znaleźć w [Dokumentach QMK](https://docs.qmk.fm/#/newbs_testing_debugging?id=debugging).

## Instalacja

### Zależności

Podczas korzystania z narzędzia QMK Toolbox w systemie Windows przy pierwszym uruchomieniu zostanie wyświetlony monit o zainstalowanie niezbędnych sterowników. Możesz pobrać najnowszą wersję instalatora sterownika QMK [tutaj](https://github.com/qmk/qmk_driver_installer/releases).

### Pobieranie

Dostępna jest wersja dla systemu Windows i macOS, którą można pobrać [najnowszą wersję tutaj](https://github.com/qmk/qmk_toolbox/releases).

Dla użytkowników Homebrew jest również dostępny z Cask:

```
$ brew tap homebrew/cask-drivers
$ brew cask install qmk-toolbox
```

