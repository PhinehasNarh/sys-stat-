
#!/bin/bash

# Script: extended-system-stats.sh
# Description: Displays extended system statistics.

# Display hostname
echo "Hostname: $(hostname)"
echo "-----------------------------------------"

# Display current user
echo "Current User: $(whoami)"
echo "-----------------------------------------"

# Display system date and time
echo "System Date/Time: $(date '+%A %d %B %Y %I:%M:%S %p %Z')"
echo "-----------------------------------------"

# Display system load (1-minute average)
echo "System Load: $(uptime | awk -F'[a-z]:' '{ print $2}' | awk '{print $1}')"
echo "-----------------------------------------"

# Display CPU model and core count
echo "CPU Model: $(lscpu | grep 'Model name:' | awk -F: '{ print $2 }' | sed 's/^ *//')"
echo "CPU Cores: $(nproc)"
echo "-----------------------------------------"

# Display total memory
echo "Total Memory: $(free -h | grep 'Mem:' | awk '{print $2}')"

# Display memory usage percentage
echo "Memory Usage: $(free | grep Mem | awk '{print ($3/$2) * 100.0 "%"}')"
echo "-----------------------------------------"

# Display swap usage
echo "Swap Usage: $(free | grep Swap | awk '{print ($3/$2) * 100.0 "%"}')"
echo "-----------------------------------------"

# Display usage of /
echo "Usage of /: $(df -h / | grep '/' | awk '{print $5 " of " $2}')"
echo "-----------------------------------------"

# Display number of running processes
echo "Processes: $(ps aux | wc -l)"
echo "-----------------------------------------"

# Display number of logged-in users
echo "Users Logged In: $(who | wc -l)"
echo "-----------------------------------------"

# Display network interfaces and IPs
echo "Network Interfaces and IPs:"
ip -brief address | awk '{print $1 ": " $3}'
echo "-----------------------------------------"
