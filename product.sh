#!/bin/bash

#This file will calculate the product of the given numbers
#to use this file type --bash product.sh given numbers -- 
prod=1    #you want you product to start from 1 not from 0
for arg in $*
do
        (( prod= $prod * arg ))
done
echo "the product of the arguments is $prod"


