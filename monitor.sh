#!/bin/bash
echo "=== System Health Report ($(date)) ==="
echo "Uptime: $(uptime -p)"
echo "Memory Usage:" && free -h | awk 'NR==2{printf "Used: %s / %s (%.2f%%)\n", $3,$2,$3*100/$2 }'
echo "Disk Usage:" && df -h / | awk 'NR==2{printf "Used: %s / %s (%s)\n", $3,$2,$5}'
