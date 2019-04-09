#!/bin/bash

plik=$1

touch plik.txt

for x in $(cat $plik)
do
	echo $x >> plik.txt
	cat $x >> plik.txt 
done
