#!/bin/bash

# Check if a directory path was provided
if [ -z "$1" ]; then
    echo "Usage: $0 /absolute/path/to/directory"
    exit 1
fi

DIR="$1"

# Check if the given path is a directory
if [ ! -d "$DIR" ]; then
    echo "Error: '$DIR' is not a valid directory."
    exit 1
fi

# Count only regular files (not directories) in the directory
FILE_COUNT=$(find "$DIR" -maxdepth 1 -type f | wc -l)

echo "There are $FILE_COUNT files in '$DIR'."
