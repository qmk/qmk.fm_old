---
title: "Konvertiere KLE zu QMK info.json"
layout: qmk
permalink: /de/converter/
lang: "de"
---

## Konvertiere KLE Rohdaten zu QMK info.json

<label>KLE Rohdaten:</label>
<textarea id="input"></textarea>
<button id="submit">Konvertiere</button>
<label>QMK info.json:</label>
<textarea id="output"></textarea>

<style>
button {
    float: right;
}
textarea {
    width: 100%;
    height: 300px;
}
</style>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script>
$("#submit").on("click", function() {
    $.ajax({
        'type': 'POST',
        'url': "https://compile.clueboard.co/v1/converters/kle",
        'contentType': 'application/json',
        'data': JSON.stringify({raw: $("#input").val()}),
        'dataType': 'text',
        'success': function(d) {
            console.log(d);
          $("#output").val(d);
        }
    });
});
</script>
