import os
from fontforge import *

font = open(os.sys.argv[1])
font.reencode("iso8859-1")
for glyph in font:
    if font[glyph].isWorthOutputting():

        if glyph.isupper():
            name = glyph + "_capital"
        else:
            name = font[glyph].glyphname
        # or name it with ' + "_" + str(font[glyph].unicode)' added
        print ("glyph: " + glyph + ", unicode: " + str(font[glyph].unicode) + ", name: " + name + "\n")
        font[glyph].export("c:/temp/" + name  + ".png", 22)
        