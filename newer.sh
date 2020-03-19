#Question 1
#ls -t list all files in inputted argument ('$@') and sort by time modified
#head -1 prints latest modified file from sorted arguments

#!/bin/bash
if [ $# -gt 0 ]; then
	ls -t "$@" | head -1
else
    echo "No arguments provided"
fi
