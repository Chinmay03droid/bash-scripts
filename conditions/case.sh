#!/bin/bash

echo "===================="
echo "Simple Menu"
echo "===================="

echo "Enter your name:"
read name

echo "Enter your age:"
read age

echo "1. Say Hello"
echo "2. Show your name"
echo "3. Show your age"
echo "4. Exit"

echo "Enter your choice:"
read choice

case $choice in 
	1) echo "Hello!"
	   ;;
	
	2) echo "Your name is $name"
	   ;;

	3) echo "Your age is $age"
	   ;;
	
	4) echo "Goodbye!"
	   ;;

	*) echo "Invalid choice!"
	   ;;
esac

