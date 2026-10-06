#!/bin/bash

echo 'Using "$@":'

for arg in "$@"; do
	echo "Argument: $arg"
done

for arg in "$*"; do
	echo "Argumment: $arg"
done
