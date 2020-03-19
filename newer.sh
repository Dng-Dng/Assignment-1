#Question 1
#if condition checks if a filename was inputted
#if filename detected,
#ls -t list all files in inputted argument ('$@') and sort by time modified
#head -1 prints latest modified file from sorted arguments
#if nothing detected, print 'No arguments provided'
#!/bin/bash
if [ $# -gt 0 ]; then
	ls -t "$@" | head -1
else
    echo "No arguments provided"
fi
