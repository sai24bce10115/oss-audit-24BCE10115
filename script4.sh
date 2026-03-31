#!/bin/bash
# Writing the log file  in variable form
# Input the keyword to be found in the file
LOG_FILE="/var/log/syslog"
KEY="error"
# Check if file exists 
if [ -f "$LOG_FILE" ]
then # Check if the keyword is present 
    COUNT_=$(grep -i "$KEY" "$LOG_FILE" | wc -l)
    echo "Frequency of '$KEY'in  $COUNT_"
# Show the last 5 matching lines 
    echo "Last same lines"
    grep -i "$KEY" "$LOG_FILE" | tail -5
else # File not present
    echo "Log file is not there in system"
fi
