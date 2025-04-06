README.md: guessinggame.sh
	@echo "Generating README.md..."
	@echo "# Guessing Game" > README.md
	@echo "This is a simple guessing game implemented in Bash." >> README.md
	@echo "Date and Time: $(shell date)" >> README.md
	@echo "Number of lines of code in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "The game will ask the user to guess the number of files in the current directory." >> README.md

# A rule to allow the user to clean generated files (optional)
clean:
	rm -f README.md
