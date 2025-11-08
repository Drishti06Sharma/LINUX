#!/bin/bash
a=(2 -3 -2) b=(1 -1 1) c=(-1 2 2) d=(8 -11 -3)

det() { A=("$@"); echo $((A[0]*(A[4]*A[8]-A[5]*A[7])-A[1]*(A[3]*A[8]-A[5]*A[6])+A[2]*(A[3]*A[7]-A[4]*A[6]))); }

D=$(det ${a[@]} ${b[@]} ${c[@]})
[ $D -eq 0 ] && echo "No unique solution" && exit

Dx=$(det ${d[@]} ${b[@]} ${c[@]})
Dy=$(det ${a[@]} ${d[@]} ${c[@]})
Dz=$(det ${a[@]} ${b[@]} ${d[@]})

echo "x=$((Dx/D)), y=$((Dy/D)), z=$((Dz/D))"
