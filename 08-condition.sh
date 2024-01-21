#!/bin/bash

number=$1

if [ $number -gt 1000 ]
then
  echo "Given number $number is greater than 1000"
else 
   echo "Given number $number is not greater than 1000"
fi