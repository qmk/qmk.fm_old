#!/usr/bin/env python3

import os

from jinja2 import Template

pagetext = """
---
title: "All Supported Keyboards"
layout: qmk-editable
permalink: /keyboards/
# this page is automatically generated
---
## All Supported Keyboards

This page is automatically generated from keyboards currently in QMK. Default .hex files are up-to-date with the latest version of QMK, and get pushed every build via Travis.

Want a qmk.fm page? [Create a `<keyboard>.md` file for it here](https://github.com/qmk/qmk.fm/tree/gh-pages/_pages/keyboards)! (use others as examples/templates)

Currently only .hex files are provided - some listed here may not be what's needed to flash the keyboard. If this is the case, [please open an issue](https://github.com/qmk/qmk.fm/issues)!

<style>
.fa.psi-icon {
    font-size: 14px;
    font-family: sans-serif;
}
</style>

| QMK Folder | default firmware | qmk.fm page |
| --- | --- | --- |
{% for keyboard in keyboards -%}
    | <i class='fa fa-github' aria-hidden='true'></i> [{{keyboard['pathname']}}](https://github.com/qmk/qmk_firmware/tree/master/keyboards/{{keyboard['pathname']}}) | [<i class='fa fa-download' aria-hidden='true'></i>](https://qmk.fm/{{keyboard['filename']}} "{{keyboard['pathname']}}'s latest default QMK firmware")[<span class='fa-stack fa-lg'><i class='fa fa-circle fa-stack-1x'></i><i class='fa fa-inverse fa-stack-1x psi-icon'>&Psi;</i></span>](qmk:https://qmk.fm/{{keyboard['filename']}} \"Open in QMK Toolbox\") | {% if keyboard['readme'] %} [{{keyboard['name']}}](http://qmk.fm/keyboards/{{keyboard['pathname']}}/) {% endif %}|
{% endfor -%}
"""

with open('.keyboards', 'r') as fd:
    keyboards = fd.readlines()

keyboard_entries = []
for keyboard in keyboards:
    keyboard = keyboard.strip()
    keyboard_name = keyboard.replace('/', '_')
    format = None
    readme = None

    if os.path.exists('compiled/%s_default.bin' % keyboard_name):
        format = 'bin'
    elif os.path.exists('compiled/%s_default.hex' % keyboard_name):
        format = 'hex'

    if os.path.exists('_i18n/en/keyboards/%s.md' % keyboard.split('/')[0]):
        readme = '_i18n/en/keyboards/%s.md' % keyboard.split('/')[0]

    if format:
        keyboard_entries.append({
            'pathname': keyboard,
            'name': keyboard_name,
            'filename': 'compiled/%s_default.%s' % (keyboard_name, format),
            'readme': readme,
        })

# Write out the generated template
if os.path.exists('_i18n/en/keyboards.md'):
    os.remove('_i18n/en/keyboards.md')

with open('_i18n/en/keyboards.md', 'w') as fd:
    t = Template(pagetext)
    fd.write(t.render(keyboards=keyboard_entries))
