#!/bin/bash
# to make a decision to acation perform in if & else condition
NUMBER=$1
if [ NUMBER -ge 5 ]
then
   echo "Give number is ${NUMBER} greater than 5"
else 
   echo "Give number is ${NUMBER} less than 5"
fi
# -ge , -le , -eq , -ge , -le
