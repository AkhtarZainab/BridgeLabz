#!/bin/bash -x

i=1
value=1
freqarr=([0]=0 [1]=0 [2]=0 [3]=0 [4]=0 [5]=0)
declare -A diearr

for (( j=1; j<=100; j++ ))
do
#while [ freqarr[$(( $value-1 ))] != 10 ]
#do
	value=$(( RANDOM%6 + 1 ))
	echo $value
	
	diearr["roll "$i]=$value
	(( freqarr[$(( $value-1 ))]++ ))	
	echo ${freqarr[$(( $value-1 ))]}

	if [ ${freqarr[$(( $value-1 ))]} -eq 10 ]
	then
		break
	fi

	i=`expr $i + 1`
	echo $i
#done
done
echo ${!diearr[@]}
echo ${diearr[@]}

