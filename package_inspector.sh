#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Adhil K.G
# Roll No: 24MEI10058

PACKAGE="git"

echo "================================="
echo "FOSS Package Inspector"
echo "Checking package: $PACKAGE"
echo "================================="

# Check if package installed
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."

    echo ""
    echo "Package Information:"
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'

else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Open Source Philosophy Note:"

case $PACKAGE in
    git)
        echo "Git: A distributed version control system created by Linus Torvalds to enable collaborative open-source development."
        ;;
    firefox)
        echo "Firefox: An open-source browser promoting a free and open web."
        ;;
    vlc)
        echo "VLC: A free multimedia player that supports almost every media format."
        ;;
    mysql)
        echo "MySQL: An open-source database powering millions of applications."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
