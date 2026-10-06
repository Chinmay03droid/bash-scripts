#!/bin/bash

echo "=================================="
echo "       SYSTEM HEALTH REPORT       "
echo "=================================="
echo "Date: $(date)"
echo "Host: $(hostname)"
echo "User: $(whoami)"
echo ""

echo "--- CPU & Memory ---"
echo "CPU Load: $(uptime | awk -F 'load average:' '{print $2}')"
free -h | awk 'NR==2 {print "Memory Used: " $3 "/" $2}'
echo ""

echo "--- Disk Usage ---"
df -h | awk 'NR>1 {print $1 " -> "$5" used"}'
echo ""

echo "--- Last 3 Commands ---"
history | tail -3
echo "==================================="
