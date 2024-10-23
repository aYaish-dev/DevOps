#!/bin/bash

# CPU Usage
echo "===== CPU Usage ====="
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8"%"}')
echo "Total CPU Usage: $cpu_usage"

# Memory Usage
echo "===== Memory Usage ====="
free_mem=$(free -m | awk '/Mem:/ {print $3 "MB used out of " $2 "MB"}')
echo "$free_mem"

# Disk Usage
echo "===== Disk Usage ====="
disk_usage=$(df -h --total | grep 'total' | awk '{print $3 " used out of " $2 " (" $5 " used)"}')
echo "$disk_usage"

# Top 5 Processes by CPU Usage
echo "===== Top 5 Processes by CPU Usage ====="
ps -eo pid,cmd,%cpu --sort=-%cpu | head -n 6

# Top 5 Processes by Memory Usage
echo "===== Top 5 Processes by Memory Usage ====="
ps -eo pid,cmd,%mem --sort=-%mem | head -n 6
