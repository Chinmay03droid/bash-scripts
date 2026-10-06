#!/bin/bash

NAME="Chinmay"
AGE=20
CURRENT_DATE=$(date)

echo "My name is: $NAME"
echo "I am $AGE years old"
echo "Today is $CURRENT_DATE"
echo "I have $(ls ~ | wc -l) files in my folder"
