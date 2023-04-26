import os
from fontforge import *

font = open(os.sys.argv[1])
font.reencode("iso8859-1")
for glyph in font:
    if font[glyph].isWorthOutputting():
        font[glyph].export("c:/temp/" + font[glyph].glyphname + ".png")
        