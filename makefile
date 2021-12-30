all: README.md
	
README.md: guessinggame.sh
	touch README.md
	echo "# The Guessing Game program" > README.md
	echo '' >> README.md
	echo "## Description" >> README.md
	echo "This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number." >> README.md
	echo '' >> README.md
	echo "## Information about make command" >> README.md
	echo "It was run at: `date`." >> README.md
	echo '' >> README.md
	echo "## Number of lines in guessinggame.sh" >> README.md
	echo "Number of lines: `wc -l < guessinggame.sh`" >> README.md