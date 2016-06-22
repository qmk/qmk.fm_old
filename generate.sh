#!/bin/bash

pandoc https://raw.githubusercontent.com/jackhumbert/qmk_firmware/master/README.md \
-f markdown_github --to html --standalone --output index.html \
--template standalone.html --toc --toc-depth 3

# for i in $(find . -name "README.md" -o -name "readme.md"); do MARKDOWN=$(<$i) mo/mo templates/readme.mo > ${i%/*}/index.html; done;
for i in $(find . -name "README.md" -o -name "readme.md"); do
	if [[ $i == *"keymaps"* ]]
	then
		KEYMAP_URL=$(echo $i | sed -e 's/.*\/\(keyboard\/[^\/]*\/keymaps\/[^\/]*\).*/\1/')
	 	KEYMAP=http://github.com/jackhumbert/qmk_firmware/blob/master/${KEYMAP_URL}/keymap.c
		pandoc $i \
		-f markdown_github --to html --standalone --output ${i%/*}/index.html \
		--template standalone.html --toc --toc-depth 3 --variable keyboard=$(echo $i | sed -e 's/.*\/keyboard\/\([^\/]*\).*/\1/') \
		--variable keymap=$KEYMAP
	else
		pandoc $i \
		-f markdown_github --to html --standalone --output ${i%/*}/index.html \
		--template standalone.html --toc --toc-depth 3 --variable keyboard=$(echo $i | sed -e 's/.*\/keyboard\/\([^\/]*\).*/\1/')
	fi
done

export KEYBOARDS=( $(for i in $(ls -d ./keyboard/*/); do echo $i | sed -e 's/.*\/keyboard\/\([^\/]*\).*/\1/'; done) )
. mo/mo
mo templates/keyboards.mo > keyboards.md
pandoc keyboards.md \
-f markdown_github --to html --standalone --output keyboard/index.html \
--template standalone.html --toc --toc-depth 3
