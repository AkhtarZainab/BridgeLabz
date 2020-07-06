#!/bin/bash -x
shopt -s extglob

pat="^[1-9]{1}[0-9]{2} {0,1}[0-9]{3}$"

read -p "enter pin" pin

if [[ $pin =~ $pat ]]
then
	echo yes
else
	echo no
fi

