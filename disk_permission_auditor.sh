#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Adhil K.G

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo "Disk and Permission Audit Report"
echo "======================================"

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then

        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "Directory: $DIR"
        echo "Permissions/Owner: $PERMS"
        echo "Size: $SIZE"
        echo "----------------------------------"

    else
        echo "$DIR does not exist."
    fi
done

echo ""
echo "Checking Git configuration directory..."

if [ -d ~/.gitconfig ]; then
    ls -ld ~/.gitconfig
else
    echo "Git config file located at ~/.gitconfig"
    ls -l ~/.gitconfig
fi
