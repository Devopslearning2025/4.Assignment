#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <test_file>"
    exit 1
fi

# Assign the test file to a variable
test_file=[]

# Use awk to split the words, count occurrences, and print the result
awk '{for (i=1; i<=NF; i++) words[$i]++} END {for (word in words) print word, words[word]}' "$test_file" \
| sort -k2,2nr \
| head -n 5

#awk '{for (i=1; i<=NF; i++) words[$i]++} END {for (word in words) print word, words[word] }'