---
title: "Vitamins Included"
lang: "pl"
layout: qmk-editable
permalink: /pl/keyboards/vitamins_included/
---

# Vitamins included Rev2

{% include badge.html path="vitamins_included" %}

The Vitamins to wariant Let's Split.
ZaczÍ≥o siÍ od zestawu DIY dla wersji Let's Split z gniazdami kailh, a potem urÛs≥ do pierwszej wersji. WyciπgniÍto lekcje i wprowadzono zmiany, i to doprowadzi≥o nas do tej wersji. Klawiatura nosi nazwÍ ÑVitamins Includedî, poniewaø nie jest wymagane lutowanie. Wszystko jest na PCB.

Termin witaminy jest czÍsto uøywany w drukarkach reprap 3D do opisania czÍúci, ktÛrych nie moøesz zrobiÊ sam / musisz kupiÊ, i jako taki by≥ inspiracjπ dla nazwy. Nic bardzo skomplikowanego :)

Podobnie jak w przypadku podzia≥u Let's, jest to podzielona 40% p≥yta (4x6 na kaødπ po≥owÍ), ktÛra wykorzystuje ATMega32U4 i Serial lub I2C do komunikacji miÍdzy po≥Ûwkami.
Wersja 2 ma rÛwnieø 6 úwiecπcych diod WS2812B na kaødej po≥owie i ma miejsca na dalszπ ekspansjÍ WS2812, a takøe miejsce na brzÍczyk, jeúli ktoú chce to dodaÊ.

P≥yta jest dostarczana z QMK-DFU i migajπcπ domyúlnπ mapπ klawiszy QWERTY.  
Uøywana mapa klawiszy to [vitamins_included/keymaps/default](https://github.com/qmk/qmk_firmware/tree/master/keyboards/vitamins_included/keymaps/default)

P≥ytki drukowane sπ dostÍpne pod adresem [Novelkeys](https://novelkeys.xyz/collections/frontpage/products/vitamins-included-rev-2)

## Waøna kwestia
Rev2.0 nie ma rezystorÛw pull-down na pinach CCx. Oznacza to, øe nie bÍdzie dzia≥aÊ z kablami USB-C <> USB-C uøywanymi w hostach USB-C. Jednak uøycie adaptera USB-C <> USB-A, a nastÍpnie kabla USB-A <> USB-C bÍdzie dzia≥aÊ.

## Pliki do druku 3D

* [Lewa obudowa](3d/flat/1.5mm_plate/case-left-FDM.stl)
* [Prawa obudowa](3d/flat/1.5mm_plate/case-right-FDM.stl)

## Pliki .step i .dxf

* [P≥yta](3d/flat/plate.dxf)
* [Lewa obudowa](3d/flat/1.5mm_plate/case-left.step)
* [Prawa obudowa](3d/flat/1.5mm_plate/case-right.step)

## èrÛd≥a
Obudowa zosta≥a zaprojektowana w Fusion 360. Prawa po≥owa to tylko lustrzane odbicie lewej po≥owy.

* [èrÛd≥o lewej czÍúci obudowy](https://a360.co/2AxxmCx)
* [èrÛd≥o ≥Ûdeczki/klina](https://a360.co/3fIED2e)
* [èrÛd≥o p≥yty](https://a360.co/2TqNtYX)

Pliki PCB sπ dostÍpne [na github](https://github.com/Duckle29/Vitamins-included/)

## Cechy PCB

![Render gÛry](images/top.png)
![Render do≥u](images/bot.png)

### GÛrna strona
#### UWAGA: Rev 2.0 ma b≥πd w oznaczeniu zworek `LED_O` na prawej po≥owie. Etykiety sπ zamienione, ale funkcjonalnie sπ identyczne jak w poprzedniej wersji.

1. Reset: Tutaj ods≥oniÍty jest pin resetowania i pin uziemienia. Moøesz tutaj pod≥πczyÊ przycisk, jeúli chcesz zamontowaÊ przycisk resetowania w swoim etui.
2. Tryb RGB:
   * Master (domyúlnie): W tym trybie wejúcie danych z diod WS2812B jest pod≥πczone do F0 w ATMega32U4
   * Slave: W tym trybie wejúcie danych z diod WS2812B jest pod≥πczone do styku SDA gniazda TRRS, jeúli chcesz uzyskaÊ animacje typu cross-half.
3. Wyjúcie RGB:
   * Pady (domyúlnie): W tym trybie wyjúcie danych z diod LED WS2812B jest po≥πczone z padami rozszerzajπcymi LED (**_10_**), co pozwala na dodanie wiÍkszej liczby diod LED, jeúli chcesz. PamiÍtaj o ograniczeniach mocy (2 A dla diody wejúciowej 1 A przez gniazda TRRS)
   * Jack: W tym trybie dane z diod LED WS2812B sπ kierowane do styku SDA gniazda TRRS.

### Waøne: (**_2_**) and (**_3_**) muszπ byÊ dopasowane razem. Tylko poniøsze konfiguracje sπ waøne:

<table>
  <tr>
    <th style="text-align:center" colspan="2">Side A</th>
    <th style="text-align:center" colspan="2">Side B</th>
  </tr>
  <tr>
    <td style="text-align:center">LED Mode</td>
    <td style="text-align:center">LED Out</td>
    <td style="text-align:center">LED Mode</td>
    <td style="text-align:center">LED Out</td>
  </tr>
  <tr>
    <td style="text-align:center">Master</td>
    <td style="text-align:center">Pads</td>
    <td style="text-align:center">Master</td>
    <td style="text-align:center">Pads</td>
  </tr>
  <tr>
    <td style="text-align:center">Master</td>
    <td style="text-align:center">Pads</td>
    <td style="text-align:center">Master</td>
    <td style="text-align:center">Jack</td>
  </tr>
  <tr>
    <td style="text-align:center">Master</td>
    <td style="text-align:center">Jack</td>
    <td style="text-align:center">Slave</td>
    <td style="text-align:center">Pads</td>
  </tr>
</table>

Strona A moøe znajdowaÊ siÍ po obu stronach (lewa / prawa), a strona B to druga.
RÛwnieø konfiguracja úrodkowa dzia≥a jako pierwsza, ale nie pozwala na I2C.
Kaøda konfiguracja wykorzystujπca Jack do danych RBG nie pozwoli na I2C.

### Bottom side

 10. Nag≥Ûwek rozszerzenia WS2812B: Ten nag≥Ûwek umoøliwia dodanie wiÍkszej liczby diod LED WS2812B po diodach na p≥ycie, zak≥adajπc, øe nag≥Ûwek LED O (**_3_**) jest odpowiednio skonfigurowany
 11. Przycisk resetowania: resetuje MCU. Zwykle uøywany do flashowania.
 12. QMK-DFU LED: uøywana przez bootloader QMK-DFU do przekazywania informacji zwrotnych.
 13. Opcjonalny brzÍczyk: uøyj pasywnego brzÍczyka, aby umoøliwiÊ p≥ytce wysterowanie tonu. Jest rÛwnieø uøywany przez QMK-DFU
 14. Zworki I2C pull-up: Po≥πcz te dwie zworki, jeúli chcesz uøywaÊ I2C miÍdzy po≥Ûwkami. Naleøy pamiÍtaÊ, øe w tym celu zworka LED O (**_3_**) musi byÊ ustawiona na _pads_.
