#!/bin/bash
 check disk uasge and disk space file  is :: du -sh , df -sh

# check disk space using if-elif-else condition

threshold_critical=95
threshold_warning=85
current_usage=$(df -h / | awk 'NR==2 ${print$5}' | cut -d '%' -f1)

echo "current disk usage is :: $current_usage%"

if [ current_usage -ge $threshold_critical ]; then
   echo "Disk usage is critical is $current_usage% , take immediate action!"
elif [[ current_usage -ge $threshold_critical ]]; then
   echo "Disk usage is high is $current_usage% , freeing up space"
else
  echo "Disk usage is normal ($current_usage%)."
fi
