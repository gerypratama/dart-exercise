//dart exercise series no.8 taken from
//https://hackmd.io/@kuzmapetrovich/S1x90jWGP
//
//Problem: Make a two-player Rock-Paper-Scissors game
//against computer.

import 'dart:io';
import 'dart:math';

void main() {
  int limit = 1;
  int win = 0;
  int lose = 0;
  game:
  for (int i = 0; i < limit; i++) {
    print('rock/paper/scissors game');
    print('please choose one number:');
    print('(1 - Rock)');
    print('(2 - Paper)');
    print('(3 - Scissors)');
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        {
          print('You chose Rock');
          break;
        }
      case 2:
        {
          print('You chose Paper');
          break;
        }
      case 3:
        {
          print('You chose Scissors');
          break;
        }
      default:
        {
          print('Invalid Choice!');
          break game;
        }
    }

    int rng = new Random().nextInt(2) + 1;
    switch (rng) {
      case 1:
        {
          print('CPU chose Rock');
          break;
        }
      case 2:
        {
          print('CPU chose Paper');
          break;
        }
      case 3:
        {
          print('CPU chose Scissors');
          break;
        }
      default:
        {
          break;
        }
    }

    if ((choice == 1 && rng == 3) ||
        (choice == 2 && rng == 1) ||
        (choice == 3 && rng == 2)) {
      win++;
      print('You Win!');
    } else if ((choice == 1 && rng == 2) ||
        (choice == 2 && rng == 3) ||
        (choice == 3 && rng == 1)) {
      lose++;
      print('You Lose!');
    } else if (choice == rng) {
      print('Draw!');
    }
    print('play: ${i + 1}');
    print('Win: $win');
    print('Lose: $lose');
    print('Draw: ${(i + 1) - (win + lose)}');
    print('play again?(y/n)');
    String input = stdin.readLineSync()!.toLowerCase();
    if (input == 'n') {
      print('play: ${i + 1}');
      print('Win: $win');
      print('Lose: $lose');
      print('Draw: ${(i + 1) - (win + lose)}');
      break;
    } else if (input == 'y') {
      limit++;
    }
  }
}
