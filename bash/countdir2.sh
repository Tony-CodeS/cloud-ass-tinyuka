#!/bin/bash

# Prompt the user to enter an absolute path
read -p "Enter the absolute path to the directory: " DIR

# Check if the user entered anything
if [ -z "$DIR" ]; then
    echo "Error: No path entered."
    exit 1
fi

# Check if the path exists
if [ ! -e "$DIR" ]; then
    echo "Error: '$DIR' does not exist."
    exit 1
fi

# Check if it's a directory
if [ ! -d "$DIR" ]; then
    echo "Error: '$DIR' exists but is not a directory."
    file "$DIR"   # Optional: describe what it is
    exit 1
fi

# Count regular files in the directory (non-recursive)
FILE_COUNT=$(find "$DIR" -maxdepth 1 -type f | wc -l)

# Output result
echo "There are $FILE_COUNT files in '$DIR'."
