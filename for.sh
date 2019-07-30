#!/bin/bash
FILECONTENT=$(cat white.txt)
for i in $FILECONTENT
do
    echo $i
done
