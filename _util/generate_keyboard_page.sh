#!/bin/bash

if [[ $0 != *"util"* ]]; then
    echo "Please run from the root folder"
    exit 1
fi

cat _util/keyboards_template.md > _pages/keyboards.md
while IFS='' read -r line || [[ -n "$line" ]]; do
    keyboard=${line/\//_}
    if [ -e compiled/${keyboard}_default.hex ]; then
        echo -n "| <i class='fa fa-github' aria-hidden='true'></i> [${line}](https://github.com/qmk/qmk_firmware/tree/master/keyboards/${line}) | " >> _pages/keyboards.md
        echo -n "[<i class='fa fa-download' aria-hidden='true'></i>](https://qmk.fm/compiled/${keyboard}_default.hex \"$line's latest default QMK firmware\")" >> _pages/keyboards.md
        echo -n "[<span class='fa-stack fa-lg'><i class='fa fa-circle fa-stack-1x'></i><i class='fa fa-inverse fa-stack-1x psi-icon'>&Psi;</i></span>](qmk:https://qmk.fm/compiled/${keyboard}_default.hex \"Open in QMK Toolbox\")" >> _pages/keyboards.md
        if [ -e _pages/keyboards/${line/\/*/}.md ]; then
            echo -n " | [${line/\/*/}](http://qmk.fm/keyboards/${line/\/*/}/) |" >> _pages/keyboards.md
        else
            echo -n " | | " >> _pages/keyboards.md
        fi
        echo >> _pages/keyboards.md
    fi
done < ".keyboards"
