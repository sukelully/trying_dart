import 'dart:io';

String reverseSentence() {
  stdout.write('Give us sentence then: ');
  String input = stdin.readLineSync() ?? '';

  return input.split(' ').reversed.join(' ');
}
