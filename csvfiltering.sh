Design a script that reads a CSV file with columns 'Name', 'Age', and 'Salary', and outputs a CSV with the 'Name' and 'Salary' columns, sorted by age in ascending order.

#!/bin/bash

input_file="$1"

output_file="sorted_output.csv"

if [ -z "$input_file" ]; then

echo "Usage: $0 <input_csv_file>"

exit 1

fi

if [ ! -f "$input_file" ]; then

echo "Input file not found: $input_file"

exit 1

fi

echo "Name,Salary" > "$output_file"

# 'Name' and 'Salary'

tail -n +2 "$input_file" | sort -t ',' -k 2,2n -k 1,1 | awk -F ',' '{print $1 "," $3}' >> "$output_file"

echo "Output saved to $output_file"
