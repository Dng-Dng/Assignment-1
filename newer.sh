#'find' looks for name of argument entered in current directory
#ls -t list all files in the directory from time modified descending order (latest to oldest)
#head -1 prints first file in output 

#!/bin/bash
# find . -name "$*" | ls -t "$*" | head -1
ls -t "$@" | head -1
# for fileName in "$@"
# do
    # ls -t "$@" | head -1
# done 