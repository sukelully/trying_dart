List<int> removeDuplicates(List<int> input) {
  List<int> noDupes = [];
  for (var i = 0; i < input.length; i++) {
    if (!noDupes.contains(input[i])) noDupes.add(input[i]);
  }
  return noDupes;
}
