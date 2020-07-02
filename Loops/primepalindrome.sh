#!/bin/bash -x

read num

for(( j=1; j<3; j++ ))
do
	prime=1

	if [ $num -eq 1 ]
	then
        	prime=0
        	echo "for 1"
	fi

	for (( i=2; i<=num/2; i++ ))
	do
        	oper=$(( num%i ))
        	#echo "for oper in for loop $i: $oper"

	if [ $oper -eq 0 ]
	then
        	prime=0
        	break
	fi
	done
		echo "$prime"
	if [ $prime -eq 1 ]
	then
        	echo "$num is Prime"
	else
        	echo "$num is not Prime"
	fi

	if [ j==1 ]
	then
		s=0
		rev=""

	while [ $num -gt 0 ]
	do
    		s=$(( $num % 10 ))
    		num=$(( $num / 10 ))
    		rev=$( echo ${rev}${s} )
	done
	fi
	num=$rev

done
echo $rev

