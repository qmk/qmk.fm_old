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
* 1x wyjœcie 5 V dla LED'ów WS2812
* Pamiêæ flash 256 kB
* 40kB RAM
* Wyjœcie na g³oœnik AST1109MLTRQ
* Przycisk reset

Wersja 2 wprowadzi³a nastêpuj¹ce zmiany:

* Pady do monta¿u g³oœnika po obu stronach PCB
* Mo¿esz teraz pod³¹czyæ jedn¹ stronê g³oœnika do GND, aby uzyskaæ dodatkowy pin I / O
* Obie strony u¿ywaj¹ przezroczystej maski lutowniczej
* Zanurzenie w z³ocie zosta³o wykonane przed mask¹ lutownicz¹, wiêc œcie¿ki s¹ teraz z³ote

Proton C mo¿na zakupiæ pod adresem:

* [Clueboard](https://clueboard.co/parts/qmk-proton-c) (US-West)
* [Keebio](https://keeb.io/products/qmk-proton-c) (US-East)
* [NovelKeys](https://novelkeys.xyz/products/qmk-proton-c) (US-East)
* [SpaceCat](https://spacecat.design/products/proton-c-by-qmk) (US-East)
* [1upkeyboards](https://www.1upkeyboards.com/shop/controllers/qmk-proton-c/) (US-East)
* [Oh, Keycaps!](https://ohkeycaps.com/products/proton-c) (US-Midwest)
* [Mykeyboard](https://mykeyboard.eu/catalogue/qmk-proton-c-rev-2_1246/) (EU)
* [Daily Clack](https://dailyclack.com/products/qmk-proton-c) (AUS)

Obs³uga rozdzielonych klawiatur, podœwietlenia RGB i podœwietlenia jest w trakcie opracowywania i powinna byæ wkrótce dostêpna.

## Porównanie

Jeœli chcesz wiedzieæ, dlaczego powinieneœ wybraæ Proton C do swojego nastêpnego projektu, oto porównanie mikrokontrolerów:

&nbsp;       |ATmega32U4        |AT90USB1286         |STM32F303xC                   |
-------------|------------------|--------------------|------------------------------|
Prêdkoœæ     |16MHz             |16MHz               |72MHz                         |
Napiêcie     |5V                |5V                  |3.3V (niektóre piny na 5V)    |
Pamiêæ Flash |32kB (28kB wolne) |128kB (120kB wolne) |256kB (248kB wolne)           |
Pamiêæ EEPROM|1kB               |4kB                 |4kB (emulowane we flash'u)    |
Pamiêæ       |2.5kB             |8kB                 |48kB                          |
Liczniki     |4 w sumie         |4 w sumie           |10 w sumie                    |
Piny We/Wy   |25 pinów          |46 pinów            |37 pinów                      |

STM32F303 ma 9 razy wiêksz¹ u¿yteczn¹ przestrzeñ dyskow¹ ni¿ ATmega32U4. Mo¿esz w³¹czyæ kilka funkcji i nadal mieæ du¿o miejsca. Na przyk³ad Planck EZ, który ma w pe³ni w³¹czon¹ matrycê audio i RGB (brak wy³¹czonych funkcji podrzêdnych) i ma wy³¹czon¹ opcjê optymalizacji czasu ³¹cza, wykorzystuje 45kB oprogramowania uk³adowego, wci¹¿ pozostawiaj¹c 200kB + wolnego. Mnóstwo miejsca na wszystko, co chcesz.

## Ostrze¿enia

Niektóre p³ytki drukowane kompatybilne z Pro Micro maj¹ piny VCC (3,3 V) i RAW (5 V) pod³¹czone (zwarte) do p³ytki drukowanej. Korzystanie z Proton C spowoduje zwarcie zasilania 5 V z USB i regulowanego napiêcia 3,3 V, które jest pod³¹czone bezpoœrednio do MCU. Zwarcie tych pinów mo¿e uszkodziæ MCU na Protonie C.

Jak dot¹d wydaje siê, ¿e problem ten dotycz¹cy tylko PCB Gherkin, ale mo¿e to wp³yn¹æ na inne PCB.

W takim przypadku mo¿esz w ogóle nie pod³¹czaæ pin'u RAW.
