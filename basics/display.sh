#!/bin/bash

echo "===================="
echo "Information Menu"
echo "===================="

echo "1. Show Date"
echo "2. Show Current Directory"
echo "3. Show Username"
echo "4. Exit"

echo "Enter your choice:"
read choice

case $choice in
	1) date
	   ;;
	2) pwd
	   ;;
	3) whoami
	   ;;
	4) echo "Exit"
	   ;;
	*) echo "Invalid Choice!"
	   ;;
esac
