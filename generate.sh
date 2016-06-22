#!/bin/bash
# export KEYBOARDS=( $(ls keyboard) )
# . mo/mo
# mo templates/index.mo > index.html
pandoc https://raw.githubusercontent.com/jackhumbert/qmk_firmware/master/README.md \
-f markdown_github --to html --standalone --output index.html \
--template standalone.html --toc --toc-depth 3

# for i in $(find . -name "README.md" -o -name "readme.md"); do MARKDOWN=$(<$i) mo/mo templates/readme.mo > ${i%/*}/index.html; done;
# for i in $(find . -name "README.md" -o -name "readme.md"); do pandoc --from markdown_github --to html --standalone $i --output ${i%/*}/index.html --template templates/template.html --css templates/template.css --self-contained --toc --toc-depth 2; done;