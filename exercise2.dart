//dart exercise series no.2 taken from
//https://hackmd.io/@kuzmapetrovich/S1x90jWGP
//
//Problem:
//Ask the user for a number. Depending on whether the number is even or odd,
//print out an appropriate message to the user.

import 'dart:io';

void main(List<String> arguments) {
  print('');
  print('ODD-EVEN NUMBER DISTINGUISHER');
  print('');

  print('Please enter a round number');
  int num = int.parse(stdin.readLineSync()!);

  int mod = num % 2;

  print('');
  print('The entered number is:');
  print((mod == 0) ? 'EVEN' : 'ODD');
}
