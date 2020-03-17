#Condition to check if no argument is entered
if [ "$#" ==  "0" ]
 then
     echo "This is NOT a test" #if True (no argument) print this line
 else
     echo "This is a TEST" #otherwise, print this line (argument is present)
 fi
