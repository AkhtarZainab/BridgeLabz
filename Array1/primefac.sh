#!/bin/bash -x

read N
arrayprimefac=()

function isPrime() 
{

	prime=1
	#echo $1

	if [ $1 -eq 1 ]
	then
        	prime=0
        	echo "for 1"
	fi

	#echo `expr sqrt($1)`
	M=$(expr $1 / 2)
	#echo $M
	for (( i=2; i<=$M; i++ ))
	do
        	#echo $1
		#echo $i
		oper=$(expr $1 % $i)
		if [ $oper -eq 0 ]
		then
			prime=0
			break
		fi
	done
	
	return $prime
	
}

isPrime $N
testPrime=$?
	
if [ $testPrime = 0 ]
then
	factorIndex=0
	K=$(( $N / 2 ))
	#echo $K
	for (( j=2; j<=K; j++ ))
	do
		isPrime $j
		testPrime=$?
		#echo "Loop for $j"
		if [ $testPrime -eq 1 ]
		then
			power=1
			factor=$(( $j**$power ))
			rem=$(expr $N % $factor)
			while [ $rem -eq 0 ]			
			do
				arrayprimefac[$factorIndex]=$j
				power=$(( power + 1 ))
				factorIndex=$(( factorIndex + 1 ))
				factor=$(( $j**$power ))
				rem=$(expr $N % $factor)	
			done
		fi
	done
else
	echo "It is a prime number and it's factor is itself"
fi


echo ${arrayprimefac[@]}

