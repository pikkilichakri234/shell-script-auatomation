#!/bin/bash
# special variables in shell script (predefined)
echo "scriptname is : $0"
echo "all variables: $@"
echo "no.of variables: $#"
echo "current directory: $PWD"
echo "which user running the script: $USER"
echo "home directory of currenet user: $HOME"
echo "hostname: $HOSTNAME"
echo "process ID of the current shellscript: $$"
sleep 69 &
echo "process ID of the last background command in shellscript: $$"
echo "all argumenets passed to the script as single string: $*"
echo "process ID of the parenet shell: $PPID"
echo "current line number in the script: $LINEND"
echo "Generates a ranadom number: $RANDOM"
echo "Turns on debugging for visibility: $SET -x"   # -X is enable debug , +X is disable debug
echo "To measure execution duration: $SECONDS"
echo "exit status of prevous commands is sucess or fail check: $?"

