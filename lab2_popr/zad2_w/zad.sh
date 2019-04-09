#!/bin/bash

min=$1
max=$2

for x in $(seq $1 $2)
do
	touch "plik$x.txt"
done
