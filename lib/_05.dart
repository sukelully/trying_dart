Set<int> findCommonValues(List<int> list1, list2) {
  Set<int> commonValues = {};

  for (final i in list1) {
    for (final j in list2) {
      if (i == j) {
        commonValues.add(i);
      }
    }
  }

  return commonValues;
}
