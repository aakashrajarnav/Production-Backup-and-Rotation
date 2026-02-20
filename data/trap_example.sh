#!/bin/bash

# Define a temporary file name
TEMP_FILE="temp_data.txt"

# 1. Set the TRAP
# Tell the script: "As soon as this script exits, run 'rm temp_data.txt'"
trap "rm -f $TEMP_FILE; echo 'Cleanup done. Temp file deleted.'" EXIT

# 2. Create the file and do some work
touch $TEMP_FILE
echo "Working... (Press Ctrl+C to test the trap)"
sleep 10

# 3. End of script
echo "Work finished normally."
