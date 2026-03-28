#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Riya Mathur

# We check for python3 as that is the standard package name on Ubuntu/WSL
PACKAGE="python3"

echo "Checking system for $PACKAGE..."

# Check if package is installed using dpkg
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo -e "\n[SUCCESS] $PACKAGE is installed."
    echo "--- Package Details ---"
    # Show package version and summary
    dpkg -s $PACKAGE | grep -E 'Version|Description' | head -n 2
else
    echo -e "\n[WARNING] $PACKAGE is NOT installed."
fi

echo -e "\n--- Package Philosophy ---"
# Case statement that prints a one-line philosophy note about the package based on its name [cite: 141]
case $PACKAGE in
    python3|python) 
        echo "Python: A language shaped entirely by community, emphasizing readability and open collaboration." ;;
    apache2|httpd) 
        echo "Apache: The web server that built the open internet." ;;
    mysql-server|mysql) 
        echo "MySQL: Open source at the heart of millions of apps." ;;
    firefox) 
        echo "Firefox: A nonprofit fighting for an open web." ;;
    *) 
        echo "$PACKAGE: Another valuable piece of the open-source ecosystem." ;;
esac
