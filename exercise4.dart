//dart exercise series no.4 taken from
//https://hackmd.io/@kuzmapetrovich/S1x90jWGP
//
//Problem:
//Create a program that asks the user for a number and then prints out
//a list of all the divisors of that number.

import 'dart:io';

void main(List<String> args) {
  print('Insert a whole positive nummber:');
  int number = int.parse(stdin.readLineSync()!);
  print('Possible divisor:');
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      print(i);
    }
  }
}
