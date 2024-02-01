#!/bin/bash

# Initialize stack
stack=()
max_size=5   

# Push operation
push() {
    if [ ${#stack[@]} -lt $max_size ]; then
        stack+=("$1")
        echo "Pushed item '$1' onto the stack."
    else
        echo "Stack overflow! Cannot push item onto the stack."
    fi
}

# Pop operation
pop() {
    if [ ${#stack[@]} -gt 0 ]; then
        item=${stack[-1]}
        unset 'stack[-1]'
        echo "Popped item '$item' from the stack."
    else
        echo "Stack underflow! Cannot pop item from the stack."
    fi
}

# IsEmpty operation
isempty() {
    if [ ${#stack[@]} -eq 0 ]; then
        echo "Stack is empty."
    else
        echo "Stack is not empty."
    fi
}

# IsFull operation
isfull() {
    if [ ${#stack[@]} -eq $max_size ]; then
        echo "Stack is full."
    else
        echo "Stack is not full."
    fi
}

# Size operation
size() {
    echo "Stack size: ${#stack[@]}"
}

# User input
while true; do
    echo "Select an operation:"
    echo "1. Push"
    echo "2. Pop"
    echo "3. IsEmpty"
    echo "4. IsFull"
    echo "5. Size"
    echo "6. Exit"

    read -p "Enter your choice: " choice
    echo

    case $choice in
        1)
            read -p "Enter item to push: " item
            push "$item"
            echo
            ;;
        2)
            pop
            echo
            ;;
        3)
            isempty
            echo
            ;;
        4)
            isfull
            echo
            ;;
        5)
            size
            echo
            ;;
        6)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            echo
            ;;
    esac
done
