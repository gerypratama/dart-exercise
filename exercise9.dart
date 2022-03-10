//dart exercise series no.9 taken from
//https://hackmd.io/@kuzmapetrovich/S1x90jWGP
//
//Problem: Generate a random number between 1 and 100.
//Ask the user to guess the number, then tell them
//whether they guessed too low, too high, or exactly right.

import 'dart:io';
import 'dart:math';

void main() {
  int guessCount = 1;
  int guess = 0;
  int rng = Random().nextInt(99) + 1;

  while (guess != rng) {
    print('guess the number between 1 and 100:');
    guess = int.parse(stdin.readLineSync()!);

    if (guess > 100) {
      print('invalid number!');
    } else if (guess < rng) {
      print('too low!');
    } else if (guess > rng) {
      print('too high!');
    } else if (guess == rng) {
      print('correct! the number is $rng');
      print('you took $guessCount guesses to get it right');
      break;
    }
    guessCount++;
  }
}
