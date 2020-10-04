---
title: "Podmień KLE raw na QMK info.json"
lang: "pl"
layout: qmk
permalink: /pl/converter/
---

## Podmień KLE raw na QMK info.json

<label>Input:</label>
<textarea id="input"></textarea>
<button id="submit">Convert</button>
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
        'url': "https://api.qmk.fm/v1/converters/kle",
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
