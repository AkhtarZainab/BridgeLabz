#!/bin/bash -x

winh=0
wint=0

while [ $winh -le 11 -o $wint -le 11 ]
do
	rand=$(( RANDOM % 2 ))

	if (( $rand == 1 ))
	then
		echo Heads
		winh=$(( $winh+1 ))
		echo $winh
	else
		echo Tails
		wint=$(( $wint+1 ))
		echo $wint
	fi
done

