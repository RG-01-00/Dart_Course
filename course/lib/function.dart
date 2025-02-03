import 'dart:io';
import 'dart:math';

// solve a quation 2nd degree
//r efactor it

//dynamic function

cacul_of_a_dala() {
  double? x1;
  double? x2;

  print("Enter a:");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter b:");
  int b = int.parse(stdin.readLineSync()!);
  print("Enter c:");
  int c = int.parse(stdin.readLineSync()!);

  int d = (b * b) - (4 * a * c);
  if (d > 0) {
    x1 = (-b - sqrt(d)) / (2 * a);

    x2 = (-b + sqrt(d)) / (2 * a);

    print("${a} + (x-${x1})(x-${x2})");
  } else if (d == 0) {
    x1 = (-b / 2 * a);

    x2 = (-b / 2 * a);

    if (a == 0) {
      print("0");
    } else if (a > 1) {
      print("$a(x-$x1)^2");
    } else {
      print("(x-$x1)^2");
    }
  } else {
    print("no solution");
    print("cant refactor it");
  }
  print("$x1 $x2");
}
