#!/bin/bash

# Define a function to run on error
handle_error() {
    echo "⚠️  Error occurred on line $1"
    exit 1
}

# Set the trap. $LINENO is a special variable that holds the current line number.
trap 'handle_error $LINENO' ERR

echo "1. Creating a file..."
touch myfile.txt

echo "2. Trying to list a non-existent file..."
ls non_existent_file.txt   # <--- This fails!

echo "3. This line will NEVER run because the script exited above."
