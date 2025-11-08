#!/bin/bash
arr=(1234 5432 3456)
for n in "${arr[@]}"
do
sum=0
while [ $n -gt 0 ]; do
digit=$((n%10))
sum=$((sum+digit))
n=$((n/10))
done
echo "Sum of digits is $sum."
done