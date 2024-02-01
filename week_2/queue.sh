#!/bin/bash

# Initialize queue
queue=()
max_size=5

# Enqueue operation
enqueue() {
    if [ ${#queue[@]} -lt $max_size ]; then
        queue+=("$1")
        echo "Enqueued item '$1' into the queue."
    else
        echo "Queue overflow! Cannot enqueue item into the queue."
    fi
}

# Dequeue operation
dequeue() {
    if [ ${#queue[@]} -gt 0 ]; then
        item=${queue[0]}
        queue=("${queue[@]:1}")
        echo "Dequeued item '$item' from the queue."
    else
        echo "Queue underflow! Cannot dequeue item from the queue."
    fi
}

# Peek operation
peek() {
    if [ ${#queue[@]} -gt 0 ]; then
        echo "Front item of the queue: ${queue[0]}"
    else
        echo "Queue is empty. No item to peek."
    fi
}

# Initialize operation
initialize() {
    queue=()
    echo "Queue initialized."
}

# IsEmpty operation
isempty() {
    if [ ${#queue[@]} -eq 0 ]; then
        echo "Queue is empty."
    else
        echo "Queue is not empty."
    fi
}

# IsFull operation
isfull() {
    if [ ${#queue[@]} -eq $max_size ]; then
        echo "Queue is full."
    else
        echo "Queue is not full."
    fi
}

# User input
while true; do
    echo "Select an operation:"
    echo "1. Enqueue"
    echo "2. Dequeue"
    echo "3. Peek"
    echo "4. Initialize"
    echo "5. IsEmpty"
    echo "6. IsFull"
    echo "7. Exit"

    read -p "Enter your choice: " choice
    echo

    case $choice in
        1)
            read -p "Enter item to enqueue: " item
            enqueue "$item"
            echo
            ;;
        2)
            dequeue
            echo
            ;;
        3)
            peek
            echo
            ;;
        4)
            initialize
            echo
            ;;
        5)
            isempty
            echo
            ;;
        6)
            isfull
            echo
            ;;
        7)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice. Please try again."
            echo
            ;;
    esac
done

echo "Program exited."
