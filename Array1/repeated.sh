#!/bin/bash -x

read FN
read LN
arraynum=()

for (( i=FN; i<=LN; i++ ))
do
	
	m=$(( $i%10 ))
	echo $m
	d=$(( $i/10 ))
	echo $d
	
	if [ $m -eq $d ]
	then
		arraynum+=($i)
	fi
done
echo ${arraynum[@]}
