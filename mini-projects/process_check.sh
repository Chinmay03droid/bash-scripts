#!/bin/bash

read -p "Enter process name: " process

for ((i=1; i<=5; i++)); do
	if pgrep "$process" > /dev/null; then
	   echo "Check $i: $process is running"
	else
           echo "Check $i: $process is not running"
	fi
done
