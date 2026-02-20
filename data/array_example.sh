#!/bin/bash

# Declare the associative array
declare -A capitals

# Assign key-value pairs
capitals[France]="Paris"
capitals[Japan]="Tokyo"
capitals[Canada]="Ottawa"

# Access and print values
echo "The capital of France is ${capitals[France]}"
echo "The capital of Japan is ${capitals[Japan]}"

<<explanation
- ${!capitals[@]}:
- [@] means "all elements."
- The ! operator in front of the array name means "give me the keys instead of the values."
- So ${!capitals[@]} expands to a list of all the keys in the capitals array (e.g., France Germany Italy).
explanation

# Loop through all key-value pairs
echo "--- All Capitals ---"
for country in "${!capitals[@]}"; do
    echo "The capital of $country is ${capitals[$country]}"
done

