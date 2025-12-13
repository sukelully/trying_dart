import 'dart:math';
import 'dart:io';

final random = Random();

void guessMyNumber() {
  int count = 1;
  int randNum = random.nextInt(99) + 1;
  print("I'm thinking of a number between 1 and 100. Take a guess!");
  String input = stdin.readLineSync() ?? "";
  int? guess = int.tryParse(input);

  while (guess != randNum) {
    if (guess != null && guess < randNum) {
      print("Higher. Try again.");
      count++;
    } else if (guess != null) {
      print("Lower. Try again!");
      count++;
    }
    input = stdin.readLineSync() ?? "";
    guess = int.tryParse(input);
  }
  print("Correct! It took you $count guesses.");
}
