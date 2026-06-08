#!/bin/bash

LOGFILE="server_health.log"

echo "====================================" >> "$LOGFILE"
echo "Server Health Report" >> "$LOGFILE"
echo "Date: $(date)" >> "$LOGFILE"
echo "====================================" >> "$LOGFILE"

echo "" >> "$LOGFILE"
echo "Disk Usage:" >> "$LOGFILE"
df -h >> "$LOGFILE"

echo "" >> "$LOGFILE"
echo "Memory Usage:" >> "$LOGFILE"
echo "Memory information not available in Git Bash (Windows)." >> "$LOGFILE"

echo "" >> "$LOGFILE"
echo "CPU Load:" >> "$LOGFILE"
echo "CPU information not available in Git Bash (Windows)." >> "$LOGFILE"

echo "" >> "$LOGFILE"
echo "Running Processes:" >> "$LOGFILE"
ps >> "$LOGFILE"

echo "" >> "$LOGFILE"

# Disk usage warning
USAGE=$(df . | awk 'NR==2 {gsub("%","",$5); print $5}')

if [ "$USAGE" -gt 80 ]; then
    echo "WARNING: Disk Usage Above 80%" >> "$LOGFILE"
else
    echo "Disk Usage is Normal" >> "$LOGFILE"
fi

echo "" >> "$LOGFILE"
echo "Health Check Completed Successfully" >> "$LOGFILE"
echo "====================================" >> "$LOGFILE"
echo "" >> "$LOGFILE"
