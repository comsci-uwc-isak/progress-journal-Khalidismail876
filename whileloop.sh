#!/bin/bash

((X=(RANDOM % 100)+ 1))
playing=true
try=0

while $playing 
do
	echo "Enter a Number"
	read num
	((try++))
	if [ $num -gt $X ]; then
		echo "too big"
	
	else

		if [ $num -lt $X ]; then 
			echo "too small"
		fi
	fi
	if [ $num -eq $X ]; then
		echo "you won with" $try "trials"
		playing=false
	
	fi

done

echo "Game Over"
exit
