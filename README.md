#  System Stats Script

This lightweight bash script is designed to give you a quick snapshot of your system’s vital stats—everything from CPU and memory usage to network interfaces and more. No more digging through different commands. Just one script to rule them all! 

## Features
- **Hostname:** Get your machine’s name with ease! 
- **Current User:** Shows who’s logged in (yes, it's probably you!).
- **System Date/Time:** Displays the current date and time in a nice readable format. 
- **System Load:** Check out your 1-minute system load at a glance. 
- **CPU Info:** See what kind of muscle your machine is packing (CPU model and core count). 
- **Memory & Swap Usage:** Know how much of your RAM and swap space is being chewed up. 
- **Disk Usage:** Shows the usage stats for your root directory. 
- **Running Processes:** Find out how many processes are keeping your system busy. 
- **Logged-In Users:** Check how many users are active on your machine. 
- **Network Interfaces:** View all your network interfaces and their IPs. 

## Requirements

To use this script, you need the following commands available on your system:
- `uptime`
- `lscpu`
- `free`
- `ip`
- `df`
- `ps`
- `awk`

### If you're missing any commands:
- **Linux (Ubuntu/Debian):**
  ```bash
  sudo apt install procps util-linux iproute2
  ```

- **MacOS:**
  Install [Homebrew](https://brew.sh/) and run:
  ```bash
  brew install procps-ng util-linux iproute2mac
  ```

- **Windows (Using WSL):**  
  [Set up WSL](https://docs.microsoft.com/en-us/windows/wsl/install) and get these commands by installing Ubuntu.

##  Installation

1. **Clone this repository:**
   ```bash
   git clone https://github.com/yourusername/system-stats-script.git
   cd system-stats-script
   ```

2. **Make the script executable:**
   ```bash
   chmod +x sys-stat.sh
   ```

3. **Run the script:**
   ```bash
   ./sys-stat.sh
   ```

Boom! You now have all the juicy system stats!

##  How It Works

This script is a friendly wrapper around common Linux commands. It pulls in details like system uptime, memory usage, CPU details, and disk space, formats them, and spits them out in a clean, easy-to-read format. Perfect for keeping tabs on your system health without manually typing a bunch of commands.

Coded by ph1n3y
