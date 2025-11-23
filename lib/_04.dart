import 'dart:io';

List<int> getDivisors() {
  print("Choose a number");
  String input = stdin.readLineSync() ?? "";
  int? number = int.tryParse(input);

  if (number == null || number <= 0) {
    return [];
  }

  List<int> results = [];
  int increment = 1;

  while (increment < number) {
    if (number % increment == 0) results.add(increment);
    increment++;
  }
  return results;
}
