#'find' looks for name of argument entered in current directory
#ls -t list all files in the directory from time modified descending order (latest to oldest)
#head -1 prints first file in output 
 
find . -name $1 | ls -t list | head -1
