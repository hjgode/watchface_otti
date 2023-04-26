#!/bin/sh

for n in 0 1 2 3 4 5 6 7 8 9 ':' '.' '%' '°C' 'Temp' 'km'
do
    fontimage --pixelsize 24 --text $n -o $n_1.png "./ComicSansMS-Bold.sfd"
    convert $n_1.png -negate $n_n.png
    convert $n_n.png -fuzz 20% -transparent black $n.png
done
