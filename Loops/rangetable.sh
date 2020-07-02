#!/bin/bash -x

read n
curr_val=0
i=1
a=$(( 2**n ))

if [ $a -gt 256 ]
then
	upper_lim=256
else
	upper_lim=$a
fi
echo $upper_lim


while [ $curr_val -lt $upper_lim ]
do
	curr_val=$(( 2**i ))
	echo $curr_val
	(( i++ ))

done

