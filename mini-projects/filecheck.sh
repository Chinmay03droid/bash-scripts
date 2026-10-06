#!/bin/bash

status=0

if [ $# -eq 0 ]; then
    echo "Error:No file provided"
    exit 1
fi

while [ $# -gt 0 ]; do
	[ -f "$1" ] && echo "File found: $1" || {
	    echo "File not found: $1"
	    status=1
      }
		 

	shift
done

exit "$status"
