---
title: "KLE を QMK info.json に変換"
layout: qmk
permalink: /ja/converter/
lang: "ja"
---

## KLE を QMK info.json に変換

<label>入力:</label>
<textarea id="input"></textarea>
<button id="submit">変換</button>
<label>出力:</label>
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
