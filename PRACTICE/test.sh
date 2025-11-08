#!/bin/bash
arr=(10 22 32 32 45 5 22 76 84 99 64)
uni_nos=($(printf "%s\n" "${arr[@]}" | sort -n | uniq))
echo "${uni_nos[@]}"
dec=($(for i in "${uni_nos[@]}"; do echo "$i"; done | sort -nr))
echo "Decending array:${dec[@]}"
largest=${uni_nos[0]}
for num in "${uni_nos[@]}"
do
if (( num>largest)); then
largest=$num
fi
done
echo "Largest no in array: $largest"