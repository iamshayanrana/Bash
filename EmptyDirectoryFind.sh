### Design a script that recursively finds and lists all empty directories within a specified directory.
#!/bin/bash

search_directory="$1"

if [ -z "$search_directory" ]; then

echo "Usage: $0 <directory_to_search>"

exit 1

fi

echo "Empty directories in $search_directory:"

find "$search_directory" -type d -empty
