#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]
then
    echo "Not enough arguments."
    exit 1
elif [ ! -d $filesdir ]
then
    echo "Directory not found."
    exit 1
else
    x=$(ls $filesdir | wc -l)
    y=$(grep -R $searchstr $filesdir | wc -l)
    echo "The number of files are $x and the number of matching lines are $y"
fi