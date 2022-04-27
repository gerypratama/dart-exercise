// dart exercise series no.10 taken from
// https://hackmd.io/@kuzmapetrovich/S1x90jWGP
//
// Problem: Ask the user for a number and
// determine whether the number is prime or not.
// Do it using a function

import 'dart:io';

void main(List<String> args) {
  while (true) {
    print('Insert a round positive number:');
    int? number = int.tryParse(stdin.readLineSync()!);
    if (number != null) {
      if (number <= 0) {
        print('INVALID INPUT');
      } else if (number == 1) {
        print('Not a Prime number');
      } else if (number == 2 || number == 3) {
        print('Prime number');
      } else {
        isPrime(number);
      }
    } else {
      print('INVALID INPUT');
    }
    break;
  }
}

void isPrime(int input) {
  List<int> divisionRemainder = [];
  for (int i = input - 1; i > 1; i--) {
    divisionRemainder.add(input % i);
  }
  print(divisionRemainder.contains(0) ? 'Not a prime number' : 'Prime number');
}
