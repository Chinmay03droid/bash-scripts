#!/bin/bash

verbose=false

while getopts "v" opt; do
    case "$opt" in
        v)
	    verbose=true
	    ;;
	*)
	    echo "Invalid option"
	    exit 2
	    ;;
    esac
done
shift $((OPTIND - 1))

services=("$@")

declare -A status

running=0
failed=0

if [[ $# -eq 0 ]]; then
    echo "Invalid: zero arguments provided"
    exit 1
fi

check_services() {
    local service="$1"

    if [[ "$verbose" == true ]]; then
	echo "Checking service: $service"
    fi

    if systemctl is-active --quiet "$service"; then
	status["$service"]="running"
	((running++))
    else
	status["$service"]="not running"
	((failed++))
    fi
}

# Check services
for service in "${services[@]}"; do
    check_services "$service"
done

for service in "${!status[@]}"; do
    echo "$service : ${status[$service]}"
done

echo
echo "Total services : $((running + failed))"
echo "Running        : $running"
echo "Not running    : $failed"

if [[ $failed -gt 0 ]]; then
    exit 1
else
    exit 0
fi
