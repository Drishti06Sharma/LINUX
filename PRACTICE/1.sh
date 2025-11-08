#!/bin/bash

fruits=("apple" "banana" "lemon")
for i in fruits "${fruits[@]}"
do
echo "$i"
done
