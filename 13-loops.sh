#!/bin/bash

# for i in {0..5}
# do
#     echo $i
# done

for package in $@
do
   dnf install $package -y
done 
