#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Input the filename, please.."
    echo "usage) ./s5.sh  <to change-file>"
    exit 0
fi

DATE=`date +%Y%m%d%H%M%S --date='30 minutes ago'`
FN="${DATE}.txt"
echo "mv $1 \> $FN"

mv $1 $FN
