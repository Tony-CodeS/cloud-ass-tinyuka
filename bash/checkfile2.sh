#!/bin/bash

# Prompt the user to enter a filename
read -p "Enter the filename to check: " FILE

# Check if the input is empty
if [ -z "$FILE" ]; then
    echo "Error: No filename entered."
    exit 1
fi

# Check if the file exists
if [ -e "$FILE" ]; then
    echo "File '$FILE' exists."
else
    echo "File '$FILE' does not exist."
fi
