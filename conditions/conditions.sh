#!/bin/bash

DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

echo "Current disk usage: $DISK_USAGE%"

if [ $DISK_USAGE -gt 80 ]; then
    echo "WARNING: Disk usage is critical!"
elif [ $DISK_USAGE -gt 50 ]; then
    echo "NOTICE: Disk usage is moderate"
else
    echo "OK: Disk usage is healthy"
fi

