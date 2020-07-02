#!/bin/bash -x

read a
read b
read c

p=$((a+b*c))
q=$((a%b+c))
r=$((c+a/b))
s=$((a*b+c))

arraysort=( [1]=$p [2]=$q [3]=$r [4]=$s )

for (( j=1; j<=4; j++ ))
do
        for (( k=1; k<=3; k++ ))
        do

                if [ ${arraysort[k]} -lt ${arraysort[$((k+1))]} ]
                then
                        temp=${arraysort[k]}
                        arraysort[$k]=${arraysort[$((k+1))]}
                        arraysort[$((k+1))]=$temp

                fi
        done
done
echo ${arraysort[@]}
