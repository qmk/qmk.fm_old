---
title: "Über den Proton C"
layout: qmk
permalink: /proton-c/
---

<img src="https://i.imgur.com/GdsN1Rd.jpg" alt="Proton C" />

Der Proton C ist ein auf ARM STM32F303xC basierter Ersatz für den Pro Micro. Er benutzt den gleichen Chip wie die Planck rev6 Tastaturen und Skullydazeds ARM Clueboards.

* Durchgangsbohrung (Through-hole) montierter USB-C Port
* 32-bit 72Mhz Cortex-M4 Prozessor (STM32F303CCT6)
* I2C, SPI, PWM, DMA, DAC, USART, I2S
* 23x 3.3V I/O Ports
* 1x 5V Ausgang für WS2812 LED-Ketten
* 256Kb Flash
* 40Kb RAM
* AST1109MLTRQ Lautsprecher Footprint  
* Reset-Knopf

Rev 2 hat die folgenden Änderungen:

* Pads für Lautsprecher auf beiden Seiten des PCBs
* Du kannst jetzt eine Seite des Lautsprechersmit GND verbinden um einen zusätzlichen I/O Pin zu gewinnen
* Die Traces wurden vor der Soldermask in Gold eingefärbt
* Beide Seiten benutzen eine durchsichtige Soldermask

Du kannst den Proton C bei folgenden Shops kaufen:

* [Mykeyboard](https://mykeyboard.eu/catalogue/qmk-proton-c-rev-2_1246/) (EU)  
* [Clueboard](https://clueboard.co/parts/qmk-proton-c) (US-West)  
* [Keebio](https://keeb.io/products/qmk-proton-c) (US-East)  
* [NovelKeys](https://novelkeys.xyz/products/qmk-proton-c) (US-East)  
* [SpaceCat](https://spacecat.design/products/proton-c-by-qmk) (US-East)  
* 1upkeyboads (US-East) - bisher kein link :(  
* [Oh, Keycaps!](https://ohkeycaps.com/products/proton-c) (US-Midwest)  
* [Daily Clack](https://dailyclack.com/products/qmk-proton-c) (AUS)  

Unterstützung für Split Tastaturen, RGB Unterbeleuchtung und Hintergrundbeleuchtung ist noch in der Entwicklung und sollte bald verfügbar sein.

## Vergleich

Wenn Du wissen möchtest, warum dein nächstes Projekt einen Proton C verwenden sollte, ist hier eine Vergleichstabelle:

&nbsp;         | ATMega32u4          | AT90USB1286          | STM32F303xC
-------------- | ------------------- | -------------------- | ----------------
Speed          | 16MHz               | 16MHz                | 72MHz
Voltage        | 5v                  | 5v                   | 3.3v with some 5v capable pins
Flash size     | 32KB (28 usable)    | 128KB (120KB usable) | 256KB (248KB usable)
EEPROM size    | 1024 bytes          | 4098 Bytes           | 4096 bytes (emulated in flash)
Memory         | 2.5KB               | 8KB                  | 48KB
Timers         | 4 total             | 4 total              | 10 total
Digital IO     | 25 pins             | 46 pins              | 37 pins

The STM32F303 has 9 times the usable storage space that the ATMega32U4 has.   You could enable a bunch of features and still have plenty of room  left.  For instance, the Planck EZ, which has audio and rgb matrix fully enabled (no sub-features disabled), and has the Link Time Optimization option turned off uses 45KB of firmware, leaving 200+KB free, still.   Plenty of room for most anything you want to do. 

Der STM32F303 hat neunmal soviel Speicher wie der ATmega32U4. Das erlaubt eine Vielzahl an Features zu aktivieren und immernoch genug Speicher übrig zu haben. Das Planck EZ zum Beispiel, hat Audio und RGB vollständig aktiviert (keine sub-features disabled) und verwendet ohne Link Time Optimization 45KB für die Firmware und hat demnach immernoch mehr als 200KB für den User zur Verwendung frei. Mehr als genug für die meisten Anwendungsfälle.


## Warnung

Einige der Pro Micro kompatiblen PCBs haben VCC (3.3V) und RAW (5VDC) Pins mit dem PCB verbunden. Der Proton C benutzt 5V des USB-Ports und reguliert diese auf 3.3V herunter, diese werden dann direkt mit der MCU verbunden. Die Überbrückung dieser Pins kann die MCU des Proton Cs beschädigen.

Bisher ist dieses Problem nur mit Gherkin PCBs bekannt, aber andere PCBs könnten auf ähnliche Art und Weise davon betroffen sein.

In diesem Fall darfst Du den RAW (5VDC) nicht verwenden.
