#!/bin/bash

# Check if no arguments are passed
if [ $# -eq 0 ]; then
  echo "Argument not found"
  exit
else
  # Count the number of words (arguments)
  i=$(echo $* | wc -w)
  
  # Initialize temp as empty
  temp=""
  
  # Loop through the arguments in reverse order
  while [ $i -gt 0 ]; do
    # Extract the $i-th argument using cut
    s=$(echo $* | cut -d" " -f$i)
    
    # Append the extracted argument to temp
    temp="$temp $s"
    
    # Decrease i
    i=$(expr $i - 1)
  done

  # Output the results
  echo "Total number of arguments : $#"
  echo "Arguments list : $*"
  echo "Reversed list :$temp"
fi
