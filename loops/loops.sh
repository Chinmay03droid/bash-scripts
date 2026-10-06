#!/bin/bash

echo "=== For Loop ==="
for i in 1 2 3 4 5; do
    echo "numbers; $i"
done

echo ""
echo "=== Looping through files ==="
for file in ~/bash_scripts/*.sh; do
    echo "Found script: $(basename $file)"
done


echo ""
echo "=== While Loop ==="
COUNT=1
while [ $COUNT -le 5 ]; do
   echo "Count is: $COUNT"
   COUNT=$((COUNT +1))
done

