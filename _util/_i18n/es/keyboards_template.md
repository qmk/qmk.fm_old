---
title: "Todos los teclados con soporte"
layout: qmk-editable
permalink: /es/keyboards/
lang: es
# esta página se genera automáticamente
---
## Todos los teclados con soporte

Esta página se genera automáticamente de los teclados actualmente en QMK. Los archivos .hex predeterminados están actualizados con la última version de QMK, y se publica con cada compilación via Github Actions.

¿Quieres una página de QMK? [Crea un archivo `<keyboard>.md` aquí](https://github.com/qmk/qmk.fm/tree/gh-pages/_pages/keyboards)! (usa otros como ejemplos/patrones)

Actualmente se proveen archivos .hex, .bin, y .uf2 - algunos de los enumerados aquí tal vez no sean lo que se necesita para flashear el teclado. Si es así, [por favor abre una propuesta](https://github.com/qmk/qmk.fm/issues)!

<style>
.fa.psi-icon {
    font-size: 14px;
    font-family: sans-serif;
}
</style>

| Carpeta de QMK | firmware predeterminado | página de qmk.fm |
| --- | --- | --- |
{% for keyboard in keyboards -%}
    | <i class='fa fa-github' aria-hidden='true'></i> [{{keyboard['pathname']}}](https://github.com/qmk/qmk_firmware/tree/master/keyboards/{{keyboard['pathname']}}) | [<i class='fa fa-download' aria-hidden='true'></i>](https://qmk.fm/compiled/{{keyboard['filename']}} "último firmware predeterminado de QMK para {{keyboard['pathname']}}")[<span class='fa-stack fa-lg'><i class='fa fa-circle fa-stack-1x'></i><i class='fa fa-inverse fa-stack-1x psi-icon'>&Psi;</i></span>](qmk:https://qmk.fm/{{keyboard['filename']}} \"Abrir en QMK Toolbox\") | {% if keyboard['readme'] %} [{{keyboard['name']}}](http://qmk.fm/es/keyboards/{{keyboard['pathname']}}/) {% endif %}|
{% endfor -%}
