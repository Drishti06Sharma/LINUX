## Below is the code of palindrome_number.sh

#!/bin/bash
# palindrome_num.sh
# Usage: ./palindrome_num.sh 1221

if [ $# -ne 1 ]; then
  echo "Usage: $0 <non-negative-integer>"
  exit 1
fi
n="$1"
if ! [[ $n =~ ^[0-9]+$ ]]; then
  echo "Must be a non-negative integer."
  exit 1
fi

orig="$n"
rev=0
while [ "$n" -gt 0 ]; do
  rev=$(( rev * 10 + (n % 10) ))
  n=$(( n / 10 ))
done

[ "$orig" -eq "$rev" ] && echo "$orig is a palindrome." || echo "$orig is NOT a palindrome."