#!/bin/bash

# Parameters
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(basename "$0" | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log"

USERID=$(id -u)
R="\e[31m"  # Red for errors
G="\e[32m"  # Green for success
Y="\e[33m"  # Yellow for information
N="\e[0m"   # Reset color

# Function to check root access
CHECK_ROOT() {
  if [ "$USERID" -ne 0 ]; then
    echo -e "${R}Please run this script with root access${N}" | tee -a "$LOG_FILE"
    exit 1
  else 
    echo -e "${Y}Super user detected${N}" | tee -a "$LOG_FILE"
  fi
}

# Function to validate command execution
VALIDATE() {
  if [ "$1" -ne 0 ]; then 
    echo -e "$2 ... is ${R}failure${N}" | tee -a "$LOG_FILE"
    exit 1
  else
    echo -e "$2 ... is ${G}success${N}" | tee -a "$LOG_FILE"
  fi
}

# Main script execution
CHECK_ROOT
echo "Script execution started at: $(date)" | tee -a "$LOG_FILE"

# Ensure the logs folder exists
mkdir -p "$LOGS_FOLDER" || { echo "Failed to create log folder"; exit 1; }

# Package installation loop
for package in "$@"; do
  dnf list installed "$package" &>> "$LOG_FILE"
  if [ $? -ne 0 ]; then
    echo "$package is not installed..." | tee -a "$LOG_FILE"
    dnf install "$package" -y &>> "$LOG_FILE"
    VALIDATE $? "Installing package $package"
  else
    echo -e "$package is ${G}already installed${N}" | tee -a "$LOG_FILE"
  fi
done

echo "Script execution completed at: $(date)" | tee -a "$LOG_FILE"
