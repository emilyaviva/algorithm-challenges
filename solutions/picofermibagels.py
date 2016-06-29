#!/usr/bin/env python

import random

def create_random_number():
	lgth = int(raw_input("How many digits long should the number I think of be? "))
	try:
		answer = random.sample(range(10),lgth),
	except ValueError:
		print "Can't be more than 10 digits long."
		create_random_number()
	except TypeError:
		print "That's not a number."
		create_random_number()
	numbers = random.sample(range(10),lgth)
	a = ''
	for i in range(lgth):
		a += str(numbers[i])
	return a

def create_clue_string(guess,secret):
	if guess == secret:
		return "Correct!"
	clue = []
	for i in range(len(guess)):
		if guess[i] == secret[i]:
			clue.append('Fermi')
		elif guess[i] in secret:
			clue.append('Pico')
	if len(clue) == 0:
		return 'Bagels'
	clue.sort()
	return ' '.join(clue)

def is_only_digits(n):
	if n == '':
		return False
	for i in n:
		if i not in '0 1 2 3 4 5 6 7 8 9'.split():
			return False
	return True

def ask_to_play_again():
	answer = raw_input("Play again? (Yes/no) ")
	if (str.lower(answer) in ('y','yes') or answer == ''):
		return True
	elif str.lower(answer) in ('n','no'):
		return False
	else:
		print "Not a valid response."
		if ask_to_play_again():
			return True
		else:
			return False

while True:
	answer = create_random_number()
	guesses = 1
	while True:
		guess = ''
		while len(guess) != len(str(answer)) or not is_only_digits(guess):
			guess = raw_input("Guess #" + str(guesses) + ": ")
		clue = create_clue_string(guess,answer)
		print "  " + clue
		guesses += 1
		if guess == answer:
			break
	if not ask_to_play_again():
		break
