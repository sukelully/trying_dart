import 'dart:io';

List<int> fibonacci() {
  stdout.write('How many Fibby nummies you want? ');
  String input = stdin.readLineSync() ?? '';
  int? count = int.tryParse(input);
  if (count == null) {
    throw ArgumentError('Invalid input. Please enter a valid number.');
  }

  final fibbyList = [1, 1];
  for (int i = 0; i < count; i++) {
    fibbyList.add(fibbyList[i] + fibbyList[i + 1]);
  }
  return fibbyList;
}
