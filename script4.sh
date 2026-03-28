#!/bin/bash
# Script 4: Log File Analyzer
# Author: Riya Mathur
# Usage: ./log_analyzer.sh /var/log/dpkg.log "install"

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error' [cite: 171, 173]
COUNT=0

# Do-while style retry if file is empty or missing [cite: 184]
while true; do
    if [ ! -f "$LOGFILE" ]; then
        echo "Error: File $LOGFILE not found."
        read -p "Please enter a valid log file path to retry (or type 'quit' to exit): " LOGFILE
        if [ "$LOGFILE" == "quit" ]; then exit 1; fi
        continue
    elif [ ! -s "$LOGFILE" ]; then
        echo "Error: File $LOGFILE is empty."
        read -p "Please enter a non-empty log file path to retry (or type 'quit' to exit): " LOGFILE
        if [ "$LOGFILE" == "quit" ]; then exit 1; fi
        continue
    else
        break # File is valid and not empty
    fi
done

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."

# Read log file line by line [cite: 164, 177, 178]
while IFS= read -r LINE; do
    # Check if keyword is in the line (case-insensitive) [cite: 179]
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------------"
echo "Summary: Keyword '$KEYWORD' found $COUNT times in $LOGFILE" [cite: 183]
echo "------------------------------------------"

if [ $COUNT -gt 0 ]; then
    echo "Last 5 matching lines:" [cite: 184]
    # Print the last 5 matching lines [cite: 184]
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
