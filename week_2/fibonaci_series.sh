#!/bin/bash

generate_fibonacci() {
    total_num=$1

    # First two numbers of the series.
    first=0
    second=1
    
    echo "Fibonacci series up to $total_num terms:"

    # Print the first two numbers.
    echo -n "$first $second"

    # Generate the remaining terms
    for ((count=3; count<=total_num; count++)); do
        # Calculate the next number
        next=$((first + second))

        # Print the next number
        echo -n " $next"

        # Update the variables for the next iteration
        first=$second
        second=$next
    done

    echo
}

read -p "Enter the number of terms: " input

generate_fibonacci $input
