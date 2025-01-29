# Arrays:- Arrays provides a convinent way to store and manipulate  values under a single variable-name.
# Array values  can be accessed by the index

# #!/bin/bash
# god=("omnamahashivaya", "shivakesava", "omparavathipataheynamaha")

# declaring arrays:-  ( 2 types )
# ================

# implicit Declaration:- Arrays are implicitly declared when you assign the values to indexed positions

# ex:- name_array=("om" "namaha" "shivaya" )

# explicit Declaration:- arrays are explictly declare built-in command

# declare -a om_array  # built-in command

# ex:- om_array=("shiva-kesava" "hara hara mahadeva" "shambho-shanakara")


# Acessing array elements  ( To access individual elements of an array , you can use the index(starting 0))

echo "${name_array[0]}" # prints "value1"
echo "${name_array[1]}" # prints "value2"
echo "${name_array[2]}" # prints "value3"
echo "${name_array[@]}" # prints "all values"


# Appending elements ( you  can append elements to an array using the += operator)

new_array=("om" "namaha" "shivaya")
new_array+=("shivakesava")      #a+=10 ---> a=a+10


# Length of an array
# To find the length of an array, use ${#name_array[@]}
new_array=("om" "namaha" "shivaya")
echo "Length of an array is: ${#array[@]}" # prints the number of element in the array


#Iterating over an array
# you can iterate over all elements in an array using a loop
name_array=("om" "shivaya" "paravathi-parameswara")
for element in "${#array[@]}"
do
   echo "$element"
done

#Removing elements  ( use keyword is unset )
# you can unset individul elements by index
unset name_array[1]  #removes the element at index 1

#clearing an array
#To clear all the elements in an array
name_array()=




