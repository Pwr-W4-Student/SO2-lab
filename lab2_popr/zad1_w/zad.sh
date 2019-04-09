#!/bin/bash

plik=$1

echo $plik

for x in $(cat $plik)
do
	echo $x
	wget -q  $x 
done
