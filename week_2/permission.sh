#!/bin/bash

# Function to give read and write permission to a file
file_permissions() {
    local file=$1
    
    if [ -f "$file" ]; then
        chmod +rw "$file"
        echo "Read and write permissions granted to file: $file"
    else
        echo "Error: File $file does not exist."
    fi
}

# Function to give read permission to a folder
folder_permissions() {
    local folder=$1
    
    if [ -d "$folder" ]; then
        chmod +r "$folder"
        echo "Read permission granted to folder: $folder"
    else
        echo "Error: Folder $folder does not exist."
    fi
}

# Usage example for giving file permissions
file_path="D:\Practice\file"
file_permissions "$file_path"

# Usage example for giving folder permissions
folder_path="D:\folder"
folder_permissions "$folder_path"
