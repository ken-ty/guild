#! /bin/bash

FILENAME="popular-names.txt"
OUTPUTFILE=$FILENAME.out
touch $OUTPUTFILE
while read line
do
    echo ${line//"\t"/"\s"} >> $OUTPUTFILE
done < $FILENAME
# cat --show-tabs $FILENAME
cat --show-tabs $OUTPUTFILE

