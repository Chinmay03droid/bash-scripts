#!/bin/bash

tools=("Linux" "Git" "Docker" "Kubernetes" "Terraform" "AWS")

for ((i=0; i<${#tools[@]}; i++))
do
	echo "Tool $((i + 1)): ${tools[$i]}"
done
