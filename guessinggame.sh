#!/usr/bin/env bash

# Guessing Game

# The number of files only in the current directory
nfiles="$(find . -maxdepth 1 -type f | wc -l)"

# Put this code into a function, only to fulfill one of the requirements of the assignment
function guessFilesInDir
{
	read -p "> How many files are in the current directory? `echo $'\n> '`" guess

	if [[ "$guess" -eq  "$nfiles" ]]
	then
		echo "Congratulations! You guessed it :)"
		return 1

	elif [[ "$guess" -gt "$nfiles" ]]
	then
		echo "Your guess is too high! Try again..."

	elif [[ "$guess" -lt "$nfiles" ]]; then
		echo "Your guess is too low! Try again..."
	fi
}

# While user doesnt guess correctly the number of files
while true
do
	guessFilesInDir;
	if [ $? -eq 1 ]; then break; fi
	echo ''
done