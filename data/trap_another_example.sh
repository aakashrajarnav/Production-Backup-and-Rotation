#!/bin/bash

# Define a function to run when Ctrl+C is pressed
function prevent_stop {
    echo -e "\n You pressed Ctrl+C, but I am not stopping! :)"
}

# Trap SIGINT (Key code: 2)
trap prevent_stop SIGINT

echo "Try to stop me with Ctrl+C..."
count=1
while [ $count -le 10 ]
do
    echo "Processing $count..."
    sleep 1
    ((count++))
done
echo "Finished."
