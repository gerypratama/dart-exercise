//dart exercise series no.3 taken from
//https://hackmd.io/@kuzmapetrovich/S1x90jWGP
//
//Problem:// Take a list, say for example this one:

//   a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// and write a program that prints out all the elements of the list
// that are less than 5.
import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  print('Please enter the lenght of the list:');
  int len = int.parse(stdin.readLineSync()!);
  Random rnd = Random();
  List<int> masterList = [];
  print('Original List:');
  for (int i = 0; i < len; i++) {
    masterList.add(rnd.nextInt(10));
    print(masterList[i]);
  }
  print('Filtered:');
  masterList.forEach((number) {
    if (number < 5) {
      print(number);
    }
  });
}
