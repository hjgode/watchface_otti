#!/bin/sh

if [ -z "$1" ]
  then
    echo "No arguments supplied"
    exit 1
fi

name=$1

if [ $name eq "." ]
  then
    $name="period"
elif [ $name eq ":" ]
  then
    $name="colon"
elif [ $name eq "!" ]
  then
    $name="exclamation"
elif [ $name eq "%" ]
  then
    $name="percent"
fi

echo "output to: ${name}_comicsans.png"
fontimage --pixelsize 22 --text "${1}" -o ${name}_comicsans1.png ComicSansMSBold.ttf
convert ${name}_comicsans1.png -negate ${name}_comicsans_n.png
convert ${name}_comicsans_n.png -transparent black ${name}_comicsans.png
