---
title: "QMK Toolbox"
layout: qmk-editable
permalink: /de/toolbox/
---
# QMK Toolbox

[Auf GitHub ansehen](https://github.com/qmk/qmk_toolbox)

Die QMK Toolbox vereint eine Sammlung von Flashing Werkzeugen in einer Applikation. Sie kann Tastaturen automatisch erkennen und ermöglicht das Flashes von Firmware auf Tastaturen.

![](https://i.imgur.com/7bFh7vJ.png)

## Flashing

QMK Toolbox unterstützt folgende Bootloader:

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

Die Toolbox hört auf HID Nachrichten der usage pages `0xFF31` und `0X0074`. Dies ist kompatibel zu PJRC's [`hid_listen`](https://www.pjrc.com/teensy/hid_listen.html).

Sollte  `CONSOLE_ENABLE = yes` in der `rules.mk`-Datei ihrer Tastatur aktiv sein, können Sie Nachrichten mit `xprintf()` ausgeben. Dies ist zum Debuggen hilfreich:

![](https://i.imgur.com/03xuJhU.png)

Wenden Sie sich an die [QMK Dokumentation](https://docs.qmk.fm/#/newbs_testing_debugging?id=debugging) für weitere Informationen.

## Installation

### Abhängigkeiten

Wenn Sie die QMK Toolbox auf Windows verwenden, werden Sie beim ersten Aufruf gefragt, ob Sie die nötigen Treiber installieren möchten. [Hier](https://github.com/qmk/qmk_driver_installer/releases) können Sie die letzte Version des QMK Treibers herunterladen.

### Download

Es sind Versionen für Windows und macOS verfügbar und [hier](https://github.com/qmk/qmk_toolbox/releases) können Sie die letzte Version herunterladen.

Es ist auch als Cask für Homebrew-Nutzer verfügbar:

```
$ brew tap homebrew/cask-drivers
$ brew cask install qmk-toolbox
```

