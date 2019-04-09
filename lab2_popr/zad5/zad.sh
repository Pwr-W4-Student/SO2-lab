#!/bin/bash

FILES=*
i=0
for f in $FILES
do
	if [[ ! -x $f ]]
	then

		mv "$f" "${f%}.$i"
		i=$((i + 1))
	fi
done


