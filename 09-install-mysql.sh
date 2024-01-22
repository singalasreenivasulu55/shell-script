#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "ERROR:: Please run this script with root access"
   exit 1 # you can give other than 0
else
   echo "your are root user"
fi # fi means reverse of if, indicating condition end

yum install mysqlllll -y

if [ $? -ne 0 ]
then  
   echo "ERROR:: Installing mysql is failed"
   exit 1
else 
   echo "Installing mysql is success"
fi

