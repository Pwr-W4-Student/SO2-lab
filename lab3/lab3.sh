#!/bin/sh

rm -rf ./Lab3
mkdir ./Lab3
mkdir ./Lab3/D1
mkdir ./Lab3/D1/D2
mkdir ./Lab3/D1/D2/D3
mkdir ./Lab3/D4
mkdir ./Lab3/D4/D5


echo "test10" >  ./Lab3/D1/D2/D3/P10
echo "test20" >  ./Lab3/D4/P20
echo "test30" >  ./Lab3/D4/D5/P30

for i in $(seq 1 9);
do
echo "test$i" > ./Lab3/D1/D2/P$i;
done

ln -s ../../D1/D2/D3/P10 ./Lab3/D4/D5/link_P10

ln -s `realpath ./Lab3/D1/D2/D3/P10` ./Lab3/D4/D5/link10_bez

for i in $(seq 1 9);
do
ln -s ../../D1/D2/P$i ./Lab3/D4/D5/link_P$i
done


ln -s ../../../D4 ./Lab3/D1/D2/D3/link_D4
ln -s `realpath ./Lab3/D4/P20` ./Lab3/D1/D2/D3/link_P20_bez


