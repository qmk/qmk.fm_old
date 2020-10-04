---
title: "Vitamins Included"
lang: "pl"
layout: qmk-editable
permalink: /pl/keyboards/vitamins_included/
---

# Vitamins included Rev2

{% include badge.html path="vitamins_included" %}

The Vitamins to wariant Let's Split.
Zacz�o si� od zestawu DIY dla wersji Let's Split z gniazdami kailh, a potem ur�s� do pierwszej wersji. Wyci�gni�to lekcje i wprowadzono zmiany, i to doprowadzi�o nas do tej wersji. Klawiatura nosi nazw� �Vitamins Included�, poniewa� nie jest wymagane lutowanie. Wszystko jest na PCB.

Termin witaminy jest cz�sto u�ywany w drukarkach reprap 3D do opisania cz�ci, kt�rych nie mo�esz zrobi� sam / musisz kupi�, i jako taki by� inspiracj� dla nazwy. Nic bardzo skomplikowanego :)

Podobnie jak w przypadku podzia�u Let's, jest to podzielona 40% p�yta (4x6 na ka�d� po�ow�), kt�ra wykorzystuje ATMega32U4 i Serial lub I2C do komunikacji mi�dzy po��wkami.
Wersja 2 ma r�wnie� 6 �wiec�cych diod WS2812B na ka�dej po�owie i ma miejsca na dalsz� ekspansj� WS2812, a tak�e miejsce na brz�czyk, je�li kto� chce to doda�.

P�yta jest dostarczana z QMK-DFU i migaj�c� domy�ln� map� klawiszy QWERTY.  
U�ywana mapa klawiszy to [vitamins_included/keymaps/default](https://github.com/qmk/qmk_firmware/tree/master/keyboards/vitamins_included/keymaps/default)

P�ytki drukowane s� dost�pne pod adresem [Novelkeys](https://novelkeys.xyz/collections/frontpage/products/vitamins-included-rev-2)

## Wa�na kwestia
Rev2.0 nie ma rezystor�w pull-down na pinach CCx. Oznacza to, �e nie b�dzie dzia�a� z kablami USB-C <> USB-C u�ywanymi w hostach USB-C. Jednak u�ycie adaptera USB-C <> USB-A, a nast�pnie kabla USB-A <> USB-C b�dzie dzia�a�.

## Pliki do druku 3D

* [Lewa obudowa](3d/flat/1.5mm_plate/case-left-FDM.stl)
* [Prawa obudowa](3d/flat/1.5mm_plate/case-right-FDM.stl)

## Pliki .step i .dxf

* [P�yta](3d/flat/plate.dxf)
* [Lewa obudowa](3d/flat/1.5mm_plate/case-left.step)
* [Prawa obudowa](3d/flat/1.5mm_plate/case-right.step)

## �r�d�a
Obudowa zosta�a zaprojektowana w Fusion 360. Prawa po�owa to tylko lustrzane odbicie lewej po�owy.

* [�r�d�o lewej cz�ci obudowy](https://a360.co/2AxxmCx)
* [�r�d�o ��deczki/klina](https://a360.co/3fIED2e)
* [�r�d�o p�yty](https://a360.co/2TqNtYX)

Pliki PCB s� dost�pne [na github](https://github.com/Duckle29/Vitamins-included/)

## Cechy PCB

![Render g�ry](images/top.png)
![Render do�u](images/bot.png)

### G�rna strona
#### UWAGA: Rev 2.0 ma b��d w oznaczeniu zworek `LED_O` na prawej po�owie. Etykiety s� zamienione, ale funkcjonalnie s� identyczne jak w poprzedniej wersji.

1. Reset: Tutaj ods�oni�ty jest pin resetowania i pin uziemienia. Mo�esz tutaj pod��czy� przycisk, je�li chcesz zamontowa� przycisk resetowania w swoim etui.
2. Tryb RGB:
   * Master (domy�lnie): W tym trybie wej�cie danych z diod WS2812B jest pod��czone do F0 w ATMega32U4
   * Slave: W tym trybie wej�cie danych z diod WS2812B jest pod��czone do styku SDA gniazda TRRS, je�li chcesz uzyska� animacje typu cross-half.
3. Wyj�cie RGB:
   * Pady (domy�lnie): W tym trybie wyj�cie danych z diod LED WS2812B jest po��czone z padami rozszerzaj�cymi LED (**_10_**), co pozwala na dodanie wi�kszej liczby diod LED, je�li chcesz. Pami�taj o ograniczeniach mocy (2 A dla diody wej�ciowej 1 A przez gniazda TRRS)
   * Jack: W tym trybie dane z diod LED WS2812B s� kierowane do styku SDA gniazda TRRS.

### Wa�ne: (**_2_**) and (**_3_**) musz� by� dopasowane razem. Tylko poni�sze konfiguracje s� wa�ne:

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

Strona A mo�e znajdowa� si� po obu stronach (lewa / prawa), a strona B to druga.
R�wnie� konfiguracja �rodkowa dzia�a jako pierwsza, ale nie pozwala na I2C.
Ka�da konfiguracja wykorzystuj�ca Jack do danych RBG nie pozwoli na I2C.

### Bottom side

 10. Nag��wek rozszerzenia WS2812B: Ten nag��wek umo�liwia dodanie wi�kszej liczby diod LED WS2812B po diodach na p�ycie, zak�adaj�c, �e nag��wek LED O (**_3_**) jest odpowiednio skonfigurowany
 11. Przycisk resetowania: resetuje MCU. Zwykle u�ywany do flashowania.
 12. QMK-DFU LED: u�ywana przez bootloader QMK-DFU do przekazywania informacji zwrotnych.
 13. Opcjonalny brz�czyk: u�yj pasywnego brz�czyka, aby umo�liwi� p�ytce wysterowanie tonu. Jest r�wnie� u�ywany przez QMK-DFU
 14. Zworki I2C pull-up: Po��cz te dwie zworki, je�li chcesz u�ywa� I2C mi�dzy po��wkami. Nale�y pami�ta�, �e w tym celu zworka LED O (**_3_**) musi by� ustawiona na _pads_.
