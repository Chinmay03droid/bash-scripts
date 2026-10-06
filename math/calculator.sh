#!/bin/bash

echo $1
echo $2
echo $#
if [ $# -ne 2  ]; then
    echo "Usage: ./calculator.sh <number1> <number2>"
    exit 1
fi

echo "$(($1 + $2))"

