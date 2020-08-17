#!/bin/bash -x
echo "team A"
echo "0:Head"
echo "1:Tail"
wa=0
la=0
read -p "enter a choice" ansa

echo "team B"
echo "0:Head"
echo "1:Tail"
wb=0
lb=0
read -p "enter a choice" ansb

while [ 1 ]
do
ran=$((RANDOM%2))
if [ $ansa -le '1' -a $ansb -le '1' ]
then
if [ $ran -eq $ansa ]
then
wa=$(($wa+1))
lb=$(($lb+1))
echo "winner team A "$wa" times"
if [ $wa -eq 21 ]
then
echo "by "$(($wa-$wb))
break
fi
else
wb=$(($wb+1))
la=$(($la+1))
echo "winner team b" $wb " times"
if [ $wb -eq 21 ]
then
echo "by "$(($wb-$wa))

break
fi

fi
else
echo "wrong number entered"
fi
done
