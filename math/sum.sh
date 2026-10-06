#!/bin/bash

sum=0
for ((i=1; i<=100; i++))
do
    sum=$((sum + i))
done

echo "Sum of 1 to 100 = $sum"
