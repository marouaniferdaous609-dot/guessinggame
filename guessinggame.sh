#!/bin/bash
# Simple number guessing game
# Generate a random number between 1 and 100
target=$(( RANDOM % 100 + 1 ))
echo "Welcome to the Number Guessing Game!"
echo "I have chosen a number between 1 and 100."
echo "Try to guess it!"
attempts=0
while true; do
    read -p "Enter your guess: " guess
    ((attempts++))
    if [[ $guess -lt $target ]]; then
        echo "Too low! Try again."
    elif [[ $guess -gt $target ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed it in $attempts attempts."
        break
    fi
done
