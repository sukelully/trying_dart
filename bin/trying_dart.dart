import 'package:trying_dart/_05.dart' as test;

void main(List<String> arguments) {
  var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  var result = test.findCommonValues(a, b);
  print(result);
}
