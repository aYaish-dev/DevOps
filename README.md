# Server Stats Script

## Overview
`server-stats.sh` is a basic Bash script designed to gather and display important server performance statistics on a Linux system. It provides information on CPU usage, memory usage, disk usage, and the top 5 processes by CPU and memory usage.

## Features
- **CPU Usage**: Displays total CPU usage as a percentage.
- **Memory Usage**: Shows used memory out of the total memory in megabytes (MB).
- **Disk Usage**: Reports disk space used and the percentage of total disk space used.
- **Top 5 Processes by CPU Usage**: Lists the top 5 processes consuming the most CPU.
- **Top 5 Processes by Memory Usage**: Lists the top 5 processes consuming the most memory.

## Requirements
This script should work on any Linux-based system with the following common tools:
- `bash`
- `top`
- `free`
- `df`
- `ps`

## How to Use

### 1. Clone the Repository
Clone the repository or download the `server-stats.sh` script to your Linux system.

### 2. Make the Script Executable
Run the following command to give the script execution permissions:
```bash
chmod +x server-stats.sh
