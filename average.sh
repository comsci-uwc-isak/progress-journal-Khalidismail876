#!/bin/bash

valid=true
sum=0
#n=0
while $valid
do
	echo "Enter a number or Exit (X): "
	read num
	if [ "$num" = X ]; then
		echo "exiting"
		valid=true
	fi
	(( sum=num+sum ))
	(( n++ ))
	(( ave=sum/n ))
	echo "running average is: "$ave
done
echo "exiting"
