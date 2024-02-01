#!/bin/bash

# Function for addition
addition() {
    result=$(($1 + $2))
    echo "Addition: $1 + $2 = $result"
}

#Function for subtraction
subtraction() {
    result=$(($1 - $2))
    echo "Subtraction: $1 - $2 = $result"
}

# Function for multiplication
multiplication() {
    result=$(($1 * $2))
    echo "Multiplication: $1 * $2 = $result"
}

# Function for division
division() {
    if [ $2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
    else
        result=$(($1 / $2))
        echo "Division: $1 / $2 = $result"
    fi
}

# Function for modulus
modulus() {
    if [ $2 -eq 0 ]; then
       echo "Error: Modulus by zero is not allowed."
    else
       result=$(($1 % $2))
       echo "Modulus: $1 % $2 = $result"
    fi
}

echo "Enter two numbers:"
read num1 num2

addition $num1 $num2
subtraction $num1 $num2
multiplication $num1 $num2
division $num1 $num2
modulus $num1 $num2
