#!/bin/bash
# Log monitoring script

log_file="/var/log/syslog"
error_log="/mnt/e/Assignment5/log_monitors/log_errors_$(date +%F_%T).txt"

echo "Scanning logs for errors..."
grep -i "error" "$log_file" > "$error_log"

if [ -s "$error_log" ]; then
    echo "Errors found! Saved in $error_log"
else
    echo "No errors found in logs."
fi

