#!/bin/bash

if [ $# -eq 0 ]; then
    SEARCH_TERMS=("ERROR" "WARNING" "CRITICAL")
else
    SEARCH_TERMS=("$@")
    
fi

for SEARCH in "${SEARCH_TERMS[@]}"; do
	echo "===== $SEARCH ====="
	
	find ~ -type f -name "*.log" -size +100k -print0 | 
	xargs -0 grep -c "$SEARCH" | grep -v ":0$" | 
	awk -F: 'BEGIN {total=0} {print $1, "->", $2; total += $2} END {print "Total:", total}'
done

