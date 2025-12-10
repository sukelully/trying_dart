import 'dart:math';

final _random = Random();
final symbols = [
  '!',
  '"',
  '£',
  '\$',
  '%',
  '^',
  '&',
  '*',
  '(',
  ')',
  "'",
  '<',
  '>',
  '/',
  ':',
  ';',
  '@',
  '.',
  ',',
];
final chars = List<String>.generate(52, (index) {
  if (index < 26) {
    return String.fromCharCode(97 + index); // a-z
  } else {
    return String.fromCharCode(65 + index - 26);
  }
});

final numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
final charPool = [symbols, chars, numbers];

String generatePassword(int length) {
  String password = '';
  for (final arr in charPool) {}
  return 'password';
}
