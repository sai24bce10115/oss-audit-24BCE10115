#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sai Supraja Mutnuru | Course: Open Source Software
# --- Variable Used ---
PACKAGE="python3"   # Package Name
# --- Check if package is installed ---
# Debian-based System Used 
# WSL Ubuntu
if dpkg -l | grep -q "^ii  $PACKAGE "; then   # Package installed or not 
    echo "$PACKAGE is installed."            # Installed 

    # Display Version of Package
    dpkg -l | grep "^ii  $PACKAGE " | awk '{print "Version Used:", $3}'
    # Extracts version information
else
    echo "$PACKAGE is NOT installed."        # Not Installed
fi
# --- Case Statement ---
case $PACKAGE in
   # Python
    python3) echo "Python is a high-level, object-oriented language";;
   # Apache Server
    apache2) echo "Apache is a web server that built the open internet";;
   # MySQL
    mysql) echo "MySQL is a relational database that is widely used";;
   # Firefox
    firefox) echo "Firefox is an open-source browser";;
   # Default Case
    *) echo "This software represents open-source";;
esac
