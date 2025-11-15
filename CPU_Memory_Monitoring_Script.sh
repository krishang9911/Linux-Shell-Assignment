#!/bin/bash
# Script Name: cpu_memory_monitor.sh
# Purpose: Logs CPU and memory usage to a file at regular intervals.
# Author: Krishang Mahajan
# Date: 13-Nov-2025

LOG_FILE="$HOME/cpu_memory_log.txt"
INTERVAL=5
COUNT=10

for ((i=1; i<=COUNT; i++))
do
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    MEM_USAGE=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2 }')
    echo "$TIMESTAMP | CPU: $CPU_USAGE% | Memory: $MEM_USAGE%" >> "$LOG_FILE"
    sleep $INTERVAL
done

echo "Logging complete."
