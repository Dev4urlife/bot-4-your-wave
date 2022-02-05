#!/bin/bash
y=0
px=40
py=1505
offset=200
let "y=$py"
#./screenshot.sh
for i in $(seq 1 6)
do
  let "y=y+$offset-25"
  echo "Image: $i"
  echo "Pos y: $y"
  convert _screenshot.png -colorspace Gray -threshold 50% -crop 3000x120+$px+$y temp-$i.png
  tesseract temp-$i.png stdout -l chi_tra --oem 3 --psm 3
done