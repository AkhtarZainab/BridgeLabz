#!/bin/bash -x

read num
prime=1

if [ $num -eq 1 ]
then
	prime=0
	echo "for 1"
fi
 

for (( i=2; i<=num/2; i++ ))
do
	oper=$(( num%i ))
	echo "for oper in for loop $i: $oper"

if [ $oper -eq 0 ]
then
	prime=0
	break
fi
done
echo "$prime"
if [ $prime -eq 1 ]
then
	echo "The number is Prime"
else
	echo "The number is not a Prime"
fi
