#!/bin/bash -x

echo "Try ur luck"
echo "think a number in the range 1-100 : "
for ((i=0; i<100; i++))
do
    numberArray[$i]=$(($i+1)) 
done
while true
do
    middleNumber=$((${#numberArray[@]}/2))
    middleValue=${numberArray[$(($middleNumber-1))]}
    echo "whether your thinking value is $middleValue"
    read -p "press 1 for yes ,0 for no : " userResponce
    if [ $userResponce -eq 1 ]
        then
            echo "hurray i found it"
            break;
    else
        echo ";( ok,whether the guessed value is lesser than $middleValue"
        read -p "press 1 if it is greater press 2 : " userSecondResponce
        if [ $userSecondResponce -eq 1 ]
            then
                newArray=()
                for ((j=0; j<$(($middleValue)); j++))
                    do
                        echo $j
                        newArray[$j]=$(($j+1))
                    done
                    numberArray=(${newArray[@]})    
        else    
            newArrayTwo=()
                for ((k=$(($middleValue)); k<100; k++))
                    do
                        newArrayTwo[$k]=$(($k+1))
                    done
                    numberArray=(${newArrayTwo[@]})       
        fi
    fi
    echo ${numberArray[@]}
done   

