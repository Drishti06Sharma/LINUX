#!/bin/bash

arr=(143 153 176 123)
for num in "${arr[@]}"
do
temp=$num
sum=0
n=${#num}

while [ $temp -gt 0 ]
do
digit=$((temp % 10))
pow=$((digit ** n))
sum=$(( sum + pow))
temp=$((temp/10))
done
if [ $sum -eq $num ]; then
echo "$num is armstrong."
else
echo "$num is not armstrong."
fi
done