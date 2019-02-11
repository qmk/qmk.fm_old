---
layout: qmk-title
title: "Allow multiple process_record() calls per scan"
date: 2017-11-18 15:39:00 -0600
category: core
commit: 39d3d92
pr: 2022
---

This is particularly relevant for, e.g., the ergodox EZ and
other keyboards with slow scan rates. Without changing the API or
behavior of individual process_record() calls, we allow a
configuration flag to make multiple calls in a single scan.

This will probably have miniscule effects on non-steno users,
and it's not enabled by default for any keyboards. Added note
about it to ergodox README.
