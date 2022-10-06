---
title: "All Supported Keyboards"
layout: qmk-editable
permalink: /keyboards/
# this page is automatically generated
---
## All Supported Keyboards

This page is automatically generated from keyboards currently in QMK. Default .hex files are up-to-date with the latest version of QMK, and get pushed every build via GitHub Actions.

Want a qmk.fm page? [Create a `<keyboard>.md` file for it here](https://github.com/qmk/qmk.fm/tree/gh-pages/_pages/keyboards)! (use others as examples/templates)

Currently .hex, .bin, and .uf2 files are provided - some listed here may not be what's needed to flash the keyboard. If this is the case, [please open an issue](https://github.com/qmk/qmk.fm/issues)!

| | |
| :------------------: | :---- |
| QMK Version (commit) | {{version}} ({{commit}}) |
| Commit Date          | {{commit_date}} |
| Published            | {{publish_date}} |

<style>
.fa.psi-icon {
    font-size: 14px;
    font-family: sans-serif;
}
</style>

| QMK Folder | default firmware | qmk.fm page |
| --- | --- | --- |
{% for keyboard in keyboards -%}
    | <i class='fa fa-github' aria-hidden='true'></i> [{{keyboard['pathname']}}](https://github.com/qmk/qmk_firmware/tree/master/keyboards/{{keyboard['pathname']}}) | [<i class='fa fa-download' aria-hidden='true'></i>](https://qmk.fm/compiled/{{keyboard['filename']}} "{{keyboard['pathname']}}'s latest default QMK firmware")[<span class='fa-stack fa-lg'><i class='fa fa-circle fa-stack-1x'></i><i class='fa fa-inverse fa-stack-1x psi-icon'>&Psi;</i></span>](qmk:https://qmk.fm/{{keyboard['filename']}} \"Open in QMK Toolbox\") | {% if keyboard['readme'] %} [{{keyboard['name']}}](http://qmk.fm/keyboards/{{keyboard['pathname']}}/) {% endif %}|
{% endfor -%}
