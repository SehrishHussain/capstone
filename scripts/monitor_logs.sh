#!/bin/bash

# Define log file
LOG_FILE="/var/log/auth.log"
# Ubuntu uses auth.log (RHEL would use /var/log/secure)

# Output file
OUTPUT_FILE="/home/aman/failed_logins.txt"

# Extract failed login attempts
grep "Failed password" $LOG_FILE > $OUTPUT_FILE
# Searches for failed SSH login attempts

# Count attempts
COUNT=$(wc -l < $OUTPUT_FILE)

# Print result
echo "Failed login attempts: $COUNT"

# Optional alert
if [ $COUNT -gt 5 ]; then
    echo "Warning: Multiple failed login attempts detected!"
fi
