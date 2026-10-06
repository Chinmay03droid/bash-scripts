#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Usage: ./server.sh <log-file>"
    exit 1
fi

if [ ! -f "$1" ]
then
    echo "File does not exist"
    exit 1
fi

echo "========== SERVER LOG REPORT =========="
echo "Generated : $(date)"
awk '
BEGIN {
    count = 0
    failed = 0
}

{
    count++
    counts[$1]++   
         
    if ($0~ /Failed/) {
	failed++
    }	 

}

END {
    print "Total logs:", count
    printf "INFO: %d (%.2f%%)\n", counts["INFO"], counts["INFO"] / count * 100
    printf "WARNING: %d (%.2f%%)\n", counts["WARNING"], counts["WARNING"] / count * 100
    printf "ERROR: %d (%.2f%%)\n" , counts["ERROR"], counts["ERROR"] / count * 100
    printf "CRITICAL: %d (%.2f%%)\n", counts["CRITICAL"], counts["CRITICAL"] / count * 100
    print "Failed Errors:", failed


    if (counts["CRITICAL"] > 0) {
        highest = "CRITICAL"
    }
    else if (counts["ERROR"] > 0) {
	highest = "ERROR"
    }
    else if (counts["WARNING"] > 0) {
	highest = "WARNING"
    }
    else {
	highest = "INFO"
    }

    print "Highest Severity:", highest

    if (highest == "CRITICAL") {
	status = "CRITICAL"
    }
    else if (highest == "ERROR") {
	 status = "WARNING"
    }
    else {
	 status = "HEALTHY"
    }
    
    print "STATUS:", status

    if (counts["CRITICAL"] > 0) {
        exit 2
    }
}	   
' "$1"

status=$?

if [ "$status" -eq 2 ]; then
    exit 2
fi
