### PRACTICE CODE #:

#!/bin/bash
# count_lwc.sh
# Usage: ./count_lwc.sh filename.txt

if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

if [ ! -f "$1" ]; then
  echo "File not found."
  exit 1
fi

lines=$(wc -l < "$1")
words=$(wc -w < "$1")
chars=$(wc -m < "$1")

echo "Lines: $lines"
echo "Words: $words"
echo "Characters: $chars"

## PRACTICE VIDEO:
<video controls src="pc3a.mp4" title="vh"></video>
<video controls src="pc3b.mp4" title="buoio"></video>
<video controls src="pc3c.mp4" title="ft"></video>
<video controls src="pc3d.mp4" title="cf"></video>
<video controls src="pc3e.mp4" title="dt"></video>