#!/bin/bash
# Script 1: System Identity Report
# Author: Riya Mathur
# Course: Open Source Software

# --- Variables
STUDENT_NAME="Riya Mathur"
SOFTWARE_CHOICE="Python"

# --- System info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
# Extract the pretty name of the distribution from os-release
DISTRO=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d '"' -f 2)
CURRENT_DATE=$(date '+%A, %B %d, %Y %T')

# --- Display
echo "=========================================="
echo "          Open Source Audit               "
echo "=========================================="
echo "Student       : $STUDENT_NAME"
echo "Software      : $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "Distro        : $DISTRO"
echo "Kernel        : $KERNEL"
echo "User          : $USER_NAME"
echo "Home Dir      : $HOME"
echo "Uptime        : $UPTIME"
echo "Date/Time     : $CURRENT_DATE"
echo "------------------------------------------"
echo "License Note  : This OS environment operates under the GNU General Public License (GPL) and other open-source licenses."
echo "=========================================="
