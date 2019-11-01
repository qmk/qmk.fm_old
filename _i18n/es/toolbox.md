---
title: "QMK Toolbox"
layout: qmk-editable
permalink: /es/toolbox/
lang: "es"
---
## QMK Toolbox - [Ver en Github](https://github.com/qmk/qmk_toolbox)

Esta es una colección de herramientas útiles empacada en una app. Es un progreso reciente, pero queremos reemplazar al QMK Flasher.

## Flashear

Soporte para los bootloaders siguientes:
 - DFU (Atmel, LUFA) vía dfu-programmer (http://dfu-programmer.github.io/)
 - Caterina (Arduino, Pro Micro) vía avrdude (http://nongnu.org/avrdude/)
 - Halfkay (Teensy, Ergodox EZ) vía teensy_loader_cli (https://pjrc.com/teensy/loader_cli.html)
 - STM32 (ARM) vía dfu-util (http://dfu-util.sourceforge.net/)

Si hay interés en otros, se pueden agregar si sabemos sus comandos.

## Escuchar HID

También escucha ascii HID de página de uso 0xFF31 (compatible con el hid_listen proporcionado por PJRC) - se conecta automáticamente a todas las fuentes disponibles.

## Cómo descargar

Versiones para Windows y de OSX están disponibles, y puedes conseguir [el último release aquí](https://github.com/qmk/qmk_toolbox/releases).
