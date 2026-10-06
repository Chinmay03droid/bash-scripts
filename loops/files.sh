#!/bin/bash


if [ $# -eq 0 ]; then
    echo "Error: No files provided"
    exit 1
    
fi

status=0

for file in "$@"; do
   if [ -f "$file" ]; then
       echo "File found: $file"
   else
       echo "File not found: $file"
       status=1
   fi
done

exit "$status"
