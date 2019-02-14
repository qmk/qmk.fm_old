#!/bin/bash

if [[ $0 != *"util"* ]]; then
    echo "Please run from the root folder"
    exit 1
fi

OUTPUT=_pages/keyboards.md

rm -f $OUTPUT
# open file handle #3
exec 3<>$OUTPUT

cat _util/keyboards_template.md >&3

while IFS='' read -r line || [[ -n "$line" ]]; do
    keyboard=${line/\//_}
    if [ -e "compiled/${keyboard}_default.hex" ] || [ -e "compiled/${keyboard}_default.bin" ]; then
        echo -n "| <i class='fa fa-github' aria-hidden='true'></i> [${line}](https://github.com/qmk/qmk_firmware/tree/master/keyboards/${line}) | " >&3

        if [ -e "compiled/${keyboard}_default.hex" ]; then
          echo -n "[<i class='fa fa-download' aria-hidden='true'></i>](https://qmk.fm/compiled/${keyboard}_default.hex \"$line's latest default QMK firmware\") " >&3
          echo -n "[<span class='fa-stack fa-lg'><i class='fa fa-circle fa-stack-1x'></i><i class='fa fa-inverse fa-stack-1x psi-icon'>&Psi;</i></span>](qmk:https://qmk.fm/compiled/${keyboard}_default.hex \"Open ${keyboard}_default.hex in QMK Toolbox\") "
        fi

        if [ -e "compiled/${keyboard}_default.bin" ]; then
          echo -n "[<i class='fa fa-download' aria-hidden='true'></i>](https://qmk.fm/compiled/${keyboard}_default.bin \"$line's latest default QMK firmware\") " >&3
          echo -n "[<span class='fa-stack fa-lg'><i class='fa fa-circle fa-stack-1x'></i><i class='fa fa-inverse fa-stack-1x psi-icon'>&Psi;</i></span>](qmk:https://qmk.fm/compiled/${keyboard}_default.bin \"Open ${keyboard}_default.bin in QMK Toolbox\") " >&3
        fi

        if [ -e "_pages/keyboards/${line/\/*/}.md" ]; then
            echo -n " | [${line/\/*/}](http://qmk.fm/keyboards/${line/\/*/}/) |" >&3
        else
            echo -n " | | " >&3
        fi

        echo >&3
    fi
done < ".keyboards"

# close fd #3
exec 3>&-
