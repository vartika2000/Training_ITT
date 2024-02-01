#!/bin/bash

# Function to print every alternate value in an array.
alternate_values() {
    local output_array=("$@")  # Copy the function arguments to a local array
    for (( i = 0; i < ${#output_array[@]}; i += 2 )); do
        echo "${output_array[$i]}"
    done
}

# Prompt the user to enter values for the array
echo "Enter values for the array (type 'done' when finished):"

# Declare an empty array
input_array=()

# Read values from the user and populate the array
while read -r value && [[ "$value" != "done" ]]; do
    input_array+=("$value")
done

# Call the function and pass the array as an argument
alternate_values "${input_array[@]}"
