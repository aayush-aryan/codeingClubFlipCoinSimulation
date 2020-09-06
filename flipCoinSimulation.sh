#!/bin/bash -x

echo WELCOME TO FLIP COIN SIMULATOR
check=1
random=$((RANDOM%2))
if (( random == check ))
then
	echo HEAD
else
	echo TAIL
fi

