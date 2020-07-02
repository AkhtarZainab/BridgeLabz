#!/bin/bash -x

let "num1 = $RANDOM % 90 + 10"
let "num2 = $RANDOM % 90 + 10"
let "num3 = $RANDOM % 90 + 10"
let "num4 = $RANDOM % 90 + 10"
let "num5 = $RANDOM % 90 + 10"
       
let "sum=$num1+$num2+$num3+$num4+$num5"
echo "Sum is $sum"
let "avg=$sum/5"
echo "Avg is $avg"
