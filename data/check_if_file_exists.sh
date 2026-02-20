#!/bin/bash

read -p "Enter choice (file or directory): " choice

if [[ "$choice" == "file" || "$choice" == "directory" ]]; then
    if [[ "$choice" == "file" ]]; then
        read -p "Enter the file path to be found: " file_path

        if [ -f "$file_path" ]; then
            echo "File Exists"
        else
            echo "File Not Exists"
        fi
    else
        read -p "Enter the directory path to be found: " dir_path

        if [ -d "$dir_path" ]; then
            echo "Directory Exists"
        else
            echo "Directory Not Exists"
        fi
    fi
else
    echo "Invalid choice. Please enter 'file' or 'directory'."
fi
