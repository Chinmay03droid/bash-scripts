#!/bin/bash

TEMP_FILE="/tmp/my_test_file"

trap 'echo "Clean up..."; rm -f "$TEMP_FILE"'  EXIT

echo " Creating temporary file..."

echo "$TEMP_FILE"

echo "Temporary file created"

echo "Done"
