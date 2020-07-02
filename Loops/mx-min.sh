#!/bin/bash -x

    echo "Enter Size(N)"
    read N

    i=1
    max=0

    while [ $i -le $N ]
    do
    let "num =  $RANDOM % 900 + 100"
    if [ $i -eq 1 ]  #set first number as max
    then
       max=$num
       min=$num
   elif [ $num -gt $max ]
   then
        max=$num
   elif [ $num -le $min ]
   then
        min=$num
  fi
  i=$((i + 1))  #increment i by 1
done

echo $max
echo $min
