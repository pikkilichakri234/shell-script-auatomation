#!/bin/bash
#  comparison operators: compare two values used expression keywords like -ne , -lt, -gt , -le , -ge......

a=100
b=20
echo "comparison operators"

if [ $a -ne $b ]; then
   echo " a is not equal to b"
fi

if [ $a -ge $b ]; then
   echo " a is greater than equal to b"
fi

if [ $a -lt $b ]; then
   echo " a is less than  to b"
fi

if [ $a -gt $b ]; then
   echo " a is greater than to b"
fi

if [ $a -le $b ]; then
   echo " a is lessthan equal to b"
fi