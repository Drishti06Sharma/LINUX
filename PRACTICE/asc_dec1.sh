#!/bin/bash
arr=(2 4 3 5 9 6 1)
echo "Original array: ${arr[@]}"
asc=($(for i in "${arr[@]}"; do echo "$i"; done | sort -n))
echo "Ascending array:${asc[@]}"
dec=($(for i in "${arr[@]}"; do echo "$i"; done | sort -nr))
echo "Decending array:${dec[@]}"
