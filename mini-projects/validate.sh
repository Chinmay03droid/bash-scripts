#!/bin/bash

if [ $# -eq 0 ]; then
        echo "Error: No file provided"
	exit 1
fi

while [ $# -gt 0 ]; do
	echo "Checking: $1"
	shift
	
done

exit 0
