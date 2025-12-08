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

String generatePassword(int length) {
  return 'password';
}
