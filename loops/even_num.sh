#!/bin/bash

for int  in {1..20}
do
	if [ $((int %2)) -eq 0 ]; then
		echo "Even numbers are : $int"
	fi
done
