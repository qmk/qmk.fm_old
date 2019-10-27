---
title: "QMK Toolbox"
layout: qmk-editable
permalink: /de/toolbox/
---
# QMK Toolbox

[Auf GitHub ansehen](https://github.com/qmk/qmk_toolbox)

Dies ist eine Sammlung aus Flashing Werkzeugen, die in eine Applikation gepackt wurden. Es wird automatische Erkennung und automatisches Flashing von Firmware auf Tastaturen unterstützt.

![](https://i.imgur.com/7bFh7vJ.png)

## Flashing

QMK Toolbox unterstützt die folgenden Bootloader:

 - Atmel/LUFA/QMK DFU via [dfu-programmer](http://dfu-programmer.github.io/)
 - Caterina (Arduino, Pro Micro) via [avrdude](http://nongnu.org/avrdude/)
 - Halfkay (Teensy, Ergodox EZ) via [Teensy Loader](https://pjrc.com/teensy/loader_cli.html)
 - ARM DFU (STM32, Kiibohd) via [dfu-util](http://dfu-util.sourceforge.net/)
 - Atmel SAM-BA (Massdrop) via [Massdrop Loader](https://github.com/massdrop/mdloader)
 - BootloadHID (Atmel, PS2AVRGB) via [bootloadHID](https://www.obdev.at/products/vusb/bootloadhid.html)

Und die folgenden ISP Flasher:

 - USBTiny (AVR Pocket)
 - AVRISP (Arduino ISP)
 - USBasp (AVR ISP)

Sollte Interesse für andere bestehen, können sie hinzugefügt werden, wenn ihre Befehle bekannt sind. 

## HID Konsole

Die Toolbox horcht auch auf HID Nachrichten auf usage page `0xFF31` und usage `0X0074`. Dies ist kompatibel mit PJRC's [`hid_listen`](https://www.pjrc.com/teensy/hid_listen.html).

Sollten Sie `CONSOLE_ENABLE = yes` in der `rules.mk`-Datei ihrer Tastatur sein, können Sie Nachrichten mit `xprintf()` ausgeben. Dies ist zum Debuggen hilfreich:

![](https://i.imgur.com/03xuJhU.png)

Sehen Sie in der [QMK Dokumentation](https://docs.qmk.fm/#/newbs_testing_debugging?id=debugging) für weitere Informationen.

## Installation

### Abhängigkeiten

Wenn Sie die QMK Toolbox auf Windows verwenden, werden Sie beim ersten Aufruf dazu aufgefordert die nötigen Treiber zu installieren. [Hier](https://github.com/qmk/qmk_driver_installer/releases) können Sie die letzte Version des QMK Treibers herunterladen.

### Download

Es sind Versionen für Windows und macOS verfügbar und [hier](https://github.com/qmk/qmk_toolbox/releases) können Sie die letzte Version herunterladen.

Es ist auch als Cask für Homebrew-Nutzer verfügbar:

```
$ brew tap homebrew/cask-drivers
$ brew cask install qmk-toolbox
```

