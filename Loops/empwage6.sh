#!/bin/bash -x

isparttime=1
isfulltime=2
totsal=0
emprate=20
numwrkdays=20

for (( day=1; day<=$numwrkdays; day++ ))
do
	empcheck=$((RANDOM%3))
		case $empcheck in
			$isfulltime) emphrs=8;;
			$isparttime) emphrs=4;;
				  *) emphrs=0;;
		esac

	sal=$(($emphrs*$emprate));
	totalsal=$(($totalsal+$sal));
done

