---
layout: qmk-title
title: "Update MSYS' AVR-GCC to use the 5.4.0 toolchain"
date: 2018-11-27 00:00:00 -0500
category: core
commit: 82c02d9 
pr: 4106
---

We've updated the MSYS install script to grab the newer toolchain version AVR-GCC for Windows (version 5.4.0).

This should reduce the file size of compiled binaries by a decent sized chunk, and may fix odd issues.
