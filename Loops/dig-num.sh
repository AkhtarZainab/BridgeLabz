#!/bin/bash -x

read num

if [ $num == 1 ]
then
	echo "It's Sunday"

elif [ $num == 2 ]
then
	echo "It's Monday"

elif [ $num == 3 ]
then
	echo "It's Tuesday"

elif [ $num == 4 ]
then
	echo "It's Wednesday"

elif [ $num == 5 ]
then
	echo "It's Thursday"

elif [ $num == 6 ]
then
	echo "It's Friday"

elif [ $num == 7 ]
then
	echo "It's Saturday"
else
	echo "Invalid!"
fi
