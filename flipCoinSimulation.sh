#!/bin/bash -x

echo WELCOME TO FLIP COIN SIMULATOR


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

echo Usecase4
if [[ isHeadWon -eq isTailWon ]]
then
while [[ $WinDifference -ge 2 ]]
do
	randomCheck2=$(( RANDOM%2 ))

if [[ IsHead -eq randomCheck2 ]]
then
	echo "Head"
	IsHeadWon=$(( $IsHeadWon + 1 ))
	WinDifference=$(( $IsHeadWon - $IsTailWon ))
else
	echo "Tail"
	IsTailWon=$(( $IsTailWon + 1 ))
	WinDifference=$(( $IsTailWon - $IsHeadWon ))
fi
done
else
	echo "Tie"
fi
