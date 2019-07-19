---
title: "About the Proton C"
layout: qmk
permalink: /proton-c/
---

<img src="https://static1.squarespace.com/static/5701bc562eeb810fd9247c88/5701e2154c2f85f4f9bd84bf/5bd1319a652dea160084f9f2/1540436392567/IMG_7448_clean.jpg?format=1500w" alt="Proton C" />

The Proton C is an ARM STM32F303xC based drop-in replacement for the Pro Micro.  It uses the same chip as the Planck rev6 boards, and Skull's new ARM Clueboards. 

* Through-hole mounted USB-C Port
* 32-bit 72Mhz Cortex-M4 processor (STM32F303CCT6)
* I2C, SPI, PWM, DMA, DAC, USART, I2S
* 23x 3.3V I/O Ports
* 1x 5V output for WS2812 LED chains
* 256Kb Flash
* 40Kb RAM
* AST1109MLTRQ speaker footprint  
* Reset button

You can find the Proton C for purchase at: 
* [OLKB](https://olkb.com/parts/qmk-proton-c)
* [Clueboard](https://clueboard.co/parts/qmk-proton-c)
* [Keebio](https://keeb.io/products/qmk-proton-c?variant=13039808610398)
* [NovelKeys](https://novelkeys.xyz/products/qmk-proton-c)

Support for Split Keyboards, RGB Underglow, and Backlighting are being worked on and should be available soon.

## Comparison

If you want to know why you should chose the Proton C for your next product, here is a comparison of the chips:

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


## Warnings

Some of  PCBs compatible with Pro Micro have VCC (3.3V) and RAW (5VDC) pins connected (shorted) on the pcb. Using the Proton C will short 5V power from USB and regulated 3.3V which is connected directly to MCU. Shorting those pins may damage the MCU on the Proton C.

So far, it appears that this is only an issue on the Gherkin PCBs, but other PCBs may be affected in this way. 

In this case, you may want to not hook up the RAW (5VDC) pin, at all.
