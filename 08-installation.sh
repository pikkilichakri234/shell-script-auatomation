#!/bin/bash
USERID=$(id -u)
if [ USERID -ne 0 ]
then
  echo "please run this script with root access"
  exit 1 # manual exit if error comes
else
  echo "you are superuser"
fi

dnf install mysql -y
if [ $? -ne 0 ]
then
  echo "installation of mysql... failure"
  exit 1
else
  echo "installation of mysql...success"
fi

dnf install maven -y
if [ $? -ne 0 ]
then
  echo "installation of git... failure"
  exit 1
else
  echo "installation of git... success"
fi
