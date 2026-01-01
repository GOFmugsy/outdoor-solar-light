#!/bin/zsh
hash=`git rev-parse --short HEAD`
/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o solar-neopixel-holder-$hash.stl solar-neo.scad
/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o bottom-$hash.stl bottom.scad
