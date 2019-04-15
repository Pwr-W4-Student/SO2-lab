#!/bin/sh

find ./ \( -name  "*.txt" -o -name "*.dat" \) -type f  -cmin -5 |
while read file
do
    echo "`realpath $file` | `date '+%d-%m-%Y | %H:%M:%S'`" $file | tee -a result
	
done 




