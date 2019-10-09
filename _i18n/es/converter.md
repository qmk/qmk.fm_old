---
title: "Convertir KLE a QMK info.json"
layout: qmk
lang: "es"
---

## Convertir KLE raw a QMK info.json

<label>Input:</label>
<textarea id="input"></textarea>
<button id="submit">Convertir</button>
<label>Output:</label>
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
