import 'dart:io';
import 'dart:math';
import 'package:collection/collection.dart';

final random = Random();
final numDigits = 4;
Function eq = const ListEquality().equals;

void cowsAndBulls() {
  int bulls = 0;
  int cows = 0;
  int guesses = 0;
  String randNum = random.nextInt(10000).toString();
  randNum = randNum.padLeft(numDigits, random.nextInt(9).toString());
  List<String> randArr = randNum.split('');

  print("I'm thinking of a $numDigits digit number... Take a guess.");
  String guess = stdin.readLineSync() ?? "";
  guess = validateInput(guess);

  while (!eq(randArr, guess.split(''))) {
    List<bool> matched = List.filled(numDigits, false);
    List<String> guessArr = guess.split('');

    for (var i = 0; i < numDigits; i++) {
      if (guessArr[i] == randArr[i]) {
        cows += 1;
        matched[i] = true;
      }
    }

    for (var i = 0; i < numDigits; i++) {
      if (!matched[i] && randArr.contains(guessArr[i])) {
        int index = randArr.indexOf(guessArr[i]);
        if (!matched[index]) {
          bulls += 1;
          matched[index] = true;
        }
      }
    }

    print(
      'You have $cows cow${cows > 1 || cows == 0 ? 's' : ''} and $bulls bull${bulls > 1 || bulls == 0 ? 's' : ''}... Try again.',
    );
    cows = 0;
    bulls = 0;
    guess = stdin.readLineSync() ?? "";
    guess = validateInput(guess);
    guesses += 1;
  }
  print('You got it! The answer was $randNum, it took you $guesses guesses.');
}

String validateInput(String guess) {
  while (int.tryParse(guess) == null || guess.length != numDigits) {
    stdout.write(
      int.tryParse(guess) != null ? 'Incorrect length...' : 'Not a number...',
    );
    stdout.write(' Try again.\n');
    guess = stdin.readLineSync() ?? "";
  }
  return guess;
}
