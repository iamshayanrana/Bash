##  Write a script that takes a text file as input and outputs the top 5 most common words along with their frequencies, sorted in descending order.

#!/bin/bash

input_file="$1"

if [ -z "$input_file" ]; then

echo "Usage: $0 <input_text_file>"

exit 1

fi

# Extract words from the file, convert to lowercase, and count occurrences

words=$(<"$input_file" tr '[:upper:]' '[:lower:]' | tr -s '[:space:]' '\n' | sort)

word_count=$(echo "$words" | uniq -c | sort -nr)

# Output the top 5 most common words

echo "Top 5 most common words:"

echo "$word_count" | head -n 5 | awk '{print $2 ": " $1}'


