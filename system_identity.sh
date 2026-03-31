#!/bin/bash
# Script 1: System Identity Report
# Author: Adhil K.G
# Roll No: 24MEI10058
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Adhil K.G"
ROLL_NUMBER="24MEI10058"
SOFTWARE_CHOICE="Git"

# --- System information ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -d | cut -f2)
DATE=$(date)

# --- Display Output ---
echo "======================================"
echo " Open Source Audit System Report"
echo "======================================"
echo "Student Name : $STUDENT_NAME"
echo "Roll Number  : $ROLL_NUMBER"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "--------------------------------------"
echo "Linux Distribution : $DISTRO"
echo "Kernel Version     : $KERNEL"
echo "Current User       : $USER_NAME"
echo "System Uptime      : $UPTIME"
echo "Current Date/Time  : $DATE"
echo "--------------------------------------"
echo "License Notice:"
echo "This system is built on Linux which is"
echo "distributed under the GNU General Public License (GPL)."
echo "======================================"
