#!/bin/bash

pandoc https://raw.githubusercontent.com/jackhumbert/qmk_firmware/master/README.md \
-f markdown_github --to html --standalone --output index.html \
--template standalone.html --toc --toc-depth 3

# for i in $(find . -name "README.md" -o -name "readme.md"); do MARKDOWN=$(<$i) mo/mo templates/readme.mo > ${i%/*}/index.html; done;
for i in $(find . -name "README.md" -o -name "readme.md"); do
	if [[ $i == *"keymaps"* ]]
	then
		KEYMAP_URL=$(echo $i | sed -e 's/.*\/\(keyboard\/[^\/]*\/keymaps\/[^\/]*\).*/\1/')
	 	KEYMAP_LINK=http://github.com/jackhumbert/qmk_firmware/blob/master/${KEYMAP_URL}/keymap.c

	 	if [ -f ${KEYMAP_URL}/config.h ]
	 	then
			rm -f ${KEYMAP_URL}/config.h.md
		 	printf "# config.h\n\n\`\`\`c\n" > ${KEYMAP_URL}/config.h.md
		 	cat ${KEYMAP_URL}/config.h >> ${KEYMAP_URL}/config.h.md
		 	printf "\n\`\`\`\n" >> ${KEYMAP_URL}/config.h.md
		else
			touch ${KEYMAP_URL}/config.h.md
		fi

	 	if [ -f ${KEYMAP_URL}/Makefile ]
	 	then
			rm -f ${KEYMAP_URL}/Makefile.md
		 	printf "# Makefile\n\n\`\`\`\n" > ${KEYMAP_URL}/Makefile.md
		 	cat ${KEYMAP_URL}/Makefile >> ${KEYMAP_URL}/Makefile.md
		 	printf "\n\`\`\`\n" >> ${KEYMAP_URL}/Makefile.md
		else
			touch ${KEYMAP_URL}/Makefile.md
		fi

		cat $i ${KEYMAP_URL}/Makefile.md ${KEYMAP_URL}/config.h.md | pandoc \
		-f markdown_github --to html --standalone --output ${i%/*}/index.html \
		--template standalone.html --toc --toc-depth 3 --variable keyboard=$(echo $i | sed -e 's/.*\/keyboard\/\([^\/]*\).*/\1/') \
		--variable keymap_link=$KEYMAP_LINK --variable keymap=$(echo $i | sed -e 's/.*\/keymaps\/\([^\/]*\).*/\1/')
	elif [[ $i == *"/keyboard/"* ]]
	then
		KEYBOARD_URL=$(echo $i | sed -e 's/.*\/\(keyboard\/[^\/]*\).*/\1/')
		export KEYMAPS=( $(for i in $(ls -d ${KEYBOARD_URL}/keymaps/*/); do echo $i | sed -e 's/.*\/keymaps\/\([^\/]*\).*/\1/'; done) )
		. mo/mo
		mo templates/keymaps.mo > ${KEYBOARD_URL}/keymaps.md
		pandoc $i \
		-f markdown_github --to html --standalone --output ${i%/*}/index.html \
		--template standalone.html --toc --toc-depth 3 --variable keyboard=$(echo $i | sed -e 's/.*\/keyboard\/\([^\/]*\).*/\1/') \
		--variable keymaps="$(pandoc ${KEYBOARD_URL}/keymaps.md)"
	fi
done

export KEYBOARDS=( $(for i in $(ls -d ./keyboard/*/); do echo $i | sed -e 's/.*\/keyboard\/\([^\/]*\).*/\1/'; done) )
. mo/mo
mo templates/keyboards.mo > keyboards.md
pandoc keyboards.md \
-f markdown_github --to html --standalone --output keyboard/index.html \
--template standalone.html --toc --toc-depth 3
