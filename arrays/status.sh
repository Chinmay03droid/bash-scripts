#!/bin/bash

service_check() {
	local service="$1"
	
	if systemctl is-active --quiet "$service"; then
		echo "$service IS RUNNING"
		return 0
	else
		echo "$service IS NOT RUNNING"
		return 1
	
	fi
}

failed=0
for service in "$@"
do
    if ! service_check "$service"; then
	failed=1
    fi
done

exit "$failed"

