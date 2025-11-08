#!/bin/bash
declare -A matrix
matrix[0,0]=1
matrix[0,1]=2
matrix[1,0]=2
matrix[1,1]=1
echo "Matrix:"
for i in 0 1; do
for j in 0 1; do
echo -n "${matrix[$i,$j]} "
done
echo
done