#!/bin/bash
echo "=== System Health Report ($(date)) ==="
echo "Uptime & Load: $(uptime)"
echo "Memory Usage:" && free -h | awk 'NR==2{printf "Used: %s / %s (%.2f%%)\n", $3,$2,$3*100/$2 }'
echo "Disk Usage:" && df -h / | awk 'NR==2{printf "Used: %s / %s (%s)\n", $3,$2,$5}'
echo "Top 3 Memory Processes:" && ps -eo pid,comm,%mem --sort=-%mem | head -n 4
