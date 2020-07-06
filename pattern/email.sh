#!/bin/bash -x

read email

emailpat="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})$"

if [[ $email =~ $emailpat ]]
then
	echo yes
else
	echo no
fi
