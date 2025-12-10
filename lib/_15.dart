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
    return String.fromCharCode(97 + index);
  } else {
    return String.fromCharCode(65 + index - 26);
  }
});

final numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
final charPool = [symbols, chars, numbers];

String generatePassword(int length) {
  if (length <= 0) {
    throw ArgumentError('Password length must be greater than zero.');
  }

  String password = '';
  for (var i = 0; i < length; i++) {
    int randChoice = _random.nextInt(3);
    int randChar = _random.nextInt(charPool[randChoice].length);
    password += charPool[randChoice][randChar];
  }
  return password;
}
