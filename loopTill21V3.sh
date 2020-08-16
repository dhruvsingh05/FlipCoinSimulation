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
if [ $w -eq 21 ]
then
echo "by "$(($w-$l))
break
fi
else
((l++))
echo "loser" $l " times"
if [ $l -eq 21 ]
then
echo "by "$(($l-$w))

break
fi

fi
else
echo "wrong number entered"
fi
done
