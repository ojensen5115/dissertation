#!/bin/bash

for f in *.msc
do
    echo $f
    file="${f%.*}"
    ~/mscgen/condensed/src/mscgen -T eps -F /usr/share/fonts/truetype/liberation/LiberationSerif-Regular.ttf -o ../img/$file.eps $file.msc
    #mscgen -T eps -F /usr/share/fonts/corefonts/times.ttf -o ../img/$file.eps $file.msc
done
