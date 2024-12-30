#!/bin/bash
echo "please eneter your name::" # text eneterd here values will added to variables
read -s USERNAME  # it is USERNAME is the variable name
echo "username entered:: $USERNAME"
echo "Please enter your password (input will be hidden):"
read -s PASSWORD  #Use -s to hide password input for security