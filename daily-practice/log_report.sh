#!/bin/bash

LOG_FILE=""
LEVEL=""

while getopts "f:l:" opt
do
    case $opt in
	f)
	    LOG_FILE="$OPTARG"
	    ;;
	l)
	    LEVEL="$OPTARG"
	    ;;
	*)
	    echo "Usage: $0 -f <log_file> -l <level>"
	    exit 1
	    ;;
    esac
done

if [[ -z "$LOG_FILE" || -z "$LEVEL" ]]; then
    echo "Usage: $0 -f <log_file> -l <level>"
    exit 1
fi

case "$LEVEL" in
   INFO)
       ;;
   WARNING)
       ;;
   ERROR)
       ;;
   CRITICAL)
       ;;
   *)
       echo "Error: Invalid log level"
esac


if [[ ! -f "$LOG_FILE" ]]; then
    echo "Error: File does not exist"
    exit 1
fi

echo "Log file: $LOG_FILE"
echo "Level: $LEVEL"

count=$(grep -c "$LEVEL" "$LOG_FILE")
echo "Count: $count"

