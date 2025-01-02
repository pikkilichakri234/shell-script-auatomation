# Functions:- we need inputs to perfrom some action , we get output
#!/bin/bash
# Algorithm steps:-
#  1. userid
#  2. check root or not
#  3. validate (to check the exit status)
#  4. install packages

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
      echo "$2 is ... failed"
      exit 1
    else 
      echo "$2 is ... sucess"
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
    echo "MySQL is already ... INSTALLED"
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
    echo "Git is already ... INSTALLED"
fi


# if [ $? -ne 0 ]
# then
#     echo "Installing Git ... FAILURE"
#     exit 1
# else
#     echo "Installing Git ... SUCCESS"
# fi

