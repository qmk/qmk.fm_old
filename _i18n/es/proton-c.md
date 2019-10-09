---
title: "Sobre el Proton C"
layout: qmk
lang: "es"
---

<img src="https://i.imgur.com/GdsN1Rd.jpg" alt="Proton C" />

El Proton C es un reemplazo drop-in para el Pro Micro basado en el ARM STM32F303xC. Usa el mismo chip que las placas Planck rev6, y los ARM Clueboards de Skullydazed.

* Puerto USB-C montado through-hole
* 32-bit 72Mhz Cortex-M4 processor (STM32F303CCT6)
* I2C, SPI, PWM, DMA, DAC, USART, I2S
* 23x Puertos 3.3V I/O
* 1x 5V output para cadenas de LEDs WS2812
* 256Kb Flash
* 40Kb RAM
* AST1109MLTRQ huella de parlante
* Botón reset

Rev 2 tiene los cambios siguientes:

* Bases de parlante en ambos lados del PCB
* Ahora puedes conectar un lado del parlante al GND para tener otro pin I/O
* Ambos lados tienen un soldermask transparente
* El baño de oro se hizo antes del soldermask, así que las pistas están dorados

Puedes comprar el Proton C en:

* [Clueboard](https://clueboard.co/parts/qmk-proton-c) (US-West)
* [Keebio](https://keeb.io/products/qmk-proton-c) (US-East)
* [NovelKeys](https://novelkeys.xyz/products/qmk-proton-c) (US-East)
* [SpaceCat](https://spacecat.design/products/proton-c-by-qmk) (US-East)
* 1upkeyboads (US-East) - aún no hay enlace :(
* [Oh, Keycaps!](https://ohkeycaps.com/products/proton-c) (US-Midwest)
* [Mykeyboard](https://mykeyboard.eu/catalogue/qmk-proton-c-rev-2_1246/) (EU)
* [Daily Clack](https://dailyclack.com/products/qmk-proton-c) (AUS)

Estamos preparando soporte para teclados split, RGB Underglow, y retroiluminación, y debe ser disponible pronto.

## Comparación

Si quieres saber porque debes elegir el Proton C para tu próximo producto, he aquí una comparación de los chips:

&nbsp;           | ATMega32u4          | AT90USB1286          | STM32F303xC
---------------- | ------------------- | -------------------- | ----------------
Velocidad        | 16MHz               | 16MHz                | 72MHz
Voltaje          | 5v                  | 5v                   | 3.3v con algunos pins capaces de 5v
Tamaño de Flash  | 32KB (28 usable)    | 128KB (120KB usable) | 256KB (248KB usable)
Tamaño de EEPROM | 1024 bytes          | 4098 Bytes           | 4096 bytes (emulado en flash)
Memoria          | 2.5KB               | 8KB                  | 48KB
Temporizadores   | 4 en total          | 4 en total           | 10 en total
IO Digital       | 25 pins             | 46 pins              | 37 pins

El STM32F303 tiene 9 veces el espacio de almacenamiento que el ATMega32U4. Podrías activar un montón de funciones y todavía te quedaría mucho espacio. Por ejemplo, el Planck EZ, con audio y un matriz rgb activado (sin desactivar otras funciones), y con la Optimización Time Link desactivada utiliza 45KB de firmware, dejando libre 200+KB. Mucho espacio para hacer casi cualquier cosa.


## Advertencias

Algunos de los PCBs compatibles con el Pro Micro tienen pins de VCC (3.3V) y RAW (5VDC) conectados (con cortos) en el pcb. Usando el Proton C causará un cortocircuito de la alimentación 5V del USB y el 3.3V regulado que está conectado directamente al MCU. Un corto en estos pins puede dañar el MCU en el Proton C.

Hasta ahora, parece que este problema sola afecta los PCBs Gherkin, pero otros PCBs pueden ser afectados.

En este caso, podrías dejar el RAW (5VDC) desconectado por completo.
