//dart exercise series no.6 taken from
//https://hackmd.io/@kuzmapetrovich/S1x90jWGP
//
//Problem: Ask the user for a string and print out
//whether this string is a palindrome or not.

import 'dart:io';

void main(List<String> args) {
  print('Please input a text to test');
  print('whether it is a Palindrome:');
  String text = stdin.readLineSync()!.toLowerCase();
  String textRev = text.split('').reversed.join();
  print('Reversed: $textRev');
  print(text == textRev ? 'It is Palindrome' : 'It is not Palindrome');
}
