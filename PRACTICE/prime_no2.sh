#!/bin/bash
arr=(2 4 25 26 27 29 43 53 54)
for num in "${arr[@]}"
do
if [ $num -le 1 ]; then
echo "$num is not prime."
continue
fi
flag=0
for ((i=2;i<=num/2;i++))
do
if [ $((num%i)) -eq 0 ]; then
flag=1
break
fi
done
if [ $flag -eq 0 ]; then
echo "$num is prime"
else
echo "$num is not prime."
fi
done