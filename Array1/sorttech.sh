 #!/bin/bash -x

arraysort=()

for(( i=1; i<=10; i++ ))
do
	rand=$(( $RANDOM%900 + 100 ))
	arraysort+=($rand)
done
echo ${arraysort[@]}


for (( j=0; j<10; j++ ))
do
	for (( k=0; k<10-j-1; k++ ))
	do

	        if [ ${arraysort[k]} -gt ${arraysort[$((k+1))]} ]
        	then
	        	temp=${arraysort[k]}
           		arraysort[$k]=${arraysort[$((k+1))]}
            		arraysort[$((k+1))]=$temp

	        fi
	done
done

echo ${arraysort[@]}
echo "Second Smallest : "${arraysort[1]}
echo "Second Largest : "${arraysort[8]}
