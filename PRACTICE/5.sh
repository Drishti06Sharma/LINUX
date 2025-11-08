#!/bin/bash
names=("Alice" "Drishti")
subjects=("Maths" "Science")

for names in "${names[@]}"
do
for subjects in "${subjects[@]}"
do
echo "$names studies $subjects."
done
done
