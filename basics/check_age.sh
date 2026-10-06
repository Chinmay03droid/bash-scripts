#!/bin/bash

read -p "Enter your age: " age

if [[ $age -ge 18 ]]; then
    echo "You are an adult"
    
    if [[ $age -ge 60 ]]; then
        echo "You are a senior citizen!"
    fi


else 
	echo "You are a minor"
fi
