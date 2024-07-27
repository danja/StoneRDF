#!/bin/bash

# Define the output file
OUTPUT_FILE="docs/environment.txt"

# Create the docs directory if it doesn't exist
# mkdir -p docs

# Get the current working directory
CURRENT_DIR=$(pwd)

# Write the current working directory to the output file
echo "Current Working Directory:" > "$OUTPUT_FILE"
echo "$CURRENT_DIR" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Get the tree of subdirectories and files
echo "Directory Tree:" >> "$OUTPUT_FILE"
tree >> "$OUTPUT_FILE"

# Print a message indicating the script has completed
echo "Environment information has been saved to $OUTPUT_FILE"
