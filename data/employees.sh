#!/bin/bash

echo "========== Employee Report =========="
awk '
BEGIN {
    count = 0
    total = 0
    highest = 0

}

{   
    count++
    total += $3
    average
    if ($3 > highest) {
    highest = $3
    }
}

END {
    average = total /count

    print "Total number of employees :", count
    print "Total Salary :", total
    print "Average Salary :", average
    print "Highest Salary is :", highest
}
' employees.txt

echo "====================================="
