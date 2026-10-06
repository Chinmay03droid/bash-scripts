#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "No service provided"
    exit 1
fi

check_service() {
	local service="$1"

	if systemctl is-active --quiet "$service"; then
	    echo "$service is running"
	    return 0
	else
	    echo "$service is not running"
	    return 0
	fi

}

failed=0

for service in "$@"; do
	if  ! check_service "$service"; then
	     failed=1
	fi
done
exit "$failed"

