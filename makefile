# Makefile for Guessing Game
# Default target
all: run
# Run the guessing game
run:
	bash guessinggame.sh
# Clean any temporary files (if any)
clean:
	rm -f *.o *.tmp
# Phony targets (not real files)
.PHONY: all run clean
