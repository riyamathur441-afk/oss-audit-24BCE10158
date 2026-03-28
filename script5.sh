#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Riya Mathur

echo "=========================================="
echo "   Open Source Manifesto Generator        "
echo "=========================================="
echo "Answer three questions to generate your manifesto."
echo

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you?: " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

MANIFESTO_TEXT="On this day, $DATE, I declare my commitment to the open-source philosophy. My daily reliance on tools like $TOOL reminds me that technology thrives on collaboration, not restriction. To me, the core of open source is $FREEDOM. It represents the ability to study, modify, and improve the software that runs our lives. Looking forward, my goal is to embrace these values by building a $BUILD and sharing it with the world, ensuring that my contributions sit on top of the open-source foundations that paved the way for me."

echo "$MANIFESTO_TEXT" > "$OUTPUT"

echo "------------------------------------------"
echo "Manifesto successfully saved to $OUTPUT"
echo "------------------------------------------"
echo "Your Manifesto:"
cat "$OUTPUT"
