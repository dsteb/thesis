#!/bin/bash
# example run: ./convert.sh mape
convert $1.png eps2:$1.eps
convert $1.png $1.pnm
potrace $1.pnm -s -o $1.svg
convert $1.png $1.pdf
rm $1.pnm