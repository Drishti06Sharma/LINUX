#!/bin/bash
for ((i=0; i<=5; i++))
do
echo "Interation: $i"
done

for ((a=0; a<5; a++))
do
echo "  *  "
done

for ((b=15; b<=10; b--))
do
echo "Decrementation: $b"
done

for ((c=1 , d=10; c<=10 , d>=1; c++ , d--))
do
echo "$c $d"

done