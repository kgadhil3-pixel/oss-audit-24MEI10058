#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Adhil K.G

echo "Open Source Manifesto Generator"
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. Name something you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "-------------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Author: Adhil K.G (24MEI10058)" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe open source represents $FREEDOM." >> $OUTPUT
echo "Tools like $TOOL empower developers to collaborate and innovate." >> $OUTPUT
echo "In the future, I would like to build $BUILD and share it freely with the world." >> $OUTPUT
echo "Open knowledge helps society grow together." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
