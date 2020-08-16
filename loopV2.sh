#!/bin/bash
echo "0:Head"
echo "1:Tail"
w=0
l=0
read -p "enter a choice" ans
while [ 1 ]
do
ran=$((RANDOM%2))
if [ $ans -le 1 ]
then
if [ $ran -eq $ans ]
then
((w++))
echo "winner "$w" times"
else
((l++))
echo "loser" $l " times"
fi
else
echo "wrong number entered"
fi
done
