#!/bin/bash

verbose=false
name=""

while getopts "vn:" opt; do
   case "$opt" in
       v)
	  verbose=true
	  ;;

       n)
	  name="$OPTARG"
	  ;;
	  

       *)
	  echo "Invalid option"
	  exit 1
	  ;;
    esac
done

shift $((OPTIND - 1))

for arg in "$@"; do
    echo "$arg"
done

echo "Name: $name"

if [[ "$verbose" == true ]]; then
    echo "Verbose mode enabled"
else
    echo "Verbose mode disabled"
fi


