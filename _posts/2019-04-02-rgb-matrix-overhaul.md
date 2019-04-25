---
layout: qmk-title
title: "RGB Matrix Overhaul"
date: 2019-04-02 00:00:00 -0500
category: core
commit: c98247e
pr: 5372
---

This is a massive overhaul to the RGB Matrix code.  

This significantly improves the performance of the RGB Matrix code, by optimizing the math performed for the animations, and by splitting up the animation frames between cycles. 
