#!/bin/bash -x

function userregistration(){

FNpat="^[A-Z]+[a-z]{3,}*$"
LNpat="^[A-Z]+[a-z]{3,}*$"
Emailpat="^[0-9a-zA-Z]+*(.[0-9a-zA-Z])@[0-9a-zA-Z]+.[0-9a-zA-Z]+(.[0-9a-zA-Z]){2}"
Mobilepat="[0-9]{2,3} [1-9]{1}[0-9]{9}$"
Passwordpat="([0-9a-zA-Z]+[!@._-+]+)*{8,}$"

if (( $FNpat  =~ $1 && $LNpat =~ $2 && $Emailpat =~ $3 && $Mobilepat =~ $4 && $Passwordpat =~ $5 ))
then
	 return 1

else
	return 0

fi
}

echo "enter credential"
read $FN $LN $Emailpat $Mobilepat $Passwordpat
userregistration $FN $LN $Emailpat $Mobilepat $Passwordpat




