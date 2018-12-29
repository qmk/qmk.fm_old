---
layout: qmk-title
title: "Replace serial.c of quantum/split_common/"
date: 2018-12-24 00:00:00 -0500
category: core
commit:  72d4e4b 
pr: 4669
---

This PR marks the finishing of updating of the Split Keyboard (aka "Split Common") serial code, to bring it in line with all of the awesome improvements that mtei has made for the Helix split keyboard. 

The advantages that this bring are:
* It's high-speed, about 3.5 times faster than the old code
* Stable bi-directional data transfer.
* Buffer address and size parameterized. (NEW flexible API)
* With multiple types of transaction support, communication contents can be optimized.
* Optimized based on the compiler version used.

The matrix and split_util files have been updated to use this newer code.