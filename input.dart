import 'dart:io';

void main() {
  // input username
  stdout.write("username: ");
  var username = stdin.readLineSync()!;

  stdout.write("age: ");
  var age = int.parse(stdin.readLineSync()!);
  print("helo: $username");
  print("age after 10 years: ${age + 10}");
}
