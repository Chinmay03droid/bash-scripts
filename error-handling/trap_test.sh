#!/bin/bash

set -e

trap 'echo "Failed command: $BASH_COMMAND!"' ERR

echo "Starting"

ls /does/not/exist

echo "Finished"
