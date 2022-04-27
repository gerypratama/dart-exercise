// dart exercise series no.12 taken from
// https://hackmd.io/@kuzmapetrovich/S1x90jWGP
//
// Problem: Write a program that asks the user how many
// Fibonnaci numbers to generate and then generates them.
// Take this opportunity to think about how you can
// use functions.

import 'dart:io';

void main(List<String> args) {
  while (true) {
    print('How many Fibonnaci numbers you want?');
    int? seriesLength = int.tryParse(stdin.readLineSync()!);
    (seriesLength == null || seriesLength <= 0)
        ? print('INVALID INPUT')
        : generateFibonnaci(seriesLength);
    break;
  }
}

void generateFibonnaci(int length) {
  final fibonnaci = <int>[];

  switch (length) {
    case 1:
      fibonnaci.add(1);
      break;
    case 2:
      fibonnaci.add(1);
      fibonnaci.add(1);
      break;
    default:
      fibonnaci.add(1);
      fibonnaci.add(1);
      for (int i = 2; i < length; i++) {
        fibonnaci.add(fibonnaci[i - 2] + fibonnaci[i - 1]);
      }
      break;
  }
  print('Fibonnaci series:');
  fibonnaci.forEach((element) {
    stdout.write('$element ');
  });
}
