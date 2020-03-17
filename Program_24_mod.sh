time=$(date +%I) #Return current time in 12 hour format and store in time
cur_min=$(date +"%M") #return the minutes only of the current time and store in cur_min   
count=0

#Chime for the hour 
while test $count -lt $time; do
  echo -e "\a"
  sleep 1 # sleep for one second
  count=$[$count+1]
done

sleep 3 # sleep for 3 second

#if coniditons to determine which 15 minute interval the clock is currently at
if [[ "$cur_min" -ge 15 && "$cur_min" -lt 30 ]]; then
    echo -e "\a" #chime once if inbetween 15-30 mins
elif [[ "$cur_min" -ge 30 && "$cur_min" -lt 45 ]]; then
	for i in {1..2} #chime twice if inbetween 30-45 mins
	do
		sleep 1
		echo -e "\a"
	done
elif [[ "$cur_min" -ge 45 && "$cur_min" -lt 60 ]]; then
	for i in {1..3} #chime three times if inbetween 45-60 mins
	do
		sleep 1
		echo -e "\a"
	done
fi