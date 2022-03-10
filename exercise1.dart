//dart exercise series no.1 taken from
//https://hackmd.io/@kuzmapetrovich/S1x90jWGP
//
//Problem:
//Create a program that asks the user to enter their name and their age.
//Print out a message that tells how many years they have to be 100 years old.

import 'dart:io';

void main(List<String> arguments) {
  print('');
  print('Welcome to the 100 AGE CALCULATOR');
  print('');
  print('Please enter your name:');
  String name = stdin.readLineSync()!;
  print('Now, please enter your age:');
  int age = int.parse(stdin.readLineSync()!);
  print('');
  if (age < 1 || age > 100) {
    print(
        'Either you are lying, too old, or just not smart enough to follow instruction');
  } else {
    stdout.writeAll([
      'Hi, ',
      name,
      '! You are now ',
      (100 - age),
      ' year away from being 100 y.o!'
    ]);
  }
}
