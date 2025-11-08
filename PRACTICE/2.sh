#!/bin/bash
veggies=("Tomato" "cabbage") 
echo "Array length of veggies is : ${#veggies[@]}"
for i in veggies "${veggies[@]}"
do
echo "First veggie in array is : ${veggies[0]}"
done