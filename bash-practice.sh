#!/bin/bash

echo "=============================="
echo "Bash Practice Program"
echo "=============================="

# User Input
echo "Enter your name:"
read name

echo "Enter your age:"
read age

echo "Enter your favourite num:"
read num

echo "Hello $name!"
echo "Your age is $age!"
echo "Your favourite num is $num!"

# Arithmetic
add=10
sum=$((num + add))
echo "$sum"

# If statement

if [ "$age" -ge 18 ]; then
	echo "You are an adult!"
else
	echo "You are not an adult!"
fi
