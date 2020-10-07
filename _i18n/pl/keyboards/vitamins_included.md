---
title: "Vitamins Included"
lang: "pl"
layout: qmk-editable
permalink: /pl/keyboards/vitamins_included/
---

# Vitamins included Rev2

{% include badge.html path="vitamins_included" %}

The Vitamins to wariant Let's Split.
Zaczęło się od zestawu DIY dla wersji Let's Split z gniazdami kailh, a potem urósł do pierwszej wersji. Wyciągnięto lekcje i wprowadzono zmiany, i to doprowadziło nas do tej wersji. Klawiatura nosi nazwę „Vitamins Included”, ponieważ nie jest wymagane lutowanie. Wszystko jest na PCB.

Termin witaminy jest często używany w drukarkach reprap 3D do opisania części, których nie możesz zrobić sam / musisz kupić, i jako taki był inspiracją dla nazwy. Nic bardzo skomplikowanego :)

Podobnie jak w przypadku podziału Let's, jest to podzielona 40% płyta (4x6 na każdą połowę), która wykorzystuje ATMega32U4 i Serial lub I2C do komunikacji między połówkami.
Wersja 2 ma również 6 świecących diod WS2812B na każdej połowie i ma miejsca na dalszą ekspansję WS2812, a także miejsce na brzęczyk, jeśli ktoś chce to dodać.

Płyta jest dostarczana z QMK-DFU i migającą domyślną mapą klawiszy QWERTY.  
Używana mapa klawiszy to [vitamins_included/keymaps/default](https://github.com/qmk/qmk_firmware/tree/master/keyboards/vitamins_included/keymaps/default)

Płytki drukowane są dostępne pod adresem [Novelkeys](https://novelkeys.xyz/collections/frontpage/products/vitamins-included-rev-2)

## Ważna kwestia
Rev2.0 nie ma rezystorów pull-down na pinach CCx. Oznacza to, że nie będzie działać z kablami USB-C <> USB-C używanymi w hostach USB-C. Jednak użycie adaptera USB-C <> USB-A, a następnie kabla USB-A <> USB-C będzie działać.

## Pliki do druku 3D

* [Lewa obudowa](3d/flat/1.5mm_plate/case-left-FDM.stl)
* [Prawa obudowa](3d/flat/1.5mm_plate/case-right-FDM.stl)

## Pliki .step i .dxf

* [Płyta](3d/flat/plate.dxf)
* [Lewa obudowa](3d/flat/1.5mm_plate/case-left.step)
* [Prawa obudowa](3d/flat/1.5mm_plate/case-right.step)

## Źródła
Obudowa została zaprojektowana w Fusion 360. Prawa połowa to tylko lustrzane odbicie lewej połowy.

* [Źródło lewej części obudowy](https://a360.co/2AxxmCx)
* [Źródło łódeczki/klina](https://a360.co/3fIED2e)
* [Źródło płyty](https://a360.co/2TqNtYX)

Pliki PCB są dostępne [na github](https://github.com/Duckle29/Vitamins-included/)

## Cechy PCB

![Render góry](images/top.png)
![Render dołu](images/bot.png)

### Górna strona
#### UWAGA: Rev 2.0 ma błąd w oznaczeniu zworek `LED_O` na prawej połowie. Etykiety są zamienione, ale funkcjonalnie są identyczne jak w poprzedniej wersji.

1. Reset: Tutaj odsłonięty jest pin resetowania i pin uziemienia. Możesz tutaj podłączyć przycisk, jeśli chcesz zamontować przycisk resetowania w swoim etui.
2. Tryb RGB:
   * Master (domyślnie): W tym trybie wejście danych z diod WS2812B jest podłączone do F0 w ATMega32U4
   * Slave: W tym trybie wejście danych z diod WS2812B jest podłączone do styku SDA gniazda TRRS, jeśli chcesz uzyskać animacje typu cross-half.
3. Wyjście RGB:
   * Pady (domyślnie): W tym trybie wyjście danych z diod LED WS2812B jest połączone z padami rozszerzającymi LED (**_10_**), co pozwala na dodanie większej liczby diod LED, jeśli chcesz. Pamiętaj o ograniczeniach mocy (2 A dla diody wejściowej 1 A przez gniazda TRRS)
   * Jack: W tym trybie dane z diod LED WS2812B są kierowane do styku SDA gniazda TRRS.

### Ważne: (**_2_**) and (**_3_**) muszą być dopasowane razem. Tylko poniższe konfiguracje są ważne:

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

Strona A może znajdować się po obu stronach (lewa / prawa), a strona B to druga.
Również konfiguracja środkowa działa jako pierwsza, ale nie pozwala na I2C.
Każda konfiguracja wykorzystująca Jack do danych RBG nie pozwoli na I2C.

### Bottom side

 10. Nagłówek rozszerzenia WS2812B: Ten nagłówek umożliwia dodanie większej liczby diod LED WS2812B po diodach na płycie, zakładając, że nagłówek LED O (**_3_**) jest odpowiednio skonfigurowany
 11. Przycisk resetowania: resetuje MCU. Zwykle używany do flashowania.
 12. QMK-DFU LED: używana przez bootloader QMK-DFU do przekazywania informacji zwrotnych.
 13. Opcjonalny brzęczyk: użyj pasywnego brzęczyka, aby umożliwić płytce wysterowanie tonu. Jest również używany przez QMK-DFU
 14. Zworki I2C pull-up: Połącz te dwie zworki, jeśli chcesz używać I2C między połówkami. Należy pamiętać, że w tym celu zworka LED O (**_3_**) musi być ustawiona na _pads_.
