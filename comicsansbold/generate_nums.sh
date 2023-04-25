#!/bin/sh

for n in 0 1 2 3 4 5 6 7 8 9
do
    fontimage --pixelsize 22 --text $n -o $n_1.png "/home/hgode/Pictures/watchface_otti/ComicSansMSBold.ttf"
    convert $n_1.png -negate $n_n.png
    convert $n_n.png -transparent black $n.png
done
