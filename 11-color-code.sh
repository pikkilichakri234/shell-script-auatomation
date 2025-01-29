#!/bin/bash
 #Color codes :- to improve and visual script with codes like (codes:- 31,32,33....)
 R="\e[31m"
 G="\e[32m"
 Y="\e[33m"
 N="\e[om"

 USERID=$(id -u)
check_root() {
 if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1 #other than 0
fi   
}
VALIDATE() {
    if [ $1 -ne 0 ] 
    then
      echo "$2 is ... $R failed  $N"
      exit 1
    else 
      echo "$2 is ... $G success $N "
    fi
}
check_root

dnf list installed mysql

if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y
    VALIDATE $? "install mysql"
    if [ $? -ne 0 ]
    then
        echo "Installing MySQL ... FAILURE"
        exit 1
    else
        echo "Installing MySQL ... SUCCESS"
    fi
else
    echo -e  "MySQL is already ... $Y INSTALLED"
fi

# if [ $? -ne 0 ]
# then
#     echo "Installing MySQL ... FAILURE"
#     exit 1
# else
#     echo "Installing MySQL ... SUCCESS"
# fi

dnf list installed git

if [ $? -ne 0 ]
then
    dnf install git -y
    VALIDATE $? "installing git"
    if [ $? -ne 0 ]
    then
        echo "Installing Git ... FAILURE"
        exit 1
    else
        echo "Installing Git ... SUCCESS"
    fi
else
    echo  -e "Git is already ... $Y INSTALLED"
fi


# if [ $? -ne 0 ]
# then
#     echo "Installing Git ... FAILURE"
#     exit 1
# else
#     echo "Installing Git ... SUCCESS"
# fi


#echo Hello World

# syntax : echo -e "\e[COLmMESSAGE\e[0m"
#  echo -e , -e is to enable colors
# \e[COLm - COL is color code, Red(31) , green(32), yellow(33) , blue(34), magenta(35), cyan(36)
# \e[0m - Disable the enabled color

echo -e "\e[31mHello World\e[0m"
echo -e "\e[32mHello World\e[0m"
echo -e "\e[33mHello World\e[0m"
echo -e "\e[34mHello World\e[0m"
echo -e "\e[35mHello World\e[0m"
echo -e "\e[36momnamahashivaya\e[0m"