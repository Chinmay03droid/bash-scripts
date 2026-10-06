#!/bin/bash

check_disk() {
    echo "Disk usage: $(df -h / | awk 'NR==2 {print $5}')"
}

check_memory() {
    echo "Memory: $(free -h | awk 'NR==2 {print $3 "/" $2}')"
}

greet() {
    local NAME=$1
    echo "Hello $NAME! Welcome to the server!"
}

check_disk
check_memory
greet "Chinmay"
