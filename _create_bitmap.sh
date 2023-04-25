#!/bin/sh

if [ -z "$1" ]
  then
    echo "No arguments supplied"
    exit 1
fi


fontimage --pixelsize 22 --text "$1" -o "$1_comicsans1.png" ComicSansMSBold.ttf
convert "$1_comicsans1.png" -negate "$1_comicsans_n.png"
convert "$1_comicsans_n.png" -transparent black "$1_comicsans.png"
