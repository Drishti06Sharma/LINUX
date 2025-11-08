#!/bin/bash
if [ $# -lt 2 ]; then
echo "Usage: $0 <int1> <int2>"
exit 1
fi
a=$1
b=$2
if ! [[ $a =~ ^[0-9]+$ ]] || ! [[ $b =~ ^[0-9]+$ ]]; then
echo "Both arguments must be non-negative nos."
exit 1
fi
x=$a
y=$b
while [ $b -ne 0 ]; 
do
temp=$b
b=$((a%b))
a=$temp
done
gcd=$a
lcm=$(((x*y)/gcd))
echo "GCD: $gcd"
echo "LCM: $lcm"