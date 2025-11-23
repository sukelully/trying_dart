List<int> lessThanFive(List<int> numbers) {
  return numbers.where((number) => number < 5).toList();
}
