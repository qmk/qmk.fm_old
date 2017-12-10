---
title: "Using the (pending) QMK Trademark"
layout: qmk
permalink: /powered/
---
## Using the (pending) QMK Trademark

If you'd like to advertise QMK compatibility or use QMK as the default/official firmware for your keyboard, we ask that you do the following to help the community provide support for your keyboard through our help channels (r/mk, r/olkb, Gitter, QMK GitHub, etc).

1. Submit a [pull request](https://github.com/qmk/qmk_firmware/pulls/) (and have it merged) with support for your keyboard as advertised (with accurate info) to [qmk/qmk_firmware](https://github.com/qmk/qmk_firmware) <sup>†</sup>
2. If your keyboard has an integrated chip, ship your keyboard with QMK pre-flashed on it (this is optional for Teensy/Pro Micro kits)
    - Request a tag (`<keyboard>-<version>` e.g. `planck-4.2`) of the commit shipped with the keyboard in [qmk/qmk_firmware](https://github.com/qmk/qmk_firmware) by contacting a collaborator via [the Gitter](https://gitter.im/qmk/qmk_firmware). A compiled .hex/.bin is usually added to the release page for this.
3. Link to `http://qmk.fm` or `https://github.com/qmk/qmk_firmware` from your product page, optionally using a badge below.
4. Be aware of [GPL compliance](https://fsfe.org/activities/ftf/useful-tips-for-vendors.en.html) - having a tag in the repo helps with this.

<small><sup>†</sup>If you need help with this, please [open an issue](https://github.com/qmk/qmk_firmware/issues) or hop on [Gitter](https://gitter.im/qmk/qmk_firmware), and we'd be happy to help! A schematic of your keyboard, and as much information you can provide would be helpful</small>

If your project uses QMK as the default and official firmware, we'd like to add it to the list on the homepage, so [let us know by creating an pull request on qmk/qmk.fm](https://github.com/qmk/qmk.fm/pulls/) if it's not there!

## Badges

If you've followed the steps above, you can use these badges! These are the default-sized badges in svg format (pngs: [dark](/assets/images/badge-dark.png), [light](/assets/images/badge-light.png)):

<style>
td {
    border: 0;
}
</style>

<table>
    <tr>
        <td><a href="/assets/images/badge-dark.svg"><img src="/assets/images/badge-dark.svg" alt="QMK Badge Dark" /></a></td>
        <td><a href="/assets/images/badge-light.svg"><img src="/assets/images/badge-light.svg" alt="QMK Badge Light" /></a></td>
    </tr>
</table>

A smaller version of each (pngs: [dark](/assets/images/badge-small-dark.png), [light](/assets/images/badge-small-light.png)):

<table>
    <tr>
        <td><a href="/assets/images/badge-small-dark.svg"><img src="/assets/images/badge-small-dark.svg" alt="QMK Badge Small Dark" /></a></td>
        <td><a href="/assets/images/badge-small-light.svg"><img src="/assets/images/badge-small-light.svg" alt="QMK Badge Small Light" /></a></td>
    </tr>
</table>

And badges for compatible or community-supported keyboards (pngs: [dark](/assets/images/badge-community-dark.png), [light](/assets/images/badge-community-light.png)):

<table>
    <tr>
        <td><a href="/assets/images/badge-community-dark.svg"><img src="/assets/images/badge-community-dark.svg" alt="QMK Community Badge Dark" /></a></td>
        <td><a href="/assets/images/badge-community-light.svg"><img src="/assets/images/badge-community-light.svg" alt="QMK Community Badge Light" /></a></td>
    </tr>
</table>

**Please do not use modified versions these images** - if you'd like to use something different, [let us know](https://github.com/qmk/qmk.fm/issues), and we'll do our best to accommodate your wishes!

<small>This page's modification history can be viewed [here](https://github.com/qmk/qmk.fm/commits/gh-pages/_pages/powered.md).</small>
