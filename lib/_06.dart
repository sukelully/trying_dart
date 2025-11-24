bool isPalindrome(String str) {
  final length = str.length;
  final midpoint = length ~/ 2;

  final firstHalf = str.substring(0, midpoint);
  final secondHalfStartIndex = length.isOdd ? midpoint + 1 : midpoint;

  final secondHalf = str.substring(secondHalfStartIndex);
  final reversedSecondHalf = secondHalf.split('').reversed.join();

  return firstHalf == reversedSecondHalf;
}
