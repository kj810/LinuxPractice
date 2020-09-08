#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Input 2 files, please.."
    echo "usage) ./s6.sh  <file> <file>"
    exit 0
fi

DATE=`date +%Y%m%d%H%M%S --date='30 minutes ago'`
FN="${DATE}.log"
echo "mv $1 \> $FN"

cat $1 > $FN
cat $2 >> $FN

