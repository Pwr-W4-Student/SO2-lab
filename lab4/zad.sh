#!/bin/sh

echo "zad4_a"

find ./ -name "*test*" -type f | sort  | tail -3

echo "zad4_b"

find ./ -size +1k -size -5k  \( -name  "*.jpg" -o -name "*.png" \) -type f |
while read file
do
    echo `realpath $file` | tr '/' '\\'
done


echo "zad4_c"


find ./A/ -name "*.txt" -type f -exec cp {} ./B/ \;


