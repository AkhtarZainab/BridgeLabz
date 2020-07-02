#!/bin/bash -x

read num
if [ $num == 1 ]
then
	echo "Unit"
elif [ $num == 10 ]
then
	echo "Ten"
elif [ $num == 100 ]
then
	echo "Hundred"
elif [ $num == 1000 ]
then
	echo "Thousand"
else
	echo "Invalid"
fi
