#!/bin/bash
arr=(14 34 454 2)
for n in "${arr[@]}"
do
if [ $n -le 1 ]; then
echo "$n is not prime."
continue
fi
flag=0
for ((i=2;i<=n/2;i++))
do
if [ $((n%i)) -eq 0 ]; then
flag=1
break
fi
done
if [ $flag -eq 0 ]; then
echo "$n is prime."
else
echo "$n is not prime."
fi
done