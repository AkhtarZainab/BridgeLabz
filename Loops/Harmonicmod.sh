#!/bin/bash -x
harmonic=1
read -p "Enter a number : " number
for (( i=2; i<=$number; i++ ))
do
   #1+1/2+1/3.....n
   harmonic=$(echo |awk '{print one+1/two}' one=$harmonic two=$i)
done
echo $harmonic
