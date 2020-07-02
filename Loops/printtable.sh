#!/bin/bash -x

read n

for (( i=1; i<=n; i++ ))
do
	tab=$(( 2**i ))
	echo $tab
done
