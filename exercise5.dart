//dart exercise series no.5 taken from
//https://hackmd.io/@kuzmapetrovich/S1x90jWGP
//
//Problem: Take two lists, and write a program that returns a list that contains
//only the elements that are common between them (without duplicates).
//Make sure your program works on two lists of different sizes.

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print('Please enter the lenght of the first list:');
  int lenFirst = int.parse(stdin.readLineSync()!);
  print('Please enter the lenght of the second list:');
  int lenSecond = int.parse(stdin.readLineSync()!);

  Random rnd = Random();
  List<int> firstList = [];
  List<int> secondList = [];

  print('Original First List:');
  for (int i = 0; i < lenFirst; i++) {
    firstList.add(rnd.nextInt(10));
    print(firstList[i]);
  }

  print('Original Second List:');
  for (int i = 0; i < lenSecond; i++) {
    secondList.add(rnd.nextInt(10));
    print(secondList[i]);
  }

  List<int> firstSet = firstList.toSet().toList();
  List<int> secondSet = secondList.toSet().toList();

  print('All common list elements:');

  // One Liner

  print(Set.from(firstList).intersection(Set.from(secondList)).toList());

  // The Hard Way

  // List<int> intersect = [];
  // for (int i = 0; i < firstSet.length; i++) {
  //   for (int j = 0; j < secondSet.length; j++) {
  //     if (firstSet[i] == secondSet[j]) {
  //       intersect.add(firstSet[i]);
  //     }
  //   }
  // }
  // intersect.forEach((element) {
  //   print(element);
  // });
}
