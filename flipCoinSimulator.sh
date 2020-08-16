#!/bin/bash -x
echo "0:Head"
echo "1:Tail"
read -p "enter a choice" ans
ran=$((RANDOM%2))
if [ $ans -le 1 ]
then
if [ $ran -eq $ans ]
then
echo "winner"
else
echo "loser"
fi
else
echo "wrong number entered"
fi
