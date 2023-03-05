#!/bin/bash

writefile=$1
writestr=$2

if [ $# -lt 2 ]
then
    echo "Not enough arguments."
    exit 1
else
    mkdir -p "$(dirname "$writefile")" && echo "$writestr" > $writefile
fi

if [ $? -ne 0 ]
then
    echo "Error creating file."
    exit 1
fi
