#!/bin/bash -x

declare -A birthmonth
for (( i=1; i<=3; i++ ))					# running loop for 3 people...can do the same for i=50...
do
	read year
	rand_month=$(( RANDOM%12 + 1 ))				# if year is not 92 or 93, then it's not accepting in the loop....suppose if 97 is being given
	echo $rand_month
	if [ $year -eq 92 -o $year -eq 93 ]
	then
		birthmonth["  Person "$i]+="$rand_month"

	fi

done
echo "${!birthmonth[@]}"
echo "${birthmonth[@]}"



