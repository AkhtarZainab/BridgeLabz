#!/bin/bash -x

read inp2

if [ $( echo "

n=$(echo | awk '{print inp2*(1/0.305)}' )
echo $n
