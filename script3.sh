#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Riya Mathur

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "        Directory Audit Report            "
echo "=========================================="

# Loop through the array of directories [cite: 147, 154]
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions and ownership using awk [cite: 148, 157]
        PERMS=$(ls -ld $DIR | awk '{print "Perms:", $1, "| Owner:", $3, "| Group:", $4}')
        # Calculate size; redirect errors to null to avoid clutter [cite: 157]
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "[$DIR] -> Size: $SIZE | $PERMS"
    else
        echo "[$DIR] -> Directory does not exist on this system."
    fi
done

echo "------------------------------------------"
# Check Python's config/library directory [cite: 162]
PYTHON_DIR="/usr/lib/python3"
if [ -d "$PYTHON_DIR" ]; then
    PY_PERMS=$(ls -ld $PYTHON_DIR | awk '{print $1}')
    echo "Software specific check: Python lib directory ($PYTHON_DIR) exists with permissions: $PY_PERMS"
else
    echo "Software specific check: Python lib directory ($PYTHON_DIR) not found."
fi
