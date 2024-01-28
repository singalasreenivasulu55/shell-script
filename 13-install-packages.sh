#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo -e "ERROR:: $R Please run this script with root access $N"
   exit 1
else 
   echo "your are a root user"
fi

echo "All arguments passed: $@"