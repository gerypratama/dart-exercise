//dart exercise series no.7 taken from
//https://hackmd.io/@kuzmapetrovich/S1x90jWGP
//
//Problem: Let’s say you are given a list saved in a variable.
//Write a Dart code that takes this list and makes a new list
//that has only the even elements of this list in it.

import 'dart:io';
import 'dart:math';

void main() {
  List<int> masterList = [];
  Random rng = Random();
  print('Please input a number of the will-be-generated list length:');
  int len = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < len; i++) {
    masterList.add(rng.nextInt(50));
  }

  print('');
  print('Original list:');
  print(masterList);
  print('');
  print('Even list\'s element subset:');

  for (int count = 0; count < masterList.length; count++) {
    if (count % 2 != 0) {
      print(masterList[count]);
    }
  }
}
