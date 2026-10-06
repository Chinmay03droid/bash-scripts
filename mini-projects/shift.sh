#!/bin/bash

echo "Before shift:"
echo "First: $1"
echo "Second: $2"
echo "Third: $3"
echo "Fourth: $4"
echo "Count: $#"

shift

echo
echo "After shift:"
echo "First: $1"
echo "Second: $2"
echo "Third: $3"
echo "Fourth: $4"
echo "Count:$#"
