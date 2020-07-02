#!/bin/bash -x

read n
sum=1

for (( i=1; i<=n; i++ ))
do
	sum=$(echo | awk '{printf "%0.2f\n",($sum+$(1/$i));}') 
done
echo $sum
