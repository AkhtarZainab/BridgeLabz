#!/bin/bash -x

read a
read b
read c

max=0
min=0

p=$((a+b*c))
q=$((a%b+c))
r=$((c+a/b))
s=$((a*b+c))

if [ $p -ge $q ] 
then
	max=$p
	min=$q
else
	max=$q
	min=$p
fi
if [ $r -ge $max ]
then
	max=$r
elif [ $r -le $min ]
then
	min=$r
fi
if [ $s -ge $max ]
then
	max=$s
elif [ $r -le $min ]
then
	min=$s
fi
echo $max
echo $min
