// dart exercise series no.11 taken from
// https://hackmd.io/@kuzmapetrovich/S1x90jWGP
//
// Problem: Write a program that takes a list of numbers for example
// a = [5, 10, 15, 20, 25]
// and makes a new list of only the first and last elements of the given list.
// For practice, write this code inside a function.

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  while (true) {
    print('Insert the length of the list: ');
    int? listLength = int.tryParse(stdin.readLineSync()!);
    (listLength == null || listLength <= 0)
        ? print('INVALID INPUT')
        : headTail(listLength);
    break;
  }
}

void headTail(length) {
  final numberList = <int>[];
  for (int i = 0; i < length; i++) {
    numberList.add(Random().nextInt(51));
  }
  print('Original list:');
  print(numberList);
  print('List head & tail:');
  print('${numberList.first} & ${numberList.last}');
}
