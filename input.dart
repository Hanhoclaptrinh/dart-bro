import 'dart:io';
import 'dart:math';

void main() {
  // input username
  stdout.write("username: ");
  var username = stdin.readLineSync()!;

  stdout.write("age: ");
  var age = int.parse(stdin.readLineSync()!);
  print("helo: $username");
  print("age after 10 years: ${age + 10}");

  // ax2 + bx + c = 0;
  stdout.write("a: ");
  num a = double.parse(stdin.readLineSync()!);
  stdout.write("b: ");
  num b = double.parse(stdin.readLineSync()!);
  stdout.write("c: ");
  num c = double.parse(stdin.readLineSync()!);
  if (a == 0) {
    if (b == 0) {
      if (c == 0) {
        print('the equation has infinite solutions');
      } else {
        print('the equation has no solution');
      }
    } else {
      print('the equation has one solution: ${-c / b}');
    }
  } else {
    num delta = b * b - 4 * a * c;
    if (delta > 0) {
      num x1 = (-b + sqrt(delta) / 2 * a);
      num x2 = (-b - sqrt(delta) / 2 * a);
      print('the equation has two solutions: $x1 and $x2');
    } else if (delta == 0) {
      num x = -b / 2 * a;
      print('the equation has one solution: $x');
    } else {
      print('the equation has no solution');
    }
  }
}
