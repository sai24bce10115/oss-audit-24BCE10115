#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sai Supraja Mutnuru | Course: Open Source Software
# Important Directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "Directory Audit Report"
echo "----------------------"
# Loop for each directory 
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then   # Check if directory exists
       # Permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
       # $1 = permissions, $3 = owner, $4 = group
       # Directory size
        SIZE_INFO=$(du -sh "$DIR" 2>/dev/null | cut -f1)
       # du -sh gives human-readable size, cut obtains the size field
       # Result
        echo "$DIR => Permissions: $PERMS | Size: $SIZE_INFO"
    else
        echo "$DIR does not exist"   # Directory Not Found
    fi
done
echo "----------------------"
# Check the configuration directory of Python
CONFIG="/etc/python3"   # Configuration directory
if [ -d "$CONFIG" ]; then
    CONFIG_PER=$(ls -ld "$CONFIG" | awk '{print $1, $3, $4}')
    echo "Config Directory Found: $CONFIG"
    echo "Permissions: $CONFIG_PER"
else
    echo "Configuration Directory $CONFIG not found"
fi
