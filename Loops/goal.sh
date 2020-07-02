#!/bin/bash -x

amt=100
bet_count=0
win_count=0

while [ $amt != 200 -a $amt != 0 ]
do
	amt=$(( $amt-1 ))
	bet_count=$(( $bet_count+1 ))

	rand=$(( RANDOM % 2 ))

	if (( $rand == 1 ))
	then
		echo win
		amt=$(( $amt+2 ))
		win_count=$(( $win_count+1 ))
	else
		echo loss
	fi
done
echo $bet_count
echo $win_count
