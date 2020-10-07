---
title: "Proton C"
lang: "pl"
layout: qmk
permalink: /pl/proton-c/
---

<img src="https://i.imgur.com/GdsN1Rd.jpg" alt="Proton C" />

Proton C to oparty na Arm STM32F303xC zamiennik Pro Micro. Wykorzystuje ten sam chip, co Planck rev6 i Clueboards (w wersji) od Skullydazed.

* Port USB-C THT
* 32-bitowy procesor Cortex-M4 72 MHz (STM32F303CCT6)
* I2C, SPI, PWM, DMA, DAC, USART, I2S
* 23 porty we/wy 3,3 V.
* 1x wyjście 5 V dla LED'ów WS2812
* Pamięć flash 256 kB
* 40kB RAM
* Wyjście na głośnik AST1109MLTRQ
* Przycisk reset

Wersja 2 wprowadziła następujące zmiany:

* Pady do montażu głośnika po obu stronach PCB
* Możesz teraz podłączyć jedną stronę głośnika do GND, aby uzyskać dodatkowy pin I / O
* Obie strony używają przezroczystej maski lutowniczej
* Zanurzenie w złocie zostało wykonane przed maską lutowniczą, więc ścieżki są teraz złote

Proton C można zakupić pod adresem:

* [Clueboard](https://clueboard.co/parts/qmk-proton-c) (US-West)
* [Keebio](https://keeb.io/products/qmk-proton-c) (US-East)
* [NovelKeys](https://novelkeys.xyz/products/qmk-proton-c) (US-East)
* [SpaceCat](https://spacecat.design/products/proton-c-by-qmk) (US-East)
* [1upkeyboards](https://www.1upkeyboards.com/shop/controllers/qmk-proton-c/) (US-East)
* [Oh, Keycaps!](https://ohkeycaps.com/products/proton-c) (US-Midwest)
* [Mykeyboard](https://mykeyboard.eu/catalogue/qmk-proton-c-rev-2_1246/) (EU)
* [Daily Clack](https://dailyclack.com/products/qmk-proton-c) (AUS)

Obsługa rozdzielonych klawiatur, podświetlenia RGB i podświetlenia jest w trakcie opracowywania i powinna być wkrótce dostępna.

## Porównanie

Jeśli chcesz wiedzieć, dlaczego powinieneś wybrać Proton C do swojego następnego projektu, oto porównanie mikrokontrolerów:

&nbsp;       |ATmega32U4        |AT90USB1286         |STM32F303xC                   |
-------------|------------------|--------------------|------------------------------|
Prędkość     |16MHz             |16MHz               |72MHz                         |
Napięcie     |5V                |5V                  |3.3V (niektóre piny na 5V)    |
Pamięć Flash |32kB (28kB wolne) |128kB (120kB wolne) |256kB (248kB wolne)           |
Pamięć EEPROM|1kB               |4kB                 |4kB (emulowane we flash'u)    |
Pamięć       |2.5kB             |8kB                 |48kB                          |
Liczniki     |4 w sumie         |4 w sumie           |10 w sumie                    |
Piny We/Wy   |25 pinów          |46 pinów            |37 pinów                      |

STM32F303 ma 9 razy większą użyteczną przestrzeń dyskową niż ATmega32U4. Możesz włączyć kilka funkcji i nadal mieć dużo miejsca. Na przykład Planck EZ, który ma w pełni włączoną matrycę audio i RGB (brak wyłączonych funkcji podrzędnych) i ma wyłączoną opcję optymalizacji czasu łącza, wykorzystuje 45kB oprogramowania układowego, wciąż pozostawiając 200kB + wolnego. Mnóstwo miejsca na wszystko, co chcesz.

## Ostrzeżenia

Niektóre płytki drukowane kompatybilne z Pro Micro mają piny VCC (3,3 V) i RAW (5 V) podłączone (zwarte) do płytki drukowanej. Korzystanie z Proton C spowoduje zwarcie zasilania 5 V z USB i regulowanego napięcia 3,3 V, które jest podłączone bezpośrednio do MCU. Zwarcie tych pinów może uszkodzić MCU na Protonie C.

Jak dotąd wydaje się, że problem ten dotyczący tylko PCB Gherkin, ale może to wpłynąć na inne PCB.

W takim przypadku możesz w ogóle nie podłączać pin'u RAW.
