# #!/bin/bash
# # commands to execute for each item in the list
# for variable in list
# do
#   #logic ---> execute iterate loop each item 
# done

# iterating overfiles and directories
echo "Files in current directory"
----------------------------------

for file in *      # * = all the files
do
  echo "file is :: $file"
done


echo "all arguments passed scrript in :: $@"
-------------------------------------------------

for arg in $@      # * = all the files
do
  echo "all srguments is :: $arg"
done


echo "generate sequence of numbers"
-----------------------------------

for (( i=1; i<=5; i++ ))
do
  echo " Iteration is $i"
done

