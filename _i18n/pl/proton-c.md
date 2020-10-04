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
* 1x wyj�cie 5 V dla LED'�w WS2812
* Pami�� flash 256 kB
* 40kB RAM
* Wyj�cie na g�o�nik AST1109MLTRQ
* Przycisk reset

Wersja 2 wprowadzi�a nast�puj�ce zmiany:

* Pady do monta�u g�o�nika po obu stronach PCB
* Mo�esz teraz pod��czy� jedn� stron� g�o�nika do GND, aby uzyska� dodatkowy pin I / O
* Obie strony u�ywaj� przezroczystej maski lutowniczej
* Zanurzenie w z�ocie zosta�o wykonane przed mask� lutownicz�, wi�c �cie�ki s� teraz z�ote

Proton C mo�na zakupi� pod adresem:

* [Clueboard](https://clueboard.co/parts/qmk-proton-c) (US-West)
* [Keebio](https://keeb.io/products/qmk-proton-c) (US-East)
* [NovelKeys](https://novelkeys.xyz/products/qmk-proton-c) (US-East)
* [SpaceCat](https://spacecat.design/products/proton-c-by-qmk) (US-East)
* [1upkeyboards](https://www.1upkeyboards.com/shop/controllers/qmk-proton-c/) (US-East)
* [Oh, Keycaps!](https://ohkeycaps.com/products/proton-c) (US-Midwest)
* [Mykeyboard](https://mykeyboard.eu/catalogue/qmk-proton-c-rev-2_1246/) (EU)
* [Daily Clack](https://dailyclack.com/products/qmk-proton-c) (AUS)

Obs�uga rozdzielonych klawiatur, pod�wietlenia RGB i pod�wietlenia jest w trakcie opracowywania i powinna by� wkr�tce dost�pna.

## Por�wnanie

Je�li chcesz wiedzie�, dlaczego powiniene� wybra� Proton C do swojego nast�pnego projektu, oto por�wnanie mikrokontroler�w:

&nbsp;       |ATmega32U4        |AT90USB1286         |STM32F303xC                   |
-------------|------------------|--------------------|------------------------------|
Pr�dko��     |16MHz             |16MHz               |72MHz                         |
Napi�cie     |5V                |5V                  |3.3V (niekt�re piny na 5V)    |
Pami�� Flash |32kB (28kB wolne) |128kB (120kB wolne) |256kB (248kB wolne)           |
Pami�� EEPROM|1kB               |4kB                 |4kB (emulowane we flash'u)    |
Pami��       |2.5kB             |8kB                 |48kB                          |
Liczniki     |4 w sumie         |4 w sumie           |10 w sumie                    |
Piny We/Wy   |25 pin�w          |46 pin�w            |37 pin�w                      |

STM32F303 ma 9 razy wi�ksz� u�yteczn� przestrze� dyskow� ni� ATmega32U4. Mo�esz w��czy� kilka funkcji i nadal mie� du�o miejsca. Na przyk�ad Planck EZ, kt�ry ma w pe�ni w��czon� matryc� audio i RGB (brak wy��czonych funkcji podrz�dnych) i ma wy��czon� opcj� optymalizacji czasu ��cza, wykorzystuje 45kB oprogramowania uk�adowego, wci�� pozostawiaj�c 200kB + wolnego. Mn�stwo miejsca na wszystko, co chcesz.

## Ostrze�enia

Niekt�re p�ytki drukowane kompatybilne z Pro Micro maj� piny VCC (3,3 V) i RAW (5 V) pod��czone (zwarte) do p�ytki drukowanej. Korzystanie z Proton C spowoduje zwarcie zasilania 5 V z USB i regulowanego napi�cia 3,3 V, kt�re jest pod��czone bezpo�rednio do MCU. Zwarcie tych pin�w mo�e uszkodzi� MCU na Protonie C.

Jak dot�d wydaje si�, �e problem ten dotycz�cy tylko PCB Gherkin, ale mo�e to wp�yn�� na inne PCB.

W takim przypadku mo�esz w og�le nie pod��cza� pin'u RAW.
