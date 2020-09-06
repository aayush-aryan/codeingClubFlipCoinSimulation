#!/bin/bash -x

echo WELCOME TO FLIP COIN SIMULATOR
isHead=0;
isHeadWon=0;
isTailWon=0;

for (( count=0; count<=10; count++ ))
do
	randomCheck1=$(( RANDOM%2 ))

if [[ isHead -eq randomCheck1 ]]
then
	echo "Head"
	isHeadWon=$(( $isHeadWon + 1 ))
else
	echo "Tail"
	isTailWon=$(( $isTailWon + 1 ))
fi
done

echo "Total Number Of Head Win is:  $isHeadWon"
echo "Total Number Of Tail Win is: $isTailWon"
