#!/bin/bash

set -euo pipefail

temp_dir=$(mktemp -d)

trap 'rm -rf "$temp_dir"' EXIT

trap 'echo "ERROR: Command failed: $BASH_COMMAND"' ERR

if [ $# -ne 2 ]; then
    echo "Usage: ./safe-backup.sh <source> <backup>"
    exit 1
fi

echo "Arguments valid"

if [ -d "$1" ]; then
    echo "Source directory found: $1"
else
    echo "Error: Source directory not found : $1"
    exit 1
fi

[ -d "$2" ] || mkdir -p "$2"

timestamp=$(date +"%Y%m%d_%H%M%S")
echo "Timestamp :$timestamp"
backup_file="$2/backup_$timestamp.tar.gz"
echo "Backup file: $backup_file"

tar -czf "$backup_file" "$1"

echo "Backup created successfully!"
echo "Location: $backup_file"
