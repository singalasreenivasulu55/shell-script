#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ] # ! denotes opposite
then
   echo "$R Source directory: $SOURCE_DIR does not exists. $N"
fi

FILE_TO_DELETE=$(find . -type f -mtime +14 -name "*.log")

while IFS read -r line 
do 
   echo "Deleting files: $LINE"
done <<< $FILES_TO_DELETE
