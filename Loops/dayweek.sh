#!/bin/bash -x

read m
read d
read y

y0=$(( y - (14 - m) / 12 ))

x=$(( y0 + y0 / 4 - y0 / 100 + y0 / 400 ))

m0=$(( m + 12 * ((14 - m) / 12 ) - 2 ))

d0=$(( (d + x + 31 * m0 / 12 ) % 7 ))

echo "Day of the week is $d0 "
