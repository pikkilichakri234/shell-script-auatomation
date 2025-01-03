#!/bin/bash
# cron :- to schedule the works in intervals ( synatx:- * * * * *)
# * * * * * = miniutes hours date month  day
LOG_FILE=/tmp/om.log

echo "hello cron log message is $(date)" >> "$LOG_FILE"


# crontab -e
  # * * * * *  /tmp/om.log