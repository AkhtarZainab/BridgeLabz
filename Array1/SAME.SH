#!/bin/bash -x

declare -a arraynum
read FN
read LN

for (( i=FN; i<LN; i++))
do

		while [ $i != 0 ]
		do
			temp=$i
			s=0
			rev=""

	    		s=$(( $i % 10 ))
       			n=$(( $i / 10 ))
			rev=$( echo ${rev}${s} )
		done

		if [ $temp -eq $rev ]
		then
			arraynum+=($rev)
		fi
		done

done
echo ${arraynum[@]}


