#!/bin/bash
arr=(153 167 134)

for num in "${arr[@]}"
do
temp=$num
sum=0
n=${#num}

while [ $temp -gt 0 ]
do
digit=$((temp % 10))
pow=$((digit ** n))
sum=$((sum + pow))
temp=$((temp / 10))
done

if [ $sum -eq $num ]; then
echo "$num is armstrong no."
else
echo "$num is not an armstrong no."
fi
done