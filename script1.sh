Script 1:
#!/bin/bash
# Script 1: System Identity Report
# Author: Sai Supraja Mutnuru | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Sai Supraja Mutnuru"  # Name of student
SOFTWARE_CHOICE="Python" # Software Used

# --- System Info ---
KERNEL=$(uname -r) # Kernel 
USER_NAME=$(whoami) # User Name
HOME_DIR=$HOME # Home Directory of User
UPTIME=$(uptime -p) # Time length for which system is running
CURR_DATE=$(date) # System date and time
DIST=$(lsb_release -d 2>/dev/null | cut -f2) # Linux Distribution Name

# --- Display ---
echo "--------------------------------------"
echo " Open Source Audit — $STUDENT_NAME"
echo "--------------------------------------"
echo "Software: $SOFTWARE_CHOICE"
echo "User Name: $USER_NAME"
echo "Home Directory: $HOME_DIR"
echo "Kernel Version: $KERNEL"
echo "Distribution: $DIST"
echo "Date and Time: $CURR_DATE"
echo "Uptime: $UPTIME"
echo "License Used: GNU General Public License"
echo "--------------------------------------"
echo "You are using the Linux system."
