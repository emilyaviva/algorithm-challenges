# Pico Fermi Bagels

## Rules
The referee thinks of a four-digit number, where no digit may repeat. The object of the player is to guess the number. The referee will answer the player's guess with some combination of "Pico", "Fermi", and "Bagels", explained as follows:

- **Pico** — A digit is correct, but in the wrong place.
- **Fermi** — A digit is correct, and in the correct place.
- **Bagels** — None of the digits are correct.

In the event that more than one digit in the player's guess merits a Pico or a Fermi, the referee will answer 'Fermi Pico', or 'Fermi Fermi', or 'Fermi Pico Pico', as appropriate. Any 'Fermi's in the answer are always stated before any 'Pico's.

Examples where my number is 1234:
- You guess 7892. I answer 'Pico'.
- You guess 2345. I answer 'Pico Pico Pico'.
- You guess 2430. I answer 'Fermi Pico Pico'.
- You guess 5678. I answer 'Bagels'.

## Challenges
1. Implement this game in your favorite programming language. The game should tell the player the number of turns it took for the player to guess.

2. Calculate the minimum number of guesses that it _must_ take to find the number. (Hint: it may help to start thinking about a 2-digit game, then a 3-digit game.)
