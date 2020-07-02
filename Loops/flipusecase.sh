#!/bin/bash -x

winh=0
wint=0

tie=0

while [ ($winh -le 21 -o $wint -le 21) -a $tie -eq 0 ]
do

        rand=$(( RANDOM % 2 ))

        if (( $rand == 1 ))
        then
                echo Heads
                winh=$(( $winh+1 ))
                echo $winh
        else
                echo Tails
                wint=$(( $wint+1 ))
                echo $wint
        fi
	if (( $winh -eq $wint -a $winh -eq 20 ))
	then
		$tie=1
	fi
done


echo "head: "$winh
echo "tail: "$wint

if [ $winh -gt $wint ]
then
        windiff=$(( $winh - $wint ))
        echo $eindiff
else
        windiff=$(( $wint - $winh ))
        echo $windiff
fi

while [ $windiff -lt 2 ]
do

        rand=$(( RANDOM % 2 ))

        if (( $rand == 1 ))
        then
                echo Heads
                winh=$(( $winh+1 ))
                echo $winh
        else
                echo Tails
                wint=$(( $wint+1 ))
                echo $wint
        fi
	windiff=$((abs($winh-$wint)))
	
done

echo "difference in count: "$windiff
