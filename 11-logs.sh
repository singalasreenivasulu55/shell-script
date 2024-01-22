#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[32m"
G="\e[33m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
       echo -e "ERROR:: $2 ...$R FAILED $N"
       exit 1
    else 
       echo -e "$2 ...$G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then
  echo -e "$R ERROR:: please run this script with root access $N"
  exit 1 # you can give other than 0
else 
  echo "You are root user"
fi # fi means reverse of if , indicating condition end

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing MYSQL" 

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT" 