# redirections :- (<(input) , >>(append), 1(success) , 2(error) , &(both success and error))
# Algorithm:- (create script parameters)
# 1.LOGS_FOLDER
# 2.LOG_FILE
# 3.USERID
# 4.CHECK_ROOT
# 5.VALIDATE
# 6.PACKAGES

#!/bin/bash
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

CHECK_ROOT() {
if [ $USERID -ne 0 ]
then
  echo -e "$R please run this script with root access" | tee -a $LOG_FILE
  exit 1
else 
  echo -e "$Y super user" | tee -a $LOG_FILE
fi
}

VALIDATE() {
if  [ $1 -ne 0 ]
then 
  echo  -e "$2 ... is $R failure $N" | tee -a $LOG_FILE
  exit 1
else
  echo  -e "$2 ... is $G sucess $N"  |  tee -a $LOG_FILE
fi
}
CHECK_ROOT
echo "script start execute at:$(date)" | tee -a $LOG_FILE

for package in $@
do
  dnf list installed $package &>> $LOG_FILE
  if [ $? -ne 0 ]
  then
    echo "$package is not installed..." | tee -a $LOG_FILE
    dnf install $package -y &>>$LOG_FILE
    VALIDATE $? "installing package"
  else
    echo -e "$package is $Y alreday installed $N"
  fi
done








