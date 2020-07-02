#!/bin/bash -x

let "die1 = $(( RANDOM % 6 + 1 ))" # Roll first one.
let "die2 = $(( RANDOM % 6 + 1 ))" # Roll second one.

let "sum = $die1 + $die2"
echo "Sum of the die = $sum"
