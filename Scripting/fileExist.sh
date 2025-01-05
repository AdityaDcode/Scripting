#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 directory filename"
  exit 1
fi

directory=$1
filename=$2

# Check if the directory exists
if [ ! -d "$directory" ]; then
  echo "Error: Directory '$directory' does not exist!"
  paplay /usr/share/sounds/freedesktop/stereo/dialog-error.oga  # Failure sound
  exit 1
fi

# Check if the file exists
if [ -f "$directory/$filename" ]; then
  echo "File '$filename' exists in the directory '$directory'."
  paplay /usr/share/sounds/freedesktop/stereo/complete.oga  # Success sound
else
  echo "File '$filename' does not exist in the directory '$directory'."
  paplay /usr/share/sounds/freedesktop/stereo/dialog-error.oga  # Failure sound
fi

