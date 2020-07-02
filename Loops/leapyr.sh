#!/bin/bash -x

read y
echo $y
if (( $y % 4 == 0))
then
    
    if (( $y % 100 == 0))
	then
	
    	if (( $y % 400 == 0))
	 then
		echo leapyear
        else
         	echo nonleapyear
	fi
    else 
	echo leapyear
	
    fi
else
    echo nonleapyear
fi
