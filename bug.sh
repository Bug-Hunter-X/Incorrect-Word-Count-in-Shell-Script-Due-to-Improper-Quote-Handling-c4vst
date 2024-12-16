#!/bin/bash

# This script attempts to process a large file line by line,
# but it has a subtle bug related to how it handles word counting.

FILE="large_file.txt"

while IFS= read -r line; do
  words=($line)
  word_count=${#words[@]}
  echo "Line: $line, Word Count: $word_count"
done < "$FILE"