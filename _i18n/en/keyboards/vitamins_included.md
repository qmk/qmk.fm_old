---
title: "Vitamins Included"
layout: qmk-editable
permalink: /keyboards/vitamins_included/
---

# Vitamins included Rev2

{% include badge.html path="vitamins_included" %}

The Vitamins included is a variant of the Let's Split.
It started out as a DIY kit for a version of the Let's Split using kailh sockets,
and then grew into the first revision. Lessons were learned and changes were made, and that got us to this version. The keyboard is named "Vitamins Included", because no soldering is required. Everything is on the PCB. 

The term vitamins is often used in reprap 3D printers to describe parts you can't make yourself/have to buy, and as such was the inspiration for the name. Nothing super complicated :)

Like the Let's split, it's a split 40% board (4x6 on each half), that uses an ATMega32U4, and Serial or I2C to communicate between the halves.
Revision 2 also has 6 WS2812B underglow leds on each half, and has spots for further WS2812 expansion, as well as a spot for a buzzer, if one wishes to add that.

The board ships with QMK-DFU and a default QWERTY keymap flashed.  
The keymap used, is the [vitamins_included/keymaps/default](https://github.com/qmk/qmk_firmware/tree/master/keyboards/vitamins_included/keymaps/default)

The PCBs are available at [Novelkeys](https://novelkeys.xyz/collections/frontpage/products/vitamins-included-rev-2)

## Important issue
Rev2.0 is missing the pull-down resistors on the CCx pins. This means that it won't work with USB-C <> USB-C cables, used in USB-C hosts. Using a USB-C <> USB-A adapter, and then a USB-A <> USB-C cable will however work.

## 3D printable files

* [Left case](3d/flat/1.5mm_plate/case-left-FDM.stl)
* [Right case](3d/flat/1.5mm_plate/case-right-FDM.stl)

## Step and dxf files

* [Plate](3d/flat/plate.dxf)
* [Left case](3d/flat/1.5mm_plate/case-left.step)
* [right case](3d/flat/1.5mm_plate/case-right.step)

## Source
The case was designed in Fusion 360. The right half is just a mirrored left-half

* [Left flat-case source](https://a360.co/2IwRsjE)

The PCB files are available [on github](https://github.com/Duckle29/Vitamins-included/)

## PCB specific features

![Top render](images/top.png)
![Bottom render](images/bot.png)

### Top side
## NOTE: Rev 2.0 has an error in the labeling of the LED_O jumpers on the right half. They are swapped. Just the lables are swapped. Functionally they're identical.

1. Reset header: Here the reset pin and a gnd pin is exposed. You can hook up a button here if you want to mount a reset button in your case.
2. RGB mode:
   * Master (default): In this mode the data-in of the WS2812B LEDs is connected to F0 on the ATMega32U4
   * Slave: In this mode, data-in of the WS2812B LEDs is connected to the SDA pin of the TRRS jack, if you want cross-half animations.
3. RGB output:
   * Pads (default): In this mode, the data-out of the WS2812B LEDs is connected to the LED extension pads (**_10_**), allowing you to add more LEDs if you want. Do keep the power limits in mind (2A for the input Diode 1A over the TRRS jacks)
   * Jack: In this mode, the data-out of the WS2812B LEDs is routed to the SDA pin of the TRRS jack.

### Important: (**_2_**) and (**_3_**) have to be adjusted together. Only the following configurations are valid:

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

Side A could be either side(left/right), and B would be the other.
Also, the middle configuration functions as the first, but won't allow for I2C.
Any configuration using the Jack for RBG data, won't allow I2C.

### Bottom side

 10. WS2812B extension header: This header allows for adding more WS2812B LEDs after the on board ones, assuming the LED O header (**_3_**) is configured apropriately 
 11. Reset button: Resets the MCU. Usually used to flash it.
 12. QMK-DFU LED: used by the QMK-DFU bootloader to give feedback.
 13. Optional buzzer: Use a passive buzzer to allow the board to drive the tone. Is also used by QMK-DFU
 14. I2C pull-up jumpers: Bridge these two jumpers if you want to use I2C between the halves. Keep in mind that the LED O jumper (**_3_**) has to be set to _pads_ for this.