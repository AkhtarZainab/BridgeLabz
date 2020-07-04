#!/bin/bash -x

declare -A flipCoin
#counter for storing value based on index
doubleCoinCounter=0
while true
do
    read -p "Do you like to toss a single press 1 or double press 2 or triple coin press 3 or exit :" userInput
    case $userInput in
    2)
       coinOne=$((RANDOM%2))
       coinTwo=$((RANDOM%2))
       #the possibilities are 1,1  1,0  0,0
       headOrTail=$(($coinOne+$coinTwo))
       #i am adding both coins if it reaches 0 means heads wins if it gives 2 means tail win
       if [ $headOrTail -eq 0 ]
       then
            doubleArray[$doubleCoinCounter]=0
            doubleCoinCounter=$(($doubleCoinCounter+1))
            echo "head wins"
       elif [ $headOrTail -eq 2 ]
       then
            doubleArray[$doubleCoinCounter]=1
            doubleCoinCounter=$(($doubleCoinCounter+1))
            echo "Tail wins"
       else
            echo "Draw"     
       fi
       ;;
    *)
    break;;
    esac     
done
flipCoin["doublet"]=${doubleArray[@]}
headWinCount=0
tailWinCount=0
for coin in ${flipCoin["doublet"]}
do
    if [ $coin -eq 0 ]
    then
        headWinCount=$(($headWinCount+1))
    else
        tailWinCount=$(($tailWinCount+1))
    fi      
done
doubleArrayLength=${#doubleArray[@]}
headWiningPercentage=$(echo |awk '{print (one/two)*100}' one=$headWinCount two=$doubleArrayLength)
echo "in doublet head has $headWiningPercentage% winning chance"
