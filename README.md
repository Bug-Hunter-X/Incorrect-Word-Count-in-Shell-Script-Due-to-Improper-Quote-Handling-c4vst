# Shell Script Word Counting Bug

This repository demonstrates a common bug in shell scripts related to word counting when dealing with lines containing quoted strings with spaces.  The `bug.sh` script incorrectly counts words due to improper handling of word splitting. The `bugSolution.sh` script provides a corrected implementation.

## Bug Description

The `bug.sh` script attempts to count words in a line read from a file.  However, if a line contains a quoted string with spaces, the word count is incorrect because the shell's word splitting behavior is not properly managed.

## Solution

The `bugSolution.sh` script addresses this by using the `read` command with the `-d` option to specify a custom delimiter that avoids splitting within quoted strings.