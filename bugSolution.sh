#!/bin/bash

# This script correctly processes a large file line by line,
# handling word counting accurately even with quoted strings.

FILE="large_file.txt"

while IFS= read -r -d $'\n' line; do  #read with delimiter \n to avoid splitting within quotes
  words=( $(echo "$line" | xargs) ) # properly split only words even with quotes
  word_count=${#words[@]}
  echo "Line: $line, Word Count: $word_count"
done < "$FILE"