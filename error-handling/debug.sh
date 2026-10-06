#!/bin/bash

name="Max"
count=3

echo "Name: $name"

count=$((count + 2))
echo "Count: $count"

if [ "$count" -gt 4 ]; then
    echo "Count is greater than 4"
fi
