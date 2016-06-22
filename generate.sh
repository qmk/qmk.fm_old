#!/bin/bash
export KEYBOARDS=( $(ls keyboard) )
. mo/mo
mo templates/index.mo > index.html




# for i in $(find . -name "README.md" -o -name "readme.md"); do MARKDOWN=$(<$i) mo/mo templates/readme.mo > ${i%/*}/index.html; done;