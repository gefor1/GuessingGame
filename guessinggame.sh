#!/bin/bash
#guessinggame.sh - Program made to guess how many files are in the directory.
read -p "Guess how many files are in this directory!: " guess
exact=`ls | wc -l`

while [ "$guess" != $exact ]
do

if [ $guess -gt $exact ];
then
	echo "Guess is too high! Please guess again!"
elif [ $guess -lt $exact ];
then
	echo "Guess is too low! Please guess again!"
fi

read guess
done

echo "Congratulations! You guessed right!"
exit 1;
