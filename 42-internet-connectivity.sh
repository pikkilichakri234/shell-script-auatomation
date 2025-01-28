#!/bin/bash

check the internet-connection command is :: ping www.google.com

ping_result=$(ping -c 1 google.com 2&>1)

if [[ $ping_result == *"icmp_seq"* ]]; then
   echo "check internet connection is up"
else
  echo "check internet connection is down"
fi
