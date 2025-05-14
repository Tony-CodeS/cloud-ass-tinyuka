#!/bin/bash

# Check if an argument was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILE="$1"

# Check if the file exists
if [ -e "$FILE" ]; then
    echo "File '$FILE' exists."
else
    echo "File '$FILE' does not exist."
fi
