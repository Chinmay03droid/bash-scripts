#!/bin/bash

LOG_FILE="server.log"

LEVELS=("INFO" "WARNING" "ERROR" "CRITICAL")

if [ -f "$LOG_FILE" ]; then
	echo "File exists"

for level in "${LEVELS[@]}"
do
    count=$(grep -c "$level" "$LOG_FILE")
    echo "$level: $count"
done

else
    echo "Error:File does not exist"
fi
