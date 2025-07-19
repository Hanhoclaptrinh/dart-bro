void main() {
  var age = 18;
  age >= 18 ? print("Adult") : print("Too young");

  // e1 ?? e2
  // if e1 is not null return e1, else return e2
  String? name = null;
  print(name ?? "No name");

  int? a = 30;
  print(a ?? 0);
}
