#!/bin/bash

while getopts "f:l:" opt
do
   echo "Option: $opt"
   echo "Argument: $OPTARG"
done
