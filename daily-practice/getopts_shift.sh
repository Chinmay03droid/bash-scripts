#!/bin/bash

while getopts "f:l:" opt
do
   case "$opt" in
	   f) FILE="$OPTARG" ;;
	   l) LEVEL="$OPTARG" ;;
   esac
done

echo "OPTIND = $OPTIND"

shift $((OPTIND -1))

echo "Servers:"
for server in "$@"
do
    echo "Checking: $server"
done

echo "File: $FILE"
echo "Level: $LEVEL"
echo "Remaining arguments: $@"
echo "First remaining argument: $1"
echo "Second remaining argument: $2"


