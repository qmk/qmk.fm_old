---
layout: qmk-title
title: "Next set of split_common changes"
date: 2019-03-12 00:00:00 -0500
category: core
commit: 37932c2
pr: 4974
---

This updates a number of parts for the Split Keyboard code, to get it more ready for ARM Support (no, not here yet).

This PR: 

* Eliminates the need for the RGB/Backlit dirty flags
* Move over to i2c_master.c and i2c_slave.c for i2c transport (a large leap forward to ARM support)
* Support greater than 8 columns for i2c based split keyboards

Remember, you will need to flash both controllers with this update, since it changes the communication code.
