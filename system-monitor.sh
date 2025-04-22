#!/bin/bash



while true
do
  clear
  echo "----------------------"
  echo "   SYSTEM MONITOR"
  echo "----------------------"

  # Date & Time
  echo "📅 Date & Time: $(date)"

  # Uptime
  echo "⏱️ Uptime: $(uptime -p)"

  # Logged-in users
  echo "👥 Logged-in Users:"
  who

  # CPU Load (grab load averages directly)
  echo "🧠 CPU Load:"
  top -bn1 | grep "load average"

  # Memory Usage
  echo "💾 Memory Usage:"
  free -h

  # Disk Usage
  echo "🗂️ Disk Usage:"
  df -h /

  echo "----------------------"
  echo "Refreshing every 5 seconds... (Ctrl + C to stop)"
  sleep 5
done
