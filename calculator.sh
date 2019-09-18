#!/bin/bash
#this file adds both negative and positive numbers while giving you the product of the numbers you put in
# choose the calculation that you need to do by typing
#calculator.sh add number  --- this will give you the sum of all the number you put it in with positive result
#calculator.sh minus number  --- this will give you the sum of all the number but with negative result
#calculator.sh product number  --- this will give you the product of the given numbers 

if [ "$1" == add ]; then
        add=0
        for arg in "$@"
        do
                (( add= $add + arg ))
        done
        echo "the sum of the arguments is $add"

elif [ "$1" == minus ]; then
        minus=0
        for arg in "$@"
        do
                (( minus= $minus - arg ))
        done
        echo "the difference of the arguments is $minus"

elif [ "$1" == product ]; then
        product=1
        for arg in "$@"
        do
                (( product= $product * arg ))
        done
        echo "the product of the arguments is $product";
fi

