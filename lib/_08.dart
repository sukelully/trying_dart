import 'dart:math';

final options = <String>['rock', 'paper', 'scissors'];
final random = Random();

final winsAgainst = <String, String>{
  'rock': 'scissors',
  'paper': 'rock',
  'scissors': 'paper',
};

String sanitiseInput(String str) {
  return str.toLowerCase();
}

String playRPS(String playerInput) {
  final playerChoice = sanitiseInput(playerInput);
  if (!options.contains(playerChoice)) return 'Invalid choice';

  int randomNum = random.nextInt(3);
  final computerChoice = options[randomNum];

  if (playerChoice == computerChoice) return "It's a draw!";
  if (winsAgainst[playerChoice] == computerChoice) {
    return 'You won!';
  } else {
    return 'You lost!';
  }
}
