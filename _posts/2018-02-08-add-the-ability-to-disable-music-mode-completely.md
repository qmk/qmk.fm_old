---
layout: qmk-title
title: "Add the ability to disable Music Mode completely"
date: 2018-02-08 00:00:00 -0500
category: core
commit: 6835ae82
pr: 2339
---

* Skip process_music in NO_MUSIC_MODE is defined

* Skip matrix_scan_music if NO_MUSIC_MODE is defined

* Skip music_all_notes_off if NO_MUSIC_MODE is defined

* Leave matrix_scan_music in, because it reduces firmware size by 150b....

* Add docs for NO_MUSIC_MODE
