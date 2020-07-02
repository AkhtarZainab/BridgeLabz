#!/bin/bash -x

read FN
read LN


for (( j=FN; j<=LN; j++ ))
do
	prime=1

	if [ $j -eq 1 ]
	then
        	prime=0
        	echo "for 1"
	fi

	for (( i=2; i<=j/2; i++ ))
	do
        	oper=$(( j%i ))
        	echo "for oper in for loop $i: $oper"

		if [ $oper -eq 0 ]
		then
        		prime=0
        		break
		fi
	done

	#echo "$prime"

	if [ $prime -eq 1 ]
	then
        	echo "The number $j is Prime"
	else
        	echo "The number $j is not a Prime"
	fi
done

