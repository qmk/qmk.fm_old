---
title: "Über den Proton C"
layout: qmk
permalink: /de/proton-c/
lang: "de"
---

<img src="https://i.imgur.com/GdsN1Rd.jpg" alt="Proton C" />

Der Proton C ist ein auf ARM STM32F303xC basierter Ersatz für den Pro Micro. Er benutzt den gleichen Chip wie die Planck rev6 Tastaturen und Skullydazed's ARM Clueboards.

* Durchgangsbohrung (Through-hole) montierter USB-C Port
* 32-bit 72Mhz Cortex-M4 Prozessor (STM32F303CCT6)
* I2C, SPI, PWM, DMA, DAC, USART, I2S
* 23x 3.3V I/O Ports
* 1x 5V Ausgang für WS2812 LED-Ketten
* 256Kb Flash
* 40Kb RAM
* AST1109MLTRQ Lautsprecher Footprint  
* Reset-Knopf

Rev 2 hat folgenden Änderungen:

* Pads für Lautsprecher auf beiden Seiten des PCBs
* Sie können jetzt eine Seite des Lautsprechers mit GND verbinden um einen zusätzlichen I/O Pin zu gewinnen
* Die Traces wurden vor der Soldermask in Gold eingefärbt
* Beide Seiten benutzen eine durchsichtige Soldermask

Sie können den Proton C bei folgenden Shops kaufen:

* [Mykeyboard](https://mykeyboard.eu/catalogue/qmk-proton-c-rev-2_1246/) (EU)  
* [Clueboard](https://clueboard.co/parts/qmk-proton-c) (US-West)  
* [Keebio](https://keeb.io/products/qmk-proton-c) (US-East)  
* [NovelKeys](https://novelkeys.xyz/products/qmk-proton-c) (US-East)  
* [SpaceCat](https://spacecat.design/products/proton-c-by-qmk) (US-East)  
* 1upkeyboads (US-East) - bisher kein link :(  
* [Oh, Keycaps!](https://ohkeycaps.com/products/proton-c) (US-Midwest)  
* [Daily Clack](https://dailyclack.com/products/qmk-proton-c) (AUS)  

Unterstützung für Split-Tastaturen, RGB Unterbeleuchtung und Hintergrundbeleuchtung ist noch in der Entwicklung und sollte bald verfügbar sein.

## Vergleich

Wenn Sie wissen möchten, warum ihr nächstes Projekt einen Proton C verwenden sollte, ist hier eine Vergleichstabelle:

&nbsp;         | ATMega32u4          | AT90USB1286          | STM32F303xC
-------------- | ------------------- | -------------------- | ----------------
Geschwindigkeit | 16MHz               | 16MHz                | 72MHz
Spannung        | 5v                  | 5v                   | 3.3v mit einigen 5v fähigen Pins
Flash Kapazität     | 32KB (28 verwendbar)    | 128KB (120KB verwendbar) | 256KB (248KB verwendbar)
EEPROM Kapazität    | 1024 bytes          | 4098 Bytes           | 4096 Bytes (emuliert in Flash)
RAM         | 2.5KB               | 8KB                  | 48KB
Timer         | 4 total             | 4 total              | 10 total
Digital IO     | 25 Pins             | 46 Pins              | 37 Pins

Der STM32F303 hat neunmal soviel Speicher wie der ATmega32U4. Das erlaubt eine Vielzahl an Features zu aktivieren und immer noch genug Speicher übrig zu haben. Das Planck EZ zum Beispiel, hat Audio und RGB vollständig aktiviert (keine sub-features disabled) und verwendet ohne Link Time Optimization 45KB für die Firmware. D.h. es bleiben immer noch mehr als 200KB für den User zur Verwendung. Mehr als genug für die meisten Anwendungsfälle.

## Warnung

Einige der Pro Micro kompatiblen PCBs haben VCC (3.3V) und RAW (5VDC) Pins mit dem PCB verbunden. Der Proton C benutzt 5V des USB-Ports und reguliert diese auf 3.3V herunter, diese werden dann direkt mit der MCU verbunden. Die Überbrückung dieser Pins kann die MCU des Proton Cs beschädigen.

Bisher ist dieses Problem nur mit Gherkin PCBs bekannt, aber andere PCBs könnten auf ähnliche Art und Weise davon betroffen sein.

In diesem Fall dürfen Sie den RAW (5VDC) nicht verwenden.
