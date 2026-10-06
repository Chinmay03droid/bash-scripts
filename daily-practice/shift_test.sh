#!/bin/bash

echo "Before shift:"
echo "1: $1"
echo "2: $2"
echo "3: $3"

shift

echo "After shift:"
echo "1: $1"
echo "2: $2"
echo "3: $3"

