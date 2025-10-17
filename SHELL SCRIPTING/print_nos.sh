## Below is the code of print_nos.sh
#!/bin/bash
# Usage: ./print_no.sh

a=(1 2 3 4 5 6 7)

for i in "${a[@]}"; do
  echo "$i"
done
