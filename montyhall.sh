#!/bin/bash
# Monty Hall game
stat_win=0
stat_lose=0
stat_change=0
onemore=Y
echo "Welcome to the Monty Hall game,
you can win a car or a goat"
while [[ ${onemore} = "Y" ]]
do
declare -a doors
win_door=$(($RANDOM%3+1))
doors[$win_door]="car"
for i in {1..3}
do
if [[ $i -ne $win_door ]]
then
doors[$i]="goat"
fi
done
echo '.---..---..---.
| 1 || 2 || 3 |
°---°°---°°---°'
guess=0
until [[ $guess =~ [1|2|3] ]]
do
echo -n "Please choose one of the doors: (1, 2, 3)> "
read -n 1 guess
echo
done
declare -a rem_doors
#assigns to array values different from $guess
j=1
for i in {1..3}
do
if [[ $i -ne $guess ]]
then
rem_doors[$j]=$i
let j+=1
fi
done
if [[ ${doors[${rem_doors[1]}]} = ${doors[${rem_doors[2]}]} ]] #two goats
then
other_goat=${rem_doors[$((RANDOM%2+1))]}
else
j=1
until [[ ${doors[${rem_doors[$j]}]} = "goat" ]] #find the goat!
do
let j+=1
done
other_goat=${rem_doors[$j]}
fi
last_door=${rem_doors[$((j%2+1))]} # switch btw 1 and 2 maths hack!
echo -n "Behind door $other_goat there's a goat.
Do you want to change your choice to door $last_door? (y/n)> "
read -n 1 switch
if [[ ${switch} = "Y" ]]
then
let stat_change+=1
echo -e "\\nNice! Now your choice is door number $last_door."
guess=$last_door
fi
if [[ $guess -eq $win_door ]]
then
echo -e "\\nCongratulations! You won the car!"
let stat_win+=1
else
echo -e "\\nHere's your brand new... goat! Take care of it!"
let stat_lose+=1
fi
echo "Stats: $((stat_lose+stat_win)) turn(s) played [Win $stat_win / Lose $stat_lose] - Changed door $stat_change time(s)"
echo -n "One more turn (y/n)?> "
read -n 1 onemore && echo
if [[ ${onemore} != "Y" ]]
then
echo "Well, I see, you goat-ta go... Bye!"
fi
done
exit
# Monty Hall game
win=0
lose=0
change=0
k=Y
echo "Welcome to the Monty Hall game,
you can win a car or a goat"
while [[ ${k} = "Y" ]]
do
declare -a 
