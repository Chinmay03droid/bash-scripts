#!/bin/bash

while getopts "t:p:" opt
do
    case "$opt" in
       t)
	    TIMEOUT="$OPTARG"
	    ;;
	p)
	    PORT=$OPTARG
	    ;;
       *)
	    echo "Usage: $0 -t <timeout> <server1> <server2> ..."
	    exit 1
	    ;;
    esac
done

shift $((OPTIND - 1))

checked=0
reachable=0
unreachable=0

if [[ -z "$TIMEOUT" || -z "$PORT" || $# -eq 0 ]]; then
	echo "Error: Missing required arguments"
	echo "Usage: $0 -t <timeout> -p <port> <server1> <server2> ..."
	exit 1
fi


for item in "$@"
do
	((checked++))
	if nc -z -w "$TIMEOUT" "$item" "$PORT"; then
		echo "[OK]  $item:$PORT is reachable"
		((reachable++))
        else
		echo "[FAIL] $item:$PORT is unreachable"
	        ((unreachable++))
	fi
done

echo "Timeout: $TIMEOUT"
echo "Servers: $@"
echo "Checked: $checked"
echo "Reachable: $reachable"
echo "Unreachable: $unreachable"

