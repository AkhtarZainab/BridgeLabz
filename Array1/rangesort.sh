#!/bin/bash -x

arraysort=()
arraymax=0
arraysecmax=0
arraymin=0
arraysecmin=0

for(( i=1; i<=10; i++ ))
do
	rand=$(( $RANDOM%900 + 100 ))
	arraysort+=($rand)
done
echo ${arraysort[@]}
arraymax=${arraysort[9]}
arraysecmax=${arraysort[8]}
arraymin=${arraysort[0]}
arraysecmin=${arraysort[1]}

for (( i=0; i<=9; i++ ))
do
	if [ ${arraysort[$i]} -gt $arraymax ]
	then
		arraysecmax=$arraymax		
		arraymax=${arraysort[$i]}	
	elif [ ${arraysort[$i]} -gt $arraysecmax ]
	then
		arraysecmax=${arraysort[$i]}
	elif [ ${arraysort[$i]} -lt $arraymin ]
	then
		arraysecmin=$arraymin		
		arraymin=${arraysort[$i]}
	elif [ ${arraysort[$i]} -lt $arraysecmin ]
	then
		arraysecmin=${arraysort[$i]}
	fi
done
		
echo ${arraysort[@]}
echo $arraymax
echo $arraysecmax
echo $arraysecmin
echo $arraymin