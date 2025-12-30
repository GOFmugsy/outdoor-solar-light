#!/bin/zsh
hash=`git rev-parse --short HEAD`
/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o solar-neopixel-holder-$hash.stl case.scad
