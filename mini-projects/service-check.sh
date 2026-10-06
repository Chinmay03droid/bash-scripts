#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Usage: $0 <service1> <service2>..."
    exit 1
fi

check_service() {
    local service="$1"

    echo "Checking service: $service"

    if systemctl is-active --quiet "$service"; then
	echo "$service is running"
	return 0
    else
	echo "$service is not running"
	return 1

    fi
}

failed=0
for service in "$@"
do
   if ! check_service "$service";then
       failed=1
   fi
done

echo "Total services: $#"
exit "$failed"
