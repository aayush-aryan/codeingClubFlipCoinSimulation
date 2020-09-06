#!/bin/bash -x

echo WELCOME TO FLIP COIN SIMULATOR

isHead=0;
isHeadWon=0;
isTailWon=0;

while [[ $isHeadWon -lt 21 && $isTailWon -lt 21 ]]
do
	randomCheck=$(( RANDOM%2 ))

if [[ isHead -eq randomCheck ]]
then
	echo "Tail"
	isHeadWon=$(( $isHeadWon + 1 ))
else
	echo "Head"
	isTailWon=$(( $isTailWon + 1 ))
fi
done

echo "Total Number Of Head Win is: $isHeadWon"
echo "Total Number Of Tail Win is: $isTailWon"

if [[ isHeadWon -lt isTailWon ]]
then
	echo "Tail Win"
elif [[ isHeadWon -eq isTailWon ]]
then
	echo "Tie"
else
	echo "Head Win"
fi
