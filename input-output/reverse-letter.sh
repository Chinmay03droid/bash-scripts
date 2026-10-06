#!/bin/bash

letters=(A B C D E)

for ((i=4; i>=0; i--))
do
    for ((j=0; j<=i; j++))
    do
        echo -n "${letters[i]}"
    done
    echo ""
done
