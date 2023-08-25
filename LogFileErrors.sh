##   Write a script that scans a log file for errors and generates a summary report with the count of each unique error message.

#!/bin/bash

input_file="$1"

if [ -z "$input_file" ]; then

echo "Usage: $0 <input_log_file>"

exit 1

fi

error_messages=$(grep -i 'error' "$input_file" | sed -E 's/^[[:space:]]*//; s/[[:space:]]*$//' | sort)

error_count=$(echo "$error_messages" | uniq -c | sort -nr)

# Output

echo "Summary of Errors:"

echo "$error_count" | awk '{$1=""; print $0}'
