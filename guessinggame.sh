#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
  echo $(ls -1 | wc -l)
}

# Main function to run the guessing game
guessing_game() {
  local correct_guess=$(count_files)
  local user_guess=0

  echo "Welcome to the Guessing Game!"
  echo "How many files are in the current directory?"

  # Loop until the user guesses correctly
  while [ "$user_guess" -ne "$correct_guess" ]; do
    read -p "Enter your guess: " user_guess

    if [ "$user_guess" -lt "$correct_guess" ]; then
      echo "Too low! Try again."
    elif [ "$user_guess" -gt "$correct_guess" ]; then
      echo "Too high! Try again."
    else
      echo "Congratulations! You guessed the correct number of files."
    fi
  done
}

# Call the guessing game function
guessing_game
