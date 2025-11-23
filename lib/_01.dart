import 'dart:io';

String yearsTill100() {
  print("What is your name?");
  String? name = stdin.readLineSync();

  print("How old are you?");
  int? age = int.parse(stdin.readLineSync()!);

  int yearsToHundred = 100 - age;
  return ("$name, you have $yearsToHundred years till you are 100.");
}
