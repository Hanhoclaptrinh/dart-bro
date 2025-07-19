// lazy initialization
late String? txt;

void main() {
  // primitive data type
  int age = 18;
  String name = "Nig";
  double pi = 3.14;
  bool isStudent = true;

  print("Hello $name, you are $age years old.");
  print("pi = $pi, isStudent = $isStudent");

  // non-primitive data type

  // dynamic can be change to any type
  dynamic x = 3.6;
  print(x.runtimeType); // double
  x = "Bro";
  print(x.runtimeType); // String
  x = 10;
  print(x.runtimeType); // int
  x = false;
  print(x.runtimeType); // bool

  // var can not change to other type
  var y = 3.6;
  print(y.runtimeType); // double
  y = 1.5; // ok
  print(y.runtimeType); // double
  // y = "Bro"; // error

  // null safety
  int? a;
  a = null;
  print(a.runtimeType); // Null
  a ??= 10; // if a is null, a = 10
  print(a); // 10
  // a ??= 20; // a also be 10
  // print(a); // 10

  txt = "lazy initialization";
  print(txt is String); // check type (is or isn't)
}
