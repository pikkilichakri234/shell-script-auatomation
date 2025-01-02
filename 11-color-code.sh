#!/bin/bash
 #Color codes :- to improve and visual script with codes like (codes:- 31,32,33....)
 R="\e[31m"
 G="\e[32m"
 Y="\e[33m"
 N="\e[om"

 VALIDATE() {
    if [ $1 -ne 0 ]
    then
      echo  -e "$2 is ... $R failure $N"  
      exit 1  # other then 0
    else
      echo -e "$2 is ... $G sucess $N"

 } 