## Below is the code of check_perms.sh

#!/bin/bash
# check_perms.sh
# Usage: ./check_perms.sh filename

if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

file="$1"
[ -r "$file" ] && echo "$file: readable" || echo "$file: NOT readable"
[ -w "$file" ] && echo "$file: writable" || echo "$file: NOT writable"
[ -x "$file" ] && echo "$file: executable" || echo "$file: NOT executable"
