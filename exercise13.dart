// dart exercise series no.13 taken from
// https://hackmd.io/@kuzmapetrovich/S1x90jWGP
//
// Problem: Write a program (function) that takes a list
// and returns a new list that contains all the elements
// of the first list minus all the duplicates.

import 'dart:math';

void main(List<String> args) {
  final initialList = <int>[];
  for (int i = 0; i < Random().nextInt(10); i++) {
    initialList.add(Random().nextInt(10));
  }
  print('Initial List:');
  print(initialList);
  print('New List:');
  print(unduplicateList(initialList));
}

List<int> unduplicateList(List<int> sample) {
  var newList = sample.toSet().toList();
  return newList;
}
