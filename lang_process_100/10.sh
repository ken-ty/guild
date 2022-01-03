#! /bin/bash

FILENAME="popular-names.txt"

cnt=0
while read line
do
    let cnt++
done < $FILENAME

echo $cnt "lines."
wc $FILENAME