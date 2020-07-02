#!/bin/bash -x

length=60
breadth=40

area_cm=$(( length * breadth * 30 * 30 ))
area_m=$(( area_cm / 10000 ))

echo "60 ft * 40 ft equals $area_m"
