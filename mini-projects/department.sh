#!/bin/bash

while read name department
do
    echo "$name works in $department"
done < employees.txt

