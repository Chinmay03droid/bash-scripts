#!/bin/bash

set -e

echo "Before if"

if ls /does/not/exist; then
	echo "File exists"
fi

echo "After if"
